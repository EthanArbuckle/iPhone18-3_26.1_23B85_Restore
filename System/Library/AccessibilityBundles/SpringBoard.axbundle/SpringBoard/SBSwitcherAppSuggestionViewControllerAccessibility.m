@interface SBSwitcherAppSuggestionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_animateOutAndRemoveCurrentBottomBannerWithCompletion:(id)a3;
@end

@implementation SBSwitcherAppSuggestionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBSwitcherAppSuggestionViewController" hasInstanceMethod:@"_animateOutAndRemoveCurrentBottomBannerWithCompletion:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"SBSwitcherAppSuggestionViewController" hasInstanceVariable:@"_bannerView" withType:"SBSwitcherAppSuggestionBannerView"];
}

- (void)_animateOutAndRemoveCurrentBottomBannerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherAppSuggestionViewControllerAccessibility *)self safeUIViewForKey:@"_bannerView"];
  v6 = [v5 _accessibilityViewIsVisible];

  v8.receiver = self;
  v8.super_class = SBSwitcherAppSuggestionViewControllerAccessibility;
  [(SBSwitcherAppSuggestionViewControllerAccessibility *)&v8 _animateOutAndRemoveCurrentBottomBannerWithCompletion:v4];

  v7 = [(SBSwitcherAppSuggestionViewControllerAccessibility *)self safeUIViewForKey:@"_bannerView"];
  LODWORD(v4) = [v7 _accessibilityViewIsVisible];

  if (v6 != v4)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end