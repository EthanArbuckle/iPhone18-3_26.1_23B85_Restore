@interface POIShapeComposedWaypoint
- (CGRect)_boundingRect;
- (CGRect)currentFrameInMapView;
- (CGSize)estimatedSize;
- (CLLocationCoordinate2D)centerCoordinate;
- (MKMapView)mapView;
- (POIShapeComposedWaypoint)initWithMapView:(id)view composedWaypoint:(id)waypoint;
@end

@implementation POIShapeComposedWaypoint

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (CGRect)_boundingRect
{
  if (CGRectIsNull(self->_boundingRect))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(GEOComposedWaypoint *)self->_composedWaypoint anchorPointType]- 3 >= 2)
      {
        v3 = 1;
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = 1;
    }

    mapView = [(POIShapeComposedWaypoint *)self mapView];
    _mapLayer = [mapView _mapLayer];
    metrics = [_mapLayer metrics];
    name = [(GEOComposedWaypoint *)self->_composedWaypoint name];
    v8 = +[NSLocale currentLocale];
    localeIdentifier = [v8 localeIdentifier];
    [metrics boundingRectForItem:v3 text:name locale:localeIdentifier];
    self->_boundingRect.origin.x = v10;
    self->_boundingRect.origin.y = v11;
    self->_boundingRect.size.width = v12;
    self->_boundingRect.size.height = v13;
  }

  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)estimatedSize
{
  [(POIShapeComposedWaypoint *)self _boundingRect];
  mapView = [(POIShapeComposedWaypoint *)self mapView];
  window = [mapView window];
  screen = [window screen];
  if (screen)
  {
    window2 = [mapView window];
    screen2 = [window2 screen];
    [screen2 nativeScale];
  }

  else
  {
    window2 = +[UIScreen mainScreen];
    [window2 nativeScale];
  }

  UIRectIntegralWithScale();
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGRect)currentFrameInMapView
{
  [(POIShapeComposedWaypoint *)self centerCoordinate];
  latitude = v24.latitude;
  longitude = v24.longitude;
  if (CLLocationCoordinate2DIsValid(v24))
  {
    [(POIShapeComposedWaypoint *)self _boundingRect];
    mapView = [(POIShapeComposedWaypoint *)self mapView];
    mapView2 = [(POIShapeComposedWaypoint *)self mapView];
    [mapView convertCoordinate:mapView2 toPointToView:{latitude, longitude}];

    mapView3 = [(POIShapeComposedWaypoint *)self mapView];
    window = [mapView3 window];
    screen = [window screen];
    if (screen)
    {
      window2 = [mapView3 window];
      screen2 = [window2 screen];
      [screen2 nativeScale];
    }

    else
    {
      window2 = +[UIScreen mainScreen];
      [window2 nativeScale];
    }

    UIRectCenteredAboutPointScale();
    x = v16;
    y = v17;
    width = v18;
    height = v19;
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CLLocationCoordinate2D)centerCoordinate
{
  location = [(GEOComposedWaypoint *)self->_composedWaypoint location];

  if (location)
  {
    location2 = [(GEOComposedWaypoint *)self->_composedWaypoint location];
    [location2 coordinate];
    latitude = v5;
    longitude = v7;
  }

  else
  {
    latitude = kCLLocationCoordinate2DInvalid.latitude;
    longitude = kCLLocationCoordinate2DInvalid.longitude;
  }

  v9 = latitude;
  v10 = longitude;
  result.longitude = v10;
  result.latitude = v9;
  return result;
}

- (POIShapeComposedWaypoint)initWithMapView:(id)view composedWaypoint:(id)waypoint
{
  viewCopy = view;
  waypointCopy = waypoint;
  v12.receiver = self;
  v12.super_class = POIShapeComposedWaypoint;
  v8 = [(POIShapeComposedWaypoint *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_mapView, viewCopy);
    objc_storeStrong(&v9->_composedWaypoint, waypoint);
    size = CGRectNull.size;
    v9->_boundingRect.origin = CGRectNull.origin;
    v9->_boundingRect.size = size;
  }

  return v9;
}

@end