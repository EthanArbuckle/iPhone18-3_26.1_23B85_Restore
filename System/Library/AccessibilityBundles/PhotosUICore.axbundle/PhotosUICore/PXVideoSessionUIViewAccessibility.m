@interface PXVideoSessionUIViewAccessibility
- (BOOL)_accessibilityIsPHAssetLocallyAvailable;
- (id)_accessibilityPHAssetLocalIdentifier;
- (id)_accessibilityPhotoLibraryURL;
- (id)_axPHAsset;
- (id)accessibilityLabel;
- (id)accessibilityURL;
- (id)accessibilityValue;
@end

@implementation PXVideoSessionUIViewAccessibility

- (id)_axPHAsset
{
  v3 = [(PXVideoSessionUIViewAccessibility *)self _accessibilityValueForKey:@"AXVideoAsset"];
  if (!v3)
  {
    v4 = [(PXVideoSessionUIViewAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_7 startWithSelf:1];
    v5 = [v4 _accessibilityViewController];
    v6 = [v5 safeValueForKey:@"_accessoryVisibilityInteractionController"];
    v7 = [v6 safeValueForKey:@"_currentAssetViewModel"];
    v3 = [v7 safeValueForKey:@"asset"];
  }

  return v3;
}

uint64_t __47__PXVideoSessionUIViewAccessibility__axPHAsset__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2E6930](@"PUOneUpViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityLabel
{
  v2 = [(PXVideoSessionUIViewAccessibility *)self _axPHAsset];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(PXVideoSessionUIViewAccessibility *)self _axPHAsset];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)_accessibilityPHAssetLocalIdentifier
{
  v2 = [(PXVideoSessionUIViewAccessibility *)self _axPHAsset];
  v3 = [v2 _accessibilityPHAssetLocalIdentifier];

  return v3;
}

- (id)_accessibilityPhotoLibraryURL
{
  v2 = [(PXVideoSessionUIViewAccessibility *)self _axPHAsset];
  v3 = [v2 _accessibilityPhotoLibraryURL];

  return v3;
}

- (BOOL)_accessibilityIsPHAssetLocallyAvailable
{
  v2 = [(PXVideoSessionUIViewAccessibility *)self _axPHAsset];
  v3 = [v2 _accessibilityIsPHAssetLocallyAvailable];

  return v3;
}

- (id)accessibilityURL
{
  v3 = [(PXVideoSessionUIViewAccessibility *)self _axPHAsset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 accessibilityURL];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = 0;
      v5 = [v3 safeValueForKey:@"mainFileURL"];
      v6 = __UIAccessibilitySafeClass();

      goto LABEL_7;
    }

    v8.receiver = self;
    v8.super_class = PXVideoSessionUIViewAccessibility;
    v4 = [(PXVideoSessionUIViewAccessibility *)&v8 accessibilityURL];
  }

  v6 = v4;
LABEL_7:

  return v6;
}

@end