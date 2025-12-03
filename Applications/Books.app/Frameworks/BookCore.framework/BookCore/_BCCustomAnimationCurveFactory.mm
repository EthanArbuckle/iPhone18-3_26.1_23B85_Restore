@interface _BCCustomAnimationCurveFactory
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
- (id)_timingFunctionForAnimation;
@end

@implementation _BCCustomAnimationCurveFactory

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  pathCopy = path;
  springAnimation = [(_BCCustomAnimationCurveFactory *)self springAnimation];
  v7 = [CASpringAnimation animationWithKeyPath:pathCopy];

  [springAnimation mass];
  [v7 setMass:?];
  [springAnimation stiffness];
  [v7 setStiffness:?];
  [springAnimation damping];
  [v7 setDamping:?];
  [springAnimation initialVelocity];
  [v7 setInitialVelocity:?];
  timingFunction = [springAnimation timingFunction];
  [v7 setTimingFunction:timingFunction];

  [springAnimation duration];
  [v7 setDuration:?];

  return v7;
}

- (id)_timingFunctionForAnimation
{
  springAnimation = [(_BCCustomAnimationCurveFactory *)self springAnimation];
  timingFunction = [springAnimation timingFunction];

  return timingFunction;
}

@end