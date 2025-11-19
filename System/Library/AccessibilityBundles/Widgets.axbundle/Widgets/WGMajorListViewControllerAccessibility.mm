@interface WGMajorListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation WGMajorListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WGMajorListViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"WGMajorListViewController" hasInstanceMethod:@"footerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WGWidgetListFooterView" hasInstanceMethod:@"customizeButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = WGMajorListViewControllerAccessibility;
  [(WGMajorListViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 view];
  [v4 setAccessibilityIdentifier:@"WGMajorListViewControllerView"];

  v5 = [(WGMajorListViewControllerAccessibility *)self safeUIViewForKey:@"footerView"];
  v6 = [v5 safeUIViewForKey:@"customizeButton"];
  v7 = accessibilityLocalizedString(@"customize.button.label");
  [v6 setAccessibilityLabel:v7];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = WGMajorListViewControllerAccessibility;
  [(WGMajorListViewControllerAccessibility *)&v3 loadView];
  [(WGMajorListViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end