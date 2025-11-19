@interface PXUIAssetsSceneAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_axApplyAssetsToImageViewTile:(id)a3 withIdentifier:(PXTileIdentifier *)a4;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4;
@end

@implementation PXUIAssetsSceneAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXAssetUIImageViewTile"];
  [v3 validateClass:@"PXFocusableUIImageView"];
  [v3 validateClass:@"PXUIAssetsScene" isKindOfClass:@"PXAssetsScene"];
  [v3 validateClass:@"PXAssetUIImageViewTile" hasInstanceVariable:@"_imageView" withType:"PXFocusableUIImageView"];
  [v3 validateClass:@"PXAssetsScene" hasInstanceMethod:@"selectionManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXUIAssetsScene" hasInstanceMethod:@"checkOutTileForIdentifier:layout:" withFullSignature:{"^v", "{PXTileIdentifier=Q[10Q]}", "@", 0}];
}

- (void)_axApplyAssetsToImageViewTile:(id)a3 withIdentifier:(PXTileIdentifier *)a4
{
  v6 = a3;
  v7 = [v6 safeValueForKey:@"_imageView"];
  MEMORY[0x29C2E6930](@"PXFocusableUIImageView");
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v11 = *&a4->var1[3];
    v12 = *&a4->var1[1];
    objc_opt_class();
    v9 = [(PXUIAssetsSceneAccessibility *)self safeValueForKey:@"selectionManager"];
    v10 = __UIAccessibilityCastAsClass();

    v13[0] = v12;
    v13[1] = v11;
    [v8 _axSetIndexPath:v13];
    [v8 _axSetSelectionManager:v10];
  }
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4
{
  v18.receiver = self;
  v18.super_class = PXUIAssetsSceneAccessibility;
  v6 = *&a3->var1[5];
  v14 = *&a3->var1[3];
  v15 = v6;
  v16 = *&a3->var1[7];
  v17 = a3->var1[9];
  v7 = *&a3->var1[1];
  v12 = *&a3->var0;
  v13 = v7;
  v8 = [(PXUIAssetsSceneAccessibility *)&v18 checkOutTileForIdentifier:&v12 layout:a4];
  MEMORY[0x29C2E6930](@"PXAssetUIImageViewTile");
  if (objc_opt_isKindOfClass())
  {
    v9 = *&a3->var1[5];
    v14 = *&a3->var1[3];
    v15 = v9;
    v16 = *&a3->var1[7];
    v17 = a3->var1[9];
    v10 = *&a3->var1[1];
    v12 = *&a3->var0;
    v13 = v10;
    [(PXUIAssetsSceneAccessibility *)self _axApplyAssetsToImageViewTile:v8 withIdentifier:&v12];
  }

  return v8;
}

@end