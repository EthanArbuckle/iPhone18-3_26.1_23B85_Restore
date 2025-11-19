@interface TabCollectionViewManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)movePlaceholder:(id)a3 overTabItem:(id)a4;
- (void)tabCollectionView:(id)a3 closeItem:(id)a4;
- (void)tabCollectionView:(id)a3 didSelectItem:(id)a4;
@end

@implementation TabCollectionViewManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TabCollectionViewManager" hasInstanceMethod:@"tabCollectionView:didSelectItem:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"TabCollectionViewManager" hasInstanceMethod:@"tabCollectionView:closeItem:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"TabCollectionViewManager" hasInstanceMethod:@"_indexToInsertPlaceholderAtTabItem:" withFullSignature:{"Q", "@", 0}];
  [v3 validateClass:@"TabCollectionViewManager" hasInstanceMethod:@"movePlaceholder:overTabItem:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"TabCollectionViewManager" hasInstanceVariable:@"_dataSource" withType:"<TabCollectionViewManagerDataSource>"];
  [v3 validateClass:@"TabCollectionViewManager" hasInstanceVariable:@"_placeholderItemIndex" withType:"Q"];
}

- (void)tabCollectionView:(id)a3 didSelectItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TabCollectionViewManagerAccessibility *)self safeValueForKeyPath:@"_dataSource.activeTabDocument"];
  v9.receiver = self;
  v9.super_class = TabCollectionViewManagerAccessibility;
  [(TabCollectionViewManagerAccessibility *)&v9 tabCollectionView:v7 didSelectItem:v6];

  if (v8 != v6)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAE8]);
  }
}

- (void)tabCollectionView:(id)a3 closeItem:(id)a4
{
  v4.receiver = self;
  v4.super_class = TabCollectionViewManagerAccessibility;
  [(TabCollectionViewManagerAccessibility *)&v4 tabCollectionView:a3 closeItem:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAE8]);
}

- (void)movePlaceholder:(id)a3 overTabItem:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v25 = self;
  v9 = v7;
  v26 = v9;
  AXPerformSafeBlock();
  v10 = v29[3];

  _Block_object_dispose(&v28, 8);
  v20.receiver = self;
  v20.super_class = TabCollectionViewManagerAccessibility;
  [(TabCollectionViewManagerAccessibility *)&v20 movePlaceholder:v6 overTabItem:v9];
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