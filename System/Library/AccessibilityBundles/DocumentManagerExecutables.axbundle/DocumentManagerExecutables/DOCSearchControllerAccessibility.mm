@interface DOCSearchControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)searchBarTextDidEndEditing:(id)editing;
@end

@implementation DOCSearchControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCSearchController" hasInstanceMethod:@"resultCollectionViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionViewController" isKindOfClass:@"UIViewController"];
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  AXPerformSafeBlock();
  objc_opt_class();
  v5 = [(DOCSearchControllerAccessibility *)self safeValueForKey:@"resultCollectionViewController"];
  v6 = __UIAccessibilityCastAsClass();

  view = [v6 view];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], view);
}

id __63__DOCSearchControllerAccessibility_searchBarTextDidEndEditing___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = DOCSearchControllerAccessibility;
  return objc_msgSendSuper2(&v3, sel_searchBarTextDidEndEditing_, v1);
}

@end