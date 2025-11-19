@interface DOCSidebarViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation DOCSidebarViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = DOCSidebarViewControllerAccessibility;
  [(DOCSidebarViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(DOCSidebarViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityIdentifier:@"Browse View"];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = DOCSidebarViewControllerAccessibility;
  [(DOCSidebarViewControllerAccessibility *)&v3 viewDidLoad];
  [(DOCSidebarViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end