@interface ARUIFloat2Animation
+ (id)animationWithDuration:(id)duration startValue:(SEL)value endValue:(double)endValue timingFunction:(id)function applier:(id)applier;
- (ARUIFloat2Animation)initWithDuration:(ARUIFloat2Animation *)self startValue:(SEL)value endValue:(double)endValue timingFunction:(id)function applier:(id)applier;
- (ARUIRingGroupAnimationDelegate)delegate;
- (void)completeAnimation;
- (void)dealloc;
- (void)update:(double)update;
@end

@implementation ARUIFloat2Animation

+ (id)animationWithDuration:(id)duration startValue:(SEL)value endValue:(double)endValue timingFunction:(id)function applier:(id)applier
{
  v8 = v6;
  v9 = v5;
  applierCopy = applier;
  functionCopy = function;
  v13 = [[ARUIFloat2Animation alloc] initWithDuration:functionCopy startValue:applierCopy endValue:endValue timingFunction:v9 applier:v8];

  return v13;
}

- (ARUIFloat2Animation)initWithDuration:(ARUIFloat2Animation *)self startValue:(SEL)value endValue:(double)endValue timingFunction:(id)function applier:(id)applier
{
  v9 = v6;
  v10 = v5;
  functionCopy = function;
  applierCopy = applier;
  v20.receiver = self;
  v20.super_class = ARUIFloat2Animation;
  v15 = [(ARUIFloat2Animation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_completed = 0;
    v15->_percent = 0.0;
    v15->_duration = endValue;
    *v15->_startValue = v10;
    *v15->_currentValue = v10;
    *v15->_endValue = v9;
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
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should call -[ARUIFloat2Animation completeAnimation] before deallocating"];
  }

  v3.receiver = self;
  v3.super_class = ARUIFloat2Animation;
  [(ARUIFloat2Animation *)&v3 dealloc];
}

- (void)update:(double)update
{
  if (self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should not call update on a ARUIFloat2Animation that has already completed"];
  }

  v5 = self->_percent + update / self->_duration;
  self->_percent = ARUISaturate(v5);
  [(CAMediaTimingFunction *)self->_timingFunction _solveForInput:?];
  v7 = v6;
  v8.n128_f32[0] = ARUIMix(COERCE_FLOAT(*self->_startValue), COERCE_FLOAT(*self->_endValue), v6);
  v13 = v8;
  v9 = ARUIMix(*&self->_startValue[4], *&self->_endValue[4], v7);
  v12 = v13;
  v12.n128_f32[1] = v9;
  *self->_currentValue = v12.n128_u64[0];
  v10 = v12;
  v11 = *(self->_applier + 2);
  v12.n128_f64[0] = update;

  v11(v10, v12);
}

- (void)completeAnimation
{
  if (self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should not call completeAnimation on a ARUIFloat2Animation that has already completed"];
  }

  (*(self->_applier + 2))(*self->_endValue, 0.0);
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