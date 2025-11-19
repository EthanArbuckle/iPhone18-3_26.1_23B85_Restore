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
- (void)_axSetIndexPath:(PXSimpleIndexPath *)a3;
@end

@implementation PXFocusableUIImageViewAccessibility

- (void)_axSetIndexPath:(PXSimpleIndexPath *)a3
{
  v5 = [AXPXSimpleIndexPathHolder alloc];
  v6 = *&a3->item;
  v8[0] = *&a3->dataSourceIdentifier;
  v8[1] = v6;
  v7 = [(AXPXSimpleIndexPathHolder *)v5 initWithIndexPath:v8];
  [(PXFocusableUIImageViewAccessibility *)self _setAXIndexPathHolder:v7];
}

- (id)accessibilityCustomContent
{
  v2 = [(PXFocusableUIImageViewAccessibility *)self _accessibilityValueForKey:@"AXPhotoAsset"];
  v3 = [v2 accessibilityCustomContent];

  return v3;
}

- (id)accessibilityURL
{
  v2 = [(PXFocusableUIImageViewAccessibility *)self _accessibilityValueForKey:@"AXPhotoAsset"];
  v3 = [v2 accessibilityURL];

  return v3;
}

- (id)_accessibilityPHAssetLocalIdentifier
{
  v2 = [(PXFocusableUIImageViewAccessibility *)self _accessibilityValueForKey:@"AXPhotoAsset"];
  v3 = [v2 _accessibilityPHAssetLocalIdentifier];

  return v3;
}

- (id)_accessibilityPhotoLibraryURL
{
  v2 = [(PXFocusableUIImageViewAccessibility *)self _accessibilityValueForKey:@"AXPhotoAsset"];
  v3 = [v2 _accessibilityPhotoLibraryURL];

  return v3;
}

- (BOOL)_accessibilityIsPHAssetLocallyAvailable
{
  v2 = [(PXFocusableUIImageViewAccessibility *)self _accessibilityValueForKey:@"AXPhotoAsset"];
  v3 = [v2 _accessibilityIsPHAssetLocallyAvailable];

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(PXFocusableUIImageViewAccessibility *)self accessibilityIdentification];
  if ([v3 isEqualToString:@"AXMemoryTileImageView"])
  {

LABEL_4:
    v6 = [(PXFocusableUIImageViewAccessibility *)self accessibilityUserDefinedLabel];
    goto LABEL_6;
  }

  v4 = [(PXFocusableUIImageViewAccessibility *)self accessibilityIdentification];
  v5 = [v4 isEqualToString:@"AXMemoryTileSlideshowView"];

  if (v5)
  {
    goto LABEL_4;
  }

  v7 = [(PXFocusableUIImageViewAccessibility *)self _accessibilityValueForKey:@"AXPhotoAsset"];
  v6 = [v7 accessibilityLabel];

LABEL_6:

  return v6;
}

- (id)accessibilityValue
{
  v2 = [(PXFocusableUIImageViewAccessibility *)self _accessibilityValueForKey:@"AXPhotoAsset"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)accessibilityHint
{
  v3 = [(PXFocusableUIImageViewAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AXMemoryTileSlideshowView"];

  if (v4)
  {
    v5 = accessibilityPhotosUICoreLocalizedString(@"memory.slideshow.hint");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXFocusableUIImageViewAccessibility;
    v5 = [(PXFocusableUIImageViewAccessibility *)&v7 accessibilityHint];
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v17.receiver = self;
  v17.super_class = PXFocusableUIImageViewAccessibility;
  v3 = [(PXFocusableUIImageViewAccessibility *)&v17 accessibilityTraits];
  v4 = [(PXFocusableUIImageViewAccessibility *)self accessibilityIdentification];
  if ([v4 isEqualToString:@"AXMemoryTileImageView"])
  {
  }

  else
  {
    v5 = [(PXFocusableUIImageViewAccessibility *)self accessibilityIdentification];
    v6 = [v5 isEqualToString:@"AXMemoryTileSlideshowView"];

    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v3 = *MEMORY[0x29EDC7F70];
LABEL_5:
  v7 = [(PXFocusableUIImageViewAccessibility *)self _axSelectionManager];
  if (v7)
  {
    v8 = [(PXFocusableUIImageViewAccessibility *)self _axIndexPathHolder];
    v9 = v8;
    v15 = 0u;
    v16 = 0u;
    if (v8)
    {
      [v8 indexPath];
    }

    v10 = [v7 selectionSnapshot];
    v14[0] = v15;
    v14[1] = v16;
    v11 = [v10 isIndexPathSelected:v14];

    v12 = *MEMORY[0x29EDC7FC0];
    if (!v11)
    {
      v12 = 0;
    }

    v3 |= v12;
  }

  return v3;
}

@end