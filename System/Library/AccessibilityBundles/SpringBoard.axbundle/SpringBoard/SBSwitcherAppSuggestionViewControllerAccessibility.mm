@interface SBSwitcherAppSuggestionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_animateOutAndRemoveCurrentBottomBannerWithCompletion:(id)completion;
@end

@implementation SBSwitcherAppSuggestionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBSwitcherAppSuggestionViewController" hasInstanceMethod:@"_animateOutAndRemoveCurrentBottomBannerWithCompletion:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"SBSwitcherAppSuggestionViewController" hasInstanceVariable:@"_bannerView" withType:"SBSwitcherAppSuggestionBannerView"];
}

- (void)_animateOutAndRemoveCurrentBottomBannerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(SBSwitcherAppSuggestionViewControllerAccessibility *)self safeUIViewForKey:@"_bannerView"];
  _accessibilityViewIsVisible = [v5 _accessibilityViewIsVisible];

  v8.receiver = self;
  v8.super_class = SBSwitcherAppSuggestionViewControllerAccessibility;
  [(SBSwitcherAppSuggestionViewControllerAccessibility *)&v8 _animateOutAndRemoveCurrentBottomBannerWithCompletion:completionCopy];

  v7 = [(SBSwitcherAppSuggestionViewControllerAccessibility *)self safeUIViewForKey:@"_bannerView"];
  LODWORD(completionCopy) = [v7 _accessibilityViewIsVisible];

  if (_accessibilityViewIsVisible != completionCopy)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end