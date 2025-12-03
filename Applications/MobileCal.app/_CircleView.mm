@interface _CircleView
- (void)drawRect:(CGRect)rect;
- (void)setUsesRoundedRectInsteadOfCircle:(BOOL)circle;
- (void)tintColorDidChange;
@end

@implementation _CircleView

- (void)setUsesRoundedRectInsteadOfCircle:(BOOL)circle
{
  if (self->_usesRoundedRectInsteadOfCircle != circle)
  {
    self->_usesRoundedRectInsteadOfCircle = circle;
    [(_CircleView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  v4 = [(_CircleView *)self backgroundColor:rect.origin.x];
  [v4 setFill];

  [(_CircleView *)self bounds];
  UIRectFill(v13);
  tintColor = [(_CircleView *)self tintColor];
  [tintColor setFill];

  if ([(_CircleView *)self usesRoundedRectInsteadOfCircle])
  {
    [(_CircleView *)self bounds];
    v11 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
    [v11 fill];
  }

  else
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    [(_CircleView *)self bounds];

    CGContextFillEllipseInRect(CurrentContext, *&v7);
  }
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = _CircleView;
  [(_CircleView *)&v4 tintColorDidChange];
  layer = [(_CircleView *)self layer];
  [layer setNeedsDisplay];
}

@end