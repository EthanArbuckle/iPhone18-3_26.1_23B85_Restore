@interface MessageListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)shelfButtonItem;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetCategoryButtonsTrait;
- (void)_updateBackButtonImageWithCount:(unint64_t)count;
@end

@implementation MessageListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MessageListViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"MUIMessageListViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUIMessageListViewController" hasInstanceMethod:@"filterViewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MessageListViewController" hasInstanceMethod:@"_updateBackButtonImageWithCount:" withFullSignature:{"v", "Q", 0}];
  [validationsCopy validateClass:@"MessageListViewController" hasInstanceMethod:@"scene" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MessageListViewController" hasInstanceMethod:@"_updateToolbarButtons" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MessageListViewController" hasInstanceMethod:@"shelfButtonItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailMainScene" hasInstanceMethod:@"splitViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MessageListViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"MessageListViewController" hasInstanceMethod:@"filterButtonItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MessageListViewController" hasInstanceMethod:@"filterCriteriaButtonItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MessageListViewController" hasInstanceMethod:@"filterPickerControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUIMailboxFilterViewModel" hasInstanceMethod:@"selectedFilters" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUIMailboxFilter" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFMailboxFilterBarButtonItem" hasInstanceMethod:@"isFilterEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MUIMessageListViewController" hasInstanceMethod:@"bucketsViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailUI.BucketsViewController" hasSwiftField:@"collectionView" withSwiftType:"Optional<UICollectionView>"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = MessageListViewControllerAccessibility;
  [(MessageListViewControllerAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  location[1] = MEMORY[0x29EDCA5F8];
  location[2] = 3221225472;
  location[3] = __84__MessageListViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  location[4] = &unk_29F2D3E70;
  location[5] = self;
  AXPerformSafeBlock();
  v3 = [(MessageListViewControllerAccessibility *)self safeValueForKey:@"filterButtonItem"];
  objc_initWeak(location, v3);
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityLocalizedString(@"toggle.filtering");
  [v3 setAccessibilityLabel:v4];

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __84__MessageListViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v9[3] = &unk_29F2D4390;
  objc_copyWeak(&v10, location);
  [v3 setAccessibilityValueBlock:v9];
  objc_initWeak(&from, self);
  v5 = [(MessageListViewControllerAccessibility *)self safeValueForKey:@"filterCriteriaButtonItem"];
  [v5 setIsAccessibilityElement:1];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __84__MessageListViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v6[3] = &unk_29F2D4390;
  objc_copyWeak(&v7, &from);
  [v5 _setAccessibilityLabelBlock:v6];
  [(MessageListViewControllerAccessibility *)self _axSetCategoryButtonsTrait];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&from);
  objc_destroyWeak(&v10);
  objc_destroyWeak(location);
}

id __84__MessageListViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeBoolForKey:@"filterEnabled"])
  {
    v2 = @"toggle.filtering.on";
  }

  else
  {
    v2 = @"toggle.filtering.off";
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

id __84__MessageListViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"filterViewModel"];

  v3 = [v2 safeArrayForKey:@"selectedFilters"];
  v4 = [v3 axMapObjectsUsingBlock:&__block_literal_global_11];
  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"toggle.filtering.choose");
  v7 = MEMORY[0x29C2DF8D0](v4);
  v8 = [v5 stringWithFormat:v6, v7];

  return v8;
}

- (void)_updateBackButtonImageWithCount:(unint64_t)count
{
  v13.receiver = self;
  v13.super_class = MessageListViewControllerAccessibility;
  [(MessageListViewControllerAccessibility *)&v13 _updateBackButtonImageWithCount:?];
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  navigationItem = [v4 navigationItem];
  title = [navigationItem title];

  if (count && title)
  {
    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityLocalizedString(@"unread.count");
    navigationItem3 = [v7 localizedStringWithFormat:v8, count];

    backBarButtonItem2 = __AXStringForVariables();
    navigationItem2 = [v4 navigationItem];
    backBarButtonItem = [navigationItem2 backBarButtonItem];
    [backBarButtonItem setAccessibilityLabel:backBarButtonItem2];
  }

  else
  {
    navigationItem3 = [v4 navigationItem];
    backBarButtonItem2 = [navigationItem3 backBarButtonItem];
    [backBarButtonItem2 setAccessibilityLabel:0];
  }
}

- (id)shelfButtonItem
{
  v5.receiver = self;
  v5.super_class = MessageListViewControllerAccessibility;
  shelfButtonItem = [(MessageListViewControllerAccessibility *)&v5 shelfButtonItem];
  v3 = accessibilityLocalizedString(@"app.shelf.button");
  [shelfButtonItem setAccessibilityLabel:v3];

  return shelfButtonItem;
}

- (void)_axSetCategoryButtonsTrait
{
  v22 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v20 = 0;
  objc_opt_class();
  v4 = [(MessageListViewControllerAccessibility *)self safeValueForKey:@"bucketsViewController"];
  v5 = [v4 safeSwiftValueForKey:@"collectionView"];
  v6 = __UIAccessibilityCastAsClass();

  subviews = [v6 subviews];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [subviews countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(subviews);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v14[0] = MEMORY[0x29EDCA5F8];
        v14[1] = 3221225472;
        v14[2] = __68__MessageListViewControllerAccessibility__axSetCategoryButtonsTrait__block_invoke;
        v14[3] = &unk_29F2D43D8;
        v15 = v3;
        [v12 setAccessibilityTraitsBlock:v14];
      }

      v9 = [subviews countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t __68__MessageListViewControllerAccessibility__axSetCategoryButtonsTrait__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) isEditing];
  v2 = *MEMORY[0x29EDC7FA8];
  if (!v1)
  {
    v2 = 0;
  }

  return *MEMORY[0x29EDC7F70] | v2;
}

@end