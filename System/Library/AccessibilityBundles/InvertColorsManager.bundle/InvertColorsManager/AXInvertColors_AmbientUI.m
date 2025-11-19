@interface AXInvertColors_AmbientUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_AmbientUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AMUIDateTimeViewController"];
  [v3 validateClass:@"AMUIDateTimeViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"AMUIDateTimeViewController" hasInstanceVariable:@"_vibrancyView" withType:"BSUIVibrancyEffectView"];
  [v3 validateClass:@"AMUIDateTimeViewController" hasInstanceVariable:@"_dateTimeView" withType:"AMUIDateTimeView"];
  [v3 validateClass:@"AMUINotificationIndicatorView"];
  [v3 validateClass:@"AMUIAmbientViewController"];
  [v3 validateClass:@"AMUIAmbientViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"AMUIAmbientViewController" hasInstanceVariable:@"_posterEditingSwitcherVC" withType:"AMUIPosterEditingSwitcherViewController"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"AMUIDateTimeViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"AMUINotificationIndicatorViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"AMUIAmbientViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end