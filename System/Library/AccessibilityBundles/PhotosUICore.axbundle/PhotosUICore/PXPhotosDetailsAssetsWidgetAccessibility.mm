@interface PXPhotosDetailsAssetsWidgetAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout;
@end

@implementation PXPhotosDetailsAssetsWidgetAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXUIPlayButtonTile"];
  [validationsCopy validateClass:@"PXSelectionSnapshot"];
  [validationsCopy validateClass:@"PXHighFidelityVideoOverlayButton" hasInstanceVariable:@"_button" withType:"UIButton"];
  [validationsCopy validateClass:@"PXUIPlayButtonTile" hasInstanceVariable:@"_playButtonView" withType:"UIView<PXVideoOverlayButton>"];
  [validationsCopy validateClass:@"PXPhotosDetailsAssetsWidget" hasInstanceMethod:@"_assetsScene" withFullSignature:{"@", 0}];
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout
{
  v12.receiver = self;
  v12.super_class = PXPhotosDetailsAssetsWidgetAccessibility;
  v4 = *&identifier->var1[5];
  v10[2] = *&identifier->var1[3];
  v10[3] = v4;
  v10[4] = *&identifier->var1[7];
  v11 = identifier->var1[9];
  v5 = *&identifier->var1[1];
  v10[0] = *&identifier->var0;
  v10[1] = v5;
  v6 = [(PXPhotosDetailsAssetsWidgetAccessibility *)&v12 checkOutTileForIdentifier:v10 layout:layout];
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