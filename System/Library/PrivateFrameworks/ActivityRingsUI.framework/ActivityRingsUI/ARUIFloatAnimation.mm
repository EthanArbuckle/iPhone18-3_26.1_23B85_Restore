@interface ARUIFloatAnimation
+ (id)animationWithDuration:(double)a3 startValue:(float)a4 endValue:(float)a5 timingFunction:(id)a6 applier:(id)a7;
- (ARUIFloatAnimation)initWithDuration:(double)a3 startValue:(float)a4 endValue:(float)a5 timingFunction:(id)a6 applier:(id)a7;
- (ARUIRingGroupAnimationDelegate)delegate;
- (void)completeAnimation;
- (void)dealloc;
- (void)update:(double)a3;
@end

@implementation ARUIFloatAnimation

+ (id)animationWithDuration:(double)a3 startValue:(float)a4 endValue:(float)a5 timingFunction:(id)a6 applier:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = [ARUIFloatAnimation alloc];
  *&v14 = a4;
  *&v15 = a5;
  v16 = [(ARUIFloatAnimation *)v13 initWithDuration:v12 startValue:v11 endValue:a3 timingFunction:v14 applier:v15];

  return v16;
}

- (ARUIFloatAnimation)initWithDuration:(double)a3 startValue:(float)a4 endValue:(float)a5 timingFunction:(id)a6 applier:(id)a7
{
  v13 = a6;
  v14 = a7;
  v20.receiver = self;
  v20.super_class = ARUIFloatAnimation;
  v15 = [(ARUIFloatAnimation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_completed = 0;
    v15->_duration = a3;
    v15->_percent = 0.0;
    v15->_currentValue = a4;
    v15->_endValue = a5;
    v15->_startValue = a4;
    objc_storeStrong(&v15->_timingFunction, a6);
    v17 = MEMORY[0x1D3875270](v14);
    applier = v16->_applier;
    v16->_applier = v17;
  }

  return v16;
}

- (void)dealloc
{
  if (!self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should call -[ARUIFloatAnimation completeAnimation] before deallocating"];
  }

  v3.receiver = self;
  v3.super_class = ARUIFloatAnimation;
  [(ARUIFloatAnimation *)&v3 dealloc];
}

- (void)update:(double)a3
{
  if (self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should not call update on a ARUIFloatAnimation that has already completed"];
  }

  v5 = self->_percent + a3 / self->_duration;
  self->_percent = ARUISaturate(v5);
  [(CAMediaTimingFunction *)self->_timingFunction _solveForInput:?];
  self->_currentValue = ARUIMix(self->_startValue, self->_endValue, v6);
  v7 = *(self->_applier + 2);

  v7();
}

- (void)completeAnimation
{
  if (self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should not call completeAnimation on a ARUIFloatAnimation that has already completed"];
  }

  (*(self->_applier + 2))(self->_endValue, 0.0);
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