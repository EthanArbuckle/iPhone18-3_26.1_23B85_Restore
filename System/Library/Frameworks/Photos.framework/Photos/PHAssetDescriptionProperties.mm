@interface PHAssetDescriptionProperties
+ (id)propertiesToFetch;
- (PHAssetDescriptionProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetDescriptionProperties

- (PHAssetDescriptionProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v26.receiver = self;
  v26.super_class = PHAssetDescriptionProperties;
  v10 = [(PHAssetDescriptionProperties *)&v26 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, v9);
    v12 = !v5;
    if (v5)
    {
      v13 = @"additionalAttributes.title";
    }

    else
    {
      v13 = @"title";
    }

    if (v5)
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

    v16 = [v8 objectForKeyedSubscript:v13];
    v17 = [v16 copy];
    title = v11->_title;
    v11->_title = v17;

    v19 = [v8 objectForKeyedSubscript:v14];
    v20 = [v19 copy];
    assetDescription = v11->_assetDescription;
    v11->_assetDescription = v20;

    v22 = [v8 objectForKeyedSubscript:v15];
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