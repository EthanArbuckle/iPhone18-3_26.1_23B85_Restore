@interface CNVisualIdentityItemEditorViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)setupStyleCollectionView;
@end

@implementation CNVisualIdentityItemEditorViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNVisualIdentityItemEditorViewController" hasInstanceMethod:@"variantProviderItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNVisualIdentityItemEditorViewController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"CNVisualIdentityItemEditorViewController" hasInstanceMethod:@"setupStyleCollectionView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CNVisualIdentityItemEditorViewController" hasProperty:@"styleCollectionView" withType:"@"];
  [validationsCopy validateClass:@"CNPhotoPickerCollectionViewCell"];
}

- (void)setupStyleCollectionView
{
  v5.receiver = self;
  v5.super_class = CNVisualIdentityItemEditorViewControllerAccessibility;
  [(CNVisualIdentityItemEditorViewControllerAccessibility *)&v5 setupStyleCollectionView];
  v3 = [(CNVisualIdentityItemEditorViewControllerAccessibility *)self safeValueForKey:@"styleCollectionView"];
  v4 = accessibilityLocalizedString(@"collection.photos.label");
  [v3 setAccessibilityLabel:v4];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = CNVisualIdentityItemEditorViewControllerAccessibility;
  v8 = [(CNVisualIdentityItemEditorViewControllerAccessibility *)&v18 collectionView:viewCopy cellForItemAtIndexPath:pathCopy];
  MEMORY[0x29C2D1D40](@"CNPhotoPickerCollectionViewCell");
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, viewCopy);
    v9 = [(CNVisualIdentityItemEditorViewControllerAccessibility *)self safeArrayForKey:@"variantProviderItems"];
    v10 = [v9 axSafeObjectAtIndex:{objc_msgSend(pathCopy, "row")}];

    v16 = 0;
    objc_opt_class();
    v11 = __UIAccessibilityCastAsSafeCategory();
    [v11 _axSetIsVariant:1];
    [v11 _axSetProviderItem:v10];
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __95__CNVisualIdentityItemEditorViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke;
    v13[3] = &unk_29F2B5A98;
    objc_copyWeak(&v15, &location);
    v14 = pathCopy;
    [v11 _setAccessibilityAdditionalTraitsBlock:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v8;
}

uint64_t __95__CNVisualIdentityItemEditorViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1)
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