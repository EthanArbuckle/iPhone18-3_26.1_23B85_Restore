@interface POIShapeFactory
+ (id)composedWaypointPOIShapeWithMapView:(id)a3 composedWaypoint:(id)a4;
+ (id)customPOIShapeWithMapView:(id)a3 customFeatureAnnotation:(id)a4;
+ (id)searchResultWaypointPOIShapeWithMapView:(id)a3 searchResult:(id)a4;
+ (id)userLocationPOIShapeWithMapView:(id)a3;
+ (id)userLocationPOIShapeWithMapView:(id)a3 coordinate:(CLLocationCoordinate2D)a4;
@end

@implementation POIShapeFactory

+ (id)searchResultWaypointPOIShapeWithMapView:(id)a3 searchResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 isDynamicCurrentLocation])
  {
    [v6 coordinate];
    v8 = [a1 userLocationPOIShapeWithMapView:v7 coordinate:?];
  }

  else
  {
    v8 = [[POIShapeSearchResult alloc] initWithMapView:v7 searchResult:v6];
  }

  v9 = v8;

  return v9;
}

+ (id)composedWaypointPOIShapeWithMapView:(id)a3 composedWaypoint:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 isCurrentLocation])
  {
    [v6 coordinate];
    v8 = [a1 userLocationPOIShapeWithMapView:v7 coordinate:?];
  }

  else
  {
    v8 = [[POIShapeComposedWaypoint alloc] initWithMapView:v7 composedWaypoint:v6];
  }

  v9 = v8;

  return v9;
}

+ (id)customPOIShapeWithMapView:(id)a3 customFeatureAnnotation:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[POIShapeCustomFeatureAnnotation alloc] initWithMapView:v6 customFeatureAnnotation:v5];

  return v7;
}

+ (id)userLocationPOIShapeWithMapView:(id)a3 coordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v6 = a3;
  v7 = [[POIShapeUserLocation alloc] initWithMapView:v6 coordinate:latitude, longitude];

  return v7;
}

+ (id)userLocationPOIShapeWithMapView:(id)a3
{
  v3 = a3;
  v4 = [[POIShapeUserLocation alloc] initWithMapView:v3 coordinate:kCLLocationCoordinate2DInvalid.latitude, kCLLocationCoordinate2DInvalid.longitude];

  return v4;
}

@end