@interface PHAssetDescriptionProperties
+ (id)propertiesToFetch;
- (PHAssetDescriptionProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetDescriptionProperties

- (PHAssetDescriptionProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  prefetchedCopy = prefetched;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v26.receiver = self;
  v26.super_class = PHAssetDescriptionProperties;
  v10 = [(PHAssetDescriptionProperties *)&v26 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, assetCopy);
    v12 = !prefetchedCopy;
    if (prefetchedCopy)
    {
      v13 = @"additionalAttributes.title";
    }

    else
    {
      v13 = @"title";
    }

    if (prefetchedCopy)
    {
      v14 = @"additionalAttributes.assetDescription.longDescription";
    }

    else
    {
      v14 = @"assetDescription.longDescription";
    }

    if (v12)
    {
      v15 = @"accessibilityDescription";
    }

    else
    {
      v15 = @"additionalAttributes.accessibilityDescription";
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:v13];
    v17 = [v16 copy];
    title = v11->_title;
    v11->_title = v17;

    v19 = [dictionaryCopy objectForKeyedSubscript:v14];
    v20 = [v19 copy];
    assetDescription = v11->_assetDescription;
    v11->_assetDescription = v20;

    v22 = [dictionaryCopy objectForKeyedSubscript:v15];
    v23 = [v22 copy];
    accessibilityDescription = v11->_accessibilityDescription;
    v11->_accessibilityDescription = v23;
  }

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_49;

  return v2;
}

void __49__PHAssetDescriptionProperties_propertiesToFetch__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"title";
  v3[1] = @"assetDescription.longDescription";
  v3[2] = @"accessibilityDescription";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_49;
  propertiesToFetch_pl_once_object_49 = v1;
}

@end