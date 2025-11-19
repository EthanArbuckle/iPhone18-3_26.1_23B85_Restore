@interface AXUIPoliteBannerView
- (double)defaultTitleToSubtitleVerticalSpacing;
@end

@implementation AXUIPoliteBannerView

- (double)defaultTitleToSubtitleVerticalSpacing
{
  v3.receiver = self;
  v3.super_class = AXUIPoliteBannerView;
  [(AXUIBannerView *)&v3 defaultTitleToSubtitleVerticalSpacing];
  return result;
}

@end