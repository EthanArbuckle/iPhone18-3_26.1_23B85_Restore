@interface LocalSearchViewController
- (BOOL)shouldBeVisible;
- (BOOL)showInCardFooterWhenCardHasExpandedLayout;
- (BOOL)updateActiveBusinessController;
- (LocalSearchViewControllerDelegate)delegate;
- (VKVenueFeatureMarker)venueWithFocus;
- (id)businessControllers;
- (id)contentView;
- (id)initAsButton:(BOOL)button;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (void)businessControllerContentSizeDidChange:(id)change;
- (void)businessControllerVisibilityDidChange:(id)change;
- (void)loadView;
- (void)localSearchViewContentSizeChanged;
- (void)localSearchViewSelected:(id)selected;
- (void)localSearchViewVisibilityChanged;
- (void)reportVisibilityIfNeeded;
- (void)setActiveBusinessController:(id)controller;
- (void)setBottomInset:(double)inset;
- (void)setEnable:(BOOL)enable;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation LocalSearchViewController

- (LocalSearchViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int)currentMapViewTargetForAnalytics
{
  delegate = [(LocalSearchViewController *)self delegate];
  v4 = [delegate conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  delegate2 = [(LocalSearchViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    currentMapViewTargetForAnalytics = [delegate2 currentMapViewTargetForAnalytics];
  }

  else
  {
    currentMapViewTargetForAnalytics = 0;
  }

  return currentMapViewTargetForAnalytics;
}

- (int)currentUITargetForAnalytics
{
  delegate = [(LocalSearchViewController *)self delegate];
  v4 = [delegate conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  delegate2 = [(LocalSearchViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    currentUITargetForAnalytics = [delegate2 currentUITargetForAnalytics];
  }

  else
  {
    currentUITargetForAnalytics = 0;
  }

  return currentUITargetForAnalytics;
}

- (void)businessControllerContentSizeDidChange:(id)change
{
  changeCopy = change;
  if (![(LocalSearchViewController *)self updateActiveBusinessController])
  {
    activeBusinessController = [(LocalSearchViewController *)self activeBusinessController];

    if (activeBusinessController == changeCopy)
    {
      [(LocalSearchViewController *)self localSearchViewContentSizeChanged];
    }
  }
}

- (void)businessControllerVisibilityDidChange:(id)change
{
  [(LocalSearchViewController *)self updateActiveBusinessController];
  [(LocalSearchViewController *)self localSearchViewVisibilityChanged];

  [(LocalSearchViewController *)self reportVisibilityIfNeeded];
}

- (VKVenueFeatureMarker)venueWithFocus
{
  delegate = [(LocalSearchViewController *)self delegate];
  venueWithFocus = [delegate venueWithFocus];

  return venueWithFocus;
}

- (void)localSearchViewContentSizeChanged
{
  delegate = [(LocalSearchViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(LocalSearchViewController *)self delegate];
    [delegate2 localSearchViewControllerSizeDidChange:self];
  }
}

- (void)localSearchViewVisibilityChanged
{
  delegate = [(LocalSearchViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(LocalSearchViewController *)self delegate];
    [delegate2 localSearchViewShouldBeVisibleDidChange:self];
  }
}

- (void)localSearchViewSelected:(id)selected
{
  activeBusinessController = [(LocalSearchViewController *)self activeBusinessController];
  [activeBusinessController sendAnalyticsOnUserActionWithTarget:{-[LocalSearchViewController currentUITargetForAnalytics](self, "currentUITargetForAnalytics")}];

  activeBusinessController2 = [(LocalSearchViewController *)self activeBusinessController];
  refreshSearchHereBusinessController = [(LocalSearchViewController *)self refreshSearchHereBusinessController];

  if (activeBusinessController2 == refreshSearchHereBusinessController)
  {
    delegate = [(LocalSearchViewController *)self delegate];
    [delegate localSearchViewControllerDidSelectRefreshSearchHere:self];
  }

  else
  {
    activeBusinessController3 = [(LocalSearchViewController *)self activeBusinessController];
    browseVenueBusinessController = [(LocalSearchViewController *)self browseVenueBusinessController];

    if (activeBusinessController3 != browseVenueBusinessController)
    {
      return;
    }

    delegate = [(LocalSearchViewController *)self delegate];
    [delegate viewControllerDidSelectBrowseVenue:self];
  }
}

- (BOOL)showInCardFooterWhenCardHasExpandedLayout
{
  activeBusinessController = [(LocalSearchViewController *)self activeBusinessController];
  showInCardFooterWhenCardHasExpandedLayout = [activeBusinessController showInCardFooterWhenCardHasExpandedLayout];

  return showInCardFooterWhenCardHasExpandedLayout;
}

- (BOOL)shouldBeVisible
{
  if (![(LocalSearchViewController *)self isEnabled])
  {
    return 0;
  }

  refreshSearchHereBusinessController = [(LocalSearchViewController *)self refreshSearchHereBusinessController];
  if ([refreshSearchHereBusinessController shouldBeVisible])
  {
    shouldBeVisible = 1;
  }

  else
  {
    browseVenueBusinessController = [(LocalSearchViewController *)self browseVenueBusinessController];
    shouldBeVisible = [browseVenueBusinessController shouldBeVisible];
  }

  return shouldBeVisible;
}

- (void)setEnable:(BOOL)enable
{
  if (self->_enable != enable)
  {
    self->_enable = enable;
    [(LocalSearchViewController *)self localSearchViewVisibilityChanged];

    [(LocalSearchViewController *)self reportVisibilityIfNeeded];
  }
}

- (void)reportVisibilityIfNeeded
{
  if ([(LocalSearchViewController *)self viewHasAppeared]&& [(LocalSearchViewController *)self shouldBeVisible])
  {
    activeBusinessController = [(LocalSearchViewController *)self activeBusinessController];
    reportedVisibleBusinessController = [(LocalSearchViewController *)self reportedVisibleBusinessController];

    if (activeBusinessController != reportedVisibleBusinessController)
    {
      activeBusinessController2 = [(LocalSearchViewController *)self activeBusinessController];
      [activeBusinessController2 sendAnalyticsOnBecomeVisibleWithTarget:{-[LocalSearchViewController currentUITargetForAnalytics](self, "currentUITargetForAnalytics")}];

      activeBusinessController3 = [(LocalSearchViewController *)self activeBusinessController];
      [(LocalSearchViewController *)self setReportedVisibleBusinessController:activeBusinessController3];
    }
  }

  else
  {

    [(LocalSearchViewController *)self setReportedVisibleBusinessController:0];
  }
}

- (void)setActiveBusinessController:(id)controller
{
  controllerCopy = controller;
  if (self->_activeBusinessController != controllerCopy)
  {
    objc_storeStrong(&self->_activeBusinessController, controller);
    delegate = [(LocalSearchViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(LocalSearchViewController *)self delegate];
      [delegate2 localSearchViewShowInCardFooterWhenCardHasExpandedLayoutDidChange:self];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    businessControllers = [(LocalSearchViewController *)self businessControllers];
    v10 = [businessControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(businessControllers);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          if (v14 == controllerCopy)
          {
            contentView = [(LocalSearchViewController *)self contentView];
            [(LocalSearchBusinessController *)v14 setContentView:contentView];
          }

          else
          {
            [*(*(&v17 + 1) + 8 * v13) setContentView:0];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [businessControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    contentView2 = [(LocalSearchViewController *)self contentView];
    [contentView2 layoutIfNeeded];

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
  refreshSearchHereBusinessController = [(LocalSearchViewController *)self refreshSearchHereBusinessController];
  v7[0] = refreshSearchHereBusinessController;
  browseVenueBusinessController = [(LocalSearchViewController *)self browseVenueBusinessController];
  v7[1] = browseVenueBusinessController;
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
    activeBusinessController = [(LocalSearchViewController *)self activeBusinessController];
    [activeBusinessController setContentView:v6];

    contentView = self->_contentView;
  }

  return contentView;
}

- (void)setBottomInset:(double)inset
{
  if (self->_bottomInset != inset)
  {
    self->_bottomInset = inset;
    [(LocalSearchView *)self->_contentView setBottomInset:?];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = LocalSearchViewController;
  [(LocalSearchViewController *)&v4 viewDidDisappear:disappear];
  self->_viewHasAppeared = 0;
  [(LocalSearchViewController *)self reportVisibilityIfNeeded];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(LocalSearchViewController *)self reportVisibilityIfNeeded];
  v5.receiver = self;
  v5.super_class = LocalSearchViewController;
  [(LocalSearchViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  self->_viewHasAppeared = 1;
  activeBusinessController = [(LocalSearchViewController *)self activeBusinessController];
  [activeBusinessController viewWillAppear];

  v6.receiver = self;
  v6.super_class = LocalSearchViewController;
  [(LocalSearchViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = LocalSearchViewController;
  [(LocalSearchViewController *)&v25 viewDidLoad];
  cardView = self->_cardView;
  if (cardView || (cardView = self->_blurView) != 0)
  {
    contentView = [cardView contentView];
  }

  else
  {
    contentView = [(LocalSearchViewController *)self view];
  }

  v5 = contentView;
  v20 = contentView;
  contentView2 = [(LocalSearchViewController *)self contentView];
  [v5 addSubview:contentView2];

  leadingAnchor = [(LocalSearchView *)self->_contentView leadingAnchor];
  view = [(LocalSearchViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[0] = v21;
  trailingAnchor = [(LocalSearchView *)self->_contentView trailingAnchor];
  view2 = [(LocalSearchViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[1] = v7;
  topAnchor = [(LocalSearchView *)self->_contentView topAnchor];
  view3 = [(LocalSearchViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[2] = v11;
  bottomAnchor = [(LocalSearchView *)self->_contentView bottomAnchor];
  view4 = [(LocalSearchViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

- (id)initAsButton:(BOOL)button
{
  v11.receiver = self;
  v11.super_class = LocalSearchViewController;
  v4 = [(LocalSearchViewController *)&v11 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_buttonMode = button;
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