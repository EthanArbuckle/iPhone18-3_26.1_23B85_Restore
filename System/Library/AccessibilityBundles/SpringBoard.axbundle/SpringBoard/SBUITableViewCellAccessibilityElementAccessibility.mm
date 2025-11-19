@interface SBUITableViewCellAccessibilityElementAccessibility
- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3;
@end

@implementation SBUITableViewCellAccessibilityElementAccessibility

- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3
{
  v4 = a3;
  v5 = [(SBUITableViewCellAccessibilityElementAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbassistantvie.isa)];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 safeValueForKey:@"_tableView"];
    v8 = [(SBUITableViewCellAccessibilityElementAccessibility *)self accessibilityContainer];
    v9 = [v8 isScrollEnabled];

    if ((v9 & 1) == 0)
    {
      v11 = [(SBUITableViewCellAccessibilityElementAccessibility *)self safeValueForKey:@"tableViewCell"];
      [v11 bounds];
      [v7 convertRect:v11 fromView:?];
      [v7 scrollRectToVisible:0 animated:?];
      v14 = MEMORY[0x29EDCA5F8];
      v15 = 3221225472;
      v16 = __92__SBUITableViewCellAccessibilityElementAccessibility_accessibilityScrollToVisibleWithChild___block_invoke;
      v17 = &unk_29F2FBA40;
      v18 = self;
      AXPerformBlockAsynchronouslyOnMainThread();

      v10 = 1;
      goto LABEL_6;
    }
  }

  v13.receiver = self;
  v13.super_class = SBUITableViewCellAccessibilityElementAccessibility;
  v10 = [(SBUITableViewCellAccessibilityElementAccessibility *)&v13 accessibilityScrollToVisibleWithChild:v4];
LABEL_6:

  return v10;
}

@end