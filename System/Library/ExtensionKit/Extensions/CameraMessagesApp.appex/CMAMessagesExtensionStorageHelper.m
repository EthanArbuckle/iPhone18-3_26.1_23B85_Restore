@interface CMAMessagesExtensionStorageHelper
+ (void)markFilePurgeableAtURL:(id)a3;
+ (void)markFilesPurgeableForAsset:(id)a3;
@end

@implementation CMAMessagesExtensionStorageHelper

+ (void)markFilePurgeableAtURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v8 = 66057;
    v5 = fsctl([v3 fileSystemRepresentation], 0xC0084A44uLL, &v8, 0);
    v6 = os_log_create("com.apple.camera", "CameraMessagesApp");
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100007A10(v4, v5, v7);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Marked file purgeable: %{public}@", buf, 0xCu);
    }
  }
}

+ (void)markFilesPurgeableForAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 providedFullsizeImageURL];
  [a1 markFilePurgeableAtURL:v5];

  v6 = [v4 providedFullsizeRenderImageURL];
  [a1 markFilePurgeableAtURL:v6];

  v7 = [v4 providedVideoURL];
  [a1 markFilePurgeableAtURL:v7];

  v8 = [v4 providedFullsizeRenderVideoURL];

  [a1 markFilePurgeableAtURL:v8];
}

@end