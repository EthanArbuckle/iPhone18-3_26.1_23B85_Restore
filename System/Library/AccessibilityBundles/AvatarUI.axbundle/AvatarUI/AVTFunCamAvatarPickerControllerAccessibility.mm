@interface AVTFunCamAvatarPickerControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axLabelForIndexPath:(id)path;
- (id)_axRecordForIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setupAccessibilityForCell:(id)cell atIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
@end

@implementation AVTFunCamAvatarPickerControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTFunCamAvatarPickerController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"AVTFunCamAvatarPickerController" hasInstanceMethod:@"collectionView:didSelectItemAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"AVTFunCamAvatarPickerController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTFunCamAvatarPickerController" hasInstanceMethod:@"isDisplayingGridLayout" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"AVTFunCamAvatarPickerController" hasInstanceMethod:@"items" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTFunCamAvatarPickerController" hasInstanceMethod:@"selectedIndexPath" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTFunCamAvatarPickerController" hasInstanceMethod:@"indexPathForNoneItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTFunCamAvatarPickerController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarListRecordItem" hasInstanceMethod:@"avatar" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTFunCamAvatarPickerController" hasInstanceVariable:@"_allowsCreation" withType:"BOOL"];
  [validationsCopy validateProtocol:@"AVTAvatarRecord" hasRequiredInstanceMethod:@"isEditable"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v27 = *MEMORY[0x29EDCA608];
  v25.receiver = self;
  v25.super_class = AVTFunCamAvatarPickerControllerAccessibility;
  [(AVTFunCamAvatarPickerControllerAccessibility *)&v25 _accessibilityLoadAccessibilityInformation];
  if (([(AVTFunCamAvatarPickerControllerAccessibility *)self safeBoolForKey:@"isDisplayingGridLayout"]& 1) == 0)
  {
    _axFunCamAvatarCarousel = [(AVTFunCamAvatarPickerControllerAccessibility *)self _axFunCamAvatarCarousel];
    if (!_axFunCamAvatarCarousel)
    {
      v4 = [AX_FunCamAvatarCarousel alloc];
      v5 = [(AVTFunCamAvatarPickerControllerAccessibility *)self safeUIViewForKey:@"view"];
      _axFunCamAvatarCarousel = [(AX_FunCamAvatarCarousel *)v4 initWithFunCamAvatarPickerController:self accessibilityContainer:v5];

      [(AVTFunCamAvatarPickerControllerAccessibility *)self _setAXFunCamAvatarCarousel:_axFunCamAvatarCarousel];
    }

    array = [MEMORY[0x29EDB8DE8] array];
    [array axSafelyAddObject:_axFunCamAvatarCarousel];
    v7 = [(AVTFunCamAvatarPickerControllerAccessibility *)self safeUIViewForKey:@"view"];
    subviews = [v7 subviews];
    [array axSafelyAddObjectsFromArray:subviews];

    v9 = [(AVTFunCamAvatarPickerControllerAccessibility *)self safeValueForKey:@"view"];
    [v9 setAccessibilityElements:array];
  }

  if (![(AVTFunCamAvatarPickerControllerAccessibility *)self _axFunCamAvatarPickerDidSetupCells])
  {
    v24 = 0;
    objc_opt_class();
    v10 = [(AVTFunCamAvatarPickerControllerAccessibility *)self safeValueForKey:@"collectionView"];
    v11 = __UIAccessibilityCastAsClass();

    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    visibleCells = [v11 visibleCells];
    v13 = [visibleCells countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(visibleCells);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          v18 = [v11 indexPathForCell:v17];
          [(AVTFunCamAvatarPickerControllerAccessibility *)self _setupAccessibilityForCell:v17 atIndexPath:v18];
        }

        v14 = [visibleCells countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v14);
    }

    [(AVTFunCamAvatarPickerControllerAccessibility *)self _setAXFunCamAvatarPickerDidSetupCells:1];
  }

  v19 = *MEMORY[0x29EDCA608];
}

- (id)_axLabelForIndexPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  v5 = [(AVTFunCamAvatarPickerControllerAccessibility *)self safeValueForKey:@"items"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [(AVTFunCamAvatarPickerControllerAccessibility *)self safeValueForKey:@"indexPathForNoneItem"];
  v8 = [pathCopy isEqual:v7];

  if (v8 && ([(AVTFunCamAvatarPickerControllerAccessibility *)self safeBoolForKey:@"_allowsCreation"]& 1) == 0)
  {
    v12 = accessibilityLocalizedString(@"puppet.none");
  }

  else
  {
    v9 = [v6 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
    v10 = [v9 safeValueForKey:@"avatar"];

    if (v10 || [pathCopy item])
    {
      v11 = [MEMORY[0x29EDBDE08] descriptionForAvatarWithRecord:v10 includeVideoPrefix:0];
    }

    else
    {
      v11 = accessibilityLocalizedString(@"starfish.add");
    }

    v12 = v11;
  }

  return v12;
}

- (id)_axRecordForIndexPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  v5 = [(AVTFunCamAvatarPickerControllerAccessibility *)self safeValueForKey:@"items"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [(AVTFunCamAvatarPickerControllerAccessibility *)self safeValueForKey:@"indexPathForNoneItem"];
  LOBYTE(v5) = [pathCopy isEqual:v7];

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v6 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
    v8 = [v9 safeValueForKey:@"avatar"];

    if (v8 || [pathCopy item])
    {
      v10 = v8;
    }
  }

  return v8;
}

- (void)_setupAccessibilityForCell:(id)cell atIndexPath:(id)path
{
  v27[1] = *MEMORY[0x29EDCA608];
  cellCopy = cell;
  pathCopy = path;
  v8 = (-[AVTFunCamAvatarPickerControllerAccessibility safeBoolForKey:](self, "safeBoolForKey:", @"isDisplayingGridLayout") & 1) != 0 || [pathCopy item] == 0;
  [cellCopy setIsAccessibilityElement:v8];
  accessibilityTraits = [cellCopy accessibilityTraits];
  [cellCopy setAccessibilityTraits:*MEMORY[0x29EDC7F70] | accessibilityTraits];
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 3221225472;
  v23[2] = __87__AVTFunCamAvatarPickerControllerAccessibility__setupAccessibilityForCell_atIndexPath___block_invoke;
  v23[3] = &unk_29F2A39F0;
  objc_copyWeak(&v25, &location);
  v10 = pathCopy;
  v24 = v10;
  [cellCopy _setAccessibilityLabelBlock:v23];
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 3221225472;
  v20[2] = __87__AVTFunCamAvatarPickerControllerAccessibility__setupAccessibilityForCell_atIndexPath___block_invoke_2;
  v20[3] = &unk_29F2A3A18;
  objc_copyWeak(&v22, &location);
  v11 = v10;
  v21 = v11;
  [cellCopy _setAccessibilityCustomContentBlock:v20];
  objc_opt_class();
  v12 = [(AVTFunCamAvatarPickerControllerAccessibility *)self safeValueForKey:@"items"];
  v13 = __UIAccessibilityCastAsClass();

  v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v11, "item")}];
  v15 = [v14 safeValueForKey:@"avatar"];
  v16 = [v15 safeBoolForKey:@"isEditable"];

  if (v16)
  {
    v17 = accessibilityLocalizedString(@"starfish.avatar");
    v27[0] = v17;
    v18 = [MEMORY[0x29EDB8D80] arrayWithObjects:v27 count:1];
    [cellCopy setAccessibilityUserInputLabels:v18];
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  v19 = *MEMORY[0x29EDCA608];
}

id __87__AVTFunCamAvatarPickerControllerAccessibility__setupAccessibilityForCell_atIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _axLabelForIndexPath:*(a1 + 32)];

  return v3;
}

id __87__AVTFunCamAvatarPickerControllerAccessibility__setupAccessibilityForCell_atIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _axRecordForIndexPath:*(a1 + 32)];

  if (v3)
  {
    v4 = [MEMORY[0x29EDBDE08] customContentForAvatarWithRecord:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTFunCamAvatarPickerControllerAccessibility;
  [(AVTFunCamAvatarPickerControllerAccessibility *)&v3 viewDidLayoutSubviews];
  [(AVTFunCamAvatarPickerControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = AVTFunCamAvatarPickerControllerAccessibility;
  pathCopy = path;
  v7 = [(AVTFunCamAvatarPickerControllerAccessibility *)&v9 collectionView:view cellForItemAtIndexPath:pathCopy];
  [(AVTFunCamAvatarPickerControllerAccessibility *)self _setupAccessibilityForCell:v7 atIndexPath:pathCopy, v9.receiver, v9.super_class];

  [(AVTFunCamAvatarPickerControllerAccessibility *)self _setAXFunCamAvatarPickerDidSetupCells:1];

  return v7;
}

@end