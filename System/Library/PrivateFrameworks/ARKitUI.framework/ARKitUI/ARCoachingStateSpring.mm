@interface ARCoachingStateSpring
- (ARCoachingStateSpring)initWithValue:(double)value;
@end

@implementation ARCoachingStateSpring

- (ARCoachingStateSpring)initWithValue:(double)value
{
  v6.receiver = self;
  v6.super_class = ARCoachingStateSpring;
  v3 = [(ARFLSpring *)&v6 initWithValue:value];
  v4 = v3;
  if (v3)
  {
    [(ARFLSpring *)v3 setParameters:0.9, 0.08, 0.9, 0.08];
  }

  return v4;
}

@end