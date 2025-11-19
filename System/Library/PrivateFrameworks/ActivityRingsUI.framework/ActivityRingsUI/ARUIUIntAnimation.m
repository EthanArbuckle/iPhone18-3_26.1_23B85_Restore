@interface ARUIUIntAnimation
+ (id)animationWithDuration:(double)a3 startValue:(unint64_t)a4 endValue:(unint64_t)a5 timingFunction:(id)a6 applier:(id)a7;
- (ARUIRingGroupAnimationDelegate)delegate;
- (ARUIUIntAnimation)initWithDuration:(double)a3 startValue:(unint64_t)a4 endValue:(unint64_t)a5 timingFunction:(id)a6 applier:(id)a7;
- (void)completeAnimation;
- (void)dealloc;
- (void)update:(double)a3;
@end

@implementation ARUIUIntAnimation

+ (id)animationWithDuration:(double)a3 startValue:(unint64_t)a4 endValue:(unint64_t)a5 timingFunction:(id)a6 applier:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = [[ARUIUIntAnimation alloc] initWithDuration:a4 startValue:a5 endValue:v12 timingFunction:v11 applier:a3];

  return v13;
}

- (ARUIUIntAnimation)initWithDuration:(double)a3 startValue:(unint64_t)a4 endValue:(unint64_t)a5 timingFunction:(id)a6 applier:(id)a7
{
  v13 = a6;
  v14 = a7;
  v20.receiver = self;
  v20.super_class = ARUIUIntAnimation;
  v15 = [(ARUIUIntAnimation *)&v20 init];
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
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should call -[ARUIUIntAnimation completeAnimation] before deallocating"];
  }

  v3.receiver = self;
  v3.super_class = ARUIUIntAnimation;
  [(ARUIUIntAnimation *)&v3 dealloc];
}

- (void)update:(double)a3
{
  if (self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should not call update on a ARUIUIntAnimation that has already completed"];
  }

  v5 = self->_percent + a3 / self->_duration;
  self->_percent = ARUISaturate(v5);
  [(CAMediaTimingFunction *)self->_timingFunction _solveForInput:?];
  self->_currentValue = ARUIMix(self->_startValue, self->_endValue, v6);
  v7 = *(self->_applier + 2);
  v8.n128_f64[0] = a3;

  v7(v8);
}

- (void)completeAnimation
{
  if (self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should not call completeAnimation on a ARUIUIntAnimation that has already completed"];
  }

  (*(self->_applier + 2))(0.0);
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