@interface PHAssetSceneprintProperties
+ (id)propertiesToFetch;
- (NSString)duplicateMatchingAlternateValue;
- (NSString)duplicateMatchingValue;
- (PHAssetSceneprintProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetSceneprintProperties

- (NSString)duplicateMatchingAlternateValue
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(PHAssetSceneprintProperties *)self duplicateMatchingAlternateData];
  v5 = [v3 initWithData:v4 encoding:4];

  return v5;
}

- (NSString)duplicateMatchingValue
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(PHAssetSceneprintProperties *)self duplicateMatchingData];
  v5 = [v3 initWithData:v4 encoding:4];

  return v5;
}

- (PHAssetSceneprintProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v23.receiver = self;
  v23.super_class = PHAssetSceneprintProperties;
  v10 = [(PHAssetSceneprintProperties *)&v23 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, v9);
    v12 = !v5;
    if (v5)
    {
      v13 = @"additionalAttributes.sceneprint.data";
    }

    else
    {
      v13 = @"sceneprint.data";
    }

    if (v5)
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

    v16 = [v8 objectForKeyedSubscript:v13];
    sceneprint = v11->_sceneprint;
    v11->_sceneprint = v16;

    v18 = [v8 objectForKeyedSubscript:v14];
    duplicateMatchingData = v11->_duplicateMatchingData;
    v11->_duplicateMatchingData = v18;

    v20 = [v8 objectForKeyedSubscript:v15];
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