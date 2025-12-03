@interface ARUIFloatAnimation
+ (id)animationWithDuration:(double)duration startValue:(float)value endValue:(float)endValue timingFunction:(id)function applier:(id)applier;
- (ARUIFloatAnimation)initWithDuration:(double)duration startValue:(float)value endValue:(float)endValue timingFunction:(id)function applier:(id)applier;
- (ARUIRingGroupAnimationDelegate)delegate;
- (void)completeAnimation;
- (void)dealloc;
- (void)update:(double)update;
@end

@implementation ARUIFloatAnimation

+ (id)animationWithDuration:(double)duration startValue:(float)value endValue:(float)endValue timingFunction:(id)function applier:(id)applier
{
  applierCopy = applier;
  functionCopy = function;
  v13 = [ARUIFloatAnimation alloc];
  *&v14 = value;
  *&v15 = endValue;
  v16 = [(ARUIFloatAnimation *)v13 initWithDuration:functionCopy startValue:applierCopy endValue:duration timingFunction:v14 applier:v15];

  return v16;
}

- (ARUIFloatAnimation)initWithDuration:(double)duration startValue:(float)value endValue:(float)endValue timingFunction:(id)function applier:(id)applier
{
  functionCopy = function;
  applierCopy = applier;
  v20.receiver = self;
  v20.super_class = ARUIFloatAnimation;
  v15 = [(ARUIFloatAnimation *)&v20 init];
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
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should call -[ARUIFloatAnimation completeAnimation] before deallocating"];
  }

  v3.receiver = self;
  v3.super_class = ARUIFloatAnimation;
  [(ARUIFloatAnimation *)&v3 dealloc];
}

- (void)update:(double)update
{
  if (self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should not call update on a ARUIFloatAnimation that has already completed"];
  }

  v5 = self->_percent + update / self->_duration;
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