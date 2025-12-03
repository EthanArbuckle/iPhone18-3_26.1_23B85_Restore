@interface AXInvertColors_MaterialKit
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_MaterialKit

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTMaterialView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"MTMaterialView" hasInstanceMethod:@"_materialLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTMaterialView" hasInstanceMethod:@"_invalidateAlphaTransformer" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MTMaterialView" hasInstanceMethod:@"_setupAlphaTransformer" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MTMaterialView" hasInstanceMethod:@"setContentReplacedWithSnapshot:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"MTMaterialLayer" hasInstanceMethod:@"setReduceTransparencyEnabled:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"MTMaterialLayer" hasInstanceMethod:@"isReduceTransparencyEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MTMaterialLayer" hasInstanceMethod:@"_configureIfNecessaryWithSettingsInterpolator:" withFullSignature:{"v", "@", 0}];
  if (AXProcessIsSpringBoard())
  {
    [validationsCopy validateClass:@"SBDockView"];
  }
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"MTMaterialViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"MTMaterialLayerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end