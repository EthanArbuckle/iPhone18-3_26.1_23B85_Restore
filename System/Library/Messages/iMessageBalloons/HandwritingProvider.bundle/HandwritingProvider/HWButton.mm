@interface HWButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation HWButton

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(HWButton *)self bounds];
  v11 = CGRectInset(v10, -15.0, -15.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

@end