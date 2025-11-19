@interface ARUIFloatSpringAnimation
+ (id)animationWithTension:(double)a3 friction:(double)a4 startValue:(float)a5 endValue:(float)a6 applier:(id)a7;
- (ARUIFloatSpringAnimation)initWithTension:(double)a3 friction:(double)a4 startValue:(float)a5 endValue:(float)a6 applier:(id)a7;
- (ARUIRingGroupAnimationDelegate)delegate;
- (BOOL)isAnimating;
- (void)completeAnimation;
- (void)dealloc;
- (void)update:(double)a3;
@end

@implementation ARUIFloatSpringAnimation

+ (id)animationWithTension:(double)a3 friction:(double)a4 startValue:(float)a5 endValue:(float)a6 applier:(id)a7
{
  v11 = a7;
  v12 = [ARUIFloatSpringAnimation alloc];
  *&v13 = a5;
  *&v14 = a6;
  v15 = [(ARUIFloatSpringAnimation *)v12 initWithTension:v11 friction:a3 startValue:a4 endValue:v13 applier:v14];

  return v15;
}

- (ARUIFloatSpringAnimation)initWithTension:(double)a3 friction:(double)a4 startValue:(float)a5 endValue:(float)a6 applier:(id)a7
{
  v12 = a7;
  v20.receiver = self;
  v20.super_class = ARUIFloatSpringAnimation;
  v13 = [(ARUIFloatSpringAnimation *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_completed = 0;
    v15 = MEMORY[0x1D3875270](v12);
    applier = v14->_applier;
    v14->_applier = v15;

    v17 = [[_TtC15ActivityRingsUI15SpringAnimation alloc] initWithInitialValue:a5 delay:0.0];
    springAnimation = v14->_springAnimation;
    v14->_springAnimation = v17;

    [(SpringAnimation *)v14->_springAnimation configureWithTension:a3 friction:a4 target:a6];
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

- (void)update:(double)a3
{
  if (self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should not call update on a ARUIFloatSpringAnimation that has already completed"];
  }

  if ([(SpringAnimation *)self->_springAnimation advanceWithDeltaTime:a3])
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