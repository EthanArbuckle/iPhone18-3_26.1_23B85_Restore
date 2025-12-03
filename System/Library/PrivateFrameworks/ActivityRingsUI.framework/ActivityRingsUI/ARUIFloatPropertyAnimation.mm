@interface ARUIFloatPropertyAnimation
+ (id)animationWithEndingFloatValue:(float)value duration:(double)duration customTimingFunction:(id)function completion:(id)completion;
+ (id)animationWithEndingFloatValue:(float)value duration:(double)duration timingFunction:(id)function completion:(id)completion;
- (id)valueByAddingCurrentValueToValue:(id)value;
@end

@implementation ARUIFloatPropertyAnimation

+ (id)animationWithEndingFloatValue:(float)value duration:(double)duration timingFunction:(id)function completion:(id)completion
{
  completionCopy = completion;
  v11 = [self timingFunctionForMediaTimingFunction:function];
  *&v12 = value;
  v13 = [self animationWithEndingFloatValue:v11 duration:completionCopy customTimingFunction:v12 completion:duration];

  return v13;
}

+ (id)animationWithEndingFloatValue:(float)value duration:(double)duration customTimingFunction:(id)function completion:(id)completion
{
  result = [(ARUIAnimatableObjectPropertyAnimation *)ARUIFloatPropertyAnimation animationWithDuration:function timingFunction:completion completion:duration];
  *(result + 11) = value;
  return result;
}

- (id)valueByAddingCurrentValueToValue:(id)value
{
  [value floatValue];
  *&v4 = (*&v4 + self->_currentValue) - self->_startValue;
  v5 = MEMORY[0x1E696AD98];

  return [v5 numberWithFloat:v4];
}

@end