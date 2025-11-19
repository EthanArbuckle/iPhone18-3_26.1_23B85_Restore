@interface _MKOfflineRegionCustomFeature
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (_MKOfflineRegionCustomFeature)init;
- (_MKOfflineRegionCustomFeature)initWithSubscription:(id)a3;
@end

@implementation _MKOfflineRegionCustomFeature

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (_MKOfflineRegionCustomFeature)initWithSubscription:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = _MKOfflineRegionCustomFeature;
  v6 = [(_MKOfflineRegionCustomFeature *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscription, a3);
    v8 = [v5 region];
    [v8 centerLat];
    v10 = v9;
    v11 = [v5 region];
    [v11 centerLng];
    v7->_coordinate.latitude = v10;
    v7->_coordinate.longitude = v12;

    v13 = [objc_alloc(MEMORY[0x1E69DF408]) initWithCoordinate:{v7->_coordinate.latitude, v7->_coordinate.longitude}];
    feature = v7->_feature;
    v7->_feature = v13;

    v15 = v7->_feature;
    v16 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithAttributes:{5, 3, 6, 452, 0}];
    [(VKCustomFeature *)v15 setStyleAttributes:v16];

    v17 = v7->_feature;
    v18 = [v5 displayName];
    [(VKCustomFeature *)v17 setText:v18 locale:0];

    v19 = v7->_feature;
    v20 = [v5 region];
    [(VKCustomFeature *)v19 setFeatureRegion:v20];

    v21 = v7;
  }

  return v7;
}

- (_MKOfflineRegionCustomFeature)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end