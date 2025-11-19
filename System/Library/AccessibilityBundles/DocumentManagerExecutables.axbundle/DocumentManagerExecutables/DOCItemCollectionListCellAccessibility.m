@interface DOCItemCollectionListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsFolder;
- (id)_axAttrTitle;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation DOCItemCollectionListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionListCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionListCell" hasInstanceMethod:@"accessibilityDateLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionListCell" hasInstanceMethod:@"accessibilitySizeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionListCell" hasInstanceMethod:@"accessibilityTagView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" hasInstanceMethod:@"accessibilityCellManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionCellContent" hasInstanceMethod:@"accessibilityItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionCellContent" hasInstanceMethod:@"accessibilityIsFolder" withFullSignature:{"B", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionListCell" isKindOfClass:@"DocumentManagerExecutables.DOCItemCollectionCell"];
}

- (id)_axAttrTitle
{
  objc_opt_class();
  v3 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 attributedText];

  return v5;
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

  v7 = [(DOCItemCollectionListCellAccessibility *)self _axAttrTitle];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__1;
  v44 = __Block_byref_object_dispose__1;
  v45 = 0;
  v8 = [v7 length];
  v9 = *MEMORY[0x29EDC7628];
  v39[0] = MEMORY[0x29EDCA5F8];
  v39[1] = 3221225472;
  v39[2] = __60__DOCItemCollectionListCellAccessibility_accessibilityLabel__block_invoke;
  v39[3] = &unk_29F2BBA08;
  v39[4] = &v40;
  [v7 enumerateAttribute:v9 inRange:0 options:v8 usingBlock:{0, v39}];
  v30 = v7;
  v10 = [v7 string];
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
    v11 = [v37 filename];
    v12 = [v11 pathExtension];
    v24 = v12;
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

    v11 = [v37 filename];
    v12 = [v11 pathExtension];
    v32 = UIAXFileTypeDescriptionForFileExtension();
  }

LABEL_13:
  v36 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel", v24, v25];
  v35 = [v36 _accessibilityViewIsVisible];
  if (v35)
  {
    v28 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel"];
    v31 = [v28 accessibilityLabel];
  }

  else
  {
    v31 = 0;
  }

  v33 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilityDateLabel"];
  v14 = [v33 _accessibilityViewIsVisible];
  if (v14)
  {
    v27 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilityDateLabel"];
    v15 = [v27 accessibilityLabel];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilitySizeLabel"];
  v17 = [v16 _accessibilityViewIsVisible];
  if (v17)
  {
    v26 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilitySizeLabel"];
    v18 = [v26 accessibilityLabel];
  }

  else
  {
    v18 = 0;
  }

  v19 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilityTagView"];
  v20 = [v19 _accessibilityViewIsVisible];
  if (v20)
  {
    v2 = [(DOCItemCollectionListCellAccessibility *)self safeValueForKey:@"accessibilityTagView"];
    v21 = [v2 accessibilityLabel];
  }

  else
  {
    v21 = 0;
  }

  v22 = __UIAXStringForVariables();
  if (v20)
  {
  }

  if (v17)
  {
  }

  if (v14)
  {
  }

  if (v35)
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
  v3 = [(DOCItemCollectionListCellAccessibility *)self _axAttrTitle];
  v4 = [v3 string];
  v5 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v4}];

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