@interface SBSwitcherAppSuggestionBannerViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_createIconViewForSuggestion:(id)suggestion;
@end

@implementation SBSwitcherAppSuggestionBannerViewInvertColorsAccessibility

- (void)_createIconViewForSuggestion:(id)suggestion
{
  v4.receiver = self;
  v4.super_class = SBSwitcherAppSuggestionBannerViewInvertColorsAccessibility;
  [(SBSwitcherAppSuggestionBannerViewInvertColorsAccessibility *)&v4 _createIconViewForSuggestion:suggestion];
  [(SBSwitcherAppSuggestionBannerViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(SBSwitcherAppSuggestionBannerViewInvertColorsAccessibility *)self safeUIViewForKey:@"_iconView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end