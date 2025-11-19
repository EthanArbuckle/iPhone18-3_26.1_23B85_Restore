@interface SSSAnimationParameters
- (SSSAnimationParameters)init;
- (id)_animationForKeyPath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)timingParameters;
@end

@implementation SSSAnimationParameters

- (SSSAnimationParameters)init
{
  v4.receiver = self;
  v4.super_class = SSSAnimationParameters;
  v2 = [(SSSAnimationParameters *)&v4 init];
  [(SSSAnimationParameters *)v2 setAnimationOptions:6];
  return v2;
}

- (id)_animationForKeyPath:(id)a3
{
  v4 = [(SSSAnimationParameters *)self animationUsingParametersForKeyPath:a3];
  [(SSSAnimationParameters *)self duration];
  [v4 setDuration:?];
  [v4 speed];
  v6 = v5;
  UIAnimationDragCoefficient();
  *&v8 = v6 / v7;
  [v4 setSpeed:v8];

  return v4;
}

- (id)timingParameters
{
  v2 = objc_alloc_init(UICubicTimingParameters);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SSSAnimationParameters *)self duration];
  v4[3] = v5;
  [(SSSAnimationParameters *)self delay];
  v4[1] = v6;
  v4[4] = [(SSSAnimationParameters *)self animationReason];
  return v4;
}

@end