@interface CarMultiButtonStackView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation CarMultiButtonStackView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(CarMultiButtonStackView *)self bounds];
  v11 = CGRectInset(v10, -4.0, -4.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

@end