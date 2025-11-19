@interface AXInvertColors_MaterialKit
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_MaterialKit

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTMaterialView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"MTMaterialView" hasInstanceMethod:@"_materialLayer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTMaterialView" hasInstanceMethod:@"_invalidateAlphaTransformer" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MTMaterialView" hasInstanceMethod:@"_setupAlphaTransformer" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MTMaterialView" hasInstanceMethod:@"setContentReplacedWithSnapshot:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"MTMaterialLayer" hasInstanceMethod:@"setReduceTransparencyEnabled:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"MTMaterialLayer" hasInstanceMethod:@"isReduceTransparencyEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MTMaterialLayer" hasInstanceMethod:@"_configureIfNecessaryWithSettingsInterpolator:" withFullSignature:{"v", "@", 0}];
  if (AXProcessIsSpringBoard())
  {
    [v3 validateClass:@"SBDockView"];
  }
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"MTMaterialViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MTMaterialLayerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end