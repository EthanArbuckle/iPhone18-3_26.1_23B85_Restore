@interface MacFloatingControlsViewController
- (BOOL)lacksSearchResultsInVenue:(id)a3 forFloorOrdinal:(signed __int16)a4;
- (LocalSearchViewController)localSearchViewController;
- (UIEdgeInsets)additionalCompassEdgeInsets;
- (VKVenueFeatureMarker)venueWithFocus;
- (id)_localSearchViewConstraints;
- (id)floatingButtonLeadingGuide;
- (void)_layoutSearchHereControlIfNeeded;
- (void)_showSearchHereIfNeeded:(BOOL)a3;
- (void)didChangeFocusedVenue:(id)a3;
- (void)hideControlsIfNeeded:(int64_t)a3 animated:(BOOL)a4;
- (void)localSearchViewControllerDidSelectRefreshSearchHere:(id)a3;
- (void)localSearchViewShouldBeVisibleDidChange:(id)a3;
- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5 fromTrackingButton:(BOOL)a6;
- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5;
- (void)setAdditionalCompassEdgeInsets:(UIEdgeInsets)a3;
- (void)setRefreshViewEnable:(BOOL)a3;
- (void)setSearchSession:(id)a3;
- (void)setupLocalSearchViewController;
- (void)setupVenueFloorViewController;
- (void)showControlsIfNeeded:(int64_t)a3 animated:(BOOL)a4;
- (void)updateCompassInsets;
- (void)venueFloorViewControllerDidChangeConstraints:(id)a3;
- (void)venueFloorViewControllerDidClose:(id)a3;
- (void)venueFloorViewControllerDidFinishHiding:(id)a3;
- (void)venueFloorViewControllerDidFinishShowing:(id)a3;
- (void)venueFloorViewControllerDidOpen:(id)a3;
- (void)venueFloorViewControllerDidStartHiding:(id)a3;
- (void)venueFloorViewControllerDidStartShowing:(id)a3;
- (void)viewControllerDidSelectBrowseVenue:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MacFloatingControlsViewController

- (UIEdgeInsets)additionalCompassEdgeInsets
{
  top = self->_additionalCompassEdgeInsets.top;
  left = self->_additionalCompassEdgeInsets.left;
  bottom = self->_additionalCompassEdgeInsets.bottom;
  right = self->_additionalCompassEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)_localSearchViewConstraints
{
  localSearchViewController = self->_localSearchViewController;
  if (localSearchViewController)
  {
    v4 = [(LocalSearchViewController *)localSearchViewController view];
    v5 = [v4 centerXAnchor];
    v6 = [(MacFloatingControlsViewController *)self view];
    v7 = [v6 centerXAnchor];
    v8 = [v5 constraintEqualToAnchor:v7];
    v15[0] = v8;
    v9 = [v4 bottomAnchor];
    v10 = [(MacFloatingControlsViewController *)self view];
    v11 = [v10 bottomAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    v15[1] = v12;
    v13 = [NSArray arrayWithObjects:v15 count:2];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setupLocalSearchViewController
{
  v3 = [(MacFloatingControlsViewController *)self localSearchViewController];
  v4 = [v3 view];
  v5 = [v4 superview];

  if (!v5)
  {
    [(MacFloatingControlsViewController *)self addChildViewController:self->_localSearchViewController];
    v6 = [(MacFloatingControlsViewController *)self localSearchViewController];
    v7 = [v6 view];
    v8 = [(MacFloatingControlsViewController *)self _localSearchViewConstraints];
    [(FloatingControlsViewController *)self _addSubview:v7 withConstraints:v8];

    v9 = [(MacFloatingControlsViewController *)self localSearchViewController];
    v10 = [v9 shouldBeVisible];
    v11 = [(MacFloatingControlsViewController *)self localSearchViewController];
    v12 = [v11 view];
    [v12 setAlpha:v10];

    localSearchViewController = self->_localSearchViewController;

    [(LocalSearchViewController *)localSearchViewController didMoveToParentViewController:self];
  }
}

- (LocalSearchViewController)localSearchViewController
{
  localSearchViewController = self->_localSearchViewController;
  if (!localSearchViewController)
  {
    v4 = [[LocalSearchViewController alloc] initAsButton:1];
    v5 = self->_localSearchViewController;
    self->_localSearchViewController = v4;

    [(LocalSearchViewController *)self->_localSearchViewController setDelegate:self];
    localSearchViewController = self->_localSearchViewController;
  }

  return localSearchViewController;
}

- (void)localSearchViewShouldBeVisibleDidChange:(id)a3
{
  v4 = [(MacFloatingControlsViewController *)self localSearchViewController];
  v5 = [v4 view];
  [v5 alpha];
  v7 = v6;

  v8 = [(MacFloatingControlsViewController *)self localSearchViewController];
  v9 = [v8 shouldBeVisible];

  if ((((v7 != 1.0) ^ v9) & 1) == 0)
  {
    if (v9)
    {
      [(MacFloatingControlsViewController *)self setupLocalSearchViewController];
      v10 = [(MacFloatingControlsViewController *)self localSearchViewController];
      v11 = [v10 view];
      [v11 layoutIfNeeded];
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1008E8230;
    v12[3] = &unk_101661AE0;
    v12[4] = self;
    v13 = v9;
    [UIView _animateUsingDefaultTimingWithOptions:0 animations:v12 completion:0];
  }
}

- (void)viewControllerDidSelectBrowseVenue:(id)a3
{
  v4 = [(FloatingControlsViewController *)self actionCoordinator];
  v3 = [v4 venuesManager];
  [v3 presentPlaceCardForVenueWithFocusAndAddToHistory:1 source:7 centeringOnVenue:1];
}

- (void)localSearchViewControllerDidSelectRefreshSearchHere:(id)a3
{
  v3 = [(FloatingControlsViewController *)self actionCoordinator];
  [v3 refreshCurrentSearch];
}

- (VKVenueFeatureMarker)venueWithFocus
{
  v2 = [(FloatingControlsViewController *)self actionCoordinator];
  v3 = [v2 venuesManager];
  v4 = [v3 venueWithFocus];

  return v4;
}

- (void)setSearchSession:(id)a3
{
  v4 = a3;
  v6 = [(MacFloatingControlsViewController *)self localSearchViewController];
  v5 = [v6 refreshSearchHereBusinessController];
  [v5 setSearchSession:v4];
}

- (void)setRefreshViewEnable:(BOOL)a3
{
  v3 = a3;
  v4 = [(MacFloatingControlsViewController *)self localSearchViewController];
  [v4 setEnable:v3];
}

- (BOOL)lacksSearchResultsInVenue:(id)a3 forFloorOrdinal:(signed __int16)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(FloatingControlsViewController *)self actionCoordinator];
  v8 = [v7 venuesManager];
  if ([v8 hasSearchResultsInVenueForAnyFloorOrdinal:v6])
  {
    v9 = [(FloatingControlsViewController *)self actionCoordinator];
    v10 = [v9 venuesManager];
    v11 = [v10 hasSearchResultsInVenue:v6 forFloorOrdinal:v4] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)venueFloorViewControllerDidClose:(id)a3
{
  v4 = a3;
  v6 = [(FloatingControlsViewController *)self actionCoordinator];
  v5 = [v6 venuesManager];
  [v5 venueFloorViewControllerDidClose:v4];
}

- (void)venueFloorViewControllerDidOpen:(id)a3
{
  v4 = a3;
  v6 = [(FloatingControlsViewController *)self actionCoordinator];
  v5 = [v6 venuesManager];
  [v5 venueFloorViewControllerDidOpen:v4];
}

- (void)venueFloorViewControllerDidFinishShowing:(id)a3
{
  v4 = a3;
  v6 = [(FloatingControlsViewController *)self actionCoordinator];
  v5 = [v6 venuesManager];
  [v5 venueFloorViewControllerDidFinishShowing:v4];
}

- (void)venueFloorViewControllerDidStartShowing:(id)a3
{
  v4 = a3;
  [(MacFloatingControlsViewController *)self setRefreshViewEnable:0];
  v5 = [(MacFloatingControlsViewController *)self view];
  [v5 layoutIfNeeded];

  [(MacFloatingControlsViewController *)self _layoutSearchHereControlIfNeeded];
  v7 = [(FloatingControlsViewController *)self actionCoordinator];
  v6 = [v7 venuesManager];
  [v6 venueFloorViewControllerDidStartShowing:v4];
}

- (void)venueFloorViewControllerDidFinishHiding:(id)a3
{
  v4 = a3;
  v5 = [(MacFloatingControlsViewController *)self view];
  [v5 layoutIfNeeded];

  v7 = [(FloatingControlsViewController *)self actionCoordinator];
  v6 = [v7 venuesManager];
  [v6 venueFloorViewControllerDidFinishHiding:v4];
}

- (void)venueFloorViewControllerDidStartHiding:(id)a3
{
  v4 = a3;
  [(MacFloatingControlsViewController *)self setRefreshViewEnable:1];
  v5 = [(MacFloatingControlsViewController *)self view];
  [v5 layoutIfNeeded];

  [(MacFloatingControlsViewController *)self _layoutSearchHereControlIfNeeded];
  v7 = [(FloatingControlsViewController *)self actionCoordinator];
  v6 = [v7 venuesManager];
  [v6 venueFloorViewControllerDidStartHiding:v4];
}

- (void)venueFloorViewControllerDidChangeConstraints:(id)a3
{
  v4 = a3;
  v5 = [(MacFloatingControlsViewController *)self view];
  [v5 layoutIfNeeded];

  v7 = [(FloatingControlsViewController *)self actionCoordinator];
  v6 = [v7 venuesManager];
  [v6 venueFloorViewControllerDidChangeConstraints:v4];
}

- (void)setupVenueFloorViewController
{
  v3 = [(MacFloatingControlsViewController *)self venueFloorViewController];

  if (!v3)
  {
    v4 = [MacVenueControlsViewController alloc];
    v5 = [(FloatingControlsViewController *)self actionCoordinator];
    v6 = [v5 venuesManager];
    v7 = [(MacVenueControlsViewController *)v4 initWithVenueFloorViewDelegate:self venueBrowseDelegate:self venuesManager:v6];
    [(MacFloatingControlsViewController *)self setVenueFloorViewController:v7];

    v8 = [(MacFloatingControlsViewController *)self venueFloorViewController];
    v9 = [(FloatingControlsViewController *)self actionCoordinator];
    v10 = [v9 venuesManager];
    [v10 setVenueFloorViewController:v8];

    v11 = [(MacFloatingControlsViewController *)self venueFloorViewController];
    [v11 setForceHidden:1];

    v12 = [(MacFloatingControlsViewController *)self venueFloorViewController];
    [(MacFloatingControlsViewController *)self addChildViewController:v12];

    v13 = [(MacFloatingControlsViewController *)self venueFloorViewController];
    v14 = [v13 view];

    v15 = [(MacFloatingControlsViewController *)self view];
    [v15 addSubview:v14];

    v26 = [v14 centerXAnchor];
    v16 = [(MacFloatingControlsViewController *)self view];
    v17 = [v16 centerXAnchor];
    v18 = [v26 constraintEqualToAnchor:v17];
    v27[0] = v18;
    v19 = [v14 bottomAnchor];
    v20 = [(MacFloatingControlsViewController *)self view];
    v21 = [v20 bottomAnchor];
    v22 = [v19 constraintEqualToAnchor:v21 constant:0.0];
    v27[1] = v22;
    v23 = [NSArray arrayWithObjects:v27 count:2];
    [NSLayoutConstraint activateConstraints:v23];

    v24 = [(MacFloatingControlsViewController *)self view];
    [v24 layoutIfNeeded];

    if (([(FloatingControlsViewController *)self visibleControls]& 0x40) != 0)
    {
      v25 = [(MacFloatingControlsViewController *)self venueFloorViewController];
      [v25 setForceHidden:0 animated:1 completion:0];
    }
  }
}

- (void)hideControlsIfNeeded:(int64_t)a3 animated:(BOOL)a4
{
  v6 = [(FloatingControlsViewController *)self visibleControls:a3];
  if ([(FloatingControlsViewController *)self shouldHide:4 withControlOptions:a3])
  {
    v7 = [(MacFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
    v8 = [v7 viewIfLoaded];
    [v8 removeFromSuperview];

    v9 = [(MacFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
    [v9 setEnable:0];

    v6 &= ~4uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:64 withControlOptions:a3])
  {
    v10 = [(MacFloatingControlsViewController *)self venueFloorViewControllerIfLoaded];
    [v10 setForceHidden:1];

    v6 &= ~0x40uLL;
  }

  [(FloatingControlsViewController *)self setVisibleControls:v6];
}

- (void)showControlsIfNeeded:(int64_t)a3 animated:(BOOL)a4
{
  v5 = [(FloatingControlsViewController *)self _sanitizedControlsFromControls:a3, a4];
  if ([(FloatingControlsViewController *)self shouldShow:64 withControlOptions:v5])
  {
    v6 = [(MacFloatingControlsViewController *)self venueFloorViewController];
    [v6 setForceHidden:0];
    v7 = 64;
  }

  else
  {
    v6 = [(MacFloatingControlsViewController *)self venueFloorViewControllerIfLoaded];
    [v6 setForceHidden:1];
    v7 = 0;
  }

  if (-[FloatingControlsViewController shouldShow:withControlOptions:](self, "shouldShow:withControlOptions:", 4, v5) && (-[FloatingControlsViewController actionCoordinator](self, "actionCoordinator"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 shouldShowSearchOverlay], v8, v9))
  {
    v10 = [(MacFloatingControlsViewController *)self localSearchViewController];
    [v10 setEnable:1];

    v7 |= 4uLL;
  }

  else
  {
    v11 = [(MacFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
    [v11 setEnable:0];

    v12 = [(MacFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
    [v12 willMoveToParentViewController:0];

    v13 = [(MacFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
    v14 = [v13 viewIfLoaded];
    [v14 removeFromSuperview];

    v15 = [(MacFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
    [v15 removeFromParentViewController];
  }

  [(FloatingControlsViewController *)self setVisibleControls:v7];
}

- (void)didChangeFocusedVenue:(id)a3
{
  if (a3)
  {
    [(MacFloatingControlsViewController *)self setupVenueFloorViewController];
  }
}

- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5 fromTrackingButton:(BOOL)a6
{
  if (a6)
  {
    self->_tappedTrackingButton = 1;
    v7 = a3;
    v9 = [(MacFloatingControlsViewController *)self localSearchViewController];
    v8 = [v9 refreshSearchHereBusinessController];
    [v8 didStartRespondingToGesture:v7];
  }
}

- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8
{
  localSearchViewController = self->_localSearchViewController;
  v10 = a3;
  v11 = [(LocalSearchViewController *)localSearchViewController refreshSearchHereBusinessController];
  v12 = [v11 didStopRespondingToGesture:v10];

  [(MacFloatingControlsViewController *)self _showSearchHereIfNeeded:v12];
}

- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5
{
  if (!a4)
  {
    localSearchViewController = self->_localSearchViewController;
    v7 = a3;
    v8 = [(LocalSearchViewController *)localSearchViewController refreshSearchHereBusinessController];
    [v8 didStartRespondingToGesture:v7];
  }
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MacFloatingControlsViewController;
  [(FloatingControlsViewController *)&v11 mapView:v6 regionDidChangeAnimated:v4];
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    if (self->_tappedTrackingButton)
    {
      self->_tappedTrackingButton = 0;
      v7 = [(MacFloatingControlsViewController *)self localSearchViewController];
      v8 = [v7 refreshSearchHereBusinessController];
      v9 = [v8 didStopRespondingToGesture:v6];

      [(MacFloatingControlsViewController *)self _showSearchHereIfNeeded:v9];
    }
  }

  else
  {
    v10 = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
    [v10 handleMapViewRegionDidChange:v6];
  }
}

- (void)_showSearchHereIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
  v6 = [v5 searchSession];
  v12 = [v6 searchInfo];

  if (v12)
  {
    v7 = [(FloatingControlsViewController *)self actionCoordinator];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
      v10 = [v9 shouldShowManualRedoButton];

      if (v3 || v10 && [v12 shouldAllowManualRedoButton])
      {
        v11 = [(FloatingControlsViewController *)self actionCoordinator];
        [v11 showRedoSearchOverlay:v3];
      }
    }

    [(MacFloatingControlsViewController *)self _layoutSearchHereControlIfNeeded];
  }
}

- (void)_layoutSearchHereControlIfNeeded
{
  v3 = [(FloatingControlsViewController *)self actionCoordinator];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MacFloatingControlsViewController *)self venueFloorViewController];
    v6 = [v5 view];
    v7 = [v6 isHidden];

    v8 = 0.0;
    if ((v7 & 1) == 0)
    {
      v9 = [(MacFloatingControlsViewController *)self venueFloorViewController];
      v10 = [v9 view];
      [v10 frame];
      v8 = v11 + 8.0;
    }

    v12 = [(FloatingControlsViewController *)self actionCoordinator];
    [v12 setSearchHereFloatingControlBottomPadding:-v8];
  }
}

- (void)setAdditionalCompassEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_additionalCompassEdgeInsets.top), vceqq_f64(v4, *&self->_additionalCompassEdgeInsets.bottom))), 0xFuLL))) & 1) == 0)
  {
    self->_additionalCompassEdgeInsets = a3;
    [(MacFloatingControlsViewController *)self updateCompassInsets];
  }
}

- (void)updateCompassInsets
{
  if ([(FloatingControlsViewController *)self automaticallyUpdateCompassInsets])
  {
    v3 = [(MacFloatingControlsViewController *)self view];
    [v3 effectiveUserInterfaceLayoutDirection];

    sub_100019A44();
    [(MacFloatingControlsViewController *)self additionalCompassEdgeInsets];
    UIEdgeInsetsAdd();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(FloatingControlsViewController *)self mapView];
    [v12 _compassInsets];
    if (v7 == v16 && v5 == v13 && v11 == v15)
    {
      v19 = v14;

      if (v9 == v19)
      {
        return;
      }
    }

    else
    {
    }

    v20 = [(FloatingControlsViewController *)self mapView];
    [v20 _setCompassInsets:0 animated:{v5, v7, v9, v11}];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MacFloatingControlsViewController;
  [(MacFloatingControlsViewController *)&v6 viewDidDisappear:a3];
  v4 = [(FloatingControlsViewController *)self actionCoordinator];
  v5 = [v4 venuesManager];
  [v5 removeChangeObserver:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = MacFloatingControlsViewController;
  [(FloatingControlsViewController *)&v9 viewWillAppear:a3];
  v4 = [(FloatingControlsViewController *)self actionCoordinator];
  v5 = [v4 venuesManager];
  [v5 addChangeObserver:self];

  v6 = [(FloatingControlsViewController *)self actionCoordinator];
  v7 = [v6 venuesManager];
  v8 = [v7 venueWithFocus];
  [(MacFloatingControlsViewController *)self didChangeFocusedVenue:v8];
}

- (id)floatingButtonLeadingGuide
{
  v2 = [(MacFloatingControlsViewController *)self view];
  v3 = [v2 trailingAnchor];

  return v3;
}

@end