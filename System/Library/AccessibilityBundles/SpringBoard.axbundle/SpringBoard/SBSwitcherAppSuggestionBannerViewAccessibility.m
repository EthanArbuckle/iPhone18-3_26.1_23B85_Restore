@interface SBSwitcherAppSuggestionBannerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SBSwitcherAppSuggestionBannerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBSwitcherAppSuggestionBannerView" hasInstanceVariable:@"_appLabel" withType:"UILabel"];
  [v3 validateClass:@"SBSwitcherAppSuggestionBannerView" hasInstanceVariable:@"_descriptionLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(SBSwitcherAppSuggestionBannerViewAccessibility *)self safeValueForKey:@"_appLabel"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(SBSwitcherAppSuggestionBannerViewAccessibility *)self safeValueForKey:@"_descriptionLabel"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v4 accessibilityLabel];
  v10 = [v6 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end