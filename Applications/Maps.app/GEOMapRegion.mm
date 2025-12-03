@interface GEOMapRegion
+ (id)_maps_offlineDownloadRegionForRouteBounds:(id)bounds;
+ (id)_mapstest_mapRegionWithCenterLatitude:(double)latitude longitude:(double)longitude size:(double)size;
@end

@implementation GEOMapRegion

+ (id)_maps_offlineDownloadRegionForRouteBounds:(id)bounds
{
  GEOMapRectForMapRegion();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v19.x = v4 + v8 * 0.5;
  v19.y = v6 + v10 * 0.5;
  MKCoordinateForMapPoint(v19);
  GEOConfigGetDouble();
  MKMapRectMakeWithRadialDistance();
  v22.origin.x = v12;
  v22.origin.y = v13;
  v22.size.width = v14;
  v22.size.height = v15;
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v21 = MKMapRectUnion(v20, v22);
  v16 = [[self alloc] initWithMapRect:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];

  return v16;
}

+ (id)_mapstest_mapRegionWithCenterLatitude:(double)latitude longitude:(double)longitude size:(double)size
{
  v8 = objc_alloc_init(GEOMapRegion);
  v9 = size * 0.5;
  [v8 setWestLng:{fmin(fmax(longitude - v9, -180.0), 180.0)}];
  [v8 setEastLng:{fmin(fmax(v9 + longitude, -180.0), 180.0)}];
  [v8 setSouthLat:{fmin(fmax(latitude - v9, -90.0), 90.0)}];
  [v8 setNorthLat:{fmin(fmax(v9 + latitude, -90.0), 90.0)}];

  return v8;
}

@end