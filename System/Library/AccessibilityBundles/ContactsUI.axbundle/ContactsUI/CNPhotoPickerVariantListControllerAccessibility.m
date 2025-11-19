@interface CNPhotoPickerVariantListControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CNPhotoPickerVariantListControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNPhotoPickerVariantListController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CNPhotoPickerVariantListController" hasInstanceMethod:@"providerItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPhotoPickerVariantListController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"CNPhotoPickerVariantListController" hasProperty:@"collectionView" withType:"@"];
  [v3 validateClass:@"CNPhotoPickerCollectionViewCell"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CNPhotoPickerVariantListControllerAccessibility;
  [(CNPhotoPickerVariantListControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CNPhotoPickerVariantListControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = accessibilityLocalizedString(@"collection.photos.label");
  [v3 setAccessibilityLabel:v4];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNPhotoPickerVariantListControllerAccessibility;
  [(CNPhotoPickerVariantListControllerAccessibility *)&v3 viewDidLoad];
  [(CNPhotoPickerVariantListControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = CNPhotoPickerVariantListControllerAccessibility;
  v8 = [(CNPhotoPickerVariantListControllerAccessibility *)&v18 collectionView:v6 cellForItemAtIndexPath:v7];
  MEMORY[0x29C2D1D40](@"CNPhotoPickerCollectionViewCell");
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, v6);
    v9 = [(CNPhotoPickerVariantListControllerAccessibility *)self safeArrayForKey:@"providerItems"];
    v10 = [v9 axSafeObjectAtIndex:{objc_msgSend(v7, "row")}];

    v16 = 0;
    objc_opt_class();
    v11 = __UIAccessibilityCastAsSafeCategory();
    [v11 _axSetIsVariant:1];
    [v11 _axSetProviderItem:v10];
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __89__CNPhotoPickerVariantListControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke;
    v13[3] = &unk_29F2B5A98;
    objc_copyWeak(&v15, &location);
    v14 = v7;
    [v11 _setAccessibilityAdditionalTraitsBlock:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v8;
}

uint64_t __89__CNPhotoPickerVariantListControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1)
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