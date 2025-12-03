@interface SearchUIMovieCardSectionBuyButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SearchUIMovieCardSectionBuyButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUIMovieCardSectionBuyButtonView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIMovieCardSectionBuyButtonView" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TLKStoreButton" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SearchUIMovieCardSectionBuyButtonViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v4 = [(SearchUIMovieCardSectionBuyButtonViewAccessibility *)self safeValueForKey:@"button"];
  v5 = [v4 safeValueForKey:@"title"];
  accessibilityLabel = [v3 accessibilityLabel];
  v6 = __AXStringForVariables();

  return v6;
}

@end