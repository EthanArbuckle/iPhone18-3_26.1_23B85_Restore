@interface UIBezierPath(PK_CGPath)
- (CGPathRef)PK_CGPath;
@end

@implementation UIBezierPath(PK_CGPath)

- (CGPathRef)PK_CGPath
{
  v1 = [a1 CGPath];

  return CGPathRetain(v1);
}

@end