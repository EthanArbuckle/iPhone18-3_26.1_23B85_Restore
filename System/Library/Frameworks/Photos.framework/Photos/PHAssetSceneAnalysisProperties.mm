@interface PHAssetSceneAnalysisProperties
+ (id)propertiesToFetch;
- (PHAssetSceneAnalysisProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetSceneAnalysisProperties

- (PHAssetSceneAnalysisProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v21.receiver = self;
  v21.super_class = PHAssetSceneAnalysisProperties;
  v9 = [(PHAssetSceneAnalysisProperties *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->super._asset, assetCopy);
    v11 = [dictionaryCopy objectForKeyedSubscript:@"additionalAttributes.sceneAnalysisVersion"];
    v10->_sceneAnalysisVersion = [v11 shortValue];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"additionalAttributes.sceneAnalysisTimestamp"];
    sceneAnalysisTimestamp = v10->_sceneAnalysisTimestamp;
    v10->_sceneAnalysisTimestamp = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"additionalAttributes.distanceIdentity"];
    distanceIdentity = v10->_distanceIdentity;
    v10->_distanceIdentity = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"mediaAnalysisAttributes.vaAnalysisVersion"];
    v10->_privateEncryptedComputeAnalysisVersion = [v16 shortValue];

    v17 = [dictionaryCopy objectForKeyedSubscript:@"mediaAnalysisAttributes.vaAnalysisTimestamp"];
    privateEncryptedComputeAnalysisTimestamp = v10->_privateEncryptedComputeAnalysisTimestamp;
    v10->_privateEncryptedComputeAnalysisTimestamp = v17;

    v19 = [dictionaryCopy objectForKeyedSubscript:@"mediaAnalysisAttributes.vaLocationAnalysisVersion"];
    v10->_privateEncryptedComputeLocationAnalysisVersion = [v19 shortValue];
  }

  return v10;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_52;

  return v2;
}

void __51__PHAssetSceneAnalysisProperties_propertiesToFetch__block_invoke()
{
  v3[7] = *MEMORY[0x1E69E9840];
  v3[0] = @"additionalAttributes.sceneAnalysisVersion";
  v3[1] = @"additionalAttributes.sceneAnalysisTimestamp";
  v3[2] = @"additionalAttributes.distanceIdentity";
  v3[3] = @"mediaAnalysisAttributes.imageEmbeddingVersion";
  v3[4] = @"mediaAnalysisAttributes.vaAnalysisVersion";
  v3[5] = @"mediaAnalysisAttributes.vaAnalysisTimestamp";
  v3[6] = @"mediaAnalysisAttributes.vaLocationAnalysisVersion";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:7];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_52;
  propertiesToFetch_pl_once_object_52 = v1;
}

@end