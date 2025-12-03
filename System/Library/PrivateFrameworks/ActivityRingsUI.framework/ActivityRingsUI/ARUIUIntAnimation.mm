@interface ARUIUIntAnimation
+ (id)animationWithDuration:(double)duration startValue:(unint64_t)value endValue:(unint64_t)endValue timingFunction:(id)function applier:(id)applier;
- (ARUIRingGroupAnimationDelegate)delegate;
- (ARUIUIntAnimation)initWithDuration:(double)duration startValue:(unint64_t)value endValue:(unint64_t)endValue timingFunction:(id)function applier:(id)applier;
- (void)completeAnimation;
- (void)dealloc;
- (void)update:(double)update;
@end

@implementation ARUIUIntAnimation

+ (id)animationWithDuration:(double)duration startValue:(unint64_t)value endValue:(unint64_t)endValue timingFunction:(id)function applier:(id)applier
{
  applierCopy = applier;
  functionCopy = function;
  v13 = [[ARUIUIntAnimation alloc] initWithDuration:value startValue:endValue endValue:functionCopy timingFunction:applierCopy applier:duration];

  return v13;
}

- (ARUIUIntAnimation)initWithDuration:(double)duration startValue:(unint64_t)value endValue:(unint64_t)endValue timingFunction:(id)function applier:(id)applier
{
  functionCopy = function;
  applierCopy = applier;
  v20.receiver = self;
  v20.super_class = ARUIUIntAnimation;
  v15 = [(ARUIUIntAnimation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_completed = 0;
    v15->_duration = duration;
    v15->_percent = 0.0;
    v15->_currentValue = value;
    v15->_endValue = endValue;
    v15->_startValue = value;
    objc_storeStrong(&v15->_timingFunction, function);
    v17 = MEMORY[0x1D3875270](applierCopy);
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

- (void)update:(double)update
{
  if (self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should not call update on a ARUIUIntAnimation that has already completed"];
  }

  v5 = self->_percent + update / self->_duration;
  self->_percent = ARUISaturate(v5);
  [(CAMediaTimingFunction *)self->_timingFunction _solveForInput:?];
  self->_currentValue = ARUIMix(self->_startValue, self->_endValue, v6);
  v7 = *(self->_applier + 2);
  v8.n128_f64[0] = update;

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