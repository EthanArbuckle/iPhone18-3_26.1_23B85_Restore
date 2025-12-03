@interface NavControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)configureToolbar:(id)toolbar;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
@end

@implementation NavControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_UIDocumentListController"];
  [validationsCopy validateClass:@"_UIDocumentListController" hasInstanceVariable:@"_containerViewController" withType:"_UIDocumentPickerContainerViewController"];
  [validationsCopy validateClass:@"_UIDocumentPickerContainerViewController" hasInstanceMethod:@"sortView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UIDocumentPickerSortOrderView" hasInstanceMethod:@"listModeToggle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NavController" hasInstanceMethod:@"getTopDocumentListController" withFullSignature:{"@", 0}];
}

- (void)configureToolbar:(id)toolbar
{
  v8.receiver = self;
  v8.super_class = NavControllerAccessibility;
  toolbarCopy = toolbar;
  [(NavControllerAccessibility *)&v8 configureToolbar:toolbarCopy];
  v4 = [toolbarCopy safeValueForKey:{@"_containerViewController", v8.receiver, v8.super_class}];

  v5 = [v4 safeValueForKey:@"sortView"];
  v6 = [v5 safeValueForKey:@"listModeToggle"];

  v7 = accessibilityLocalizedString(@"listmode.label");
  [v6 setAccessibilityLabel:v7];
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  v7 = MEMORY[0x29EDCA5F8];
  v8 = editingCopy;
  v5 = editingCopy;
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  v6 = _AXTableOrCollectionView(self);
  [v6 _accessibilitySetRetainedValue:MEMORY[0x29EDB8EB0] forKey:{_AXTableOrCollectionViewHideElementsKey, v7, 3221225472, __59__NavControllerAccessibility_searchBarTextDidBeginEditing___block_invoke, &unk_29F324068}];
}

id __59__NavControllerAccessibility_searchBarTextDidBeginEditing___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = NavControllerAccessibility;
  return objc_msgSendSuper2(&v3, sel_searchBarTextDidBeginEditing_, v1);
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  v7 = MEMORY[0x29EDCA5F8];
  v8 = editingCopy;
  v5 = editingCopy;
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  v6 = _AXTableOrCollectionView(self);
  [v6 _accessibilitySetRetainedValue:0 forKey:{_AXTableOrCollectionViewHideElementsKey, v7, 3221225472, __57__NavControllerAccessibility_searchBarTextDidEndEditing___block_invoke, &unk_29F324068}];
}

id __57__NavControllerAccessibility_searchBarTextDidEndEditing___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = NavControllerAccessibility;
  return objc_msgSendSuper2(&v3, sel_searchBarTextDidEndEditing_, v1);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  changeCopy = change;
  v6 = changeCopy;
  v7 = barCopy;
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

id __54__NavControllerAccessibility_searchBar_textDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 48);
  v4.super_class = NavControllerAccessibility;
  return objc_msgSendSuper2(&v4, sel_searchBar_textDidChange_, v2, v1);
}

@end