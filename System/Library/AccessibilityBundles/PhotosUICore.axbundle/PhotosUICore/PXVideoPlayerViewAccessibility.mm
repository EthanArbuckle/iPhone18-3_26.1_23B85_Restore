@interface PXVideoPlayerViewAccessibility
- (id)_axPHAsset;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PXVideoPlayerViewAccessibility

- (id)_axPHAsset
{
  v3 = [(PXVideoPlayerViewAccessibility *)self _accessibilityValueForKey:@"AXVideoAsset"];
  if (!v3)
  {
    v4 = [(PXVideoPlayerViewAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_6 startWithSelf:1];
    _accessibilityViewController = [v4 _accessibilityViewController];
    v6 = [_accessibilityViewController safeValueForKey:@"_accessoryVisibilityInteractionController"];
    v7 = [v6 safeValueForKey:@"_currentAssetViewModel"];
    v3 = [v7 safeValueForKey:@"asset"];
  }

  return v3;
}

uint64_t __44__PXVideoPlayerViewAccessibility__axPHAsset__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2E6930](@"PUOneUpViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityCustomContent
{
  _axPHAsset = [(PXVideoPlayerViewAccessibility *)self _axPHAsset];
  accessibilityCustomContent = [_axPHAsset accessibilityCustomContent];

  return accessibilityCustomContent;
}

- (id)accessibilityLabel
{
  _axPHAsset = [(PXVideoPlayerViewAccessibility *)self _axPHAsset];
  accessibilityLabel = [_axPHAsset accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  _axPHAsset = [(PXVideoPlayerViewAccessibility *)self _axPHAsset];
  accessibilityValue = [_axPHAsset accessibilityValue];

  return accessibilityValue;
}

@end