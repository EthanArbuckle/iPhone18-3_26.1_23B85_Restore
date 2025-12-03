@interface FlyoverContainerViewController
- (BOOL)prefersStatusBarHidden;
- (FlyoverContainerViewController)initWithMapItem:(id)item;
- (FlyoverContainerViewControllerDelegate)flyoverDelegate;
- (UIView)passThroughView;
- (double)compassDiameter;
- (id)mapView;
- (int64_t)initialOrientation;
- (unint64_t)originalLayoutForViewController:(id)controller;
- (void)_captureTelemetricEventWithOldKey:(int)key newKey:(int)newKey;
- (void)_enterFlyover;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)cleanupFlyover;
- (void)dealloc;
- (void)didTapMapView:(id)view atPoint:(CGPoint)point;
- (void)hideChrome:(BOOL)chrome animated:(BOOL)animated;
- (void)mapView:(id)view arSessionWasInterrupted:(unint64_t)interrupted;
- (void)mapView:(id)view arTrackingStateDidChange:(unint64_t)change reason:(unint64_t)reason;
- (void)mapView:(id)view didEncounterARError:(id)error;
- (void)mapView:(id)view didStopFlyoverTourCompleted:(BOOL)completed;
- (void)mapView:(id)view flyoverModeDidChange:(int)change;
- (void)mapView:(id)view flyoverTourLabelDidChange:(id)change;
- (void)mapViewARSessionInterruptionEnded:(id)ended;
- (void)mapViewDidEnterAR:(id)r;
- (void)mapViewDidExitAR:(id)r;
- (void)mapViewWillEnterAR:(id)r;
- (void)mapViewWillStartFlyoverTour:(id)tour;
- (void)stopFlyoverRequestedByBanner:(id)banner;
- (void)updateMapEdgeInsets;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation FlyoverContainerViewController

- (FlyoverContainerViewControllerDelegate)flyoverDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flyoverDelegate);

  return WeakRetained;
}

- (void)stopFlyoverRequestedByBanner:(id)banner
{
  bannerCopy = banner;
  flyoverActionCoordinator = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
  [flyoverActionCoordinator flyoverTourCompleted];

  [(FlyoverContainerViewController *)self cleanupFlyover];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007AE338;
  v8[3] = &unk_101661B18;
  v9 = bannerCopy;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007AE344;
  v7[3] = &unk_101661738;
  v7[4] = self;
  v6 = bannerCopy;
  [UIView animateWithDuration:v8 animations:v7 completion:0.2];
}

- (int64_t)initialOrientation
{
  result = self->_initialOrientation;
  if (!result)
  {
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    view = [chromeViewController view];
    window = [view window];
    windowScene = [window windowScene];
    self->_initialOrientation = [windowScene interfaceOrientation];

    return self->_initialOrientation;
  }

  return result;
}

- (void)_enterFlyover
{
  v3 = +[UIApplication sharedMapsDelegate];
  [v3 setMapsIsShowingTour:1];

  flyoverActionCoordinator = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
  -[FlyoverContainerViewController setStartViewMode:](self, "setStartViewMode:", [flyoverActionCoordinator displayedViewMode]);

  v5 = +[VKPlatform sharedPlatform];
  if ([v5 supportsARMode])
  {
    mapView = [(FlyoverContainerViewController *)self mapView];
    _mapLayer = [mapView _mapLayer];
    if ([_mapLayer isFlyoverUnificationEnabled])
    {
      v8 = 6;
    }

    else
    {
      v8 = 5;
    }
  }

  else
  {
    v8 = 6;
  }

  flyoverActionCoordinator2 = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
  [flyoverActionCoordinator2 updateViewMode:v8 animated:1];

  view = [(FlyoverContainerViewController *)self view];

  if (view)
  {
    [(FlyoverContainerViewController *)self hideChrome:0 animated:1];
    flyoverActionCoordinator3 = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
    [flyoverActionCoordinator3 viewControllerPresentTray:self];

    if (sub_10000FA08(self) == 5)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1007AE5E4;
      v12[3] = &unk_101661B18;
      v12[4] = self;
      [UIView animateWithDuration:3 delay:v12 options:0 animations:1.0 completion:0.5];
    }
  }
}

- (void)_captureTelemetricEventWithOldKey:(int)key newKey:(int)newKey
{
  v4 = *&newKey;
  v5 = *&key;
  trackingStateAndReasonChangesBegan = self->_trackingStateAndReasonChangesBegan;
  v8 = [NSNumber numberWithInt:?];
  v16 = [(NSMutableDictionary *)trackingStateAndReasonChangesBegan objectForKeyedSubscript:v8];

  if (v16)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [v16 doubleValue];
    [GEOAPPortal captureTelemetricEntityCountForEventKey:v5 eventValue:((Current - v10) * 1000.0) eventDetail:0];
    v11 = self->_trackingStateAndReasonChangesBegan;
    v12 = [NSNumber numberWithInt:v5];
    [(NSMutableDictionary *)v11 setObject:0 forKeyedSubscript:v12];
  }

  v13 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v14 = self->_trackingStateAndReasonChangesBegan;
  v15 = [NSNumber numberWithInt:v4];
  [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v13.receiver = self;
  v13.super_class = FlyoverContainerViewController;
  [(ContainerViewController *)&v13 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1007AE8D8;
  v10[3] = &unk_101657D40;
  objc_copyWeak(&v11, &location);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007AE9E8;
  v8[3] = &unk_101657D40;
  objc_copyWeak(&v9, &location);
  [coordinatorCopy animateAlongsideTransition:v10 completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)mapView
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (UIView)passThroughView
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  passThroughView = [chromeViewController passThroughView];

  return passThroughView;
}

- (void)mapView:(id)view flyoverTourLabelDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(FlyoverContainerViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    flyoverBannerView = [(FlyoverContainerViewController *)self flyoverBannerView];
    [flyoverBannerView setLocationString:changeCopy];
  }

  else
  {
    v9 = [changeCopy length];
    tourLabel = [(FlyoverContainerViewController *)self tourLabel];
    flyoverBannerView = tourLabel;
    if (v9)
    {
      [tourLabel setText:changeCopy];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1007AED88;
      v17[3] = &unk_101661B18;
      v11 = &v18;
      v18 = flyoverBannerView;
      [UIView animateWithDuration:v17 animations:1.0];
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1007AED94;
      v15[3] = &unk_101661B18;
      v11 = &v16;
      v16 = tourLabel;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1007AEDA0;
      v12[3] = &unk_101661570;
      v13 = v16;
      v14 = changeCopy;
      [UIView animateWithDuration:v15 animations:v12 completion:1.0];
    }
  }
}

- (void)mapView:(id)view flyoverModeDidChange:(int)change
{
  viewCopy = view;
  if (change == 1)
  {
    if (self->_savedTourLabelText)
    {
      [(FlyoverContainerViewController *)self mapView:viewCopy flyoverTourLabelDidChange:?];
      savedTourLabelText = self->_savedTourLabelText;
      self->_savedTourLabelText = 0;
    }
  }

  else
  {
    tourLabel = [(FlyoverContainerViewController *)self tourLabel];
    text = [tourLabel text];
    v9 = [text length];

    if (v9)
    {
      tourLabel2 = [(FlyoverContainerViewController *)self tourLabel];
      text2 = [tourLabel2 text];
      v12 = [text2 copy];
      v13 = self->_savedTourLabelText;
      self->_savedTourLabelText = v12;

      [(FlyoverContainerViewController *)self mapView:viewCopy flyoverTourLabelDidChange:&stru_1016631F0];
    }
  }

  [(FlyoverStatusView *)self->_statusView setHidden:change == 1];
  self->_flyoverMode = change;
}

- (void)mapView:(id)view didStopFlyoverTourCompleted:(BOOL)completed
{
  completedCopy = completed;
  viewCopy = view;
  _currentFlyoverAnimationID = [viewCopy _currentFlyoverAnimationID];
  if (completedCopy)
  {
    v8 = +[MKMapService sharedService];
    [v8 captureUserAction:17025 flyoverAnimationID:_currentFlyoverAnimationID];
  }

  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:17026 flyoverAnimationID:_currentFlyoverAnimationID];

  [viewCopy _setCurrentFlyoverAnimationID:0];
  [(FlyoverContainerViewController *)self cleanupFlyover];
  v10 = +[VKPlatform sharedPlatform];
  if ([v10 supportsARMode])
  {
    mapView = [(FlyoverContainerViewController *)self mapView];
    _mapLayer = [mapView _mapLayer];
    isFlyoverUnificationEnabled = [_mapLayer isFlyoverUnificationEnabled];

    if (!isFlyoverUnificationEnabled && completedCopy)
    {
      flyoverActionCoordinator = self->_flyoverActionCoordinator;

      [(FlyoverActionCoordinator *)flyoverActionCoordinator flyoverTourCompleted];
      return;
    }
  }

  else
  {
  }

  [(FlyoverActionCoordinator *)self->_flyoverActionCoordinator viewControllerEndFlyover:self];
  appCoordinator = [(FlyoverActionCoordinator *)self->_flyoverActionCoordinator appCoordinator];
  [appCoordinator exitFlyover];
}

- (void)mapView:(id)view arTrackingStateDidChange:(unint64_t)change reason:(unint64_t)reason
{
  [(FlyoverStatusView *)self->_statusView setTrackingStateReason:reason];
  [GEOAPPortal captureTelemetricEntityCountForEventKey:4001 eventValue:change eventDetail:0];
  [GEOAPPortal captureTelemetricEntityCountForEventKey:4002 eventValue:reason eventDetail:0];
  currentTrackingState = self->_currentTrackingState;
  if (currentTrackingState != change)
  {
    if (currentTrackingState >= 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = (currentTrackingState + 4011);
    }

    if (change >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = (change + 4011);
    }

    [(FlyoverContainerViewController *)self _captureTelemetricEventWithOldKey:v9 newKey:v10];
  }

  currentTrackingStateReason = self->_currentTrackingStateReason;
  if (currentTrackingStateReason != reason)
  {
    if (currentTrackingStateReason >= 5)
    {
      v12 = 0;
    }

    else
    {
      v12 = (currentTrackingStateReason + 4021);
    }

    if (reason >= 5)
    {
      v13 = 0;
    }

    else
    {
      v13 = (reason + 4021);
    }

    [(FlyoverContainerViewController *)self _captureTelemetricEventWithOldKey:v12 newKey:v13];
  }

  self->_currentTrackingState = change;
  self->_currentTrackingStateReason = reason;
}

- (void)mapViewARSessionInterruptionEnded:(id)ended
{
  self->_sessionInterruptedReason = 0;
  if (self->_flyoverMode != 1)
  {
    _mapLayer = [ended _mapLayer];
    [_mapLayer setFlyoverMode:0];

    [(FlyoverStatusView *)self->_statusView setTrackingStateReason:0];

    [(FlyoverContainerViewController *)self _captureTelemetricEventWithOldKey:4025 newKey:4021];
  }
}

- (void)mapView:(id)view arSessionWasInterrupted:(unint64_t)interrupted
{
  if (interrupted != 2 && !self->_flyoverMode)
  {
    statusView = self->_statusView;
    viewCopy = view;
    [(FlyoverStatusView *)statusView setTrackingStateReason:4];
    currentTrackingStateReason = self->_currentTrackingStateReason;
    if (currentTrackingStateReason >= 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = (currentTrackingStateReason + 4021);
    }

    [(FlyoverContainerViewController *)self _captureTelemetricEventWithOldKey:v9 newKey:4025];
    _mapLayer = [viewCopy _mapLayer];

    [_mapLayer setFlyoverMode:2];
    flyoverActionCoordinator = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
    isFlyoverRunning = [flyoverActionCoordinator isFlyoverRunning];

    if (isFlyoverRunning)
    {
      [(FlyoverContainerViewController *)self hideChrome:0 animated:1];
    }
  }

  self->_sessionInterruptedReason = interrupted;
}

- (void)mapView:(id)view didEncounterARError:(id)error
{
  v5 = [(FlyoverContainerViewController *)self flyoverActionCoordinator:view];
  [v5 viewControllerEndFlyover:self];

  flyoverActionCoordinator = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
  appCoordinator = [flyoverActionCoordinator appCoordinator];
  [appCoordinator exitFlyover];
}

- (void)cleanupFlyover
{
  v3 = +[UIApplication sharedMapsDelegate];
  [v3 setMapsIsShowingTour:0];

  startViewMode = [(FlyoverContainerViewController *)self startViewMode];
  if (startViewMode != 6)
  {
    v5 = startViewMode;
    flyoverActionCoordinator = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
    [flyoverActionCoordinator updateViewMode:v5 animated:1];
  }
}

- (void)mapViewDidExitAR:(id)r
{
  [(NSTimer *)self->_flyoverIntroTimer invalidate];
  flyoverIntroTimer = self->_flyoverIntroTimer;
  self->_flyoverIntroTimer = 0;

  v5 = +[VKPlatform sharedPlatform];
  if ([v5 supportsARMode])
  {
    mapView = [(FlyoverContainerViewController *)self mapView];
    _mapLayer = [mapView _mapLayer];
    isFlyoverUnificationEnabled = [_mapLayer isFlyoverUnificationEnabled];

    if (isFlyoverUnificationEnabled)
    {
      goto LABEL_11;
    }

    currentTrackingState = self->_currentTrackingState;
    if (currentTrackingState >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = (currentTrackingState + 4011);
    }

    [(FlyoverContainerViewController *)self _captureTelemetricEventWithOldKey:v10 newKey:0];
    currentTrackingStateReason = self->_currentTrackingStateReason;
    if (currentTrackingStateReason >= 5)
    {
      v12 = 0;
    }

    else
    {
      v12 = (currentTrackingStateReason + 4021);
    }

    [(FlyoverContainerViewController *)self _captureTelemetricEventWithOldKey:v12 newKey:0];
    v5 = +[MKMapService sharedService];
    [v5 captureUserAction:34 onTarget:646 eventValue:0];
  }

LABEL_11:
  flyoverDelegate = [(FlyoverContainerViewController *)self flyoverDelegate];
  [flyoverDelegate viewControllerDidEndFlyover:self];
}

- (void)mapViewDidEnterAR:(id)r
{
  rCopy = r;
  v5 = +[MKMapService sharedService];
  mapRegion = [rCopy mapRegion];
  [rCopy _zoomLevel];
  v8 = v7;
  mapType = [rCopy mapType];
  v10 = 1;
  if (mapType > 2)
  {
    if (mapType > 101)
    {
      if (mapType == 102)
      {
        goto LABEL_15;
      }

      if (mapType == 104)
      {
        v10 = 4;
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (mapType != 3)
    {
      if (mapType != 4)
      {
        goto LABEL_14;
      }

LABEL_9:
      v10 = 3;
      goto LABEL_15;
    }

LABEL_13:
    v10 = 2;
    goto LABEL_15;
  }

  switch(mapType)
  {
    case 0:
      goto LABEL_15;
    case 1:
      goto LABEL_13;
    case 2:
      goto LABEL_9;
  }

LABEL_14:
  v10 = 0;
LABEL_15:
  [v5 captureUserAction:33 onTarget:646 eventValue:0 mapRegion:mapRegion zoomLevel:v10 mapType:v8];

  [(FlyoverContainerViewController *)self _enterFlyover];
  _mapLayer = [rCopy _mapLayer];
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  view = [chromeViewController view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];
  v17 = 0;
  if ((interfaceOrientation - 1) <= 3)
  {
    v17 = qword_101213570[(interfaceOrientation - 1)];
  }

  [_mapLayer setARInterfaceOrientation:v17];

  view2 = [(FlyoverContainerViewController *)self view];

  if (view2)
  {
    objc_initWeak(&location, self);
    v19 = [NSDate dateWithTimeIntervalSinceNow:5.0];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1007AF7B4;
    v26 = &unk_101661BC8;
    objc_copyWeak(&v27, &location);
    v20 = [NSTimer _maps_scheduledTimerWithFireDate:v19 block:&v23];
    flyoverIntroTimer = self->_flyoverIntroTimer;
    self->_flyoverIntroTimer = v20;

    v22 = [(FlyoverContainerViewController *)self flyoverDelegate:v23];
    [v22 viewControllerDidStartFlyover:self];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

- (void)mapViewWillStartFlyoverTour:(id)tour
{
  tourCopy = tour;
  v5 = +[MKMapService sharedService];
  _currentFlyoverAnimationID = [tourCopy _currentFlyoverAnimationID];

  [v5 captureUserAction:17028 flyoverAnimationID:_currentFlyoverAnimationID];
  v7 = +[VKPlatform sharedPlatform];
  if ([v7 supportsARMode])
  {
    mapView = [(FlyoverContainerViewController *)self mapView];
    _mapLayer = [mapView _mapLayer];
    isFlyoverUnificationEnabled = [_mapLayer isFlyoverUnificationEnabled];

    if (!isFlyoverUnificationEnabled)
    {
      return;
    }
  }

  else
  {
  }

  [(FlyoverContainerViewController *)self _enterFlyover];
  flyoverDelegate = [(FlyoverContainerViewController *)self flyoverDelegate];
  [flyoverDelegate viewControllerDidStartFlyover:self];
}

- (void)mapViewWillEnterAR:(id)r
{
  _mapLayer = [r _mapLayer];
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  view = [chromeViewController view];
  window = [view window];
  windowScene = [window windowScene];
  v8 = [windowScene interfaceOrientation] - 1;
  if (v8 > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_101213570[v8];
  }

  [_mapLayer setARInterfaceOrientation:v9];
}

- (void)updateMapEdgeInsets
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1007AFA98;
  v2[3] = &unk_101661B18;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:&stru_101629FA0 completion:0.25];
}

- (BOOL)prefersStatusBarHidden
{
  if ([(ContainerViewController *)self chromeHidden])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = FlyoverContainerViewController;
  return [(FlyoverContainerViewController *)&v4 prefersStatusBarHidden];
}

- (void)hideChrome:(BOOL)chrome animated:(BOOL)animated
{
  animatedCopy = animated;
  chromeCopy = chrome;
  if ([(ContainerViewController *)self chromeHidden]!= chrome)
  {
    [(ContainerViewController *)self setChromeHidden:chromeCopy];
    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    if (byte_10195DF08 == 1)
    {

      [(ContainerViewController *)self setContaineesHidden:chromeCopy];
    }

    else
    {
      [(ContainerViewController *)self visibleCardViews];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1007AFD4C;
      v13[3] = &unk_101661A90;
      v7 = v13[4] = self;
      v14 = v7;
      v8 = objc_retainBlock(v13);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1007AFF20;
      v12[3] = &unk_101661738;
      v12[4] = self;
      v9 = objc_retainBlock(v12);
      view = [(FlyoverContainerViewController *)self view];
      [view endEditing:1];

      view2 = [(FlyoverContainerViewController *)self view];
      [view2 setUserInteractionEnabled:0];

      if (animatedCopy)
      {
        [UIView animateWithDuration:v8 animations:v9 completion:0.25];
      }

      else
      {
        (v8[2])(v8);
        (v9[2])(v9, 1);
      }
    }
  }
}

- (void)didTapMapView:(id)view atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  currentViewController = [(ContainerViewController *)self currentViewController];
  if ([currentViewController conformsToProtocol:&OBJC_PROTOCOL___MapViewResponderHandling])
  {
    [currentViewController didTapMapView:viewCopy atPoint:{x, y}];
  }

  flyoverActionCoordinator = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
  isFlyoverRunning = [flyoverActionCoordinator isFlyoverRunning];

  if (isFlyoverRunning)
  {
    [(FlyoverContainerViewController *)self hideChrome:[(ContainerViewController *)self chromeHidden]^ 1 animated:1];
  }
}

- (unint64_t)originalLayoutForViewController:(id)controller
{
  v3 = +[VKPlatform sharedPlatform];
  if ([v3 supportsARMode])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (double)compassDiameter
{
  mapView = [(FlyoverContainerViewController *)self mapView];
  [mapView _compassDiameter];
  v4 = v3;

  return v4;
}

- (void)_setupConstraints
{
  v3 = +[VKPlatform sharedPlatform];
  supportsARMode = [v3 supportsARMode];

  v5 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  if (supportsARMode)
  {
    topAnchor = [(FlyoverStatusView *)self->_statusView topAnchor];
    view = [(FlyoverContainerViewController *)self view];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:6.0];
    v43[0] = v9;
    centerXAnchor = [(FlyoverStatusView *)self->_statusView centerXAnchor];
    view2 = [(FlyoverContainerViewController *)self view];
    centerXAnchor2 = [view2 centerXAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v43[1] = v13;
    v14 = [NSArray arrayWithObjects:v43 count:2];
    [NSLayoutConstraint activateConstraints:v14];

    v5 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  }

  traitCollection = [(FlyoverContainerViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    bottomAnchor = [(FlyoverBannerView *)self->_flyoverBannerView bottomAnchor];
    view3 = [(FlyoverContainerViewController *)self view];
    bottomAnchor2 = [view3 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
    v42[0] = v20;
    centerXAnchor3 = [(FlyoverBannerView *)self->_flyoverBannerView centerXAnchor];
    innerLayoutGuide = [(OverlayContainerViewController *)self innerLayoutGuide];
    centerXAnchor4 = [innerLayoutGuide centerXAnchor];
    v24 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v42[1] = v24;
    centerXAnchor5 = [v5[286] arrayWithObjects:v42 count:2];
    [NSLayoutConstraint activateConstraints:centerXAnchor5];
  }

  else
  {
    leadingAnchor = [(UILabel *)self->_tourLabel leadingAnchor];
    innerLayoutGuide2 = [(OverlayContainerViewController *)self innerLayoutGuide];
    leadingAnchor2 = [innerLayoutGuide2 leadingAnchor];
    v36 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v41[0] = v36;
    trailingAnchor = [(UILabel *)self->_tourLabel trailingAnchor];
    innerLayoutGuide3 = [(OverlayContainerViewController *)self innerLayoutGuide];
    centerXAnchor4 = [innerLayoutGuide3 trailingAnchor];
    v24 = [trailingAnchor constraintLessThanOrEqualToAnchor:centerXAnchor4];
    v41[1] = v24;
    centerXAnchor5 = [(UILabel *)self->_tourLabel centerXAnchor];
    innerLayoutGuide4 = [(OverlayContainerViewController *)self innerLayoutGuide];
    centerXAnchor6 = [innerLayoutGuide4 centerXAnchor];
    v27 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v41[2] = v27;
    bottomAnchor3 = [(UILabel *)self->_tourLabel bottomAnchor];
    overlayView = [(OverlayContainerViewController *)self overlayView];
    bottomAnchor4 = [overlayView bottomAnchor];
    v31 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-15.0];
    v41[3] = v31;
    v32 = [v5[286] arrayWithObjects:v41 count:4];
    [NSLayoutConstraint activateConstraints:v32];

    centerXAnchor3 = trailingAnchor;
    v20 = v36;

    innerLayoutGuide = innerLayoutGuide3;
    bottomAnchor2 = leadingAnchor2;

    view3 = innerLayoutGuide2;
    bottomAnchor = leadingAnchor;
  }
}

- (void)_setupViews
{
  view = [(FlyoverContainerViewController *)self view];
  [view setAccessibilityIdentifier:@"FlyoverContainerView"];

  v4 = +[VKPlatform sharedPlatform];
  supportsARMode = [v4 supportsARMode];

  if (supportsARMode)
  {
    v6 = [[FlyoverStatusView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    statusView = self->_statusView;
    self->_statusView = v6;

    [(FlyoverStatusView *)self->_statusView setTranslatesAutoresizingMaskIntoConstraints:0];
    view2 = [(FlyoverContainerViewController *)self view];
    [view2 addSubview:self->_statusView];
  }

  traitCollection = [(FlyoverContainerViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v11 = [[FlyoverBannerView alloc] initWithDelegate:self];
    p_flyoverBannerView = &self->_flyoverBannerView;
    flyoverBannerView = self->_flyoverBannerView;
    self->_flyoverBannerView = v11;

    [(FlyoverBannerView *)self->_flyoverBannerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FlyoverBannerView *)self->_flyoverBannerView setAlpha:0.0];
    [(FlyoverContainerViewController *)self view];
  }

  else
  {
    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    p_flyoverBannerView = &self->_tourLabel;
    tourLabel = self->_tourLabel;
    self->_tourLabel = v14;

    [(UILabel *)self->_tourLabel setAlpha:0.0];
    [(UILabel *)self->_tourLabel setAdjustsFontSizeToFitWidth:1];
    v16 = [UIFont boldSystemFontOfSize:22.0];
    [(UILabel *)self->_tourLabel setFont:v16];

    [(UILabel *)self->_tourLabel setMinimumScaleFactor:0.5];
    [(UILabel *)self->_tourLabel setNumberOfLines:1];
    v17 = +[UIColor blackColor];
    v18 = [v17 colorWithAlphaComponent:0.5];
    [(UILabel *)self->_tourLabel setShadowColor:v18];

    [(UILabel *)self->_tourLabel setShadowOffset:-1.0, 1.0];
    [(UILabel *)self->_tourLabel setTextAlignment:1];
    v19 = +[UIColor whiteColor];
    [(UILabel *)self->_tourLabel setTextColor:v19];

    [(UILabel *)self->_tourLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_tourLabel setAccessibilityIdentifier:@"FlyoverTourLabel"];
    [(OverlayContainerViewController *)self overlayView];
  }
  v20 = ;
  [v20 addSubview:*p_flyoverBannerView];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = FlyoverContainerViewController;
  [(OverlayContainerViewController *)&v4 viewDidAppear:appear];
  [(FlyoverContainerViewController *)self hideChrome:1 animated:0];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = FlyoverContainerViewController;
  [(OverlayContainerViewController *)&v4 viewDidLoad];
  topContentView = [(OverlayContainerViewController *)self topContentView];
  [topContentView setHidden:1];

  [(FlyoverContainerViewController *)self _setupViews];
  [(FlyoverContainerViewController *)self _setupConstraints];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationWillResignActiveNotification object:0];

  v4.receiver = self;
  v4.super_class = FlyoverContainerViewController;
  [(FlyoverContainerViewController *)&v4 dealloc];
}

- (FlyoverContainerViewController)initWithMapItem:(id)item
{
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = FlyoverContainerViewController;
  v6 = [(ContainerViewController *)&v12 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = [[FlyoverActionCoordinator alloc] initWithContainerViewController:v6];
    flyoverActionCoordinator = v6->_flyoverActionCoordinator;
    v6->_flyoverActionCoordinator = v7;

    v6->_initialOrientation = 0;
    objc_storeStrong(&v6->_mapItem, item);
    v6->_sessionInterruptedReason = 0;
    v9 = objc_alloc_init(NSMutableDictionary);
    trackingStateAndReasonChangesBegan = v6->_trackingStateAndReasonChangesBegan;
    v6->_trackingStateAndReasonChangesBegan = v9;
  }

  return v6;
}

@end