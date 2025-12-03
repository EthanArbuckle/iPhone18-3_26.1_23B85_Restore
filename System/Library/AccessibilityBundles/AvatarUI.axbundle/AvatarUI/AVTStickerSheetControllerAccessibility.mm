@interface AVTStickerSheetControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axMarkupCell:(id)cell indexPath:(id)path;
@end

@implementation AVTStickerSheetControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTStickerSheetController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"AVTStickerSheetController" hasInstanceMethod:@"avatarRecord" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTStickerSheetController" hasInstanceMethod:@"model" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTStickerSheetController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTStickerSheetModel" hasInstanceMethod:@"stickerItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTUIStickerItem" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v21 = *MEMORY[0x29EDCA608];
  v19.receiver = self;
  v19.super_class = AVTStickerSheetControllerAccessibility;
  [(AVTStickerSheetControllerAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  v18 = 0;
  objc_opt_class();
  v3 = [(AVTStickerSheetControllerAccessibility *)self safeValueForKey:@"collectionView"];
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
        [(AVTStickerSheetControllerAccessibility *)self _axMarkupCell:v11 indexPath:v12];
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
  v9.super_class = AVTStickerSheetControllerAccessibility;
  pathCopy = path;
  v7 = [(AVTStickerSheetControllerAccessibility *)&v9 collectionView:view cellForItemAtIndexPath:pathCopy];
  [(AVTStickerSheetControllerAccessibility *)self _axMarkupCell:v7 indexPath:pathCopy, v9.receiver, v9.super_class];

  return v7;
}

- (void)_axMarkupCell:(id)cell indexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __66__AVTStickerSheetControllerAccessibility__axMarkupCell_indexPath___block_invoke;
  v14[3] = &unk_29F2A39F0;
  objc_copyWeak(&v16, &location);
  v8 = pathCopy;
  v15 = v8;
  [cellCopy _setAccessibilityLabelBlock:v14];
  v9 = MEMORY[0x29EDCA5F8];
  v10 = 3221225472;
  v11 = __66__AVTStickerSheetControllerAccessibility__axMarkupCell_indexPath___block_invoke_2;
  v12 = &unk_29F2A3B08;
  objc_copyWeak(&v13, &location);
  [cellCopy _setAccessibilityCustomContentBlock:&v9];
  [cellCopy setIsAccessibilityElement:{1, v9, v10, v11, v12}];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

id __66__AVTStickerSheetControllerAccessibility__axMarkupCell_indexPath___block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [v2 safeValueForKey:@"model"];
  v4 = [v3 safeArrayForKey:@"stickerItems"];

  v5 = [v4 count];
  if (v5 <= [*(a1 + 32) item])
  {
    v7 = 0;
  }

  else
  {
    v6 = [v4 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "item")}];
    v7 = [v6 safeValueForKey:@"localizedName"];
  }

  v8 = [v2 safeValueForKey:@"avatarRecord"];
  v9 = [v2 _axGetCurrentAvatarDescription];
  v10 = [v2 _axGetCurrentAvatarRecord];
  if ([v8 isEqual:v10])
  {
    v11 = [v2 _axGetCurrentAvatarDescription];

    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v12 = [MEMORY[0x29EDBDE08] descriptionForAvatarWithRecord:v8 includeVideoPrefix:0];

  [v2 _axSetCurrentAvatarRecord:v8];
  [v2 _axSetCurrentAvatarDescription:v12];
  v9 = v12;
LABEL_9:
  v13 = __UIAXStringForVariables();

  return v13;
}

id __66__AVTStickerSheetControllerAccessibility__axMarkupCell_indexPath___block_invoke_2(uint64_t a1)
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