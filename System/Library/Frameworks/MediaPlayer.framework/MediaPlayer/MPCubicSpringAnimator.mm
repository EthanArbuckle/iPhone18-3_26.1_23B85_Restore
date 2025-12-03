@interface MPCubicSpringAnimator
+ (id)standardSpringAnimator;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
@end

@implementation MPCubicSpringAnimator

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  v10.receiver = self;
  v10.super_class = MPCubicSpringAnimator;
  v5 = [(UIViewPropertyAnimator *)&v10 _basicAnimationForView:view withKeyPath:path];
  timingParameters = [(UIViewPropertyAnimator *)self timingParameters];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    springCubicTimingParameters = [timingParameters springCubicTimingParameters];
    _mediaTimingFunction = [springCubicTimingParameters _mediaTimingFunction];

    [v5 setTimingFunction:_mediaTimingFunction];
  }

  return v5;
}

+ (id)standardSpringAnimator
{
  v2 = objc_alloc(objc_opt_class());
  v3 = +[MPCubicSpringTimingParameters standardTimingParameters];
  v4 = [v2 initWithDuration:v3 timingParameters:0.0];

  return v4;
}

@end