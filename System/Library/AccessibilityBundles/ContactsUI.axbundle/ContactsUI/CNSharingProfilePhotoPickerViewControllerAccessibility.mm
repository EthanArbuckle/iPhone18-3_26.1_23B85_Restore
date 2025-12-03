@interface CNSharingProfilePhotoPickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CNSharingProfilePhotoPickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNSharingProfilePhotoPickerViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CNSharingProfilePhotoPickerViewController" hasInstanceMethod:@"previewView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNSharingProfilePhotoPickerViewController" hasInstanceMethod:@"selectedItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNSharingProfilePhotoPickerViewController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"CNSharingProfilePhotoPickerItemCell"];
  [validationsCopy validateClass:@"CNSharingProfilePhotoPickerItemCell" hasInstanceMethod:@"pickerItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNSharingProfilePhotoPickerItem"];
  [validationsCopy validateClass:@"CNSharingProfilePhotoPickerItem" hasInstanceMethod:@"avatarItem" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = CNSharingProfilePhotoPickerViewControllerAccessibility;
  [(CNSharingProfilePhotoPickerViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(CNSharingProfilePhotoPickerViewControllerAccessibility *)self safeUIViewForKey:@"previewView"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityLocalizedString(@"preview.image.label");
  [v3 setAccessibilityLabel:v4];

  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __100__CNSharingProfilePhotoPickerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2B5D58;
  objc_copyWeak(&v6, &location);
  [v3 _setAccessibilityValueBlock:v5];
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);
}

id __100__CNSharingProfilePhotoPickerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"selectedItem"];
  v3 = [v2 safeValueForKey:@"avatarItem"];

  v4 = [v3 accessibilityValue];

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNSharingProfilePhotoPickerViewControllerAccessibility;
  [(CNSharingProfilePhotoPickerViewControllerAccessibility *)&v3 viewDidLoad];
  [(CNSharingProfilePhotoPickerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = CNSharingProfilePhotoPickerViewControllerAccessibility;
  v8 = [(CNSharingProfilePhotoPickerViewControllerAccessibility *)&v17 collectionView:viewCopy cellForItemAtIndexPath:pathCopy];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v8);
  [v8 setIsAccessibilityElement:1];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __96__CNSharingProfilePhotoPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke;
  v12[3] = &unk_29F2B5DC8;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  [v8 _setAccessibilityTraitsBlock:v12];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __96__CNSharingProfilePhotoPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_2;
  v10[3] = &unk_29F2B5D58;
  objc_copyWeak(&v11, &from);
  [v8 _setAccessibilityLabelBlock:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v8;
}

uint64_t __96__CNSharingProfilePhotoPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x29EDC7F70];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained safeValueForKey:@"selectedItem"];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 safeValueForKey:@"pickerItem"];

  if (v6 == v4)
  {
    v7 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v7 = 0;
  }

  return v7 | v2;
}

id __96__CNSharingProfilePhotoPickerViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"pickerItem"];

  v3 = [v2 safeStringForKey:@"symbolImageName"];
  if ([v3 isEqualToString:@"ellipsis"])
  {
    v4 = accessibilityLocalizedString(@"more.button.label");
  }

  else
  {
    v5 = [v2 safeValueForKey:@"avatarItem"];
    v4 = [v5 accessibilityValue];
  }

  return v4;
}

@end