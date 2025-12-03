@interface ScreenDimmingView
- (ScreenDimmingView)init;
- (void)drawRect:(CGRect)rect;
- (void)setDimEnabled:(BOOL)enabled;
- (void)setDimLevel:(double)level;
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

- (void)setDimEnabled:(BOOL)enabled
{
  if (self->_dimEnabled != enabled)
  {
    self->_dimEnabled = enabled;
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

- (void)setDimLevel:(double)level
{
  if (level < 0.0 || level > 1.0)
  {
    sub_10006B018();
  }

  self->_dimLevel = level;
}

- (void)drawRect:(CGRect)rect
{
  v7.receiver = self;
  v7.super_class = ScreenDimmingView;
  [(ScreenDimmingView *)&v7 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
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