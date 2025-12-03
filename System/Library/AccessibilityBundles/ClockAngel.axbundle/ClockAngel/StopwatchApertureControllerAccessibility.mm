@interface StopwatchApertureControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation StopwatchApertureControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ClockAngel.StopwatchApertureController" hasSwiftField:@"leadingView" withSwiftType:"Optional<UIView & SBUISystemApertureAccessoryView>"];
  [validationsCopy validateClass:@"ClockAngel.StopwatchApertureController" hasSwiftField:@"minimalView" withSwiftType:"Optional<UIView & SBUISystemApertureAccessoryView>"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = StopwatchApertureControllerAccessibility;
  [(StopwatchApertureControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(StopwatchApertureControllerAccessibility *)self safeSwiftValueForKey:@"leadingView"];
  [v3 setAccessibilityLabelBlock:&__block_literal_global_1];
  v4 = [(StopwatchApertureControllerAccessibility *)self safeSwiftValueForKey:@"minimalView"];
  [v4 setAccessibilityLabelBlock:&__block_literal_global_299];
}

@end