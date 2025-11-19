@interface BaseModeController
- (ActionCoordination)actionCoordinator;
- (BOOL)canDropPin;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)hasDroppedPin;
- (BOOL)isShowingSharedTrip:(id)a3;
- (BOOL)mapQuickActionMenuPresenter:(id)a3 shouldBeginOrbGestureForLabelMarkerOnMap:(id)a4;
- (BOOL)permitsLookAroundShowing;
- (BOOL)permitsWeatherShowing;
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldQuickActionMenuPresenter:(id)a3 presentAtLocation:(CGPoint)a4 inView:(id)a5;
- (BOOL)shouldQuickActionMenuPresenter:(id)a3 showDirectionsToPlace:(id)a4;
- (BOOL)shouldResizingCardDimFloatingControls;
- (BOOL)shouldShowAddStopForDirectionsInQuickActionMenuPresenter:(id)a3;
- (BOOL)wantsLookAroundShowing;
- (BOOL)wantsStatusBarControl;
- (BOOL)wantsWeatherShowing;
- (BaseModeController)initWithPlatformController:(id)a3;
- (IOSBasedChromeViewController)chromeViewController;
- (PlaceCardItem)placeCardItemForLookAroundButton;
- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration;
- (id)containerViewController;
- (id)homeActionDelegate;
- (id)mapServiceTraitsForQuickActionPresenter:(id)a3;
- (id)personalizedItemSources;
- (id)routeAnnotationsProvider;
- (id)searchDataSourceDelegate;
- (id)searchDataSourceLogContextDelegate;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (int)floorOrdinalAtCoordinate:(CLLocationCoordinate2D)a3;
- (int64_t)desiredFloatingControls;
- (int64_t)preferredStatusBarStyle;
- (void)_addRecentPlaceForSearchResult:(id)a3;
- (void)_becomeTopContextInChromeViewController:(id)a3;
- (void)_cleanupSharedTripIfNeeded;
- (void)_clearCustomSearchResult;
- (void)_handleFeedbackPreWarmGesture:(id)a3;
- (void)_handleLongPress:(id)a3;
- (void)_loadExpensiveItemSources;
- (void)_resignTopContextInChromeViewController:(id)a3;
- (void)_setupMapView;
- (void)_setupUserLocationAnnotation;
- (void)_showCustomSearchResult:(id)a3 shouldSelectOnMap:(BOOL)a4;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)cancelQuickActionMenuPresentation:(id)a3;
- (void)createCustomSearchResultForDroppedPinAtCenterPoint;
- (void)createCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)a3 floorOrdinal:(int)a4 animated:(BOOL)a5;
- (void)customSearchManager:(id)a3 didModifyCustomSearchResult:(id)a4 coordinateChanged:(BOOL)a5;
- (void)enterPedestrianAR;
- (void)getCurrentSceneTitleWithCompletion:(id)a3;
- (void)mapCameraControllerWillChangeVisibleRect:(id)a3;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapView:(id)a3 regionWillChangeAnimated:(BOOL)a4;
- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5;
- (void)quickActionMenuPresenter:(id)a3 selectedCall:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedDirectionsTo:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedRemoveDroppedPinOf:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedShareLocationOf:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedShowPlaceCard:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedViewTransitLinesOnMap:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedViewWebsiteFor:(id)a4;
- (void)quickActionMenuWillPresent:(id)a3;
- (void)radarAuthorizationChanged;
- (void)removeDroppedPin;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)setChromeViewController:(id)a3;
- (void)setCustomSearchResult:(id)a3 animated:(BOOL)a4;
- (void)setMapView:(id)a3;
- (void)showSharedTrip:(id)a3;
- (void)updateViewMode:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation BaseModeController

- (id)containerViewController
{
  containerViewController = self->_containerViewController;
  if (!containerViewController)
  {
    v4 = +[UIDevice currentDevice];
    v5 = [v4 userInterfaceIdiom];

    v6 = off_1015F62B0;
    if (v5 != 5)
    {
      v6 = off_1015F61C0;
    }

    v7 = [objc_alloc(*v6) initWithPlatformController:self->_platformController];
    v8 = self->_containerViewController;
    self->_containerViewController = v7;

    [(ContainerViewController *)self->_containerViewController setAllowOnlyStandardStyle:0];
    [(ControlContainerViewController *)self->_containerViewController setChromeContext:self];
    v9 = [(ControlContainerViewController *)self->_containerViewController coordinator];
    if (([v9 conformsToProtocol:&OBJC_PROTOCOL___ChromeMapSelectionDelegate] & 1) == 0)
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
  v2 = [(BaseModeController *)self containerViewController];
  v3 = [v2 coordinator];

  return v3;
}

- (IOSBasedChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (int64_t)desiredFloatingControls
{
  v2 = [(BaseModeController *)self containerViewController];
  v3 = [v2 floatingControlsOptions];

  if (v3)
  {
    if (+[MapsRadarButtonHelper shouldShowButton])
    {
      v3 |= 0x200uLL;
    }

    v4 = +[GEOPlatform sharedPlatform];
    if ([v4 isInternalInstall] && MapsFeature_IsAvailable_SSAO())
    {
      BOOL = GEOConfigGetBOOL();

      if (BOOL)
      {
        return v3 | 0x400;
      }
    }

    else
    {
    }
  }

  return v3;
}

- (BOOL)wantsStatusBarControl
{
  v3 = [(ContainerViewController *)self->_containerViewController currentViewController];
  if (v3)
  {
    v4 = [(ContainerViewController *)self->_containerViewController currentViewController];
    if (objc_opt_respondsToSelector())
    {
      v5 = 1;
    }

    else
    {
      v6 = [(ContainerViewController *)self->_containerViewController currentViewController];
      if (objc_opt_respondsToSelector())
      {
        v5 = 1;
      }

      else
      {
        v7 = [(ContainerViewController *)self->_containerViewController currentViewController];
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
  v2 = [(ContainerViewController *)self->_containerViewController currentViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 prefersStatusBarHidden];
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    if ([v4 userInterfaceIdiom] == 1)
    {
      v3 = 0;
    }

    else
    {
      v5 = +[UIDevice currentDevice];
      if ([v5 userInterfaceIdiom] == 5)
      {
        v3 = 0;
      }

      else
      {
        v6 = [v2 traitCollection];
        v3 = [v6 verticalSizeClass] == 1;
      }
    }
  }

  return v3;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = [(ContainerViewController *)self->_containerViewController currentViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 preferredStatusBarStyle];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)permitsLookAroundShowing
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  v4 = [v3 isUsingOfflineMaps];

  if (v4)
  {
    return 0;
  }

  v6 = [(BaseModeController *)self chromeViewController];
  if (v6)
  {
    if (_UISolariumEnabled())
    {
      v5 = 1;
    }

    else
    {
      v7 = [(BaseModeController *)self chromeViewController];
      v5 = sub_10000FA08(v7) != 5;
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

  v3 = [(BaseModeController *)self actionCoordinator];
  v4 = [v3 isRoutePlanningPresented];

  if ((v4 & 1) != 0 || ([(ControlContainerViewController *)self->_containerViewController floatingControlsOptions]& 0x80) == 0)
  {
    return 0;
  }

  if ([(MKMapView *)self->_mapView _lookAroundAvailability]== 2)
  {
    return 1;
  }

  v7 = [(BaseModeController *)self placeCardItemForLookAroundButton];
  v8 = [v7 mapItem];
  v5 = v8 != 0;

  return v5;
}

- (PlaceCardItem)placeCardItemForLookAroundButton
{
  v3 = [(BaseModeController *)self actionCoordinator];
  v4 = [v3 isRoutePlanningPresented];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(BaseModeController *)self actionCoordinator];
    v7 = [v6 currentPlaceCardItem];

    v8 = [v7 mapItem];
    v9 = v8;
    if (v8 && (([v8 _hasLookAroundStorefront] & 1) != 0 || +[LookAroundButtonContainerViewController isIncompleteMapItem:](LookAroundButtonContainerViewController, "isIncompleteMapItem:", v9)))
    {
      v5 = v7;
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
  v2 = [(BaseModeController *)self chromeViewController];
  v3 = [v2 userLocationView];

  [v3 setMode:0 animated:1];
}

- (void)_setupMapView
{
  v3 = [(BaseModeController *)self chromeViewController];
  v4 = [v3 shouldUseModernMap];

  if ((v4 & 1) == 0)
  {
    mapView = self->_mapView;
    v6 = [(BaseModeController *)self chromeViewController];
    v7 = [v6 displayedViewMode];
    v21 = 0u;
    v23 = 0u;
    v24 = 0;
    _MKCartographicConfigurationDefault();
    v22 = vdupq_n_s64(1uLL);
    *&v23 = 0;
    if (v7 > 4)
    {
      if (v7 == 5)
      {
        v8 = vdupq_n_s64(1uLL);
      }

      else
      {
        if (v7 != 6)
        {
          if (v7 == 7)
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
      switch(v7)
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

  v10 = [(MKMapView *)self->_mapView _mapLayer];
  [v10 setCanonicalSkyHeight:0.0520833321];

  [(MKMapView *)self->_mapView _setCanSelectPOIs:1];
  [(MKMapView *)self->_mapView _setShowsTrafficIncidents:1];
  [(MKMapView *)self->_mapView setShowsUserLocation:1];
  v11 = [(MKMapView *)self->_mapView _longPressGestureRecognizer];
  [v11 setEnabled:0];

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
  v20 = [(MKMapView *)self->_mapView _longPressGestureRecognizer];
  [v20 addTarget:self action:"cancelQuickActionMenuPresentation:"];

  [(MKMapView *)self->_mapView _setAlwaysShowHeadingIndicatorIfSupported:1];
  [(MKMapView *)self->_mapView _setUseBalloonCalloutsForLabels:1];
}

- (id)routeAnnotationsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  if (sub_10000FA08(WeakRetained) == 5)
  {
    v4 = objc_loadWeakRetained(&self->_chromeViewController);
    v5 = [v4 sharedTripsAnnotationsController];
    v6 = [v5 sharedTrip];

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_chromeViewController);
      v8 = [v7 sharedTripsAnnotationsController];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = [(BaseModeController *)self actionCoordinator];
  v8 = [v7 routeAnnotationsProvider];
LABEL_6:
  v9 = v8;

  return v9;
}

- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration
{
  v2 = objc_alloc_init(RouteAnnotationsConfiguration);

  return v2;
}

- (id)personalizedItemSources
{
  v3 = [(BaseModeController *)self chromeViewController];
  v4 = [v3 searchPinsManager];

  if (v4)
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
    v23 = [v4 searchResultsItemSource];
    v22 = [v4 singleSearchResultItemSource];
    v9 = [v4 droppedPinsItemSource];
    v10 = [v4 collectionPinsItemSource];
    v11 = [v4 routeStartEndItemSource];
    v12 = [v4 placeCardLinkedPlacesItemSource];
    v13 = [v4 searchDotPlacesItemSource];
    v14 = self->_collectionPlaceItemSource;
    v15 = [v4 parkedCarItemSource];
    v16 = [v24 initWithObjects:{v23, v22, v9, v10, v11, v12, v13, v14, v15, 0}];

    if (self->_favoritePlaceItemSource)
    {
      [v16 addObject:?];
    }

    v17 = objc_alloc_init(TrafficIncidentItemSource);
    [v16 addObject:v17];

    if (self->_includeExpensiveItemSources)
    {
      v18 = [(BaseModeController *)self actionCoordinator];
      v19 = [v18 suggestionsItemSource];

      if (v19)
      {
        [v16 addObject:v19];
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
  v3 = [v2 isUsingOfflineMaps];

  return v3 ^ 1;
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
  v2 = [(BaseModeController *)self mapViewDelegate];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate])
  {
    v3 = v2;
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 currentMapViewTargetForAnalytics];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)currentUITargetForAnalytics
{
  v2 = [(BaseModeController *)self mapViewDelegate];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate])
  {
    v3 = v2;
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 currentUITargetForAnalytics];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldQuickActionMenuPresenter:(id)a3 showDirectionsToPlace:(id)a4
{
  v5 = a4;
  v6 = [(BaseModeController *)self chromeViewController];
  v7 = [v6 venuesManager];
  v8 = [v5 mapItem];

  LOBYTE(v5) = [v7 isUserAtSameVenueAsMapItem:v8];
  return v5 ^ 1;
}

- (void)quickActionMenuWillPresent:(id)a3
{
  if ([(UILongPressGestureRecognizer *)self->_longPress isEnabled])
  {
    [(UILongPressGestureRecognizer *)self->_longPress setEnabled:0];
    [(UILongPressGestureRecognizer *)self->_longPress setEnabled:1];
  }

  v4 = [(MKMapView *)self->_mapView _longPressGestureRecognizer];
  v5 = [v4 isEnabled];

  if (v5)
  {
    v6 = [(MKMapView *)self->_mapView _longPressGestureRecognizer];
    [v6 setEnabled:0];

    v7 = [(MKMapView *)self->_mapView _longPressGestureRecognizer];
    [v7 setEnabled:1];
  }
}

- (void)quickActionMenuPresenter:(id)a3 selectedViewTransitLinesOnMap:(id)a4
{
  v5 = a4;
  v7 = [(BaseModeController *)self actionCoordinator];
  v6 = [v7 mapSelectionManager];
  [v6 selectLabelMarker:v5 animated:1];
}

- (void)quickActionMenuPresenter:(id)a3 selectedRemoveDroppedPinOf:(id)a4
{
  v5 = [a3 searchResult];
  if (v5)
  {
    v7 = v5;
    v6 = [(BaseModeController *)self actionCoordinator];
    [v6 viewController:0 removeDroppedPin:v7];

    v5 = v7;
  }
}

- (id)mapServiceTraitsForQuickActionPresenter:(id)a3
{
  v3 = [(BaseModeController *)self actionCoordinator];
  v4 = [v3 newTraits];

  return v4;
}

- (BOOL)shouldQuickActionMenuPresenter:(id)a3 presentAtLocation:(CGPoint)a4 inView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [(BaseModeController *)self actionCoordinator];
  v10 = [v9 currentViewController];

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v10 allowsQuickActionMenuInMap])
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    [(MKMapView *)self->_mapView convertPoint:v8 fromView:x, y];
    v11 = [(MKMapView *)self->_mapView _labelMarkerAtPoint:?];
    v12 = [v11 isFlyoverTour] ^ 1;
  }

  return v12;
}

- (void)quickActionMenuPresenter:(id)a3 selectedShowPlaceCard:(id)a4
{
  v12 = [a3 searchResult];
  v5 = [(QuickActionMenuPresenter *)self->_quickActionMenuPresenter labelMarker];

  if (v5)
  {
    v6 = [(BaseModeController *)self actionCoordinator];
    v7 = [v6 mapSelectionManager];
    v8 = [(QuickActionMenuPresenter *)self->_quickActionMenuPresenter labelMarker];
    [v7 selectLabelMarker:v8 animated:1];

    [(BaseModeController *)self _addRecentPlaceForSearchResult:v12];
  }

  else
  {
    v9 = [(MapQuickActionMenuPresenter *)self->_quickActionMenuPresenter annotation];

    if (v9)
    {
      mapView = self->_mapView;
      v11 = [(MapQuickActionMenuPresenter *)self->_quickActionMenuPresenter annotation];
      [(MKMapView *)mapView selectAnnotation:v11 animated:1];
    }
  }
}

- (void)quickActionMenuPresenter:(id)a3 selectedShareLocationOf:(id)a4
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007EC4E8;
  v13[3] = &unk_10162AC48;
  v13[4] = self;
  v4 = a3;
  v5 = objc_retainBlock(v13);
  v6 = [v4 searchResult];

  v7 = +[MKLocationManager sharedLocationManager];
  v8 = [v7 isAuthorizedForPreciseLocation];

  if (v8)
  {
    (v5[2])(v5, v6);
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

- (void)quickActionMenuPresenter:(id)a3 selectedViewWebsiteFor:(id)a4
{
  v5 = [a3 searchResult];
  if (v5)
  {
    v7 = v5;
    v6 = [(BaseModeController *)self actionCoordinator];
    [v6 viewController:0 openWebsiteForSearchResult:v7];

    [(BaseModeController *)self _addRecentPlaceForSearchResult:v7];
    v5 = v7;
  }
}

- (void)quickActionMenuPresenter:(id)a3 selectedCall:(id)a4
{
  v5 = [a3 searchResult];
  if (v5)
  {
    v7 = v5;
    v6 = [(BaseModeController *)self actionCoordinator];
    [v6 viewController:0 doAudioCallToSearchResult:v7];

    [(BaseModeController *)self _addRecentPlaceForSearchResult:v7];
    v5 = v7;
  }
}

- (void)quickActionMenuPresenter:(id)a3 selectedDirectionsTo:(id)a4
{
  v5 = a3;
  v6 = [v5 searchResult];
  if (v6)
  {
    v7 = [v5 isAdditionalStop];
    v8 = objc_alloc_init(SearchFieldItem);
    v9 = v8;
    if (v7)
    {
      [(SearchFieldItem *)v8 setSearchResult:v6];
      v20 = v9;
      v10 = [NSArray arrayWithObjects:&v20 count:1];
    }

    else
    {
      v11 = +[SearchResult currentLocationSearchResult];
      [(SearchFieldItem *)v9 setSearchResult:v11];

      v12 = objc_alloc_init(SearchFieldItem);
      [(SearchFieldItem *)v12 setSearchResult:v6];
      v19[0] = v9;
      v19[1] = v12;
      v10 = [NSArray arrayWithObjects:v19 count:2];
    }

    v13 = [[DirectionItem alloc] initWithItems:v10 transportType:0];
    v14 = [NSNumber numberWithBool:v7, @"DirectionsSessionInitiatorKey", @"DirectionsAppendContentsOfItem", &off_1016E6FE0];
    v18[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:&v17 count:2];

    v16 = [(BaseModeController *)self actionCoordinator];
    [v16 viewController:0 doDirectionItem:v13 withUserInfo:v15];

    [(BaseModeController *)self _addRecentPlaceForSearchResult:v6];
  }
}

- (void)_addRecentPlaceForSearchResult:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    v5 = [v3 isHomeOrWork];
    v4 = v8;
    if ((v5 & 1) == 0)
    {
      v6 = [v8 mapItem];
      v7 = [v8 searchToSupersedeIfRecordedInHistory];
      [HistoryEntryRecentsItem saveMapItem:v6 superseedUUID:v7];

      v4 = v8;
    }
  }
}

- (BOOL)shouldShowAddStopForDirectionsInQuickActionMenuPresenter:(id)a3
{
  v3 = [(BaseModeController *)self actionCoordinator];
  v4 = [v3 shouldAddStopInRoutePlanning];

  return v4;
}

- (id)searchDataSourceLogContextDelegate
{
  v2 = [(ControlContainerViewController *)self->_containerViewController coordinator];
  v3 = [v2 searchDataSourceLogContextDelegate];

  return v3;
}

- (id)searchDataSourceDelegate
{
  v2 = [(ControlContainerViewController *)self->_containerViewController coordinator];
  v3 = [v2 searchDataSourceDelegate];

  return v3;
}

- (id)homeActionDelegate
{
  v2 = [(ControlContainerViewController *)self->_containerViewController coordinator];
  v3 = [v2 homeActionDelegate];

  return v3;
}

- (BOOL)mapQuickActionMenuPresenter:(id)a3 shouldBeginOrbGestureForLabelMarkerOnMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
LABEL_9:
    LOBYTE(v10) = 0;
    goto LABEL_10;
  }

  if (![v7 isTransitLine])
  {
    if (([v8 isFlyoverTour] & 1) == 0 && (objc_msgSend(v8, "isTrafficIncident") & 1) == 0 && (objc_msgSend(v8, "isOneWayArrow") & 1) == 0 && (objc_msgSend(v8, "isRouteAnnotation") & 1) == 0 && (objc_msgSend(v8, "isCluster") & 1) == 0)
    {
      v12 = [v8 featureType];
      if (v12 - 5 < 2 || v12 == 3 && ([v8 businessID] || !objc_msgSend(v8, "featureID")))
      {
        LOBYTE(v10) = 1;
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  v9 = [(BaseModeController *)self actionCoordinator];
  v10 = [v9 isRoutePlanningPresented] ^ 1;

LABEL_10:
  return v10;
}

- (void)getCurrentSceneTitleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BaseModeController *)self actionCoordinator];
  [v5 getCurrentSceneTitleWithCompletion:v4];
}

- (void)_resignTopContextInChromeViewController:(id)a3
{
  v14 = a3;
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

  v10 = [(BaseModeController *)self chromeViewController];
  v11 = [v10 customSearchManager];
  [v11 removeObserver:self];

  v12 = [(BaseModeController *)self chromeViewController];
  v13 = [v12 mapCameraController];
  [v13 addObserver:self];
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007ECFB0;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  [v7 addPreparation:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_becomeTopContextInChromeViewController:(id)a3
{
  v23 = a3;
  [(BaseModeController *)self _setupUserLocationAnnotation];
  [UIFont setPlacecardShouldUseSmallFont:_MKPlaceCardUseSmallerFont()];
  v4 = [v23 previousTopContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = MKCoordinateRegionInvalid[1];
    self->_previousRegion.center = MKCoordinateRegionInvalid[0];
    self->_previousRegion.span = v6;
  }

  v7 = [(BaseModeController *)self chromeViewController];
  v8 = [v7 mapView];
  [(BaseModeController *)self setMapView:v8];

  if ([v23 hasDuplicatesOfContext:self])
  {
    goto LABEL_4;
  }

  v15 = [v23 previousTopContext];
  if (sub_100010C34(v15, &OBJC_PROTOCOL___IOSBasedChromeContext))
  {
    v16 = [v23 previousTopContext];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [v23 previousTopContext];
      v19 = [v18 shouldResetStateAfterResigning];

      if (!v19)
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
  v10 = [(BaseModeController *)self chromeViewController];
  v11 = [v10 customSearchManager];
  [v11 addObserver:self];

  v12 = [(BaseModeController *)self chromeViewController];
  v13 = [v12 mapCameraController];
  [v13 addObserver:self];

  v14 = [(BaseModeController *)self chromeViewController];
  [v14 updateMapViewDisplayOptions];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007ED398;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  [v7 addPreparation:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)enterPedestrianAR
{
  v2 = [(BaseModeController *)self actionCoordinator];
  [v2 enterPedestrianAR];
}

- (BOOL)shouldResizingCardDimFloatingControls
{
  v2 = [(BaseModeController *)self containerViewController];
  v3 = [v2 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = v6;
  longPress = self->_longPress;
  feedbackPreWarmGestureRecognizer = self->_feedbackPreWarmGestureRecognizer;
  v11 = feedbackPreWarmGestureRecognizer == a3 || feedbackPreWarmGestureRecognizer == v6;
  v13 = longPress == a3 || longPress == v6;
  v14 = a3;
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  [a4 locationInView:self->_mapView];
  v6 = v5;
  v8 = v7;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [(MKMapView *)self->_mapView subviews];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v9);
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

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
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

- (void)_handleFeedbackPreWarmGesture:(id)a3
{
  if ([a3 state] == 1)
  {
    feedbackBehavior = self->_feedbackBehavior;

    [(UIImpactFeedbackGenerator *)feedbackBehavior prepare];
  }
}

- (void)_handleLongPress:(id)a3
{
  v7 = a3;
  if ([(BaseModeController *)self canDropPin])
  {
    if ([v7 state] == 1)
    {
      [v7 locationInView:self->_mapView];
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

- (int)floorOrdinalAtCoordinate:(CLLocationCoordinate2D)a3
{
  VKLocationCoordinate2DMake();
  v5 = v4;
  v7 = v6;
  v8 = [(MKMapView *)self->_mapView _mapLayer];
  v9 = [v8 venueAtLocation:{v5, v7}];

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

- (void)cancelQuickActionMenuPresentation:(id)a3
{
  if ([a3 state] == 1)
  {
    quickActionMenuPresenter = self->_quickActionMenuPresenter;

    [(QuickActionMenuPresenter *)quickActionMenuPresenter cancelPresentationGesture];
  }
}

- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5
{
  [(MapQuickActionMenuPresenter *)self->_quickActionMenuPresenter invalidateIfNeeded:a3];
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v7 = [WeakRetained sharedTripsAnnotationsController];
  v8 = [v7 automaticallyRecenters];

  if ((v8 & 1) == 0)
  {
    v10 = objc_loadWeakRetained(&self->_chromeViewController);
    v9 = [v10 sharedTripsAnnotationsController];
    [v9 setAutomaticallyRecenter:0];
  }
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  favoritePlaceItemSource = self->_favoritePlaceItemSource;
  v6 = a3;
  [(PersonalizedFavoriteItemSource *)favoritePlaceItemSource mapViewRegionDidChange:v6];
  [(PersonalizedCollectionPlaceItemSource *)self->_collectionPlaceItemSource mapViewRegionDidChange:v6];
}

- (void)mapView:(id)a3 regionWillChangeAnimated:(BOOL)a4
{
  favoritePlaceItemSource = self->_favoritePlaceItemSource;
  v6 = a3;
  [(PersonalizedFavoriteItemSource *)favoritePlaceItemSource mapViewRegionWillChange:v6];
  [(PersonalizedCollectionPlaceItemSource *)self->_collectionPlaceItemSource mapViewRegionWillChange:v6];
}

- (void)mapCameraControllerWillChangeVisibleRect:(id)a3
{
  v3 = [(BaseModeController *)self actionCoordinator];
  [v3 setUserTrackingViewUserTrackingMode:0];
}

- (void)customSearchManager:(id)a3 didModifyCustomSearchResult:(id)a4 coordinateChanged:(BOOL)a5
{
  if (a5)
  {
    [(BaseModeController *)self _showCustomSearchResult:a4 shouldSelectOnMap:0];
  }
}

- (void)_cleanupSharedTripIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v4 = [WeakRetained sharedTripsAnnotationsController];
  [v4 setActive:0];

  v6 = objc_loadWeakRetained(&self->_chromeViewController);
  v5 = [v6 sharedTripsAnnotationsController];
  [v5 setSharedTrip:0];
}

- (BOOL)isShowingSharedTrip:(id)a3
{
  v4 = [a3 groupIdentifier];
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v6 = [WeakRetained sharedTripsAnnotationsController];
  v7 = [v6 sharedTrip];
  v8 = [v7 groupIdentifier];

  v9 = 0;
  if (v4 && v8)
  {
    v9 = [v4 isEqualToString:v8];
  }

  return v9;
}

- (void)showSharedTrip:(id)a3
{
  v8 = a3;
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
    v5 = [WeakRetained sharedTripsAnnotationsController];
    [v5 setSharedTrip:v8];

    v6 = objc_loadWeakRetained(&self->_chromeViewController);
    v7 = [v6 sharedTripsAnnotationsController];
    [v7 setActive:1];
  }

  else
  {
    [(BaseModeController *)self _cleanupSharedTripIfNeeded];
  }
}

- (BOOL)canDropPin
{
  v2 = [(BaseModeController *)self actionCoordinator];
  v3 = [v2 currentViewController];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 allowsLongPressToMarkLocation];
  }

  else
  {
    v4 = 1;
  }

  return v4;
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

- (void)createCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)a3 floorOrdinal:(int)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  longitude = a3.longitude;
  latitude = a3.latitude;
  [(BaseModeController *)self _clearCustomSearchResult];
  v10 = [SearchResult customSearchResultWithCoordinate:v6 floorOrdinal:latitude, longitude];
  [v10 setHasIncompleteMetadata:1];
  [(BaseModeController *)self setCustomSearchResult:v10 animated:v5];
}

- (void)_clearCustomSearchResult
{
  v3 = [(BaseModeController *)self chromeViewController];
  v4 = [v3 customSearchManager];
  v5 = [v4 customSearchResult];

  if (v5)
  {
    [(BaseModeController *)self setCustomSearchResult:0 animated:0];
  }
}

- (void)removeDroppedPin
{
  v3 = [(BaseModeController *)self chromeViewController];
  v4 = [v3 searchPinsManager];
  v6 = [v4 droppedPin];

  if (v6)
  {
    v5 = [(BaseModeController *)self actionCoordinator];
    [v5 viewController:0 removeDroppedPin:v6];
  }
}

- (BOOL)hasDroppedPin
{
  v2 = [(BaseModeController *)self chromeViewController];
  v3 = [v2 searchPinsManager];
  v4 = [v3 droppedPin];
  v5 = v4 != 0;

  return v5;
}

- (void)_showCustomSearchResult:(id)a3 shouldSelectOnMap:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(BaseModeController *)self chromeViewController];
  v7 = [v6 searchPinsManager];
  v8 = v7;
  if (v10)
  {
    [v7 setDroppedPin:v10 animated:1 shouldSelect:v4];

    v6 = +[CustomLocationManager sharedManager];
    v8 = [(BaseModeController *)self actionCoordinator];
    v9 = [v8 newTraits];
    [v6 processSearchResult:v10 traits:v9];
  }

  else
  {
    [v7 clearDroppedPin];
  }
}

- (void)setCustomSearchResult:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = [(BaseModeController *)self chromeViewController];
  v7 = [v8 customSearchManager];
  [v7 setCustomSearchResult:v6 animated:v4 shouldSelectOnMap:self->_mapView];
}

- (void)setMapView:(id)a3
{
  v5 = a3;
  mapView = self->_mapView;
  if (mapView != v5)
  {
    v25 = v5;
    [(MKMapView *)mapView removeGestureRecognizer:self->_longPress];
    [(MKMapView *)self->_mapView removeGestureRecognizer:self->_feedbackPreWarmGestureRecognizer];
    objc_storeStrong(&self->_mapView, a3);
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

      v22 = [(MKMapView *)self->_mapView superview];
      [v22 removeInteraction:self->_dropInteraction];
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
      v10 = [(BaseModeController *)self containerViewController];
      [(QuickActionMenuPresenter *)self->_quickActionMenuPresenter setContainerViewController:v10];

      v7 = self->_quickActionMenuPresenter;
    }

    [(QuickActionMenuPresenter *)v7 setEnabled:1];
    v11 = +[MapsDragAndDropManager sharedManager];
    v12 = [v11 deviceSupportsDragAndDrop];

    v5 = v25;
    if (v12)
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

        v21 = [(BaseModeController *)self actionCoordinator];
        [(MapsDragDestinationHandler *)self->_mapsDragDestinationHandler setDelegate:v21];
      }

      v22 = [(MKMapView *)self->_mapView superview];
      [v22 addInteraction:self->_dropInteraction];
LABEL_15:

      v5 = v25;
    }
  }
}

- (void)_loadExpensiveItemSources
{
  if (!self->_includeExpensiveItemSources)
  {
    self->_includeExpensiveItemSources = 1;
    v4 = [(BaseModeController *)self actionCoordinator];
    v8 = [v4 suggestionsItemSource];

    if (v8)
    {
      v5 = objc_alloc_init(CalendarItemSource);
      calendarItemSource = self->_calendarItemSource;
      self->_calendarItemSource = v5;

      [(CalendarItemSource *)self->_calendarItemSource excludeItemsFromSource:v8];
      [(CalendarItemSource *)self->_calendarItemSource loadCalendarItems];
      v7 = [(BaseModeController *)self chromeViewController];
      [v7 setNeedsUpdateComponent:@"personalizedItemSources" animated:1];
    }
  }
}

- (void)updateViewMode:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(BaseModeController *)self actionCoordinator];
  [v6 updateViewMode:a3 animated:v4];
}

- (void)setChromeViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_chromeViewController, obj);
    v6 = [(BaseModeController *)self chromeViewController];
    [(ControlContainerViewController *)self->_containerViewController setChromeViewController:v6];

    v5 = obj;
  }
}

- (BaseModeController)initWithPlatformController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BaseModeController;
  v6 = [(BaseModeController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_platformController, a3);
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v7 selector:"radarAuthorizationChanged" name:@"TapToRadarAuthorizationChangedNotification" object:0];
  }

  return v7;
}

@end