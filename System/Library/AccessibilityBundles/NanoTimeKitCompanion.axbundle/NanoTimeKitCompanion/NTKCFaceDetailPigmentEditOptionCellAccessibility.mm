@interface NTKCFaceDetailPigmentEditOptionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateCell:(id)cell atIndexPath:(id)path;
@end

@implementation NTKCFaceDetailPigmentEditOptionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKCFaceDetailPigmentEditOptionCell" isKindOfClass:@"NTKCFaceDetailEditOptionCell"];
  [validationsCopy validateClass:@"NTKCFaceDetailEditOptionCell" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCFaceDetailPigmentEditOptionCell" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"NTKCFaceDetailPigmentEditOptionCell" hasInstanceMethod:@"_editOptionIndexForIndexPath:" withFullSignature:{"q", "@", 0}];
  [validationsCopy validateClass:@"NTKCFaceDetailPigmentEditOptionCell" hasInstanceMethod:@"optionAtIndex:" withFullSignature:{"@", "Q", 0}];
  [validationsCopy validateClass:@"NTKCFaceDetailPigmentEditOptionCell" hasInstanceMethod:@"_imageForIndexPath:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"NTKCFaceDetailPigmentEditOptionCell" hasInstanceMethod:@"_dividerImage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCFaceDetailPigmentEditOptionCell" hasInstanceMethod:@"_plusImage" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17.receiver = self;
  v17.super_class = NTKCFaceDetailPigmentEditOptionCellAccessibility;
  [(NTKCFaceDetailPigmentEditOptionCellAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  v16 = 0;
  objc_opt_class();
  v3 = [(NTKCFaceDetailPigmentEditOptionCellAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  visibleCells = [v4 visibleCells];
  v6 = [visibleCells countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(visibleCells);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v4 indexPathForCell:v10];
        [(NTKCFaceDetailPigmentEditOptionCellAccessibility *)self _axAnnotateCell:v10 atIndexPath:v11];
      }

      v7 = [visibleCells countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)accessibilityElements
{
  v3 = [(NTKCFaceDetailPigmentEditOptionCellAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = v3;
  if (v3)
  {
    v9 = v3;
    accessibilityElements = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKCFaceDetailPigmentEditOptionCellAccessibility;
    accessibilityElements = [(NTKCFaceDetailPigmentEditOptionCellAccessibility *)&v8 accessibilityElements];
  }

  v6 = accessibilityElements;

  return v6;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = NTKCFaceDetailPigmentEditOptionCellAccessibility;
  pathCopy = path;
  v7 = [(NTKCFaceDetailPigmentEditOptionCellAccessibility *)&v9 collectionView:view cellForItemAtIndexPath:pathCopy];
  [(NTKCFaceDetailPigmentEditOptionCellAccessibility *)self _axAnnotateCell:v7 atIndexPath:pathCopy, v9.receiver, v9.super_class];

  return v7;
}

- (void)_axAnnotateCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  [cellCopy _accessibilityRemoveValueForKey:@"AXNTKEditOption"];
  [cellCopy setAccessibilityLabel:0];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  v8 = pathCopy;
  AXPerformSafeBlock();
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);
  v10 = [(NTKCFaceDetailPigmentEditOptionCellAccessibility *)self safeValueForKey:@"_dividerImage"];

  if (v9 != v10)
  {
    v11 = [(NTKCFaceDetailPigmentEditOptionCellAccessibility *)self safeValueForKey:@"_plusImage"];

    if (v9 == v11)
    {
      v13 = accessibilityCompanionLocalizedString(@"color.add.button");
      [cellCopy setAccessibilityLabel:v13];
    }

    else
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0;
      v14 = v8;
      AXPerformSafeBlock();
      v12 = v16[3];

      _Block_object_dispose(&v15, 8);
      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = __Block_byref_object_copy__4;
      v19 = __Block_byref_object_dispose__4;
      v20 = 0;
      AXPerformSafeBlock();
      v13 = v16[5];
      _Block_object_dispose(&v15, 8);

      [cellCopy _accessibilitySetRetainedValue:v13 forKey:@"AXNTKEditOption"];
    }
  }

  [cellCopy setIsAccessibilityElement:v9 != v10];
}

uint64_t __80__NTKCFaceDetailPigmentEditOptionCellAccessibility__axAnnotateCell_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _imageForIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id __80__NTKCFaceDetailPigmentEditOptionCellAccessibility__axAnnotateCell_atIndexPath___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _editOptionIndexForIndexPath:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __80__NTKCFaceDetailPigmentEditOptionCellAccessibility__axAnnotateCell_atIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) optionAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

@end