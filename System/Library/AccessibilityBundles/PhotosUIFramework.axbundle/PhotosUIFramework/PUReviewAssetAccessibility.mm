@interface PUReviewAssetAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PUReviewAssetAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUReviewAsset" hasInstanceMethod:@"providedFullsizeRenderImageURL" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUReviewAsset" hasInstanceMethod:@"providedFullsizeImageURL" withFullSignature:{"@", 0}];
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