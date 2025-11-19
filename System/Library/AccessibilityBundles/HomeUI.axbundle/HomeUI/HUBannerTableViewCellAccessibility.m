@interface HUBannerTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation HUBannerTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUBannerCollectionViewCell" hasInstanceMethod:@"bannerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUBannerView" hasInstanceMethod:@"footerViewLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUBannerView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUBannerView" hasInstanceMethod:@"descriptionLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(HUBannerTableViewCellAccessibility *)self safeValueForKeyPath:@"bannerView.titleLabel"];
  v4 = [(HUBannerTableViewCellAccessibility *)self safeValueForKeyPath:@"bannerView.descriptionLabel"];
  v5 = [v3 accessibilityLabel];
  v8 = [v4 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v7.receiver = self;
  v7.super_class = HUBannerTableViewCellAccessibility;
  v4 = [(HUBannerTableViewCellAccessibility *)&v7 _accessibilitySupplementaryFooterViews];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(HUBannerTableViewCellAccessibility *)self safeValueForKeyPath:@"bannerView.footerViewLabel"];
  [v3 axSafelyAddObject:v5];

  return v3;
}

@end