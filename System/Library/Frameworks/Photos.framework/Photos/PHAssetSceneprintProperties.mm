@interface PHAssetSceneprintProperties
+ (id)propertiesToFetch;
- (NSString)duplicateMatchingAlternateValue;
- (NSString)duplicateMatchingValue;
- (PHAssetSceneprintProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetSceneprintProperties

- (NSString)duplicateMatchingAlternateValue
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  duplicateMatchingAlternateData = [(PHAssetSceneprintProperties *)self duplicateMatchingAlternateData];
  v5 = [v3 initWithData:duplicateMatchingAlternateData encoding:4];

  return v5;
}

- (NSString)duplicateMatchingValue
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  duplicateMatchingData = [(PHAssetSceneprintProperties *)self duplicateMatchingData];
  v5 = [v3 initWithData:duplicateMatchingData encoding:4];

  return v5;
}

- (PHAssetSceneprintProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  prefetchedCopy = prefetched;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v23.receiver = self;
  v23.super_class = PHAssetSceneprintProperties;
  v10 = [(PHAssetSceneprintProperties *)&v23 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, assetCopy);
    v12 = !prefetchedCopy;
    if (prefetchedCopy)
    {
      v13 = @"additionalAttributes.sceneprint.data";
    }

    else
    {
      v13 = @"sceneprint.data";
    }

    if (prefetchedCopy)
    {
      v14 = @"additionalAttributes.sceneprint.duplicateMatchingData";
    }

    else
    {
      v14 = @"sceneprint.duplicateMatchingData";
    }

    if (v12)
    {
      v15 = @"sceneprint.duplicateMatchingAlternateData";
    }

    else
    {
      v15 = @"additionalAttributes.sceneprint.duplicateMatchingAlternateData";
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:v13];
    sceneprint = v11->_sceneprint;
    v11->_sceneprint = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:v14];
    duplicateMatchingData = v11->_duplicateMatchingData;
    v11->_duplicateMatchingData = v18;

    v20 = [dictionaryCopy objectForKeyedSubscript:v15];
    duplicateMatchingAlternateData = v11->_duplicateMatchingAlternateData;
    v11->_duplicateMatchingAlternateData = v20;
  }

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_66;

  return v2;
}

void __48__PHAssetSceneprintProperties_propertiesToFetch__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"sceneprint.data";
  v3[1] = @"sceneprint.duplicateMatchingData";
  v3[2] = @"sceneprint.duplicateMatchingAlternateData";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_66;
  propertiesToFetch_pl_once_object_66 = v1;
}

@end