@interface AXInvertColors_PlatterKit
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_PlatterKit

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PLPlatterHeaderContentView" hasInstanceVariable:@"_iconButtons" withType:"NSArray"];
  [validationsCopy validateClass:@"PLPlatterHeaderContentView" hasInstanceMethod:@"_configureIconButtonsForIcons:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PLPlatterView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"PLPlatterView" hasInstanceMethod:@"materialRecipe" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PLPlatterView" hasInstanceMethod:@"backgroundMaterialView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTMaterialView" hasInstanceMethod:@"_materialLayer" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"PLPlatterHeaderContentViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PLPlatterViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end