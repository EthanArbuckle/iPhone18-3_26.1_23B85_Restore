@interface POIShapeUserLocation
- (CGRect)currentFrameInMapView;
- (CGSize)_size;
- (CLLocationCoordinate2D)centerCoordinate;
- (MKMapView)mapView;
- (POIShapeUserLocation)initWithMapView:(id)view coordinate:(CLLocationCoordinate2D)coordinate;
@end

@implementation POIShapeUserLocation

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (CGSize)_size
{
  +[_MKPuckAnnotationView baseDiameter];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)currentFrameInMapView
{
  [(POIShapeUserLocation *)self centerCoordinate];
  latitude = v24.latitude;
  longitude = v24.longitude;
  if (CLLocationCoordinate2DIsValid(v24))
  {
    mapView = [(POIShapeUserLocation *)self mapView];
    mapView2 = [(POIShapeUserLocation *)self mapView];
    [mapView convertCoordinate:mapView2 toPointToView:{latitude, longitude}];

    [(POIShapeUserLocation *)self _size];
    mapView3 = [(POIShapeUserLocation *)self mapView];
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
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  v11.latitude = latitude;
  v11.longitude = longitude;
  if (!CLLocationCoordinate2DIsValid(v11))
  {
    v4 = +[MKLocationManager sharedLocationManager];
    lastLocation = [v4 lastLocation];
    v6 = lastLocation;
    if (lastLocation)
    {
      [lastLocation coordinate];
      latitude = v7;
      longitude = v8;
    }
  }

  v9 = latitude;
  v10 = longitude;
  result.longitude = v10;
  result.latitude = v9;
  return result;
}

- (POIShapeUserLocation)initWithMapView:(id)view coordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = POIShapeUserLocation;
  v8 = [(POIShapeUserLocation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_mapView, viewCopy);
    v9->_coordinate.latitude = latitude;
    v9->_coordinate.longitude = longitude;
    v10 = v9;
  }

  return v9;
}

@end