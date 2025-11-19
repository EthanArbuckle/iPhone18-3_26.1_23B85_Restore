@interface AXInvertColors_HomeUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_HomeUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUDashboardViewController"];
  [v3 validateClass:@"HUDashboardNavigationBar"];
  [v3 validateClass:@"HUDashboardViewController" isKindOfClass:@"HUControllableItemCollectionViewController"];
  [v3 validateClass:@"HUQuickControlRingSliderView"];
  [v3 validateClass:@"HUColorSwatchView"];
  [v3 validateClass:@"HUColorSwatchView" hasInstanceMethod:@"circleLayer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUColorSwatchView" hasInstanceMethod:@"selectedCircleLayer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUColorPickerView"];
  [v3 validateClass:@"HUQuickControlSliderValueOverlayView"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"HUDashboardViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUDashboardNavigationBarInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUQuickControlRingSliderViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUColorSwatchViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUColorPickerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUQuickControlSliderValueOverlayViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end