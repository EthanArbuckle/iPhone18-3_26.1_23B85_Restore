@interface AVTSelectableStickerSheetControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axMarkupCell:(id)cell indexPath:(id)path;
@end

@implementation AVTSelectableStickerSheetControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTSelectableStickerSheetController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"AVTSelectableStickerSheetController" hasInstanceMethod:@"avatarRecord" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTSelectableStickerSheetController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTSelectableStickerSheetController" hasInstanceMethod:@"isCameraItem:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"AVTSelectableStickerSheetController" hasInstanceMethod:@"stickerItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTUIStickerItem" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v21 = *MEMORY[0x29EDCA608];
  v19.receiver = self;
  v19.super_class = AVTSelectableStickerSheetControllerAccessibility;
  [(AVTSelectableStickerSheetControllerAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  v18 = 0;
  objc_opt_class();
  v3 = [(AVTSelectableStickerSheetControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityLocalizedString(@"collection.stickers.label");
  [v4 setAccessibilityLabel:v5];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  visibleCells = [v4 visibleCells];
  v7 = [visibleCells countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(visibleCells);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v4 indexPathForCell:v11];
        [(AVTSelectableStickerSheetControllerAccessibility *)self _axMarkupCell:v11 indexPath:v12];
      }

      v8 = [visibleCells countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x29EDCA608];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = AVTSelectableStickerSheetControllerAccessibility;
  pathCopy = path;
  v7 = [(AVTSelectableStickerSheetControllerAccessibility *)&v9 collectionView:view cellForItemAtIndexPath:pathCopy];
  [(AVTSelectableStickerSheetControllerAccessibility *)self _axMarkupCell:v7 indexPath:pathCopy, v9.receiver, v9.super_class];

  return v7;
}

- (void)_axMarkupCell:(id)cell indexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_initWeak(&location, self);
  v8 = [(AVTSelectableStickerSheetControllerAccessibility *)self safeArrayForKey:@"stickerItems"];
  v9 = [v8 objectAtIndex:{objc_msgSend(pathCopy, "item")}];

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[1] = MEMORY[0x29EDCA5F8];
  v15[2] = 3221225472;
  v15[3] = __76__AVTSelectableStickerSheetControllerAccessibility__axMarkupCell_indexPath___block_invoke;
  v15[4] = &unk_29F2A3A40;
  v15[7] = &v16;
  v15[5] = self;
  v10 = v9;
  v15[6] = v10;
  AXPerformSafeBlock();
  LODWORD(v9) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  if (v9 == 1)
  {
    [cellCopy _setAccessibilityLabelBlock:&__block_literal_global_0];
  }

  else
  {
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __76__AVTSelectableStickerSheetControllerAccessibility__axMarkupCell_indexPath___block_invoke_3;
    v13[3] = &unk_29F2A39F0;
    objc_copyWeak(v15, &location);
    v14 = pathCopy;
    [cellCopy _setAccessibilityLabelBlock:v13];
    [cellCopy _setAccessibilityHintBlock:&__block_literal_global_326];
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __76__AVTSelectableStickerSheetControllerAccessibility__axMarkupCell_indexPath___block_invoke_5;
    v11[3] = &unk_29F2A3B08;
    objc_copyWeak(&v12, &location);
    [cellCopy _setAccessibilityCustomContentBlock:v11];
    objc_destroyWeak(&v12);

    objc_destroyWeak(v15);
  }

  [cellCopy setIsAccessibilityElement:1];

  objc_destroyWeak(&location);
}

uint64_t __76__AVTSelectableStickerSheetControllerAccessibility__axMarkupCell_indexPath___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCameraItem:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

id __76__AVTSelectableStickerSheetControllerAccessibility__axMarkupCell_indexPath___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained safeArrayForKey:@"stickerItems"];
  v4 = [v3 count];
  if (v4 <= [*(a1 + 32) item])
  {
    v6 = 0;
  }

  else
  {
    v5 = [v3 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "item")}];
    v6 = [v5 safeValueForKey:@"localizedName"];
  }

  v7 = [WeakRetained safeValueForKey:@"avatarRecord"];
  v8 = [WeakRetained _axGetCurrentAvatarDescription];
  v9 = [WeakRetained _axGetCurrentAvatarRecord];
  if ([v7 isEqual:v9])
  {
    v10 = [WeakRetained _axGetCurrentAvatarDescription];

    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v11 = [MEMORY[0x29EDBDE08] descriptionForAvatarWithRecord:v7 includeVideoPrefix:0];

  [WeakRetained _axSetCurrentAvatarRecord:v7];
  [WeakRetained _axSetCurrentAvatarDescription:v11];
  v8 = v11;
LABEL_9:
  v12 = __UIAXStringForVariables();

  return v12;
}

id __76__AVTSelectableStickerSheetControllerAccessibility__axMarkupCell_indexPath___block_invoke_5(uint64_t a1)
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

@end