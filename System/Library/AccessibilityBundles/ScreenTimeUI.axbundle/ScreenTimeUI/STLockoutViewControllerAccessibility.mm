@interface STLockoutViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation STLockoutViewControllerAccessibility

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = STLockoutViewControllerAccessibility;
  [(STLockoutViewControllerAccessibility *)&v3 viewDidLoad];
  [(STLockoutViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = STLockoutViewControllerAccessibility;
  [(STLockoutViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7F80];
  v4 = [(STLockoutViewControllerAccessibility *)self safeUIViewForKey:@"titleLabel"];
  [v4 setAccessibilityTraits:v3];
}

@end