@interface _CircleView
- (void)drawRect:(CGRect)a3;
- (void)setUsesRoundedRectInsteadOfCircle:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation _CircleView

- (void)setUsesRoundedRectInsteadOfCircle:(BOOL)a3
{
  if (self->_usesRoundedRectInsteadOfCircle != a3)
  {
    self->_usesRoundedRectInsteadOfCircle = a3;
    [(_CircleView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  v4 = [(_CircleView *)self backgroundColor:a3.origin.x];
  [v4 setFill];

  [(_CircleView *)self bounds];
  UIRectFill(v13);
  v5 = [(_CircleView *)self tintColor];
  [v5 setFill];

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
  v3 = [(_CircleView *)self layer];
  [v3 setNeedsDisplay];
}

@end