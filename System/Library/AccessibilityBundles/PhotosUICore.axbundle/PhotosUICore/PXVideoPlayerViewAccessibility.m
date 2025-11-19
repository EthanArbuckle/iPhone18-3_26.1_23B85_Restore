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
    v5 = [v4 _accessibilityViewController];
    v6 = [v5 safeValueForKey:@"_accessoryVisibilityInteractionController"];
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
  v2 = [(PXVideoPlayerViewAccessibility *)self _axPHAsset];
  v3 = [v2 accessibilityCustomContent];

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(PXVideoPlayerViewAccessibility *)self _axPHAsset];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(PXVideoPlayerViewAccessibility *)self _axPHAsset];
  v3 = [v2 accessibilityValue];

  return v3;
}

@end