@interface OriginalRouteDivergencePosition
- ($F24F406B2B787EFB06265DBA3D28CBD5)presentationCoordinate;
- (OriginalRouteDivergencePosition)initWithRouteCoordinate:(id)coordinate route:(id)route;
- (VKEdgeInsets)annotationTrackingEdgeInsets;
@end

@implementation OriginalRouteDivergencePosition

- (VKEdgeInsets)annotationTrackingEdgeInsets
{
  top = self->_annotationTrackingEdgeInsets.top;
  left = self->_annotationTrackingEdgeInsets.left;
  bottom = self->_annotationTrackingEdgeInsets.bottom;
  right = self->_annotationTrackingEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)presentationCoordinate
{
  latitude = self->_presentationCoordinate.latitude;
  longitude = self->_presentationCoordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (OriginalRouteDivergencePosition)initWithRouteCoordinate:(id)coordinate route:(id)route
{
  routeCopy = route;
  v20.receiver = self;
  v20.super_class = OriginalRouteDivergencePosition;
  v7 = [(OriginalRouteDivergencePosition *)&v20 init];
  if (v7)
  {
    [routeCopy pointAtRouteCoordinate:coordinate];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [GEORouteMatch alloc];
    v15 = +[NSDate now];
    v16 = [v14 initWithRoute:routeCopy routeCoordinate:coordinate locationCoordinate:0 stepIndex:v15 matchedCourse:v9 timestamp:{v11, v13, -1.0}];
    routeMatch = v7->_routeMatch;
    v7->_routeMatch = v16;

    v7->_presentationCoordinate.latitude = v9;
    v7->_presentationCoordinate.longitude = v11;
    v18 = v7;
  }

  return v7;
}

@end