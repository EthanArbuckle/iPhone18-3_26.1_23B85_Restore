@interface MIUIMedicalIDNavigationBarViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MIUIMedicalIDNavigationBarViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MIUIMedicalIDNavigationBarViewAccessibility;
  [(MIUIMedicalIDNavigationBarViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 _accessibilitySetOverridesInvalidFrames:1];
}

@end