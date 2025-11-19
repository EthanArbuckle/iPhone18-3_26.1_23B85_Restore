@interface ARUICGPointPropertyAnimation
+ (id)animationWithEndingCGPointValue:(CGPoint)a3 duration:(double)a4 timingFunction:(id)a5 completion:(id)a6;
- (CGPoint)currentValue;
- (CGPoint)endValue;
- (CGPoint)startValue;
- (id)valueByAddingCurrentValueToValue:(id)a3;
- (void)_setCurrentValue:(id)a3;
- (void)_setEndValue:(id)a3;
- (void)_setStartValue:(id)a3;
@end

@implementation ARUICGPointPropertyAnimation

+ (id)animationWithEndingCGPointValue:(CGPoint)a3 duration:(double)a4 timingFunction:(id)a5 completion:(id)a6
{
  y = a3.y;
  x = a3.x;
  v11 = a6;
  v12 = [a1 timingFunctionForMediaTimingFunction:a5];
  v13 = [(ARUIAnimatableObjectPropertyAnimation *)ARUICGPointPropertyAnimation animationWithDuration:v12 timingFunction:v11 completion:a4];

  v13[7] = x;
  v13[8] = y;

  return v13;
}

- (void)_setStartValue:(id)a3
{
  p_startValue = &self->_startValue;
  [a3 CGPointValue];
  p_startValue->x = v4;
  p_startValue->y = v5;
}

- (void)_setEndValue:(id)a3
{
  p_endValue = &self->_endValue;
  [a3 CGPointValue];
  p_endValue->x = v4;
  p_endValue->y = v5;
}

- (void)_setCurrentValue:(id)a3
{
  p_currentValue = &self->_currentValue;
  [a3 CGPointValue];
  p_currentValue->x = v4;
  p_currentValue->y = v5;
}

- (id)valueByAddingCurrentValueToValue:(id)a3
{
  [a3 CGPointValue];
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