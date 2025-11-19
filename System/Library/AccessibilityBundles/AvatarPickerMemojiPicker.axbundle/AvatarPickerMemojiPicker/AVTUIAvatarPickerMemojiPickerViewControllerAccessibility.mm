@interface AVTUIAvatarPickerMemojiPickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axLabelForIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axMarkupCell:(id)a3 atIndexPath:(id)a4;
@end

@implementation AVTUIAvatarPickerMemojiPickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVTUIAvatarPickerMemojiPickerViewController" hasInstanceMethod:@"collectionView:didSelectItemAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"AVTUIAvatarPickerMemojiPickerViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTUIAvatarPickerMemojiPickerViewController" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTAvatarRecordDataSource" hasInstanceMethod:@"recordAtIndex:" withFullSignature:{"@", "q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v20 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = AVTUIAvatarPickerMemojiPickerViewControllerAccessibility;
  [(AVTUIAvatarPickerMemojiPickerViewControllerAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  v17 = 0;
  objc_opt_class();
  v3 = [(AVTUIAvatarPickerMemojiPickerViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 visibleCells];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v4 indexPathForCell:v10];
        [(AVTUIAvatarPickerMemojiPickerViewControllerAccessibility *)self _axMarkupCell:v10 atIndexPath:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)_axMarkupCell:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 setIsAccessibilityElement:1];
  v8 = [v6 accessibilityTraits];
  [v6 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | v8];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __86__AVTUIAvatarPickerMemojiPickerViewControllerAccessibility__axMarkupCell_atIndexPath___block_invoke;
  v10[3] = &unk_29F2A36E0;
  objc_copyWeak(&v12, &location);
  v9 = v7;
  v11 = v9;
  [v6 _setAccessibilityLabelBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

id __86__AVTUIAvatarPickerMemojiPickerViewControllerAccessibility__axMarkupCell_atIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _axLabelForIndexPath:*(a1 + 32)];

  return v3;
}

- (id)_axLabelForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  if (v5)
  {
    if (v5 < 1)
    {
      v8 = 0;
    }

    else
    {
      [(AVTUIAvatarPickerMemojiPickerViewControllerAccessibility *)self safeValueForKey:@"dataSource"];
      v10 = 0;
      v11 = &v10;
      v12 = 0x3032000000;
      v13 = __Block_byref_object_copy_;
      v14 = __Block_byref_object_dispose_;
      v6 = v15 = 0;
      AXPerformSafeBlock();
      v7 = v11[5];
      if (v7)
      {
        v8 = [MEMORY[0x29EDBDE08] descriptionForAvatarWithRecord:v7 includeVideoPrefix:0];
      }

      else
      {
        v8 = 0;
      }

      _Block_object_dispose(&v10, 8);
    }
  }

  else
  {
    v8 = accessibilityLocalizedString(@"newMemoji");
  }

  return v8;
}

uint64_t __81__AVTUIAvatarPickerMemojiPickerViewControllerAccessibility__axLabelForIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recordAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = AVTUIAvatarPickerMemojiPickerViewControllerAccessibility;
  v6 = a4;
  v7 = [(AVTUIAvatarPickerMemojiPickerViewControllerAccessibility *)&v9 collectionView:a3 cellForItemAtIndexPath:v6];
  [(AVTUIAvatarPickerMemojiPickerViewControllerAccessibility *)self _axMarkupCell:v7 atIndexPath:v6, v9.receiver, v9.super_class];

  return v7;
}

@end