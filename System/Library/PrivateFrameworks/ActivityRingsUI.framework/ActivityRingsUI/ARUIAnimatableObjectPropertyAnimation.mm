@interface ARUIAnimatableObjectPropertyAnimation
+ (id)animationWithDuration:(double)a3 timingFunction:(id)a4 completion:(id)a5;
+ (id)timingFunctionForMediaTimingFunction:(id)a3;
- (BOOL)isFinishedAnimating;
- (id)_currentValue;
- (id)_endValue;
- (id)_startValue;
- (id)valueByAddingCurrentValueToValue:(id)a3;
- (void)_setCurrentValue:(id)a3;
- (void)_setEndValue:(id)a3;
- (void)_setStartValue:(id)a3;
- (void)_updateWithProgress:(float)a3;
- (void)callAndReleaseCompletionHandler;
- (void)update:(double)a3;
@end

@implementation ARUIAnimatableObjectPropertyAnimation

+ (id)timingFunctionForMediaTimingFunction:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__ARUIAnimatableObjectPropertyAnimation_timingFunctionForMediaTimingFunction___block_invoke;
  v7[3] = &unk_1E83CE478;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x1D3875270](v7);

  return v5;
}

double __78__ARUIAnimatableObjectPropertyAnimation_timingFunctionForMediaTimingFunction___block_invoke(uint64_t a1, double a2)
{
  *&a2 = a2;
  [*(a1 + 32) _solveForInput:a2];
  return v2;
}

+ (id)animationWithDuration:(double)a3 timingFunction:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(a1);
  v11 = v10;
  if (v10)
  {
    *(v10 + 3) = a3;
    v12 = MEMORY[0x1D3875270](v8);
    v13 = v11[1];
    v11[1] = v12;

    v14 = MEMORY[0x1D3875270](v9);
    v15 = v11[4];
    v11[4] = v14;
  }

  return v11;
}

- (void)update:(double)a3
{
  currentAnimationTime = self->_currentAnimationTime;
  duration = self->_duration;
  if (currentAnimationTime < duration)
  {
    v7 = currentAnimationTime + a3;
    if (v7 >= duration)
    {
      v7 = self->_duration;
    }

    self->_currentAnimationTime = v7;
    v8 = (*(self->_animationTimingFunction + 2))(v7 / duration);
    *&v8 = v8;

    [(ARUIAnimatableObjectPropertyAnimation *)self _updateWithProgress:v8];
  }
}

- (BOOL)isFinishedAnimating
{
  if (self->_currentAnimationTime >= self->_duration)
  {
    return 1;
  }

  v3 = [(ARUIAnimatableObjectPropertyAnimation *)self _currentValue];
  v4 = [(ARUIAnimatableObjectPropertyAnimation *)self _endValue];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)callAndReleaseCompletionHandler
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v5 = MEMORY[0x1D3875270](completionHandler, a2);
    v4 = self->_completionHandler;
    self->_completionHandler = 0;

    v5[2]();
  }
}

- (id)_startValue
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)_endValue
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)_currentValue
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_setStartValue:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (void)_setEndValue:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (void)_setCurrentValue:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (void)_updateWithProgress:(float)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (id)valueByAddingCurrentValueToValue:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

@end