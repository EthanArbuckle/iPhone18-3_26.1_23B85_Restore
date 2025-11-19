@interface POIShapeCustomFeatureAnnotation
- (CGRect)currentFrameInMapView;
- (CGSize)estimatedSize;
- (CLLocationCoordinate2D)centerCoordinate;
- (MKMapView)mapView;
- (POIShapeCustomFeatureAnnotation)initWithMapView:(id)a3 customFeatureAnnotation:(id)a4;
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
    v3 = [(VKCustomFeatureAnnotation *)self->_customFeatureAnnotation feature];
    v4 = [v3 dataSource];

    if (v4)
    {
      v5 = [(POIShapeCustomFeatureAnnotation *)self mapView];
      v6 = [v5 _labelMarkerForCustomFeatureAnnotation:self->_customFeatureAnnotation];
      labelMarker = self->_labelMarker;
      self->_labelMarker = v6;
    }
  }

  v8 = self->_labelMarker;

  return v8;
}

- (CGSize)estimatedSize
{
  v2 = [(POIShapeCustomFeatureAnnotation *)self _labelMarker];
  if ([v2 isVisible])
  {
    [v2 screenCollisionBounds];
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
  v3 = [(POIShapeCustomFeatureAnnotation *)self _labelMarker];
  if ([v3 isVisible])
  {
    v4 = [(POIShapeCustomFeatureAnnotation *)self mapView];
    [v3 screenCollisionBounds];
    [v4 convertRect:0 fromView:?];

    v5 = [(POIShapeCustomFeatureAnnotation *)self mapView];
    v6 = [v5 window];
    v7 = [v6 screen];
    if (v7)
    {
      v8 = [v5 window];
      v9 = [v8 screen];
      [v9 nativeScale];
    }

    else
    {
      v8 = +[UIScreen mainScreen];
      [v8 nativeScale];
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
  v3 = [(POIShapeCustomFeatureAnnotation *)self customFeatureAnnotation];
  [v3 coordinate];
  v5 = v4;
  v6 = [(POIShapeCustomFeatureAnnotation *)self customFeatureAnnotation];
  [v6 coordinate];
  v8 = CLLocationCoordinate2DMake(v5, v7);

  latitude = v8.latitude;
  longitude = v8.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (POIShapeCustomFeatureAnnotation)initWithMapView:(id)a3 customFeatureAnnotation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = POIShapeCustomFeatureAnnotation;
  v8 = [(POIShapeCustomFeatureAnnotation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_mapView, v6);
    objc_storeStrong(&v9->_customFeatureAnnotation, a4);
    v10 = v9;
  }

  return v9;
}

@end