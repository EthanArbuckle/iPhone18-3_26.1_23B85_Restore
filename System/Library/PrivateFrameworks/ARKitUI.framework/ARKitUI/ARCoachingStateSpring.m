@interface ARCoachingStateSpring
- (ARCoachingStateSpring)initWithValue:(double)a3;
@end

@implementation ARCoachingStateSpring

- (ARCoachingStateSpring)initWithValue:(double)a3
{
  v6.receiver = self;
  v6.super_class = ARCoachingStateSpring;
  v3 = [(ARFLSpring *)&v6 initWithValue:a3];
  v4 = v3;
  if (v3)
  {
    [(ARFLSpring *)v3 setParameters:0.9, 0.08, 0.9, 0.08];
  }

  return v4;
}

@end