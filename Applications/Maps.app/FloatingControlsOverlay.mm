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
- (void)_installInContentView:(id)a3 layoutGuide:(id)a4;
- (void)_setupViewportConstraintsInHost:(id)a3;
- (void)createRadar;
- (void)didUpdateMapInsets;
- (void)enterPedestrianAR:(id)a3;
- (void)exit3dMode;
- (void)hideControlsIfNeeded:(int64_t)a3 animated:(BOOL)a4;
- (void)openUserProfile;
- (void)refreshControls;
- (void)refreshCurrentSearch;
- (void)select3dMode;
- (void)setAlpha:(double)a3;
- (void)setAutomaticallyUpdateCompassInsets:(BOOL)a3;
- (void)setBlurGroupName:(id)a3;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setHost:(id)a3;
- (void)setMapViewProvider:(id)a3;
- (void)setMargin:(double)a3;
- (void)setSearchHereFloatingControlBottomPadding:(double)a3;
- (void)setSearchSession:(id)a3;
- (void)showControlsIfNeeded:(int64_t)a3 animated:(BOOL)a4;
- (void)showRedoSearchOverlay:(BOOL)a3;
- (void)toggleRoutePlanning;
- (void)toggleSSAO;
- (void)viewControllerOpenSettings:(id)a3;
@end

@implementation FloatingControlsOverlay

- (id)view
{
  v2 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  v3 = [v2 view];

  return v3;
}

- (VenuesManager)venuesManager
{
  v3 = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 venuesManagerForFloatingControlsOverlay:self];
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
  v2 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [v2 updateCompassInsets];
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
  v3 = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 floatingControlsOverlayDidTapDirections:self];
  }
}

- (void)createRadar
{
  v3 = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 floatingControlsOverlayDidTapTTRButton:self];
  }
}

- (void)enterPedestrianAR:(id)a3
{
  v5 = a3;
  v4 = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 floatingControlsOverlay:self didTapEnterPedestrianARFromButton:v5];
    [GEOAPPortal captureUserAction:126 target:302 value:0];
  }
}

- (void)setSearchHereFloatingControlBottomPadding:(double)a3
{
  v4 = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 setSearchHereFloatingControlBottomPadding:a3];
  }
}

- (void)showRedoSearchOverlay:(BOOL)a3
{
  v3 = a3;
  v4 = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 showRedoSearchOverlay:v3];
  }
}

- (BOOL)shouldShowSearchOverlay
{
  v2 = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 shouldShowSearchOverlay];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)refreshCurrentSearch
{
  v3 = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 floatingControlsOverlayDidTapRefreshCurrentSearch:self];
  }
}

- (void)viewControllerOpenSettings:(id)a3
{
  v4 = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 floatingControlsOverlayDidTapOpenSettings:self];
  }
}

- (void)exit3dMode
{
  v3 = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 floatingControlsOverlayDidTapExit3DMode:self];
  }
}

- (void)select3dMode
{
  v3 = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 floatingControlsOverlayDidTapEnter3DMode:self];
  }
}

- (void)openUserProfile
{
  v3 = [(FloatingControlsOverlay *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 floatingControlsOverlayDidTapOpenUserProfile:self];
  }
}

- (void)setAutomaticallyUpdateCompassInsets:(BOOL)a3
{
  v3 = a3;
  v4 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [v4 setAutomaticallyUpdateCompassInsets:v3];
}

- (BOOL)automaticallyUpdateCompassInsets
{
  v2 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  v3 = [v2 automaticallyUpdateCompassInsets];

  return v3;
}

- (void)setSearchSession:(id)a3
{
  v4 = a3;
  v5 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [v5 setSearchSession:v4];
}

- (void)refreshControls
{
  v2 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [v2 refreshControls];
}

- (void)hideControlsIfNeeded:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ((a3 & 0x40) != 0)
  {
    v7 = [(FloatingControlsOverlay *)self venuesManager];
    v8 = [(FloatingControlsOverlay *)self floatingControlsViewController];
    [v7 removeChangeObserver:v8];
  }

  v9 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [v9 hideControlsIfNeeded:a3 animated:v4];
}

- (void)showControlsIfNeeded:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ((a3 & 0x40) != 0)
  {
    v7 = [(FloatingControlsOverlay *)self venuesManager];
    v8 = [(FloatingControlsOverlay *)self floatingControlsViewController];
    [v7 addChangeObserver:v8];

    v9 = [(FloatingControlsOverlay *)self floatingControlsViewController];
    v10 = [(FloatingControlsOverlay *)self venuesManager];
    v11 = [v10 venueWithFocus];
    [v9 didChangeFocusedVenue:v11];
  }

  v12 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [v12 showControlsIfNeeded:a3 animated:v4];
}

- (void)setMapViewProvider:(id)a3
{
  v4 = a3;
  v5 = objc_loadWeakRetained(&self->_mapViewProvider);
  v6 = v4;
  if (v6 | v5)
  {
    obj = v6;
    v7 = [v5 isEqual:v6];

    v6 = obj;
    if ((v7 & 1) == 0)
    {
      objc_storeWeak(&self->_mapViewProvider, obj);
      v8 = [(FloatingControlsOverlay *)self floatingControlsViewController];
      [v8 setMapViewProviding:obj];

      v6 = obj;
    }
  }
}

- (void)setMargin:(double)a3
{
  self->_margin = a3;
  v4 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [v4 setMargin:a3];
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [v6 setVisible:!v5 animated:v4];
}

- (BOOL)isHidden
{
  v2 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  v3 = [v2 visible];

  return v3 ^ 1;
}

- (void)_setupViewportConstraintsInHost:(id)a3
{
  v4 = a3;
  v5 = [v4 viewportLayoutGuide];
  if (v5)
  {
    v6 = [(FloatingControlsOverlay *)self floatingControlsViewController];
    v7 = [v6 isViewLoaded];

    if (v7)
    {
      v8 = [(FloatingControlsOverlay *)self floatingControlsViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v10 = [(FloatingControlsOverlay *)self floatingControlsViewController];
        v11 = [v5 trailingAnchor];
        v12 = [v10 buttonsContainerViewController];
        v13 = [v12 view];
        v14 = [v13 leadingAnchor];
        v15 = [v11 constraintLessThanOrEqualToAnchor:v14];
        v17 = v15;
        v16 = [NSArray arrayWithObjects:&v17 count:1];
        [v4 setViewportConstraints:v16 forOverlay:self];

        [v4 setViewportConstraintsEnabled:1 forOverlay:self];
      }
    }
  }
}

- (void)_installInContentView:(id)a3 layoutGuide:(id)a4
{
  v28 = a3;
  v6 = a4;
  v7 = [(FloatingControlsOverlay *)self view];
  v8 = [v7 superview];

  if (v8 != v28)
  {
    v9 = [(FloatingControlsOverlay *)self floatingControlsViewController];
    v10 = [v9 isViewLoaded];

    if (v10)
    {
      v11 = [(FloatingControlsOverlay *)self view];
      [v11 removeFromSuperview];
    }

    if (v28)
    {
      v12 = [(FloatingControlsOverlay *)self view];
      [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

      [v28 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(FloatingControlsOverlay *)self view];
      [v21 setFrame:{v14, v16, v18, v20}];

      v22 = [(FloatingControlsOverlay *)self view];
      [v28 addSubview:v22];

      v23 = [(FloatingControlsOverlay *)self view];
      LODWORD(v24) = 1148846080;
      v25 = [v23 _maps_constraintsEqualToEdgesOfLayoutGuide:v6 priority:v24];
      edgeConstraints = self->_edgeConstraints;
      self->_edgeConstraints = v25;

      v27 = [(MapsEdgeConstraints *)self->_edgeConstraints allConstraints];
      [NSLayoutConstraint activateConstraints:v27];
    }
  }
}

- (NSString)blurGroupName
{
  v2 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  v3 = [v2 blurGroupName];

  return v3;
}

- (void)setBlurGroupName:(id)a3
{
  v4 = a3;
  v5 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [v5 setBlurGroupName:v4];
}

- (double)alpha
{
  v2 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  v3 = [v2 view];
  [v3 alpha];
  v5 = v4;

  return v5;
}

- (void)setAlpha:(double)a3
{
  v4 = [(FloatingControlsOverlay *)self floatingControlsViewController];
  [v4 setAlpha:a3];
}

- (void)setHost:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  v5 = obj;
  if (WeakRetained != obj)
  {
    floatingControlsViewController = self->_floatingControlsViewController;
    if (floatingControlsViewController)
    {
      v7 = [(FloatingControlsViewController *)floatingControlsViewController parentViewController];

      if (v7)
      {
        [(FloatingControlsViewController *)self->_floatingControlsViewController willMoveToParentViewController:0];
        if ([(FloatingControlsViewController *)self->_floatingControlsViewController isViewLoaded])
        {
          v8 = [(FloatingControlsViewController *)self->_floatingControlsViewController view];
          [v8 removeFromSuperview];
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
        v10 = [obj overlayContentView];
        v11 = sub_10000FA08(v10);

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
        v14 = [(FloatingControlsOverlay *)self mapViewProvider];
        [(FloatingControlsViewController *)self->_floatingControlsViewController setMapViewProviding:v14];

        if (v9 == objc_opt_class())
        {
          [(FloatingControlsViewController *)self->_floatingControlsViewController showControlsIfNeeded:76 animated:0];
        }
      }

      v15 = [obj containingViewController];
      [(FloatingControlsViewController *)self->_floatingControlsViewController willMoveToParentViewController:v15];
      v16 = [obj overlayContentView];
      v17 = [obj layoutGuideForOverlay:self];
      [(FloatingControlsOverlay *)self _installInContentView:v16 layoutGuide:v17];

      [(FloatingControlsOverlay *)self _setupViewportConstraintsInHost:obj];
      [(PassThroughViewController *)self->_floatingControlsViewController didMoveToParentViewController:v15];

      v5 = obj;
    }
  }
}

@end