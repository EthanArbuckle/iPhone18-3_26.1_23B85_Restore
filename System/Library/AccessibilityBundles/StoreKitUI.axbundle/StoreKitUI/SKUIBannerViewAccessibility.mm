@interface SKUIBannerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (id)accessibilityLabel;
@end

@implementation SKUIBannerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIBannerView" hasInstanceMethod:@"itemOffer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIBannerView" hasInstanceMethod:@"closeButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIBannerView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIBannerView" hasInstanceMethod:@"artistName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIBannerView" hasInstanceMethod:@"userRating" withFullSignature:{"f", 0}];
  [validationsCopy validateClass:@"SKUIBannerView" hasInstanceVariable:@"_itemStateLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SKUIBannerView" hasInstanceVariable:@"_itemOfferButton" withType:"UIButton"];
}

- (id)accessibilityLabel
{
  v3 = [(SKUIBannerViewAccessibility *)self safeValueForKey:@"title"];
  v4 = [(SKUIBannerViewAccessibility *)self safeValueForKey:@"artistName"];
  v5 = [(SKUIBannerViewAccessibility *)self safeValueForKey:@"_userRatingStarImageView"];
  accessibilityLabel = [v5 accessibilityLabel];
  v7 = [(SKUIBannerViewAccessibility *)self safeValueForKey:@"_itemStateLabel"];
  accessibilityLabel2 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDC7620];
  array = [(SKUIBannerViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    [(SKUIBannerViewAccessibility *)self _accessibilitySetRetainedValue:array forKey:*v3];
    v5 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [v5 setAccessibilityDelegate:self];
    [array addObject:v5];
  }

  v6 = [array mutableCopy];
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