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
    v3 = [(CRLUILayoutContainerViewAccessibility *)self _crlaxNavigationController];
    v4 = [v3 navigationBar];
    [v4 _accessibilitySetSortPriority:0];

    v5 = [v3 toolbar];
    [v5 _accessibilitySetSortPriority:0];

    v6 = [(CRLUILayoutContainerViewAccessibility *)self _crlaxTopPalette];
    [v6 _accessibilitySetSortPriority:0];

    v7 = [(CRLUILayoutContainerViewAccessibility *)self _crlaxNavigationTransitionView];
    [v7 _accessibilitySetSortPriority:0];
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
  v2 = [(CRLUILayoutContainerViewAccessibility *)self _crlaxNavigationController];
  v3 = [v2 crlaxValueForKey:@"_topPalette"];

  return v3;
}

- (id)_crlaxNavigationTransitionView
{
  v2 = [(CRLUILayoutContainerViewAccessibility *)self _crlaxNavigationController];
  v3 = [v2 crlaxValueForKey:@"navigationTransitionView"];

  return v3;
}

@end