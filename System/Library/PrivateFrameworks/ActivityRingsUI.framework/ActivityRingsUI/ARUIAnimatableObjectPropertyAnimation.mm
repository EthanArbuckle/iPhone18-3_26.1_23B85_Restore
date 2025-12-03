@interface ARUIAnimatableObjectPropertyAnimation
+ (id)animationWithDuration:(double)duration timingFunction:(id)function completion:(id)completion;
+ (id)timingFunctionForMediaTimingFunction:(id)function;
- (BOOL)isFinishedAnimating;
- (id)_currentValue;
- (id)_endValue;
- (id)_startValue;
- (id)valueByAddingCurrentValueToValue:(id)value;
- (void)_setCurrentValue:(id)value;
- (void)_setEndValue:(id)value;
- (void)_setStartValue:(id)value;
- (void)_updateWithProgress:(float)progress;
- (void)callAndReleaseCompletionHandler;
- (void)update:(double)update;
@end

@implementation ARUIAnimatableObjectPropertyAnimation

+ (id)timingFunctionForMediaTimingFunction:(id)function
{
  functionCopy = function;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__ARUIAnimatableObjectPropertyAnimation_timingFunctionForMediaTimingFunction___block_invoke;
  v7[3] = &unk_1E83CE478;
  v8 = functionCopy;
  v4 = functionCopy;
  v5 = MEMORY[0x1D3875270](v7);

  return v5;
}

double __78__ARUIAnimatableObjectPropertyAnimation_timingFunctionForMediaTimingFunction___block_invoke(uint64_t a1, double a2)
{
  *&a2 = a2;
  [*(a1 + 32) _solveForInput:a2];
  return v2;
}

+ (id)animationWithDuration:(double)duration timingFunction:(id)function completion:(id)completion
{
  functionCopy = function;
  completionCopy = completion;
  v10 = objc_alloc_init(self);
  v11 = v10;
  if (v10)
  {
    *(v10 + 3) = duration;
    v12 = MEMORY[0x1D3875270](functionCopy);
    v13 = v11[1];
    v11[1] = v12;

    v14 = MEMORY[0x1D3875270](completionCopy);
    v15 = v11[4];
    v11[4] = v14;
  }

  return v11;
}

- (void)update:(double)update
{
  currentAnimationTime = self->_currentAnimationTime;
  duration = self->_duration;
  if (currentAnimationTime < duration)
  {
    v7 = currentAnimationTime + update;
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

  _currentValue = [(ARUIAnimatableObjectPropertyAnimation *)self _currentValue];
  _endValue = [(ARUIAnimatableObjectPropertyAnimation *)self _endValue];
  v5 = [_currentValue isEqual:_endValue];

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

- (void)_setStartValue:(id)value
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (void)_setEndValue:(id)value
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (void)_setCurrentValue:(id)value
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (void)_updateWithProgress:(float)progress
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (id)valueByAddingCurrentValueToValue:(id)value
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

@end