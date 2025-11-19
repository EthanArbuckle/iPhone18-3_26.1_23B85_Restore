@interface PHBottomBarAnimations
+ (id)backgroundColorAnimationFromColor:(CGColor *)a3 toColor:(CGColor *)a4;
+ (id)crossFadeAnimationFromImage:(CGImage *)a3 toImage:(CGImage *)a4;
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

+ (id)crossFadeAnimationFromImage:(CGImage *)a3 toImage:(CGImage *)a4
{
  v6 = [CABasicAnimation animationWithKeyPath:@"contents"];
  [v6 setDuration:0.300000012];
  [v6 setFromValue:a3];
  [v6 setToValue:a4];
  [v6 setRemovedOnCompletion:0];
  [v6 setFillMode:kCAFillModeForwards];

  return v6;
}

+ (id)backgroundColorAnimationFromColor:(CGColor *)a3 toColor:(CGColor *)a4
{
  v8 = [CAKeyframeAnimation animationWithKeyPath:@"backgroundColor"];
  v9 = a3;
  if (!a3)
  {
    v4 = +[UIColor clearColor];
    v9 = [v4 CGColor];
  }

  v13[0] = v9;
  v10 = a4;
  if (!a4)
  {
    v5 = +[UIColor systemRedColor];
    v10 = [v5 CGColor];
  }

  v13[1] = v10;
  v11 = [NSArray arrayWithObjects:v13 count:2];
  [v8 setValues:v11];

  if (a4)
  {
    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (a3)
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