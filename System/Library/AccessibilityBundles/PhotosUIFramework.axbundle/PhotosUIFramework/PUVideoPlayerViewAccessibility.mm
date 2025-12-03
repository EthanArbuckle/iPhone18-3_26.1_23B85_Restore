@interface PUVideoPlayerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsPHAssetLocallyAvailable;
- (BOOL)_accessibilitySavePhotoLabel:(id)label;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityElementStoredUserLabel;
- (id)_accessibilityPHAssetLocalIdentifier;
- (id)_accessibilityPhotoLibraryURL;
- (id)_axPHAsset;
- (id)accessibilityLabel;
- (id)accessibilityURL;
@end

@implementation PUVideoPlayerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUVideoPlayerView"];
  [validationsCopy validateClass:@"PHAsset" hasInstanceMethod:@"mainFileURL" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHAsset" hasInstanceMethod:@"isVideo" withFullSignature:{"B", 0}];
}

- (id)_axPHAsset
{
  objc_opt_class();
  v3 = [(PUVideoPlayerViewAccessibility *)self _accessibilityValueForKey:@"AXAsset"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(PUVideoPlayerViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (!isAccessibilityUserDefinedElement)
  {
    return 1;
  }

  isAccessibilityUserDefinedElement2 = [(PUVideoPlayerViewAccessibility *)self isAccessibilityUserDefinedElement];
  bOOLValue = [isAccessibilityUserDefinedElement2 BOOLValue];

  return bOOLValue;
}

- (id)accessibilityLabel
{
  _axPHAsset = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
  accessibilityLabel = [_axPHAsset accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityURL
{
  _axPHAsset = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
  v4 = [_axPHAsset safeValueForKey:@"mainFileURL"];

  if (v4)
  {
    accessibilityURL = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PUVideoPlayerViewAccessibility;
    accessibilityURL = [(PUVideoPlayerViewAccessibility *)&v8 accessibilityURL];
  }

  v6 = accessibilityURL;

  return v6;
}

- (id)_accessibilityPHAssetLocalIdentifier
{
  _axPHAsset = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
  _accessibilityPHAssetLocalIdentifier = [_axPHAsset _accessibilityPHAssetLocalIdentifier];

  return _accessibilityPHAssetLocalIdentifier;
}

- (id)_accessibilityPhotoLibraryURL
{
  _axPHAsset = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
  _accessibilityPhotoLibraryURL = [_axPHAsset _accessibilityPhotoLibraryURL];

  return _accessibilityPhotoLibraryURL;
}

- (BOOL)_accessibilityIsPHAssetLocallyAvailable
{
  _axPHAsset = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
  _accessibilityIsPHAssetLocallyAvailable = [_axPHAsset _accessibilityIsPHAssetLocallyAvailable];

  return _accessibilityIsPHAssetLocallyAvailable;
}

- (id)_accessibilityElementStoredUserLabel
{
  _axPHAsset = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
  v4 = [_axPHAsset safeValueForKey:@"_accessibilityiCloudPhotoLabel"];

  if (![v4 length])
  {
    _axPHAsset2 = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
    v6 = [_axPHAsset2 safeBoolForKey:@"isVideo"];

    if (v6)
    {
      accessibilityURL = [(PUVideoPlayerViewAccessibility *)self accessibilityURL];
      v8 = UIAccessibilityMetadataDescriptionForVideo();

      v4 = v8;
    }
  }

  return v4;
}

- (BOOL)_accessibilitySavePhotoLabel:(id)label
{
  labelCopy = label;
  _axPHAsset = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
  v6 = [_axPHAsset _accessibilitySavePhotoLabel:labelCopy];

  return v6;
}

@end