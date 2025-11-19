@interface SBElasticHUDViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation SBElasticHUDViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBElasticHUDViewControllerAccessibility;
  [(SBElasticHUDViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBElasticHUDViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 _setAccessibilityElementsHiddenBlock:&__block_literal_global_19];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBElasticHUDViewControllerAccessibility;
  [(SBElasticHUDViewControllerAccessibility *)&v3 viewDidLoad];
  [(SBElasticHUDViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end