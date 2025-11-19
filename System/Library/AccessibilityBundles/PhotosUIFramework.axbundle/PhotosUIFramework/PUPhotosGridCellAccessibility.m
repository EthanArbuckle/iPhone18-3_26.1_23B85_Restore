@interface PUPhotosGridCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsPHAssetLocallyAvailable;
- (BOOL)_accessibilitySavePhotoLabel:(id)a3;
- (id)_accessibilityElementStoredUserLabel;
- (id)_accessibilityPHAssetLocalIdentifier;
- (id)_accessibilityPhotoDescription;
- (id)_accessibilityPhotoLibraryURL;
- (id)_axMainAssetURL;
- (id)_axPHAsset;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PUPhotosGridCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"isVideo" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"isPhoto" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PUPhotosGridViewController" hasInstanceMethod:@"photoCollectionAtIndex:" withFullSignature:{"@", "Q", 0}];
  [v3 validateClass:@"PUPhotosGridViewController" hasInstanceMethod:@"assetsInAssetCollection:" withFullSignature:{"@", "@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PUPhotosGridCellAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    v4 = [(PUPhotosGridCellAccessibility *)self accessibilityUserDefinedLabel];
LABEL_5:
    v7 = v4;
    goto LABEL_6;
  }

  v5 = [(PUPhotosGridCellAccessibility *)self accessibilityIdentifier];
  v6 = [v5 isEqualToString:@"AddPhotoPlaceholder"];

  if (v6)
  {
    v4 = accessibilityPULocalizedString(@"add.photo.placeholder");
    goto LABEL_5;
  }

  v9 = [(PUPhotosGridCellAccessibility *)self _axPHAsset];
  v7 = [v9 accessibilityLabel];

  v10 = [(PUPhotosGridCellAccessibility *)self _accessibilityDescendantOfType:NSClassFromString(&cfstr_Pxtextbannervi.isa)];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 safeValueForKey:@"_textLabel"];
    v13 = [v12 accessibilityLabel];

    v14 = __AXStringForVariables();

    v7 = v14;
  }

LABEL_6:

  return v7;
}

- (id)accessibilityValue
{
  v2 = [(PUPhotosGridCellAccessibility *)self _axPHAsset];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3 = *MEMORY[0x29EDC7FA0];
  v4 = [(PUPhotosGridCellAccessibility *)self safeBoolForKey:@"isSelectionBadgeVisible"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  if (!_AXSAutomationEnabled())
  {
    v7 = *MEMORY[0x29EDC7F88];
    v8 = [(PUPhotosGridCellAccessibility *)self _axPHAsset];
    v6 |= v7 | [v8 accessibilityTraits];
  }

  return v6;
}

- (id)_axPHAsset
{
  v3 = [(PUPhotosGridCellAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"AddPhotoPlaceholder"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(PUPhotosGridCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
    v7 = [v6 delegate];
    v8 = __UIAccessibilitySafeClass();

    v9 = [(PUPhotosGridCellAccessibility *)self safeValueForKey:@"_accessibilityIndexPath"];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = __Block_byref_object_copy__4;
    v25[4] = __Block_byref_object_dispose__4;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__4;
    v23 = __Block_byref_object_dispose__4;
    v24 = 0;
    v17 = v8;
    v18 = v9;
    AXPerformSafeBlock();
    v10 = v20[5];

    _Block_object_dispose(&v19, 8);
    v26 = v10;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__4;
    v23 = __Block_byref_object_dispose__4;
    v24 = 0;
    v11 = v17;
    AXPerformSafeBlock();
    v12 = v20[5];

    _Block_object_dispose(&v19, 8);
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__4;
    v23 = __Block_byref_object_dispose__4;
    v24 = 0;
    v13 = v12;
    v14 = v18;
    AXPerformSafeBlock();
    v15 = v20[5];

    _Block_object_dispose(&v19, 8);
    v5 = __UIAccessibilitySafeClass();

    _Block_object_dispose(v25, 8);
  }

  return v5;
}

uint64_t __43__PUPhotosGridCellAccessibility__axPHAsset__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photoCollectionAtIndex:{objc_msgSend(*(a1 + 40), "section")}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

void __43__PUPhotosGridCellAccessibility__axPHAsset__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) assetsInAssetCollection:*(*(*(a1 + 48) + 8) + 40)];
  v3 = __UIAccessibilitySafeClass();

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __43__PUPhotosGridCellAccessibility__axPHAsset__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:{objc_msgSend(*(a1 + 40), "item")}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)_axMainAssetURL
{
  v2 = [(PUPhotosGridCellAccessibility *)self _axPHAsset];
  v3 = [v2 safeValueForKey:@"mainFileURL"];

  return v3;
}

- (id)_accessibilityPhotoDescription
{
  v2 = [(PUPhotosGridCellAccessibility *)self _axPHAsset];
  v3 = [v2 _accessibilityPhotoDescription];

  return v3;
}

- (id)_accessibilityPHAssetLocalIdentifier
{
  v2 = [(PUPhotosGridCellAccessibility *)self _axPHAsset];
  v3 = [v2 _accessibilityPHAssetLocalIdentifier];

  return v3;
}

- (id)_accessibilityPhotoLibraryURL
{
  v2 = [(PUPhotosGridCellAccessibility *)self _axPHAsset];
  v3 = [v2 _accessibilityPhotoLibraryURL];

  return v3;
}

- (BOOL)_accessibilityIsPHAssetLocallyAvailable
{
  v2 = [(PUPhotosGridCellAccessibility *)self _axPHAsset];
  v3 = [v2 _accessibilityIsPHAssetLocallyAvailable];

  return v3;
}

- (BOOL)_accessibilitySavePhotoLabel:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotosGridCellAccessibility *)self _axPHAsset];
  v6 = [v5 _accessibilitySavePhotoLabel:v4];

  return v6;
}

- (id)_accessibilityElementStoredUserLabel
{
  v3 = [(PUPhotosGridCellAccessibility *)self _axPHAsset];
  v4 = [v3 safeValueForKey:@"_accessibilityiCloudPhotoLabel"];

  if ([v4 length])
  {
    v5 = v4;
    goto LABEL_11;
  }

  v6 = [(PUPhotosGridCellAccessibility *)self _axPHAsset];
  v7 = [v6 safeBoolForKey:@"isPhoto"];

  if (v7)
  {
    v8 = [(PUPhotosGridCellAccessibility *)self _axMainAssetURL];
    v9 = UIAccessibilityMetadataDescriptionForImage();
  }

  else
  {
    v10 = [(PUPhotosGridCellAccessibility *)self _axPHAsset];
    v11 = [v10 safeBoolForKey:@"isVideo"];

    if (!v11)
    {
      v5 = &stru_2A228A390;
      goto LABEL_11;
    }

    v8 = [(PUPhotosGridCellAccessibility *)self _axMainAssetURL];
    v9 = UIAccessibilityMetadataDescriptionForVideo();
  }

  v12 = v9;

  if (v12)
  {
    v5 = v12;
  }

  else
  {
    v5 = &stru_2A228A390;
  }

LABEL_11:

  return v5;
}

- (id)accessibilityCustomContent
{
  v2 = [(PUPhotosGridCellAccessibility *)self _axPHAsset];
  v3 = [v2 accessibilityCustomContent];

  return v3;
}

@end