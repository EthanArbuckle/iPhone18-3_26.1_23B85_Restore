@interface LocalSearchViewController
- (BOOL)shouldBeVisible;
- (BOOL)showInCardFooterWhenCardHasExpandedLayout;
- (BOOL)updateActiveBusinessController;
- (LocalSearchViewControllerDelegate)delegate;
- (VKVenueFeatureMarker)venueWithFocus;
- (id)businessControllers;
- (id)contentView;
- (id)initAsButton:(BOOL)a3;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (void)businessControllerContentSizeDidChange:(id)a3;
- (void)businessControllerVisibilityDidChange:(id)a3;
- (void)loadView;
- (void)localSearchViewContentSizeChanged;
- (void)localSearchViewSelected:(id)a3;
- (void)localSearchViewVisibilityChanged;
- (void)reportVisibilityIfNeeded;
- (void)setActiveBusinessController:(id)a3;
- (void)setBottomInset:(double)a3;
- (void)setEnable:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation LocalSearchViewController

- (LocalSearchViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int)currentMapViewTargetForAnalytics
{
  v3 = [(LocalSearchViewController *)self delegate];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  v5 = [(LocalSearchViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 currentMapViewTargetForAnalytics];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)currentUITargetForAnalytics
{
  v3 = [(LocalSearchViewController *)self delegate];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  v5 = [(LocalSearchViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 currentUITargetForAnalytics];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)businessControllerContentSizeDidChange:(id)a3
{
  v5 = a3;
  if (![(LocalSearchViewController *)self updateActiveBusinessController])
  {
    v4 = [(LocalSearchViewController *)self activeBusinessController];

    if (v4 == v5)
    {
      [(LocalSearchViewController *)self localSearchViewContentSizeChanged];
    }
  }
}

- (void)businessControllerVisibilityDidChange:(id)a3
{
  [(LocalSearchViewController *)self updateActiveBusinessController];
  [(LocalSearchViewController *)self localSearchViewVisibilityChanged];

  [(LocalSearchViewController *)self reportVisibilityIfNeeded];
}

- (VKVenueFeatureMarker)venueWithFocus
{
  v2 = [(LocalSearchViewController *)self delegate];
  v3 = [v2 venueWithFocus];

  return v3;
}

- (void)localSearchViewContentSizeChanged
{
  v3 = [(LocalSearchViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(LocalSearchViewController *)self delegate];
    [v5 localSearchViewControllerSizeDidChange:self];
  }
}

- (void)localSearchViewVisibilityChanged
{
  v3 = [(LocalSearchViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(LocalSearchViewController *)self delegate];
    [v5 localSearchViewShouldBeVisibleDidChange:self];
  }
}

- (void)localSearchViewSelected:(id)a3
{
  v4 = [(LocalSearchViewController *)self activeBusinessController];
  [v4 sendAnalyticsOnUserActionWithTarget:{-[LocalSearchViewController currentUITargetForAnalytics](self, "currentUITargetForAnalytics")}];

  v5 = [(LocalSearchViewController *)self activeBusinessController];
  v6 = [(LocalSearchViewController *)self refreshSearchHereBusinessController];

  if (v5 == v6)
  {
    v9 = [(LocalSearchViewController *)self delegate];
    [v9 localSearchViewControllerDidSelectRefreshSearchHere:self];
  }

  else
  {
    v7 = [(LocalSearchViewController *)self activeBusinessController];
    v8 = [(LocalSearchViewController *)self browseVenueBusinessController];

    if (v7 != v8)
    {
      return;
    }

    v9 = [(LocalSearchViewController *)self delegate];
    [v9 viewControllerDidSelectBrowseVenue:self];
  }
}

- (BOOL)showInCardFooterWhenCardHasExpandedLayout
{
  v2 = [(LocalSearchViewController *)self activeBusinessController];
  v3 = [v2 showInCardFooterWhenCardHasExpandedLayout];

  return v3;
}

- (BOOL)shouldBeVisible
{
  if (![(LocalSearchViewController *)self isEnabled])
  {
    return 0;
  }

  v3 = [(LocalSearchViewController *)self refreshSearchHereBusinessController];
  if ([v3 shouldBeVisible])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(LocalSearchViewController *)self browseVenueBusinessController];
    v4 = [v5 shouldBeVisible];
  }

  return v4;
}

- (void)setEnable:(BOOL)a3
{
  if (self->_enable != a3)
  {
    self->_enable = a3;
    [(LocalSearchViewController *)self localSearchViewVisibilityChanged];

    [(LocalSearchViewController *)self reportVisibilityIfNeeded];
  }
}

- (void)reportVisibilityIfNeeded
{
  if ([(LocalSearchViewController *)self viewHasAppeared]&& [(LocalSearchViewController *)self shouldBeVisible])
  {
    v3 = [(LocalSearchViewController *)self activeBusinessController];
    v4 = [(LocalSearchViewController *)self reportedVisibleBusinessController];

    if (v3 != v4)
    {
      v5 = [(LocalSearchViewController *)self activeBusinessController];
      [v5 sendAnalyticsOnBecomeVisibleWithTarget:{-[LocalSearchViewController currentUITargetForAnalytics](self, "currentUITargetForAnalytics")}];

      v6 = [(LocalSearchViewController *)self activeBusinessController];
      [(LocalSearchViewController *)self setReportedVisibleBusinessController:v6];
    }
  }

  else
  {

    [(LocalSearchViewController *)self setReportedVisibleBusinessController:0];
  }
}

- (void)setActiveBusinessController:(id)a3
{
  v5 = a3;
  if (self->_activeBusinessController != v5)
  {
    objc_storeStrong(&self->_activeBusinessController, a3);
    v6 = [(LocalSearchViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(LocalSearchViewController *)self delegate];
      [v8 localSearchViewShowInCardFooterWhenCardHasExpandedLayoutDidChange:self];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [(LocalSearchViewController *)self businessControllers];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          if (v14 == v5)
          {
            v15 = [(LocalSearchViewController *)self contentView];
            [(LocalSearchBusinessController *)v14 setContentView:v15];
          }

          else
          {
            [*(*(&v17 + 1) + 8 * v13) setContentView:0];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v16 = [(LocalSearchViewController *)self contentView];
    [v16 layoutIfNeeded];

    [(LocalSearchViewController *)self reportVisibilityIfNeeded];
    [(MapsThemeViewController *)self updateTheme];
    [(LocalSearchViewController *)self localSearchViewContentSizeChanged];
  }
}

- (BOOL)updateActiveBusinessController
{
  p_refreshSearchHereBusinessController = &self->_refreshSearchHereBusinessController;
  if (![(RefreshSearchHereBusinessController *)self->_refreshSearchHereBusinessController shouldBeVisible])
  {
    p_refreshSearchHereBusinessController = &self->_browseVenueBusinessController;
    if (![(BrowseVenueBusinessController *)self->_browseVenueBusinessController shouldBeVisible])
    {
      p_refreshSearchHereBusinessController = &self->_activeBusinessController;
    }
  }

  v4 = *p_refreshSearchHereBusinessController;
  activeBusinessController = self->_activeBusinessController;
  if (v4 != activeBusinessController)
  {
    [(LocalSearchViewController *)self setActiveBusinessController:v4];
  }

  return v4 != activeBusinessController;
}

- (id)businessControllers
{
  v3 = [(LocalSearchViewController *)self refreshSearchHereBusinessController];
  v7[0] = v3;
  v4 = [(LocalSearchViewController *)self browseVenueBusinessController];
  v7[1] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

- (id)contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = [[LocalSearchView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_contentView;
    self->_contentView = v4;

    [(LocalSearchView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(LocalSearchView *)self->_contentView setButtonMode:self->_buttonMode];
    [(LocalSearchView *)self->_contentView setBottomInset:self->_bottomInset];
    [(LocalSearchView *)self->_contentView setDelegate:self];
    v6 = self->_contentView;
    v7 = [(LocalSearchViewController *)self activeBusinessController];
    [v7 setContentView:v6];

    contentView = self->_contentView;
  }

  return contentView;
}

- (void)setBottomInset:(double)a3
{
  if (self->_bottomInset != a3)
  {
    self->_bottomInset = a3;
    [(LocalSearchView *)self->_contentView setBottomInset:?];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = LocalSearchViewController;
  [(LocalSearchViewController *)&v4 viewDidDisappear:a3];
  self->_viewHasAppeared = 0;
  [(LocalSearchViewController *)self reportVisibilityIfNeeded];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(LocalSearchViewController *)self reportVisibilityIfNeeded];
  v5.receiver = self;
  v5.super_class = LocalSearchViewController;
  [(LocalSearchViewController *)&v5 viewDidAppear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  self->_viewHasAppeared = 1;
  v5 = [(LocalSearchViewController *)self activeBusinessController];
  [v5 viewWillAppear];

  v6.receiver = self;
  v6.super_class = LocalSearchViewController;
  [(LocalSearchViewController *)&v6 viewWillAppear:v3];
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = LocalSearchViewController;
  [(LocalSearchViewController *)&v25 viewDidLoad];
  cardView = self->_cardView;
  if (cardView || (cardView = self->_blurView) != 0)
  {
    v4 = [cardView contentView];
  }

  else
  {
    v4 = [(LocalSearchViewController *)self view];
  }

  v5 = v4;
  v20 = v4;
  v6 = [(LocalSearchViewController *)self contentView];
  [v5 addSubview:v6];

  v23 = [(LocalSearchView *)self->_contentView leadingAnchor];
  v24 = [(LocalSearchViewController *)self view];
  v22 = [v24 leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v26[0] = v21;
  v18 = [(LocalSearchView *)self->_contentView trailingAnchor];
  v19 = [(LocalSearchViewController *)self view];
  v17 = [v19 trailingAnchor];
  v7 = [v18 constraintEqualToAnchor:v17];
  v26[1] = v7;
  v8 = [(LocalSearchView *)self->_contentView topAnchor];
  v9 = [(LocalSearchViewController *)self view];
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v26[2] = v11;
  v12 = [(LocalSearchView *)self->_contentView bottomAnchor];
  v13 = [(LocalSearchViewController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v26[3] = v15;
  v16 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v16];
}

- (void)loadView
{
  if (!self->_buttonMode)
  {
    if (_UISolariumEnabled())
    {
      v11.receiver = self;
      v11.super_class = LocalSearchViewController;
      [(LocalSearchViewController *)&v11 loadView];
      return;
    }

    v7 = [MapsTheme visualEffectViewAllowingBlur:1];
    blurView = self->_blurView;
    self->_blurView = v7;

    [(UIVisualEffectView *)self->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
    goto LABEL_10;
  }

  if (sub_10000FA08(self) == 5)
  {
    v3 = [MapsTheme visualEffectViewAllowingBlur:1];
    v4 = self->_blurView;
    self->_blurView = v3;

    [(UIVisualEffectView *)self->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)self->_blurView _setCornerRadius:1 continuous:15 maskedCorners:9.0];
LABEL_10:
    v9 = self->_blurView;

    [(LocalSearchViewController *)self setView:v9];
    return;
  }

  v5 = [[CardView alloc] initAllowingBlurredForButton:1 buttonBackgroundType:0];
  [(CardView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CardView *)v5 setLayoutStyle:6];
  cardView = self->_cardView;
  self->_cardView = v5;
  v10 = v5;

  [(LocalSearchViewController *)self setView:self->_cardView];
}

- (id)initAsButton:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = LocalSearchViewController;
  v4 = [(LocalSearchViewController *)&v11 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_buttonMode = a3;
    v6 = [[RefreshSearchHereBusinessController alloc] initWithDelegate:v4];
    refreshSearchHereBusinessController = v5->_refreshSearchHereBusinessController;
    v5->_refreshSearchHereBusinessController = v6;

    v8 = [[BrowseVenueBusinessController alloc] initWithDelegate:v5];
    browseVenueBusinessController = v5->_browseVenueBusinessController;
    v5->_browseVenueBusinessController = v8;

    objc_storeStrong(&v5->_activeBusinessController, v5->_refreshSearchHereBusinessController);
  }

  return v5;
}

@end