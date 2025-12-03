@interface AVTUIAvatarPickerMemojiPickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axLabelForIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axMarkupCell:(id)cell atIndexPath:(id)path;
@end

@implementation AVTUIAvatarPickerMemojiPickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTUIAvatarPickerMemojiPickerViewController" hasInstanceMethod:@"collectionView:didSelectItemAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"AVTUIAvatarPickerMemojiPickerViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTUIAvatarPickerMemojiPickerViewController" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarRecordDataSource" hasInstanceMethod:@"recordAtIndex:" withFullSignature:{"@", "q", 0}];
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
  visibleCells = [v4 visibleCells];
  v6 = [visibleCells countByEnumeratingWithState:&v13 objects:v19 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v4 indexPathForCell:v10];
        [(AVTUIAvatarPickerMemojiPickerViewControllerAccessibility *)self _axMarkupCell:v10 atIndexPath:v11];
      }

      v7 = [visibleCells countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)_axMarkupCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  [cellCopy setIsAccessibilityElement:1];
  accessibilityTraits = [cellCopy accessibilityTraits];
  [cellCopy setAccessibilityTraits:*MEMORY[0x29EDC7F70] | accessibilityTraits];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __86__AVTUIAvatarPickerMemojiPickerViewControllerAccessibility__axMarkupCell_atIndexPath___block_invoke;
  v10[3] = &unk_29F2A36E0;
  objc_copyWeak(&v12, &location);
  v9 = pathCopy;
  v11 = v9;
  [cellCopy _setAccessibilityLabelBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

id __86__AVTUIAvatarPickerMemojiPickerViewControllerAccessibility__axMarkupCell_atIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _axLabelForIndexPath:*(a1 + 32)];

  return v3;
}

- (id)_axLabelForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = AVTUIAvatarPickerMemojiPickerViewControllerAccessibility;
  pathCopy = path;
  v7 = [(AVTUIAvatarPickerMemojiPickerViewControllerAccessibility *)&v9 collectionView:view cellForItemAtIndexPath:pathCopy];
  [(AVTUIAvatarPickerMemojiPickerViewControllerAccessibility *)self _axMarkupCell:v7 atIndexPath:pathCopy, v9.receiver, v9.super_class];

  return v7;
}

@end