@interface VUIFavoriteBannerCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VUIFavoriteBannerCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUIFavoriteBannerCollectionViewCell" hasProperty:@"bannerView" withType:"@"];
  [validationsCopy validateClass:@"VUIFavoriteBannerView" hasProperty:@"titleLabel" withType:"@"];
}

- (id)accessibilityLabel
{
  v2 = [(VUIFavoriteBannerCollectionViewCellAccessibility *)self safeValueForKey:@"bannerView"];
  objc_opt_class();
  v3 = [v2 safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v4 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VUIFavoriteBannerCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(VUIFavoriteBannerCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end