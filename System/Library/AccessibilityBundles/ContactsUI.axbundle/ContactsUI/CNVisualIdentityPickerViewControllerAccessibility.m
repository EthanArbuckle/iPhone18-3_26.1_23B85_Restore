@interface CNVisualIdentityPickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CNVisualIdentityPickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNVisualIdentityPickerViewController"];
  [v3 validateClass:@"CNVisualIdentityPickerViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CNVisualIdentityPickerViewController" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNVisualIdentityPickerViewController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"CNVisualIdentityPickerViewController" hasProperty:@"collectionView" withType:"@"];
  [v3 validateClass:@"CNPhotoPickerDataSource"];
  [v3 validateClass:@"CNPhotoPickerDataSource" hasInstanceMethod:@"isItemAtIndexPathAddItem:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"CNPhotoPickerDataSource" hasInstanceMethod:@"providerItemAtIndexPath:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"CNPhotoPickerDataSource" hasInstanceMethod:@"providerGroupAtIndexPath:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"CNPhotoPickerProviderGroup"];
  [v3 validateClass:@"CNPhotoPickerProviderGroup" hasProperty:@"groupType" withType:"q"];
  [v3 validateClass:@"CNPhotoPickerCollectionViewCell"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CNVisualIdentityPickerViewControllerAccessibility;
  [(CNVisualIdentityPickerViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CNVisualIdentityPickerViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = accessibilityLocalizedString(@"collection.photos.label");
  [v3 setAccessibilityLabel:v4];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNVisualIdentityPickerViewControllerAccessibility;
  [(CNVisualIdentityPickerViewControllerAccessibility *)&v3 viewDidLoad];
  [(CNVisualIdentityPickerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v39.receiver = self;
  v39.super_class = CNVisualIdentityPickerViewControllerAccessibility;
  v8 = [(CNVisualIdentityPickerViewControllerAccessibility *)&v39 collectionView:v6 cellForItemAtIndexPath:v7];
  MEMORY[0x29C2D1D40](@"CNPhotoPickerCollectionViewCell");
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, v6);
    v9 = [(CNVisualIdentityPickerViewControllerAccessibility *)self safeValueForKey:@"dataSource"];
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy_;
    v36 = __Block_byref_object_dispose_;
    v37 = 0;
    v25 = MEMORY[0x29EDCA5F8];
    v26 = 3221225472;
    v27 = __91__CNVisualIdentityPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke;
    v28 = &unk_29F2B5A70;
    v31 = &v32;
    v29 = v9;
    v30 = v7;
    AXPerformSafeBlock();
    v10 = v33[5];

    _Block_object_dispose(&v32, 8);
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    LOBYTE(v35) = 0;
    v21[8] = MEMORY[0x29EDCA5F8];
    v21[9] = 3221225472;
    v21[10] = __91__CNVisualIdentityPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_2;
    v21[11] = &unk_29F2B5A70;
    v24 = &v32;
    v22 = v29;
    v23 = v30;
    AXPerformSafeBlock();
    v11 = *(v33 + 24);

    _Block_object_dispose(&v32, 8);
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v21[1] = MEMORY[0x29EDCA5F8];
    v21[2] = 3221225472;
    v21[3] = __91__CNVisualIdentityPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_3;
    v21[4] = &unk_29F2B5A70;
    v21[7] = &v32;
    v12 = v22;
    v21[5] = v12;
    v13 = v23;
    v21[6] = v13;
    AXPerformSafeBlock();
    v14 = v33[3];

    _Block_object_dispose(&v32, 8);
    LOBYTE(v32) = 0;
    objc_opt_class();
    v15 = __UIAccessibilityCastAsSafeCategory();
    if (v32 == 1)
    {
      abort();
    }

    v16 = v15;
    if (v11 && v14 == 2)
    {
      v17 = accessibilityLocalizedString(@"new.memoji.button");
      [v16 setAccessibilityLabel:v17];
    }

    else
    {
      if (!v11 || v14 != 3)
      {
        [v15 setAccessibilityLabel:0];
        goto LABEL_11;
      }

      v17 = accessibilityLocalizedString(@"new.emoji.button");
      [v16 setAccessibilityLabel:v17];
    }

LABEL_11:
    [v16 _axSetIsAddItem:v11];
    [v16 _axSetIsVariant:1];
    [v16 _axSetProviderItem:v10];
    v19[0] = MEMORY[0x29EDCA5F8];
    v19[1] = 3221225472;
    v19[2] = __91__CNVisualIdentityPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_4;
    v19[3] = &unk_29F2B5A98;
    objc_copyWeak(v21, &location);
    v20 = v13;
    [v16 _setAccessibilityAdditionalTraitsBlock:v19];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }

  return v8;
}

uint64_t __91__CNVisualIdentityPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) providerItemAtIndexPath:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

uint64_t __91__CNVisualIdentityPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isItemAtIndexPathAddItem:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __91__CNVisualIdentityPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) providerGroupAtIndexPath:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v2 safeIntegerForKey:@"groupType"];
}

uint64_t __91__CNVisualIdentityPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained indexPathsForSelectedItems];
  v4 = [v3 firstObject];

  v5 = [*(a1 + 32) isEqual:v4];
  v6 = MEMORY[0x29EDC7FC0];
  if (!v5)
  {
    v6 = MEMORY[0x29EDC7FA0];
  }

  v7 = *v6;

  return v7;
}

@end