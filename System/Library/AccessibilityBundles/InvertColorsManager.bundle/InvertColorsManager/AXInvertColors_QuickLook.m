@interface AXInvertColors_QuickLook
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_QuickLook

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"QLImageItemViewController" hasInstanceMethod:@"loadPreviewControllerWithContents:context:completionHandler:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [v3 validateClass:@"QLImageItemViewController" hasInstanceMethod:@"previewDidAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"QLListCell" hasInstanceMethod:@"setThumbnail:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"QLListCell" hasInstanceVariable:@"_thumbnailView" withType:"UIImageView"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"QLImageItemViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"QLPreviewScrollViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"QLListCellInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end