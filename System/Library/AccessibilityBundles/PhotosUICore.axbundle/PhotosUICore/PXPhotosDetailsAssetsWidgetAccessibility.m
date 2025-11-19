@interface PXPhotosDetailsAssetsWidgetAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4;
@end

@implementation PXPhotosDetailsAssetsWidgetAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXUIPlayButtonTile"];
  [v3 validateClass:@"PXSelectionSnapshot"];
  [v3 validateClass:@"PXHighFidelityVideoOverlayButton" hasInstanceVariable:@"_button" withType:"UIButton"];
  [v3 validateClass:@"PXUIPlayButtonTile" hasInstanceVariable:@"_playButtonView" withType:"UIView<PXVideoOverlayButton>"];
  [v3 validateClass:@"PXPhotosDetailsAssetsWidget" hasInstanceMethod:@"_assetsScene" withFullSignature:{"@", 0}];
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4
{
  v12.receiver = self;
  v12.super_class = PXPhotosDetailsAssetsWidgetAccessibility;
  v4 = *&a3->var1[5];
  v10[2] = *&a3->var1[3];
  v10[3] = v4;
  v10[4] = *&a3->var1[7];
  v11 = a3->var1[9];
  v5 = *&a3->var1[1];
  v10[0] = *&a3->var0;
  v10[1] = v5;
  v6 = [(PXPhotosDetailsAssetsWidgetAccessibility *)&v12 checkOutTileForIdentifier:v10 layout:a4];
  MEMORY[0x29C2E6930](@"PXUIPlayButtonTile");
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 safeValueForKey:@"playButtonView"];
    v8 = [v7 safeValueForKey:@"_button"];
    [v8 setIsAccessibilityElement:0];
  }

  return v6;
}

@end