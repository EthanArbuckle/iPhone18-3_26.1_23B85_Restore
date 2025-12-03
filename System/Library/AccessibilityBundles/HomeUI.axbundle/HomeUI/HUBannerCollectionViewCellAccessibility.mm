@interface HUBannerCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation HUBannerCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUBannerCollectionViewCell" hasInstanceMethod:@"bannerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUBannerView" hasInstanceMethod:@"footerViewLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUBannerView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUBannerView" hasInstanceMethod:@"descriptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUBannerView" hasInstanceMethod:@"dismissButton" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v12.receiver = self;
  v12.super_class = HUBannerCollectionViewCellAccessibility;
  _accessibilitySupplementaryFooterViews = [(HUBannerCollectionViewCellAccessibility *)&v12 _accessibilitySupplementaryFooterViews];
  [array axSafelyAddObjectsFromArray:_accessibilitySupplementaryFooterViews];

  v5 = [(HUBannerCollectionViewCellAccessibility *)self safeValueForKeyPath:@"bannerView.footerViewLabel"];
  [v5 setIsAccessibilityElement:1];
  v11.receiver = self;
  v11.super_class = HUBannerCollectionViewCellAccessibility;
  accessibilityTraits = [(HUBannerCollectionViewCellAccessibility *)&v11 accessibilityTraits];
  v7 = *MEMORY[0x29EDC7F70];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | accessibilityTraits];
  [array axSafelyAddObject:v5];
  v8 = [(HUBannerCollectionViewCellAccessibility *)self safeValueForKeyPath:@"bannerView.dismissButton"];
  [v8 setIsAccessibilityElement:1];
  v10.receiver = self;
  v10.super_class = HUBannerCollectionViewCellAccessibility;
  [v8 setAccessibilityTraits:{-[HUBannerCollectionViewCellAccessibility accessibilityTraits](&v10, sel_accessibilityTraits) | v7}];
  [array axSafelyAddObject:v8];

  return array;
}

- (id)accessibilityLabel
{
  v3 = [(HUBannerCollectionViewCellAccessibility *)self safeValueForKeyPath:@"bannerView.titleLabel"];
  v4 = [(HUBannerCollectionViewCellAccessibility *)self safeValueForKeyPath:@"bannerView.descriptionLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  accessibilityLabel2 = [v4 accessibilityLabel];
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