@interface _MKOfflineRegionCustomFeature
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (_MKOfflineRegionCustomFeature)init;
- (_MKOfflineRegionCustomFeature)initWithSubscription:(id)subscription;
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

- (_MKOfflineRegionCustomFeature)initWithSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v23.receiver = self;
  v23.super_class = _MKOfflineRegionCustomFeature;
  v6 = [(_MKOfflineRegionCustomFeature *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscription, subscription);
    region = [subscriptionCopy region];
    [region centerLat];
    v10 = v9;
    region2 = [subscriptionCopy region];
    [region2 centerLng];
    v7->_coordinate.latitude = v10;
    v7->_coordinate.longitude = v12;

    v13 = [objc_alloc(MEMORY[0x1E69DF408]) initWithCoordinate:{v7->_coordinate.latitude, v7->_coordinate.longitude}];
    feature = v7->_feature;
    v7->_feature = v13;

    v15 = v7->_feature;
    v16 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithAttributes:{5, 3, 6, 452, 0}];
    [(VKCustomFeature *)v15 setStyleAttributes:v16];

    v17 = v7->_feature;
    displayName = [subscriptionCopy displayName];
    [(VKCustomFeature *)v17 setText:displayName locale:0];

    v19 = v7->_feature;
    region3 = [subscriptionCopy region];
    [(VKCustomFeature *)v19 setFeatureRegion:region3];

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