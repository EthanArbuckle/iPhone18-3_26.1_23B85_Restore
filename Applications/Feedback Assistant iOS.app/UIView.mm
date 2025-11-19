@interface UIView
- (id)superviewWithClass:(Class)a3;
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
  v4 = [(UIView *)self layer];
  [v4 addAnimation:v5 forKey:@"shake"];
}

- (id)superviewWithClass:(Class)a3
{
  v3 = [(UIView *)self superview];
  if (v3)
  {
    v4 = v3;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [v4 superview];

      v4 = v5;
      if (!v5)
      {
        v6 = 0;
        goto LABEL_8;
      }
    }

    v6 = v4;
    v5 = v6;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

LABEL_8:

  return v6;
}

@end