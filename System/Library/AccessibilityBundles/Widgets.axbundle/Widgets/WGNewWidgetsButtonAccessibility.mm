@interface WGNewWidgetsButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
@end

@implementation WGNewWidgetsButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WGNewWidgetsButton" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WGNewWidgetsButton" hasInstanceVariable:@"_overlayButton" withType:"UIButton"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(WGNewWidgetsButtonAccessibility *)self safeValueForKey:@"text"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (BOOL)accessibilityActivate
{
  v2 = [(WGNewWidgetsButtonAccessibility *)self safeValueForKey:@"_overlayButton"];
  accessibilityActivate = [v2 accessibilityActivate];

  return accessibilityActivate;
}

@end