@interface MTATimerRecentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
@end

@implementation MTATimerRecentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTATimerRecentView" hasInstanceMethod:@"durationLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTATimerRecentView" hasInstanceMethod:@"controlButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTATimerRecentView" hasInstanceMethod:@"duration" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(MTATimerRecentViewAccessibility *)self safeValueForKey:@"duration"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [(MTATimerRecentViewAccessibility *)self safeUIViewForKey:@"durationLabel"];
  accessibilityLabel = [v5 accessibilityLabel];
  [v4 duration];
  v9 = AXDurationStringForDuration();
  v7 = __AXStringForVariables();

  return v7;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(MTATimerRecentViewAccessibility *)self safeUIViewForKey:@"controlButton"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end