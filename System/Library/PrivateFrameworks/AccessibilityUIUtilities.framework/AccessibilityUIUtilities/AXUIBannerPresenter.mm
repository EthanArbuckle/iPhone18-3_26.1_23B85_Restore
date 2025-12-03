@interface AXUIBannerPresenter
- (AXUIBannerPresenter)initWithContainingView:(id)view;
- (void)presentBannerViewWithText:(id)text secondaryText:(id)secondaryText duration:(double)duration fromUserAction:(BOOL)action;
@end

@implementation AXUIBannerPresenter

- (AXUIBannerPresenter)initWithContainingView:(id)view
{
  v6.receiver = self;
  v6.super_class = AXUIBannerPresenter;
  v3 = [(AXUIFloatingViewPresenter *)&v6 initWithContainingView:view alignedToEdge:1 withinSafeArea:0];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

- (void)presentBannerViewWithText:(id)text secondaryText:(id)secondaryText duration:(double)duration fromUserAction:(BOOL)action
{
  textCopy = text;
  secondaryTextCopy = secondaryText;
  v10 = objc_opt_class();
  bannerView = [(AXUIBannerPresenter *)self bannerView];
  if (!bannerView || (v12 = bannerView, -[AXUIBannerPresenter bannerView](self, "bannerView"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isMemberOfClass:v10], v13, v12, (v14 & 1) == 0))
  {
    v15 = objc_alloc_init(v10);
    bannerView = self->_bannerView;
    self->_bannerView = v15;
  }

  bannerView2 = [(AXUIBannerPresenter *)self bannerView];
  [bannerView2 setText:textCopy];

  bannerView3 = [(AXUIBannerPresenter *)self bannerView];
  [bannerView3 setSecondaryText:secondaryTextCopy];

  bannerView4 = [(AXUIBannerPresenter *)self bannerView];
  [(AXUIFloatingViewPresenter *)self presentFloatingView:bannerView4 withDuration:duration];
}

@end