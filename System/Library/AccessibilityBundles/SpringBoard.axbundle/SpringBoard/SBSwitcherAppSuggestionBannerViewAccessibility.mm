@interface SBSwitcherAppSuggestionBannerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SBSwitcherAppSuggestionBannerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBSwitcherAppSuggestionBannerView" hasInstanceVariable:@"_appLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SBSwitcherAppSuggestionBannerView" hasInstanceVariable:@"_descriptionLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(SBSwitcherAppSuggestionBannerViewAccessibility *)self safeValueForKey:@"_appLabel"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(SBSwitcherAppSuggestionBannerViewAccessibility *)self safeValueForKey:@"_descriptionLabel"];
  v6 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v4 accessibilityLabel];
  accessibilityLabel2 = [v6 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end