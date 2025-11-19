@interface SUUIBannerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (id)accessibilityLabel;
@end

@implementation SUUIBannerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIBannerView" hasInstanceMethod:@"itemOffer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIBannerView" hasInstanceMethod:@"closeButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIBannerView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIBannerView" hasInstanceMethod:@"artistName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIBannerView" hasInstanceMethod:@"userRating" withFullSignature:{"f", 0}];
  [v3 validateClass:@"SUUIBannerView" hasInstanceVariable:@"_itemStateLabel" withType:"UILabel"];
  [v3 validateClass:@"SUUIBannerView" hasInstanceVariable:@"_itemOfferButton" withType:"UIButton"];
}

- (id)accessibilityLabel
{
  v3 = [(SUUIBannerViewAccessibility *)self safeValueForKey:@"title"];
  v4 = [(SUUIBannerViewAccessibility *)self safeValueForKey:@"artistName"];
  v5 = [(SUUIBannerViewAccessibility *)self safeValueForKey:@"_userRatingStarImageView"];
  v6 = [v5 accessibilityLabel];
  v7 = [(SUUIBannerViewAccessibility *)self safeValueForKey:@"_itemStateLabel"];
  v10 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDC7620];
  v4 = [(SUUIBannerViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v4)
  {
    v4 = [MEMORY[0x29EDB8DE8] array];
    [(SUUIBannerViewAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:*v3];
    v5 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [v5 setAccessibilityDelegate:self];
    [v4 addObject:v5];
  }

  v6 = [v4 mutableCopy];
  v7 = [(SUUIBannerViewAccessibility *)self safeValueForKey:@"closeButton"];
  if (v7)
  {
    v8 = accessibilityLocalizedString(@"close.button.for.website.app.download");
    [v7 setAccessibilityLabel:v8];

    [v6 insertObject:v7 atIndex:0];
  }

  v9 = [(SUUIBannerViewAccessibility *)self safeValueForKey:@"_itemOfferButton"];
  [v6 axSafelyAddObject:v9];

  return v6;
}

@end