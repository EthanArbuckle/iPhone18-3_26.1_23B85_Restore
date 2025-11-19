@interface PHAssetLocationDataProperties
+ (id)propertiesToFetch;
- (CLLocationCoordinate2D)coordinate;
- (PHAssetLocationDataProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetLocationDataProperties

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (PHAssetLocationDataProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = PHAssetLocationDataProperties;
  v9 = [(PHAssetLocationDataProperties *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->super._asset, v8);
    v11 = [v7 objectForKeyedSubscript:@"locationData"];
    if (v11 && ([v7 objectForKeyedSubscript:@"dateCreated"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(MEMORY[0x1E69BE540], "newLocationFromLocationData:timestampIfMissing:", v11, v12), v12, v13))
    {
      [v13 coordinate];
      v10->_coordinate.latitude = v14;
      v10->_coordinate.longitude = v15;
    }

    else
    {
      v10->_coordinate = *MEMORY[0x1E6985CC0];
    }
  }

  return v10;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_77;

  return v2;
}

void __50__PHAssetLocationDataProperties_propertiesToFetch__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"locationData";
  v3[1] = @"dateCreated";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_77;
  propertiesToFetch_pl_once_object_77 = v1;
}

@end