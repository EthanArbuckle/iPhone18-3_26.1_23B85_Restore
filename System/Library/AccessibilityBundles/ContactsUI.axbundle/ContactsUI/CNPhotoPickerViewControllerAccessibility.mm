@interface CNPhotoPickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
@end

@implementation CNPhotoPickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNVisualIdentityPickerViewController"];
  [validationsCopy validateClass:@"CNPhotoPickerViewController" isKindOfClass:@"CNVisualIdentityPickerViewController"];
  [validationsCopy validateClass:@"CNVisualIdentityPickerViewController" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPhotoPickerDataSource"];
  [validationsCopy validateClass:@"CNPhotoPickerDataSource" hasInstanceMethod:@"isItemAtIndexPathAddItem:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"CNPhotoPickerDataSource" hasInstanceMethod:@"providerItemAtIndexPath:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"CNPhotoPickerDataSource" hasInstanceMethod:@"providerGroupAtIndexPath:" withFullSignature:{"@", "@", 0}];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v35.receiver = self;
  v35.super_class = CNPhotoPickerViewControllerAccessibility;
  v8 = [(CNPhotoPickerViewControllerAccessibility *)&v35 collectionView:viewCopy cellForItemAtIndexPath:pathCopy];
  LOBYTE(v22) = 0;
  objc_opt_class();
  v9 = __UIAccessibilityCastAsSafeCategory();
  if (v9)
  {
    v10 = [(CNPhotoPickerViewControllerAccessibility *)self safeValueForKey:@"dataSource"];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    LOBYTE(v25) = 0;
    v28 = MEMORY[0x29EDCA5F8];
    v29 = 3221225472;
    v30 = __82__CNPhotoPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke;
    v31 = &unk_29F2B5A70;
    v34 = &v22;
    v11 = v10;
    v32 = v11;
    v12 = pathCopy;
    v33 = v12;
    AXPerformSafeBlock();
    v13 = *(v23 + 24);

    _Block_object_dispose(&v22, 8);
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__3;
    v26 = __Block_byref_object_dispose__3;
    v27 = 0;
    v20 = v11;
    v21 = v12;
    AXPerformSafeBlock();
    v14 = v23[5];

    _Block_object_dispose(&v22, 8);
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__3;
    v26 = __Block_byref_object_dispose__3;
    v27 = 0;
    v17 = MEMORY[0x29EDCA5F8];
    v18 = v20;
    v19 = v21;
    AXPerformSafeBlock();
    v15 = v23[5];

    _Block_object_dispose(&v22, 8);
    [v9 _axSetIsAddItem:{v13, v17, 3221225472, __82__CNPhotoPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_2, &unk_29F2B5A70}];
    [v9 _axSetProviderItem:v14];
    [v9 _axSetProviderGroup:v15];
  }

  return v8;
}

uint64_t __82__CNPhotoPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isItemAtIndexPathAddItem:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __82__CNPhotoPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_309(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) providerItemAtIndexPath:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

uint64_t __82__CNPhotoPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) providerGroupAtIndexPath:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

@end