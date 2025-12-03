@interface DOCItemCollectionGridCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsFolder;
- (BOOL)_accessibilitySubviewIsVisible:(id)visible;
- (CGPoint)accessibilityActivationPoint;
- (id)_axAttrTitle;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation DOCItemCollectionGridCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionGridCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionGridCell" hasInstanceMethod:@"accessibilitySecondSubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" hasInstanceMethod:@"accessibilityCellManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionListCell" isKindOfClass:@"DocumentManagerExecutables.DOCItemCollectionCell"];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionGridCell" isKindOfClass:@"DocumentManagerExecutables.DOCItemCollectionCell"];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCellContent" hasInstanceMethod:@"accessibilityIsFolder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCellContent" hasInstanceMethod:@"accessibilityItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" hasInstanceMethod:@"accessibilityThumbnailView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FPItem" hasInstanceMethod:@"isCloudItem" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UICollectionView" hasInstanceVariable:@"_dragAndDropController" withType:"_UICollectionViewDragAndDropController"];
}

- (BOOL)_accessibilitySubviewIsVisible:(id)visible
{
  visibleCopy = visible;
  if (AXDoesRequestingClientDeserveAutomation() && (objc_opt_class(), __UIAccessibilityCastAsClass(), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    _accessibilityViewIsVisible = [visibleCopy _accessibilityViewIsVisibleIgnoringAXOverrides:0 stoppingBeforeContainer:self];
  }

  else
  {
    _accessibilityViewIsVisible = [visibleCopy _accessibilityViewIsVisible];
  }

  v8 = _accessibilityViewIsVisible;

  return v8;
}

- (id)_axAttrTitle
{
  v3 = [(DOCItemCollectionGridCellAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  if ([(DOCItemCollectionGridCellAccessibility *)self _accessibilitySubviewIsVisible:v3])
  {
    objc_opt_class();
    v4 = [(DOCItemCollectionGridCellAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
    v5 = __UIAccessibilityCastAsClass();

    attributedText = [v5 attributedText];
  }

  else
  {
    attributedText = 0;
  }

  return attributedText;
}

- (id)accessibilityLabel
{
  v4 = [(DOCItemCollectionGridCellAccessibility *)self safeValueForKey:@"accessibilityCellManager"];
  v5 = [v4 safeValueForKey:@"accessibilityItem"];
  v6 = __UIAccessibilitySafeClass();

  if ([v6 isCloudItem] && (objc_msgSend(v6, "isDownloaded") & 1) == 0)
  {
    v29 = accessibilityLocalizedString(@"in.cloud");
  }

  else
  {
    v29 = 0;
  }

  v30 = v6;
  _axAttrTitle = [(DOCItemCollectionGridCellAccessibility *)self _axAttrTitle];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__0;
  v36 = __Block_byref_object_dispose__0;
  v37 = 0;
  v8 = [_axAttrTitle length];
  v9 = *MEMORY[0x29EDC7628];
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 3221225472;
  v31[2] = __60__DOCItemCollectionGridCellAccessibility_accessibilityLabel__block_invoke;
  v31[3] = &unk_29F2BBA08;
  v31[4] = &v32;
  [_axAttrTitle enumerateAttribute:v9 inRange:0 options:v8 usingBlock:{0, v31}];
  string = [_axAttrTitle string];
  v24 = v33[5];
  v25 = @"__AXStringForVariablesSentinel";
  v11 = __UIAXStringForVariables();
  v27 = _axAttrTitle;
  v28 = v4;

  if (!v30)
  {
    v15 = 0;
    goto LABEL_13;
  }

  if (AXDoesRequestingClientDeserveAutomation())
  {
    filename = [v30 filename];
    pathExtension = [filename pathExtension];
    v24 = pathExtension;
    v25 = @"__AXStringForVariablesSentinel";
    v14 = __UIAXStringForVariables();

    v15 = 0;
    v11 = v14;
  }

  else
  {
    if ([(DOCItemCollectionGridCellAccessibility *)self _accessibilityIsFolder:v24])
    {
      v15 = accessibilityLocalizedString(@"folder.type");
      goto LABEL_13;
    }

    filename = [v30 filename];
    pathExtension = [filename pathExtension];
    v15 = UIAXFileTypeDescriptionForFileExtension();
  }

LABEL_13:
  v16 = [(DOCItemCollectionGridCellAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel", v24, v25];
  v17 = [(DOCItemCollectionGridCellAccessibility *)self _accessibilitySubviewIsVisible:v16];
  if (v17)
  {
    v26 = [(DOCItemCollectionGridCellAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel"];
    accessibilityLabel = [v26 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = 0;
  }

  v19 = [(DOCItemCollectionGridCellAccessibility *)self safeValueForKey:@"accessibilitySecondSubtitleLabel"];
  v20 = [(DOCItemCollectionGridCellAccessibility *)self _accessibilitySubviewIsVisible:v19];
  if (v20)
  {
    v2 = [(DOCItemCollectionGridCellAccessibility *)self safeValueForKey:@"accessibilitySecondSubtitleLabel"];
    accessibilityLabel2 = [v2 accessibilityLabel];
  }

  else
  {
    accessibilityLabel2 = 0;
  }

  v22 = __UIAXStringForVariables();
  if (v20)
  {
  }

  if (v17)
  {
  }

  _Block_object_dispose(&v32, 8);

  return v22;
}

void __60__DOCItemCollectionGridCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = [v9 contentView];
    v8 = [v4 accessibilityLabel];
    v5 = __UIAXStringForVariables();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)accessibilityUserInputLabels
{
  v2 = MEMORY[0x29EDB8D80];
  _axAttrTitle = [(DOCItemCollectionGridCellAccessibility *)self _axAttrTitle];
  string = [_axAttrTitle string];
  v5 = [v2 axArrayByIgnoringNilElementsWithCount:{1, string}];

  return v5;
}

- (CGPoint)accessibilityActivationPoint
{
  v15 = 0;
  objc_opt_class();
  v3 = [(DOCItemCollectionGridCellAccessibility *)self safeValueForKey:@"accessibilityThumbnailView"];
  v4 = __UIAccessibilityCastAsClass();

  window = [v4 window];
  v6 = window;
  if (v4)
  {
    v7 = window == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v14.receiver = self;
    v14.super_class = DOCItemCollectionGridCellAccessibility;
    [(DOCItemCollectionGridCellAccessibility *)&v14 accessibilityActivationPoint];
  }

  else
  {
    [v4 bounds];
    AX_CGRectGetCenter();
    [v4 convertPoint:v6 toView:?];
    [v6 convertPoint:0 toWindow:?];
  }

  v10 = v8;
  v11 = v9;

  v12 = v10;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)accessibilityDropPointDescriptors
{
  v15[1] = *MEMORY[0x29EDCA608];
  if ([(DOCItemCollectionGridCellAccessibility *)self _accessibilityIsFolder])
  {
    v3 = [(DOCItemCollectionGridCellAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    v14 = 0;
    objc_opt_class();
    v4 = [(DOCItemCollectionGridCellAccessibility *)self safeValueForKey:@"accessibilityThumbnailView"];
    v5 = __UIAccessibilityCastAsClass();

    if ([v3 hasActiveDrop])
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = objc_alloc(MEMORY[0x29EDC7900]);
      v8 = accessibilityLocalizedString(@"drop.into.folder");
      [v5 bounds];
      AX_CGRectGetCenter();
      [v5 convertPoint:v3 toView:?];
      v9 = [v7 initWithName:v8 point:v3 inView:?];
      v15[0] = v9;
      accessibilityDropPointDescriptors = [MEMORY[0x29EDB8D80] arrayWithObjects:v15 count:1];

      goto LABEL_9;
    }
  }

  v13.receiver = self;
  v13.super_class = DOCItemCollectionGridCellAccessibility;
  accessibilityDropPointDescriptors = [(DOCItemCollectionGridCellAccessibility *)&v13 accessibilityDropPointDescriptors];
LABEL_9:
  v11 = *MEMORY[0x29EDCA608];

  return accessibilityDropPointDescriptors;
}

- (BOOL)_accessibilityIsFolder
{
  v2 = [(DOCItemCollectionGridCellAccessibility *)self safeValueForKey:@"accessibilityCellManager"];
  v3 = __UIAccessibilitySafeClass();

  LOBYTE(v2) = [v3 safeBoolForKey:@"accessibilityIsFolder"];
  return v2;
}

@end