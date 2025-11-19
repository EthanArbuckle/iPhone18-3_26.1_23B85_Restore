@interface CCUIDisplayModuleViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation CCUIDisplayModuleViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CCUIDisplayModuleViewControllerAccessibility;
  [(CCUIDisplayModuleViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(CCUIDisplayModuleViewControllerAccessibility *)self safeUIViewForKey:@"sliderView"];
  v4 = accessibilityLocalizedString(@"brightness.button.label");
  [v3 setAccessibilityLabel:v4];

  v5 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7FF0] | v5];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = CCUIDisplayModuleViewControllerAccessibility;
  [(CCUIDisplayModuleViewControllerAccessibility *)&v3 loadView];
  [(CCUIDisplayModuleViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end