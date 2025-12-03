@interface TabCollectionViewManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)movePlaceholder:(id)placeholder overTabItem:(id)item;
- (void)tabCollectionView:(id)view closeItem:(id)item;
- (void)tabCollectionView:(id)view didSelectItem:(id)item;
@end

@implementation TabCollectionViewManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TabCollectionViewManager" hasInstanceMethod:@"tabCollectionView:didSelectItem:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"TabCollectionViewManager" hasInstanceMethod:@"tabCollectionView:closeItem:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"TabCollectionViewManager" hasInstanceMethod:@"_indexToInsertPlaceholderAtTabItem:" withFullSignature:{"Q", "@", 0}];
  [validationsCopy validateClass:@"TabCollectionViewManager" hasInstanceMethod:@"movePlaceholder:overTabItem:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"TabCollectionViewManager" hasInstanceVariable:@"_dataSource" withType:"<TabCollectionViewManagerDataSource>"];
  [validationsCopy validateClass:@"TabCollectionViewManager" hasInstanceVariable:@"_placeholderItemIndex" withType:"Q"];
}

- (void)tabCollectionView:(id)view didSelectItem:(id)item
{
  itemCopy = item;
  viewCopy = view;
  v8 = [(TabCollectionViewManagerAccessibility *)self safeValueForKeyPath:@"_dataSource.activeTabDocument"];
  v9.receiver = self;
  v9.super_class = TabCollectionViewManagerAccessibility;
  [(TabCollectionViewManagerAccessibility *)&v9 tabCollectionView:viewCopy didSelectItem:itemCopy];

  if (v8 != itemCopy)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAE8]);
  }
}

- (void)tabCollectionView:(id)view closeItem:(id)item
{
  v4.receiver = self;
  v4.super_class = TabCollectionViewManagerAccessibility;
  [(TabCollectionViewManagerAccessibility *)&v4 tabCollectionView:view closeItem:item];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAE8]);
}

- (void)movePlaceholder:(id)placeholder overTabItem:(id)item
{
  placeholderCopy = placeholder;
  itemCopy = item;
  v8 = [(TabCollectionViewManagerAccessibility *)self safeUnsignedIntegerForKey:@"_placeholderItemIndex"];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v21 = MEMORY[0x29EDCA5F8];
  v22 = 3221225472;
  v23 = __69__TabCollectionViewManagerAccessibility_movePlaceholder_overTabItem___block_invoke;
  v24 = &unk_29F2D7B70;
  v27 = &v28;
  selfCopy = self;
  v9 = itemCopy;
  v26 = v9;
  AXPerformSafeBlock();
  v10 = v29[3];

  _Block_object_dispose(&v28, 8);
  v20.receiver = self;
  v20.super_class = TabCollectionViewManagerAccessibility;
  [(TabCollectionViewManagerAccessibility *)&v20 movePlaceholder:placeholderCopy overTabItem:v9];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v9 safeStringForKey:@"title"];
    if (![v11 length])
    {
      v12 = MEMORY[0x29EDBA078];
      v13 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v10 + 1];
      v14 = [v12 localizedStringFromNumber:v13 numberStyle:6];

      v15 = accessibilityLocalizedString(@"tab.position");
      v16 = AXCFormattedString();

      v11 = v16;
    }

    if (v8 <= v10)
    {
      v17 = @"moved.after.tab";
    }

    else
    {
      v17 = @"moved.before.tab";
    }

    v18 = accessibilityLocalizedString(v17);
    v19 = AXCFormattedString();

    LODWORD(v18) = *MEMORY[0x29EDC7EA8];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v19);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    UIAccessibilityPostNotification(v18, *MEMORY[0x29EDBDAA8]);
  }
}

uint64_t __69__TabCollectionViewManagerAccessibility_movePlaceholder_overTabItem___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _indexToInsertPlaceholderAtTabItem:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end