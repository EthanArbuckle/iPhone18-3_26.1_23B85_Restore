@interface UIBezierPath
- (CGRect)pathBounds;
@end

@implementation UIBezierPath

- (CGRect)pathBounds
{
  v2 = [(UIBezierPath *)self CGPath];

  return CGPathGetPathBoundingBox(v2);
}

@end