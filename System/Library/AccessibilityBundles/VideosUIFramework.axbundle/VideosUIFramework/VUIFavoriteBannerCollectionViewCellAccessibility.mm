@interface VUIFavoriteBannerCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VUIFavoriteBannerCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIFavoriteBannerCollectionViewCell" hasProperty:@"bannerView" withType:"@"];
  [v3 validateClass:@"VUIFavoriteBannerView" hasProperty:@"titleLabel" withType:"@"];
}

- (id)accessibilityLabel
{
  v2 = [(VUIFavoriteBannerCollectionViewCellAccessibility *)self safeValueForKey:@"bannerView"];
  objc_opt_class();
  v3 = [v2 safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityLabel];

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VUIFavoriteBannerCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(VUIFavoriteBannerCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end