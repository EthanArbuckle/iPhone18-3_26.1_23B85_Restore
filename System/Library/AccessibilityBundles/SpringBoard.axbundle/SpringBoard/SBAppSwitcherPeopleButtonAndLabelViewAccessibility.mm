@interface SBAppSwitcherPeopleButtonAndLabelViewAccessibility
- (BOOL)accessibilityScrollToVisible;
@end

@implementation SBAppSwitcherPeopleButtonAndLabelViewAccessibility

- (BOOL)accessibilityScrollToVisible
{
  v3 = [(SBAppSwitcherPeopleButtonAndLabelViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  [(SBAppSwitcherPeopleButtonAndLabelViewAccessibility *)self bounds];
  [v3 convertRect:self fromView:?];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v8 = CGRectGetMaxX(v11) + v11.size.width;
  [v3 visibleBounds];
  if (v8 <= CGRectGetMaxX(v12))
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v9 = CGRectGetMinX(v13) - width;
    [v3 visibleBounds];
    if (v9 < CGRectGetMinX(v14))
    {
      x = x - width;
    }
  }

  else
  {
    x = x + width;
  }

  [v3 scrollRectToVisible:1 animated:{x, y, width, height}];

  return 1;
}

@end