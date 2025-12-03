@interface HUUIPageViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityScrollStatus;
@end

@implementation HUUIPageViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UINavigationBar" hasInstanceVariable:@"_visualProvider" withType:"_UINavigationBarVisualProvider"];
  [validationsCopy validateClass:@"_UINavigationBarVisualProviderModernIOS" isKindOfClass:@"_UINavigationBarVisualProvider"];
  [validationsCopy validateClass:@"_UINavigationBarVisualProviderModernIOS" hasInstanceVariable:@"_largeTitleView" withType:"_UINavigationBarLargeTitleView"];
  [validationsCopy validateClass:@"_UINavigationBarLargeTitleView" hasInstanceMethod:@"layout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UINavigationBarLargeTitleViewLayout" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (id)_accessibilityScrollStatus
{
  v13 = 0;
  objc_opt_class();
  viewControllers = [(HUUIPageViewControllerAccessibility *)self viewControllers];
  firstObject = [viewControllers firstObject];
  v5 = __UIAccessibilityCastAsClass();

  navigationBar = [v5 navigationBar];
  v7 = [navigationBar safeValueForKeyPath:@"_visualProvider._largeTitleView.layout.titleLabel"];

  accessibilityLabel = [v7 accessibilityLabel];
  if ([accessibilityLabel length])
  {
    accessibilityLabel2 = [v7 accessibilityLabel];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HUUIPageViewControllerAccessibility;
    accessibilityLabel2 = [(HUUIPageViewControllerAccessibility *)&v12 _accessibilityScrollStatus];
  }

  v10 = accessibilityLabel2;

  return v10;
}

@end