@interface SearchUIMovieCardSectionBuyButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SearchUIMovieCardSectionBuyButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUIMovieCardSectionBuyButtonView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIMovieCardSectionBuyButtonView" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKStoreButton" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SearchUIMovieCardSectionBuyButtonViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v4 = [(SearchUIMovieCardSectionBuyButtonViewAccessibility *)self safeValueForKey:@"button"];
  v5 = [v4 safeValueForKey:@"title"];
  v8 = [v3 accessibilityLabel];
  v6 = __AXStringForVariables();

  return v6;
}

@end