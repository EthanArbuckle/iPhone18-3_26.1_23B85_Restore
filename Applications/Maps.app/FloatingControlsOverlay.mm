@interface FloatingControlsOverlay
- (BOOL)automaticallyUpdateCompassInsets;
- (BOOL)isHidden;
- (BOOL)shouldShowSearchOverlay;
- (ChromeOverlayHosting)host;
- (FloatingControlsOverlayDelegate)delegate;
- (MapViewProviding)mapViewProvider;
- (NSString)blurGroupName;
- (VenuesManager)venuesManager;
- (double)alpha;
- (id)view;
- (void)_installInContentView:(id)view layoutGuide:(id)guide;
- (void)_setupViewportConstraintsInHost:(id)host;
- (void)createRadar;
- (void)didUpdateMapInsets;
- (void)enterPedestrianAR:(id)r;
- (void)exit3dMode;
- (void)hideControlsIfNeeded:(int64_t)needed animated:(BOOL)animated;
- (void)openUserProfile;
- (void)refreshControls;
- (void)refreshCurrentSearch;
- (void)select3dMode;
- (void)setAlpha:(double)alpha;
- (void)setAutomaticallyUpdateCompassInsets:(BOOL)insets;
- (void)setBlurGroupName:(id)name;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setHost:(id)host;
- (void)setMapViewProvider:(id)provider;
- (void)setMargin:(double)margin;
- (void)setSearchHereFloatingControlBottomPadding:(double)padding;
- (void)setSearchSession:(id)session;
- (void)showControlsIfNeeded:(int64_t)needed animated:(BOOL)animated;
- (void)showRedoSearchOverlay:(BOOL)overlay;
- (void)toggleRoutePlanning;
- (void)toggleSSAO;
- (void)viewControllerOpenSettings:(id)settings;
@end

@implementation FloatingControlsOverlay

- (id)view
{
  floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
  view = [floatingControlsViewController view];

  return view;
}

- (VenuesManager)venuesManager
{
  delegate = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate venuesManagerForFloatingControlsOverlay:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (FloatingControlsOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MapViewProviding)mapViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewProvider);

  return WeakRetained;
}

- (void)didUpdateMapInsets
{
  floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [floatingControlsViewController updateCompassInsets];
}

- (ChromeOverlayHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (void)toggleSSAO
{
  GEOConfigGetBOOL();

  GEOConfigSetBOOL();
}

- (void)toggleRoutePlanning
{
  delegate = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingControlsOverlayDidTapDirections:self];
  }
}

- (void)createRadar
{
  delegate = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingControlsOverlayDidTapTTRButton:self];
  }
}

- (void)enterPedestrianAR:(id)r
{
  rCopy = r;
  delegate = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingControlsOverlay:self didTapEnterPedestrianARFromButton:rCopy];
    [GEOAPPortal captureUserAction:126 target:302 value:0];
  }
}

- (void)setSearchHereFloatingControlBottomPadding:(double)padding
{
  delegate = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate setSearchHereFloatingControlBottomPadding:padding];
  }
}

- (void)showRedoSearchOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  delegate = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate showRedoSearchOverlay:overlayCopy];
  }
}

- (BOOL)shouldShowSearchOverlay
{
  delegate = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    shouldShowSearchOverlay = [delegate shouldShowSearchOverlay];
  }

  else
  {
    shouldShowSearchOverlay = 0;
  }

  return shouldShowSearchOverlay;
}

- (void)refreshCurrentSearch
{
  delegate = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingControlsOverlayDidTapRefreshCurrentSearch:self];
  }
}

- (void)viewControllerOpenSettings:(id)settings
{
  delegate = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingControlsOverlayDidTapOpenSettings:self];
  }
}

- (void)exit3dMode
{
  delegate = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingControlsOverlayDidTapExit3DMode:self];
  }
}

- (void)select3dMode
{
  delegate = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingControlsOverlayDidTapEnter3DMode:self];
  }
}

- (void)openUserProfile
{
  delegate = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingControlsOverlayDidTapOpenUserProfile:self];
  }
}

- (void)setAutomaticallyUpdateCompassInsets:(BOOL)insets
{
  insetsCopy = insets;
  floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [floatingControlsViewController setAutomaticallyUpdateCompassInsets:insetsCopy];
}

- (BOOL)automaticallyUpdateCompassInsets
{
  floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
  automaticallyUpdateCompassInsets = [floatingControlsViewController automaticallyUpdateCompassInsets];

  return automaticallyUpdateCompassInsets;
}

- (void)setSearchSession:(id)session
{
  sessionCopy = session;
  floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [floatingControlsViewController setSearchSession:sessionCopy];
}

- (void)refreshControls
{
  floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [floatingControlsViewController refreshControls];
}

- (void)hideControlsIfNeeded:(int64_t)needed animated:(BOOL)animated
{
  animatedCopy = animated;
  if ((needed & 0x40) != 0)
  {
    venuesManager = [(FloatingControlsOverlay *)self venuesManager];
    floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
    [venuesManager removeChangeObserver:floatingControlsViewController];
  }

  floatingControlsViewController2 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [floatingControlsViewController2 hideControlsIfNeeded:needed animated:animatedCopy];
}

- (void)showControlsIfNeeded:(int64_t)needed animated:(BOOL)animated
{
  animatedCopy = animated;
  if ((needed & 0x40) != 0)
  {
    venuesManager = [(FloatingControlsOverlay *)self venuesManager];
    floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
    [venuesManager addChangeObserver:floatingControlsViewController];

    floatingControlsViewController2 = [(FloatingControlsOverlay *)self floatingControlsViewController];
    venuesManager2 = [(FloatingControlsOverlay *)self venuesManager];
    venueWithFocus = [venuesManager2 venueWithFocus];
    [floatingControlsViewController2 didChangeFocusedVenue:venueWithFocus];
  }

  floatingControlsViewController3 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [floatingControlsViewController3 showControlsIfNeeded:needed animated:animatedCopy];
}

- (void)setMapViewProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_loadWeakRetained(&self->_mapViewProvider);
  v6 = providerCopy;
  if (v6 | v5)
  {
    obj = v6;
    v7 = [v5 isEqual:v6];

    v6 = obj;
    if ((v7 & 1) == 0)
    {
      objc_storeWeak(&self->_mapViewProvider, obj);
      floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
      [floatingControlsViewController setMapViewProviding:obj];

      v6 = obj;
    }
  }
}

- (void)setMargin:(double)margin
{
  self->_margin = margin;
  floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [floatingControlsViewController setMargin:margin];
}

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [floatingControlsViewController setVisible:!hiddenCopy animated:animatedCopy];
}

- (BOOL)isHidden
{
  floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
  visible = [floatingControlsViewController visible];

  return visible ^ 1;
}

- (void)_setupViewportConstraintsInHost:(id)host
{
  hostCopy = host;
  viewportLayoutGuide = [hostCopy viewportLayoutGuide];
  if (viewportLayoutGuide)
  {
    floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
    isViewLoaded = [floatingControlsViewController isViewLoaded];

    if (isViewLoaded)
    {
      floatingControlsViewController2 = [(FloatingControlsOverlay *)self floatingControlsViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        floatingControlsViewController3 = [(FloatingControlsOverlay *)self floatingControlsViewController];
        trailingAnchor = [viewportLayoutGuide trailingAnchor];
        buttonsContainerViewController = [floatingControlsViewController3 buttonsContainerViewController];
        view = [buttonsContainerViewController view];
        leadingAnchor = [view leadingAnchor];
        v15 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor];
        v17 = v15;
        v16 = [NSArray arrayWithObjects:&v17 count:1];
        [hostCopy setViewportConstraints:v16 forOverlay:self];

        [hostCopy setViewportConstraintsEnabled:1 forOverlay:self];
      }
    }
  }
}

- (void)_installInContentView:(id)view layoutGuide:(id)guide
{
  viewCopy = view;
  guideCopy = guide;
  view = [(FloatingControlsOverlay *)self view];
  superview = [view superview];

  if (superview != viewCopy)
  {
    floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
    isViewLoaded = [floatingControlsViewController isViewLoaded];

    if (isViewLoaded)
    {
      view2 = [(FloatingControlsOverlay *)self view];
      [view2 removeFromSuperview];
    }

    if (viewCopy)
    {
      view3 = [(FloatingControlsOverlay *)self view];
      [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

      [viewCopy bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      view4 = [(FloatingControlsOverlay *)self view];
      [view4 setFrame:{v14, v16, v18, v20}];

      view5 = [(FloatingControlsOverlay *)self view];
      [viewCopy addSubview:view5];

      view6 = [(FloatingControlsOverlay *)self view];
      LODWORD(v24) = 1148846080;
      v25 = [view6 _maps_constraintsEqualToEdgesOfLayoutGuide:guideCopy priority:v24];
      edgeConstraints = self->_edgeConstraints;
      self->_edgeConstraints = v25;

      allConstraints = [(MapsEdgeConstraints *)self->_edgeConstraints allConstraints];
      [NSLayoutConstraint activateConstraints:allConstraints];
    }
  }
}

- (NSString)blurGroupName
{
  floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
  blurGroupName = [floatingControlsViewController blurGroupName];

  return blurGroupName;
}

- (void)setBlurGroupName:(id)name
{
  nameCopy = name;
  floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [floatingControlsViewController setBlurGroupName:nameCopy];
}

- (double)alpha
{
  floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
  view = [floatingControlsViewController view];
  [view alpha];
  v5 = v4;

  return v5;
}

- (void)setAlpha:(double)alpha
{
  floatingControlsViewController = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [floatingControlsViewController setAlpha:alpha];
}

- (void)setHost:(id)host
{
  obj = host;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  v5 = obj;
  if (WeakRetained != obj)
  {
    floatingControlsViewController = self->_floatingControlsViewController;
    if (floatingControlsViewController)
    {
      parentViewController = [(FloatingControlsViewController *)floatingControlsViewController parentViewController];

      if (parentViewController)
      {
        [(FloatingControlsViewController *)self->_floatingControlsViewController willMoveToParentViewController:0];
        if ([(FloatingControlsViewController *)self->_floatingControlsViewController isViewLoaded])
        {
          view = [(FloatingControlsViewController *)self->_floatingControlsViewController view];
          [view removeFromSuperview];
        }

        [(FloatingControlsViewController *)self->_floatingControlsViewController removeFromParentViewController];
      }
    }

    objc_storeWeak(&self->_host, obj);
    v5 = obj;
    if (obj)
    {
      if (!self->_floatingControlsViewController)
      {
        v9 = objc_opt_class();
        overlayContentView = [obj overlayContentView];
        v11 = sub_10000FA08(overlayContentView);

        if (v11 == 5 && (_UISolariumEnabled() & 1) == 0)
        {
          v9 = objc_opt_class();
        }

        v12 = objc_alloc_init(v9);
        v13 = self->_floatingControlsViewController;
        self->_floatingControlsViewController = v12;

        [(FloatingControlsViewController *)self->_floatingControlsViewController setActionCoordinator:self];
        [(FloatingControlsOverlay *)self margin];
        [(FloatingControlsViewController *)self->_floatingControlsViewController setMargin:?];
        mapViewProvider = [(FloatingControlsOverlay *)self mapViewProvider];
        [(FloatingControlsViewController *)self->_floatingControlsViewController setMapViewProviding:mapViewProvider];

        if (v9 == objc_opt_class())
        {
          [(FloatingControlsViewController *)self->_floatingControlsViewController showControlsIfNeeded:76 animated:0];
        }
      }

      containingViewController = [obj containingViewController];
      [(FloatingControlsViewController *)self->_floatingControlsViewController willMoveToParentViewController:containingViewController];
      overlayContentView2 = [obj overlayContentView];
      v17 = [obj layoutGuideForOverlay:self];
      [(FloatingControlsOverlay *)self _installInContentView:overlayContentView2 layoutGuide:v17];

      [(FloatingControlsOverlay *)self _setupViewportConstraintsInHost:obj];
      [(PassThroughViewController *)self->_floatingControlsViewController didMoveToParentViewController:containingViewController];

      v5 = obj;
    }
  }
}

@end