@interface PXAssetLoopUIViewTileAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateLoopingVideoView;
@end

@implementation PXAssetLoopUIViewTileAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXAssetLoopUIViewTile" conformsToProtocol:@"PXAssetTile"];
  [v3 validateClass:@"PXAssetLoopUIViewTile" hasInstanceVariable:@"_videoView" withType:"PXVideoSessionUIView"];
  [v3 validateClass:@"PXImageRequester" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"PXAssetTile" hasRequiredInstanceMethod:@"imageRequester"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = PXAssetLoopUIViewTileAccessibility;
  [(PXAssetLoopUIViewTileAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(PXAssetLoopUIViewTileAccessibility *)self safeValueForKeyPath:@"imageRequester.asset"];
  v4 = [(PXAssetLoopUIViewTileAccessibility *)self safeValueForKey:@"_videoView"];
  v5 = v4;
  if (v3)
  {
    [v4 _accessibilitySetRetainedValue:v3 forKey:@"AXVideoAsset"];
  }
}

- (void)_updateLoopingVideoView
{
  v3.receiver = self;
  v3.super_class = PXAssetLoopUIViewTileAccessibility;
  [(PXAssetLoopUIViewTileAccessibility *)&v3 _updateLoopingVideoView];
  [(PXAssetLoopUIViewTileAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end