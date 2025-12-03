@interface MKUserLocationAnnotationViewProxy
- ($F24F406B2B787EFB06265DBA3D28CBD5)presentationCoordinate;
- (BOOL)isAnimatingAccuracy;
- (BOOL)tracking;
- (CGSize)collisionSize;
- (GEORouteMatch)routeMatch;
- (MKAnnotationView)annotationView;
- (VKEdgeInsets)annotationTrackingEdgeInsets;
- (double)minimumAccuracy;
- (double)presentationAccuracy;
- (double)presentationCourse;
- (void)setAnimatingAccuracy:(BOOL)accuracy;
- (void)setAnimatingToCoordinate:(BOOL)coordinate;
- (void)setPresentationAccuracy:(double)accuracy;
- (void)setPresentationCoordinate:(id)coordinate;
- (void)setPresentationCourse:(double)course;
- (void)setRouteMatch:(id)match;
- (void)setTracking:(BOOL)tracking;
@end

@implementation MKUserLocationAnnotationViewProxy

- (MKAnnotationView)annotationView
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationView);

  return WeakRetained;
}

- (CGSize)collisionSize
{
  annotationView = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [annotationView _collisionFrame];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (GEORouteMatch)routeMatch
{
  annotationView = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  _routeMatch = [annotationView _routeMatch];

  return _routeMatch;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)presentationCoordinate
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationView);
  [WeakRetained _presentationCoordinate];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (VKEdgeInsets)annotationTrackingEdgeInsets
{
  annotationView = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [annotationView _annotationTrackingInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.var3 = v14;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (void)setRouteMatch:(id)match
{
  matchCopy = match;
  annotationView = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [annotationView _setRouteMatch:matchCopy];
}

- (void)setTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  annotationView = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [annotationView _setTracking:trackingCopy];
}

- (BOOL)tracking
{
  annotationView = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  _isTracking = [annotationView _isTracking];

  return _isTracking;
}

- (double)minimumAccuracy
{
  annotationView = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = annotationView;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = 0;
      goto LABEL_7;
    }

    _mkUserLocationView = [annotationView _mkUserLocationView];
  }

  v4 = _mkUserLocationView;
LABEL_7:

  [v4 _minimumAccuracyUncertainty];
  v6 = v5;

  return v6;
}

- (void)setAnimatingToCoordinate:(BOOL)coordinate
{
  coordinateCopy = coordinate;
  annotationView = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [annotationView _setAnimatingToCoordinate:coordinateCopy];
}

- (void)setAnimatingAccuracy:(BOOL)accuracy
{
  accuracyCopy = accuracy;
  annotationView = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = annotationView;
LABEL_5:
    v5 = _mkUserLocationView;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = [annotationView _mkUserLocationView];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  [v5 setAnimatingPresentationAccuracy:accuracyCopy];
}

- (BOOL)isAnimatingAccuracy
{
  annotationView = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = annotationView;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = 0;
      goto LABEL_7;
    }

    _mkUserLocationView = [annotationView _mkUserLocationView];
  }

  v4 = _mkUserLocationView;
LABEL_7:

  isAnimatingPresentationAccuracy = [v4 isAnimatingPresentationAccuracy];
  return isAnimatingPresentationAccuracy;
}

- (void)setPresentationAccuracy:(double)accuracy
{
  annotationView = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = annotationView;
LABEL_5:
    v5 = _mkUserLocationView;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = [annotationView _mkUserLocationView];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  [v5 setPresentationAccuracy:accuracy];
}

- (double)presentationAccuracy
{
  annotationView = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = annotationView;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = 0;
      goto LABEL_7;
    }

    _mkUserLocationView = [annotationView _mkUserLocationView];
  }

  v4 = _mkUserLocationView;
LABEL_7:

  [v4 presentationAccuracy];
  v6 = v5;

  return v6;
}

- (void)setPresentationCourse:(double)course
{
  annotationView = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [annotationView _setPresentationCourse:course];
}

- (double)presentationCourse
{
  annotationView = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [annotationView _presentationCourse];
  v4 = v3;

  return v4;
}

- (void)setPresentationCoordinate:(id)coordinate
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  annotationView = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [annotationView _setPresentationCoordinate:{var0, var1}];
}

@end