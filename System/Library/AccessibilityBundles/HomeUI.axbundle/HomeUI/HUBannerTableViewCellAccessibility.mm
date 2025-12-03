@interface HUBannerTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation HUBannerTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUBannerCollectionViewCell" hasInstanceMethod:@"bannerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUBannerView" hasInstanceMethod:@"footerViewLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUBannerView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUBannerView" hasInstanceMethod:@"descriptionLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(HUBannerTableViewCellAccessibility *)self safeValueForKeyPath:@"bannerView.titleLabel"];
  v4 = [(HUBannerTableViewCellAccessibility *)self safeValueForKeyPath:@"bannerView.descriptionLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  accessibilityLabel2 = [v4 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v7.receiver = self;
  v7.super_class = HUBannerTableViewCellAccessibility;
  _accessibilitySupplementaryFooterViews = [(HUBannerTableViewCellAccessibility *)&v7 _accessibilitySupplementaryFooterViews];
  [array axSafelyAddObjectsFromArray:_accessibilitySupplementaryFooterViews];

  v5 = [(HUBannerTableViewCellAccessibility *)self safeValueForKeyPath:@"bannerView.footerViewLabel"];
  [array axSafelyAddObject:v5];

  return array;
}

@end