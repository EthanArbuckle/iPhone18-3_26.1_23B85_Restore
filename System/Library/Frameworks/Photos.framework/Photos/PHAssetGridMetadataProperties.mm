@interface PHAssetGridMetadataProperties
+ (id)propertiesToFetch;
- (PHAssetGridMetadataProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetGridMetadataProperties

- (PHAssetGridMetadataProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  prefetchedCopy = prefetched;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v19.receiver = self;
  v19.super_class = PHAssetGridMetadataProperties;
  v10 = [(PHAssetGridMetadataProperties *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, assetCopy);
    if (prefetchedCopy)
    {
      v12 = @"additionalAttributes.title";
    }

    else
    {
      v12 = @"title";
    }

    if (prefetchedCopy)
    {
      v13 = @"additionalAttributes.originalFilename";
    }

    else
    {
      v13 = @"originalFilename";
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:v12];
    title = v11->_title;
    v11->_title = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:v13];
    originalFilename = v11->_originalFilename;
    v11->_originalFilename = v16;
  }

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_42;

  return v2;
}

void __50__PHAssetGridMetadataProperties_propertiesToFetch__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"title";
  v3[1] = @"originalFilename";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_42;
  propertiesToFetch_pl_once_object_42 = v1;
}

@end