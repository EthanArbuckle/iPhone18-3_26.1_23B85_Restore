@interface AKInlineSignInViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation AKInlineSignInViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = AKInlineSignInViewControllerAccessibility;
  [(AKInlineSignInViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AKInlineSignInViewControllerAccessibility;
  [(AKInlineSignInViewControllerAccessibility *)&v3 viewDidLoad];
  [(AKInlineSignInViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end