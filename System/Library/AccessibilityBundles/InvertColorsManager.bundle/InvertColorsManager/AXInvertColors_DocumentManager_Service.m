@interface AXInvertColors_DocumentManager_Service
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_DocumentManager_Service

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"com_apple_DocumentManager_Service.DOCBasicListViewCell"];
  [v3 validateClass:@"com_apple_DocumentManager_Service.DOCBadgedFittingImageView"];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"com_apple_DocumentManager_Service.DOCBasicListViewCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"UIDocumentBrowserViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIDocumentBrowserViewController" hasInstanceMethod:@"updateAppearance:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UIDocumentBrowserViewController" hasInstanceMethod:@"browserUserInterfaceStyle" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"UIDocumentBrowserViewController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"DocumentManagerService_DOCBadgedFittingImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"DocumentManagerService_DOCBasicListViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"DocumentManagerService_UIDocumentBrowserViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end