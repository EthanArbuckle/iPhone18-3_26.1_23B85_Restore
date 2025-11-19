@interface QLItemViewControllerVendor
+ (id)qlItemViewControllerForItem:(id)a3;
+ (id)qlItemViewControllerForURL:(id)a3;
@end

@implementation QLItemViewControllerVendor

+ (id)qlItemViewControllerForURL:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(QLItemPresenterViewController);
  v5 = [objc_alloc(MEMORY[0x277D43F58]) initWithURL:v3];

  [(QLItemPresenterViewController *)v4 loadPreviewControllerWithContents:v5 context:0 completionHandler:&__block_literal_global_282];

  return v4;
}

+ (id)qlItemViewControllerForItem:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(QLItemPresenterViewController);
  [(QLItemPresenterViewController *)v4 loadPreviewControllerWithContents:v3 context:0 completionHandler:&__block_literal_global_284_0];

  return v4;
}

@end