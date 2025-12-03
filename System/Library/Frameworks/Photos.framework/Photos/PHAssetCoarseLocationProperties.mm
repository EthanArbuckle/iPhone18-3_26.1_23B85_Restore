@interface PHAssetCoarseLocationProperties
+ (id)propertiesToFetch;
- (PHAssetCoarseLocationProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetCoarseLocationProperties

- (PHAssetCoarseLocationProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  prefetchedCopy = prefetched;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v16.receiver = self;
  v16.super_class = PHAssetCoarseLocationProperties;
  v10 = [(PHAssetCoarseLocationProperties *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, assetCopy);
    if (prefetchedCopy)
    {
      v12 = @"additionalAttributes.gpsHorizontalAccuracy";
    }

    else
    {
      v12 = @"gpsHorizontalAccuracy";
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:v12];
    [v13 doubleValue];
    v11->_gpsHorizontalAccuracy = v14;
  }

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_68;

  return v2;
}

void __52__PHAssetCoarseLocationProperties_propertiesToFetch__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"gpsHorizontalAccuracy";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_68;
  propertiesToFetch_pl_once_object_68 = v1;
}

@end