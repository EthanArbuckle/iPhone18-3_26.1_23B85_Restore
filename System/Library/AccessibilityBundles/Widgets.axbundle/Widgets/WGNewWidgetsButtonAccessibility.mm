@interface WGNewWidgetsButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
@end

@implementation WGNewWidgetsButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WGNewWidgetsButton" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WGNewWidgetsButton" hasInstanceVariable:@"_overlayButton" withType:"UIButton"];
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
  v3 = [v2 accessibilityActivate];

  return v3;
}

@end