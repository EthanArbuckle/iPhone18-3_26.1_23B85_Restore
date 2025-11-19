@interface PXScrollViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PXScrollViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PXScrollViewControllerAccessibility;
  [(PXScrollViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PXScrollViewControllerAccessibility *)self safeValueForKey:@"updateDelegate"];
  [v3 _accessibilityLoadAccessibilityInformation];
}

@end