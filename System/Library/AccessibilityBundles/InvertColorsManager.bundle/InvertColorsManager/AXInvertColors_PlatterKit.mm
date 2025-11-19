@interface AXInvertColors_PlatterKit
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_PlatterKit

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PLPlatterHeaderContentView" hasInstanceVariable:@"_iconButtons" withType:"NSArray"];
  [v3 validateClass:@"PLPlatterHeaderContentView" hasInstanceMethod:@"_configureIconButtonsForIcons:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PLPlatterView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"PLPlatterView" hasInstanceMethod:@"materialRecipe" withFullSignature:{"q", 0}];
  [v3 validateClass:@"PLPlatterView" hasInstanceMethod:@"backgroundMaterialView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTMaterialView" hasInstanceMethod:@"_materialLayer" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"PLPlatterHeaderContentViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PLPlatterViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end