@interface UIView
- (id)superviewWithClass:(Class)class;
- (void)shake;
@end

@implementation UIView

- (void)shake
{
  v5 = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.x"];
  v3 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
  [v5 setTimingFunction:v3];

  [v5 setDuration:0.6];
  [v5 setValues:&off_1000E5F60];
  layer = [(UIView *)self layer];
  [layer addAnimation:v5 forKey:@"shake"];
}

- (id)superviewWithClass:(Class)class
{
  superview = [(UIView *)self superview];
  if (superview)
  {
    v4 = superview;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      superview2 = [v4 superview];

      v4 = superview2;
      if (!superview2)
      {
        v6 = 0;
        goto LABEL_8;
      }
    }

    v6 = v4;
    superview2 = v6;
  }

  else
  {
    v6 = 0;
    superview2 = 0;
  }

LABEL_8:

  return v6;
}

@end