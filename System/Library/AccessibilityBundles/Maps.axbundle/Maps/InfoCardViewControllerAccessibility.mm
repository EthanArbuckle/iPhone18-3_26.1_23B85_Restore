@interface InfoCardViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation InfoCardViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = InfoCardViewControllerAccessibility;
  [(InfoCardViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = InfoCardViewControllerAccessibility;
  [(InfoCardViewControllerAccessibility *)&v2 viewDidLoad];
}

@end