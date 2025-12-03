@interface PXPhotosDetailsHeaderTileWidgetAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout;
@end

@implementation PXPhotosDetailsHeaderTileWidgetAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXUIPlayButtonTile"];
  [validationsCopy validateClass:@"PXTitleSubtitleUILabelTile"];
  [validationsCopy validateClass:@"PXTitleSubtitleUILabel"];
  [validationsCopy validateProtocol:@"PXUIViewBasicTile" hasRequiredInstanceMethod:@"view"];
  [validationsCopy validateClass:@"PXUIPlayButtonTile" hasInstanceVariable:@"_hifiPlayButtonView" withType:"UIView<PXVideoOverlayButton>"];
  [validationsCopy validateClass:@"PXTitleSubtitleUILabelTile" hasInstanceVariable:@"_label" withType:"PXTitleSubtitleUILabel"];
  [validationsCopy validateClass:@"PXImageUIView" hasInstanceMethod:@"_imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXPhotosDetailsHeaderTileWidget" hasInstanceMethod:@"checkOutTileForIdentifier: layout:" withFullSignature:{"^v", "{PXTileIdentifier=Q[10Q]}", "@", 0}];
  [validationsCopy validateClass:@"PXPhotosDetailsHeaderTileWidget" hasInstanceMethod:@"_title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXPhotosDetailsHeaderTileWidget" hasInstanceMethod:@"_subtitle" withFullSignature:{"@", 0}];
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout
{
  v11.receiver = self;
  v11.super_class = PXPhotosDetailsHeaderTileWidgetAccessibility;
  v4 = *&identifier->var1[5];
  v9[2] = *&identifier->var1[3];
  v9[3] = v4;
  v9[4] = *&identifier->var1[7];
  v10 = identifier->var1[9];
  v5 = *&identifier->var1[1];
  v9[0] = *&identifier->var0;
  v9[1] = v5;
  v6 = [(PXPhotosDetailsHeaderTileWidgetAccessibility *)&v11 checkOutTileForIdentifier:v9 layout:layout];
  MEMORY[0x29C2E6930](@"PXUIPlayButtonTile");
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 safeValueForKey:@"_hifiPlayButtonView"];
    [v7 setIsAccessibilityElement:0];
  }

  else
  {
    MEMORY[0x29C2E6930](@"PXTitleSubtitleUILabelTile");
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v7 = [v6 safeValueForKey:@"_label"];
    MEMORY[0x29C2E6930](@"PXTitleSubtitleUILabel");
    if (objc_opt_isKindOfClass())
    {
      [v7 accessibilitySetIdentification:@"AXMemoryTileHeadingLabel"];
    }
  }

LABEL_7:
  return v6;
}

@end