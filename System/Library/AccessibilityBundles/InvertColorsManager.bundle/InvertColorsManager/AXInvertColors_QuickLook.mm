@interface AXInvertColors_QuickLook
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_QuickLook

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"QLImageItemViewController" hasInstanceMethod:@"loadPreviewControllerWithContents:context:completionHandler:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [validationsCopy validateClass:@"QLImageItemViewController" hasInstanceMethod:@"previewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"QLListCell" hasInstanceMethod:@"setThumbnail:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"QLListCell" hasInstanceVariable:@"_thumbnailView" withType:"UIImageView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"QLImageItemViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"QLPreviewScrollViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"QLListCellInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end