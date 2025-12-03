@interface BCBatteryWidgetViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation BCBatteryWidgetViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BCBatteryWidgetViewController" hasInstanceMethod:@"_updateRowView:withDevice:animated:" withFullSignature:{"v", "@", "@", "B", 0}];
  [validationsCopy validateClass:@"BCBatteryWidgetRowView" hasInstanceMethod:@"glyphImage" withFullSignature:{"@", 0}];
}

@end