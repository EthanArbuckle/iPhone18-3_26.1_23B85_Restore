@interface UIKeyboardTypingStyleEstimatorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)beganContinuousPath;
- (void)endedContinuousPath;
@end

@implementation UIKeyboardTypingStyleEstimatorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UIKeyboardTypingStyleEstimator";
  v4 = "v";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"endedContinuousPath" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (void)beganContinuousPath
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyboardTypingStyleEstimatorAccessibility;
  [(UIKeyboardTypingStyleEstimatorAccessibility *)&v2 beganContinuousPath];
  [(UIKeyboardTypingStyleEstimatorAccessibility *)v4 _accessibilitySetBoolValue:1 forKey:@"ContinuousPath"];
}

- (void)endedContinuousPath
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyboardTypingStyleEstimatorAccessibility;
  [(UIKeyboardTypingStyleEstimatorAccessibility *)&v2 endedContinuousPath];
  [(UIKeyboardTypingStyleEstimatorAccessibility *)v4 _accessibilitySetBoolValue:0 forKey:@"ContinuousPath"];
}

@end