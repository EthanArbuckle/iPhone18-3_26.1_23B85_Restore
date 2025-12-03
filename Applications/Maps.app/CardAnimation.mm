@interface CardAnimation
+ (CardAnimation)animationWithDuration:(double)duration curve:(int64_t)curve delay:(double)delay;
+ (CardAnimation)animationWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity delay:(double)delay;
+ (id)animationUsingDefaultSpringWithInitialVelocity:(double)velocity delay:(double)delay;
- (CardAnimation)coordinatedUnitAnimation;
- (CardAnimation)initWithDuration:(double)duration curve:(int64_t)curve delay:(double)delay;
- (CardAnimation)initWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity delay:(double)delay calculateCoordinatedAnimation:(BOOL)animation;
- (id)description;
- (id)initUsingDefaultSpringWithInitialVelocity:(double)velocity delay:(double)delay;
- (void)applyWithAnimations:(id)animations completion:(id)completion;
@end

@implementation CardAnimation

- (id)description
{
  type = self->_type;
  if (type == 2)
  {
    [NSString stringWithFormat:@"<DefaultSpringAnimation duration: %g, delay: %g, initialVelocity: %g>", *&self->_duration, *&self->_delay, self->_typeParameters.basic.curve, v4, v5, v6];
  }

  else if (type == 1)
  {
    [NSString stringWithFormat:@"<SpringAnimation duration: %g, delay: %g, mass: %g, stiffness: %g, damping: %g, initialVelocity: %g>", *&self->_duration, *&self->_delay, self->_typeParameters.basic.curve, *&self->_typeParameters.spring.stiffness, *&self->_typeParameters.spring.damping, *&self->_typeParameters.spring.initialVelocity];
  }

  else
  {
    if (type)
    {
      goto LABEL_8;
    }

    [NSString stringWithFormat:@"<BasicAnimation duration: %g, delay: %g, curve: %ld>", *&self->_duration, *&self->_delay, self->_typeParameters.basic.curve, v4, v5, v6];
  }
  a2 = ;
LABEL_8:

  return a2;
}

- (void)applyWithAnimations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  type = self->_type;
  switch(type)
  {
    case 2:
      [UIView _animateUsingDefaultDampedSpringWithDelay:2 initialSpringVelocity:animationsCopy options:completionCopy animations:self->_delay completion:self->_typeParameters.spring.mass];
      break;
    case 1:
      [UIView _animateUsingSpringWithDuration:2 delay:animationsCopy options:completionCopy mass:self->_duration stiffness:self->_delay damping:self->_typeParameters.spring.mass initialVelocity:self->_typeParameters.spring.stiffness animations:self->_typeParameters.spring.damping completion:self->_typeParameters.spring.initialVelocity];
      break;
    case 0:
      [UIView animateWithDuration:(self->_typeParameters.basic.curve << 16) | 2 delay:animationsCopy options:completionCopy animations:self->_duration completion:self->_delay];
      break;
  }
}

- (CardAnimation)coordinatedUnitAnimation
{
  if (self->_coordinatedUnitAnimation)
  {
    self = self->_coordinatedUnitAnimation;
  }

  return self;
}

- (id)initUsingDefaultSpringWithInitialVelocity:(double)velocity delay:(double)delay
{
  v10.receiver = self;
  v10.super_class = CardAnimation;
  v6 = [(CardAnimation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 2;
    v6->_typeParameters.spring.mass = velocity;
    v6->_delay = delay;
    v8 = v6;
  }

  return v7;
}

- (CardAnimation)initWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity delay:(double)delay calculateCoordinatedAnimation:(BOOL)animation
{
  animationCopy = animation;
  v32.receiver = self;
  v32.super_class = CardAnimation;
  v14 = [(CardAnimation *)&v32 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = 1;
    v14->_typeParameters.spring.mass = mass;
    v14->_typeParameters.spring.stiffness = stiffness;
    v14->_typeParameters.spring.damping = damping;
    v14->_typeParameters.spring.initialVelocity = velocity;
    v16 = [[SpringInfo alloc] initWithMass:mass stiffness:stiffness damping:damping initialVelocity:velocity];
    [(SpringInfo *)v16 settlingTime];
    v15->_duration = v17;
    v15->_delay = delay;
    if (animationCopy)
    {
      [(SpringInfo *)v16 undershootTime];
      v19 = v18;
      [(SpringInfo *)v16 overshootTime];
      v21 = v20;
      if (v19 <= 0.0)
      {
        v23 = 0;
      }

      else
      {
        [(SpringInfo *)v16 valueAtTime:v19];
        v23 = v22 > 1.005;
      }

      if (v21 > 0.0)
      {
        [(SpringInfo *)v16 valueAtTime:v21];
        if (v24 < -0.005)
        {
          v25 = [CardAnimation alloc];
          if (v23)
          {
            v26 = v21 - v19;
            delayCopy = v19 + delay;
          }

          else
          {
            v26 = v21;
            delayCopy = delay;
          }

          delay = [(CardAnimation *)v25 initWithDuration:5 curve:v26 delay:delayCopy];
          goto LABEL_14;
        }
      }

      if (v23)
      {
        delay = [[CardAnimation alloc] initWithMass:0 stiffness:mass damping:stiffness initialVelocity:damping delay:0.0 calculateCoordinatedAnimation:v19 + delay];
LABEL_14:
        coordinatedUnitAnimation = v15->_coordinatedUnitAnimation;
        v15->_coordinatedUnitAnimation = delay;
      }
    }

    v30 = v15;
  }

  return v15;
}

- (CardAnimation)initWithDuration:(double)duration curve:(int64_t)curve delay:(double)delay
{
  v12.receiver = self;
  v12.super_class = CardAnimation;
  v8 = [(CardAnimation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 0;
    v8->_typeParameters.basic.curve = curve;
    v8->_duration = duration;
    v8->_delay = delay;
    v10 = v8;
  }

  return v9;
}

+ (id)animationUsingDefaultSpringWithInitialVelocity:(double)velocity delay:(double)delay
{
  v4 = [[self alloc] initUsingDefaultSpringWithInitialVelocity:velocity delay:delay];

  return v4;
}

+ (CardAnimation)animationWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity delay:(double)delay
{
  v7 = [[self alloc] initWithMass:mass stiffness:stiffness damping:damping initialVelocity:velocity delay:delay];

  return v7;
}

+ (CardAnimation)animationWithDuration:(double)duration curve:(int64_t)curve delay:(double)delay
{
  v5 = [[self alloc] initWithDuration:curve curve:duration delay:delay];

  return v5;
}

@end