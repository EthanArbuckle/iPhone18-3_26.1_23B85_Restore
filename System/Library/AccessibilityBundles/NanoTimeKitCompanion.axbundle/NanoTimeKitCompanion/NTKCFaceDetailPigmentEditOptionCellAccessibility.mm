@interface NTKCFaceDetailPigmentEditOptionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateCell:(id)a3 atIndexPath:(id)a4;
@end

@implementation NTKCFaceDetailPigmentEditOptionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKCFaceDetailPigmentEditOptionCell" isKindOfClass:@"NTKCFaceDetailEditOptionCell"];
  [v3 validateClass:@"NTKCFaceDetailEditOptionCell" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCFaceDetailPigmentEditOptionCell" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"NTKCFaceDetailPigmentEditOptionCell" hasInstanceMethod:@"_editOptionIndexForIndexPath:" withFullSignature:{"q", "@", 0}];
  [v3 validateClass:@"NTKCFaceDetailPigmentEditOptionCell" hasInstanceMethod:@"optionAtIndex:" withFullSignature:{"@", "Q", 0}];
  [v3 validateClass:@"NTKCFaceDetailPigmentEditOptionCell" hasInstanceMethod:@"_imageForIndexPath:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"NTKCFaceDetailPigmentEditOptionCell" hasInstanceMethod:@"_dividerImage" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCFaceDetailPigmentEditOptionCell" hasInstanceMethod:@"_plusImage" withFullSignature:{"@", 0}];
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
  v5 = [v4 visibleCells];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v4 indexPathForCell:v10];
        [(NTKCFaceDetailPigmentEditOptionCellAccessibility *)self _axAnnotateCell:v10 atIndexPath:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
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
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKCFaceDetailPigmentEditOptionCellAccessibility;
    v5 = [(NTKCFaceDetailPigmentEditOptionCellAccessibility *)&v8 accessibilityElements];
  }

  v6 = v5;

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = NTKCFaceDetailPigmentEditOptionCellAccessibility;
  v6 = a4;
  v7 = [(NTKCFaceDetailPigmentEditOptionCellAccessibility *)&v9 collectionView:a3 cellForItemAtIndexPath:v6];
  [(NTKCFaceDetailPigmentEditOptionCellAccessibility *)self _axAnnotateCell:v7 atIndexPath:v6, v9.receiver, v9.super_class];

  return v7;
}

- (void)_axAnnotateCell:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 _accessibilityRemoveValueForKey:@"AXNTKEditOption"];
  [v6 setAccessibilityLabel:0];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  v8 = v7;
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
      [v6 setAccessibilityLabel:v13];
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

      [v6 _accessibilitySetRetainedValue:v13 forKey:@"AXNTKEditOption"];
    }
  }

  [v6 setIsAccessibilityElement:v9 != v10];
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