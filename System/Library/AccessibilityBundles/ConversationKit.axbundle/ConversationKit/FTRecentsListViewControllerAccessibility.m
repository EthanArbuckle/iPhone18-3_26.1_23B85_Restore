@interface FTRecentsListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActionsForIndexPath:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axPrepareHeaderView:(id)a3;
- (void)accessibilityPrepareHeaderView:(id)a3;
@end

@implementation FTRecentsListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FTRecentsListViewController" hasInstanceMethod:@"accessibilityPrepareHeaderView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"FTRecentsListViewController" hasSwiftField:@"collectionView" withSwiftType:"UICollectionView"];
  [v3 validateClass:@"FTRecentsListViewController" hasInstanceMethod:@"collectionView:contextMenuConfigurationForItemAtIndexPath:point:" withFullSignature:{"@", "@", "@", "{CGPoint=dd}", 0}];
  [v3 validateClass:@"FTRecentsListViewController" hasInstanceMethod:@"accessibilityCustomActionsForIndexPath:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"UIContextMenuConfiguration" hasProperty:@"actionProvider" withType:"@?"];
  [v3 validateClass:@"UIAction" hasProperty:@"handler" withType:"@?"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v13.receiver = self;
  v13.super_class = FTRecentsListViewControllerAccessibility;
  [(FTRecentsListViewControllerAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(FTRecentsListViewControllerAccessibility *)self safeSwiftValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityLocalizedString(@"recentList.label");
  [v4 setAccessibilityLabel:v5];

  v6 = [v4 numberOfSections];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    v9 = *MEMORY[0x29EDC8048];
    do
    {
      v10 = [MEMORY[0x29EDB9FE0] indexPathForRow:0 inSection:v8];
      objc_opt_class();
      v11 = [v4 supplementaryViewForElementKind:v9 atIndexPath:v10];
      v12 = __UIAccessibilityCastAsClass();

      [(FTRecentsListViewControllerAccessibility *)self _axPrepareHeaderView:v12];
      ++v8;
    }

    while (v7 != v8);
  }
}

- (void)accessibilityPrepareHeaderView:(id)a3
{
  v5.receiver = self;
  v5.super_class = FTRecentsListViewControllerAccessibility;
  v4 = a3;
  [(FTRecentsListViewControllerAccessibility *)&v5 accessibilityPrepareHeaderView:v4];
  [(FTRecentsListViewControllerAccessibility *)self _axPrepareHeaderView:v4, v5.receiver, v5.super_class];
}

- (void)_axPrepareHeaderView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 contentConfiguration];
  v5 = __UIAccessibilityCastAsClass();

  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  v6 = [v5 text];
  [v3 setAccessibilityLabel:v6];
}

- (id)accessibilityCustomActionsForIndexPath:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = [MEMORY[0x29EDB8DE8] array];
  objc_opt_class();
  v5 = [(FTRecentsListViewControllerAccessibility *)self safeSwiftValueForKey:@"collectionView"];
  v6 = __UIAccessibilityCastAsClass();

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[5] = MEMORY[0x29EDCA5F8];
  v15[6] = 3221225472;
  v15[7] = __83__FTRecentsListViewControllerAccessibility_accessibilityCustomActionsForIndexPath___block_invoke;
  v15[8] = &unk_29F2B7C40;
  v15[12] = &v16;
  v15[9] = self;
  v7 = v6;
  v15[10] = v7;
  v8 = v4;
  v15[11] = v8;
  AXPerformSafeBlock();
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);
  v10 = [v9 safeValueForKey:@"actionProvider"];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10[2](v10, MEMORY[0x29EDB8E90]);
      v12 = [v11 children];
      v15[0] = MEMORY[0x29EDCA5F8];
      v15[1] = 3221225472;
      v15[2] = __83__FTRecentsListViewControllerAccessibility_accessibilityCustomActionsForIndexPath___block_invoke_2;
      v15[3] = &unk_29F2B7C90;
      v15[4] = &v22;
      [v12 enumerateObjectsUsingBlock:v15];
    }
  }

  v13 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v13;
}

uint64_t __83__FTRecentsListViewControllerAccessibility_accessibilityCustomActionsForIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView:*(a1 + 40) contextMenuConfigurationForItemAtIndexPath:*(a1 + 48) point:{*MEMORY[0x29EDB90B8], *(MEMORY[0x29EDB90B8] + 8)}];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

void __83__FTRecentsListViewControllerAccessibility_accessibilityCustomActionsForIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0;
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v5 = [v4 safeValueForKey:@"handler"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = objc_alloc(MEMORY[0x29EDC78E0]);
        v7 = [v4 title];
        v8 = [v4 image];
        v10[0] = MEMORY[0x29EDCA5F8];
        v10[1] = 3221225472;
        v10[2] = __83__FTRecentsListViewControllerAccessibility_accessibilityCustomActionsForIndexPath___block_invoke_3;
        v10[3] = &unk_29F2B7C68;
        v12 = v5;
        v11 = v4;
        v9 = [v6 initWithName:v7 image:v8 actionHandler:v10];

        [*(*(*(a1 + 32) + 8) + 40) addObject:v9];
      }
    }
  }
}

@end