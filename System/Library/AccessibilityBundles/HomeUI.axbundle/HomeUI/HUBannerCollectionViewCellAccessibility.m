@interface HUBannerCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation HUBannerCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUBannerCollectionViewCell" hasInstanceMethod:@"bannerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUBannerView" hasInstanceMethod:@"footerViewLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUBannerView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUBannerView" hasInstanceMethod:@"descriptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUBannerView" hasInstanceMethod:@"dismissButton" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v12.receiver = self;
  v12.super_class = HUBannerCollectionViewCellAccessibility;
  v4 = [(HUBannerCollectionViewCellAccessibility *)&v12 _accessibilitySupplementaryFooterViews];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(HUBannerCollectionViewCellAccessibility *)self safeValueForKeyPath:@"bannerView.footerViewLabel"];
  [v5 setIsAccessibilityElement:1];
  v11.receiver = self;
  v11.super_class = HUBannerCollectionViewCellAccessibility;
  v6 = [(HUBannerCollectionViewCellAccessibility *)&v11 accessibilityTraits];
  v7 = *MEMORY[0x29EDC7F70];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | v6];
  [v3 axSafelyAddObject:v5];
  v8 = [(HUBannerCollectionViewCellAccessibility *)self safeValueForKeyPath:@"bannerView.dismissButton"];
  [v8 setIsAccessibilityElement:1];
  v10.receiver = self;
  v10.super_class = HUBannerCollectionViewCellAccessibility;
  [v8 setAccessibilityTraits:{-[HUBannerCollectionViewCellAccessibility accessibilityTraits](&v10, sel_accessibilityTraits) | v7}];
  [v3 axSafelyAddObject:v8];

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(HUBannerCollectionViewCellAccessibility *)self safeValueForKeyPath:@"bannerView.titleLabel"];
  v4 = [(HUBannerCollectionViewCellAccessibility *)self safeValueForKeyPath:@"bannerView.descriptionLabel"];
  v5 = [v3 accessibilityLabel];
  v8 = [v4 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HUBannerCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HUBannerCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end