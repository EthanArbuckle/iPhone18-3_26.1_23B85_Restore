@interface AXInvertColors_HomeUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_HomeUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUDashboardViewController"];
  [validationsCopy validateClass:@"HUDashboardNavigationBar"];
  [validationsCopy validateClass:@"HUDashboardViewController" isKindOfClass:@"HUControllableItemCollectionViewController"];
  [validationsCopy validateClass:@"HUQuickControlRingSliderView"];
  [validationsCopy validateClass:@"HUColorSwatchView"];
  [validationsCopy validateClass:@"HUColorSwatchView" hasInstanceMethod:@"circleLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUColorSwatchView" hasInstanceMethod:@"selectedCircleLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUColorPickerView"];
  [validationsCopy validateClass:@"HUQuickControlSliderValueOverlayView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"HUDashboardViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"HUDashboardNavigationBarInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"HUQuickControlRingSliderViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"HUColorSwatchViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"HUColorPickerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"HUQuickControlSliderValueOverlayViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end