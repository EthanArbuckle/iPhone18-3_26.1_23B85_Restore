@interface CSModalPresentationViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CSModalPresentationViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CSModalPresentationViewControllerAccessibility;
  [(CSModalPresentationViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CSModalPresentationViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v3 _setAccessibilityViewIsModalBlock:&__block_literal_global_421];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CSModalPresentationViewControllerAccessibility;
  [(CSModalPresentationViewControllerAccessibility *)&v3 viewDidLoad];
  [(CSModalPresentationViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end