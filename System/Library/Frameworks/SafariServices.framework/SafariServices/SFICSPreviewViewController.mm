@interface SFICSPreviewViewController
@end

@implementation SFICSPreviewViewController

void __62___SFICSPreviewViewController__presentActivityViewController___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }
}

@end