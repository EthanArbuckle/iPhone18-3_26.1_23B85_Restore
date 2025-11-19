@interface PHAssetSpatialMediaProperties
+ (id)propertiesToFetch;
- (PHAssetSpatialMediaProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetSpatialMediaProperties

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_75;

  return v2;
}

void __50__PHAssetSpatialMediaProperties_propertiesToFetch__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"spatialType";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_75;
  propertiesToFetch_pl_once_object_75 = v1;
}

- (PHAssetSpatialMediaProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PHAssetSpatialMediaProperties;
  v9 = [(PHAssetSpatialMediaProperties *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->super._asset, v8);
    v11 = [v7 objectForKeyedSubscript:@"spatialType"];
    v10->_spatialMediaType = [v11 shortValue];
  }

  return v10;
}

@end