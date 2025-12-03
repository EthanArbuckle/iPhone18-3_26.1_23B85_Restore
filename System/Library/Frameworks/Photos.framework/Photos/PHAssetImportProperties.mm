@interface PHAssetImportProperties
+ (id)propertiesToFetch;
- (PHAssetImportProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetImportProperties

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_65;

  return v2;
}

- (PHAssetImportProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  prefetchedCopy = prefetched;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v16.receiver = self;
  v16.super_class = PHAssetImportProperties;
  v10 = [(PHAssetImportProperties *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, assetCopy);
    if (prefetchedCopy)
    {
      v12 = @"additionalAttributes.importedBy";
    }

    else
    {
      v12 = @"importedBy";
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:v12];
    integerValue = [v13 integerValue];

    if (integerValue <= 0xF)
    {
      v11->_importedBy = integerValue;
    }
  }

  return v11;
}

void __44__PHAssetImportProperties_propertiesToFetch__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"importedBy";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_65;
  propertiesToFetch_pl_once_object_65 = v1;
}

@end