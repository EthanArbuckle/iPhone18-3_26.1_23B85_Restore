@interface DOCSearchControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
@end

@implementation DOCSearchControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DocumentManagerExecutables.DOCSearchController" hasInstanceMethod:@"resultCollectionViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionViewController" isKindOfClass:@"UIViewController"];
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v4 = a3;
  AXPerformSafeBlock();
  objc_opt_class();
  v5 = [(DOCSearchControllerAccessibility *)self safeValueForKey:@"resultCollectionViewController"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 view];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v7);
}

id __63__DOCSearchControllerAccessibility_searchBarTextDidEndEditing___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = DOCSearchControllerAccessibility;
  return objc_msgSendSuper2(&v3, sel_searchBarTextDidEndEditing_, v1);
}

@end