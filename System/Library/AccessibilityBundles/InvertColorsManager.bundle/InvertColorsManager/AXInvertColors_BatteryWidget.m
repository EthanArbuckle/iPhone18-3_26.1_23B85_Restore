@interface AXInvertColors_BatteryWidget
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_BatteryWidget

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BCBatteryWidgetRowView" hasInstanceVariable:@"_glyphImageView" withType:"UIImageView"];
  [v3 validateClass:@"BCBatteryView"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"BCBatteryWidgetRowViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"BCBatteryViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end