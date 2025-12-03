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
    _accessibilityViewController = [v4 _accessibilityViewController];
    v6 = [_accessibilityViewController safeValueForKey:@"_accessoryVisibilityInteractionController"];
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
  _axPHAsset = [(PXVideoSessionUIViewAccessibility *)self _axPHAsset];
  accessibilityLabel = [_axPHAsset accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  _axPHAsset = [(PXVideoSessionUIViewAccessibility *)self _axPHAsset];
  accessibilityValue = [_axPHAsset accessibilityValue];

  return accessibilityValue;
}

- (id)_accessibilityPHAssetLocalIdentifier
{
  _axPHAsset = [(PXVideoSessionUIViewAccessibility *)self _axPHAsset];
  _accessibilityPHAssetLocalIdentifier = [_axPHAsset _accessibilityPHAssetLocalIdentifier];

  return _accessibilityPHAssetLocalIdentifier;
}

- (id)_accessibilityPhotoLibraryURL
{
  _axPHAsset = [(PXVideoSessionUIViewAccessibility *)self _axPHAsset];
  _accessibilityPhotoLibraryURL = [_axPHAsset _accessibilityPhotoLibraryURL];

  return _accessibilityPhotoLibraryURL;
}

- (BOOL)_accessibilityIsPHAssetLocallyAvailable
{
  _axPHAsset = [(PXVideoSessionUIViewAccessibility *)self _axPHAsset];
  _accessibilityIsPHAssetLocallyAvailable = [_axPHAsset _accessibilityIsPHAssetLocallyAvailable];

  return _accessibilityIsPHAssetLocallyAvailable;
}

- (id)accessibilityURL
{
  _axPHAsset = [(PXVideoSessionUIViewAccessibility *)self _axPHAsset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accessibilityURL = [_axPHAsset accessibilityURL];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = 0;
      v5 = [_axPHAsset safeValueForKey:@"mainFileURL"];
      v6 = __UIAccessibilitySafeClass();

      goto LABEL_7;
    }

    v8.receiver = self;
    v8.super_class = PXVideoSessionUIViewAccessibility;
    accessibilityURL = [(PXVideoSessionUIViewAccessibility *)&v8 accessibilityURL];
  }

  v6 = accessibilityURL;
LABEL_7:

  return v6;
}

@end