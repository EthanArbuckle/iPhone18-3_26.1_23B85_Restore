@interface FMMainViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation FMMainViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = FMMainViewControllerAccessibility;
  [(FMMainViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(FMMainViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v3 accessibilitySetIdentification:@"FMMainView"];
}

@end