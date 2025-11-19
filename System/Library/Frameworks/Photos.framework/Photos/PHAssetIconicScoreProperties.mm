@interface PHAssetIconicScoreProperties
+ (id)propertiesToFetch;
- (PHAssetIconicScoreProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetIconicScoreProperties

- (PHAssetIconicScoreProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PHAssetIconicScoreProperties;
  v9 = [(PHAssetIconicScoreProperties *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->super._asset, v8);
    v11 = [v7 objectForKeyedSubscript:@"iconicScore"];
    [v11 doubleValue];
    v10->_iconicScore = v12;
  }

  return v10;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_79;

  return v2;
}

void __49__PHAssetIconicScoreProperties_propertiesToFetch__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"iconicScore";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_79;
  propertiesToFetch_pl_once_object_79 = v1;
}

@end