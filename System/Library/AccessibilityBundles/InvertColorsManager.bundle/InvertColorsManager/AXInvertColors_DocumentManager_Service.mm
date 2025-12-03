@interface AXInvertColors_DocumentManager_Service
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_DocumentManager_Service

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"com_apple_DocumentManager_Service.DOCBasicListViewCell"];
  [validationsCopy validateClass:@"com_apple_DocumentManager_Service.DOCBadgedFittingImageView"];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"com_apple_DocumentManager_Service.DOCBasicListViewCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"UIDocumentBrowserViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UIDocumentBrowserViewController" hasInstanceMethod:@"updateAppearance:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UIDocumentBrowserViewController" hasInstanceMethod:@"browserUserInterfaceStyle" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"UIDocumentBrowserViewController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"DocumentManagerService_DOCBadgedFittingImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"DocumentManagerService_DOCBasicListViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"DocumentManagerService_UIDocumentBrowserViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end