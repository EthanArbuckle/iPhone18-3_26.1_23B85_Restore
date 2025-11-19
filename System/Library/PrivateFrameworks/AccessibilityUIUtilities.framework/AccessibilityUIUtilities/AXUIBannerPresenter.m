@interface AXUIBannerPresenter
- (AXUIBannerPresenter)initWithContainingView:(id)a3;
- (void)presentBannerViewWithText:(id)a3 secondaryText:(id)a4 duration:(double)a5 fromUserAction:(BOOL)a6;
@end

@implementation AXUIBannerPresenter

- (AXUIBannerPresenter)initWithContainingView:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXUIBannerPresenter;
  v3 = [(AXUIFloatingViewPresenter *)&v6 initWithContainingView:a3 alignedToEdge:1 withinSafeArea:0];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

- (void)presentBannerViewWithText:(id)a3 secondaryText:(id)a4 duration:(double)a5 fromUserAction:(BOOL)a6
{
  v20 = a3;
  v9 = a4;
  v10 = objc_opt_class();
  v11 = [(AXUIBannerPresenter *)self bannerView];
  if (!v11 || (v12 = v11, -[AXUIBannerPresenter bannerView](self, "bannerView"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isMemberOfClass:v10], v13, v12, (v14 & 1) == 0))
  {
    v15 = objc_alloc_init(v10);
    bannerView = self->_bannerView;
    self->_bannerView = v15;
  }

  v17 = [(AXUIBannerPresenter *)self bannerView];
  [v17 setText:v20];

  v18 = [(AXUIBannerPresenter *)self bannerView];
  [v18 setSecondaryText:v9];

  v19 = [(AXUIBannerPresenter *)self bannerView];
  [(AXUIFloatingViewPresenter *)self presentFloatingView:v19 withDuration:a5];
}

@end