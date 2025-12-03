@interface SBUITableViewCellAccessibilityElementAccessibility
- (BOOL)accessibilityScrollToVisibleWithChild:(id)child;
@end

@implementation SBUITableViewCellAccessibilityElementAccessibility

- (BOOL)accessibilityScrollToVisibleWithChild:(id)child
{
  childCopy = child;
  v5 = [(SBUITableViewCellAccessibilityElementAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbassistantvie.isa)];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 safeValueForKey:@"_tableView"];
    accessibilityContainer = [(SBUITableViewCellAccessibilityElementAccessibility *)self accessibilityContainer];
    isScrollEnabled = [accessibilityContainer isScrollEnabled];

    if ((isScrollEnabled & 1) == 0)
    {
      v11 = [(SBUITableViewCellAccessibilityElementAccessibility *)self safeValueForKey:@"tableViewCell"];
      [v11 bounds];
      [v7 convertRect:v11 fromView:?];
      [v7 scrollRectToVisible:0 animated:?];
      v14 = MEMORY[0x29EDCA5F8];
      v15 = 3221225472;
      v16 = __92__SBUITableViewCellAccessibilityElementAccessibility_accessibilityScrollToVisibleWithChild___block_invoke;
      v17 = &unk_29F2FBA40;
      selfCopy = self;
      AXPerformBlockAsynchronouslyOnMainThread();

      v10 = 1;
      goto LABEL_6;
    }
  }

  v13.receiver = self;
  v13.super_class = SBUITableViewCellAccessibilityElementAccessibility;
  v10 = [(SBUITableViewCellAccessibilityElementAccessibility *)&v13 accessibilityScrollToVisibleWithChild:childCopy];
LABEL_6:

  return v10;
}

@end