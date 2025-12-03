@interface DOCItemCollectionListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsFolder;
- (id)_axAttrTitle;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation DOCItemCollectionListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionListCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionListCell" hasInstanceMethod:@"accessibilityDateLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionListCell" hasInstanceMethod:@"accessibilitySizeLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionListCell" hasInstanceMethod:@"accessibilityTagView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" hasInstanceMethod:@"accessibilityCellManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCellContent" hasInstanceMethod:@"accessibilityItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCellContent" hasInstanceMethod:@"accessibilityIsFolder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionListCell" isKindOfClass:@"DocumentManagerExecutables.DOCItemCollectionCell"];
}

- (id)_axAttrTitle
{
  objc_opt_class();
  v3 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  attributedText = [v4 attributedText];

  return attributedText;
}

- (id)accessibilityLabel
{
  v4 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilityCellManager"];
  v5 = [v4 safeValueForKey:@"accessibilityItem"];
  v6 = __UIAccessibilitySafeClass();

  v37 = v6;
  if ([v6 isCloudItem] && (objc_msgSend(v6, "isDownloaded") & 1) == 0)
  {
    v34 = accessibilityLocalizedString(@"in.cloud");
  }

  else
  {
    v34 = 0;
  }

  _axAttrTitle = [(DOCItemCollectionListCellAccessibility *)self _axAttrTitle];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__1;
  v44 = __Block_byref_object_dispose__1;
  v45 = 0;
  v8 = [_axAttrTitle length];
  v9 = *MEMORY[0x29EDC7628];
  v39[0] = MEMORY[0x29EDCA5F8];
  v39[1] = 3221225472;
  v39[2] = __60__DOCItemCollectionListCellAccessibility_accessibilityLabel__block_invoke;
  v39[3] = &unk_29F2BBA08;
  v39[4] = &v40;
  [_axAttrTitle enumerateAttribute:v9 inRange:0 options:v8 usingBlock:{0, v39}];
  v30 = _axAttrTitle;
  string = [_axAttrTitle string];
  v24 = v41[5];
  v25 = @"__AXStringForVariablesSentinel";
  v38 = __UIAXStringForVariables();
  v29 = v4;

  if (!v37)
  {
    v32 = 0;
    goto LABEL_13;
  }

  if (AXDoesRequestingClientDeserveAutomation())
  {
    filename = [v37 filename];
    pathExtension = [filename pathExtension];
    v24 = pathExtension;
    v25 = @"__AXStringForVariablesSentinel";
    v13 = __UIAXStringForVariables();

    v32 = 0;
    v38 = v13;
  }

  else
  {
    if ([(DOCItemCollectionListCellAccessibility *)self _accessibilityIsFolder:v24])
    {
      v32 = accessibilityLocalizedString(@"folder.type");
      goto LABEL_13;
    }

    filename = [v37 filename];
    pathExtension = [filename pathExtension];
    v32 = UIAXFileTypeDescriptionForFileExtension();
  }

LABEL_13:
  v36 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel", v24, v25];
  _accessibilityViewIsVisible = [v36 _accessibilityViewIsVisible];
  if (_accessibilityViewIsVisible)
  {
    v28 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel"];
    accessibilityLabel = [v28 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = 0;
  }

  v33 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilityDateLabel"];
  _accessibilityViewIsVisible2 = [v33 _accessibilityViewIsVisible];
  if (_accessibilityViewIsVisible2)
  {
    v27 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilityDateLabel"];
    accessibilityLabel2 = [v27 accessibilityLabel];
  }

  else
  {
    accessibilityLabel2 = 0;
  }

  v16 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilitySizeLabel"];
  _accessibilityViewIsVisible3 = [v16 _accessibilityViewIsVisible];
  if (_accessibilityViewIsVisible3)
  {
    v26 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilitySizeLabel"];
    accessibilityLabel3 = [v26 accessibilityLabel];
  }

  else
  {
    accessibilityLabel3 = 0;
  }

  v19 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilityTagView"];
  _accessibilityViewIsVisible4 = [v19 _accessibilityViewIsVisible];
  if (_accessibilityViewIsVisible4)
  {
    v2 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilityTagView"];
    accessibilityLabel4 = [v2 accessibilityLabel];
  }

  else
  {
    accessibilityLabel4 = 0;
  }

  v22 = __UIAXStringForVariables();
  if (_accessibilityViewIsVisible4)
  {
  }

  if (_accessibilityViewIsVisible3)
  {
  }

  if (_accessibilityViewIsVisible2)
  {
  }

  if (_accessibilityViewIsVisible)
  {
  }

  _Block_object_dispose(&v40, 8);

  return v22;
}

void __60__DOCItemCollectionListCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
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
  _axAttrTitle = [(DOCItemCollectionListCellAccessibility *)self _axAttrTitle];
  string = [_axAttrTitle string];
  v5 = [v2 axArrayByIgnoringNilElementsWithCount:{1, string}];

  return v5;
}

- (BOOL)_accessibilityIsFolder
{
  v2 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilityCellManager"];
  v3 = __UIAccessibilitySafeClass();

  LOBYTE(v2) = [v3 safeBoolForKey:@"accessibilityIsFolder"];
  return v2;
}

@end