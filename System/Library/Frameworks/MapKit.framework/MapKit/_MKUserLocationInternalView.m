@interface _MKUserLocationInternalView
- (MKUserLocationView)parentView;
- (double)_pointsForDistance:(double)a3;
- (id)_annotationContainer;
- (id)_containerView;
- (id)_mapView;
@end

@implementation _MKUserLocationInternalView

- (id)_mapView
{
  v2 = [(_MKUserLocationInternalView *)self parentView];
  v3 = [v2 _mapView];

  return v3;
}

- (MKUserLocationView)parentView
{
  WeakRetained = objc_loadWeakRetained(&self->_parentView);

  return WeakRetained;
}

- (id)_containerView
{
  v2 = [(_MKUserLocationInternalView *)self parentView];
  v3 = [v2 _containerView];

  return v3;
}

- (id)_annotationContainer
{
  v2 = [(_MKUserLocationInternalView *)self parentView];
  v3 = [v2 _annotationContainer];

  return v3;
}

- (double)_pointsForDistance:(double)a3
{
  v5 = [(_MKUserLocationInternalView *)self parentView];
  v6 = v5;
  if (v5)
  {
    [v5 _pointsForDistance:a3];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _MKUserLocationInternalView;
    [(MKAnnotationView *)&v10 _pointsForDistance:a3];
  }

  v8 = v7;

  return v8;
}

@end