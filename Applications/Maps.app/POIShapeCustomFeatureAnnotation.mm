@interface POIShapeCustomFeatureAnnotation
- (CGRect)currentFrameInMapView;
- (CGSize)estimatedSize;
- (CLLocationCoordinate2D)centerCoordinate;
- (MKMapView)mapView;
- (POIShapeCustomFeatureAnnotation)initWithMapView:(id)view customFeatureAnnotation:(id)annotation;
- (id)_labelMarker;
@end

@implementation POIShapeCustomFeatureAnnotation

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (id)_labelMarker
{
  if (!self->_labelMarker)
  {
    feature = [(VKCustomFeatureAnnotation *)self->_customFeatureAnnotation feature];
    dataSource = [feature dataSource];

    if (dataSource)
    {
      mapView = [(POIShapeCustomFeatureAnnotation *)self mapView];
      v6 = [mapView _labelMarkerForCustomFeatureAnnotation:self->_customFeatureAnnotation];
      labelMarker = self->_labelMarker;
      self->_labelMarker = v6;
    }
  }

  v8 = self->_labelMarker;

  return v8;
}

- (CGSize)estimatedSize
{
  _labelMarker = [(POIShapeCustomFeatureAnnotation *)self _labelMarker];
  if ([_labelMarker isVisible])
  {
    [_labelMarker screenCollisionBounds];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v4 = 0x404E000000000000;
    v6 = 0x404E000000000000;
  }

  v7 = *&v4;
  v8 = *&v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGRect)currentFrameInMapView
{
  _labelMarker = [(POIShapeCustomFeatureAnnotation *)self _labelMarker];
  if ([_labelMarker isVisible])
  {
    mapView = [(POIShapeCustomFeatureAnnotation *)self mapView];
    [_labelMarker screenCollisionBounds];
    [mapView convertRect:0 fromView:?];

    mapView2 = [(POIShapeCustomFeatureAnnotation *)self mapView];
    window = [mapView2 window];
    screen = [window screen];
    if (screen)
    {
      window2 = [mapView2 window];
      screen2 = [window2 screen];
      [screen2 nativeScale];
    }

    else
    {
      window2 = +[UIScreen mainScreen];
      [window2 nativeScale];
    }

    UIRectIntegralWithScale();
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CLLocationCoordinate2D)centerCoordinate
{
  customFeatureAnnotation = [(POIShapeCustomFeatureAnnotation *)self customFeatureAnnotation];
  [customFeatureAnnotation coordinate];
  v5 = v4;
  customFeatureAnnotation2 = [(POIShapeCustomFeatureAnnotation *)self customFeatureAnnotation];
  [customFeatureAnnotation2 coordinate];
  v8 = CLLocationCoordinate2DMake(v5, v7);

  latitude = v8.latitude;
  longitude = v8.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (POIShapeCustomFeatureAnnotation)initWithMapView:(id)view customFeatureAnnotation:(id)annotation
{
  viewCopy = view;
  annotationCopy = annotation;
  v12.receiver = self;
  v12.super_class = POIShapeCustomFeatureAnnotation;
  v8 = [(POIShapeCustomFeatureAnnotation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_mapView, viewCopy);
    objc_storeStrong(&v9->_customFeatureAnnotation, annotation);
    v10 = v9;
  }

  return v9;
}

@end