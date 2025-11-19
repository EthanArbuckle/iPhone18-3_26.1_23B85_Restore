@interface PHTransformableView
- (void)setCenter:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation PHTransformableView

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PHTransformableView *)self transform];
  if (CGAffineTransformIsIdentity(&v7))
  {
    v6.receiver = self;
    v6.super_class = PHTransformableView;
    [(PHTransformableView *)&v6 setCenter:x, y];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PHTransformableView *)self transform];
  if (CGAffineTransformIsIdentity(&v9))
  {
    v8.receiver = self;
    v8.super_class = PHTransformableView;
    [(PHTransformableView *)&v8 setFrame:x, y, width, height];
  }
}

@end