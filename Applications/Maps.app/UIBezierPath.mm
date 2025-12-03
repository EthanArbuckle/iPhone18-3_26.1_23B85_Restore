@interface UIBezierPath
- (CGRect)pathBounds;
@end

@implementation UIBezierPath

- (CGRect)pathBounds
{
  cGPath = [(UIBezierPath *)self CGPath];

  return CGPathGetPathBoundingBox(cGPath);
}

@end