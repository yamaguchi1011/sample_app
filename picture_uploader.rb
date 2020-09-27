lass PictureUploader < CarrierWave::Uploader::Base
    # ...略

    # Choose what kind of storage to use for this uploader:
-   storage :file
-   # storage :fog
+   if Rails.env.production?
+     storage :fog
+   else
+     storage :file
+   end

    # ...略
  end