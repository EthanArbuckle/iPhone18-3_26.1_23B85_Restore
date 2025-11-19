@interface DayCircleView
- (DayCircleView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setColor:(id)a3;
- (void)setUsesRoundedRectInsteadOfCircle:(BOOL)a3;
@end

@implementation DayCircleView

- (DayCircleView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = DayCircleView;
  v3 = [(DayCircleView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  v5 = [(DayCircleView *)self color];
  [v5 set];

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

- (void)setColor:(id)a3
{
  objc_storeStrong(&self->_color, a3);

  [(DayCircleView *)self setNeedsDisplay];
}

- (void)setUsesRoundedRectInsteadOfCircle:(BOOL)a3
{
  if (self->_usesRoundedRectInsteadOfCircle != a3)
  {
    self->_usesRoundedRectInsteadOfCircle = a3;
    [(DayCircleView *)self setNeedsDisplay];
  }
}

@end