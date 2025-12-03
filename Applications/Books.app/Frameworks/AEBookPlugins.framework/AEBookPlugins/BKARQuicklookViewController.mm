@interface BKARQuicklookViewController
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller;
@end

@implementation BKARQuicklookViewController

- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller
{
  aRModelDataURL = [(BKARQuicklookViewController *)self ARModelDataURL];

  return aRModelDataURL != 0;
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  v4 = [(BKARQuicklookViewController *)self ARModelDataURL:controller];
  v5 = BUProtocolCast();

  return v5;
}

@end