@interface AVTSimpleAvatarPickerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axMarkupCellWithAXInfo:(id)info indexPath:(id)path;
- (void)loadView;
@end

@implementation AVTSimpleAvatarPickerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTSimpleAvatarPicker" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarPickerDataSource" hasInstanceMethod:@"itemAtIndex:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"AVTAvatarPickerDataSource" hasInstanceMethod:@"isItemAtIndexAddItem:" withFullSignature:{"B", "q", 0}];
  [validationsCopy validateClass:@"AVTAvatarListRecordItem" hasInstanceMethod:@"avatar" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"AVTAvatarRecord" hasRequiredInstanceMethod:@"isEditable"];
  [validationsCopy validateProtocol:@"AVTAvatarRecord" hasRequiredInstanceMethod:@"identifier"];
  [validationsCopy validateProtocol:@"AVTAvatarListItem" hasRequiredInstanceMethod:@"downcastWithRecordHandler:viewHandler:"];
  [validationsCopy validateClass:@"AVTSimpleAvatarPicker" hasProperty:@"collectionView" withType:"@"];
  [validationsCopy validateClass:@"AVTSimpleAvatarPicker" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v21 = *MEMORY[0x29EDCA608];
  v19.receiver = self;
  v19.super_class = AVTSimpleAvatarPickerAccessibility;
  [(AVTSimpleAvatarPickerAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  v18 = 0;
  objc_opt_class();
  v3 = [(AVTSimpleAvatarPickerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  visibleCells = [v4 visibleCells];
  v6 = [visibleCells countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(visibleCells);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        _accessibilityIndexPath = [v10 _accessibilityIndexPath];
        [(AVTSimpleAvatarPickerAccessibility *)self _axMarkupCellWithAXInfo:v10 indexPath:_accessibilityIndexPath];
      }

      v7 = [visibleCells countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = accessibilityLocalizedString(@"collection.avatars.label");
  [v4 setAccessibilityLabel:v12];

  v13 = *MEMORY[0x29EDCA608];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = AVTSimpleAvatarPickerAccessibility;
  [(AVTSimpleAvatarPickerAccessibility *)&v3 loadView];
  [(AVTSimpleAvatarPickerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axMarkupCellWithAXInfo:(id)info indexPath:(id)path
{
  infoCopy = info;
  pathCopy = path;
  [infoCopy setIsAccessibilityElement:1];
  [infoCopy setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [(AVTSimpleAvatarPickerAccessibility *)self safeValueForKey:@"dataSource"];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v8 = v17 = 0;
  v9 = pathCopy;
  AXPerformSafeBlock();
  LODWORD(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  if (self == 1)
  {
    v10 = accessibilityLocalizedString(@"starfish.add");
    [infoCopy setAccessibilityLabel:v10];
  }

  else
  {
    v11 = v8;
    v12 = v9;
    v13 = infoCopy;
    AXPerformSafeBlock();

    v10 = v11;
  }
}

uint64_t __72__AVTSimpleAvatarPickerAccessibility__axMarkupCellWithAXInfo_indexPath___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isItemAtIndexAddItem:{objc_msgSend(*(a1 + 40), "item")}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __72__AVTSimpleAvatarPickerAccessibility__axMarkupCellWithAXInfo_indexPath___block_invoke_2(id *a1)
{
  v2 = [a1[4] itemAtIndex:{objc_msgSend(a1[5], "item")}];
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __72__AVTSimpleAvatarPickerAccessibility__axMarkupCellWithAXInfo_indexPath___block_invoke_3;
  v3[3] = &unk_29F2A3AB8;
  v4 = a1[6];
  [v2 downcastWithRecordHandler:v3 viewHandler:0];
}

void __72__AVTSimpleAvatarPickerAccessibility__axMarkupCellWithAXInfo_indexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = *(a1 + 32);
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __72__AVTSimpleAvatarPickerAccessibility__axMarkupCellWithAXInfo_indexPath___block_invoke_4;
  v15[3] = &unk_29F2A3A68;
  v5 = v3;
  v16 = v5;
  [v4 _setAccessibilityLabelBlock:v15];
  v6 = [v5 safeValueForKey:@"avatar"];
  v7 = [v6 safeBoolForKey:@"isEditable"];

  if (v7)
  {
    v8 = accessibilityLocalizedString(@"starfish.avatar");
    v17[0] = v8;
    v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v17 count:1];
    [*(a1 + 32) setAccessibilityUserInputLabels:v9];
  }

  v10 = *(a1 + 32);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __72__AVTSimpleAvatarPickerAccessibility__axMarkupCellWithAXInfo_indexPath___block_invoke_5;
  v13[3] = &unk_29F2A3A90;
  v14 = v5;
  v11 = v5;
  [v10 _setAccessibilityCustomContentBlock:v13];

  v12 = *MEMORY[0x29EDCA608];
}

id __72__AVTSimpleAvatarPickerAccessibility__axMarkupCellWithAXInfo_indexPath___block_invoke_4(uint64_t a1)
{
  if (!CachedAvatarLabels)
  {
    v2 = [MEMORY[0x29EDB8E00] dictionary];
    v3 = CachedAvatarLabels;
    CachedAvatarLabels = v2;
  }

  v4 = [*(a1 + 32) safeValueForKey:@"avatar"];
  v5 = [v4 safeValueForKey:@"identifier"];
  v6 = [CachedAvatarLabels objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = CachedAvatarLabels;
    v10 = [MEMORY[0x29EDBDE08] descriptionForAvatarWithRecord:v4 includeVideoPrefix:0];
    [v9 setObject:v10 forKey:v5];

    v8 = [CachedAvatarLabels objectForKey:*(a1 + 32)];
  }

  v11 = v8;

  return v11;
}

id __72__AVTSimpleAvatarPickerAccessibility__axMarkupCellWithAXInfo_indexPath___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"avatarRecord"];
  if (v1)
  {
    v2 = [MEMORY[0x29EDBDE08] customContentForAvatarWithRecord:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = AVTSimpleAvatarPickerAccessibility;
  pathCopy = path;
  v7 = [(AVTSimpleAvatarPickerAccessibility *)&v9 collectionView:view cellForItemAtIndexPath:pathCopy];
  [(AVTSimpleAvatarPickerAccessibility *)self _axMarkupCellWithAXInfo:v7 indexPath:pathCopy, v9.receiver, v9.super_class];

  return v7;
}

@end