@interface ArticleDiffablePageViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ArticleDiffablePageViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = ArticleDiffablePageViewControllerAccessibility;
  [(ArticleDiffablePageViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(ArticleDiffablePageViewControllerAccessibility *)self safeSwiftValueForKey:@"closeButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityAppStoreLocalizedString(@"popover.view.dismiss.article");
  [v4 setAccessibilityLabel:v5];
}

@end