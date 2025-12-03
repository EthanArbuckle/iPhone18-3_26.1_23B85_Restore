@interface UpsellBannerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UpsellBannerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ShelfKitCollectionViews.UpsellBannerView" hasSwiftField:@"subscriptionNameAreaView" withSwiftType:"SubscriptionNameAreaView"];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.SubscriptionNameAreaView" hasSwiftField:@"model" withSwiftType:"Optional<UpsellBanner>"];
  [validationsCopy validateClass:@"ShelfKit.UpsellBanner" hasSwiftField:@"subscriptionTitle" withSwiftType:"Optional<String>"];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.SubscriptionNameAreaView" hasInstanceMethod:@"accessibilityChannelLinkButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ChevronButton" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.UpsellBannerView" hasSwiftField:@"shortTitleLabel" withSwiftType:"DynamicTypeLabel"];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.UpsellBannerView" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.UpsellBannerView" hasInstanceMethod:@"accessibilityBenefitButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(UpsellBannerViewAccessibility *)self safeSwiftValueForKey:@"subscriptionNameAreaView"];
  v4 = [v3 safeSwiftValueForKey:@"model"];
  v5 = [v4 safeSwiftStringForKey:@"subscriptionTitle"];
  v6 = [v3 safeValueForKey:@"accessibilityChannelLinkButton"];
  v7 = [v6 safeStringForKey:@"accessibilityTitleLabel"];
  objc_opt_class();
  v8 = [(UpsellBannerViewAccessibility *)self safeSwiftValueForKey:@"shortTitleLabel"];
  v9 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v10 = [(UpsellBannerViewAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel"];
  v11 = __UIAccessibilityCastAsClass();

  text = [v9 text];
  text2 = [v11 text];
  v13 = __UIAXStringForVariables();

  return v13;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UpsellBannerViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(UpsellBannerViewAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(UpsellBannerViewAccessibility *)self safeValueForKey:@"accessibilityBenefitButton"];
  [array axSafelyAddObject:v4];

  return array;
}

@end