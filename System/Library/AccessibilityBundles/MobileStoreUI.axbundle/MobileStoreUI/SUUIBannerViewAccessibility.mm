@interface SUUIBannerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (id)accessibilityLabel;
@end

@implementation SUUIBannerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIBannerView" hasInstanceMethod:@"itemOffer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIBannerView" hasInstanceMethod:@"closeButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIBannerView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIBannerView" hasInstanceMethod:@"artistName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIBannerView" hasInstanceMethod:@"userRating" withFullSignature:{"f", 0}];
  [validationsCopy validateClass:@"SUUIBannerView" hasInstanceVariable:@"_itemStateLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SUUIBannerView" hasInstanceVariable:@"_itemOfferButton" withType:"UIButton"];
}

- (id)accessibilityLabel
{
  v3 = [(SUUIBannerViewAccessibility *)self safeValueForKey:@"title"];
  v4 = [(SUUIBannerViewAccessibility *)self safeValueForKey:@"artistName"];
  v5 = [(SUUIBannerViewAccessibility *)self safeValueForKey:@"_userRatingStarImageView"];
  accessibilityLabel = [v5 accessibilityLabel];
  v7 = [(SUUIBannerViewAccessibility *)self safeValueForKey:@"_itemStateLabel"];
  accessibilityLabel2 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDC7620];
  array = [(SUUIBannerViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    [(SUUIBannerViewAccessibility *)self _accessibilitySetRetainedValue:array forKey:*v3];
    v5 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [v5 setAccessibilityDelegate:self];
    [array addObject:v5];
  }

  v6 = [array mutableCopy];
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