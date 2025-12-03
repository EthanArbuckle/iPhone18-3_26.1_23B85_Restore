@interface PHAssetPhotoAnalysisWallpaperProperties
+ (id)propertiesToFetch;
- (PHAssetPhotoAnalysisWallpaperProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetPhotoAnalysisWallpaperProperties

- (PHAssetPhotoAnalysisWallpaperProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  prefetchedCopy = prefetched;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v22.receiver = self;
  v22.super_class = PHAssetPhotoAnalysisWallpaperProperties;
  v10 = [(PHAssetPhotoAnalysisWallpaperProperties *)&v22 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, assetCopy);
    v12 = !prefetchedCopy;
    if (prefetchedCopy)
    {
      v13 = @"photoAnalysisAttributes.wallpaperPropertiesTimestamp";
    }

    else
    {
      v13 = @"wallpaperPropertiesTimestamp";
    }

    if (prefetchedCopy)
    {
      v14 = @"photoAnalysisAttributes.wallpaperPropertiesVersion";
    }

    else
    {
      v14 = @"wallpaperPropertiesVersion";
    }

    if (v12)
    {
      v15 = @"wallpaperPropertiesData";
    }

    else
    {
      v15 = @"photoAnalysisAttributes.wallpaperPropertiesData";
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:v13];
    wallpaperPropertiesTimestamp = v11->_wallpaperPropertiesTimestamp;
    v11->_wallpaperPropertiesTimestamp = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:v14];
    v11->_wallpaperPropertiesVersion = [v18 unsignedLongLongValue];

    v19 = [dictionaryCopy objectForKeyedSubscript:v15];
    wallpaperPropertiesData = v11->_wallpaperPropertiesData;
    v11->_wallpaperPropertiesData = v19;
  }

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_59;

  return v2;
}

void __60__PHAssetPhotoAnalysisWallpaperProperties_propertiesToFetch__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"wallpaperPropertiesData";
  v3[1] = @"wallpaperPropertiesTimestamp";
  v3[2] = @"wallpaperPropertiesVersion";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_59;
  propertiesToFetch_pl_once_object_59 = v1;
}

@end