@interface AVTAvatarAttributeEditorSectionColorControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axLoadAccessibilityForAttributeCell:(id)cell atIndexPath:(id)path;
- (void)colorDataSource:(id)source didChangeDisplayMode:(int64_t)mode previousDisplayMode:(int64_t)displayMode;
@end

@implementation AVTAvatarAttributeEditorSectionColorControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTAttributeCollectionViewCell"];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorSectionColorItem"];
  [validationsCopy validateClass:@"AVTCoreModelColor"];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorSectionColorDataSource"];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorSectionColorItem" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTCoreModelColor" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAttributeCollectionViewCell" hasInstanceMethod:@"attributeView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorSectionColorController" hasInstanceMethod:@"selectedIndex" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorSectionColorController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorSectionColorController" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorSectionColorController" hasInstanceMethod:@"sliderContainerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarColorSliderContainerView" hasInstanceMethod:@"slider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorSectionColorController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorSectionColorController" hasInstanceMethod:@"colorDataSource:didChangeDisplayMode:previousDisplayMode:" withFullSignature:{"v", "@", "q", "q", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorSectionColorDataSource" hasInstanceMethod:@"sectionItemAtIndex:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorSectionCoordinator"];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorSectionCoordinator" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorViewController" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorDataSource" hasInstanceMethod:@"categories" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorDataSource" hasInstanceMethod:@"currentCategoryIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorCategory" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorCategory" hasInstanceMethod:@"sections" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"AVTAvatarAttributeEditorSection" hasRequiredInstanceMethod:@"localizedName"];
}

- (void)_axLoadAccessibilityForAttributeCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  MEMORY[0x29C2CABD0](@"AVTAttributeCollectionViewCell");
  if (objc_opt_isKindOfClass())
  {
    v7 = pathCopy;
    v8 = cellCopy;
    AXPerformSafeBlock();
  }
}

void __112__AVTAvatarAttributeEditorSectionColorControllerAccessibility__axLoadAccessibilityForAttributeCell_atIndexPath___block_invoke(id *a1)
{
  v6 = [a1[4] safeValueForKey:@"dataSource"];
  MEMORY[0x29C2CABD0](@"AVTAvatarAttributeEditorSectionColorDataSource");
  if (objc_opt_isKindOfClass())
  {
    v2 = [v6 sectionItemAtIndex:{objc_msgSend(a1[5], "row")}];
    v3 = [v2 safeValueForKey:@"color"];
    v4 = [v3 safeStringForKey:@"localizedName"];
    v5 = [a1[6] safeUIViewForKey:@"attributeView"];
    [v5 setAccessibilityLabel:v4];
    [v5 _accessibilitySetShouldIncludeRowRangeInElementDescription:1];
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v20 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = AVTAvatarAttributeEditorSectionColorControllerAccessibility;
  [(AVTAvatarAttributeEditorSectionColorControllerAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  v17 = 0;
  objc_opt_class();
  v3 = [(AVTAvatarAttributeEditorSectionColorControllerAccessibility *)self safeValueForKey:@"collectionView"];
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
        [(AVTAvatarAttributeEditorSectionColorControllerAccessibility *)self _axLoadAccessibilityForAttributeCell:v10 atIndexPath:v11];
      }

      v7 = [visibleCells countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (id)collectionView
{
  v18.receiver = self;
  v18.super_class = AVTAvatarAttributeEditorSectionColorControllerAccessibility;
  collectionView = [(AVTAvatarAttributeEditorSectionColorControllerAccessibility *)&v18 collectionView];
  [collectionView setAccessibilityContainerType:4];
  v4 = [(AVTAvatarAttributeEditorSectionColorControllerAccessibility *)self safeValueForKey:@"section"];
  v5 = [v4 safeStringForKey:@"localizedName"];
  if (v5)
  {
    goto LABEL_10;
  }

  v6 = [(AVTAvatarAttributeEditorSectionColorControllerAccessibility *)self safeValueForKey:@"delegate"];
  MEMORY[0x29C2CABD0](@"AVTAvatarAttributeEditorSectionCoordinator");
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 safeValueForKey:@"delegate"];

    v6 = v7;
  }

  v8 = [v6 safeValueForKey:@"dataSource"];
  v9 = [v8 safeArrayForKey:@"categories"];
  v10 = [v9 objectAtIndex:{objc_msgSend(v8, "safeUnsignedIntegerForKey:", @"currentCategoryIndex"}];

  v11 = [v10 safeArrayForKey:@"sections"];
  v12 = [v11 indexOfObject:v4];
  if (v12 >= [v11 count])
  {
    goto LABEL_8;
  }

  do
  {
    v13 = [v11 objectAtIndexedSubscript:v12];
    v5 = [v13 safeValueForKey:@"localizedName"];

    --v12;
  }

  while (v12 < [v11 count] && !v5);
  if (!v5)
  {
LABEL_8:
    v5 = [v10 safeValueForKey:@"localizedName"];
  }

  if (v5)
  {
LABEL_10:
    v14 = MEMORY[0x29EDBA0F8];
    v15 = accessibilityLocalizedString(@"section.name.color");
    v16 = [v14 localizedStringWithFormat:v15, v5];
    [collectionView setAccessibilityLabel:v16];
  }

  return collectionView;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = AVTAvatarAttributeEditorSectionColorControllerAccessibility;
  pathCopy = path;
  v7 = [(AVTAvatarAttributeEditorSectionColorControllerAccessibility *)&v9 collectionView:view cellForItemAtIndexPath:pathCopy];
  [(AVTAvatarAttributeEditorSectionColorControllerAccessibility *)self _axLoadAccessibilityForAttributeCell:v7 atIndexPath:pathCopy, v9.receiver, v9.super_class];

  return v7;
}

- (void)colorDataSource:(id)source didChangeDisplayMode:(int64_t)mode previousDisplayMode:(int64_t)displayMode
{
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = AVTAvatarAttributeEditorSectionColorControllerAccessibility;
  [(AVTAvatarAttributeEditorSectionColorControllerAccessibility *)&v15 colorDataSource:sourceCopy didChangeDisplayMode:mode previousDisplayMode:displayMode];
  if ((mode & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v9 = [(AVTAvatarAttributeEditorSectionColorControllerAccessibility *)self safeValueForKeyPath:@"sliderContainerView.slider"];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v9);
  }

  else
  {
    v10 = [(AVTAvatarAttributeEditorSectionColorControllerAccessibility *)self safeIntegerForKey:@"selectedIndex"];
    objc_opt_class();
    v11 = [(AVTAvatarAttributeEditorSectionColorControllerAccessibility *)self safeValueForKey:@"collectionView"];
    v9 = __UIAccessibilityCastAsClass();

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    v13 = [MEMORY[0x29EDB9FE0] indexPathForRow:v12 inSection:0];
    v14 = [v9 cellForItemAtIndexPath:v13];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v14);
  }
}

@end