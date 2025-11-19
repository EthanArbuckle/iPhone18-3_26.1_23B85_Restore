@interface HUAlarmEditSettingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HUAlarmEditSettingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUAlarmEditSettingViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"HUAlarmEditSettingViewController" hasInstanceMethod:@"tableView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = HUAlarmEditSettingViewControllerAccessibility;
  [(HUAlarmEditSettingViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

@end