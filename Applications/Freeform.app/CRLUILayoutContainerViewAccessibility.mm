@interface CRLUILayoutContainerViewAccessibility
- (UINavigationController)_crlaxNavigationController;
- (id)_crlaxNavigationTransitionView;
- (id)_crlaxTopPalette;
- (void)layoutSubviews;
@end

@implementation CRLUILayoutContainerViewAccessibility

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = CRLUILayoutContainerViewAccessibility;
  [(CRLUILayoutContainerViewAccessibility *)&v8 layoutSubviews];
  if ([(CRLUILayoutContainerViewAccessibility *)self crlaxShouldPreventSettingSortPriorityForNavigationController])
  {
    _crlaxNavigationController = [(CRLUILayoutContainerViewAccessibility *)self _crlaxNavigationController];
    navigationBar = [_crlaxNavigationController navigationBar];
    [navigationBar _accessibilitySetSortPriority:0];

    toolbar = [_crlaxNavigationController toolbar];
    [toolbar _accessibilitySetSortPriority:0];

    _crlaxTopPalette = [(CRLUILayoutContainerViewAccessibility *)self _crlaxTopPalette];
    [_crlaxTopPalette _accessibilitySetSortPriority:0];

    _crlaxNavigationTransitionView = [(CRLUILayoutContainerViewAccessibility *)self _crlaxNavigationTransitionView];
    [_crlaxNavigationTransitionView _accessibilitySetSortPriority:0];
  }
}

- (UINavigationController)_crlaxNavigationController
{
  v3 = objc_opt_class();
  v4 = [(CRLUILayoutContainerViewAccessibility *)self crlaxValueForKey:@"delegate"];
  v5 = __CRLAccessibilityCastAsClass(v3, v4, 0, 0);

  return v5;
}

- (id)_crlaxTopPalette
{
  _crlaxNavigationController = [(CRLUILayoutContainerViewAccessibility *)self _crlaxNavigationController];
  v3 = [_crlaxNavigationController crlaxValueForKey:@"_topPalette"];

  return v3;
}

- (id)_crlaxNavigationTransitionView
{
  _crlaxNavigationController = [(CRLUILayoutContainerViewAccessibility *)self _crlaxNavigationController];
  v3 = [_crlaxNavigationController crlaxValueForKey:@"navigationTransitionView"];

  return v3;
}

@end