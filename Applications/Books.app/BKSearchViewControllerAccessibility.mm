@interface BKSearchViewControllerAccessibility
- (BKSearchViewController)_bkaxTarget;
- (BKSearchViewControllerDelegate)_bkaxSearchDelegate;
- (BOOL)accessibilityPerformEscape;
- (void)revealSearchResult:(id)result animated:(BOOL)animated;
@end

@implementation BKSearchViewControllerAccessibility

- (void)revealSearchResult:(id)result animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = BKSearchViewControllerAccessibility;
  [(BKSearchViewControllerAccessibility *)&v4 revealSearchResult:result animated:animated];
  IMAccessibilityPerformBlockOnMainThreadAfterDelay();
}

- (BOOL)accessibilityPerformEscape
{
  _bkaxSearchDelegate = [(BKSearchViewControllerAccessibility *)self _bkaxSearchDelegate];
  _bkaxTarget = [(BKSearchViewControllerAccessibility *)self _bkaxTarget];
  [_bkaxSearchDelegate searchViewController:_bkaxTarget revealSearchResult:0 animated:1];

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