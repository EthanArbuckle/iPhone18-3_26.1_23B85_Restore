@interface SFAdaptivePreviewViewController
@end

@implementation SFAdaptivePreviewViewController

uint64_t __63___SFAdaptivePreviewViewController__updatePreferredContentSize__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  v3 = *(a1 + 40);

  return [v3 layoutIfNeeded];
}

@end