@interface PHLivePhotoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsPHAssetLocallyAvailable;
- (BOOL)_accessibilitySavePhotoLabel:(id)label;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityElementStoredUserLabel;
- (id)_accessibilityPHAssetLocalIdentifier;
- (id)_accessibilityPhotoLibraryURL;
- (id)_axPHAsset;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (id)accessibilityURL;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PHLivePhotoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHLivePhotoView" hasInstanceMethod:@"livePhoto" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHLivePhoto" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHLivePhoto" hasInstanceMethod:@"imageURL" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHAsset" hasInstanceMethod:@"mainFileURL" withFullSignature:{"@", 0}];
}

- (id)_axPHAsset
{
  v3 = [(PHLivePhotoViewAccessibility *)self _accessibilityValueForKey:@"AXPHImageAsset"];
  if (!v3)
  {
    v4 = [(PHLivePhotoViewAccessibility *)self safeValueForKey:@"livePhoto"];
    v5 = [v4 safeValueForKey:@"asset"];
    v3 = __UIAccessibilitySafeClass();
  }

  return v3;
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(PHLivePhotoViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (!isAccessibilityUserDefinedElement)
  {
    return 1;
  }

  isAccessibilityUserDefinedElement2 = [(PHLivePhotoViewAccessibility *)self isAccessibilityUserDefinedElement];
  bOOLValue = [isAccessibilityUserDefinedElement2 BOOLValue];

  return bOOLValue;
}

- (id)accessibilityCustomContent
{
  _axPHAsset = [(PHLivePhotoViewAccessibility *)self _axPHAsset];
  accessibilityCustomContent = [_axPHAsset accessibilityCustomContent];

  return accessibilityCustomContent;
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(PHLivePhotoViewAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(PHLivePhotoViewAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    _axPHAsset = [(PHLivePhotoViewAccessibility *)self _axPHAsset];
    v6 = _axPHAsset;
    if (_axPHAsset)
    {
      accessibilityUserDefinedLabel2 = [_axPHAsset accessibilityLabel];
    }

    else
    {
      v7 = [(PHLivePhotoViewAccessibility *)self safeValueForKey:@"livePhoto"];
      v8 = [v7 safeValueForKey:@"imageURL"];
      v9 = __UIAccessibilitySafeClass();

      accessibilityUserDefinedLabel2 = UIAccessibilityMetadataDescriptionForImage();
    }
  }

  return accessibilityUserDefinedLabel2;
}

- (id)accessibilityValue
{
  _axPHAsset = [(PHLivePhotoViewAccessibility *)self _axPHAsset];
  accessibilityValue = [_axPHAsset accessibilityValue];

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  _axPHAsset = [(PHLivePhotoViewAccessibility *)self _axPHAsset];

  if (!_axPHAsset)
  {
    return *MEMORY[0x29EDC7F88];
  }

  _axPHAsset2 = [(PHLivePhotoViewAccessibility *)self _axPHAsset];
  accessibilityTraits = [_axPHAsset2 accessibilityTraits];

  return accessibilityTraits;
}

- (id)accessibilityURL
{
  _axPHAsset = [(PHLivePhotoViewAccessibility *)self _axPHAsset];
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
    v8.super_class = PHLivePhotoViewAccessibility;
    accessibilityURL = [(PHLivePhotoViewAccessibility *)&v8 accessibilityURL];
  }

  v6 = accessibilityURL;
LABEL_7:

  return v6;
}

- (id)_accessibilityPHAssetLocalIdentifier
{
  _axPHAsset = [(PHLivePhotoViewAccessibility *)self _axPHAsset];
  _accessibilityPHAssetLocalIdentifier = [_axPHAsset _accessibilityPHAssetLocalIdentifier];

  return _accessibilityPHAssetLocalIdentifier;
}

- (id)_accessibilityPhotoLibraryURL
{
  _axPHAsset = [(PHLivePhotoViewAccessibility *)self _axPHAsset];
  _accessibilityPhotoLibraryURL = [_axPHAsset _accessibilityPhotoLibraryURL];

  return _accessibilityPhotoLibraryURL;
}

- (BOOL)_accessibilityIsPHAssetLocallyAvailable
{
  _axPHAsset = [(PHLivePhotoViewAccessibility *)self _axPHAsset];
  _accessibilityIsPHAssetLocallyAvailable = [_axPHAsset _accessibilityIsPHAssetLocallyAvailable];

  return _accessibilityIsPHAssetLocallyAvailable;
}

- (BOOL)_accessibilitySavePhotoLabel:(id)label
{
  labelCopy = label;
  _axPHAsset = [(PHLivePhotoViewAccessibility *)self _axPHAsset];
  v6 = [_axPHAsset _accessibilitySavePhotoLabel:labelCopy];

  return v6;
}

- (id)_accessibilityElementStoredUserLabel
{
  _axPHAsset = [(PHLivePhotoViewAccessibility *)self _axPHAsset];
  v3 = [_axPHAsset safeValueForKey:@"_accessibilityiCloudPhotoLabel"];

  return v3;
}

@end