@interface PHAssetMontageProperties
+ (id)propertiesToFetch;
- (PHAssetMontageProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetMontageProperties

- (PHAssetMontageProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  prefetchedCopy = prefetched;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v16.receiver = self;
  v16.super_class = PHAssetMontageProperties;
  v10 = [(PHAssetMontageProperties *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, assetCopy);
    if (prefetchedCopy)
    {
      v12 = @"additionalAttributes.montage";
    }

    else
    {
      v12 = @"montage";
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:v12];
    montage = v11->_montage;
    v11->_montage = v13;
  }

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_74;

  return v2;
}

void __45__PHAssetMontageProperties_propertiesToFetch__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"montage";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_74;
  propertiesToFetch_pl_once_object_74 = v1;
}

@end