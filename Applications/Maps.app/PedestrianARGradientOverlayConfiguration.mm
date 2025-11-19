@interface PedestrianARGradientOverlayConfiguration
+ (PedestrianARGradientOverlayConfiguration)defaultConfiguration;
+ (PedestrianARGradientOverlayConfiguration)safetyViewConfiguration;
- (CGPoint)landscapeEndPoint;
- (CGPoint)landscapeStartPoint;
- (CGPoint)portraitEndPoint;
- (CGPoint)portraitStartPoint;
- (id)copy;
- (id)description;
@end

@implementation PedestrianARGradientOverlayConfiguration

- (CGPoint)landscapeEndPoint
{
  x = self->_landscapeEndPoint.x;
  y = self->_landscapeEndPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)landscapeStartPoint
{
  x = self->_landscapeStartPoint.x;
  y = self->_landscapeStartPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)portraitEndPoint
{
  x = self->_portraitEndPoint.x;
  y = self->_portraitEndPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)portraitStartPoint
{
  x = self->_portraitStartPoint.x;
  y = self->_portraitStartPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromCGPoint(self->_portraitStartPoint);
  v6 = NSStringFromCGPoint(self->_portraitEndPoint);
  v7 = NSStringFromCGPoint(self->_landscapeStartPoint);
  v8 = NSStringFromCGPoint(self->_landscapeEndPoint);
  v9 = [NSString stringWithFormat:@"<%@: %p, portraitStartPoint: %@, portraitEndPoint: %@, landscapeStartPoint: %@, landscapeEndPoint: %@>", v4, self, v5, v6, v7, v8];

  return v9;
}

- (id)copy
{
  v3 = objc_alloc_init(PedestrianARGradientOverlayConfiguration);
  [(PedestrianARGradientOverlayConfiguration *)v3 setPortraitStartPoint:self->_portraitStartPoint.x, self->_portraitStartPoint.y];
  [(PedestrianARGradientOverlayConfiguration *)v3 setPortraitEndPoint:self->_portraitEndPoint.x, self->_portraitEndPoint.y];
  [(PedestrianARGradientOverlayConfiguration *)v3 setLandscapeStartPoint:self->_landscapeStartPoint.x, self->_landscapeStartPoint.y];
  [(PedestrianARGradientOverlayConfiguration *)v3 setLandscapeEndPoint:self->_landscapeEndPoint.x, self->_landscapeEndPoint.y];
  return v3;
}

+ (PedestrianARGradientOverlayConfiguration)safetyViewConfiguration
{
  v2 = objc_alloc_init(PedestrianARGradientOverlayConfiguration);
  [(PedestrianARGradientOverlayConfiguration *)v2 setPortraitStartPoint:0.5, 0.5];
  [(PedestrianARGradientOverlayConfiguration *)v2 setPortraitEndPoint:0.5, 1.0];
  [(PedestrianARGradientOverlayConfiguration *)v2 setLandscapeStartPoint:0.5, 0.5];
  [(PedestrianARGradientOverlayConfiguration *)v2 setLandscapeEndPoint:0.5, 1.0];

  return v2;
}

+ (PedestrianARGradientOverlayConfiguration)defaultConfiguration
{
  v2 = objc_alloc_init(PedestrianARGradientOverlayConfiguration);
  [(PedestrianARGradientOverlayConfiguration *)v2 setPortraitStartPoint:0.5, 0.5];
  [(PedestrianARGradientOverlayConfiguration *)v2 setPortraitEndPoint:0.5, 1.0];
  [(PedestrianARGradientOverlayConfiguration *)v2 setLandscapeStartPoint:0.5, 0.2];
  [(PedestrianARGradientOverlayConfiguration *)v2 setLandscapeEndPoint:0.5, 1.0];

  return v2;
}

@end