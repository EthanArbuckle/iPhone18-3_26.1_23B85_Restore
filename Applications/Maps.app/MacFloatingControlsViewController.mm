@interface MacFloatingControlsViewController
- (BOOL)lacksSearchResultsInVenue:(id)venue forFloorOrdinal:(signed __int16)ordinal;
- (LocalSearchViewController)localSearchViewController;
- (UIEdgeInsets)additionalCompassEdgeInsets;
- (VKVenueFeatureMarker)venueWithFocus;
- (id)_localSearchViewConstraints;
- (id)floatingButtonLeadingGuide;
- (void)_layoutSearchHereControlIfNeeded;
- (void)_showSearchHereIfNeeded:(BOOL)needed;
- (void)didChangeFocusedVenue:(id)venue;
- (void)hideControlsIfNeeded:(int64_t)needed animated:(BOOL)animated;
- (void)localSearchViewControllerDidSelectRefreshSearchHere:(id)here;
- (void)localSearchViewShouldBeVisibleDidChange:(id)change;
- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button;
- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated;
- (void)setAdditionalCompassEdgeInsets:(UIEdgeInsets)insets;
- (void)setRefreshViewEnable:(BOOL)enable;
- (void)setSearchSession:(id)session;
- (void)setupLocalSearchViewController;
- (void)setupVenueFloorViewController;
- (void)showControlsIfNeeded:(int64_t)needed animated:(BOOL)animated;
- (void)updateCompassInsets;
- (void)venueFloorViewControllerDidChangeConstraints:(id)constraints;
- (void)venueFloorViewControllerDidClose:(id)close;
- (void)venueFloorViewControllerDidFinishHiding:(id)hiding;
- (void)venueFloorViewControllerDidFinishShowing:(id)showing;
- (void)venueFloorViewControllerDidOpen:(id)open;
- (void)venueFloorViewControllerDidStartHiding:(id)hiding;
- (void)venueFloorViewControllerDidStartShowing:(id)showing;
- (void)viewControllerDidSelectBrowseVenue:(id)venue;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
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
    view = [(LocalSearchViewController *)localSearchViewController view];
    centerXAnchor = [view centerXAnchor];
    view2 = [(MacFloatingControlsViewController *)self view];
    centerXAnchor2 = [view2 centerXAnchor];
    v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v15[0] = v8;
    bottomAnchor = [view bottomAnchor];
    view3 = [(MacFloatingControlsViewController *)self view];
    bottomAnchor2 = [view3 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
  localSearchViewController = [(MacFloatingControlsViewController *)self localSearchViewController];
  view = [localSearchViewController view];
  superview = [view superview];

  if (!superview)
  {
    [(MacFloatingControlsViewController *)self addChildViewController:self->_localSearchViewController];
    localSearchViewController2 = [(MacFloatingControlsViewController *)self localSearchViewController];
    view2 = [localSearchViewController2 view];
    _localSearchViewConstraints = [(MacFloatingControlsViewController *)self _localSearchViewConstraints];
    [(FloatingControlsViewController *)self _addSubview:view2 withConstraints:_localSearchViewConstraints];

    localSearchViewController3 = [(MacFloatingControlsViewController *)self localSearchViewController];
    shouldBeVisible = [localSearchViewController3 shouldBeVisible];
    localSearchViewController4 = [(MacFloatingControlsViewController *)self localSearchViewController];
    view3 = [localSearchViewController4 view];
    [view3 setAlpha:shouldBeVisible];

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

- (void)localSearchViewShouldBeVisibleDidChange:(id)change
{
  localSearchViewController = [(MacFloatingControlsViewController *)self localSearchViewController];
  view = [localSearchViewController view];
  [view alpha];
  v7 = v6;

  localSearchViewController2 = [(MacFloatingControlsViewController *)self localSearchViewController];
  shouldBeVisible = [localSearchViewController2 shouldBeVisible];

  if ((((v7 != 1.0) ^ shouldBeVisible) & 1) == 0)
  {
    if (shouldBeVisible)
    {
      [(MacFloatingControlsViewController *)self setupLocalSearchViewController];
      localSearchViewController3 = [(MacFloatingControlsViewController *)self localSearchViewController];
      view2 = [localSearchViewController3 view];
      [view2 layoutIfNeeded];
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1008E8230;
    v12[3] = &unk_101661AE0;
    v12[4] = self;
    v13 = shouldBeVisible;
    [UIView _animateUsingDefaultTimingWithOptions:0 animations:v12 completion:0];
  }
}

- (void)viewControllerDidSelectBrowseVenue:(id)venue
{
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager presentPlaceCardForVenueWithFocusAndAddToHistory:1 source:7 centeringOnVenue:1];
}

- (void)localSearchViewControllerDidSelectRefreshSearchHere:(id)here
{
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  [actionCoordinator refreshCurrentSearch];
}

- (VKVenueFeatureMarker)venueWithFocus
{
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  venueWithFocus = [venuesManager venueWithFocus];

  return venueWithFocus;
}

- (void)setSearchSession:(id)session
{
  sessionCopy = session;
  localSearchViewController = [(MacFloatingControlsViewController *)self localSearchViewController];
  refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
  [refreshSearchHereBusinessController setSearchSession:sessionCopy];
}

- (void)setRefreshViewEnable:(BOOL)enable
{
  enableCopy = enable;
  localSearchViewController = [(MacFloatingControlsViewController *)self localSearchViewController];
  [localSearchViewController setEnable:enableCopy];
}

- (BOOL)lacksSearchResultsInVenue:(id)venue forFloorOrdinal:(signed __int16)ordinal
{
  ordinalCopy = ordinal;
  venueCopy = venue;
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  if ([venuesManager hasSearchResultsInVenueForAnyFloorOrdinal:venueCopy])
  {
    actionCoordinator2 = [(FloatingControlsViewController *)self actionCoordinator];
    venuesManager2 = [actionCoordinator2 venuesManager];
    v11 = [venuesManager2 hasSearchResultsInVenue:venueCopy forFloorOrdinal:ordinalCopy] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)venueFloorViewControllerDidClose:(id)close
{
  closeCopy = close;
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager venueFloorViewControllerDidClose:closeCopy];
}

- (void)venueFloorViewControllerDidOpen:(id)open
{
  openCopy = open;
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager venueFloorViewControllerDidOpen:openCopy];
}

- (void)venueFloorViewControllerDidFinishShowing:(id)showing
{
  showingCopy = showing;
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager venueFloorViewControllerDidFinishShowing:showingCopy];
}

- (void)venueFloorViewControllerDidStartShowing:(id)showing
{
  showingCopy = showing;
  [(MacFloatingControlsViewController *)self setRefreshViewEnable:0];
  view = [(MacFloatingControlsViewController *)self view];
  [view layoutIfNeeded];

  [(MacFloatingControlsViewController *)self _layoutSearchHereControlIfNeeded];
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager venueFloorViewControllerDidStartShowing:showingCopy];
}

- (void)venueFloorViewControllerDidFinishHiding:(id)hiding
{
  hidingCopy = hiding;
  view = [(MacFloatingControlsViewController *)self view];
  [view layoutIfNeeded];

  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager venueFloorViewControllerDidFinishHiding:hidingCopy];
}

- (void)venueFloorViewControllerDidStartHiding:(id)hiding
{
  hidingCopy = hiding;
  [(MacFloatingControlsViewController *)self setRefreshViewEnable:1];
  view = [(MacFloatingControlsViewController *)self view];
  [view layoutIfNeeded];

  [(MacFloatingControlsViewController *)self _layoutSearchHereControlIfNeeded];
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager venueFloorViewControllerDidStartHiding:hidingCopy];
}

- (void)venueFloorViewControllerDidChangeConstraints:(id)constraints
{
  constraintsCopy = constraints;
  view = [(MacFloatingControlsViewController *)self view];
  [view layoutIfNeeded];

  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager venueFloorViewControllerDidChangeConstraints:constraintsCopy];
}

- (void)setupVenueFloorViewController
{
  venueFloorViewController = [(MacFloatingControlsViewController *)self venueFloorViewController];

  if (!venueFloorViewController)
  {
    v4 = [MacVenueControlsViewController alloc];
    actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
    venuesManager = [actionCoordinator venuesManager];
    v7 = [(MacVenueControlsViewController *)v4 initWithVenueFloorViewDelegate:self venueBrowseDelegate:self venuesManager:venuesManager];
    [(MacFloatingControlsViewController *)self setVenueFloorViewController:v7];

    venueFloorViewController2 = [(MacFloatingControlsViewController *)self venueFloorViewController];
    actionCoordinator2 = [(FloatingControlsViewController *)self actionCoordinator];
    venuesManager2 = [actionCoordinator2 venuesManager];
    [venuesManager2 setVenueFloorViewController:venueFloorViewController2];

    venueFloorViewController3 = [(MacFloatingControlsViewController *)self venueFloorViewController];
    [venueFloorViewController3 setForceHidden:1];

    venueFloorViewController4 = [(MacFloatingControlsViewController *)self venueFloorViewController];
    [(MacFloatingControlsViewController *)self addChildViewController:venueFloorViewController4];

    venueFloorViewController5 = [(MacFloatingControlsViewController *)self venueFloorViewController];
    view = [venueFloorViewController5 view];

    view2 = [(MacFloatingControlsViewController *)self view];
    [view2 addSubview:view];

    centerXAnchor = [view centerXAnchor];
    view3 = [(MacFloatingControlsViewController *)self view];
    centerXAnchor2 = [view3 centerXAnchor];
    v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v27[0] = v18;
    bottomAnchor = [view bottomAnchor];
    view4 = [(MacFloatingControlsViewController *)self view];
    bottomAnchor2 = [view4 bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v27[1] = v22;
    v23 = [NSArray arrayWithObjects:v27 count:2];
    [NSLayoutConstraint activateConstraints:v23];

    view5 = [(MacFloatingControlsViewController *)self view];
    [view5 layoutIfNeeded];

    if (([(FloatingControlsViewController *)self visibleControls]& 0x40) != 0)
    {
      venueFloorViewController6 = [(MacFloatingControlsViewController *)self venueFloorViewController];
      [venueFloorViewController6 setForceHidden:0 animated:1 completion:0];
    }
  }
}

- (void)hideControlsIfNeeded:(int64_t)needed animated:(BOOL)animated
{
  v6 = [(FloatingControlsViewController *)self visibleControls:needed];
  if ([(FloatingControlsViewController *)self shouldHide:4 withControlOptions:needed])
  {
    localSearchViewControllerIfLoaded = [(MacFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
    viewIfLoaded = [localSearchViewControllerIfLoaded viewIfLoaded];
    [viewIfLoaded removeFromSuperview];

    localSearchViewControllerIfLoaded2 = [(MacFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
    [localSearchViewControllerIfLoaded2 setEnable:0];

    v6 &= ~4uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:64 withControlOptions:needed])
  {
    venueFloorViewControllerIfLoaded = [(MacFloatingControlsViewController *)self venueFloorViewControllerIfLoaded];
    [venueFloorViewControllerIfLoaded setForceHidden:1];

    v6 &= ~0x40uLL;
  }

  [(FloatingControlsViewController *)self setVisibleControls:v6];
}

- (void)showControlsIfNeeded:(int64_t)needed animated:(BOOL)animated
{
  animated = [(FloatingControlsViewController *)self _sanitizedControlsFromControls:needed, animated];
  if ([(FloatingControlsViewController *)self shouldShow:64 withControlOptions:animated])
  {
    venueFloorViewController = [(MacFloatingControlsViewController *)self venueFloorViewController];
    [venueFloorViewController setForceHidden:0];
    v7 = 64;
  }

  else
  {
    venueFloorViewController = [(MacFloatingControlsViewController *)self venueFloorViewControllerIfLoaded];
    [venueFloorViewController setForceHidden:1];
    v7 = 0;
  }

  if (-[FloatingControlsViewController shouldShow:withControlOptions:](self, "shouldShow:withControlOptions:", 4, animated) && (-[FloatingControlsViewController actionCoordinator](self, "actionCoordinator"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 shouldShowSearchOverlay], v8, v9))
  {
    localSearchViewController = [(MacFloatingControlsViewController *)self localSearchViewController];
    [localSearchViewController setEnable:1];

    v7 |= 4uLL;
  }

  else
  {
    localSearchViewControllerIfLoaded = [(MacFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
    [localSearchViewControllerIfLoaded setEnable:0];

    localSearchViewControllerIfLoaded2 = [(MacFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
    [localSearchViewControllerIfLoaded2 willMoveToParentViewController:0];

    localSearchViewControllerIfLoaded3 = [(MacFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
    viewIfLoaded = [localSearchViewControllerIfLoaded3 viewIfLoaded];
    [viewIfLoaded removeFromSuperview];

    localSearchViewControllerIfLoaded4 = [(MacFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
    [localSearchViewControllerIfLoaded4 removeFromParentViewController];
  }

  [(FloatingControlsViewController *)self setVisibleControls:v7];
}

- (void)didChangeFocusedVenue:(id)venue
{
  if (venue)
  {
    [(MacFloatingControlsViewController *)self setupVenueFloorViewController];
  }
}

- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button
{
  if (button)
  {
    self->_tappedTrackingButton = 1;
    viewCopy = view;
    localSearchViewController = [(MacFloatingControlsViewController *)self localSearchViewController];
    refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
    [refreshSearchHereBusinessController didStartRespondingToGesture:viewCopy];
  }
}

- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection
{
  localSearchViewController = self->_localSearchViewController;
  viewCopy = view;
  refreshSearchHereBusinessController = [(LocalSearchViewController *)localSearchViewController refreshSearchHereBusinessController];
  v12 = [refreshSearchHereBusinessController didStopRespondingToGesture:viewCopy];

  [(MacFloatingControlsViewController *)self _showSearchHereIfNeeded:v12];
}

- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated
{
  if (!gesture)
  {
    localSearchViewController = self->_localSearchViewController;
    viewCopy = view;
    refreshSearchHereBusinessController = [(LocalSearchViewController *)localSearchViewController refreshSearchHereBusinessController];
    [refreshSearchHereBusinessController didStartRespondingToGesture:viewCopy];
  }
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = MacFloatingControlsViewController;
  [(FloatingControlsViewController *)&v11 mapView:viewCopy regionDidChangeAnimated:animatedCopy];
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    if (self->_tappedTrackingButton)
    {
      self->_tappedTrackingButton = 0;
      localSearchViewController = [(MacFloatingControlsViewController *)self localSearchViewController];
      refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
      v9 = [refreshSearchHereBusinessController didStopRespondingToGesture:viewCopy];

      [(MacFloatingControlsViewController *)self _showSearchHereIfNeeded:v9];
    }
  }

  else
  {
    refreshSearchHereBusinessController2 = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
    [refreshSearchHereBusinessController2 handleMapViewRegionDidChange:viewCopy];
  }
}

- (void)_showSearchHereIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  refreshSearchHereBusinessController = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
  searchSession = [refreshSearchHereBusinessController searchSession];
  searchInfo = [searchSession searchInfo];

  if (searchInfo)
  {
    actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      refreshSearchHereBusinessController2 = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
      shouldShowManualRedoButton = [refreshSearchHereBusinessController2 shouldShowManualRedoButton];

      if (neededCopy || shouldShowManualRedoButton && [searchInfo shouldAllowManualRedoButton])
      {
        actionCoordinator2 = [(FloatingControlsViewController *)self actionCoordinator];
        [actionCoordinator2 showRedoSearchOverlay:neededCopy];
      }
    }

    [(MacFloatingControlsViewController *)self _layoutSearchHereControlIfNeeded];
  }
}

- (void)_layoutSearchHereControlIfNeeded
{
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    venueFloorViewController = [(MacFloatingControlsViewController *)self venueFloorViewController];
    view = [venueFloorViewController view];
    isHidden = [view isHidden];

    v8 = 0.0;
    if ((isHidden & 1) == 0)
    {
      venueFloorViewController2 = [(MacFloatingControlsViewController *)self venueFloorViewController];
      view2 = [venueFloorViewController2 view];
      [view2 frame];
      v8 = v11 + 8.0;
    }

    actionCoordinator2 = [(FloatingControlsViewController *)self actionCoordinator];
    [actionCoordinator2 setSearchHereFloatingControlBottomPadding:-v8];
  }
}

- (void)setAdditionalCompassEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_additionalCompassEdgeInsets.top), vceqq_f64(v4, *&self->_additionalCompassEdgeInsets.bottom))), 0xFuLL))) & 1) == 0)
  {
    self->_additionalCompassEdgeInsets = insets;
    [(MacFloatingControlsViewController *)self updateCompassInsets];
  }
}

- (void)updateCompassInsets
{
  if ([(FloatingControlsViewController *)self automaticallyUpdateCompassInsets])
  {
    view = [(MacFloatingControlsViewController *)self view];
    [view effectiveUserInterfaceLayoutDirection];

    sub_100019A44();
    [(MacFloatingControlsViewController *)self additionalCompassEdgeInsets];
    UIEdgeInsetsAdd();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    mapView = [(FloatingControlsViewController *)self mapView];
    [mapView _compassInsets];
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

    mapView2 = [(FloatingControlsViewController *)self mapView];
    [mapView2 _setCompassInsets:0 animated:{v5, v7, v9, v11}];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MacFloatingControlsViewController;
  [(MacFloatingControlsViewController *)&v6 viewDidDisappear:disappear];
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager removeChangeObserver:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = MacFloatingControlsViewController;
  [(FloatingControlsViewController *)&v9 viewWillAppear:appear];
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager addChangeObserver:self];

  actionCoordinator2 = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager2 = [actionCoordinator2 venuesManager];
  venueWithFocus = [venuesManager2 venueWithFocus];
  [(MacFloatingControlsViewController *)self didChangeFocusedVenue:venueWithFocus];
}

- (id)floatingButtonLeadingGuide
{
  view = [(MacFloatingControlsViewController *)self view];
  trailingAnchor = [view trailingAnchor];

  return trailingAnchor;
}

@end