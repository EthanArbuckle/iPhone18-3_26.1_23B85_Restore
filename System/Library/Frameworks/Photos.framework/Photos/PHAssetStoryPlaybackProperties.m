@interface PHAssetStoryPlaybackProperties
+ (id)propertiesToFetch;
- (PHAssetStoryPlaybackProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetStoryPlaybackProperties

- (PHAssetStoryPlaybackProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = PHAssetStoryPlaybackProperties;
  v10 = [(PHAssetStoryPlaybackProperties *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, v9);
    if (v5)
    {
      v12 = @"additionalAttributes.hasPeopleSceneMidOrGreaterConfidence";
    }

    else
    {
      v12 = @"hasPeopleSceneMidOrGreaterConfidence";
    }

    v13 = [v8 objectForKeyedSubscript:v12];
    v11->_hasPeopleSceneMidOrGreaterConfidence = [v13 BOOLValue];
  }

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_76;

  return v2;
}

void __51__PHAssetStoryPlaybackProperties_propertiesToFetch__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"hasPeopleSceneMidOrGreaterConfidence";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_76;
  propertiesToFetch_pl_once_object_76 = v1;
}

@end