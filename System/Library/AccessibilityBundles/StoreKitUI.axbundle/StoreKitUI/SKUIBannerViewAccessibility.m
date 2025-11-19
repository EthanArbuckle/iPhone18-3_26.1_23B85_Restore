@interface SKUIBannerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (id)accessibilityLabel;
@end

@implementation SKUIBannerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIBannerView" hasInstanceMethod:@"itemOffer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIBannerView" hasInstanceMethod:@"closeButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIBannerView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIBannerView" hasInstanceMethod:@"artistName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIBannerView" hasInstanceMethod:@"userRating" withFullSignature:{"f", 0}];
  [v3 validateClass:@"SKUIBannerView" hasInstanceVariable:@"_itemStateLabel" withType:"UILabel"];
  [v3 validateClass:@"SKUIBannerView" hasInstanceVariable:@"_itemOfferButton" withType:"UIButton"];
}

- (id)accessibilityLabel
{
  v3 = [(SKUIBannerViewAccessibility *)self safeValueForKey:@"title"];
  v4 = [(SKUIBannerViewAccessibility *)self safeValueForKey:@"artistName"];
  v5 = [(SKUIBannerViewAccessibility *)self safeValueForKey:@"_userRatingStarImageView"];
  v6 = [v5 accessibilityLabel];
  v7 = [(SKUIBannerViewAccessibility *)self safeValueForKey:@"_itemStateLabel"];
  v10 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDC7620];
  v4 = [(SKUIBannerViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v4)
  {
    v4 = [MEMORY[0x29EDB8DE8] array];
    [(SKUIBannerViewAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:*v3];
    v5 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [v5 setAccessibilityDelegate:self];
    [v4 addObject:v5];
  }

  v6 = [v4 mutableCopy];
  v7 = [(SKUIBannerViewAccessibility *)self safeValueForKey:@"closeButton"];
  if (v7)
  {
    v8 = accessibilitySKUILocalizedString(@"close.button.for.website.app.download");
    [v7 setAccessibilityLabel:v8];

    [v6 insertObject:v7 atIndex:0];
  }

  v9 = [(SKUIBannerViewAccessibility *)self safeValueForKey:@"_itemOfferButton"];
  [v6 axSafelyAddObject:v9];

  return v6;
}

@end