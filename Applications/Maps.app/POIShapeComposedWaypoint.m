@interface POIShapeComposedWaypoint
- (CGRect)_boundingRect;
- (CGRect)currentFrameInMapView;
- (CGSize)estimatedSize;
- (CLLocationCoordinate2D)centerCoordinate;
- (MKMapView)mapView;
- (POIShapeComposedWaypoint)initWithMapView:(id)a3 composedWaypoint:(id)a4;
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

    v4 = [(POIShapeComposedWaypoint *)self mapView];
    v5 = [v4 _mapLayer];
    v6 = [v5 metrics];
    v7 = [(GEOComposedWaypoint *)self->_composedWaypoint name];
    v8 = +[NSLocale currentLocale];
    v9 = [v8 localeIdentifier];
    [v6 boundingRectForItem:v3 text:v7 locale:v9];
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
  v3 = [(POIShapeComposedWaypoint *)self mapView];
  v4 = [v3 window];
  v5 = [v4 screen];
  if (v5)
  {
    v6 = [v3 window];
    v7 = [v6 screen];
    [v7 nativeScale];
  }

  else
  {
    v6 = +[UIScreen mainScreen];
    [v6 nativeScale];
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
    v5 = [(POIShapeComposedWaypoint *)self mapView];
    v6 = [(POIShapeComposedWaypoint *)self mapView];
    [v5 convertCoordinate:v6 toPointToView:{latitude, longitude}];

    v7 = [(POIShapeComposedWaypoint *)self mapView];
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
  v3 = [(GEOComposedWaypoint *)self->_composedWaypoint location];

  if (v3)
  {
    v4 = [(GEOComposedWaypoint *)self->_composedWaypoint location];
    [v4 coordinate];
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

- (POIShapeComposedWaypoint)initWithMapView:(id)a3 composedWaypoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = POIShapeComposedWaypoint;
  v8 = [(POIShapeComposedWaypoint *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_mapView, v6);
    objc_storeStrong(&v9->_composedWaypoint, a4);
    size = CGRectNull.size;
    v9->_boundingRect.origin = CGRectNull.origin;
    v9->_boundingRect.size = size;
  }

  return v9;
}

@end