@interface AXInvertColors_ContactsUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_ContactsUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNAvatarView"];
  [v3 validateClass:@"CNVisualIdentityPickerViewController" conformsToProtocol:@"UICollectionViewDataSource"];
  [v3 validateClass:@"CNVisualIdentityPickerViewController" hasProperty:@"dataSource" withType:"@"];
  [v3 validateClass:@"CNPhotoPickerDataSource" hasInstanceMethod:@"isItemAtIndexPathAddItem:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"CNVisualIdentityAvatarViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CNVisualIdentityAvatarViewController" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNVisualIdentityPickerViewController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"CNContactHeaderStaticDisplayView" hasInstanceMethod:@"posterView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNContactHeaderStaticDisplayView" hasInstanceMethod:@"setUpPosterView" withFullSignature:{"v", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"CNAvatarViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CNContactHeaderStaticDisplayViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CNVisualIdentityPickerViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CNVisualIdentityAvatarViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end