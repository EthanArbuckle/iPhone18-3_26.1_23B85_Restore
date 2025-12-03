@interface JSSocialProfileVerticalStackViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation JSSocialProfileVerticalStackViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = JSSocialProfileVerticalStackViewControllerAccessibility;
  [(JSSocialProfileVerticalStackViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  navigationItem = [(JSSocialProfileVerticalStackViewControllerAccessibility *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  v5 = accessibilityMusicLocalizedString(@"more.button");
  [rightBarButtonItem setAccessibilityLabel:v5];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = JSSocialProfileVerticalStackViewControllerAccessibility;
  [(JSSocialProfileVerticalStackViewControllerAccessibility *)&v3 viewDidLoad];
  [(JSSocialProfileVerticalStackViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end