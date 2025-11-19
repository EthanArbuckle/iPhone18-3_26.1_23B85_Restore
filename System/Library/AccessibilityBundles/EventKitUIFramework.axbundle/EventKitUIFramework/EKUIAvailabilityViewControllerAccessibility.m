@interface EKUIAvailabilityViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetup;
- (void)layout;
@end

@implementation EKUIAvailabilityViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKUIAvailabilityViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"EKUIAvailabilityViewController" hasInstanceMethod:@"freeSpanViews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKUIAvailabilityViewController" hasInstanceMethod:@"participantList" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = EKUIAvailabilityViewControllerAccessibility;
  [(EKUIAvailabilityViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(EKUIAvailabilityViewControllerAccessibility *)self _accessibilitySetup];
}

- (void)_accessibilitySetup
{
  v6 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 view];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __66__EKUIAvailabilityViewControllerAccessibility__accessibilitySetup__block_invoke;
  v5[3] = &unk_29F2BC9E0;
  v5[4] = self;
  [v4 _setAccessibilityElementsBlock:v5];
}

id __66__EKUIAvailabilityViewControllerAccessibility__accessibilitySetup__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeArrayForKey:@"freeSpanViews"];
  v3 = [v2 mutableCopy];

  v4 = [*(a1 + 32) safeValueForKey:@"participantList"];
  [v3 axSafelyAddObject:v4];

  return v3;
}

- (void)layout
{
  v5.receiver = self;
  v5.super_class = EKUIAvailabilityViewControllerAccessibility;
  [(EKUIAvailabilityViewControllerAccessibility *)&v5 layout];
  v3 = *MEMORY[0x29EDC7ED8];
  v4 = [(EKUIAvailabilityViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  UIAccessibilityPostNotification(v3, v4);
}

@end