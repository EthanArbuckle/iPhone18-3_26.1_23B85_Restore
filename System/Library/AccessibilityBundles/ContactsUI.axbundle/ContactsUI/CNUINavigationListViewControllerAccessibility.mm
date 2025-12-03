@interface CNUINavigationListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityToggleItemForCell:(id)cell;
@end

@implementation CNUINavigationListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNUINavigationListViewController" hasInstanceMethod:@"itemAtIndexPath:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"CNUINavigationListViewController" hasInstanceMethod:@"navigationListView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNUINavigationListViewController" hasInstanceMethod:@"toggleItem:" withFullSignature:{"v", "@", 0}];
}

- (BOOL)_accessibilityToggleItemForCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  v5 = [(CNUINavigationListViewControllerAccessibility *)self safeValueForKey:@"navigationListView"];
  v6 = __UIAccessibilityCastAsClass();

  if (v6)
  {
    v7 = [cellCopy safeBoolForKey:@"accessoryControlExpanded"];
    v10 = MEMORY[0x29EDCA5F8];
    v11 = v6;
    v12 = cellCopy;
    AXPerformSafeBlock();
    v8 = v7 ^ [v12 safeBoolForKey:{@"accessoryControlExpanded", v10, 3221225472, __81__CNUINavigationListViewControllerAccessibility__accessibilityToggleItemForCell___block_invoke, &unk_29F2B5BD8}];
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

void __81__CNUINavigationListViewControllerAccessibility__accessibilityToggleItemForCell___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) indexPathForCell:*(a1 + 40)];
  v2 = [*(a1 + 48) itemAtIndexPath:v3];
  [*(a1 + 48) toggleItem:v2];
}

@end