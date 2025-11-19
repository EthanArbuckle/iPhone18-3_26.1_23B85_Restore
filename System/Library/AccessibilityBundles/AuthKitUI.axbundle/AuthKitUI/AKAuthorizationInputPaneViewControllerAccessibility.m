@interface AKAuthorizationInputPaneViewControllerAccessibility
- (id)_clearButton;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation AKAuthorizationInputPaneViewControllerAccessibility

- (id)_clearButton
{
  v4.receiver = self;
  v4.super_class = AKAuthorizationInputPaneViewControllerAccessibility;
  v2 = [(AKAuthorizationInputPaneViewControllerAccessibility *)&v4 _clearButton];
  [v2 _setAccessibilityLabelBlock:&__block_literal_global];

  return v2;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = AKAuthorizationInputPaneViewControllerAccessibility;
  [(AKAuthorizationInputPaneViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v7 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 view];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __97__AKAuthorizationInputPaneViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2A3150;
  objc_copyWeak(&v6, &location);
  [v4 _setAccessibilityElementsBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __97__AKAuthorizationInputPaneViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = __UIAccessibilityCastAsClass();

  v4 = [v3 view];

  v5 = [v4 subviews];

  return v5;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AKAuthorizationInputPaneViewControllerAccessibility;
  [(AKAuthorizationInputPaneViewControllerAccessibility *)&v3 viewDidLoad];
  [(AKAuthorizationInputPaneViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end