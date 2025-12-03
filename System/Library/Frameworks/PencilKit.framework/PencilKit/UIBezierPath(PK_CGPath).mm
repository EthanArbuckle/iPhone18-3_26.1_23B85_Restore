@interface UIBezierPath(PK_CGPath)
- (CGPathRef)PK_CGPath;
@end

@implementation UIBezierPath(PK_CGPath)

- (CGPathRef)PK_CGPath
{
  cGPath = [self CGPath];

  return CGPathRetain(cGPath);
}

@end