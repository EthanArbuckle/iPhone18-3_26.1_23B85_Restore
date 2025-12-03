@interface CMAMessagesExtensionStorageHelper
+ (void)markFilePurgeableAtURL:(id)l;
+ (void)markFilesPurgeableForAsset:(id)asset;
@end

@implementation CMAMessagesExtensionStorageHelper

+ (void)markFilePurgeableAtURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (lCopy)
  {
    v8 = 66057;
    v5 = fsctl([lCopy fileSystemRepresentation], 0xC0084A44uLL, &v8, 0);
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

+ (void)markFilesPurgeableForAsset:(id)asset
{
  assetCopy = asset;
  providedFullsizeImageURL = [assetCopy providedFullsizeImageURL];
  [self markFilePurgeableAtURL:providedFullsizeImageURL];

  providedFullsizeRenderImageURL = [assetCopy providedFullsizeRenderImageURL];
  [self markFilePurgeableAtURL:providedFullsizeRenderImageURL];

  providedVideoURL = [assetCopy providedVideoURL];
  [self markFilePurgeableAtURL:providedVideoURL];

  providedFullsizeRenderVideoURL = [assetCopy providedFullsizeRenderVideoURL];

  [self markFilePurgeableAtURL:providedFullsizeRenderVideoURL];
}

@end