@interface BKSearchViewControllerAccessibility
- (BKSearchViewController)_bkaxTarget;
- (BKSearchViewControllerDelegate)_bkaxSearchDelegate;
- (BOOL)accessibilityPerformEscape;
- (void)revealSearchResult:(id)a3 animated:(BOOL)a4;
@end

@implementation BKSearchViewControllerAccessibility

- (void)revealSearchResult:(id)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = BKSearchViewControllerAccessibility;
  [(BKSearchViewControllerAccessibility *)&v4 revealSearchResult:a3 animated:a4];
  IMAccessibilityPerformBlockOnMainThreadAfterDelay();
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(BKSearchViewControllerAccessibility *)self _bkaxSearchDelegate];
  v4 = [(BKSearchViewControllerAccessibility *)self _bkaxTarget];
  [v3 searchViewController:v4 revealSearchResult:0 animated:1];

  return 1;
}

- (BKSearchViewController)_bkaxTarget
{
  objc_opt_class();
  v2 = __IMAccessibilityCastAsClass();

  return v2;
}

- (BKSearchViewControllerDelegate)_bkaxSearchDelegate
{
  v2 = [(BKSearchViewControllerAccessibility *)self imaxValueForKey:@"_searchDelegate"];
  v3 = __IMAccessibilityCastAsProtocol();

  return v3;
}

@end