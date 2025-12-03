@interface QLItemViewControllerVendor
+ (id)qlItemViewControllerForItem:(id)item;
+ (id)qlItemViewControllerForURL:(id)l;
@end

@implementation QLItemViewControllerVendor

+ (id)qlItemViewControllerForURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(QLItemPresenterViewController);
  v5 = [objc_alloc(MEMORY[0x277D43F58]) initWithURL:lCopy];

  [(QLItemPresenterViewController *)v4 loadPreviewControllerWithContents:v5 context:0 completionHandler:&__block_literal_global_282];

  return v4;
}

+ (id)qlItemViewControllerForItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(QLItemPresenterViewController);
  [(QLItemPresenterViewController *)v4 loadPreviewControllerWithContents:itemCopy context:0 completionHandler:&__block_literal_global_284_0];

  return v4;
}

@end