@interface SBHStackConfigurationViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SBHStackConfigurationViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBHStackConfigurationViewControllerAccessibility;
  [(SBHStackConfigurationViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBHStackConfigurationViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v3 setAccessibilityViewIsModal:1];
}

@end