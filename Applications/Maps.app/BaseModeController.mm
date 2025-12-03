@interface BaseModeController
- (ActionCoordination)actionCoordinator;
- (BOOL)canDropPin;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)hasDroppedPin;
- (BOOL)isShowingSharedTrip:(id)trip;
- (BOOL)mapQuickActionMenuPresenter:(id)presenter shouldBeginOrbGestureForLabelMarkerOnMap:(id)map;
- (BOOL)permitsLookAroundShowing;
- (BOOL)permitsWeatherShowing;
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldQuickActionMenuPresenter:(id)presenter presentAtLocation:(CGPoint)location inView:(id)view;
- (BOOL)shouldQuickActionMenuPresenter:(id)presenter showDirectionsToPlace:(id)place;
- (BOOL)shouldResizingCardDimFloatingControls;
- (BOOL)shouldShowAddStopForDirectionsInQuickActionMenuPresenter:(id)presenter;
- (BOOL)wantsLookAroundShowing;
- (BOOL)wantsStatusBarControl;
- (BOOL)wantsWeatherShowing;
- (BaseModeController)initWithPlatformController:(id)controller;
- (IOSBasedChromeViewController)chromeViewController;
- (PlaceCardItem)placeCardItemForLookAroundButton;
- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration;
- (id)containerViewController;
- (id)homeActionDelegate;
- (id)mapServiceTraitsForQuickActionPresenter:(id)presenter;
- (id)personalizedItemSources;
- (id)routeAnnotationsProvider;
- (id)searchDataSourceDelegate;
- (id)searchDataSourceLogContextDelegate;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (int)floorOrdinalAtCoordinate:(CLLocationCoordinate2D)coordinate;
- (int64_t)desiredFloatingControls;
- (int64_t)preferredStatusBarStyle;
- (void)_addRecentPlaceForSearchResult:(id)result;
- (void)_becomeTopContextInChromeViewController:(id)controller;
- (void)_cleanupSharedTripIfNeeded;
- (void)_clearCustomSearchResult;
- (void)_handleFeedbackPreWarmGesture:(id)gesture;
- (void)_handleLongPress:(id)press;
- (void)_loadExpensiveItemSources;
- (void)_resignTopContextInChromeViewController:(id)controller;
- (void)_setupMapView;
- (void)_setupUserLocationAnnotation;
- (void)_showCustomSearchResult:(id)result shouldSelectOnMap:(BOOL)map;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)cancelQuickActionMenuPresentation:(id)presentation;
- (void)createCustomSearchResultForDroppedPinAtCenterPoint;
- (void)createCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)point floorOrdinal:(int)ordinal animated:(BOOL)animated;
- (void)customSearchManager:(id)manager didModifyCustomSearchResult:(id)result coordinateChanged:(BOOL)changed;
- (void)enterPedestrianAR;
- (void)getCurrentSceneTitleWithCompletion:(id)completion;
- (void)mapCameraControllerWillChangeVisibleRect:(id)rect;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view regionWillChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated;
- (void)quickActionMenuPresenter:(id)presenter selectedCall:(id)call;
- (void)quickActionMenuPresenter:(id)presenter selectedDirectionsTo:(id)to;
- (void)quickActionMenuPresenter:(id)presenter selectedRemoveDroppedPinOf:(id)of;
- (void)quickActionMenuPresenter:(id)presenter selectedShareLocationOf:(id)of;
- (void)quickActionMenuPresenter:(id)presenter selectedShowPlaceCard:(id)card;
- (void)quickActionMenuPresenter:(id)presenter selectedViewTransitLinesOnMap:(id)map;
- (void)quickActionMenuPresenter:(id)presenter selectedViewWebsiteFor:(id)for;
- (void)quickActionMenuWillPresent:(id)present;
- (void)radarAuthorizationChanged;
- (void)removeDroppedPin;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)setChromeViewController:(id)controller;
- (void)setCustomSearchResult:(id)result animated:(BOOL)animated;
- (void)setMapView:(id)view;
- (void)showSharedTrip:(id)trip;
- (void)updateViewMode:(int64_t)mode animated:(BOOL)animated;
@end

@implementation BaseModeController

- (id)containerViewController
{
  containerViewController = self->_containerViewController;
  if (!containerViewController)
  {
    v4 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v4 userInterfaceIdiom];

    v6 = off_1015F62B0;
    if (userInterfaceIdiom != 5)
    {
      v6 = off_1015F61C0;
    }

    v7 = [objc_alloc(*v6) initWithPlatformController:self->_platformController];
    v8 = self->_containerViewController;
    self->_containerViewController = v7;

    [(ContainerViewController *)self->_containerViewController setAllowOnlyStandardStyle:0];
    [(ControlContainerViewController *)self->_containerViewController setChromeContext:self];
    coordinator = [(ControlContainerViewController *)self->_containerViewController coordinator];
    if (([coordinator conformsToProtocol:&OBJC_PROTOCOL___ChromeMapSelectionDelegate] & 1) == 0)
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315906;
        v15 = "[BaseModeController containerViewController]";
        v16 = 2080;
        v17 = "BaseModeController.m";
        v18 = 1024;
        v19 = 147;
        v20 = 2080;
        v21 = "[coordinator conformsToProtocol:@protocol(ChromeMapSelectionDelegate)]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v14, 0x26u);
      }

      if (sub_100E03634())
      {
        v12 = sub_10006D178();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = +[NSThread callStackSymbols];
          v14 = 138412290;
          v15 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
        }
      }
    }

    containerViewController = self->_containerViewController;
  }

  return containerViewController;
}

- (ActionCoordination)actionCoordinator
{
  containerViewController = [(BaseModeController *)self containerViewController];
  coordinator = [containerViewController coordinator];

  return coordinator;
}

- (IOSBasedChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (int64_t)desiredFloatingControls
{
  containerViewController = [(BaseModeController *)self containerViewController];
  floatingControlsOptions = [containerViewController floatingControlsOptions];

  if (floatingControlsOptions)
  {
    if (+[MapsRadarButtonHelper shouldShowButton])
    {
      floatingControlsOptions |= 0x200uLL;
    }

    v4 = +[GEOPlatform sharedPlatform];
    if ([v4 isInternalInstall] && MapsFeature_IsAvailable_SSAO())
    {
      BOOL = GEOConfigGetBOOL();

      if (BOOL)
      {
        return floatingControlsOptions | 0x400;
      }
    }

    else
    {
    }
  }

  return floatingControlsOptions;
}

- (BOOL)wantsStatusBarControl
{
  currentViewController = [(ContainerViewController *)self->_containerViewController currentViewController];
  if (currentViewController)
  {
    currentViewController2 = [(ContainerViewController *)self->_containerViewController currentViewController];
    if (objc_opt_respondsToSelector())
    {
      v5 = 1;
    }

    else
    {
      currentViewController3 = [(ContainerViewController *)self->_containerViewController currentViewController];
      if (objc_opt_respondsToSelector())
      {
        v5 = 1;
      }

      else
      {
        currentViewController4 = [(ContainerViewController *)self->_containerViewController currentViewController];
        v5 = objc_opt_respondsToSelector();
      }
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

- (BOOL)prefersStatusBarHidden
{
  currentViewController = [(ContainerViewController *)self->_containerViewController currentViewController];
  if (objc_opt_respondsToSelector())
  {
    prefersStatusBarHidden = [currentViewController prefersStatusBarHidden];
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    if ([v4 userInterfaceIdiom] == 1)
    {
      prefersStatusBarHidden = 0;
    }

    else
    {
      v5 = +[UIDevice currentDevice];
      if ([v5 userInterfaceIdiom] == 5)
      {
        prefersStatusBarHidden = 0;
      }

      else
      {
        traitCollection = [currentViewController traitCollection];
        prefersStatusBarHidden = [traitCollection verticalSizeClass] == 1;
      }
    }
  }

  return prefersStatusBarHidden;
}

- (int64_t)preferredStatusBarStyle
{
  currentViewController = [(ContainerViewController *)self->_containerViewController currentViewController];
  if (objc_opt_respondsToSelector())
  {
    preferredStatusBarStyle = [currentViewController preferredStatusBarStyle];
  }

  else
  {
    preferredStatusBarStyle = 0;
  }

  return preferredStatusBarStyle;
}

- (BOOL)permitsLookAroundShowing
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v3 isUsingOfflineMaps];

  if (isUsingOfflineMaps)
  {
    return 0;
  }

  chromeViewController = [(BaseModeController *)self chromeViewController];
  if (chromeViewController)
  {
    if (_UISolariumEnabled())
    {
      v5 = 1;
    }

    else
    {
      chromeViewController2 = [(BaseModeController *)self chromeViewController];
      v5 = sub_10000FA08(chromeViewController2) != 5;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)wantsLookAroundShowing
{
  if (![(BaseModeController *)self permitsLookAroundShowing])
  {
    return 0;
  }

  actionCoordinator = [(BaseModeController *)self actionCoordinator];
  isRoutePlanningPresented = [actionCoordinator isRoutePlanningPresented];

  if ((isRoutePlanningPresented & 1) != 0 || ([(ControlContainerViewController *)self->_containerViewController floatingControlsOptions]& 0x80) == 0)
  {
    return 0;
  }

  if ([(MKMapView *)self->_mapView _lookAroundAvailability]== 2)
  {
    return 1;
  }

  placeCardItemForLookAroundButton = [(BaseModeController *)self placeCardItemForLookAroundButton];
  mapItem = [placeCardItemForLookAroundButton mapItem];
  v5 = mapItem != 0;

  return v5;
}

- (PlaceCardItem)placeCardItemForLookAroundButton
{
  actionCoordinator = [(BaseModeController *)self actionCoordinator];
  isRoutePlanningPresented = [actionCoordinator isRoutePlanningPresented];

  if (isRoutePlanningPresented)
  {
    v5 = 0;
  }

  else
  {
    actionCoordinator2 = [(BaseModeController *)self actionCoordinator];
    currentPlaceCardItem = [actionCoordinator2 currentPlaceCardItem];

    mapItem = [currentPlaceCardItem mapItem];
    v9 = mapItem;
    if (mapItem && (([mapItem _hasLookAroundStorefront] & 1) != 0 || +[LookAroundButtonContainerViewController isIncompleteMapItem:](LookAroundButtonContainerViewController, "isIncompleteMapItem:", v9)))
    {
      v5 = currentPlaceCardItem;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_setupUserLocationAnnotation
{
  chromeViewController = [(BaseModeController *)self chromeViewController];
  userLocationView = [chromeViewController userLocationView];

  [userLocationView setMode:0 animated:1];
}

- (void)_setupMapView
{
  chromeViewController = [(BaseModeController *)self chromeViewController];
  shouldUseModernMap = [chromeViewController shouldUseModernMap];

  if ((shouldUseModernMap & 1) == 0)
  {
    mapView = self->_mapView;
    chromeViewController2 = [(BaseModeController *)self chromeViewController];
    displayedViewMode = [chromeViewController2 displayedViewMode];
    v21 = 0u;
    v23 = 0u;
    v24 = 0;
    _MKCartographicConfigurationDefault();
    v22 = vdupq_n_s64(1uLL);
    *&v23 = 0;
    if (displayedViewMode > 4)
    {
      if (displayedViewMode == 5)
      {
        v8 = vdupq_n_s64(1uLL);
      }

      else
      {
        if (displayedViewMode != 6)
        {
          if (displayedViewMode == 7)
          {
            v21.i64[1] = 2;
          }

          goto LABEL_16;
        }

        v8 = xmmword_1011FDDA0;
      }

      v21 = v8;
    }

    else
    {
      switch(displayedViewMode)
      {
        case 1:
          v21 = vdupq_n_s64(1uLL);
          v22.i64[0] = 0;
          break;
        case 2:
          v22.i64[0] = 0;
          v21 = 1uLL;
          break;
        case 3:
          v21.i64[1] = 4;
          v22.i64[1] = 3;
          break;
      }
    }

LABEL_16:
    [(MKMapView *)mapView _setCartographicConfiguration:&v21 animated:0];
  }

  v9 = [(MKMapView *)self->_mapView _mapLayer:*&v21];
  [v9 setDesiredMapMode:0];

  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  [_mapLayer setCanonicalSkyHeight:0.0520833321];

  [(MKMapView *)self->_mapView _setCanSelectPOIs:1];
  [(MKMapView *)self->_mapView _setShowsTrafficIncidents:1];
  [(MKMapView *)self->_mapView setShowsUserLocation:1];
  _longPressGestureRecognizer = [(MKMapView *)self->_mapView _longPressGestureRecognizer];
  [_longPressGestureRecognizer setEnabled:0];

  longPress = self->_longPress;
  if (!longPress)
  {
    v13 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_handleLongPress:"];
    v14 = self->_longPress;
    self->_longPress = v13;

    [(UILongPressGestureRecognizer *)self->_longPress setNumberOfTouchesRequired:1];
    GEOConfigGetDouble();
    [(UILongPressGestureRecognizer *)self->_longPress setMinimumPressDuration:?];
    GEOConfigGetDouble();
    [(UILongPressGestureRecognizer *)self->_longPress setAllowableMovement:?];
    [(UILongPressGestureRecognizer *)self->_longPress setDelegate:self];
    v15 = sub_10000FA08(self->_mapView);
    longPress = self->_longPress;
    if (v15 == 5)
    {
      [(UILongPressGestureRecognizer *)self->_longPress setAllowableMovement:2.0];
      longPress = self->_longPress;
    }
  }

  [(MKMapView *)self->_mapView addGestureRecognizer:longPress];
  if (self->_feedbackPreWarmGestureRecognizer)
  {
    goto LABEL_24;
  }

  if (sub_10000FA08(self->_mapView) != 5)
  {
    v16 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_handleFeedbackPreWarmGesture:"];
    feedbackPreWarmGestureRecognizer = self->_feedbackPreWarmGestureRecognizer;
    self->_feedbackPreWarmGestureRecognizer = v16;

    [(UILongPressGestureRecognizer *)self->_feedbackPreWarmGestureRecognizer setNumberOfTouchesRequired:1];
    [(UILongPressGestureRecognizer *)self->_feedbackPreWarmGestureRecognizer setMinimumPressDuration:0.25];
    [(UILongPressGestureRecognizer *)self->_feedbackPreWarmGestureRecognizer setDelegate:self];
  }

  if (self->_feedbackPreWarmGestureRecognizer)
  {
LABEL_24:
    [(MKMapView *)self->_mapView addGestureRecognizer:?];
  }

  v18 = [[UIImpactFeedbackGenerator alloc] initWithStyle:1 view:self->_mapView];
  feedbackBehavior = self->_feedbackBehavior;
  self->_feedbackBehavior = v18;

  [(UILongPressGestureRecognizer *)self->_longPress addTarget:self action:"cancelQuickActionMenuPresentation:"];
  _longPressGestureRecognizer2 = [(MKMapView *)self->_mapView _longPressGestureRecognizer];
  [_longPressGestureRecognizer2 addTarget:self action:"cancelQuickActionMenuPresentation:"];

  [(MKMapView *)self->_mapView _setAlwaysShowHeadingIndicatorIfSupported:1];
  [(MKMapView *)self->_mapView _setUseBalloonCalloutsForLabels:1];
}

- (id)routeAnnotationsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  if (sub_10000FA08(WeakRetained) == 5)
  {
    v4 = objc_loadWeakRetained(&self->_chromeViewController);
    sharedTripsAnnotationsController = [v4 sharedTripsAnnotationsController];
    sharedTrip = [sharedTripsAnnotationsController sharedTrip];

    if (sharedTrip)
    {
      actionCoordinator = objc_loadWeakRetained(&self->_chromeViewController);
      sharedTripsAnnotationsController2 = [actionCoordinator sharedTripsAnnotationsController];
      goto LABEL_6;
    }
  }

  else
  {
  }

  actionCoordinator = [(BaseModeController *)self actionCoordinator];
  sharedTripsAnnotationsController2 = [actionCoordinator routeAnnotationsProvider];
LABEL_6:
  v9 = sharedTripsAnnotationsController2;

  return v9;
}

- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration
{
  v2 = objc_alloc_init(RouteAnnotationsConfiguration);

  return v2;
}

- (id)personalizedItemSources
{
  chromeViewController = [(BaseModeController *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];

  if (searchPinsManager)
  {
    if (!self->_collectionPlaceItemSource)
    {
      v5 = [[PersonalizedCollectionPlaceItemSource alloc] initWithMapView:self->_mapView];
      collectionPlaceItemSource = self->_collectionPlaceItemSource;
      self->_collectionPlaceItemSource = v5;
    }

    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled]&& !self->_favoritePlaceItemSource)
    {
      v7 = [[_TtC4Maps30PersonalizedFavoriteItemSource alloc] initWithMapView:self->_mapView];
      favoritePlaceItemSource = self->_favoritePlaceItemSource;
      self->_favoritePlaceItemSource = v7;
    }

    v24 = [NSMutableArray alloc];
    searchResultsItemSource = [searchPinsManager searchResultsItemSource];
    singleSearchResultItemSource = [searchPinsManager singleSearchResultItemSource];
    droppedPinsItemSource = [searchPinsManager droppedPinsItemSource];
    collectionPinsItemSource = [searchPinsManager collectionPinsItemSource];
    routeStartEndItemSource = [searchPinsManager routeStartEndItemSource];
    placeCardLinkedPlacesItemSource = [searchPinsManager placeCardLinkedPlacesItemSource];
    searchDotPlacesItemSource = [searchPinsManager searchDotPlacesItemSource];
    v14 = self->_collectionPlaceItemSource;
    parkedCarItemSource = [searchPinsManager parkedCarItemSource];
    v16 = [v24 initWithObjects:{searchResultsItemSource, singleSearchResultItemSource, droppedPinsItemSource, collectionPinsItemSource, routeStartEndItemSource, placeCardLinkedPlacesItemSource, searchDotPlacesItemSource, v14, parkedCarItemSource, 0}];

    if (self->_favoritePlaceItemSource)
    {
      [v16 addObject:?];
    }

    v17 = objc_alloc_init(TrafficIncidentItemSource);
    [v16 addObject:v17];

    if (self->_includeExpensiveItemSources)
    {
      actionCoordinator = [(BaseModeController *)self actionCoordinator];
      suggestionsItemSource = [actionCoordinator suggestionsItemSource];

      if (suggestionsItemSource)
      {
        [v16 addObject:suggestionsItemSource];
      }

      if (self->_calendarItemSource)
      {
        [v16 addObject:?];
      }
    }

    v20 = [v16 copy];
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

- (void)radarAuthorizationChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007EBD40;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)permitsWeatherShowing
{
  v2 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v2 isUsingOfflineMaps];

  return isUsingOfflineMaps ^ 1;
}

- (BOOL)wantsWeatherShowing
{
  LODWORD(v3) = [(BaseModeController *)self permitsWeatherShowing];
  if (v3)
  {
    return ([(ControlContainerViewController *)self->_containerViewController floatingControlsOptions]>> 3) & 1;
  }

  return v3;
}

- (int)currentMapViewTargetForAnalytics
{
  mapViewDelegate = [(BaseModeController *)self mapViewDelegate];
  if ([mapViewDelegate conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate])
  {
    v3 = mapViewDelegate;
    if (objc_opt_respondsToSelector())
    {
      currentMapViewTargetForAnalytics = [v3 currentMapViewTargetForAnalytics];
    }

    else
    {
      currentMapViewTargetForAnalytics = 0;
    }
  }

  else
  {
    currentMapViewTargetForAnalytics = 0;
  }

  return currentMapViewTargetForAnalytics;
}

- (int)currentUITargetForAnalytics
{
  mapViewDelegate = [(BaseModeController *)self mapViewDelegate];
  if ([mapViewDelegate conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate])
  {
    v3 = mapViewDelegate;
    if (objc_opt_respondsToSelector())
    {
      currentUITargetForAnalytics = [v3 currentUITargetForAnalytics];
    }

    else
    {
      currentUITargetForAnalytics = 0;
    }
  }

  else
  {
    currentUITargetForAnalytics = 0;
  }

  return currentUITargetForAnalytics;
}

- (BOOL)shouldQuickActionMenuPresenter:(id)presenter showDirectionsToPlace:(id)place
{
  placeCopy = place;
  chromeViewController = [(BaseModeController *)self chromeViewController];
  venuesManager = [chromeViewController venuesManager];
  mapItem = [placeCopy mapItem];

  LOBYTE(placeCopy) = [venuesManager isUserAtSameVenueAsMapItem:mapItem];
  return placeCopy ^ 1;
}

- (void)quickActionMenuWillPresent:(id)present
{
  if ([(UILongPressGestureRecognizer *)self->_longPress isEnabled])
  {
    [(UILongPressGestureRecognizer *)self->_longPress setEnabled:0];
    [(UILongPressGestureRecognizer *)self->_longPress setEnabled:1];
  }

  _longPressGestureRecognizer = [(MKMapView *)self->_mapView _longPressGestureRecognizer];
  isEnabled = [_longPressGestureRecognizer isEnabled];

  if (isEnabled)
  {
    _longPressGestureRecognizer2 = [(MKMapView *)self->_mapView _longPressGestureRecognizer];
    [_longPressGestureRecognizer2 setEnabled:0];

    _longPressGestureRecognizer3 = [(MKMapView *)self->_mapView _longPressGestureRecognizer];
    [_longPressGestureRecognizer3 setEnabled:1];
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedViewTransitLinesOnMap:(id)map
{
  mapCopy = map;
  actionCoordinator = [(BaseModeController *)self actionCoordinator];
  mapSelectionManager = [actionCoordinator mapSelectionManager];
  [mapSelectionManager selectLabelMarker:mapCopy animated:1];
}

- (void)quickActionMenuPresenter:(id)presenter selectedRemoveDroppedPinOf:(id)of
{
  searchResult = [presenter searchResult];
  if (searchResult)
  {
    v7 = searchResult;
    actionCoordinator = [(BaseModeController *)self actionCoordinator];
    [actionCoordinator viewController:0 removeDroppedPin:v7];

    searchResult = v7;
  }
}

- (id)mapServiceTraitsForQuickActionPresenter:(id)presenter
{
  actionCoordinator = [(BaseModeController *)self actionCoordinator];
  newTraits = [actionCoordinator newTraits];

  return newTraits;
}

- (BOOL)shouldQuickActionMenuPresenter:(id)presenter presentAtLocation:(CGPoint)location inView:(id)view
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  actionCoordinator = [(BaseModeController *)self actionCoordinator];
  currentViewController = [actionCoordinator currentViewController];

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![currentViewController allowsQuickActionMenuInMap])
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    [(MKMapView *)self->_mapView convertPoint:viewCopy fromView:x, y];
    v11 = [(MKMapView *)self->_mapView _labelMarkerAtPoint:?];
    v12 = [v11 isFlyoverTour] ^ 1;
  }

  return v12;
}

- (void)quickActionMenuPresenter:(id)presenter selectedShowPlaceCard:(id)card
{
  searchResult = [presenter searchResult];
  labelMarker = [(QuickActionMenuPresenter *)self->_quickActionMenuPresenter labelMarker];

  if (labelMarker)
  {
    actionCoordinator = [(BaseModeController *)self actionCoordinator];
    mapSelectionManager = [actionCoordinator mapSelectionManager];
    labelMarker2 = [(QuickActionMenuPresenter *)self->_quickActionMenuPresenter labelMarker];
    [mapSelectionManager selectLabelMarker:labelMarker2 animated:1];

    [(BaseModeController *)self _addRecentPlaceForSearchResult:searchResult];
  }

  else
  {
    annotation = [(MapQuickActionMenuPresenter *)self->_quickActionMenuPresenter annotation];

    if (annotation)
    {
      mapView = self->_mapView;
      annotation2 = [(MapQuickActionMenuPresenter *)self->_quickActionMenuPresenter annotation];
      [(MKMapView *)mapView selectAnnotation:annotation2 animated:1];
    }
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedShareLocationOf:(id)of
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007EC4E8;
  v13[3] = &unk_10162AC48;
  v13[4] = self;
  presenterCopy = presenter;
  v5 = objc_retainBlock(v13);
  searchResult = [presenterCopy searchResult];

  v7 = +[MKLocationManager sharedLocationManager];
  isAuthorizedForPreciseLocation = [v7 isAuthorizedForPreciseLocation];

  if (isAuthorizedForPreciseLocation)
  {
    (v5[2])(v5, searchResult);
  }

  else
  {
    v9 = +[MKMapService sharedService];
    [v9 captureUserAction:56 onTarget:690 eventValue:0];

    v10 = +[MKLocationManager sharedLocationManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1007EC5A4;
    v11[3] = &unk_1016610B8;
    v12 = v5;
    [v10 requestTemporaryPreciseLocationAuthorizationWithPurposeKey:@"AppInfoTemporaryPreciseLocationAuthorizationForShareLocationPurposeKey" completion:v11];
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedViewWebsiteFor:(id)for
{
  searchResult = [presenter searchResult];
  if (searchResult)
  {
    v7 = searchResult;
    actionCoordinator = [(BaseModeController *)self actionCoordinator];
    [actionCoordinator viewController:0 openWebsiteForSearchResult:v7];

    [(BaseModeController *)self _addRecentPlaceForSearchResult:v7];
    searchResult = v7;
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedCall:(id)call
{
  searchResult = [presenter searchResult];
  if (searchResult)
  {
    v7 = searchResult;
    actionCoordinator = [(BaseModeController *)self actionCoordinator];
    [actionCoordinator viewController:0 doAudioCallToSearchResult:v7];

    [(BaseModeController *)self _addRecentPlaceForSearchResult:v7];
    searchResult = v7;
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedDirectionsTo:(id)to
{
  presenterCopy = presenter;
  searchResult = [presenterCopy searchResult];
  if (searchResult)
  {
    isAdditionalStop = [presenterCopy isAdditionalStop];
    v8 = objc_alloc_init(SearchFieldItem);
    v9 = v8;
    if (isAdditionalStop)
    {
      [(SearchFieldItem *)v8 setSearchResult:searchResult];
      v20 = v9;
      v10 = [NSArray arrayWithObjects:&v20 count:1];
    }

    else
    {
      v11 = +[SearchResult currentLocationSearchResult];
      [(SearchFieldItem *)v9 setSearchResult:v11];

      v12 = objc_alloc_init(SearchFieldItem);
      [(SearchFieldItem *)v12 setSearchResult:searchResult];
      v19[0] = v9;
      v19[1] = v12;
      v10 = [NSArray arrayWithObjects:v19 count:2];
    }

    v13 = [[DirectionItem alloc] initWithItems:v10 transportType:0];
    v14 = [NSNumber numberWithBool:isAdditionalStop, @"DirectionsSessionInitiatorKey", @"DirectionsAppendContentsOfItem", &off_1016E6FE0];
    v18[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:&v17 count:2];

    actionCoordinator = [(BaseModeController *)self actionCoordinator];
    [actionCoordinator viewController:0 doDirectionItem:v13 withUserInfo:v15];

    [(BaseModeController *)self _addRecentPlaceForSearchResult:searchResult];
  }
}

- (void)_addRecentPlaceForSearchResult:(id)result
{
  resultCopy = result;
  v4 = resultCopy;
  if (resultCopy)
  {
    v8 = resultCopy;
    isHomeOrWork = [resultCopy isHomeOrWork];
    v4 = v8;
    if ((isHomeOrWork & 1) == 0)
    {
      mapItem = [v8 mapItem];
      searchToSupersedeIfRecordedInHistory = [v8 searchToSupersedeIfRecordedInHistory];
      [HistoryEntryRecentsItem saveMapItem:mapItem superseedUUID:searchToSupersedeIfRecordedInHistory];

      v4 = v8;
    }
  }
}

- (BOOL)shouldShowAddStopForDirectionsInQuickActionMenuPresenter:(id)presenter
{
  actionCoordinator = [(BaseModeController *)self actionCoordinator];
  shouldAddStopInRoutePlanning = [actionCoordinator shouldAddStopInRoutePlanning];

  return shouldAddStopInRoutePlanning;
}

- (id)searchDataSourceLogContextDelegate
{
  coordinator = [(ControlContainerViewController *)self->_containerViewController coordinator];
  searchDataSourceLogContextDelegate = [coordinator searchDataSourceLogContextDelegate];

  return searchDataSourceLogContextDelegate;
}

- (id)searchDataSourceDelegate
{
  coordinator = [(ControlContainerViewController *)self->_containerViewController coordinator];
  searchDataSourceDelegate = [coordinator searchDataSourceDelegate];

  return searchDataSourceDelegate;
}

- (id)homeActionDelegate
{
  coordinator = [(ControlContainerViewController *)self->_containerViewController coordinator];
  homeActionDelegate = [coordinator homeActionDelegate];

  return homeActionDelegate;
}

- (BOOL)mapQuickActionMenuPresenter:(id)presenter shouldBeginOrbGestureForLabelMarkerOnMap:(id)map
{
  presenterCopy = presenter;
  mapCopy = map;
  v8 = mapCopy;
  if (!mapCopy)
  {
LABEL_9:
    LOBYTE(v10) = 0;
    goto LABEL_10;
  }

  if (![mapCopy isTransitLine])
  {
    if (([v8 isFlyoverTour] & 1) == 0 && (objc_msgSend(v8, "isTrafficIncident") & 1) == 0 && (objc_msgSend(v8, "isOneWayArrow") & 1) == 0 && (objc_msgSend(v8, "isRouteAnnotation") & 1) == 0 && (objc_msgSend(v8, "isCluster") & 1) == 0)
    {
      featureType = [v8 featureType];
      if (featureType - 5 < 2 || featureType == 3 && ([v8 businessID] || !objc_msgSend(v8, "featureID")))
      {
        LOBYTE(v10) = 1;
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  actionCoordinator = [(BaseModeController *)self actionCoordinator];
  v10 = [actionCoordinator isRoutePlanningPresented] ^ 1;

LABEL_10:
  return v10;
}

- (void)getCurrentSceneTitleWithCompletion:(id)completion
{
  completionCopy = completion;
  actionCoordinator = [(BaseModeController *)self actionCoordinator];
  [actionCoordinator getCurrentSceneTitleWithCompletion:completionCopy];
}

- (void)_resignTopContextInChromeViewController:(id)controller
{
  controllerCopy = controller;
  mapView = self->_mapView;
  if (mapView)
  {
    [(MKMapView *)mapView bounds];
    if (!CGRectIsEmpty(v16))
    {
      [(MKMapView *)self->_mapView region];
      self->_previousRegion.center.latitude = v5;
      self->_previousRegion.center.longitude = v6;
      self->_previousRegion.span.latitudeDelta = v7;
      self->_previousRegion.span.longitudeDelta = v8;
    }
  }

  [UIFont setPlacecardShouldUseSmallFont:0];
  [(BaseModeController *)self setMapView:0];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self name:@"AddressBookManagerDidUpdateAddressesNotification" object:0];

  chromeViewController = [(BaseModeController *)self chromeViewController];
  customSearchManager = [chromeViewController customSearchManager];
  [customSearchManager removeObserver:self];

  chromeViewController2 = [(BaseModeController *)self chromeViewController];
  mapCameraController = [chromeViewController2 mapCameraController];
  [mapCameraController addObserver:self];
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007ECFB0;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v8 = controllerCopy;
  v10 = v8;
  [animationCopy addPreparation:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_becomeTopContextInChromeViewController:(id)controller
{
  controllerCopy = controller;
  [(BaseModeController *)self _setupUserLocationAnnotation];
  [UIFont setPlacecardShouldUseSmallFont:_MKPlaceCardUseSmallerFont()];
  previousTopContext = [controllerCopy previousTopContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = MKCoordinateRegionInvalid[1];
    self->_previousRegion.center = MKCoordinateRegionInvalid[0];
    self->_previousRegion.span = v6;
  }

  chromeViewController = [(BaseModeController *)self chromeViewController];
  mapView = [chromeViewController mapView];
  [(BaseModeController *)self setMapView:mapView];

  if ([controllerCopy hasDuplicatesOfContext:self])
  {
    goto LABEL_4;
  }

  previousTopContext2 = [controllerCopy previousTopContext];
  if (sub_100010C34(previousTopContext2, &OBJC_PROTOCOL___IOSBasedChromeContext))
  {
    previousTopContext3 = [controllerCopy previousTopContext];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      previousTopContext4 = [controllerCopy previousTopContext];
      shouldResetStateAfterResigning = [previousTopContext4 shouldResetStateAfterResigning];

      if (!shouldResetStateAfterResigning)
      {
LABEL_4:
        v9 = MKCoordinateRegionInvalid[1];
        self->_previousRegion.center = MKCoordinateRegionInvalid[0];
        self->_previousRegion.span = v9;
        goto LABEL_5;
      }
    }
  }

  else
  {
  }

  [(ControlContainerViewController *)self->_containerViewController resetState];
  if (fabs(self->_previousRegion.center.longitude) <= 180.0)
  {
    latitude = self->_previousRegion.center.latitude;
    if (latitude >= -90.0 && latitude <= 90.0)
    {
      latitudeDelta = self->_previousRegion.span.latitudeDelta;
      if (latitudeDelta >= 0.0 && latitudeDelta <= 180.0)
      {
        longitudeDelta = self->_previousRegion.span.longitudeDelta;
        if (longitudeDelta >= 0.0 && longitudeDelta <= 360.0 && longitudeDelta > 0.0)
        {
          [(MKMapView *)self->_mapView setRegion:1 animated:?];
        }
      }
    }
  }

LABEL_5:
  chromeViewController2 = [(BaseModeController *)self chromeViewController];
  customSearchManager = [chromeViewController2 customSearchManager];
  [customSearchManager addObserver:self];

  chromeViewController3 = [(BaseModeController *)self chromeViewController];
  mapCameraController = [chromeViewController3 mapCameraController];
  [mapCameraController addObserver:self];

  chromeViewController4 = [(BaseModeController *)self chromeViewController];
  [chromeViewController4 updateMapViewDisplayOptions];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007ED398;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v8 = controllerCopy;
  v10 = v8;
  [animationCopy addPreparation:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)enterPedestrianAR
{
  actionCoordinator = [(BaseModeController *)self actionCoordinator];
  [actionCoordinator enterPedestrianAR];
}

- (BOOL)shouldResizingCardDimFloatingControls
{
  containerViewController = [(BaseModeController *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  v7 = gestureRecognizerCopy;
  longPress = self->_longPress;
  feedbackPreWarmGestureRecognizer = self->_feedbackPreWarmGestureRecognizer;
  v11 = feedbackPreWarmGestureRecognizer == recognizer || feedbackPreWarmGestureRecognizer == gestureRecognizerCopy;
  v13 = longPress == recognizer || longPress == gestureRecognizerCopy;
  recognizerCopy = recognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();
  }

  if (v11 && v13)
  {
    v17 = 1;
  }

  else
  {
    v17 = (sub_10000FA08(self->_mapView) == 5 && v13) & v16;
  }

  return v17;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  [touch locationInView:self->_mapView];
  v6 = v5;
  v8 = v7;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  subviews = [(MKMapView *)self->_mapView subviews];
  v10 = [subviews countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(subviews);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        [v14 frame];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        [(MKMapView *)self->_mapView bounds];
        v37.origin.x = v23;
        v37.origin.y = v24;
        v37.size.width = v25;
        v37.size.height = v26;
        v35.origin.x = v16;
        v35.origin.y = v18;
        v35.size.width = v20;
        v35.size.height = v22;
        if (!CGRectEqualToRect(v35, v37))
        {
          [v14 frame];
          v34.x = v6;
          v34.y = v8;
          if (CGRectContainsPoint(v36, v34))
          {
            v27 = 0;
            goto LABEL_12;
          }
        }
      }

      v11 = [subviews countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v27 = 1;
LABEL_12:

  return v27;
}

- (void)_handleFeedbackPreWarmGesture:(id)gesture
{
  if ([gesture state] == 1)
  {
    feedbackBehavior = self->_feedbackBehavior;

    [(UIImpactFeedbackGenerator *)feedbackBehavior prepare];
  }
}

- (void)_handleLongPress:(id)press
{
  pressCopy = press;
  if ([(BaseModeController *)self canDropPin])
  {
    if ([pressCopy state] == 1)
    {
      [pressCopy locationInView:self->_mapView];
      [(MKMapView *)self->_mapView convertPoint:self->_mapView toCoordinateFromView:?];
      if (fabs(v5) <= 180.0 && v4 >= -90.0 && v4 <= 90.0)
      {
        [(BaseModeController *)self createCustomSearchResultForDroppedPinAtPoint:[(BaseModeController *)self floorOrdinalAtCoordinate:v4 floorOrdinal:v5] animated:1, v4, v5];
        [(UIImpactFeedbackGenerator *)self->_feedbackBehavior impactOccurredWithIntensity:1.0];
        v6 = +[MKMapService sharedService];
        [v6 captureUserAction:1030 onTarget:0 eventValue:0];
      }
    }
  }
}

- (int)floorOrdinalAtCoordinate:(CLLocationCoordinate2D)coordinate
{
  VKLocationCoordinate2DMake();
  v5 = v4;
  v7 = v6;
  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  v9 = [_mapLayer venueAtLocation:{v5, v7}];

  if (v9)
  {
    v10 = [(MKMapView *)self->_mapView displayedFloorOrdinalForBuildingsInVenue:v9];
  }

  else
  {
    v10 = 0x7FFFFFFF;
  }

  return v10;
}

- (void)cancelQuickActionMenuPresentation:(id)presentation
{
  if ([presentation state] == 1)
  {
    quickActionMenuPresenter = self->_quickActionMenuPresenter;

    [(QuickActionMenuPresenter *)quickActionMenuPresenter cancelPresentationGesture];
  }
}

- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated
{
  [(MapQuickActionMenuPresenter *)self->_quickActionMenuPresenter invalidateIfNeeded:view];
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  weakRetained = [WeakRetained sharedTripsAnnotationsController];
  automaticallyRecenters = [weakRetained automaticallyRecenters];

  if ((automaticallyRecenters & 1) == 0)
  {
    v10 = objc_loadWeakRetained(&self->_chromeViewController);
    sharedTripsAnnotationsController = [v10 sharedTripsAnnotationsController];
    [sharedTripsAnnotationsController setAutomaticallyRecenter:0];
  }
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  favoritePlaceItemSource = self->_favoritePlaceItemSource;
  viewCopy = view;
  [(PersonalizedFavoriteItemSource *)favoritePlaceItemSource mapViewRegionDidChange:viewCopy];
  [(PersonalizedCollectionPlaceItemSource *)self->_collectionPlaceItemSource mapViewRegionDidChange:viewCopy];
}

- (void)mapView:(id)view regionWillChangeAnimated:(BOOL)animated
{
  favoritePlaceItemSource = self->_favoritePlaceItemSource;
  viewCopy = view;
  [(PersonalizedFavoriteItemSource *)favoritePlaceItemSource mapViewRegionWillChange:viewCopy];
  [(PersonalizedCollectionPlaceItemSource *)self->_collectionPlaceItemSource mapViewRegionWillChange:viewCopy];
}

- (void)mapCameraControllerWillChangeVisibleRect:(id)rect
{
  actionCoordinator = [(BaseModeController *)self actionCoordinator];
  [actionCoordinator setUserTrackingViewUserTrackingMode:0];
}

- (void)customSearchManager:(id)manager didModifyCustomSearchResult:(id)result coordinateChanged:(BOOL)changed
{
  if (changed)
  {
    [(BaseModeController *)self _showCustomSearchResult:result shouldSelectOnMap:0];
  }
}

- (void)_cleanupSharedTripIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  weakRetained = [WeakRetained sharedTripsAnnotationsController];
  [weakRetained setActive:0];

  v6 = objc_loadWeakRetained(&self->_chromeViewController);
  sharedTripsAnnotationsController = [v6 sharedTripsAnnotationsController];
  [sharedTripsAnnotationsController setSharedTrip:0];
}

- (BOOL)isShowingSharedTrip:(id)trip
{
  groupIdentifier = [trip groupIdentifier];
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  weakRetained = [WeakRetained sharedTripsAnnotationsController];
  sharedTrip = [weakRetained sharedTrip];
  groupIdentifier2 = [sharedTrip groupIdentifier];

  v9 = 0;
  if (groupIdentifier && groupIdentifier2)
  {
    v9 = [groupIdentifier isEqualToString:groupIdentifier2];
  }

  return v9;
}

- (void)showSharedTrip:(id)trip
{
  tripCopy = trip;
  if (tripCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
    weakRetained = [WeakRetained sharedTripsAnnotationsController];
    [weakRetained setSharedTrip:tripCopy];

    v6 = objc_loadWeakRetained(&self->_chromeViewController);
    sharedTripsAnnotationsController = [v6 sharedTripsAnnotationsController];
    [sharedTripsAnnotationsController setActive:1];
  }

  else
  {
    [(BaseModeController *)self _cleanupSharedTripIfNeeded];
  }
}

- (BOOL)canDropPin
{
  actionCoordinator = [(BaseModeController *)self actionCoordinator];
  currentViewController = [actionCoordinator currentViewController];

  if (objc_opt_respondsToSelector())
  {
    allowsLongPressToMarkLocation = [currentViewController allowsLongPressToMarkLocation];
  }

  else
  {
    allowsLongPressToMarkLocation = 1;
  }

  return allowsLongPressToMarkLocation;
}

- (void)createCustomSearchResultForDroppedPinAtCenterPoint
{
  if ([(BaseModeController *)self canDropPin])
  {
    [(MKMapView *)self->_mapView centerCoordinate];
    [(BaseModeController *)self createCustomSearchResultForDroppedPinAtPoint:[(BaseModeController *)self floorOrdinalAtCoordinate:?] floorOrdinal:1 animated:v3, v4];
    v5 = +[MKMapService sharedService];
    [v5 captureUserAction:1030 onTarget:0 eventValue:0];
  }
}

- (void)createCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)point floorOrdinal:(int)ordinal animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = *&ordinal;
  longitude = point.longitude;
  latitude = point.latitude;
  [(BaseModeController *)self _clearCustomSearchResult];
  longitude = [SearchResult customSearchResultWithCoordinate:v6 floorOrdinal:latitude, longitude];
  [longitude setHasIncompleteMetadata:1];
  [(BaseModeController *)self setCustomSearchResult:longitude animated:animatedCopy];
}

- (void)_clearCustomSearchResult
{
  chromeViewController = [(BaseModeController *)self chromeViewController];
  customSearchManager = [chromeViewController customSearchManager];
  customSearchResult = [customSearchManager customSearchResult];

  if (customSearchResult)
  {
    [(BaseModeController *)self setCustomSearchResult:0 animated:0];
  }
}

- (void)removeDroppedPin
{
  chromeViewController = [(BaseModeController *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];
  droppedPin = [searchPinsManager droppedPin];

  if (droppedPin)
  {
    actionCoordinator = [(BaseModeController *)self actionCoordinator];
    [actionCoordinator viewController:0 removeDroppedPin:droppedPin];
  }
}

- (BOOL)hasDroppedPin
{
  chromeViewController = [(BaseModeController *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];
  droppedPin = [searchPinsManager droppedPin];
  v5 = droppedPin != 0;

  return v5;
}

- (void)_showCustomSearchResult:(id)result shouldSelectOnMap:(BOOL)map
{
  mapCopy = map;
  resultCopy = result;
  chromeViewController = [(BaseModeController *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];
  actionCoordinator = searchPinsManager;
  if (resultCopy)
  {
    [searchPinsManager setDroppedPin:resultCopy animated:1 shouldSelect:mapCopy];

    chromeViewController = +[CustomLocationManager sharedManager];
    actionCoordinator = [(BaseModeController *)self actionCoordinator];
    newTraits = [actionCoordinator newTraits];
    [chromeViewController processSearchResult:resultCopy traits:newTraits];
  }

  else
  {
    [searchPinsManager clearDroppedPin];
  }
}

- (void)setCustomSearchResult:(id)result animated:(BOOL)animated
{
  animatedCopy = animated;
  resultCopy = result;
  chromeViewController = [(BaseModeController *)self chromeViewController];
  customSearchManager = [chromeViewController customSearchManager];
  [customSearchManager setCustomSearchResult:resultCopy animated:animatedCopy shouldSelectOnMap:self->_mapView];
}

- (void)setMapView:(id)view
{
  viewCopy = view;
  mapView = self->_mapView;
  if (mapView != viewCopy)
  {
    v25 = viewCopy;
    [(MKMapView *)mapView removeGestureRecognizer:self->_longPress];
    [(MKMapView *)self->_mapView removeGestureRecognizer:self->_feedbackPreWarmGestureRecognizer];
    objc_storeStrong(&self->_mapView, view);
    if (!self->_mapView)
    {
      quickActionMenuPresenter = self->_quickActionMenuPresenter;
      if (quickActionMenuPresenter)
      {
        [quickActionMenuPresenter setEnabled:0];
        quickActionMenuPresenter = self->_mapView;
      }

      [quickActionMenuPresenter removeInteraction:self->_dragInteraction];
      mapViewDragSource = self->_mapViewDragSource;
      self->_mapViewDragSource = 0;

      superview = [(MKMapView *)self->_mapView superview];
      [superview removeInteraction:self->_dropInteraction];
      goto LABEL_15;
    }

    [(ControlContainerViewController *)self->_containerViewController refreshControls];
    [(BaseModeController *)self _setupMapView];
    v7 = self->_quickActionMenuPresenter;
    if (!v7)
    {
      v8 = [[MapQuickActionMenuPresenter alloc] initWithMapView:self->_mapView];
      v9 = self->_quickActionMenuPresenter;
      self->_quickActionMenuPresenter = v8;

      [(QuickActionMenuPresenter *)self->_quickActionMenuPresenter setDelegate:self];
      containerViewController = [(BaseModeController *)self containerViewController];
      [(QuickActionMenuPresenter *)self->_quickActionMenuPresenter setContainerViewController:containerViewController];

      v7 = self->_quickActionMenuPresenter;
    }

    [(QuickActionMenuPresenter *)v7 setEnabled:1];
    v11 = +[MapsDragAndDropManager sharedManager];
    deviceSupportsDragAndDrop = [v11 deviceSupportsDragAndDrop];

    viewCopy = v25;
    if (deviceSupportsDragAndDrop)
    {
      if (!self->_mapViewDragSource)
      {
        v13 = objc_alloc_init(MapViewDragSource);
        v14 = self->_mapViewDragSource;
        self->_mapViewDragSource = v13;

        [(MapViewDragSource *)self->_mapViewDragSource setMapView:self->_mapView];
        v15 = [[UIDragInteraction alloc] initWithDelegate:self->_mapViewDragSource];
        dragInteraction = self->_dragInteraction;
        self->_dragInteraction = v15;

        if (sub_10000FA08(v25) == 5)
        {
          [(UIDragInteraction *)self->_dragInteraction _setLiftDelay:0.150000006];
        }
      }

      [(MKMapView *)self->_mapView addInteraction:self->_dragInteraction];
      if (!self->_mapsDragDestinationHandler)
      {
        v17 = objc_alloc_init(MapsDragDestinationHandler);
        mapsDragDestinationHandler = self->_mapsDragDestinationHandler;
        self->_mapsDragDestinationHandler = v17;

        v19 = [[UIDropInteraction alloc] initWithDelegate:self->_mapsDragDestinationHandler];
        dropInteraction = self->_dropInteraction;
        self->_dropInteraction = v19;

        actionCoordinator = [(BaseModeController *)self actionCoordinator];
        [(MapsDragDestinationHandler *)self->_mapsDragDestinationHandler setDelegate:actionCoordinator];
      }

      superview = [(MKMapView *)self->_mapView superview];
      [superview addInteraction:self->_dropInteraction];
LABEL_15:

      viewCopy = v25;
    }
  }
}

- (void)_loadExpensiveItemSources
{
  if (!self->_includeExpensiveItemSources)
  {
    self->_includeExpensiveItemSources = 1;
    actionCoordinator = [(BaseModeController *)self actionCoordinator];
    suggestionsItemSource = [actionCoordinator suggestionsItemSource];

    if (suggestionsItemSource)
    {
      v5 = objc_alloc_init(CalendarItemSource);
      calendarItemSource = self->_calendarItemSource;
      self->_calendarItemSource = v5;

      [(CalendarItemSource *)self->_calendarItemSource excludeItemsFromSource:suggestionsItemSource];
      [(CalendarItemSource *)self->_calendarItemSource loadCalendarItems];
      chromeViewController = [(BaseModeController *)self chromeViewController];
      [chromeViewController setNeedsUpdateComponent:@"personalizedItemSources" animated:1];
    }
  }
}

- (void)updateViewMode:(int64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  actionCoordinator = [(BaseModeController *)self actionCoordinator];
  [actionCoordinator updateViewMode:mode animated:animatedCopy];
}

- (void)setChromeViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_chromeViewController, obj);
    chromeViewController = [(BaseModeController *)self chromeViewController];
    [(ControlContainerViewController *)self->_containerViewController setChromeViewController:chromeViewController];

    v5 = obj;
  }
}

- (BaseModeController)initWithPlatformController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = BaseModeController;
  v6 = [(BaseModeController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_platformController, controller);
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v7 selector:"radarAuthorizationChanged" name:@"TapToRadarAuthorizationChangedNotification" object:0];
  }

  return v7;
}

@end