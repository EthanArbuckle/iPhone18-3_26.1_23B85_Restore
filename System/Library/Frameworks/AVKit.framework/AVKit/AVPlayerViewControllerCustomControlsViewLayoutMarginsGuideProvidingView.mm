@interface AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView
- (AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
@end

@implementation AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView

- (CGSize)intrinsicContentSize
{
  v2 = 10000.0;
  v3 = 10000.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView;
  v3 = [(AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView *)v3 setHidden:1];
    [(AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView *)v4 setPreservesSuperviewLayoutMargins:0];
    [(AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView *)v4 setInsetsLayoutMarginsFromSafeArea:0];
    [(AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView *)v4 setUserInteractionEnabled:0];
    [(AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView *)v4 setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    LODWORD(v5) = 1.0;
    [(AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView *)v4 setContentCompressionResistancePriority:0 forAxis:v5];
    LODWORD(v6) = 1.0;
    [(AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView *)v4 setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v7) = 1112014848;
    [(AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView *)v4 setContentHuggingPriority:0 forAxis:v7];
    LODWORD(v8) = 1112014848;
    [(AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView *)v4 setContentHuggingPriority:1 forAxis:v8];
  }

  return v4;
}

@end