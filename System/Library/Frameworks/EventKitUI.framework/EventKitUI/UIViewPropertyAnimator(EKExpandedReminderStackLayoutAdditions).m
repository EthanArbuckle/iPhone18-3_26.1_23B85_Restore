@interface UIViewPropertyAnimator(EKExpandedReminderStackLayoutAdditions)
+ (id)collapsingStackedRemindersSpringAnimator;
+ (id)expandingLayoutAttributesStackedRemindersSpringAnimator;
+ (id)expandingStackedRemindersSpringAnimator;
@end

@implementation UIViewPropertyAnimator(EKExpandedReminderStackLayoutAdditions)

+ (id)expandingStackedRemindersSpringAnimator
{
  v0 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:365.074 damping:38.2138 initialVelocity:{0.0, 0.0}];
  v1 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v0 timingParameters:0.0];

  return v1;
}

+ (id)expandingLayoutAttributesStackedRemindersSpringAnimator
{
  v0 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:203.917 damping:19.992 initialVelocity:{0.0, 0.0}];
  v1 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v0 timingParameters:0.0];

  return v1;
}

+ (id)collapsingStackedRemindersSpringAnimator
{
  v0 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:1.8 stiffness:480.0 damping:60.0 initialVelocity:{0.0, 0.0}];
  v1 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v0 timingParameters:0.0];

  return v1;
}

@end