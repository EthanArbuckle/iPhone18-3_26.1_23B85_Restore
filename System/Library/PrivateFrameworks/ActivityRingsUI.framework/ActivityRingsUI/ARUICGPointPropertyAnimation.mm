@interface ARUICGPointPropertyAnimation
+ (id)animationWithEndingCGPointValue:(CGPoint)value duration:(double)duration timingFunction:(id)function completion:(id)completion;
- (CGPoint)currentValue;
- (CGPoint)endValue;
- (CGPoint)startValue;
- (id)valueByAddingCurrentValueToValue:(id)value;
- (void)_setCurrentValue:(id)value;
- (void)_setEndValue:(id)value;
- (void)_setStartValue:(id)value;
@end

@implementation ARUICGPointPropertyAnimation

+ (id)animationWithEndingCGPointValue:(CGPoint)value duration:(double)duration timingFunction:(id)function completion:(id)completion
{
  y = value.y;
  x = value.x;
  completionCopy = completion;
  v12 = [self timingFunctionForMediaTimingFunction:function];
  v13 = [(ARUIAnimatableObjectPropertyAnimation *)ARUICGPointPropertyAnimation animationWithDuration:v12 timingFunction:completionCopy completion:duration];

  v13[7] = x;
  v13[8] = y;

  return v13;
}

- (void)_setStartValue:(id)value
{
  p_startValue = &self->_startValue;
  [value CGPointValue];
  p_startValue->x = v4;
  p_startValue->y = v5;
}

- (void)_setEndValue:(id)value
{
  p_endValue = &self->_endValue;
  [value CGPointValue];
  p_endValue->x = v4;
  p_endValue->y = v5;
}

- (void)_setCurrentValue:(id)value
{
  p_currentValue = &self->_currentValue;
  [value CGPointValue];
  p_currentValue->x = v4;
  p_currentValue->y = v5;
}

- (id)valueByAddingCurrentValueToValue:(id)value
{
  [value CGPointValue];
  v5 = v4 + self->_currentValue.x - self->_startValue.x;
  v7 = v6 + self->_currentValue.y - self->_startValue.y;
  v8 = MEMORY[0x1E696B098];

  return [v8 valueWithCGPoint:{v5, v7}];
}

- (CGPoint)startValue
{
  x = self->_startValue.x;
  y = self->_startValue.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endValue
{
  x = self->_endValue.x;
  y = self->_endValue.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)currentValue
{
  x = self->_currentValue.x;
  y = self->_currentValue.y;
  result.y = y;
  result.x = x;
  return result;
}

@end