@interface PUReviewAssetAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PUReviewAssetAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUReviewAsset" hasInstanceMethod:@"providedFullsizeRenderImageURL" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUReviewAsset" hasInstanceMethod:@"providedFullsizeImageURL" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PUReviewAssetAccessibility *)self safeValueForKey:@"providedFullsizeRenderImageURL"];
  v4 = __UIAccessibilitySafeClass();

  if (!v4)
  {
    v5 = [(PUReviewAssetAccessibility *)self safeValueForKey:@"providedFullsizeImageURL"];
    v4 = __UIAccessibilitySafeClass();
  }

  v6 = UIAccessibilityMetadataDescriptionForImage();

  return v6;
}

@end