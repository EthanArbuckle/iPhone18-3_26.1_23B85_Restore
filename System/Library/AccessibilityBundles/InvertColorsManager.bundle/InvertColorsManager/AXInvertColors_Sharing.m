@interface AXInvertColors_Sharing
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_Sharing

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIShareGroupActivityCell" hasProperty:@"imageSlotView" withType:"@"];
  [v3 validateClass:@"UIShareGroupActivityCell" hasProperty:@"activityImageView" withType:"@"];
  [v3 validateClass:@"UIAirDropGroupActivityCell" hasProperty:@"imageView" withType:"@"];
  [v3 validateClass:@"UIAirDropGroupActivityCell" hasProperty:@"imageSlotView" withType:"@"];
  [v3 validateClass:@"UIAirDropGroupActivityCell" hasProperty:@"transportImageView" withType:"@"];
  [v3 validateClass:@"UIAirDropGroupActivityCell" hasProperty:@"transportSlotView" withType:"@"];
  [v3 validateClass:@"UIShareGroupActivityCell" hasProperty:@"badgeSlotView" withType:"@"];
  [v3 validateClass:@"_UIActivityUserDefaultsActivityCell" hasProperty:@"activityImageSlotView" withType:"@"];
  [v3 validateClass:@"SHSheetSceneViewController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"UIShareGroupActivityCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"UIAirDropGroupActivityCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"_UIActivityUserDefaultsActivityCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SHSheetSceneViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end