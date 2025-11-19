@interface PXPhotosDetailsHeaderTileWidgetAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4;
@end

@implementation PXPhotosDetailsHeaderTileWidgetAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXUIPlayButtonTile"];
  [v3 validateClass:@"PXTitleSubtitleUILabelTile"];
  [v3 validateClass:@"PXTitleSubtitleUILabel"];
  [v3 validateProtocol:@"PXUIViewBasicTile" hasRequiredInstanceMethod:@"view"];
  [v3 validateClass:@"PXUIPlayButtonTile" hasInstanceVariable:@"_hifiPlayButtonView" withType:"UIView<PXVideoOverlayButton>"];
  [v3 validateClass:@"PXTitleSubtitleUILabelTile" hasInstanceVariable:@"_label" withType:"PXTitleSubtitleUILabel"];
  [v3 validateClass:@"PXImageUIView" hasInstanceMethod:@"_imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXPhotosDetailsHeaderTileWidget" hasInstanceMethod:@"checkOutTileForIdentifier: layout:" withFullSignature:{"^v", "{PXTileIdentifier=Q[10Q]}", "@", 0}];
  [v3 validateClass:@"PXPhotosDetailsHeaderTileWidget" hasInstanceMethod:@"_title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXPhotosDetailsHeaderTileWidget" hasInstanceMethod:@"_subtitle" withFullSignature:{"@", 0}];
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4
{
  v11.receiver = self;
  v11.super_class = PXPhotosDetailsHeaderTileWidgetAccessibility;
  v4 = *&a3->var1[5];
  v9[2] = *&a3->var1[3];
  v9[3] = v4;
  v9[4] = *&a3->var1[7];
  v10 = a3->var1[9];
  v5 = *&a3->var1[1];
  v9[0] = *&a3->var0;
  v9[1] = v5;
  v6 = [(PXPhotosDetailsHeaderTileWidgetAccessibility *)&v11 checkOutTileForIdentifier:v9 layout:a4];
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