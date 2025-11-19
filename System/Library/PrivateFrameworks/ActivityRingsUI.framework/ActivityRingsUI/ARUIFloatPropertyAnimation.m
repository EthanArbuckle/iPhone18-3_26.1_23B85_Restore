@interface ARUIFloatPropertyAnimation
+ (id)animationWithEndingFloatValue:(float)a3 duration:(double)a4 customTimingFunction:(id)a5 completion:(id)a6;
+ (id)animationWithEndingFloatValue:(float)a3 duration:(double)a4 timingFunction:(id)a5 completion:(id)a6;
- (id)valueByAddingCurrentValueToValue:(id)a3;
@end

@implementation ARUIFloatPropertyAnimation

+ (id)animationWithEndingFloatValue:(float)a3 duration:(double)a4 timingFunction:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [a1 timingFunctionForMediaTimingFunction:a5];
  *&v12 = a3;
  v13 = [a1 animationWithEndingFloatValue:v11 duration:v10 customTimingFunction:v12 completion:a4];

  return v13;
}

+ (id)animationWithEndingFloatValue:(float)a3 duration:(double)a4 customTimingFunction:(id)a5 completion:(id)a6
{
  result = [(ARUIAnimatableObjectPropertyAnimation *)ARUIFloatPropertyAnimation animationWithDuration:a5 timingFunction:a6 completion:a4];
  *(result + 11) = a3;
  return result;
}

- (id)valueByAddingCurrentValueToValue:(id)a3
{
  [a3 floatValue];
  *&v4 = (*&v4 + self->_currentValue) - self->_startValue;
  v5 = MEMORY[0x1E696AD98];

  return [v5 numberWithFloat:v4];
}

@end