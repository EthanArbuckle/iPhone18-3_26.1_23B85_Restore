@interface AXInvertColors_ScreenTimeSettingsUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_ScreenTimeSettingsUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STMostUsedCell" hasInstanceVariable:@"_allowanceIconView" withType:"UIImageView"];
  [validationsCopy validateClass:@"STMostUsedCell" hasInstanceMethod:@"initWithStyle:reuseIdentifier:specifier:" withFullSignature:{"@", "q", "@", "@", 0}];
  [validationsCopy validateClass:@"STAppStoreIconCell" hasInstanceVariable:@"_appIconView" withType:"UIImageView"];
  [validationsCopy validateClass:@"STAppStoreIconCell" hasInstanceMethod:@"initWithStyle:reuseIdentifier:specifier:" withFullSignature:{"@", "q", "@", "@", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"STMostUsedCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"STAppStoreIconCellInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end