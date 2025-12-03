@interface AVTPoseSelectionGridViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axMarkupCell:(id)cell atIndexPath:(id)path;
@end

@implementation AVTPoseSelectionGridViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTPoseSelectionGridViewController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"AVTPoseSelectionGridViewController" hasInstanceMethod:@"configurationForIndex:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"AVTPoseSelectionGridViewController" hasInstanceMethod:@"poseCollectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTPoseSelectionGridViewController" hasInstanceMethod:@"cameraCellView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTPoseSelectionGridViewController" hasInstanceMethod:@"avatarRecord" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v20 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = AVTPoseSelectionGridViewControllerAccessibility;
  [(AVTPoseSelectionGridViewControllerAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  v17 = 0;
  objc_opt_class();
  v3 = [(AVTPoseSelectionGridViewControllerAccessibility *)self safeValueForKey:@"poseCollectionView"];
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
        [(AVTPoseSelectionGridViewControllerAccessibility *)self _axMarkupCell:v10 atIndexPath:v11];
      }

      v7 = [visibleCells countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = AVTPoseSelectionGridViewControllerAccessibility;
  pathCopy = path;
  v7 = [(AVTPoseSelectionGridViewControllerAccessibility *)&v9 collectionView:view cellForItemAtIndexPath:pathCopy];
  [(AVTPoseSelectionGridViewControllerAccessibility *)self _axMarkupCell:v7 atIndexPath:pathCopy, v9.receiver, v9.super_class];

  return v7;
}

- (void)_axMarkupCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  [cellCopy setIsAccessibilityElement:1];
  accessibilityTraits = [cellCopy accessibilityTraits];
  [cellCopy setAccessibilityTraits:*MEMORY[0x29EDC7F70] | accessibilityTraits];
  v9 = [(AVTPoseSelectionGridViewControllerAccessibility *)self safeValueForKey:@"cameraCellView"];
  if (v9 && (v10 = v9, v11 = [pathCopy item], v10, v11))
  {
    location = 0;
    p_location = &location;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__0;
    v31 = __Block_byref_object_dispose__0;
    v32 = 0;
    v24[1] = MEMORY[0x29EDCA5F8];
    v24[2] = 3221225472;
    v24[3] = __77__AVTPoseSelectionGridViewControllerAccessibility__axMarkupCell_atIndexPath___block_invoke;
    v24[4] = &unk_29F2A3A40;
    v26 = &location;
    v24[5] = self;
    v25 = pathCopy;
    AXPerformSafeBlock();
    v12 = p_location[5];

    _Block_object_dispose(&location, 8);
    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 3221225472;
    v22[2] = __77__AVTPoseSelectionGridViewControllerAccessibility__axMarkupCell_atIndexPath___block_invoke_2;
    v22[3] = &unk_29F2A39F0;
    objc_copyWeak(v24, &location);
    v13 = v12;
    v23 = v13;
    [cellCopy _setAccessibilityLabelBlock:v22];
    v14 = MEMORY[0x29EDB8D80];
    localizedName = [v13 localizedName];
    v16 = [v14 axArrayByIgnoringNilElementsWithCount:{1, localizedName}];
    [cellCopy setAccessibilityUserInputLabels:v16];

    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 3221225472;
    v20[2] = __77__AVTPoseSelectionGridViewControllerAccessibility__axMarkupCell_atIndexPath___block_invoke_3;
    v20[3] = &unk_29F2A3B08;
    objc_copyWeak(&v21, &location);
    [cellCopy _setAccessibilityCustomContentBlock:v20];
    objc_destroyWeak(&v21);

    objc_destroyWeak(v24);
    objc_destroyWeak(&location);
  }

  else
  {
    [cellCopy _setAccessibilityLabelBlock:&__block_literal_global_1];
    accessibilityTraits2 = [cellCopy accessibilityTraits];
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 3221225472;
    v18[2] = __77__AVTPoseSelectionGridViewControllerAccessibility__axMarkupCell_atIndexPath___block_invoke_5;
    v18[3] = &unk_29F2A3BB8;
    objc_copyWeak(v19, &location);
    v19[1] = accessibilityTraits2;
    [cellCopy _setAccessibilityTraitsBlock:v18];
    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }
}

uint64_t __77__AVTPoseSelectionGridViewControllerAccessibility__axMarkupCell_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) configurationForIndex:{objc_msgSend(*(a1 + 40), "item")}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

id __77__AVTPoseSelectionGridViewControllerAccessibility__axMarkupCell_atIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained safeValueForKey:@"avatarRecord"];
  v4 = [WeakRetained _axGetCachedAvatarDescription];
  v5 = [WeakRetained _axGetCachedAvatarRecord];
  v6 = [v5 isEqual:v3];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x29EDBDE08] descriptionForAvatarWithRecord:v3 includeVideoPrefix:0];

    [WeakRetained _axSetCachedAvatarRecord:v3];
    [WeakRetained _axSetCachedAvatarDescription:v7];
    v4 = v7;
  }

  v8 = [*(a1 + 32) localizedName];
  v9 = __UIAXStringForVariables();

  return v9;
}

id __77__AVTPoseSelectionGridViewControllerAccessibility__axMarkupCell_atIndexPath___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"avatarRecord"];
  if (v2)
  {
    v3 = [MEMORY[0x29EDBDE08] customContentForAvatarWithRecord:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __77__AVTPoseSelectionGridViewControllerAccessibility__axMarkupCell_atIndexPath___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"selectedStickerConfiguration"];

  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = v4 & ~*MEMORY[0x29EDC7FC0];
  }

  else
  {
    v5 = *MEMORY[0x29EDC7FC0] | v4;
  }

  return v5;
}

@end