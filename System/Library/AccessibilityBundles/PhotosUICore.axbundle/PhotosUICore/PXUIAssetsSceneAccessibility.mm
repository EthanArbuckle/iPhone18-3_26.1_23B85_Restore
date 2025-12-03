@interface PXUIAssetsSceneAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_axApplyAssetsToImageViewTile:(id)tile withIdentifier:(PXTileIdentifier *)identifier;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout;
@end

@implementation PXUIAssetsSceneAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXAssetUIImageViewTile"];
  [validationsCopy validateClass:@"PXFocusableUIImageView"];
  [validationsCopy validateClass:@"PXUIAssetsScene" isKindOfClass:@"PXAssetsScene"];
  [validationsCopy validateClass:@"PXAssetUIImageViewTile" hasInstanceVariable:@"_imageView" withType:"PXFocusableUIImageView"];
  [validationsCopy validateClass:@"PXAssetsScene" hasInstanceMethod:@"selectionManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXUIAssetsScene" hasInstanceMethod:@"checkOutTileForIdentifier:layout:" withFullSignature:{"^v", "{PXTileIdentifier=Q[10Q]}", "@", 0}];
}

- (void)_axApplyAssetsToImageViewTile:(id)tile withIdentifier:(PXTileIdentifier *)identifier
{
  tileCopy = tile;
  v7 = [tileCopy safeValueForKey:@"_imageView"];
  MEMORY[0x29C2E6930](@"PXFocusableUIImageView");
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v11 = *&identifier->var1[3];
    v12 = *&identifier->var1[1];
    objc_opt_class();
    v9 = [(PXUIAssetsSceneAccessibility *)self safeValueForKey:@"selectionManager"];
    v10 = __UIAccessibilityCastAsClass();

    v13[0] = v12;
    v13[1] = v11;
    [v8 _axSetIndexPath:v13];
    [v8 _axSetSelectionManager:v10];
  }
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout
{
  v18.receiver = self;
  v18.super_class = PXUIAssetsSceneAccessibility;
  v6 = *&identifier->var1[5];
  v14 = *&identifier->var1[3];
  v15 = v6;
  v16 = *&identifier->var1[7];
  v17 = identifier->var1[9];
  v7 = *&identifier->var1[1];
  v12 = *&identifier->var0;
  v13 = v7;
  v8 = [(PXUIAssetsSceneAccessibility *)&v18 checkOutTileForIdentifier:&v12 layout:layout];
  MEMORY[0x29C2E6930](@"PXAssetUIImageViewTile");
  if (objc_opt_isKindOfClass())
  {
    v9 = *&identifier->var1[5];
    v14 = *&identifier->var1[3];
    v15 = v9;
    v16 = *&identifier->var1[7];
    v17 = identifier->var1[9];
    v10 = *&identifier->var1[1];
    v12 = *&identifier->var0;
    v13 = v10;
    [(PXUIAssetsSceneAccessibility *)self _axApplyAssetsToImageViewTile:v8 withIdentifier:&v12];
  }

  return v8;
}

@end