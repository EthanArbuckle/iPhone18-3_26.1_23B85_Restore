@interface AKBasicLoginAlertControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetAlertIdentifier;
- (void)jiggleAView;
@end

@implementation AKBasicLoginAlertControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AKBasicLoginAlertController" isKindOfClass:@"UIAlertController"];
  [v3 validateClass:@"AKBasicLoginAlertController" hasInstanceMethod:@"jiggleAView" withFullSignature:{"v", 0}];
}

- (void)_accessibilitySetAlertIdentifier
{
  v2 = MEMORY[0x29C2CA5E0](@"_UIAlertControllerView", a2);
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 view];
  v5 = [v4 _accessibilityViewAncestorIsKindOf:v2];

  [v5 setAccessibilityIdentifier:@"AuthKit Login"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = AKBasicLoginAlertControllerAccessibility;
  [(AKBasicLoginAlertControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(AKBasicLoginAlertControllerAccessibility *)self _accessibilitySetAlertIdentifier];
}

- (void)jiggleAView
{
  v4.receiver = self;
  v4.super_class = AKBasicLoginAlertControllerAccessibility;
  [(AKBasicLoginAlertControllerAccessibility *)&v4 jiggleAView];
  v2 = *MEMORY[0x29EDC7EA8];
  v3 = accessibilityLocalizedString(@"incorrect.password");
  UIAccessibilityPostNotification(v2, v3);
}

@end