@interface _BCCustomAnimationCurveFactory
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
- (id)_timingFunctionForAnimation;
@end

@implementation _BCCustomAnimationCurveFactory

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v5 = a4;
  v6 = [(_BCCustomAnimationCurveFactory *)self springAnimation];
  v7 = [CASpringAnimation animationWithKeyPath:v5];

  [v6 mass];
  [v7 setMass:?];
  [v6 stiffness];
  [v7 setStiffness:?];
  [v6 damping];
  [v7 setDamping:?];
  [v6 initialVelocity];
  [v7 setInitialVelocity:?];
  v8 = [v6 timingFunction];
  [v7 setTimingFunction:v8];

  [v6 duration];
  [v7 setDuration:?];

  return v7;
}

- (id)_timingFunctionForAnimation
{
  v2 = [(_BCCustomAnimationCurveFactory *)self springAnimation];
  v3 = [v2 timingFunction];

  return v3;
}

@end