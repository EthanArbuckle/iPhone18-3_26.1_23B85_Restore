@interface ARUIFloat2Animation
+ (id)animationWithDuration:(id)a1 startValue:(SEL)a2 endValue:(double)a3 timingFunction:(id)a4 applier:(id)a5;
- (ARUIFloat2Animation)initWithDuration:(ARUIFloat2Animation *)self startValue:(SEL)a2 endValue:(double)a3 timingFunction:(id)a4 applier:(id)a5;
- (ARUIRingGroupAnimationDelegate)delegate;
- (void)completeAnimation;
- (void)dealloc;
- (void)update:(double)a3;
@end

@implementation ARUIFloat2Animation

+ (id)animationWithDuration:(id)a1 startValue:(SEL)a2 endValue:(double)a3 timingFunction:(id)a4 applier:(id)a5
{
  v8 = v6;
  v9 = v5;
  v11 = a5;
  v12 = a4;
  v13 = [[ARUIFloat2Animation alloc] initWithDuration:v12 startValue:v11 endValue:a3 timingFunction:v9 applier:v8];

  return v13;
}

- (ARUIFloat2Animation)initWithDuration:(ARUIFloat2Animation *)self startValue:(SEL)a2 endValue:(double)a3 timingFunction:(id)a4 applier:(id)a5
{
  v9 = v6;
  v10 = v5;
  v13 = a4;
  v14 = a5;
  v20.receiver = self;
  v20.super_class = ARUIFloat2Animation;
  v15 = [(ARUIFloat2Animation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_completed = 0;
    v15->_percent = 0.0;
    v15->_duration = a3;
    *v15->_startValue = v10;
    *v15->_currentValue = v10;
    *v15->_endValue = v9;
    objc_storeStrong(&v15->_timingFunction, a4);
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
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should call -[ARUIFloat2Animation completeAnimation] before deallocating"];
  }

  v3.receiver = self;
  v3.super_class = ARUIFloat2Animation;
  [(ARUIFloat2Animation *)&v3 dealloc];
}

- (void)update:(double)a3
{
  if (self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should not call update on a ARUIFloat2Animation that has already completed"];
  }

  v5 = self->_percent + a3 / self->_duration;
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
  v12.n128_f64[0] = a3;

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