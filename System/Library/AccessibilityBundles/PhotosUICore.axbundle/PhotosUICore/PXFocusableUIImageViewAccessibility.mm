@interface PXFocusableUIImageViewAccessibility
- (BOOL)_accessibilityIsPHAssetLocallyAvailable;
- (id)_accessibilityPHAssetLocalIdentifier;
- (id)_accessibilityPhotoLibraryURL;
- (id)accessibilityCustomContent;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityURL;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_axSetIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation PXFocusableUIImageViewAccessibility

- (void)_axSetIndexPath:(PXSimpleIndexPath *)path
{
  v5 = [AXPXSimpleIndexPathHolder alloc];
  v6 = *&path->item;
  v8[0] = *&path->dataSourceIdentifier;
  v8[1] = v6;
  v7 = [(AXPXSimpleIndexPathHolder *)v5 initWithIndexPath:v8];
  [(PXFocusableUIImageViewAccessibility *)self _setAXIndexPathHolder:v7];
}

- (id)accessibilityCustomContent
{
  v2 = [(PXFocusableUIImageViewAccessibility *)self _accessibilityValueForKey:@"AXPhotoAsset"];
  accessibilityCustomContent = [v2 accessibilityCustomContent];

  return accessibilityCustomContent;
}

- (id)accessibilityURL
{
  v2 = [(PXFocusableUIImageViewAccessibility *)self _accessibilityValueForKey:@"AXPhotoAsset"];
  accessibilityURL = [v2 accessibilityURL];

  return accessibilityURL;
}

- (id)_accessibilityPHAssetLocalIdentifier
{
  v2 = [(PXFocusableUIImageViewAccessibility *)self _accessibilityValueForKey:@"AXPhotoAsset"];
  _accessibilityPHAssetLocalIdentifier = [v2 _accessibilityPHAssetLocalIdentifier];

  return _accessibilityPHAssetLocalIdentifier;
}

- (id)_accessibilityPhotoLibraryURL
{
  v2 = [(PXFocusableUIImageViewAccessibility *)self _accessibilityValueForKey:@"AXPhotoAsset"];
  _accessibilityPhotoLibraryURL = [v2 _accessibilityPhotoLibraryURL];

  return _accessibilityPhotoLibraryURL;
}

- (BOOL)_accessibilityIsPHAssetLocallyAvailable
{
  v2 = [(PXFocusableUIImageViewAccessibility *)self _accessibilityValueForKey:@"AXPhotoAsset"];
  _accessibilityIsPHAssetLocallyAvailable = [v2 _accessibilityIsPHAssetLocallyAvailable];

  return _accessibilityIsPHAssetLocallyAvailable;
}

- (id)accessibilityLabel
{
  accessibilityIdentification = [(PXFocusableUIImageViewAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"AXMemoryTileImageView"])
  {

LABEL_4:
    accessibilityUserDefinedLabel = [(PXFocusableUIImageViewAccessibility *)self accessibilityUserDefinedLabel];
    goto LABEL_6;
  }

  accessibilityIdentification2 = [(PXFocusableUIImageViewAccessibility *)self accessibilityIdentification];
  v5 = [accessibilityIdentification2 isEqualToString:@"AXMemoryTileSlideshowView"];

  if (v5)
  {
    goto LABEL_4;
  }

  v7 = [(PXFocusableUIImageViewAccessibility *)self _accessibilityValueForKey:@"AXPhotoAsset"];
  accessibilityUserDefinedLabel = [v7 accessibilityLabel];

LABEL_6:

  return accessibilityUserDefinedLabel;
}

- (id)accessibilityValue
{
  v2 = [(PXFocusableUIImageViewAccessibility *)self _accessibilityValueForKey:@"AXPhotoAsset"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

- (id)accessibilityHint
{
  accessibilityIdentification = [(PXFocusableUIImageViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXMemoryTileSlideshowView"];

  if (v4)
  {
    accessibilityHint = accessibilityPhotosUICoreLocalizedString(@"memory.slideshow.hint");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXFocusableUIImageViewAccessibility;
    accessibilityHint = [(PXFocusableUIImageViewAccessibility *)&v7 accessibilityHint];
  }

  return accessibilityHint;
}

- (unint64_t)accessibilityTraits
{
  v17.receiver = self;
  v17.super_class = PXFocusableUIImageViewAccessibility;
  accessibilityTraits = [(PXFocusableUIImageViewAccessibility *)&v17 accessibilityTraits];
  accessibilityIdentification = [(PXFocusableUIImageViewAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"AXMemoryTileImageView"])
  {
  }

  else
  {
    accessibilityIdentification2 = [(PXFocusableUIImageViewAccessibility *)self accessibilityIdentification];
    v6 = [accessibilityIdentification2 isEqualToString:@"AXMemoryTileSlideshowView"];

    if (!v6)
    {
      goto LABEL_5;
    }
  }

  accessibilityTraits = *MEMORY[0x29EDC7F70];
LABEL_5:
  _axSelectionManager = [(PXFocusableUIImageViewAccessibility *)self _axSelectionManager];
  if (_axSelectionManager)
  {
    _axIndexPathHolder = [(PXFocusableUIImageViewAccessibility *)self _axIndexPathHolder];
    v9 = _axIndexPathHolder;
    v15 = 0u;
    v16 = 0u;
    if (_axIndexPathHolder)
    {
      [_axIndexPathHolder indexPath];
    }

    selectionSnapshot = [_axSelectionManager selectionSnapshot];
    v14[0] = v15;
    v14[1] = v16;
    v11 = [selectionSnapshot isIndexPathSelected:v14];

    v12 = *MEMORY[0x29EDC7FC0];
    if (!v11)
    {
      v12 = 0;
    }

    accessibilityTraits |= v12;
  }

  return accessibilityTraits;
}

@end