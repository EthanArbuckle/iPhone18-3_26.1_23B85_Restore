@interface CFXControlsViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CFXControlsViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = CFXControlsViewControllerAccessibility;
  [(CFXControlsViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(CFXControlsViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __84__CFXControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2ABEF0;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityElementsBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

id __84__CFXControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:@"view"];
  v3 = [v2 subviews];
  v4 = [v3 reverseObjectEnumerator];
  v5 = [v4 allObjects];

  return v5;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CFXControlsViewControllerAccessibility;
  [(CFXControlsViewControllerAccessibility *)&v3 viewDidLoad];
  [(CFXControlsViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end