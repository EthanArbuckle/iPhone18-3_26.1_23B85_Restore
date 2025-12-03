@interface AXInvertColors_BatteryWidget
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_BatteryWidget

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BCBatteryWidgetRowView" hasInstanceVariable:@"_glyphImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"BCBatteryView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"BCBatteryWidgetRowViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"BCBatteryViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end