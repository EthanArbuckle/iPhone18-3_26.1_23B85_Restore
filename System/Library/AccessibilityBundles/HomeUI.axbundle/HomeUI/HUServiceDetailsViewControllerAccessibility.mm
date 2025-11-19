@interface HUServiceDetailsViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation HUServiceDetailsViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = HUServiceDetailsViewControllerAccessibility;
  [(HUServiceDetailsViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(HUServiceDetailsViewControllerAccessibility *)self _axModifyTableView];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUServiceDetailsViewControllerAccessibility;
  [(HUServiceDetailsViewControllerAccessibility *)&v3 viewDidLoad];
  [(HUServiceDetailsViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end