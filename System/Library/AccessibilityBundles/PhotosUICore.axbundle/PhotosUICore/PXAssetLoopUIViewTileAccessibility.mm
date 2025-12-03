@interface PXAssetLoopUIViewTileAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateLoopingVideoView;
@end

@implementation PXAssetLoopUIViewTileAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXAssetLoopUIViewTile" conformsToProtocol:@"PXAssetTile"];
  [validationsCopy validateClass:@"PXAssetLoopUIViewTile" hasInstanceVariable:@"_videoView" withType:"PXVideoSessionUIView"];
  [validationsCopy validateClass:@"PXImageRequester" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"PXAssetTile" hasRequiredInstanceMethod:@"imageRequester"];
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