@interface RoundedBorderView
- (RoundedBorderView)initWithFrame:(CGRect)a3 color:(id)a4;
- (void)drawRect:(CGRect)a3;
@end

@implementation RoundedBorderView

- (RoundedBorderView)initWithFrame:(CGRect)a3 color:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = RoundedBorderView;
  v11 = [(RoundedBorderView *)&v14 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    [(RoundedBorderView *)v11 setOpaque:0];
    objc_storeStrong(&v12->_color, a4);
  }

  return v12;
}

- (void)drawRect:(CGRect)a3
{
  color = self->_color;
  if (color)
  {
    [(UIColor *)color set:a3.origin.x];
    [(RoundedBorderView *)self bounds];
    v5 = [UIBezierPath roundedRectBezierPath:"roundedRectBezierPath:withRoundedCorners:withCornerRadius:" withRoundedCorners:-1 withCornerRadius:?];
    [v5 fill];
  }
}

@end