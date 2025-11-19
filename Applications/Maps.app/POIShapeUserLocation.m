@interface POIShapeUserLocation
- (CGRect)currentFrameInMapView;
- (CGSize)_size;
- (CLLocationCoordinate2D)centerCoordinate;
- (MKMapView)mapView;
- (POIShapeUserLocation)initWithMapView:(id)a3 coordinate:(CLLocationCoordinate2D)a4;
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
    v5 = [(POIShapeUserLocation *)self mapView];
    v6 = [(POIShapeUserLocation *)self mapView];
    [v5 convertCoordinate:v6 toPointToView:{latitude, longitude}];

    [(POIShapeUserLocation *)self _size];
    v7 = [(POIShapeUserLocation *)self mapView];
    v8 = [v7 window];
    v9 = [v8 screen];
    if (v9)
    {
      v10 = [v7 window];
      v11 = [v10 screen];
      [v11 nativeScale];
    }

    else
    {
      v10 = +[UIScreen mainScreen];
      [v10 nativeScale];
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
    v5 = [v4 lastLocation];
    v6 = v5;
    if (v5)
    {
      [v5 coordinate];
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

- (POIShapeUserLocation)initWithMapView:(id)a3 coordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = POIShapeUserLocation;
  v8 = [(POIShapeUserLocation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_mapView, v7);
    v9->_coordinate.latitude = latitude;
    v9->_coordinate.longitude = longitude;
    v10 = v9;
  }

  return v9;
}

@end