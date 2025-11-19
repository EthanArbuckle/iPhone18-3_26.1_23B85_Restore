@interface PUVideoPlayerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsPHAssetLocallyAvailable;
- (BOOL)_accessibilitySavePhotoLabel:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityElementStoredUserLabel;
- (id)_accessibilityPHAssetLocalIdentifier;
- (id)_accessibilityPhotoLibraryURL;
- (id)_axPHAsset;
- (id)accessibilityLabel;
- (id)accessibilityURL;
@end

@implementation PUVideoPlayerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUVideoPlayerView"];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"mainFileURL" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"isVideo" withFullSignature:{"B", 0}];
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
  v3 = [(PUVideoPlayerViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (!v3)
  {
    return 1;
  }

  v4 = [(PUVideoPlayerViewAccessibility *)self isAccessibilityUserDefinedElement];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)accessibilityLabel
{
  v2 = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityURL
{
  v3 = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
  v4 = [v3 safeValueForKey:@"mainFileURL"];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PUVideoPlayerViewAccessibility;
    v5 = [(PUVideoPlayerViewAccessibility *)&v8 accessibilityURL];
  }

  v6 = v5;

  return v6;
}

- (id)_accessibilityPHAssetLocalIdentifier
{
  v2 = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
  v3 = [v2 _accessibilityPHAssetLocalIdentifier];

  return v3;
}

- (id)_accessibilityPhotoLibraryURL
{
  v2 = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
  v3 = [v2 _accessibilityPhotoLibraryURL];

  return v3;
}

- (BOOL)_accessibilityIsPHAssetLocallyAvailable
{
  v2 = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
  v3 = [v2 _accessibilityIsPHAssetLocallyAvailable];

  return v3;
}

- (id)_accessibilityElementStoredUserLabel
{
  v3 = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
  v4 = [v3 safeValueForKey:@"_accessibilityiCloudPhotoLabel"];

  if (![v4 length])
  {
    v5 = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
    v6 = [v5 safeBoolForKey:@"isVideo"];

    if (v6)
    {
      v7 = [(PUVideoPlayerViewAccessibility *)self accessibilityURL];
      v8 = UIAccessibilityMetadataDescriptionForVideo();

      v4 = v8;
    }
  }

  return v4;
}

- (BOOL)_accessibilitySavePhotoLabel:(id)a3
{
  v4 = a3;
  v5 = [(PUVideoPlayerViewAccessibility *)self _axPHAsset];
  v6 = [v5 _accessibilitySavePhotoLabel:v4];

  return v6;
}

@end