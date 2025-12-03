@interface UIKeyboardTypingStyleEstimatorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)beganContinuousPath;
- (void)endedContinuousPath;
@end

@implementation UIKeyboardTypingStyleEstimatorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UIKeyboardTypingStyleEstimator";
  v4 = "v";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"endedContinuousPath" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (void)beganContinuousPath
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyboardTypingStyleEstimatorAccessibility;
  [(UIKeyboardTypingStyleEstimatorAccessibility *)&v2 beganContinuousPath];
  [(UIKeyboardTypingStyleEstimatorAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:@"ContinuousPath"];
}

- (void)endedContinuousPath
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyboardTypingStyleEstimatorAccessibility;
  [(UIKeyboardTypingStyleEstimatorAccessibility *)&v2 endedContinuousPath];
  [(UIKeyboardTypingStyleEstimatorAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"ContinuousPath"];
}

@end