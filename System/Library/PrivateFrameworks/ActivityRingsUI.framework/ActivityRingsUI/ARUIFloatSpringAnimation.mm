@interface ARUIFloatSpringAnimation
+ (id)animationWithTension:(double)tension friction:(double)friction startValue:(float)value endValue:(float)endValue applier:(id)applier;
- (ARUIFloatSpringAnimation)initWithTension:(double)tension friction:(double)friction startValue:(float)value endValue:(float)endValue applier:(id)applier;
- (ARUIRingGroupAnimationDelegate)delegate;
- (BOOL)isAnimating;
- (void)completeAnimation;
- (void)dealloc;
- (void)update:(double)update;
@end

@implementation ARUIFloatSpringAnimation

+ (id)animationWithTension:(double)tension friction:(double)friction startValue:(float)value endValue:(float)endValue applier:(id)applier
{
  applierCopy = applier;
  v12 = [ARUIFloatSpringAnimation alloc];
  *&v13 = value;
  *&v14 = endValue;
  v15 = [(ARUIFloatSpringAnimation *)v12 initWithTension:applierCopy friction:tension startValue:friction endValue:v13 applier:v14];

  return v15;
}

- (ARUIFloatSpringAnimation)initWithTension:(double)tension friction:(double)friction startValue:(float)value endValue:(float)endValue applier:(id)applier
{
  applierCopy = applier;
  v20.receiver = self;
  v20.super_class = ARUIFloatSpringAnimation;
  v13 = [(ARUIFloatSpringAnimation *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_completed = 0;
    v15 = MEMORY[0x1D3875270](applierCopy);
    applier = v14->_applier;
    v14->_applier = v15;

    v17 = [[_TtC15ActivityRingsUI15SpringAnimation alloc] initWithInitialValue:value delay:0.0];
    springAnimation = v14->_springAnimation;
    v14->_springAnimation = v17;

    [(SpringAnimation *)v14->_springAnimation configureWithTension:tension friction:friction target:endValue];
  }

  return v14;
}

- (void)dealloc
{
  if (!self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should call -[ARUIFloatSpringAnimation completeAnimation] before deallocating"];
  }

  v3.receiver = self;
  v3.super_class = ARUIFloatSpringAnimation;
  [(ARUIFloatSpringAnimation *)&v3 dealloc];
}

- (void)update:(double)update
{
  if (self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should not call update on a ARUIFloatSpringAnimation that has already completed"];
  }

  if ([(SpringAnimation *)self->_springAnimation advanceWithDeltaTime:update])
  {
    applier = self->_applier;
    [(ARUIFloatSpringAnimation *)self currentValue];
    v6 = applier[2];

    v6(applier);
  }
}

- (BOOL)isAnimating
{
  [(SpringAnimation *)self->_springAnimation value];
  v4 = v3;
  [(SpringAnimation *)self->_springAnimation target];
  v6 = v5;
  return !ARUIFloatEqual(v4, v6);
}

- (void)completeAnimation
{
  if (self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should not call completeAnimation on a ARUIFloatSpringAnimation that has already completed"];
  }

  [(SpringAnimation *)self->_springAnimation completeWithSnap];
  applier = self->_applier;
  [(ARUIFloatSpringAnimation *)self endValue];
  applier[2](applier);
  self->_completed = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained animationDidComplete:self];
}

- (ARUIRingGroupAnimationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end