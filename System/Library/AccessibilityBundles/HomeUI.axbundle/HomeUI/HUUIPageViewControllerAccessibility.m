@interface HUUIPageViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityScrollStatus;
@end

@implementation HUUIPageViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UINavigationBar" hasInstanceVariable:@"_visualProvider" withType:"_UINavigationBarVisualProvider"];
  [v3 validateClass:@"_UINavigationBarVisualProviderModernIOS" isKindOfClass:@"_UINavigationBarVisualProvider"];
  [v3 validateClass:@"_UINavigationBarVisualProviderModernIOS" hasInstanceVariable:@"_largeTitleView" withType:"_UINavigationBarLargeTitleView"];
  [v3 validateClass:@"_UINavigationBarLargeTitleView" hasInstanceMethod:@"layout" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_UINavigationBarLargeTitleViewLayout" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (id)_accessibilityScrollStatus
{
  v13 = 0;
  objc_opt_class();
  v3 = [(HUUIPageViewControllerAccessibility *)self viewControllers];
  v4 = [v3 firstObject];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 navigationBar];
  v7 = [v6 safeValueForKeyPath:@"_visualProvider._largeTitleView.layout.titleLabel"];

  v8 = [v7 accessibilityLabel];
  if ([v8 length])
  {
    v9 = [v7 accessibilityLabel];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HUUIPageViewControllerAccessibility;
    v9 = [(HUUIPageViewControllerAccessibility *)&v12 _accessibilityScrollStatus];
  }

  v10 = v9;

  return v10;
}

@end