@interface AXInvertColors_Sharing
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_Sharing

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIShareGroupActivityCell" hasProperty:@"imageSlotView" withType:"@"];
  [validationsCopy validateClass:@"UIShareGroupActivityCell" hasProperty:@"activityImageView" withType:"@"];
  [validationsCopy validateClass:@"UIAirDropGroupActivityCell" hasProperty:@"imageView" withType:"@"];
  [validationsCopy validateClass:@"UIAirDropGroupActivityCell" hasProperty:@"imageSlotView" withType:"@"];
  [validationsCopy validateClass:@"UIAirDropGroupActivityCell" hasProperty:@"transportImageView" withType:"@"];
  [validationsCopy validateClass:@"UIAirDropGroupActivityCell" hasProperty:@"transportSlotView" withType:"@"];
  [validationsCopy validateClass:@"UIShareGroupActivityCell" hasProperty:@"badgeSlotView" withType:"@"];
  [validationsCopy validateClass:@"_UIActivityUserDefaultsActivityCell" hasProperty:@"activityImageSlotView" withType:"@"];
  [validationsCopy validateClass:@"SHSheetSceneViewController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"UIShareGroupActivityCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"UIAirDropGroupActivityCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"_UIActivityUserDefaultsActivityCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SHSheetSceneViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end