@interface ScreenDimmingView
- (ScreenDimmingView)init;
- (void)drawRect:(CGRect)a3;
- (void)setDimEnabled:(BOOL)a3;
- (void)setDimLevel:(double)a3;
@end

@implementation ScreenDimmingView

- (ScreenDimmingView)init
{
  v5.receiver = self;
  v5.super_class = ScreenDimmingView;
  v2 = [(ScreenDimmingView *)&v5 init];
  if (v2)
  {
    v3 = [UIColor colorWithWhite:0.0 alpha:0.01];
    [(ScreenDimmingView *)v2 setBackgroundColor:v3];

    [(ScreenDimmingView *)v2 setDimLevel:0.4];
  }

  return v2;
}

- (void)setDimEnabled:(BOOL)a3
{
  if (self->_dimEnabled != a3)
  {
    self->_dimEnabled = a3;
    [(ScreenDimmingView *)self setNeedsDisplay];
    v4 = LACLogUI();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      dimEnabled = self->_dimEnabled;
      dimLevel = self->_dimLevel;
      v7[0] = 67109376;
      v7[1] = dimEnabled;
      v8 = 2048;
      v9 = dimLevel;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dimmed: %d alpha:%f", v7, 0x12u);
    }
  }
}

- (void)setDimLevel:(double)a3
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    [ScreenDimmingView setDimLevel:];
  }

  self->_dimLevel = a3;
}

- (void)drawRect:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = ScreenDimmingView;
  [(ScreenDimmingView *)&v7 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (self->_dimEnabled)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    [(ScreenDimmingView *)self bounds];
    CGContextClearRect(CurrentContext, v8);
    [(ScreenDimmingView *)self bounds];
    v5 = [UIBezierPath bezierPathWithRect:?];
    v6 = [UIColor colorWithWhite:0.0 alpha:self->_dimLevel];
    [v6 setFill];
    [v5 fill];
  }
}

@end