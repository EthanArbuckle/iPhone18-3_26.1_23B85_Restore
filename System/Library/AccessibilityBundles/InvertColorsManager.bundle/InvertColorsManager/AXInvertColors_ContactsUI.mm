@interface AXInvertColors_ContactsUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_ContactsUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNAvatarView"];
  [validationsCopy validateClass:@"CNVisualIdentityPickerViewController" conformsToProtocol:@"UICollectionViewDataSource"];
  [validationsCopy validateClass:@"CNVisualIdentityPickerViewController" hasProperty:@"dataSource" withType:"@"];
  [validationsCopy validateClass:@"CNPhotoPickerDataSource" hasInstanceMethod:@"isItemAtIndexPathAddItem:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"CNVisualIdentityAvatarViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CNVisualIdentityAvatarViewController" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNVisualIdentityPickerViewController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"CNContactHeaderStaticDisplayView" hasInstanceMethod:@"posterView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNContactHeaderStaticDisplayView" hasInstanceMethod:@"setUpPosterView" withFullSignature:{"v", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"CNAvatarViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CNContactHeaderStaticDisplayViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CNVisualIdentityPickerViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CNVisualIdentityAvatarViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end