@interface RoundedBorderView
- (RoundedBorderView)initWithFrame:(CGRect)frame color:(id)color;
- (void)drawRect:(CGRect)rect;
@end

@implementation RoundedBorderView

- (RoundedBorderView)initWithFrame:(CGRect)frame color:(id)color
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = RoundedBorderView;
  height = [(RoundedBorderView *)&v14 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    [(RoundedBorderView *)height setOpaque:0];
    objc_storeStrong(&v12->_color, color);
  }

  return v12;
}

- (void)drawRect:(CGRect)rect
{
  color = self->_color;
  if (color)
  {
    [(UIColor *)color set:rect.origin.x];
    [(RoundedBorderView *)self bounds];
    v5 = [UIBezierPath roundedRectBezierPath:"roundedRectBezierPath:withRoundedCorners:withCornerRadius:" withRoundedCorners:-1 withCornerRadius:?];
    [v5 fill];
  }
}

@end