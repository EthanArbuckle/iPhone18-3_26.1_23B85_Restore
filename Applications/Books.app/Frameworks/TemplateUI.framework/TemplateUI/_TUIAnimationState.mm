@interface _TUIAnimationState
+ (id)animationForLayer:(id)layer forKey:(id)key;
+ (id)currentState;
+ (void)popState;
+ (void)pushState:(id)state;
- (BOOL)shouldCaptureCALayerAnimations;
- (_TUIAnimationState)initWithDuration:(double)duration timingParameters:(id)parameters;
- (id)animationForKeyPath:(id)path;
- (id)customAnimationForContentOffset;
@end

@implementation _TUIAnimationState

+ (id)currentState
{
  os_unfair_lock_lock_with_options();
  v2 = qword_2E6368;
  os_unfair_lock_unlock(&unk_2E6378);

  return v2;
}

+ (void)pushState:(id)state
{
  stateCopy = state;
  os_unfair_lock_lock_with_options();
  if (qword_2E6368)
  {
    v4 = qword_2E6370;
    if (!qword_2E6370)
    {
      v5 = objc_opt_new();
      v6 = qword_2E6370;
      qword_2E6370 = v5;

      v4 = qword_2E6370;
    }

    [v4 addObject:?];
  }

  v7 = qword_2E6368;
  qword_2E6368 = stateCopy;

  os_unfair_lock_unlock(&unk_2E6378);
}

+ (void)popState
{
  os_unfair_lock_lock_with_options();
  if ([qword_2E6370 count])
  {
    v2 = &qword_2E6370;
    lastObject = [qword_2E6370 lastObject];
    v4 = qword_2E6368;
    qword_2E6368 = lastObject;

    [qword_2E6370 removeLastObject];
    if ([qword_2E6370 count])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v2 = &qword_2E6368;
  }

  v5 = *v2;
  *v2 = 0;

LABEL_6:

  os_unfair_lock_unlock(&unk_2E6378);
}

- (_TUIAnimationState)initWithDuration:(double)duration timingParameters:(id)parameters
{
  parametersCopy = parameters;
  v11.receiver = self;
  v11.super_class = _TUIAnimationState;
  v8 = [(_TUIAnimationState *)&v11 init];
  if (v8)
  {
    UIAnimationDragCoefficient();
    v8->_duration = v9 * duration;
    objc_storeStrong(&v8->_timingParameters, parameters);
  }

  return v8;
}

- (id)animationForKeyPath:(id)path
{
  timingParameters = self->_timingParameters;
  pathCopy = path;
  springTimingParameters = [(UITimingCurveProvider *)timingParameters springTimingParameters];
  if (springTimingParameters)
  {
    v7 = [CASpringAnimation animationWithKeyPath:pathCopy];

    [springTimingParameters mass];
    [v7 setMass:?];
    [springTimingParameters stiffness];
    [v7 setStiffness:?];
    [springTimingParameters damping];
    [v7 setDamping:?];
    [v7 setDuration:self->_duration];
    v8 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    [v7 setTimingFunction:v8];

    [springTimingParameters initialVelocity];
    [v7 setInitialVelocity:?];
  }

  else
  {
    v7 = [CABasicAnimation animationWithKeyPath:pathCopy];

    [v7 setDuration:self->_duration];
    v9 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v7 setTimingFunction:v9];
  }

  return v7;
}

- (id)customAnimationForContentOffset
{
  springTimingParameters = [(UITimingCurveProvider *)self->_timingParameters springTimingParameters];
  if (springTimingParameters)
  {
    v4 = [CASpringAnimation animationWithKeyPath:@"bounds.origin"];
    [springTimingParameters mass];
    [v4 setMass:?];
    [springTimingParameters stiffness];
    [v4 setStiffness:?];
    [springTimingParameters damping];
    [v4 setDamping:?];
    [v4 setDuration:self->_duration];
    v5 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    [v4 setTimingFunction:v5];

    [springTimingParameters initialVelocity];
    [v4 setInitialVelocity:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)animationForLayer:(id)layer forKey:(id)key
{
  if (qword_2E6368)
  {
    [qword_2E6368 animationForKeyPath:key];
  }

  else
  {
    [NSNull null:layer];
  }
  v4 = ;

  return v4;
}

- (BOOL)shouldCaptureCALayerAnimations
{
  if (self->_duration <= 0.0)
  {
    return 0;
  }

  else
  {
    return +[UIView areAnimationsEnabled];
  }
}

@end