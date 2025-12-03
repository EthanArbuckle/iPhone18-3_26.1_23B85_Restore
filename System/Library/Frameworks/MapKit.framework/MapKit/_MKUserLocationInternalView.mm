@interface _MKUserLocationInternalView
- (MKUserLocationView)parentView;
- (double)_pointsForDistance:(double)distance;
- (id)_annotationContainer;
- (id)_containerView;
- (id)_mapView;
@end

@implementation _MKUserLocationInternalView

- (id)_mapView
{
  parentView = [(_MKUserLocationInternalView *)self parentView];
  _mapView = [parentView _mapView];

  return _mapView;
}

- (MKUserLocationView)parentView
{
  WeakRetained = objc_loadWeakRetained(&self->_parentView);

  return WeakRetained;
}

- (id)_containerView
{
  parentView = [(_MKUserLocationInternalView *)self parentView];
  _containerView = [parentView _containerView];

  return _containerView;
}

- (id)_annotationContainer
{
  parentView = [(_MKUserLocationInternalView *)self parentView];
  _annotationContainer = [parentView _annotationContainer];

  return _annotationContainer;
}

- (double)_pointsForDistance:(double)distance
{
  parentView = [(_MKUserLocationInternalView *)self parentView];
  v6 = parentView;
  if (parentView)
  {
    [parentView _pointsForDistance:distance];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _MKUserLocationInternalView;
    [(MKAnnotationView *)&v10 _pointsForDistance:distance];
  }

  v8 = v7;

  return v8;
}

@end