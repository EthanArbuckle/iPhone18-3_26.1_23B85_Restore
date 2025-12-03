@interface AXInvertColors_AmbientUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_AmbientUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AMUIDateTimeViewController"];
  [validationsCopy validateClass:@"AMUIDateTimeViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"AMUIDateTimeViewController" hasInstanceVariable:@"_vibrancyView" withType:"BSUIVibrancyEffectView"];
  [validationsCopy validateClass:@"AMUIDateTimeViewController" hasInstanceVariable:@"_dateTimeView" withType:"AMUIDateTimeView"];
  [validationsCopy validateClass:@"AMUINotificationIndicatorView"];
  [validationsCopy validateClass:@"AMUIAmbientViewController"];
  [validationsCopy validateClass:@"AMUIAmbientViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"AMUIAmbientViewController" hasInstanceVariable:@"_posterEditingSwitcherVC" withType:"AMUIPosterEditingSwitcherViewController"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"AMUIDateTimeViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"AMUINotificationIndicatorViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"AMUIAmbientViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end