@interface JSSearchLandingViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation JSSearchLandingViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = JSSearchLandingViewControllerAccessibility;
  [(JSSearchLandingViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(JSSearchLandingViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  v4 = [(JSSearchLandingViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  [v4 _accessibilitySetSortPriority:1];
}

@end