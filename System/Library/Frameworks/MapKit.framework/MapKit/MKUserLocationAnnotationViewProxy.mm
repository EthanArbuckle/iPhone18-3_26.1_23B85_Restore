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
- (void)setAnimatingAccuracy:(BOOL)a3;
- (void)setAnimatingToCoordinate:(BOOL)a3;
- (void)setPresentationAccuracy:(double)a3;
- (void)setPresentationCoordinate:(id)a3;
- (void)setPresentationCourse:(double)a3;
- (void)setRouteMatch:(id)a3;
- (void)setTracking:(BOOL)a3;
@end

@implementation MKUserLocationAnnotationViewProxy

- (MKAnnotationView)annotationView
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationView);

  return WeakRetained;
}

- (CGSize)collisionSize
{
  v2 = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [v2 _collisionFrame];
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
  v2 = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  v3 = [v2 _routeMatch];

  return v3;
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
  v2 = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [v2 _annotationTrackingInsets];
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

- (void)setRouteMatch:(id)a3
{
  v4 = a3;
  v5 = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [v5 _setRouteMatch:v4];
}

- (void)setTracking:(BOOL)a3
{
  v3 = a3;
  v4 = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [v4 _setTracking:v3];
}

- (BOOL)tracking
{
  v2 = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  v3 = [v2 _isTracking];

  return v3;
}

- (double)minimumAccuracy
{
  v2 = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = [v2 _mkUserLocationView];
  }

  v4 = v3;
LABEL_7:

  [v4 _minimumAccuracyUncertainty];
  v6 = v5;

  return v6;
}

- (void)setAnimatingToCoordinate:(BOOL)a3
{
  v3 = a3;
  v4 = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [v4 _setAnimatingToCoordinate:v3];
}

- (void)setAnimatingAccuracy:(BOOL)a3
{
  v3 = a3;
  v6 = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v6 _mkUserLocationView];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  [v5 setAnimatingPresentationAccuracy:v3];
}

- (BOOL)isAnimatingAccuracy
{
  v2 = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = [v2 _mkUserLocationView];
  }

  v4 = v3;
LABEL_7:

  v5 = [v4 isAnimatingPresentationAccuracy];
  return v5;
}

- (void)setPresentationAccuracy:(double)a3
{
  v6 = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v6 _mkUserLocationView];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  [v5 setPresentationAccuracy:a3];
}

- (double)presentationAccuracy
{
  v2 = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = [v2 _mkUserLocationView];
  }

  v4 = v3;
LABEL_7:

  [v4 presentationAccuracy];
  v6 = v5;

  return v6;
}

- (void)setPresentationCourse:(double)a3
{
  v4 = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [v4 _setPresentationCourse:a3];
}

- (double)presentationCourse
{
  v2 = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [v2 _presentationCourse];
  v4 = v3;

  return v4;
}

- (void)setPresentationCoordinate:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [(MKUserLocationAnnotationViewProxy *)self annotationView];
  [v5 _setPresentationCoordinate:{var0, var1}];
}

@end