@interface _TUIAnimationState
+ (id)animationForLayer:(id)a3 forKey:(id)a4;
+ (id)currentState;
+ (void)popState;
+ (void)pushState:(id)a3;
- (BOOL)shouldCaptureCALayerAnimations;
- (_TUIAnimationState)initWithDuration:(double)a3 timingParameters:(id)a4;
- (id)animationForKeyPath:(id)a3;
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

+ (void)pushState:(id)a3
{
  v3 = a3;
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
  qword_2E6368 = v3;

  os_unfair_lock_unlock(&unk_2E6378);
}

+ (void)popState
{
  os_unfair_lock_lock_with_options();
  if ([qword_2E6370 count])
  {
    v2 = &qword_2E6370;
    v3 = [qword_2E6370 lastObject];
    v4 = qword_2E6368;
    qword_2E6368 = v3;

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

- (_TUIAnimationState)initWithDuration:(double)a3 timingParameters:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _TUIAnimationState;
  v8 = [(_TUIAnimationState *)&v11 init];
  if (v8)
  {
    UIAnimationDragCoefficient();
    v8->_duration = v9 * a3;
    objc_storeStrong(&v8->_timingParameters, a4);
  }

  return v8;
}

- (id)animationForKeyPath:(id)a3
{
  timingParameters = self->_timingParameters;
  v5 = a3;
  v6 = [(UITimingCurveProvider *)timingParameters springTimingParameters];
  if (v6)
  {
    v7 = [CASpringAnimation animationWithKeyPath:v5];

    [v6 mass];
    [v7 setMass:?];
    [v6 stiffness];
    [v7 setStiffness:?];
    [v6 damping];
    [v7 setDamping:?];
    [v7 setDuration:self->_duration];
    v8 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    [v7 setTimingFunction:v8];

    [v6 initialVelocity];
    [v7 setInitialVelocity:?];
  }

  else
  {
    v7 = [CABasicAnimation animationWithKeyPath:v5];

    [v7 setDuration:self->_duration];
    v9 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v7 setTimingFunction:v9];
  }

  return v7;
}

- (id)customAnimationForContentOffset
{
  v3 = [(UITimingCurveProvider *)self->_timingParameters springTimingParameters];
  if (v3)
  {
    v4 = [CASpringAnimation animationWithKeyPath:@"bounds.origin"];
    [v3 mass];
    [v4 setMass:?];
    [v3 stiffness];
    [v4 setStiffness:?];
    [v3 damping];
    [v4 setDamping:?];
    [v4 setDuration:self->_duration];
    v5 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    [v4 setTimingFunction:v5];

    [v3 initialVelocity];
    [v4 setInitialVelocity:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)animationForLayer:(id)a3 forKey:(id)a4
{
  if (qword_2E6368)
  {
    [qword_2E6368 animationForKeyPath:a4];
  }

  else
  {
    [NSNull null:a3];
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