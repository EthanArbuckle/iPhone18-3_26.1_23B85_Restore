@interface POIShapeFactory
+ (id)composedWaypointPOIShapeWithMapView:(id)view composedWaypoint:(id)waypoint;
+ (id)customPOIShapeWithMapView:(id)view customFeatureAnnotation:(id)annotation;
+ (id)searchResultWaypointPOIShapeWithMapView:(id)view searchResult:(id)result;
+ (id)userLocationPOIShapeWithMapView:(id)view;
+ (id)userLocationPOIShapeWithMapView:(id)view coordinate:(CLLocationCoordinate2D)coordinate;
@end

@implementation POIShapeFactory

+ (id)searchResultWaypointPOIShapeWithMapView:(id)view searchResult:(id)result
{
  resultCopy = result;
  viewCopy = view;
  if ([resultCopy isDynamicCurrentLocation])
  {
    [resultCopy coordinate];
    v8 = [self userLocationPOIShapeWithMapView:viewCopy coordinate:?];
  }

  else
  {
    v8 = [[POIShapeSearchResult alloc] initWithMapView:viewCopy searchResult:resultCopy];
  }

  v9 = v8;

  return v9;
}

+ (id)composedWaypointPOIShapeWithMapView:(id)view composedWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  viewCopy = view;
  if ([waypointCopy isCurrentLocation])
  {
    [waypointCopy coordinate];
    v8 = [self userLocationPOIShapeWithMapView:viewCopy coordinate:?];
  }

  else
  {
    v8 = [[POIShapeComposedWaypoint alloc] initWithMapView:viewCopy composedWaypoint:waypointCopy];
  }

  v9 = v8;

  return v9;
}

+ (id)customPOIShapeWithMapView:(id)view customFeatureAnnotation:(id)annotation
{
  annotationCopy = annotation;
  viewCopy = view;
  v7 = [[POIShapeCustomFeatureAnnotation alloc] initWithMapView:viewCopy customFeatureAnnotation:annotationCopy];

  return v7;
}

+ (id)userLocationPOIShapeWithMapView:(id)view coordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  viewCopy = view;
  longitude = [[POIShapeUserLocation alloc] initWithMapView:viewCopy coordinate:latitude, longitude];

  return longitude;
}

+ (id)userLocationPOIShapeWithMapView:(id)view
{
  viewCopy = view;
  v4 = [[POIShapeUserLocation alloc] initWithMapView:viewCopy coordinate:kCLLocationCoordinate2DInvalid.latitude, kCLLocationCoordinate2DInvalid.longitude];

  return v4;
}

@end