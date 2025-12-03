@interface PHBottomBarAnimations
+ (id)backgroundColorAnimationFromColor:(CGColor *)color toColor:(CGColor *)toColor;
+ (id)crossFadeAnimationFromImage:(CGImage *)image toImage:(CGImage *)toImage;
+ (id)rollAnimation;
@end

@implementation PHBottomBarAnimations

+ (id)rollAnimation
{
  v2 = [CASpringAnimation animationWithKeyPath:@"transform.rotation.z"];
  [v2 setMass:2.0];
  [v2 setStiffness:300.0];
  [v2 setDamping:50.0];
  [v2 setDuration:0.910000026];
  [v2 setEndAngle:2.35619449];

  return v2;
}

+ (id)crossFadeAnimationFromImage:(CGImage *)image toImage:(CGImage *)toImage
{
  v6 = [CABasicAnimation animationWithKeyPath:@"contents"];
  [v6 setDuration:0.300000012];
  [v6 setFromValue:image];
  [v6 setToValue:toImage];
  [v6 setRemovedOnCompletion:0];
  [v6 setFillMode:kCAFillModeForwards];

  return v6;
}

+ (id)backgroundColorAnimationFromColor:(CGColor *)color toColor:(CGColor *)toColor
{
  v8 = [CAKeyframeAnimation animationWithKeyPath:@"backgroundColor"];
  colorCopy = color;
  if (!color)
  {
    v4 = +[UIColor clearColor];
    colorCopy = [v4 CGColor];
  }

  v13[0] = colorCopy;
  toColorCopy = toColor;
  if (!toColor)
  {
    v5 = +[UIColor systemRedColor];
    toColorCopy = [v5 CGColor];
  }

  v13[1] = toColorCopy;
  v11 = [NSArray arrayWithObjects:v13 count:2];
  [v8 setValues:v11];

  if (toColor)
  {
    if (color)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (color)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  [v8 setKeyTimes:&off_10036ADD8];
  [v8 setDuration:0.254999995];

  return v8;
}

@end