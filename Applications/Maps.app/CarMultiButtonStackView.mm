@interface CarMultiButtonStackView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation CarMultiButtonStackView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(CarMultiButtonStackView *)self bounds];
  v11 = CGRectInset(v10, -4.0, -4.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

@end