@interface PHAssetCloudSharedProperties
+ (id)propertiesToFetch;
- (PHAssetCloudSharedProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetCloudSharedProperties

- (PHAssetCloudSharedProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v14.receiver = self;
  v14.super_class = PHAssetCloudSharedProperties;
  v9 = [(PHAssetCloudSharedProperties *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->super._asset, assetCopy);
    v11 = [dictionaryCopy objectForKeyedSubscript:@"cloudIsMyAsset"];
    v10->_cloudIsMyAsset = [v11 BOOLValue];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"cloudHasCommentsByMe"];
    v10->_cloudHasCommentsByMe = [v12 BOOLValue];
  }

  return v10;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_50;

  return v2;
}

void __49__PHAssetCloudSharedProperties_propertiesToFetch__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"cloudIsMyAsset";
  v3[1] = @"cloudHasCommentsByMe";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_50;
  propertiesToFetch_pl_once_object_50 = v1;
}

@end