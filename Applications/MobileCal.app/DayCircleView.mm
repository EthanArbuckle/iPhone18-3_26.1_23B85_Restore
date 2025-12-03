@interface DayCircleView
- (DayCircleView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setColor:(id)color;
- (void)setUsesRoundedRectInsteadOfCircle:(BOOL)circle;
@end

@implementation DayCircleView

- (DayCircleView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = DayCircleView;
  v3 = [(DayCircleView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor systemBackgroundColor];
    [(DayCircleView *)v3 setBackgroundColor:v4];

    v5 = CalendarAppCircleNonTodayBGColor();
    color = v3->_color;
    v3->_color = v5;
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  color = [(DayCircleView *)self color];
  [color set];

  if ([(DayCircleView *)self usesRoundedRectInsteadOfCircle])
  {
    [(DayCircleView *)self bounds];
    v10 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
    [v10 fill];
  }

  else
  {
    [(DayCircleView *)self bounds];

    CGContextFillEllipseInRect(CurrentContext, *&v6);
  }
}

- (void)setColor:(id)color
{
  objc_storeStrong(&self->_color, color);

  [(DayCircleView *)self setNeedsDisplay];
}

- (void)setUsesRoundedRectInsteadOfCircle:(BOOL)circle
{
  if (self->_usesRoundedRectInsteadOfCircle != circle)
  {
    self->_usesRoundedRectInsteadOfCircle = circle;
    [(DayCircleView *)self setNeedsDisplay];
  }
}

@end