@interface BCBatteryWidgetViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation BCBatteryWidgetViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BCBatteryWidgetViewController" hasInstanceMethod:@"_updateRowView:withDevice:animated:" withFullSignature:{"v", "@", "@", "B", 0}];
  [v3 validateClass:@"BCBatteryWidgetRowView" hasInstanceMethod:@"glyphImage" withFullSignature:{"@", 0}];
}

@end