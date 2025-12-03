@interface LookAroundContainerViewController
- (BOOL)_getRatioControls:(double *)controls scale:(double *)scale forContentHeightValue:(double)value;
- (BOOL)_pipHugsLeading;
- (BOOL)_shouldTakePIPViewHeightIntoAccount;
- (BOOL)_shouldTakeSidebarIntoAccount;
- (CGAffineTransform)transformForPIPView:(SEL)view;
- (CGRect)_sanitizedOriginFrame;
- (CGRect)frameForPIPView;
- (CGRect)lookAroundButtonFrame;
- (CGRect)originFrame;
- (LookAroundContainerViewController)initWithEntryPoint:(id)point lookAroundView:(id)view showsFullScreen:(BOOL)screen;
- (LookAroundContainerViewControllerAnimationDelegate)animationDelegate;
- (MKMapItem)currentMapItem;
- (NSString)sharingTitle;
- (ShareItemSource)currentShareItemSource;
- (UIEdgeInsets)compassInsets;
- (UIView)passThroughView;
- (double)pipViewWidthIfNeeded;
- (double)sidebarWidthIfNeeded;
- (double)topEdgeInset;
- (id)_createOrReuseLookAroundView:(id)view completion:(id)completion;
- (id)_createPlaceCardItemFromMapItem:(id)item isMarkedLocation:(BOOL)location;
- (id)createActivityViewControllerForCurrentContext;
- (id)pipViewController;
- (id)puckViewController;
- (int)_targetForAnalytics;
- (int64_t)preferredUserInterfaceStyle;
- (unint64_t)_pipLayout;
- (unint64_t)originalLayoutForViewController:(id)controller;
- (void)_captureActivityCardAnalyticsForUserAction:(int)action onTarget:(int)target;
- (void)_captureUserAction:(int)action onTarget:(int)target eventValue:(id)value;
- (void)_commonInit;
- (void)_insertPuckViewIntoMapView:(id)view;
- (void)_removePuckViewFromMapView;
- (void)_reportAnIssue;
- (void)_setModeDidBecomeCurrent;
- (void)_setModeDidResignCurrent;
- (void)_setupForFullScreen;
- (void)_setupForPIP;
- (void)_shareCurrentLocation:(id)location;
- (void)_showPuckAnimated;
- (void)_showTTRButton:(BOOL)button;
- (void)_toggleShowingLabels:(BOOL)labels;
- (void)_updateCompassLayout;
- (void)_updateLayoutWithCurrentValue;
- (void)_updateLayoutWithValue:(double)value;
- (void)_updatePIPLayout;
- (void)_updateTTRButtonState;
- (void)animateFromModeTransition:(id)transition;
- (void)animateToModeTransition:(id)transition;
- (void)animateTransitionToFullScreen:(BOOL)screen;
- (void)contentHeightUpdatedWithValue:(double)value;
- (void)dealloc;
- (void)dismissTray;
- (void)lookAroundPIPDataCoordinatorDidEndMovingLookAroundView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidStartPanningMapView:(id)view;
- (void)lookAroundTTRButtonView:(id)view didTapTTRButton:(id)button;
- (void)lookAroundTrayContaineeViewController:(id)controller didTapToggleLabelsButton:(id)button;
- (void)lookAroundView:(id)view didChangeCameraFrame:(id)frame;
- (void)lookAroundView:(id)view didChangeLocationInfo:(id)info;
- (void)lookAroundView:(id)view didDeselectLabelMarker:(id)marker;
- (void)lookAroundView:(id)view didSelectLabelMarker:(id)marker;
- (void)lookAroundView:(id)view didTapAtPoint:(CGPoint)point areaAvailable:(BOOL)available;
- (void)lookAroundView:(id)view didTapLabelMarker:(id)marker;
- (void)lookAroundView:(id)view didZoomWithDirection:(int64_t)direction type:(int64_t)type;
- (void)lookAroundViewDidPan:(id)pan;
- (void)lookAroundViewDidStartUserInteraction:(id)interaction;
- (void)lookAroundViewDidStopUserInteraction:(id)interaction;
- (void)lookAroundViewWillChangeLocationInfo:(id)info;
- (void)mapView:(id)view didChangeLookAroundAvailability:(int64_t)availability;
- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view willSelectLabelMarker:(id)marker;
- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated;
- (void)mapViewDidChangeVisibleRegion:(id)region;
- (void)mapViewDidStartUserInteraction:(id)interaction;
- (void)mapViewDidStopUserInteraction:(id)interaction;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)popLastViewControllerAnimated:(BOOL)animated;
- (void)prepareForExitWithCompletion:(id)completion;
- (void)presentController:(id)controller animated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout;
- (void)presentTray:(id)tray;
- (void)snapToLayout:(unint64_t)layout;
- (void)updateMapEdgeInsets;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation LookAroundContainerViewController

- (CGRect)originFrame
{
  x = self->_originFrame.origin.x;
  y = self->_originFrame.origin.y;
  width = self->_originFrame.size.width;
  height = self->_originFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)lookAroundButtonFrame
{
  x = self->_lookAroundButtonFrame.origin.x;
  y = self->_lookAroundButtonFrame.origin.y;
  width = self->_lookAroundButtonFrame.size.width;
  height = self->_lookAroundButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (LookAroundContainerViewControllerAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

- (id)createActivityViewControllerForCurrentContext
{
  currentShareItemSource = [(LookAroundContainerViewController *)self currentShareItemSource];
  if (currentShareItemSource)
  {
    v4 = [[MUActivityViewController alloc] initWithShareItem:currentShareItemSource];
    [v4 setActivityControllerDelegate:self];
    if ([(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen])
    {
      [v4 setOverrideUserInterfaceStyle:2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ShareItemSource)currentShareItemSource
{
  muninViewState = [(MKLookAroundView *)self->_lookAroundView muninViewState];
  cameraFrame = [muninViewState cameraFrame];
  lookAroundView = [(LookAroundContainerViewController *)self lookAroundView];
  mapItem = [lookAroundView mapItem];
  if (mapItem)
  {
    revGeoMapItem = mapItem;

LABEL_4:
    v9 = [[LookAroundShareItemSource alloc] initWithMapItem:revGeoMapItem shareStateProvider:self];
    goto LABEL_5;
  }

  lookAroundView2 = [(LookAroundContainerViewController *)self lookAroundView];
  revGeoMapItem = [lookAroundView2 revGeoMapItem];

  if (revGeoMapItem)
  {
    goto LABEL_4;
  }

  [cameraFrame latitude];
  v12 = v11;
  [cameraFrame longitude];
  v18 = CLLocationCoordinate2DMake(v12, v13);
  latitude = v18.latitude;
  longitude = v18.longitude;
  if (CLLocationCoordinate2DIsValid(v18))
  {
    v16 = [[MKPlacemark alloc] initWithCoordinate:&__NSDictionary0__struct addressDictionary:{latitude, longitude}];
    revGeoMapItem = [[MKMapItem alloc] initWithPlacemark:v16];

    if (revGeoMapItem)
    {
      goto LABEL_4;
    }
  }

  else
  {
    revGeoMapItem = 0;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (int)_targetForAnalytics
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  isDisplayingLookAroundFullScreen = [(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen];
  if (isKindOfClass)
  {
    v6 = 1706;
  }

  else
  {
    v6 = 1702;
  }

  if (isKindOfClass)
  {
    v7 = 1707;
  }

  else
  {
    v7 = 1700;
  }

  if (isDisplayingLookAroundFullScreen)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

- (void)_captureUserAction:(int)action onTarget:(int)target eventValue:(id)value
{
  v5 = *&target;
  v6 = *&action;
  valueCopy = value;
  dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
  mapView = [dataCoordinator mapView];

  lookAroundView = [(LookAroundContainerViewController *)self lookAroundView];
  [mapView centerCoordinate];
  v13 = [[GEOLocation alloc] initWithLatitude:v11 longitude:v12];
  camera = [mapView camera];
  [camera heading];
  v16 = v15;
  [mapView _zoomLevel];
  v18 = v17;
  visiblePlaceMUIDs = [lookAroundView visiblePlaceMUIDs];
  v20 = [visiblePlaceMUIDs count];
  if ([lookAroundView showsRoadLabels])
  {
    showsPointLabels = 1;
  }

  else
  {
    showsPointLabels = [lookAroundView showsPointLabels];
  }

  LOBYTE(v22) = showsPointLabels;
  [GEOAPPortal captureLookAroundUserAction:v6 onTarget:v5 eventValue:valueCopy location:v13 heading:v16 zoom:v20 numberPoisInView:v18 labelingShown:v22];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_10192FCB8 == context)
  {
    [(LookAroundContainerViewController *)self _updateTTRButtonState:path];
  }
}

- (void)_updateTTRButtonState
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"__internal__HideTapToRadarInMunin"];

  ttrButtonView = self->_ttrButtonView;

  [(LookAroundTTRButtonView *)ttrButtonView setHidden:v4];
}

- (id)_createPlaceCardItemFromMapItem:(id)item isMarkedLocation:(BOOL)location
{
  if (location)
  {
    itemCopy = item;
    itemCopy2 = [[SearchResult alloc] initWithMapItem:itemCopy searchResultType:3 resultIndex:0];

    v6 = [[PlaceCardItem alloc] initWithSearchResult:itemCopy2];
  }

  else
  {
    itemCopy2 = item;
    v6 = [[PlaceCardItem alloc] initWithMapItem:itemCopy2];
  }

  v7 = v6;

  return v7;
}

- (void)_setModeDidResignCurrent
{
  self->_modeIsCurrent = 0;
  if (!self->_containerIsVisible)
  {
    [(LookAroundContainerViewController *)self _removePuckViewFromMapView];
  }
}

- (void)_setModeDidBecomeCurrent
{
  self->_modeIsCurrent = 1;
  if (self->_containerIsVisible)
  {
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    mapView = [chromeViewController mapView];
    [(LookAroundContainerViewController *)self _insertPuckViewIntoMapView:mapView];
  }
}

- (void)_removePuckViewFromMapView
{
  puckViewController = [(LookAroundContainerViewController *)self puckViewController];
  [puckViewController willMoveToParentViewController:0];
  view = [puckViewController view];
  [view removeFromSuperview];

  [puckViewController removeFromParentViewController];
}

- (void)_insertPuckViewIntoMapView:(id)view
{
  viewCopy = view;
  puckViewController = [(LookAroundContainerViewController *)self puckViewController];
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  [chromeViewController addChildViewController:puckViewController];

  view = [puckViewController view];
  [viewCopy _insertSubviewBelowAnnotationContainerView:view];

  chromeViewController2 = [(ContainerViewController *)self chromeViewController];
  [puckViewController didMoveToParentViewController:chromeViewController2];

  view2 = [puckViewController view];
  centerXAnchor = [view2 centerXAnchor];
  overlayView = [(OverlayContainerViewController *)self overlayView];
  centerXAnchor2 = [overlayView centerXAnchor];
  v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v19[0] = v12;
  centerYAnchor = [view2 centerYAnchor];
  overlayView2 = [(OverlayContainerViewController *)self overlayView];
  centerYAnchor2 = [overlayView2 centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v19[1] = v16;
  v17 = [NSArray arrayWithObjects:v19 count:2];
  [NSLayoutConstraint activateConstraints:v17];
}

- (BOOL)_shouldTakeSidebarIntoAccount
{
  containerStyle = [(ContainerViewController *)self containerStyle];
  v4 = (containerStyle > 7) | (0x1Cu >> containerStyle);
  containerStyle2 = [(ContainerViewController *)self containerStyle];
  v6 = ((containerStyle2 > 7) | (0x5Cu >> containerStyle2)) & ![(ContainerViewController *)self chromeHidden];
  if ((v4 & 1) != 0 && v6)
  {
    currentViewController = [(ContainerViewController *)self currentViewController];
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();
  }

  return v6 & 1;
}

- (BOOL)_shouldTakePIPViewHeightIntoAccount
{
  containerStyle = [(ContainerViewController *)self containerStyle];
  v4 = containerStyle < 8;
  v5 = 0xE3u >> containerStyle;
  v6 = [(ContainerViewController *)self containerStyle]== 1;
  containerStyle2 = [(ContainerViewController *)self containerStyle];
  v8 = (containerStyle2 > 7) | (0x5Cu >> containerStyle2);
  _shouldTakeSidebarIntoAccount = [(LookAroundContainerViewController *)self _shouldTakeSidebarIntoAccount];
  v10 = v6 | _shouldTakeSidebarIntoAccount;
  v11 = (v4 & v5 & v8 ^ 1) & v10;
  if ((v4 & v5) == 0)
  {
    v11 = v10;
  }

  if ((v4 & v5 & 1) == 0 && (_shouldTakeSidebarIntoAccount & 1) == 0)
  {
    view = [(LookAroundContainerViewController *)self view];
    [view bounds];
    v14 = v13;
    v16 = v15;

    sub_100019A44();
    view2 = [(LookAroundPIPViewController *)self->_pipViewController view];
    [view2 bounds];
    UIRectInset();
    v19 = v18;
    v21 = v20;

    v11 = v10;
    if (v16 * 1.20000005 * (v14 - v19) > (v16 - v21) * v14)
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (void)_shareCurrentLocation:(id)location
{
  locationCopy = location;
  [(LookAroundContainerViewController *)self _captureActivityCardAnalyticsForUserAction:6013 onTarget:1701];
  createActivityViewControllerForCurrentContext = [(LookAroundContainerViewController *)self createActivityViewControllerForCurrentContext];
  if (createActivityViewControllerForCurrentContext)
  {
    v5 = +[MKSystemController sharedInstance];
    userInterfaceIdiom = [v5 userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      _popoverController = [(LookAroundContainerViewController *)self _popoverController];
      if (_popoverController)
      {

        v8 = 3;
      }

      else if ([(LookAroundContainerViewController *)self _isInPopoverPresentation])
      {
        v8 = 3;
      }

      else
      {
        v8 = 7;
      }

      [createActivityViewControllerForCurrentContext setModalPresentationStyle:v8];
    }

    popoverPresentationController = [createActivityViewControllerForCurrentContext popoverPresentationController];
    [popoverPresentationController setPermittedArrowDirections:15];
    [popoverPresentationController setSourceView:locationCopy];
    [locationCopy bounds];
    [popoverPresentationController setSourceRect:?];
    [(LookAroundContainerViewController *)self _maps_topMostPresentViewController:createActivityViewControllerForCurrentContext animated:1 completion:0];
  }
}

- (CGRect)_sanitizedOriginFrame
{
  if (sub_10000FA08(self) == 5)
  {
    [(LookAroundContainerViewController *)self frameForPIPView];
    x = v3;
    y = v5;
    width = v7;
    height = v9;
  }

  else
  {
    p_originFrame = &self->_originFrame;
    x = self->_originFrame.origin.x;
    y = self->_originFrame.origin.y;
    width = self->_originFrame.size.width;
    height = self->_originFrame.size.height;
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    if (CGRectIsEmpty(v35))
    {
      view = [(LookAroundContainerViewController *)self view];
      [view bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v21 = v18 / v20;
      height = 1.0;
      if (v18 / v20 <= 1.0)
      {
        width = 1.0;
        if (v21 > 0.0)
        {
          height = 1.0 / v21;
        }
      }

      else
      {
        width = v18 / v20;
      }

      v36.origin.x = v14;
      v36.origin.y = v16;
      v36.size.width = v18;
      v36.size.height = v20;
      MidX = CGRectGetMidX(v36);
      v23 = v20;
      y = 0.0;
      x = 0.0;
      if (MidX > width * 0.5)
      {
        v24 = v14;
        v25 = v16;
        v26 = v18;
        v27 = CGRectGetMidX(*(&v23 - 3));
        v23 = v20;
        x = v27 - width * 0.5;
      }

      v28 = v14;
      v29 = v16;
      v30 = v18;
      if (CGRectGetMidY(*(&v23 - 3)) > height * 0.5)
      {
        v37.origin.x = v14;
        v37.origin.y = v16;
        v37.size.width = v18;
        v37.size.height = v20;
        y = CGRectGetMidY(v37) - height * 0.5;
      }

      p_originFrame->origin.x = x;
      p_originFrame->origin.y = y;
      p_originFrame->size.width = width;
      p_originFrame->size.height = height;
    }
  }

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)_reportAnIssue
{
  [(LookAroundContainerViewController *)self _captureActivityCardAnalyticsForUserAction:5013 onTarget:1701];
  v3 = [RAPLookAroundContextImpl alloc];
  lookAroundView = [(LookAroundContainerViewController *)self lookAroundView];
  v7 = [(RAPLookAroundContextImpl *)v3 initWithLookAroundView:lookAroundView];

  _maps_mapsSceneDelegate = [(LookAroundContainerViewController *)self _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  [rapPresenter presentLookAroundRAPWithContext:v7 completion:0];
}

- (void)_toggleShowingLabels:(BOOL)labels
{
  labelsCopy = labels;
  if (labels)
  {
    v5 = 6067;
  }

  else
  {
    v5 = 6066;
  }

  [(LookAroundContainerViewController *)self _captureActivityCardAnalyticsForUserAction:v5 onTarget:1701];
  lookAroundView = [(LookAroundContainerViewController *)self lookAroundView];
  [lookAroundView setShowsPointLabels:labelsCopy];

  lookAroundView2 = [(LookAroundContainerViewController *)self lookAroundView];
  [lookAroundView2 setShowsRoadLabels:labelsCopy];
}

- (void)_captureActivityCardAnalyticsForUserAction:(int)action onTarget:(int)target
{
  v4 = *&target;
  v5 = *&action;
  lookAroundView = [(LookAroundContainerViewController *)self lookAroundView];
  mapItem = [lookAroundView mapItem];
  _hasMUID = [mapItem _hasMUID];

  v25 = 0;
  if (v5 != 4 && _hasMUID)
  {
    lookAroundView2 = [(LookAroundContainerViewController *)self lookAroundView];
    mapItem2 = [lookAroundView2 mapItem];
    v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [mapItem2 _muid]);
  }

  lookAroundView3 = [(LookAroundContainerViewController *)self lookAroundView];
  [lookAroundView3 centerCoordinate];
  v15 = [[GEOLocation alloc] initWithLatitude:v13 longitude:v14];
  [lookAroundView3 presentationYaw];
  v17 = v16;
  v12LookAroundView = [lookAroundView3 lookAroundView];
  [v12LookAroundView trackingZoomScale];
  v20 = v19;
  visiblePlaceMUIDs = [lookAroundView3 visiblePlaceMUIDs];
  v22 = [visiblePlaceMUIDs count];
  if ([lookAroundView3 showsRoadLabels])
  {
    showsPointLabels = 1;
  }

  else
  {
    showsPointLabels = [lookAroundView3 showsPointLabels];
  }

  LOBYTE(v24) = showsPointLabels;
  [GEOAPPortal captureLookAroundUserAction:v5 onTarget:v4 eventValue:v25 location:v15 heading:v17 zoom:v22 numberPoisInView:v20 labelingShown:v24];
}

- (NSString)sharingTitle
{
  mapItem = [(MKLookAroundView *)self->_lookAroundView mapItem];

  lookAroundView = self->_lookAroundView;
  if (mapItem)
  {
    mapItem2 = [(MKLookAroundView *)lookAroundView mapItem];
    name = [mapItem2 name];
  }

  else
  {
    name = [(MKLookAroundView *)lookAroundView locationTitle];
  }

  return name;
}

- (void)lookAroundViewWillChangeLocationInfo:(id)info
{
  self->_locationState = 2;
  infoCopy = info;
  currentViewController = [(ContainerViewController *)self currentViewController];
  [(LookAroundActionCoordinator *)self->_actionCoordinator viewControllerGoPreviousState:currentViewController withSender:infoCopy];
}

- (void)lookAroundView:(id)view didDeselectLabelMarker:(id)marker
{
  viewCopy = view;
  markerCopy = marker;
  v8 = sub_100798614();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 134219010;
    selfCopy = self;
    v25 = 2112;
    v26 = v10;
    v27 = 2048;
    v28 = viewCopy;
    v29 = 2112;
    v30 = v12;
    v31 = 2048;
    v32 = markerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "<LookAroundContainerViewController: %p> -lookAroundView:<%@: %p> didDeselectLabelMarker:<%@: %p>", buf, 0x34u);
  }

  currentViewController = [(ContainerViewController *)self currentViewController];
  v14 = dispatch_time(0, 250000000);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100A48580;
  v18[3] = &unk_101656A00;
  v19 = viewCopy;
  v20 = markerCopy;
  selfCopy2 = self;
  v22 = currentViewController;
  v15 = currentViewController;
  v16 = markerCopy;
  v17 = viewCopy;
  dispatch_after(v14, &_dispatch_main_q, v18);
}

- (void)lookAroundView:(id)view didSelectLabelMarker:(id)marker
{
  viewCopy = view;
  markerCopy = marker;
  v8 = sub_100798614();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v23 = 134219010;
    selfCopy = self;
    v25 = 2112;
    v26 = v10;
    v27 = 2048;
    v28 = viewCopy;
    v29 = 2112;
    v30 = v12;
    v31 = 2048;
    v32 = markerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "<LookAroundContainerViewController: %p> -lookAroundView:<%@: %p> didSelectLabelMarker:<%@: %p>", &v23, 0x34u);
  }

  self->_locationState = 3;
  v13 = [[MKMapItem alloc] _initWithLabelMarker:markerCopy];
  v14 = [(LookAroundContainerViewController *)self _createPlaceCardItemFromMapItem:v13 isMarkedLocation:[(MKLookAroundEntryPoint *)self->_entryPoint isMarkedLocation]];
  [markerCopy calloutAnchorPointWithSnapToPixels:0];
  v16 = v15;
  v18 = v17;
  [markerCopy lateralCalloutAnchorRect];
  v34 = CGRectOffset(v33, v16, v18);
  [v14 setCalloutAnchorRect:{v34.origin.x, v34.origin.y, v34.size.width, v34.size.height}];
  actionCoordinator = self->_actionCoordinator;
  currentViewController = [(ContainerViewController *)self currentViewController];
  [(LookAroundActionCoordinator *)actionCoordinator viewController:currentViewController presentPlaceCardForItem:v14];

  styleAttributes = [markerCopy styleAttributes];
  if ([styleAttributes isLandmarkPOI])
  {
    v22 = 6071;
  }

  else
  {
    v22 = 1010;
  }

  [(LookAroundContainerViewController *)self _captureActivityCardAnalyticsForUserAction:v22 onTarget:1702];
}

- (void)lookAroundView:(id)view didChangeLocationInfo:(id)info
{
  locationState = self->_locationState;
  if (locationState == 2)
  {
    self->_locationState = 3;
    v6 = [(LookAroundContainerViewController *)self _maps_mapsSceneDelegate:view];
    [v6 refreshTitle];
  }

  else if (!locationState)
  {
    self->_locationState = 1;
  }

  trayContaineeViewController = self->_trayContaineeViewController;

  [(LookAroundTrayContaineeViewController *)trayContaineeViewController updateLocation:view];
}

- (void)lookAroundView:(id)view didChangeCameraFrame:(id)frame
{
  viewCopy = view;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    [dataCoordinator coordinateLookAroundViewDidChangeVisibleRegion:viewCopy];
  }
}

- (void)lookAroundViewDidPan:(id)pan
{
  _targetForAnalytics = [(LookAroundContainerViewController *)self _targetForAnalytics];

  [(LookAroundContainerViewController *)self _captureUserAction:6069 onTarget:_targetForAnalytics eventValue:0];
}

- (void)lookAroundView:(id)view didZoomWithDirection:(int64_t)direction type:(int64_t)type
{
  if (direction == 1)
  {
    v6 = 1043;
  }

  else
  {
    v6 = 1044;
  }

  _targetForAnalytics = [(LookAroundContainerViewController *)self _targetForAnalytics];

  [(LookAroundContainerViewController *)self _captureUserAction:v6 onTarget:_targetForAnalytics eventValue:0];
}

- (void)lookAroundView:(id)view didTapAtPoint:(CGPoint)point areaAvailable:(BOOL)available
{
  viewCopy = view;
  if (available)
  {
    v8 = 6072;
  }

  else
  {
    currentViewController = [(ContainerViewController *)self currentViewController];
    v10 = dispatch_time(0, 250000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A48AB4;
    block[3] = &unk_101661A40;
    block[4] = self;
    v13 = currentViewController;
    v14 = viewCopy;
    v11 = currentViewController;
    dispatch_after(v10, &_dispatch_main_q, block);

    v8 = 1061;
  }

  [(LookAroundContainerViewController *)self _captureUserAction:v8 onTarget:[(LookAroundContainerViewController *)self _targetForAnalytics] eventValue:0];
}

- (void)lookAroundView:(id)view didTapLabelMarker:(id)marker
{
  v5 = [(LookAroundContainerViewController *)self _targetForAnalytics:view];

  [(LookAroundContainerViewController *)self _captureUserAction:6072 onTarget:v5 eventValue:0];
}

- (void)lookAroundViewDidStopUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    [dataCoordinator coordinateLookAroundViewDidStopUserInteraction:interactionCopy];
  }
}

- (void)lookAroundViewDidStartUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    [dataCoordinator coordinateLookAroundViewDidStartUserInteraction:interactionCopy];
  }
}

- (UIView)passThroughView
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  passThroughView = [chromeViewController passThroughView];

  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen])
  {
    v5 = self->_lookAroundView;

    passThroughView = v5;
  }

  return passThroughView;
}

- (void)lookAroundTrayContaineeViewController:(id)controller didTapToggleLabelsButton:(id)button
{
  if ([(MKLookAroundView *)self->_lookAroundView showsPointLabels:controller])
  {
    v5 = [(MKLookAroundView *)self->_lookAroundView showsRoadLabels]^ 1;
  }

  else
  {
    v5 = 1;
  }

  [(LookAroundContainerViewController *)self _toggleShowingLabels:v5];
}

- (void)lookAroundTTRButtonView:(id)view didTapTTRButton:(id)button
{
  v6 = [(LookAroundContainerViewController *)self actionCoordinator:view];
  currentViewController = [(ContainerViewController *)self currentViewController];
  [v6 viewControllerPresentTTR:currentViewController];
}

- (void)mapView:(id)view didChangeLookAroundAvailability:(int64_t)availability
{
  viewCopy = view;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    [dataCoordinator coordinateMapView:viewCopy didChangeLookAroundAvailability:availability];
  }
}

- (void)mapViewDidChangeVisibleRegion:(id)region
{
  regionCopy = region;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    [dataCoordinator coordinateMapViewDidChangeVisibleRegion:regionCopy];
  }

  _mapLayer = [regionCopy _mapLayer];
  [_mapLayer pitch];
  v7 = v6;

  [(LookAroundPuckViewController *)self->_puckViewController setPitch:v7];
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  viewCopy = view;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    [dataCoordinator coordinateMapViewRegionDidChange:viewCopy];
  }
}

- (void)mapView:(id)view willSelectLabelMarker:(id)marker
{
  if (marker)
  {
    markerCopy = marker;
    viewCopy = view;
    if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
    {
      self->_selectingLabelMarker = 1;
    }

    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    [dataCoordinator coordinateMapView:viewCopy willSelectLabelMarker:markerCopy];
  }
}

- (void)mapViewDidStopUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    [dataCoordinator coordinateMapViewDidStopUserInteraction:interactionCopy];

    self->_isRespondingToPanGesture = 0;
  }
}

- (void)mapViewDidStartUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    [dataCoordinator coordinateMapViewDidStartUserInteraction:interactionCopy];
  }
}

- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection
{
  decelerateCopy = decelerate;
  viewCopy = view;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    [dataCoordinator coordinateMapView:viewCopy didStopRespondingToGesture:gesture zoomDirection:direction zoomGestureType:type didDecelerate:decelerateCopy tiltDirection:tiltDirection];
  }
}

- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    self->_isRespondingToPanGesture = gesture == 0;
    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    [dataCoordinator coordinateMapView:viewCopy willStartRespondingToGesture:gesture animated:animatedCopy];
  }
}

- (void)lookAroundPIPDataCoordinatorDidEndMovingLookAroundView:(id)view
{
  lookAroundView = [view lookAroundView];
  mapItem = [lookAroundView mapItem];

  if (mapItem)
  {
    v5 = [(LookAroundContainerViewController *)self _createPlaceCardItemFromMapItem:mapItem isMarkedLocation:[(MKLookAroundEntryPoint *)self->_entryPoint isMarkedLocation]];
    actionCoordinator = [(LookAroundContainerViewController *)self actionCoordinator];
    currentViewController = [(ContainerViewController *)self currentViewController];
    [actionCoordinator viewController:currentViewController presentPlaceCardForItem:v5];
  }
}

- (void)lookAroundPIPDataCoordinatorDidStartPanningMapView:(id)view
{
  viewCopy = view;
  if (self->_selectingLabelMarker)
  {
    [(MKLookAroundView *)self->_lookAroundView recordTriggerAction:1010];
  }

  else
  {
    self->_locationState = 2;
    currentViewController = [(ContainerViewController *)self currentViewController];
    actionCoordinator = self->_actionCoordinator;
    mapView = [viewCopy mapView];
    [(LookAroundActionCoordinator *)actionCoordinator viewControllerGoPreviousState:currentViewController withSender:mapView];

    [(MKLookAroundView *)self->_lookAroundView recordTriggerAction:1001];
  }

  self->_selectingLabelMarker = 0;
}

- (int64_t)preferredUserInterfaceStyle
{
  view = [(LookAroundContainerViewController *)self view];
  window = [view window];
  traitCollection = [window traitCollection];
  v6 = [traitCollection copy];

  userInterfaceStyle = [v6 userInterfaceStyle];
  if (userInterfaceStyle == 1)
  {
    if ([(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen])
    {
      userInterfaceStyle = 2;
    }

    else
    {
      userInterfaceStyle = 1;
    }
  }

  return userInterfaceStyle;
}

- (void)updateMapEdgeInsets
{
  if (!self->_modeTransition)
  {
    viewIfLoaded = [(LookAroundContainerViewController *)self viewIfLoaded];
    if (viewIfLoaded)
    {
      dataCoordinator = viewIfLoaded;
      view = [(LookAroundContainerViewController *)self view];
      superview = [view superview];
      if (superview && ![(ContainerViewController *)self preventEdgeInsetsUpdate])
      {
        isRespondingToPanGesture = self->_isRespondingToPanGesture;

        if (isRespondingToPanGesture)
        {
          return;
        }

        [(LookAroundContainerViewController *)self topEdgeInset];
        top = v7;
        [(ContainerViewController *)self bottomEdgeInset];
        bottom = v9;
        [(ContainerViewController *)self leftSafeOffset];
        left = v11;
        [(ContainerViewController *)self rightSafeOffset];
        right = v13;
        [(LookAroundContainerViewController *)self pipViewWidthIfNeeded];
        v16 = v15;
        [(LookAroundContainerViewController *)self sidebarWidthIfNeeded];
        v18 = v17;
        if ([(ContainerViewController *)self chromeHidden])
        {
          top = UIEdgeInsetsZero.top;
          left = UIEdgeInsetsZero.left;
          bottom = UIEdgeInsetsZero.bottom;
          right = UIEdgeInsetsZero.right;
        }

        else
        {
          if (fabs(v16) > 2.22044605e-16)
          {
            if ([(LookAroundContainerViewController *)self _pipHugsLeading])
            {
              left = v16;
            }

            else
            {
              right = v16;
            }
          }

          if (fabs(v18) > 2.22044605e-16)
          {
            view2 = [(LookAroundContainerViewController *)self view];
            effectiveUserInterfaceLayoutDirection = [view2 effectiveUserInterfaceLayoutDirection];

            if (effectiveUserInterfaceLayoutDirection == 1)
            {
              right = v18;
            }

            else
            {
              left = v18;
            }
          }
        }

        chromeViewController = [(ContainerViewController *)self chromeViewController];
        [(ContainerViewController *)self statusBarHeight];
        [chromeViewController setLabelEdgeInsets:?];

        chromeViewController2 = [(ContainerViewController *)self chromeViewController];
        [(ContainerViewController *)self statusBarHeight];
        [chromeViewController2 setLabelEdgeWidths:?];

        chromeViewController3 = [(ContainerViewController *)self chromeViewController];
        chromeContext = [(ContainerViewController *)self chromeContext];
        [chromeViewController3 setMapEdgeInsets:0 animated:chromeContext forContext:{top, left, bottom, right}];

        dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
        [dataCoordinator synchronizeMapViewIfNeeded];
      }

      else
      {
      }
    }
  }
}

- (double)sidebarWidthIfNeeded
{
  MaxX = 0.0;
  if ([(LookAroundContainerViewController *)self _shouldTakeSidebarIntoAccount])
  {
    view = [(LookAroundContainerViewController *)self view];
    v5 = [view effectiveUserInterfaceLayoutDirection] == 1;

    if (v5 == [(ContainerViewController *)self stackOnOppositeSide])
    {
      containerView = [(ContainerViewController *)self containerView];
      [containerView frame];
      MaxX = CGRectGetMaxX(v12);
    }

    else
    {
      containerView = [(LookAroundContainerViewController *)self view];
      [containerView bounds];
      v7 = CGRectGetMaxX(v10);
      containerView2 = [(ContainerViewController *)self containerView];
      [containerView2 frame];
      MaxX = v7 - CGRectGetMinX(v11);
    }
  }

  return MaxX;
}

- (double)pipViewWidthIfNeeded
{
  v3 = 0.0;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    view = [(LookAroundPIPViewController *)self->_pipViewController view];
    v5 = sub_100019A44();
    containerStyle = [(ContainerViewController *)self containerStyle];
    v7 = (containerStyle < 8) & (0xE3u >> containerStyle);
    _shouldTakeSidebarIntoAccount = [(LookAroundContainerViewController *)self _shouldTakeSidebarIntoAccount];
    _shouldTakePIPViewHeightIntoAccount = [(LookAroundContainerViewController *)self _shouldTakePIPViewHeightIntoAccount];
    if ((v7 & 1) == 0 && (_shouldTakeSidebarIntoAccount & 1) == 0 && (_shouldTakePIPViewHeightIntoAccount & 1) == 0)
    {
      if ([(LookAroundContainerViewController *)self _pipHugsLeading])
      {
        [view frame];
        v3 = CGRectGetMaxX(v13) + v5;
      }

      else
      {
        view2 = [(LookAroundContainerViewController *)self view];
        [view2 bounds];
        MaxX = CGRectGetMaxX(v14);
        [view frame];
        v3 = MaxX + v5 - CGRectGetMinX(v15);
      }
    }
  }

  return v3;
}

- (double)topEdgeInset
{
  v3 = 0.0;
  if (![(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    return v3;
  }

  v4 = sub_100019A44();
  if ([(LookAroundContainerViewController *)self _shouldTakePIPViewHeightIntoAccount]&& [(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    pipViewController = [(LookAroundContainerViewController *)self pipViewController];
    view = [pipViewController view];
    [view frame];
    v7 = CGRectGetMaxY(v14) + v4;
    [(ContainerViewController *)self statusBarHeight];
    if (v7 <= v8)
    {
      [(ContainerViewController *)self statusBarHeight];
      v3 = v12;
    }

    else
    {
      pipViewController2 = [(LookAroundContainerViewController *)self pipViewController];
      view2 = [pipViewController2 view];
      [view2 frame];
      v3 = CGRectGetMaxY(v15) + v4;
    }

    return v3;
  }

  [(ContainerViewController *)self statusBarHeight];
  return result;
}

- (BOOL)_pipHugsLeading
{
  view = [(LookAroundContainerViewController *)self view];
  v5 = sub_10000FA08(view);
  if (v5 == 5)
  {
    view2 = [(LookAroundContainerViewController *)self view];
    if (![view2 effectiveUserInterfaceLayoutDirection])
    {
      v7 = 1;
LABEL_9:

      goto LABEL_10;
    }
  }

  view3 = [(LookAroundContainerViewController *)self view];
  if (sub_10000FA08(view3) == 5)
  {
    v7 = 0;
  }

  else
  {
    view4 = [(LookAroundContainerViewController *)self view];
    v7 = [view4 effectiveUserInterfaceLayoutDirection] == 1;
  }

  if (v5 == 5)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (void)presentController:(id)controller animated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout
{
  layoutCopy = layout;
  animatedCopy = animated;
  controllerCopy = controller;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen])
  {
    objc_storeStrong(&self->_trayContaineeViewController, controller);
    [(LookAroundTrayContaineeViewController *)self->_trayContaineeViewController updateLocation];
    [(LookAroundTrayContaineeViewController *)self->_trayContaineeViewController setDelegate:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100A49B78;
      v12[3] = &unk_101661B18;
      v12[4] = self;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100A49BD8;
      v11[3] = &unk_101661738;
      v11[4] = self;
      [UIView _animateUsingDefaultDampedSpringWithDelay:2 initialSpringVelocity:v12 options:v11 animations:0.0 completion:0.0];
    }
  }

  v10.receiver = self;
  v10.super_class = LookAroundContainerViewController;
  [(ContainerViewController *)&v10 presentController:controllerCopy animated:animatedCopy useDefaultContaineeLayout:layoutCopy];
}

- (void)popLastViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  currentViewController = [(ContainerViewController *)self currentViewController];
  v8.receiver = self;
  v8.super_class = LookAroundContainerViewController;
  [(ContainerViewController *)&v8 popLastViewControllerAnimated:animatedCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    mapView = [dataCoordinator mapView];
    [mapView _deselectLabelMarkerAnimated:1];

    if (self->_locationState != 2)
    {
      [(MKLookAroundView *)self->_lookAroundView deselectLabelMarker];
    }
  }
}

- (unint64_t)originalLayoutForViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (v6 = [(ContainerViewController *)self containerStyle], result = 3, v6 <= 7) && ((1 << v6) & 0xE3) != 0)
  {
    v8 = self->_locationState < 2;
    if ((v8 || (isKindOfClass & 1) == 0) | [(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (void)snapToLayout:(unint64_t)layout
{
  v4.receiver = self;
  v4.super_class = LookAroundContainerViewController;
  [(ContainerViewController *)&v4 snapToLayout:layout];
  [(LookAroundContainerViewController *)self _updateLayoutWithCurrentValue];
}

- (void)contentHeightUpdatedWithValue:(double)value
{
  v5.receiver = self;
  v5.super_class = LookAroundContainerViewController;
  [(ContainerViewController *)&v5 contentHeightUpdatedWithValue:?];
  [(LookAroundContainerViewController *)self _updateLayoutWithValue:value];
}

- (void)dismissTray
{
  if ([(ContainerViewController *)self controllerIsInStack:self->_trayContaineeViewController])
  {
    currentControllerStack = [(ContainerViewController *)self currentControllerStack];
    v4 = [currentControllerStack mutableCopy];

    [v4 removeObject:self->_trayContaineeViewController];
    [(ContainerViewController *)self setControllerStack:v4 animated:1 completion:0];
  }
}

- (void)presentTray:(id)tray
{
  trayCopy = tray;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen])
  {
    objc_storeStrong(&self->_trayContaineeViewController, tray);
    [(LookAroundTrayContaineeViewController *)self->_trayContaineeViewController updateLocation];
    [(LookAroundTrayContaineeViewController *)self->_trayContaineeViewController setDelegate:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100A4A06C;
      v9[3] = &unk_101661B18;
      v9[4] = self;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100A4A0CC;
      v8[3] = &unk_101661738;
      v8[4] = self;
      [UIView _animateUsingDefaultDampedSpringWithDelay:2 initialSpringVelocity:v9 options:v8 animations:0.0 completion:0.0];
    }
  }

  if (![(ContainerViewController *)self controllerIsInStack:trayCopy])
  {
    currentControllerStack = [(ContainerViewController *)self currentControllerStack];
    v7 = [currentControllerStack mutableCopy];

    [v7 insertObject:trayCopy atIndex:0];
    [(ContainerViewController *)self setControllerStack:v7 animated:1 completion:0];
  }
}

- (void)animateTransitionToFullScreen:(BOOL)screen
{
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100A4A1EC;
  v8[3] = &unk_101632728;
  screenCopy = screen;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  v5 = objc_retainBlock(v8);
  v6 = v5;
  if (self->_displayState)
  {
    (v5[2])(v5);
  }

  else
  {
    v7 = dispatch_time(0, 100000000);
    dispatch_after(v7, &_dispatch_main_q, v6);
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)prepareForExitWithCompletion:(id)completion
{
  completionCopy = completion;
  chromeDeactivationToken = self->_chromeDeactivationToken;
  self->_chromeDeactivationToken = 0;

  currentViewController = [(ContainerViewController *)self currentViewController];
  cardPresentationController = [currentViewController cardPresentationController];
  usingSheetPresentation = [cardPresentationController usingSheetPresentation];

  if (usingSheetPresentation)
  {
    if (completionCopy)
    {
      completionCopy[2]();
    }
  }

  else
  {
    [(LookAroundContainerViewController *)self dismissViewControllerAnimated:1 completion:completionCopy];
  }
}

- (void)_showPuckAnimated
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100A4A830;
  v2[3] = &unk_101661B18;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:&stru_1016326B0 completion:0.449999988];
}

- (void)animateToModeTransition:(id)transition
{
  transitionCopy = transition;
  view = [(LookAroundContainerViewController *)self view];
  [view layoutIfNeeded];

  self->_modeTransition = 1;
  if (self->_showsFullScreen)
  {
    [(LookAroundContainerViewController *)self _setupForFullScreen];
    mapItem = [(MKLookAroundView *)self->_lookAroundView mapItem];
    if (mapItem)
    {
      v7 = [(LookAroundContainerViewController *)self _createPlaceCardItemFromMapItem:mapItem isMarkedLocation:[(MKLookAroundEntryPoint *)self->_entryPoint isMarkedLocation]];
      [(LookAroundActionCoordinator *)self->_actionCoordinator viewController:self presentPlaceCardForItem:v7 animated:0];
    }

    v8 = 7;
  }

  else
  {
    [(LookAroundContainerViewController *)self _setupForPIP];
    v8 = 6;
  }

  pipViewController = [(LookAroundContainerViewController *)self pipViewController];
  view2 = [pipViewController view];

  pipViewController2 = [(LookAroundContainerViewController *)self pipViewController];
  cardView = [pipViewController2 cardView];

  pipViewController3 = [(LookAroundContainerViewController *)self pipViewController];
  floatingButtonsView = [pipViewController3 floatingButtonsView];

  [floatingButtonsView setAlpha:0.0];
  [cardView setLayoutStyle:6];
  pipViewController4 = [(LookAroundContainerViewController *)self pipViewController];
  lookAroundContainerView = [pipViewController4 lookAroundContainerView];

  LOBYTE(pipViewController4) = self->_showsFullScreen;
  [(LookAroundContainerViewController *)self frameForPIPView];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100A4AD58;
  v43[3] = &unk_101632690;
  v25 = cardView;
  v44 = v25;
  v48 = v8;
  v26 = view2;
  v45 = v26;
  v49 = v18;
  v50 = v20;
  v51 = v22;
  v52 = v24;
  v27 = floatingButtonsView;
  v46 = v27;
  v28 = lookAroundContainerView;
  v47 = v28;
  v53 = pipViewController4;
  v29 = objc_retainBlock(v43);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100A4ADCC;
  v40[3] = &unk_101661A90;
  v30 = transitionCopy;
  v41 = v30;
  selfCopy = self;
  v31 = objc_retainBlock(v40);
  if ([v30 isAnimated])
  {
    [(LookAroundContainerViewController *)self _sanitizedOriginFrame];
    [v26 setFrame:?];
    v32 = 1.0;
    if (!self->_lookAroundViewOriginalSuperview)
    {
      v32 = 0.0;
    }

    [v26 setAlpha:v32];
    puckViewController = [(LookAroundContainerViewController *)self puckViewController];
    view3 = [puckViewController view];
    [view3 setAlpha:0.0];

    [v26 layoutIfNeeded];
    +[CATransaction begin];
    [CATransaction setAnimationDuration:0.449999988];
    v35 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [CATransaction setAnimationTimingFunction:v35];

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100A4AEBC;
    v38[3] = &unk_101661760;
    v39 = v29;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100A4AECC;
    v36[3] = &unk_10165F438;
    v37 = v31;
    [UIView animateWithDuration:v38 animations:v36 completion:0.449999988];
    +[CATransaction commit];
  }

  else
  {
    (v29[2])(v29);
    (v31[2])(v31);
  }
}

- (void)animateFromModeTransition:(id)transition
{
  transitionCopy = transition;
  self->_modeTransition = 1;
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);
  pipViewController = [(LookAroundContainerViewController *)self pipViewController];
  view = [pipViewController view];

  pipViewController2 = [(LookAroundContainerViewController *)self pipViewController];
  cardView = [pipViewController2 cardView];

  layer = [view layer];
  [layer setShouldRasterize:1];

  pipViewController3 = [(LookAroundContainerViewController *)self pipViewController];
  floatingButtonsView = [pipViewController3 floatingButtonsView];

  v13 = self->_lookAroundView;
  [(MKLookAroundView *)v13 setCompassHidden:1];
  chromeDeactivationToken = self->_chromeDeactivationToken;
  self->_chromeDeactivationToken = 0;

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100A4B27C;
  v32[3] = &unk_101653D50;
  v32[4] = self;
  v15 = v13;
  v33 = v15;
  v16 = view;
  v34 = v16;
  v17 = floatingButtonsView;
  v35 = v17;
  v18 = cardView;
  v36 = v18;
  v19 = objc_retainBlock(v32);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100A4B48C;
  v28[3] = &unk_101661A40;
  v20 = WeakRetained;
  v29 = v20;
  selfCopy = self;
  v21 = transitionCopy;
  v31 = v21;
  v22 = objc_retainBlock(v28);
  if ([v21 isAnimated])
  {
    +[CATransaction begin];
    [CATransaction setAnimationDuration:0.449999988];
    v23 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [CATransaction setAnimationTimingFunction:v23];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100A4B4D4;
    v26[3] = &unk_101661760;
    v27 = v19;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100A4B4E4;
    v24[3] = &unk_10165F438;
    v25 = v22;
    [UIView animateWithDuration:v26 animations:v24 completion:0.449999988];
    +[CATransaction commit];
  }

  else
  {
    (v19[2])(v19);
    (v22[2])(v22);
  }
}

- (void)_showTTRButton:(BOOL)button
{
  buttonCopy = button;
  v5 = +[MKSystemController sharedInstance];
  isInternalInstall = [v5 isInternalInstall];

  if (isInternalInstall)
  {
    if (buttonCopy && (-[MKLookAroundView window](self->_lookAroundView, "window"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, -[MKLookAroundView window](self->_lookAroundView, "window"), v9 = objc_claimAutoreleasedReturnValue(), -[OverlayContainerViewController overlayView](self, "overlayView"), v10 = objc_claimAutoreleasedReturnValue(), [v10 window], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v8, v9 == v11))
    {
      if (self->_ttrButtonView)
      {
        goto LABEL_8;
      }

      v14 = objc_alloc_init(LookAroundTTRButtonView);
      ttrButtonView = self->_ttrButtonView;
      self->_ttrButtonView = v14;

      [(LookAroundTTRButtonView *)self->_ttrButtonView setDelegate:self];
      [(LookAroundTTRButtonView *)self->_ttrButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(LookAroundTTRButtonView *)self->_ttrButtonView setTag:MKLookAroundTTRButtonTag];
      [(MKLookAroundView *)self->_lookAroundView addSubview:self->_ttrButtonView];
      traitCollection = [(LookAroundContainerViewController *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom == 5)
      {
        v18 = -76.0;
      }

      else
      {
        v18 = -16.0;
      }

      bottomAnchor = [(LookAroundTTRButtonView *)self->_ttrButtonView bottomAnchor];
      overlayView = [(OverlayContainerViewController *)self overlayView];
      safeAreaLayoutGuide = [overlayView safeAreaLayoutGuide];
      bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
      v21 = [(LookAroundTTRButtonView *)bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
      v31[0] = v21;
      trailingAnchor = [(LookAroundTTRButtonView *)self->_ttrButtonView trailingAnchor];
      overlayView2 = [(OverlayContainerViewController *)self overlayView];
      safeAreaLayoutGuide2 = [overlayView2 safeAreaLayoutGuide];
      trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
      v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v18];
      v31[1] = v26;
      v27 = [NSArray arrayWithObjects:v31 count:2];
      [v28 activateConstraints:v27];

      v13 = bottomAnchor;
    }

    else
    {
      v12 = self->_ttrButtonView;
      if (!v12)
      {
LABEL_8:
        [(LookAroundContainerViewController *)self _updateTTRButtonState];
        return;
      }

      [(LookAroundTTRButtonView *)v12 removeFromSuperview];
      v13 = self->_ttrButtonView;
      self->_ttrButtonView = 0;
    }

    goto LABEL_8;
  }
}

- (void)_setupForPIP
{
  if (self->_displayState != 2)
  {
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    v4 = ([chromeViewController displayedViewMode] - 1) & 0xFFFFFFFFFFFFFFFALL;

    if (!v4)
    {
      chromeViewController2 = [(ContainerViewController *)self chromeViewController];
      [chromeViewController2 updateViewMode:0 animated:0];
    }

    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    [dataCoordinator addObserver:self];

    dataCoordinator2 = [(LookAroundContainerViewController *)self dataCoordinator];
    [dataCoordinator2 setNeedsLookAroundAvailabilityUpdate];

    puckViewController = [(LookAroundContainerViewController *)self puckViewController];
    view = [puckViewController view];
    [view setAlpha:1.0];

    puckViewController2 = [(LookAroundContainerViewController *)self puckViewController];
    view2 = [puckViewController2 view];
    [view2 setHidden:0];

    pipViewController = [(LookAroundContainerViewController *)self pipViewController];
    [pipViewController setShowsMinimizedButton:0];

    self->_showsLabels = [(MKLookAroundView *)self->_lookAroundView showsPointLabels];
    [(MKLookAroundView *)self->_lookAroundView setShowsPointLabels:0];
    [(MKLookAroundView *)self->_lookAroundView setShowsRoadLabels:0];
    containerView = [(ContainerViewController *)self containerView];
    [containerView setUserInteractionEnabled:0];

    [(LookAroundTrayContaineeViewController *)self->_trayContaineeViewController setVisible:0 animated:1];
    [(LookAroundContainerViewController *)self dismissTray];
    pipViewController2 = [(LookAroundContainerViewController *)self pipViewController];
    view3 = [pipViewController2 view];
    [view3 setAccessibilityIdentifier:@"LookAroundPiPView"];

    self->_displayState = 2;
    chromeViewController3 = [(ContainerViewController *)self chromeViewController];
    [chromeViewController3 setNeedsUserInterfaceAppearanceUpdate];

    chromeViewController4 = [(ContainerViewController *)self chromeViewController];
    [chromeViewController4 setNeedsUpdateComponent:@"floatingControls" animated:0];

    [(OverlayContainerViewController *)self updateTheme];
  }
}

- (void)_setupForFullScreen
{
  if (self->_displayState != 1)
  {
    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    [dataCoordinator removeObserver:self];

    puckViewController = [(LookAroundContainerViewController *)self puckViewController];
    view = [puckViewController view];
    [view setAlpha:0.0];

    puckViewController2 = [(LookAroundContainerViewController *)self puckViewController];
    view2 = [puckViewController2 view];
    [view2 setHidden:1];

    pipViewController = [(LookAroundContainerViewController *)self pipViewController];
    [pipViewController setShowsMinimizedButton:1];

    [(MKLookAroundView *)self->_lookAroundView setShowsPointLabels:self->_showsLabels];
    [(MKLookAroundView *)self->_lookAroundView setShowsRoadLabels:self->_showsLabels];
    [(MKLookAroundView *)self->_lookAroundView setUserInteractionEnabled:1];
    v9 = self->_trayContaineeViewController != 0;
    containerView = [(ContainerViewController *)self containerView];
    [containerView setUserInteractionEnabled:v9];

    pipViewController2 = [(LookAroundContainerViewController *)self pipViewController];
    view3 = [pipViewController2 view];
    [view3 setAccessibilityIdentifier:@"LookAroundFullScreenView"];

    [(LookAroundTrayContaineeViewController *)self->_trayContaineeViewController setVisible:1 animated:1];
    [(LookAroundActionCoordinator *)self->_actionCoordinator viewControllerPresentTray:self showsFullScreen:1 usingLookAroundView:self->_lookAroundView];
    self->_displayState = 1;
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    [chromeViewController setNeedsUserInterfaceAppearanceUpdate];

    chromeViewController2 = [(ContainerViewController *)self chromeViewController];
    [chromeViewController2 setNeedsUpdateComponent:@"floatingControls" animated:0];

    [(OverlayContainerViewController *)self updateTheme];
  }
}

- (BOOL)_getRatioControls:(double *)controls scale:(double *)scale forContentHeightValue:(double)value
{
  if (([(ContainerViewController *)self containerStyle]& 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    goto LABEL_9;
  }

  currentViewController = [(ContainerViewController *)self currentViewController];
  [currentViewController heightForLayout:1];
  v11 = v10;

  currentViewController2 = [(ContainerViewController *)self currentViewController];
  [currentViewController2 heightForLayout:2];
  v14 = v13;

  if (v14 == v11)
  {
    return 0;
  }

  if (v11 < value)
  {
    v16 = fmin(fmax((fmin(v14, value) - v11) / (v14 - v11), 0.0), 1.0);
    if (controls)
    {
      *controls = v16;
    }

    if (!scale)
    {
      return 1;
    }

    v17 = fmin(fmax(v16 * -0.699999988 + 1.0, 0.300000012), 1.0);
  }

  else
  {
LABEL_9:
    if (controls)
    {
      *controls = 0.0;
    }

    v17 = 1.0;
    if (!scale)
    {
      return 1;
    }
  }

  *scale = v17;
  return 1;
}

- (void)_updateLayoutWithCurrentValue
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  view = [currentViewController view];
  [view frame];
  [(LookAroundContainerViewController *)self _updateLayoutWithValue:v4];
}

- (void)_updateLayoutWithValue:(double)value
{
  v9 = 0x3FF0000000000000;
  v10 = 0.0;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen])
  {
    v5 = 0.0;
    v6 = 1.0;
  }

  else
  {
    [(LookAroundContainerViewController *)self _getRatioControls:&v10 scale:&v9 forContentHeightValue:value];
    v6 = *&v9;
    v5 = v10;
  }

  self->_currentDragRatio = v5;
  self->_currentDragScale = v6;
  if (!self->_modeTransition)
  {
    v7 = 1.0 - v5;
    floatingButtonsView = [(LookAroundPIPViewController *)self->_pipViewController floatingButtonsView];
    [floatingButtonsView setAlpha:v7];
  }

  [(LookAroundContainerViewController *)self _updatePIPLayout];
}

- (CGAffineTransform)transformForPIPView:(SEL)view
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = *&CGAffineTransformIdentity.c;
  v18 = *&CGAffineTransformIdentity.a;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v17;
  v16 = *&CGAffineTransformIdentity.tx;
  *&retstr->tx = v16;
  result = [(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen];
  if ((result & 1) == 0)
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v11 = CGRectGetWidth(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v12 = CGRectGetHeight(v22);
    currentDragScale = self->_currentDragScale;
    if (currentDragScale < 1.0)
    {
      *&v20.a = v18;
      *&v20.c = v17;
      *&v20.tx = v16;
      CGAffineTransformTranslate(retstr, &v20, -((v11 - currentDragScale * v11) * 0.5), -(v12 * ((v11 - currentDragScale * v11) * 0.5)) / v11);
      v14 = *&retstr->c;
      *&v19.a = *&retstr->a;
      *&v19.c = v14;
      *&v19.tx = *&retstr->tx;
      result = CGAffineTransformScale(&v20, &v19, currentDragScale, currentDragScale);
      v15 = *&v20.c;
      *&retstr->a = *&v20.a;
      *&retstr->c = v15;
      *&retstr->tx = *&v20.tx;
    }
  }

  return result;
}

- (unint64_t)_pipLayout
{
  view = [(LookAroundContainerViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  Height = CGRectGetHeight(v23);
  if (sub_10000FA08(self))
  {
    v13 = 0;
  }

  else
  {
    traitCollection = [(LookAroundContainerViewController *)self traitCollection];
    if ([traitCollection horizontalSizeClass] == 1)
    {
      traitCollection2 = [(LookAroundContainerViewController *)self traitCollection];
      v13 = [traitCollection2 verticalSizeClass] == 1;
    }

    else
    {
      v13 = 0;
    }
  }

  currentViewController = [(ContainerViewController *)self currentViewController];
  if (currentViewController)
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    objc_opt_class();
    v18 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v18 = 0;
  }

  if (v13 || (-[LookAroundContainerViewController traitCollection](self, "traitCollection"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 horizontalSizeClass], v19, v20 == 2))
  {
    v21 = 2;
    if ((v18 & 1) == 0)
    {
      v21 = 3;
    }

    if (Height > 500.0)
    {
      return v18 & 1;
    }

    else
    {
      return v21;
    }
  }

  else if (Height <= 500.0)
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

- (CGRect)frameForPIPView
{
  view = [(LookAroundContainerViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = sub_100019A44();
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen])
  {
    Height = v11;
    v14 = v7;
    goto LABEL_26;
  }

  _pipHugsLeading = [(LookAroundContainerViewController *)self _pipHugsLeading];
  view2 = [(LookAroundContainerViewController *)self view];
  [view2 safeAreaInsets];
  v17 = -3.0;
  if (v18 == 0.0)
  {
    v17 = -v12;
  }

  v71 = v17;

  if (sub_10000FA08(self) == 5)
  {
    v73.origin.x = v5;
    v73.origin.y = v7;
    v73.size.width = v9;
    v73.size.height = v11;
    v19 = ceil(CGRectGetWidth(v73));
    Width = v19 * 0.4;
    view3 = [(LookAroundContainerViewController *)self view];
    [view3 safeAreaInsets];
    v72 = v22 + v12;

    Height = ceil(v19 * 0.25);
  }

  else
  {
    [(ContainerViewController *)self topEdgePadding];
    v72 = v23;
    v74.origin.x = v5;
    v74.origin.y = v7;
    v74.size.width = v9;
    v74.size.height = v11;
    Height = CGRectGetHeight(v74);
    _pipLayout = [(LookAroundContainerViewController *)self _pipLayout];
    Width = 0.0;
    if (_pipLayout > 2)
    {
      if (_pipLayout == 3)
      {
        v82.origin.x = v5;
        v82.origin.y = v7;
        v82.size.width = v9;
        v82.size.height = v11;
        Width = ceil(CGRectGetWidth(v82) * 0.479999989);
        [(ContainerViewController *)self statusBarHeight];
        v70 = v45;
        view4 = [(LookAroundContainerViewController *)self view];
        [view4 safeAreaInsets];
        v67 = v47;

        view5 = [(LookAroundContainerViewController *)self view];
        [view5 safeAreaInsets];
        v50 = -3.0;
        if (v67 == 0.0)
        {
          v50 = -v12;
        }

        Height = Height + v50 - (v12 + v70 + v49);

        goto LABEL_21;
      }

      if (_pipLayout != 4)
      {
        v26 = v71;
        if (_pipLayout == 5)
        {
          v77.origin.x = v5;
          v77.origin.y = v7;
          v77.size.width = v9;
          v77.size.height = v11;
          Width = CGRectGetWidth(v77);
          v78.origin.x = v5;
          v78.origin.y = v7;
          v78.size.width = v9;
          v78.size.height = v11;
          Height = ceil(CGRectGetHeight(v78) * 0.349999994);
        }

        goto LABEL_22;
      }

      v83.origin.x = v5;
      v83.origin.y = v7;
      v83.size.width = v9;
      v83.size.height = v11;
      Width = CGRectGetWidth(v83);
      v25 = Height * 0.400000006;
    }

    else
    {
      if (_pipLayout >= 2)
      {
        v26 = v71;
        if (_pipLayout == 2)
        {
          currentViewController = [(ContainerViewController *)self currentViewController];
          view6 = [currentViewController view];

          [view6 frame];
          v30 = v29;
          v32 = v31;
          v65 = v34;
          v68 = v33;
          view7 = [(LookAroundContainerViewController *)self view];
          [view6 convertRect:view7 toView:{v30, v32, v68, v65}];
          v37 = v36;
          v39 = v38;
          v64 = v41;
          v66 = v40;

          v79.origin.x = v5;
          v79.origin.y = v7;
          v79.size.width = v9;
          v79.size.height = v11;
          v69 = CGRectGetWidth(v79);
          v80.origin.x = v37;
          v80.origin.y = v39;
          v80.size.height = v64;
          v80.size.width = v66;
          MaxX = CGRectGetMaxX(v80);
          view8 = [(LookAroundContainerViewController *)self view];
          [view8 safeAreaInsets];
          Width = v71 + v69 - (v12 + v44 + MaxX);

          v81.origin.x = v5;
          v81.origin.y = v7;
          v81.size.width = v9;
          v81.size.height = v11;
          Height = ceil(CGRectGetHeight(v81) * 0.400000006);
        }

        goto LABEL_22;
      }

      v75.origin.x = v5;
      v75.origin.y = v7;
      v75.size.width = v9;
      v75.size.height = v11;
      Width = fmin(ceil(CGRectGetWidth(v75) * 0.479999989), 630.0);
      v76.origin.x = v5;
      v76.origin.y = v7;
      v76.size.width = v9;
      v76.size.height = v11;
      v25 = CGRectGetHeight(v76) * 0.400000006;
    }

    Height = fmin(ceil(v25), 390.0);
  }

LABEL_21:
  v26 = v71;
LABEL_22:
  v51 = v5;
  v52 = v7;
  v53 = v9;
  v54 = v11;
  if (_pipHugsLeading)
  {
    MinX = CGRectGetMinX(*&v51);
    view9 = [(LookAroundContainerViewController *)self view];
    [view9 safeAreaInsets];
    v58 = v57 + MinX;
  }

  else
  {
    v59 = CGRectGetMaxX(*&v51);
    view9 = [(LookAroundContainerViewController *)self view];
    [view9 safeAreaInsets];
    v58 = v59 - (Width + v60);
  }

  v9 = v26 - v12 + Width;
  v5 = v58 + v12;
  v14 = v72;
LABEL_26:
  v61 = v5;
  v62 = v9;
  v63 = Height;
  result.size.height = v63;
  result.size.width = v62;
  result.origin.y = v14;
  result.origin.x = v61;
  return result;
}

- (void)_updatePIPLayout
{
  if (!self->_modeTransition)
  {
    [(LookAroundContainerViewController *)self frameForPIPView];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    v7 = CGRectGetWidth(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v8 = CGRectGetHeight(v24);
    memset(&v22, 0, sizeof(v22));
    [(LookAroundContainerViewController *)self transformForPIPView:x, y, width, height];
    view = [(LookAroundPIPViewController *)self->_pipViewController view];
    v10 = view;
    if (view)
    {
      [view transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v20 = v22;
    v11 = CGAffineTransformEqualToTransform(&t1, &v20);
    [v10 bounds];
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    v26.size.width = v7;
    v26.size.height = v8;
    v12 = CGRectEqualToRect(v25, v26);
    if (self->_viewWillTransitionToSize.width == CGSizeZero.width && self->_viewWillTransitionToSize.height == CGSizeZero.height)
    {
      v16 = 0;
      if (!v10)
      {
LABEL_18:

        return;
      }
    }

    else
    {
      view2 = [(LookAroundContainerViewController *)self view];
      [view2 bounds];
      v16 = v15 > self->_viewWillTransitionToSize.width;

      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (!self->_isRespondingToPanGesture && !v16 && (!v11 || !v12 || self->_forceUpdatePIPLayout))
    {
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      if (!CGRectEqualToRect(self->_previousPIPFrame, v27))
      {
        v17 = *&CGAffineTransformIdentity.c;
        *&t1.a = *&CGAffineTransformIdentity.a;
        *&t1.c = v17;
        *&t1.tx = *&CGAffineTransformIdentity.tx;
        [v10 setTransform:&t1];
        [v10 setFrame:{x, y, width, height}];
        self->_previousPIPFrame.origin.x = x;
        self->_previousPIPFrame.origin.y = y;
        self->_previousPIPFrame.size.width = width;
        self->_previousPIPFrame.size.height = height;
      }

      t1 = v22;
      [v10 setTransform:&t1];
      [(LookAroundContainerViewController *)self updateMapEdgeInsets];
      t1 = v22;
      IsIdentity = CGAffineTransformIsIdentity(&t1);
      lookAroundContainerView = [(LookAroundPIPViewController *)self->_pipViewController lookAroundContainerView];
      [lookAroundContainerView setUserInteractionEnabled:IsIdentity];

      [(UITapGestureRecognizer *)self->_pipViewTapGestureRecognizer setEnabled:IsIdentity ^ 1];
    }

    goto LABEL_18;
  }
}

- (void)_updateCompassLayout
{
  if (!self->_modeTransition && self->_pipViewController)
  {
    [(LookAroundContainerViewController *)self compassInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    mapView = [chromeViewController mapView];
    [mapView _setCompassInsets:{v4, v6, v8, v10}];

    v16 = self->_lookAroundView;
    [(MKLookAroundView *)v16 compassInsets];
    floatingButtonsView = [(LookAroundPIPViewController *)self->_pipViewController floatingButtonsView];
    [floatingButtonsView frame];
    v15 = v14 + 32.0;

    [(MKLookAroundView *)v16 setCompassInsets:v15, 16.0, 16.0, 16.0];
  }
}

- (UIEdgeInsets)compassInsets
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  mapView = [chromeViewController mapView];
  [mapView _compassInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (sub_10000FA08(self) != 5)
  {
    v6 = sub_100019A44();
    view = [(LookAroundContainerViewController *)self view];
    [view safeAreaInsets];
    v12 = v14 + sub_100019A44();

    if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
    {
      view2 = [(LookAroundPIPViewController *)self->_pipViewController view];
      [view2 bounds];
      UIRectInset();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      _pipLayout = [(LookAroundContainerViewController *)self _pipLayout];
      if (_pipLayout)
      {
        if (_pipLayout == 3)
        {
          v12 = sub_100019A44();
        }
      }

      else
      {
        v29.origin.x = v17;
        v29.origin.y = v19;
        v29.size.width = v21;
        v29.size.height = v23;
        v12 = v12 - CGRectGetWidth(v29);
        v30.origin.x = v17;
        v30.origin.y = v19;
        v30.size.width = v21;
        v30.size.height = v23;
        v6 = CGRectGetHeight(v30) + v6;
      }
    }
  }

  v25 = v6;
  v26 = v8;
  v27 = v10;
  v28 = v12;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v10.receiver = self;
  v10.super_class = LookAroundContainerViewController;
  coordinatorCopy = coordinator;
  [(ContainerViewController *)&v10 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinatorCopy];
  dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
  [dataCoordinator pause];

  v8[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A4CBB8;
  v9[3] = &unk_101661710;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100A4CC18;
  v8[3] = &unk_101661710;
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = LookAroundContainerViewController;
  coordinatorCopy = coordinator;
  [(ContainerViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
  [dataCoordinator pause];

  self->_viewWillTransitionToSize.width = width;
  self->_viewWillTransitionToSize.height = height;
  v9[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100A4CD94;
  v10[3] = &unk_101661710;
  v10[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A4CDF4;
  v9[3] = &unk_101661710;
  [coordinatorCopy animateAlongsideTransition:v10 completion:v9];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = LookAroundContainerViewController;
  [(ContainerViewController *)&v5 viewDidDisappear:disappear];
  [(LookAroundContainerViewController *)self _showTTRButton:0];
  self->_containerIsVisible = 0;
  if (!self->_modeIsCurrent)
  {
    [(LookAroundContainerViewController *)self _removePuckViewFromMapView];
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"LookAroundTrayContaineeViewControllerDidDisappear" object:self userInfo:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = LookAroundContainerViewController;
  [(OverlayContainerViewController *)&v7 viewDidAppear:appear];
  self->_containerIsVisible = 1;
  if (self->_modeIsCurrent)
  {
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    mapView = [chromeViewController mapView];
    [(LookAroundContainerViewController *)self _insertPuckViewIntoMapView:mapView];
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"LookAroundTrayContaineeViewControllerDidAppear" object:self userInfo:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LookAroundContainerViewController;
  [(OverlayContainerViewController *)&v3 viewDidLoad];
  [(LookAroundActionCoordinator *)self->_actionCoordinator viewControllerPresentLookAround:self showsFullScreen:self->_showsFullScreen];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = LookAroundContainerViewController;
  [(OverlayContainerViewController *)&v3 viewDidLayoutSubviews];
  [(LookAroundContainerViewController *)self _updateCompassLayout];
  [(LookAroundContainerViewController *)self _updateLayoutWithCurrentValue];
}

- (id)pipViewController
{
  pipViewController = self->_pipViewController;
  if (!pipViewController)
  {
    v4 = [LookAroundPIPViewController alloc];
    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    v6 = [(LookAroundPIPViewController *)v4 initWithDataCoordinator:dataCoordinator lookAroundView:self->_lookAroundView];
    v7 = self->_pipViewController;
    self->_pipViewController = v6;

    actionCoordinator = [(LookAroundContainerViewController *)self actionCoordinator];
    [(LookAroundPIPViewController *)self->_pipViewController setActionCoordinator:actionCoordinator];

    v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handlePIPViewTap:"];
    pipViewTapGestureRecognizer = self->_pipViewTapGestureRecognizer;
    self->_pipViewTapGestureRecognizer = v9;

    view = [(LookAroundPIPViewController *)self->_pipViewController view];
    [view addGestureRecognizer:self->_pipViewTapGestureRecognizer];

    [(ContainerViewController *)self addChildViewController:self->_pipViewController];
    view2 = [(LookAroundContainerViewController *)self view];
    view3 = [(LookAroundPIPViewController *)self->_pipViewController view];
    topContentView = [(OverlayContainerViewController *)self topContentView];
    [view2 insertSubview:view3 aboveSubview:topContentView];

    [(LookAroundPIPViewController *)self->_pipViewController didMoveToParentViewController:self];
    pipViewController = self->_pipViewController;
  }

  return pipViewController;
}

- (id)puckViewController
{
  puckViewController = self->_puckViewController;
  if (!puckViewController)
  {
    v4 = objc_alloc_init(LookAroundPuckViewController);
    v5 = self->_puckViewController;
    self->_puckViewController = v4;

    view = [(LookAroundPuckViewController *)self->_puckViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    dataCoordinator = [(LookAroundContainerViewController *)self dataCoordinator];
    [dataCoordinator addObserver:self->_puckViewController];

    puckViewController = self->_puckViewController;
  }

  return puckViewController;
}

- (MKMapItem)currentMapItem
{
  p_lookAroundView = &self->_lookAroundView;
  if (([(MKLookAroundView *)self->_lookAroundView hasEnteredLookAround]& 1) == 0)
  {
    p_lookAroundView = &self->_entryPoint;
  }

  mapItem = [(MKLookAroundView *)*p_lookAroundView mapItem];

  return mapItem;
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"__internal__HideTapToRadarInMunin" context:off_10192FCB8];

  v4.receiver = self;
  v4.super_class = LookAroundContainerViewController;
  [(LookAroundContainerViewController *)&v4 dealloc];
}

- (LookAroundContainerViewController)initWithEntryPoint:(id)point lookAroundView:(id)view showsFullScreen:(BOOL)screen
{
  pointCopy = point;
  viewCopy = view;
  v26.receiver = self;
  v26.super_class = LookAroundContainerViewController;
  v11 = [(ContainerViewController *)&v26 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    [(LookAroundContainerViewController *)v11 _commonInit];
    objc_storeStrong(&v12->_entryPoint, point);
    v12->_showsFullScreen = screen;
    v13 = [[LookAroundActionCoordinator alloc] initWithContainerViewController:v12];
    actionCoordinator = v12->_actionCoordinator;
    v12->_actionCoordinator = v13;

    objc_initWeak(&location, v12);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100A4D590;
    v22[3] = &unk_101632668;
    objc_copyWeak(&v24, &location);
    v23 = pointCopy;
    v15 = [(LookAroundContainerViewController *)v12 _createOrReuseLookAroundView:viewCopy completion:v22];
    lookAroundView = v12->_lookAroundView;
    v12->_lookAroundView = v15;

    superview = [(MKLookAroundView *)v12->_lookAroundView superview];
    lookAroundViewOriginalSuperview = v12->_lookAroundViewOriginalSuperview;
    v12->_lookAroundViewOriginalSuperview = superview;

    traitCollection = [(LookAroundContainerViewController *)v12 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      [(ContainerViewController *)v12 setStackOnOppositeSide:1];
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (id)_createOrReuseLookAroundView:(id)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  v8 = viewCopy;
  v9 = v8;
  if (!v8)
  {
    v9 = [[MKLookAroundView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v9 setCompassHidden:1];
    [v9 setShowsPointLabels:self->_showsLabels];
    [v9 setShowsRoadLabels:self->_showsLabels];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
  }

  return v9;
}

- (void)_commonInit
{
  self->_showsLabels = 1;
  self->_currentDragRatio = 0.0;
  self->_currentDragScale = 1.0;
  self->_displayState = 0;
  self->_locationState = 0;
  v3 = [[LookAroundActionCoordinator alloc] initWithContainerViewController:self];
  actionCoordinator = self->_actionCoordinator;
  self->_actionCoordinator = v3;

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 addObserver:self forKeyPath:@"__internal__HideTapToRadarInMunin" options:1 context:off_10192FCB8];
}

@end