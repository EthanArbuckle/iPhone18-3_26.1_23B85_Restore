@interface StepContainerViewController
- (BOOL)_isStepOnTransitLine:(id)line;
- (BOOL)_isTrackingLocation;
- (BOOL)_shouldShowHeadingIndicatorForStep:(id)step;
- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker;
- (BOOL)pptTestHasNextStep;
- (BOOL)pptTestMoveToBoardStep;
- (MKMapView)mapView;
- (MapCameraController)mapCameraController;
- (NSDateComponentsFormatter)debugHoursDurationFormatter;
- (NSDateComponentsFormatter)debugMinsDurationFormatter;
- (StatusIndicatorView)statusIndicatorView;
- (StepActionCoordinator)stepActionCoordinator;
- (StepContainerViewController)initWithRoute:(id)route initialStepIndex:(unint64_t)index;
- (StepContainerViewController)initWithRoute:(id)route initialStepIndex:(unint64_t)index desiredTrackingMode:(int64_t)mode;
- (double)availableHeight;
- (double)maximumSignHeight;
- (double)topEdgeInset;
- (id)_geoRouteDetails;
- (id)passThroughView;
- (id)statusBarBackgroundViewStyle;
- (id)statusBarSupplementaryView;
- (int64_t)pptTestCurrentStepIndex;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)originalLayoutForViewController:(id)controller;
- (void)_addNavigationObservers;
- (void)_arrivalEndTimerFired;
- (void)_backgroundArrivalTimerFired;
- (void)_delayTimerFired;
- (void)_didEnterBackground:(id)background;
- (void)_invalidateTimers;
- (void)_locationExpirationTimerFired;
- (void)_locationManagerApprovalDidChange:(id)change;
- (void)_setGizmoStepIndex:(unint64_t)matchedStepIndex;
- (void)_setUserTrackingMode:(int64_t)mode animated:(BOOL)animated;
- (void)_setupConstraints;
- (void)_setupDebugUtilities;
- (void)_setupViews;
- (void)_showInitialStepIfNecessary;
- (void)_startArrivalEndTimerIfNecessary;
- (void)_stopArrivalEndTimer;
- (void)_toggleTraceControls;
- (void)_updateCompassLayout;
- (void)_updateDebugConsoleForLocation:(id)location;
- (void)_updateForMatchedStepIndex:(unint64_t)index matchedSegmentIndex:(unint64_t)segmentIndex;
- (void)_updateIdleTimer;
- (void)_updateMapRegionForSignAtIndex:(int64_t)index;
- (void)_updateStatusBarIndicatorLayout;
- (void)_updateUserLocationViewAppearanceWithMatchedLocation:(id)location;
- (void)_willEnterForeground:(id)foreground;
- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)style;
- (void)containerStyleManagerDidChangeStyle:(unint64_t)style;
- (void)dealloc;
- (void)didTapMapView:(id)view atPoint:(CGPoint)point;
- (void)idleTimerDidTimeout:(id)timeout;
- (void)mapView:(id)view didDeselectLabelMarker:(id)marker;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didSelectLabelMarker:(id)marker;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapViewDidFinishInitialUserTrackingModeAnimation:(id)animation;
- (void)mapViewDidStopUserInteraction:(id)interaction;
- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location;
- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)pptTestMoveToNextStep;
- (void)setUserTrackingViewVisible:(BOOL)visible animated:(BOOL)animated;
- (void)showOverview:(BOOL)overview andZoomToMapRegion:(BOOL)region;
- (void)statusIndicatorTypeChanged:(unint64_t)changed;
- (void)steppingPageViewController:(id)controller didChangeCurrentSign:(int64_t)sign previousSign:(int64_t)previousSign fromUserGesture:(unint64_t)gesture;
- (void)steppingPageViewControllerDidChangeSignHeight:(id)height;
- (void)steppingPageViewControllerUserDidStartScrolling:(id)scrolling;
- (void)traitCollectionDidChange:(id)change;
- (void)updateLayoutAnimated:(BOOL)animated;
- (void)updateWithDisplayedStep:(id)step;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)vlfContaineeViewControllerDidDisappearNotification:(id)notification;
- (void)vlfSessionTaskWillShowVLFUINotification:(id)notification;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation StepContainerViewController

- (BOOL)pptTestMoveToBoardStep
{
  route = [(StepContainerViewController *)self route];
  steps = [route steps];
  firstObject = [steps firstObject];

  nextBoardingStep = [firstObject nextBoardingStep];
  if (nextBoardingStep && (-[StepContainerViewController pagingVC](self, "pagingVC"), v7 = objc_claimAutoreleasedReturnValue(), [v7 signGenerator], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "signIndexForStep:", nextBoardingStep), v8, v7, v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    pagingVC = [(StepContainerViewController *)self pagingVC];
    [pagingVC setSignIndex:v9 animated:0];

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)pptTestMoveToNextStep
{
  if ([(StepContainerViewController *)self pptTestHasNextStep])
  {
    pagingVC = [(StepContainerViewController *)self pagingVC];
    [pagingVC setSignIndex:{objc_msgSend(pagingVC, "signIndex") + 1}];
  }
}

- (BOOL)pptTestHasNextStep
{
  pagingVC = [(StepContainerViewController *)self pagingVC];
  signGenerator = [pagingVC signGenerator];
  numberOfSigns = [signGenerator numberOfSigns];

  if (numberOfSigns < 2)
  {
    return 0;
  }

  pagingVC2 = [(StepContainerViewController *)self pagingVC];
  signIndex = [pagingVC2 signIndex];
  pagingVC3 = [(StepContainerViewController *)self pagingVC];
  signGenerator2 = [pagingVC3 signGenerator];
  v6 = signIndex < ([signGenerator2 numberOfSigns] - 1);

  return v6;
}

- (int64_t)pptTestCurrentStepIndex
{
  pagingVC = [(StepContainerViewController *)self pagingVC];
  signIndex = [pagingVC signIndex];

  return signIndex;
}

- (void)_toggleTraceControls
{
  if (self->_debugViewsController)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"PlaybackControls"];

    if (v4)
    {
      isShowingTraceControls = [(NavigationDebugViewsController *)self->_debugViewsController isShowingTraceControls];
      debugViewsController = self->_debugViewsController;
      if (isShowingTraceControls)
      {

        [(NavigationDebugViewsController *)debugViewsController hideTraceControlsAnimated:1];
      }

      else
      {

        [(NavigationDebugViewsController *)debugViewsController showTraceControls];
      }
    }
  }
}

- (void)_updateDebugConsoleForLocation:(id)location
{
  locationCopy = location;
  v4 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v4 isInternalInstall];

  v6 = locationCopy;
  if (isInternalInstall)
  {
    if (locationCopy)
    {
      routeMatch = [locationCopy routeMatch];
      [routeMatch locationCoordinate];
      v9 = v8;
      v11 = v10;
      routeCoordinate = [routeMatch routeCoordinate];
      step = [routeMatch step];
      if ([step transportType] == 1)
      {
        v14 = step;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      v16 = v15;
      if (v15)
      {
        maneuver = [v15 maneuver];
        if (maneuver >= 0xB)
        {
          v18 = [NSString stringWithFormat:@"(unknown: %i)", maneuver];
        }

        else
        {
          v18 = *(&off_101657510 + maneuver);
        }

        lowercaseString = [v18 lowercaseString];
      }

      else
      {
        v21 = [step routeSegmentType] - 1;
        if (v21 > 5)
        {
          lowercaseString = @"unknown";
        }

        else
        {
          lowercaseString = *(&off_1016574E0 + v21);
        }
      }

      v23 = +[MNNavigationService sharedService];
      isNavigatingFromTrace = [v23 isNavigatingFromTrace];

      if (isNavigatingFromTrace)
      {
        v25 = +[MNNavigationService sharedService];
        [v25 tracePosition];
      }

      else
      {
        v25 = +[NSDate date];
        [v25 timeIntervalSinceDate:self->_startDate];
      }

      v27 = v26;

      if (v27 >= 3600.0)
      {
        [(StepContainerViewController *)self debugHoursDurationFormatter];
      }

      else
      {
        [(StepContainerViewController *)self debugMinsDurationFormatter];
      }
      v28 = ;
      v29 = [v28 stringFromTimeInterval:v27];
      stepIndex = [routeMatch stepIndex];
      [routeMatch distanceFromRoute];
      v20 = [NSString stringWithFormat:@"%@, (%0.5f %0.5f), [%d, %0.2f], Step %d\n[%@], dist to route: %0.1fm", v29, v9, v11, routeCoordinate, *(&routeCoordinate + 1), stepIndex, lowercaseString, v31];
      if ([routeMatch isGoodMatch])
      {
        +[UIColor greenColor];
      }

      else
      {
        +[UIColor orangeColor];
      }
      v19 = ;
    }

    else
    {
      v19 = +[UIColor redColor];
      v20 = @"No location";
    }

    chromeViewController = [(ContainerViewController *)self chromeViewController];
    mapView = [chromeViewController mapView];
    _debugConsole = [mapView _debugConsole];

    [_debugConsole updateCustomText:v20 textColor:v19];
    v6 = locationCopy;
  }
}

- (NSDateComponentsFormatter)debugHoursDurationFormatter
{
  debugHoursDurationFormatter = self->_debugHoursDurationFormatter;
  if (!debugHoursDurationFormatter)
  {
    debugMinsDurationFormatter = [(StepContainerViewController *)self debugMinsDurationFormatter];
    v5 = [debugMinsDurationFormatter copy];

    [(NSDateComponentsFormatter *)v5 setAllowedUnits:[(NSDateComponentsFormatter *)v5 allowedUnits]| 0x20];
    v6 = self->_debugHoursDurationFormatter;
    self->_debugHoursDurationFormatter = v5;

    debugHoursDurationFormatter = self->_debugHoursDurationFormatter;
  }

  return debugHoursDurationFormatter;
}

- (NSDateComponentsFormatter)debugMinsDurationFormatter
{
  debugMinsDurationFormatter = self->_debugMinsDurationFormatter;
  if (!debugMinsDurationFormatter)
  {
    v4 = objc_alloc_init(NSDateComponentsFormatter);
    [(NSDateComponentsFormatter *)v4 setZeroFormattingBehavior:0];
    [(NSDateComponentsFormatter *)v4 setUnitsStyle:0];
    [(NSDateComponentsFormatter *)v4 setAllowedUnits:192];
    v5 = self->_debugMinsDurationFormatter;
    self->_debugMinsDurationFormatter = v4;

    debugMinsDurationFormatter = self->_debugMinsDurationFormatter;
  }

  return debugMinsDurationFormatter;
}

- (id)_geoRouteDetails
{
  signGenerator = [(SteppingPageViewController *)self->_pagingVC signGenerator];
  v4 = [signGenerator stepAtSignIndex:{-[SteppingPageViewController signIndex](self->_pagingVC, "signIndex")}];

  v5 = +[MNNavigationService sharedService];
  lastLocation = [v5 lastLocation];
  routeMatch = [lastLocation routeMatch];
  isGoodMatch = [routeMatch isGoodMatch];

  route = [(StepContainerViewController *)self route];
  _maps_routeIndex = [route _maps_routeIndex];

  if (v4)
  {
    stepIndex = [v4 stepIndex];
  }

  else
  {
    stepIndex = 0xFFFFFFFFLL;
  }

  signGenerator2 = [(SteppingPageViewController *)self->_pagingVC signGenerator];
  v13 = [signGenerator2 signIndexForStepIndex:self->_matchedStepIndex];

  v14 = v13 == [(SteppingPageViewController *)self->_pagingVC signIndex];
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  mapView = [chromeViewController mapView];
  v17 = [mapView userTrackingMode] != 0;

  v18 = +[MNNavigationService sharedService];
  currentRequest = [v18 currentRequest];
  [currentRequest requestTime];
  v21 = v20;

  v22 = [GEORouteDetails routeDetailsWithResultIndex:_maps_routeIndex stepID:stepIndex nearRoute:isGoodMatch nearCurrentlyDisplayedStep:v14 userTrackingOn:v17 timeSinceResponse:CFAbsoluteTimeGetCurrent() - v21];

  return v22;
}

- (void)vlfContaineeViewControllerDidDisappearNotification:(id)notification
{
  pagingVC = [(StepContainerViewController *)self pagingVC];
  view = [pagingVC view];
  [view setHidden:0];

  recenterButton = [(StepContainerViewController *)self recenterButton];
  [recenterButton setHidden:0];

  [(StepContainerViewController *)self setVlfActive:0];
  iosBasedChromeViewController = [(StepContainerViewController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarStyle" animated:0];
}

- (void)vlfSessionTaskWillShowVLFUINotification:(id)notification
{
  pagingVC = [(StepContainerViewController *)self pagingVC];
  view = [pagingVC view];
  [view setHidden:1];

  recenterButton = [(StepContainerViewController *)self recenterButton];
  [recenterButton setHidden:1];

  [(StepContainerViewController *)self setVlfActive:1];
  iosBasedChromeViewController = [(StepContainerViewController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarStyle" animated:0];
}

- (void)idleTimerDidTimeout:(id)timeout
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(ContainerViewController *)self setLayoutIfSupported:1 animated:1];
  }
}

- (void)_updateIdleTimer
{
  if (-[StepContainerViewController isViewLoaded](self, "isViewLoaded") && (-[StepContainerViewController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4) && -[ContainerViewController containeeLayout](self, "containeeLayout") != 1)
  {
    v5 = [NavIdleTimeoutTimer alloc];
    view = [(StepContainerViewController *)self view];
    window = [view window];
    v8 = [(NavIdleTimeoutTimer *)v5 initWithWindow:window];
    [(StepContainerViewController *)self setIdleTimer:v8];

    idleTimer = [(StepContainerViewController *)self idleTimer];
    [idleTimer setDelegate:self];
  }

  else
  {

    [(StepContainerViewController *)self setIdleTimer:0];
  }
}

- (id)statusBarSupplementaryView
{
  statusIndicatorView = [(StepContainerViewController *)self statusIndicatorView];
  if ([statusIndicatorView isVisible])
  {
    statusIndicatorView2 = [(StepContainerViewController *)self statusIndicatorView];
  }

  else
  {
    statusIndicatorView2 = 0;
  }

  return statusIndicatorView2;
}

- (void)_updateStatusBarIndicatorLayout
{
  if (_UISolariumEnabled())
  {
    statusIndicatorView = self->_statusIndicatorView;
    preferredStatusBarStyle = [(StepContainerViewController *)self preferredStatusBarStyle];
    v5 = statusIndicatorView;
  }

  else
  {
    containerStyle = [(ContainerViewController *)self containerStyle];
    if (containerStyle <= 7 && ((1 << containerStyle) & 0xE3) != 0)
    {
      v5 = self->_statusIndicatorView;
      preferredStatusBarStyle = 1;
    }

    else
    {
      traitCollection = [(StepContainerViewController *)self traitCollection];
      if ([traitCollection userInterfaceStyle] == 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = 3;
      }

      v5 = self->_statusIndicatorView;
      preferredStatusBarStyle = v8;
    }
  }

  [(StatusIndicatorView *)v5 updateWithStatusBarStyle:preferredStatusBarStyle];
}

- (void)statusIndicatorTypeChanged:(unint64_t)changed
{
  statusIndicatorView = [(StepContainerViewController *)self statusIndicatorView];
  [statusIndicatorView setType:changed];

  iosBasedChromeViewController = [(StepContainerViewController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarSupplementaryView" animated:1];
}

- (StatusIndicatorView)statusIndicatorView
{
  statusIndicatorView = self->_statusIndicatorView;
  if (!statusIndicatorView)
  {
    v4 = [[StatusIndicatorView alloc] initForLimitedMode:1];
    v5 = self->_statusIndicatorView;
    self->_statusIndicatorView = v4;

    statusIndicatorView = self->_statusIndicatorView;
  }

  return statusIndicatorView;
}

- (id)statusBarBackgroundViewStyle
{
  if ([(StepContainerViewController *)self isVLFActive]|| _UISolariumEnabled())
  {
    goto LABEL_7;
  }

  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
LABEL_6:

LABEL_7:
    v5 = [StatusBarBackgroundViewStyle defaultBlurredStyleWithDefaultColorProvider:&stru_1016309F0];
    goto LABEL_8;
  }

  v4 = +[UIDevice currentDevice];
  if ([v4 userInterfaceIdiom] == 5 || (v7 = -[ContainerViewController containerStyle](self, "containerStyle"), v7 > 7) || ((1 << v7) & 0xE3) == 0)
  {

    goto LABEL_6;
  }

  v8 = [StatusBarBackgroundViewStyle alloc];
  theme = [(StepContainerViewController *)self theme];
  navSignPrimaryColor = [theme navSignPrimaryColor];
  v5 = [(StatusBarBackgroundViewStyle *)v8 initWithColor:navSignPrimaryColor];

LABEL_8:

  return v5;
}

- (int64_t)preferredStatusBarStyle
{
  if ([(StepContainerViewController *)self isVLFActive])
  {
    return 0;
  }

  v4 = +[UIDevice currentDevice];
  if ([v4 userInterfaceIdiom] == 1)
  {
    goto LABEL_6;
  }

  v5 = +[UIDevice currentDevice];
  if ([v5 userInterfaceIdiom] == 5 || (v8 = -[ContainerViewController containerStyle](self, "containerStyle"), v8 > 7) || ((1 << v8) & 0xE3) == 0)
  {

LABEL_6:
LABEL_7:
    theme = [(StepContainerViewController *)self theme];
    statusBarStyle = [theme statusBarStyle];

    return statusBarStyle;
  }

  v9 = _UISolariumEnabled();

  if (v9)
  {
    goto LABEL_7;
  }

  return 1;
}

- (void)didTapMapView:(id)view atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  v7 = +[MNNavigationService sharedService];
  isNavigatingFromTrace = [v7 isNavigatingFromTrace];

  if (isNavigatingFromTrace)
  {
    [(StepContainerViewController *)self _toggleTraceControls];
  }

  currentViewController = [(ContainerViewController *)self currentViewController];
  if ([currentViewController conformsToProtocol:&OBJC_PROTOCOL___MapViewResponderHandling])
  {
    [currentViewController didTapMapView:viewCopy atPoint:{x, y}];
  }
}

- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  if (!toState)
  {
    v7 = [(StepContainerViewController *)self stepActionCoordinator:service];
    [v7 pressedEndWithSender:self];
  }
}

- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  route = [service route];
  self->_hasArrived = [route isLegIndexOfLastLeg:index];

  if (self->_hasArrived)
  {

    [(StepContainerViewController *)self _startArrivalEndTimerIfNecessary];
  }
}

- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  serviceCopy = service;
  v9 = +[NSDate date];
  tracePlayer = [(NavigationDebugViewsController *)self->_debugViewsController tracePlayer];
  GEOConfigGetDouble();
  v12 = v11;
  if (tracePlayer)
  {
    [tracePlayer speedMultiplier];
  }

  else
  {
    v13 = 1.0;
  }

  v14 = v12 / v13;
  [v9 timeIntervalSinceDate:self->_startDate];
  if (v15 >= v14)
  {
    [(StepContainerViewController *)self _updateForMatchedStepIndex:index matchedSegmentIndex:segmentIndex];
  }

  else if (!self->_delayAutoAdvanceTimer)
  {
    v16 = v14 - v15;
    objc_initWeak(&location, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100EA0C24;
    v19[3] = &unk_101661BC8;
    objc_copyWeak(&v20, &location);
    v17 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v19 block:v16];
    delayAutoAdvanceTimer = self->_delayAutoAdvanceTimer;
    self->_delayAutoAdvanceTimer = v17;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location
{
  objc_storeStrong(&self->_previousMatchedLocation, location);
  locationCopy = location;
  [(StepContainerViewController *)self _updateUserLocationViewAppearanceWithMatchedLocation:locationCopy];
  debugLocationManager = self->_debugLocationManager;
  rawLocation = [locationCopy rawLocation];
  [(NavDebugLocationManager *)debugLocationManager addLocation:rawLocation];

  [(StepContainerViewController *)self _updateDebugConsoleForLocation:locationCopy];
}

- (BOOL)_isTrackingLocation
{
  v2 = +[MNNavigationService sharedService];
  isTrackingCurrentLocation = [v2 isTrackingCurrentLocation];

  return isTrackingCurrentLocation;
}

- (void)_setGizmoStepIndex:(unint64_t)matchedStepIndex
{
  signGenerator = [(SteppingPageViewController *)self->_pagingVC signGenerator];
  v6 = [signGenerator signIndexForStepIndex:self->_matchedStepIndex];

  signGenerator2 = [(SteppingPageViewController *)self->_pagingVC signGenerator];
  v8 = [signGenerator2 signIndexForStepIndex:matchedStepIndex];

  if (v6 == v8)
  {
    matchedStepIndex = self->_matchedStepIndex;
  }

  v9 = +[MNNavigationService sharedService];
  [v9 setDisplayedStepIndex:matchedStepIndex];
}

- (void)_invalidateTimers
{
  [(NSTimer *)self->_arrivalEndTimer invalidate];
  arrivalEndTimer = self->_arrivalEndTimer;
  self->_arrivalEndTimer = 0;

  [(NSTimer *)self->_backgroundArrivalTimer invalidate];
  backgroundArrivalTimer = self->_backgroundArrivalTimer;
  self->_backgroundArrivalTimer = 0;

  [(NSTimer *)self->_locationExpirationTimer invalidate];
  locationExpirationTimer = self->_locationExpirationTimer;
  self->_locationExpirationTimer = 0;

  [(NSTimer *)self->_delayAutoAdvanceTimer invalidate];
  delayAutoAdvanceTimer = self->_delayAutoAdvanceTimer;
  self->_delayAutoAdvanceTimer = 0;

  [(StepContainerViewController *)self setIdleTimer:0];
}

- (void)_delayTimerFired
{
  delayAutoAdvanceTimer = self->_delayAutoAdvanceTimer;
  self->_delayAutoAdvanceTimer = 0;

  previousMatchedLocation = self->_previousMatchedLocation;
  if (previousMatchedLocation)
  {
    routeMatch = [(MNLocation *)previousMatchedLocation routeMatch];
    stepIndex = [routeMatch stepIndex];
    route = [routeMatch route];
    v7 = [route segmentIndexForStepIndex:stepIndex];

    [(StepContainerViewController *)self _updateForMatchedStepIndex:stepIndex matchedSegmentIndex:v7];
  }
}

- (void)_backgroundArrivalTimerFired
{
  [(NSTimer *)self->_arrivalEndTimer invalidate];
  arrivalEndTimer = self->_arrivalEndTimer;
  self->_arrivalEndTimer = 0;

  [(NSTimer *)self->_backgroundArrivalTimer invalidate];
  backgroundArrivalTimer = self->_backgroundArrivalTimer;
  self->_backgroundArrivalTimer = 0;

  stepActionCoordinator = [(StepContainerViewController *)self stepActionCoordinator];
  [stepActionCoordinator pressedEndWithSender:self];
}

- (void)_locationExpirationTimerFired
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  userLocationView = [chromeViewController userLocationView];

  v3 = userLocationView;
  if (userLocationView)
  {
    isStale = [userLocationView isStale];
    v3 = userLocationView;
    if ((isStale & 1) == 0)
    {
      [userLocationView locationManagerFailedToUpdateLocation];
      v3 = userLocationView;
    }
  }
}

- (void)_arrivalEndTimerFired
{
  [(NSTimer *)self->_arrivalEndTimer invalidate];
  arrivalEndTimer = self->_arrivalEndTimer;
  self->_arrivalEndTimer = 0;

  [(NSTimer *)self->_backgroundArrivalTimer invalidate];
  backgroundArrivalTimer = self->_backgroundArrivalTimer;
  self->_backgroundArrivalTimer = 0;

  stepActionCoordinator = [(StepContainerViewController *)self stepActionCoordinator];
  [stepActionCoordinator pressedEndWithSender:self];
}

- (void)_stopArrivalEndTimer
{
  [(NSTimer *)self->_arrivalEndTimer invalidate];
  arrivalEndTimer = self->_arrivalEndTimer;
  self->_arrivalEndTimer = 0;
}

- (void)_startArrivalEndTimerIfNecessary
{
  if (self->_hasArrived)
  {
    [(StepContainerViewController *)self _stopArrivalEndTimer];
    objc_initWeak(&location, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100EA1250;
    v5[3] = &unk_101661BC8;
    objc_copyWeak(&v6, &location);
    v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v5 block:15.0];
    arrivalEndTimer = self->_arrivalEndTimer;
    self->_arrivalEndTimer = v3;

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_didEnterBackground:(id)background
{
  backgroundCopy = background;
  object = [backgroundCopy object];
  view = [(StepContainerViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (object == windowScene)
  {
    previousMatchedLocation = self->_previousMatchedLocation;
    if (previousMatchedLocation)
    {
      routeMatch = [(MNLocation *)previousMatchedLocation routeMatch];
      step = [routeMatch step];

      if (step)
      {
        if ([step isArrivalStep])
        {
          stepActionCoordinator = [(StepContainerViewController *)self stepActionCoordinator];
          [stepActionCoordinator pressedEndWithSender:self];
        }

        else
        {
          stepActionCoordinator = -[GEOComposedRoute segmentForStepIndex:](self->_route, "segmentForStepIndex:", [step stepIndex]);
          segments = [(GEOComposedRoute *)self->_route segments];
          lastObject = [segments lastObject];

          if (lastObject == stepActionCoordinator)
          {
            [stepActionCoordinator expectedTime];
            v16 = 15.0;
            if (v15 * 3.0 >= 15.0)
            {
              [stepActionCoordinator expectedTime];
              v16 = v17 * 3.0;
            }

            objc_initWeak(&location, self);
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = sub_100EA14C8;
            v20[3] = &unk_101661BC8;
            objc_copyWeak(&v21, &location);
            v18 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v20 block:v16];
            backgroundArrivalTimer = self->_backgroundArrivalTimer;
            self->_backgroundArrivalTimer = v18;

            objc_destroyWeak(&v21);
            objc_destroyWeak(&location);
          }
        }
      }
    }
  }
}

- (void)_willEnterForeground:(id)foreground
{
  object = [foreground object];
  view = [(StepContainerViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  v7 = object;
  if (object == windowScene)
  {
    [(NSTimer *)self->_backgroundArrivalTimer invalidate];
    backgroundArrivalTimer = self->_backgroundArrivalTimer;
    self->_backgroundArrivalTimer = 0;

    v7 = object;
  }
}

- (double)maximumSignHeight
{
  view = [(StepContainerViewController *)self view];
  [view bounds];
  v5 = v4;
  topContentView = [(OverlayContainerViewController *)self topContentView];
  [topContentView frame];
  v8 = v7;
  [(ContainerViewController *)self edgePadding];
  v10 = v9;
  stepActionCoordinator = [(StepContainerViewController *)self stepActionCoordinator];
  trayContaineeViewController = [stepActionCoordinator trayContaineeViewController];
  [trayContaineeViewController heightForLayout:1];
  v14 = v5 - (v10 + v8 + v13);
  v15 = 512.0;
  if (v14 < 512.0)
  {
    view2 = [(StepContainerViewController *)self view];
    [view2 bounds];
    v18 = v17;
    topContentView2 = [(OverlayContainerViewController *)self topContentView];
    [topContentView2 frame];
    v21 = v20;
    [(ContainerViewController *)self edgePadding];
    v23 = v22;
    stepActionCoordinator2 = [(StepContainerViewController *)self stepActionCoordinator];
    trayContaineeViewController2 = [stepActionCoordinator2 trayContaineeViewController];
    [trayContaineeViewController2 heightForLayout:1];
    v15 = v18 - (v23 + v21 + v26);
  }

  return v15;
}

- (void)steppingPageViewControllerDidChangeSignHeight:(id)height
{
  heightCopy = height;
  [(StepContainerViewController *)self maximumSignHeight];
  v6 = v5;
  signHeightConstraint = [heightCopy signHeightConstraint];
  [signHeightConstraint constant];
  v9 = v8;

  if (v9 <= v6)
  {
    signHeightConstraint2 = [heightCopy signHeightConstraint];
    [signHeightConstraint2 constant];
    [(NSLayoutConstraint *)self->_scrollViewHeightConstraint setConstant:?];

    [(UIScrollView *)self->_verticalSignScrollView setScrollEnabled:0];
  }

  else
  {
    [(UIScrollView *)self->_verticalSignScrollView setScrollEnabled:1];
    [(NSLayoutConstraint *)self->_scrollViewHeightConstraint setConstant:v6];
  }

  containeeLayout = [(ContainerViewController *)self containeeLayout];
  if (containeeLayout - 3 >= 2)
  {
    if (containeeLayout != 5)
    {
      goto LABEL_18;
    }

    currentViewController2 = +[UIDevice currentDevice];
    userInterfaceIdiom = [currentViewController2 userInterfaceIdiom];
    if (userInterfaceIdiom != 1)
    {
      cardPresentationController2 = +[UIDevice currentDevice];
      if ([cardPresentationController2 userInterfaceIdiom] != 5)
      {
        goto LABEL_17;
      }
    }

    currentViewController = [(ContainerViewController *)self currentViewController];
    cardPresentationController = [currentViewController cardPresentationController];
    presentedModally = [cardPresentationController presentedModally];

    if (userInterfaceIdiom != 1)
    {

      if ((presentedModally & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    if (presentedModally)
    {
LABEL_16:
      currentViewController2 = [(ContainerViewController *)self currentViewController];
      cardPresentationController2 = [currentViewController2 cardPresentationController];
      [cardPresentationController2 updateHeightForCurrentLayout];
LABEL_17:
    }
  }

  else
  {
    v12 = +[UIDevice currentDevice];
    if ([v12 userInterfaceIdiom] == 1)
    {

      goto LABEL_16;
    }

    v18 = +[UIDevice currentDevice];
    userInterfaceIdiom2 = [v18 userInterfaceIdiom];

    if (userInterfaceIdiom2 == 5)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
}

- (void)steppingPageViewControllerUserDidStartScrolling:(id)scrolling
{
  self->_mustNotBreakUserTrackingMode = 0;
  [(StepContainerViewController *)self _setUserTrackingMode:0 animated:1];

  [(StepContainerViewController *)self _stopArrivalEndTimer];
}

- (void)steppingPageViewController:(id)controller didChangeCurrentSign:(int64_t)sign previousSign:(int64_t)previousSign fromUserGesture:(unint64_t)gesture
{
  controllerCopy = controller;
  if (gesture)
  {
    [(StepContainerViewController *)self _startArrivalEndTimerIfNecessary];
  }

  if (sign != previousSign)
  {
    route = [(StepContainerViewController *)self route];
    signGenerator = [(SteppingPageViewController *)self->_pagingVC signGenerator];
    v12 = [signGenerator stepAtSignIndex:{-[SteppingPageViewController signIndex](self->_pagingVC, "signIndex")}];

    if (v12)
    {
      stepIndex = [v12 stepIndex];
    }

    else
    {
      stepIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    v14 = [route segmentIndexForStepIndex:stepIndex];
    stepActionCoordinator = [(StepContainerViewController *)self stepActionCoordinator];
    trayContaineeViewController = [stepActionCoordinator trayContaineeViewController];
    [trayContaineeViewController setCurrentStepIndex:stepIndex];

    mapView = [(StepContainerViewController *)self mapView];
    [mapView _setRouteContextInspectedSegmentIndex:v14 inspectedStepIndex:stepIndex];

    if (sign <= 0x7FFFFFFFFFFFFFFELL)
    {
      [route setCurrentDisplayStep:sign];
    }

    v18 = +[NSDate date];
    [v18 timeIntervalSinceDate:self->_lastMapTouchDate];
    v20 = v19;

    if (gesture || (!self->_lastMapTouchDate || v20 > 4.0) && (-[StepContainerViewController mapView](self, "mapView"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 userTrackingMode], v21, !v22))
    {
      [(StepContainerViewController *)self _updateMapRegionForSignAtIndex:sign];
    }

    [(StepContainerViewController *)self _setGizmoStepIndex:stepIndex];
  }
}

- (void)mapViewDidFinishInitialUserTrackingModeAnimation:(id)animation
{
  animationCopy = animation;
  if ([animationCopy userTrackingMode])
  {
    routeMatch = [(MNLocation *)self->_previousMatchedLocation routeMatch];
    transitTripStep = [routeMatch transitTripStep];

    if ([transitTripStep maneuver] == 5)
    {
      previousTransitStep = [transitTripStep previousTransitStep];

      transitTripStep = previousTransitStep;
    }

    if ([(StepContainerViewController *)self _isStepOnTransitLine:transitTripStep])
    {
      [transitTripStep startGeoCoordinate];
      [transitTripStep endGeoCoordinate];
      GEOCalculateDistance();
      v8 = fmin(v7 * 3.3, 8000.0);
      v9 = v8 * 0.8;
      v10 = v8 * 1.2;
    }

    else
    {
      v9 = 0.0;
      v8 = 1500.0;
      v10 = 4500.0;
    }

    camera = [animationCopy camera];
    [camera altitude];
    if (v12 < v9 || ([camera altitude], v10 < v13))
    {
      v14 = [camera copy];

      [v14 setAltitude:v8];
      [animationCopy setCamera:v14 animated:1];
      camera = v14;
    }
  }
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  annotationViewCopy = annotationView;
  viewCopy = view;
  annotation = [annotationViewCopy annotation];
  [viewCopy deselectAnnotation:annotation animated:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [annotationViewCopy isVLFPuckVisible])
  {
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    appCoordinator = [chromeViewController appCoordinator];
    platformController = [appCoordinator platformController];
    auxiliaryTasksManager = [platformController auxiliaryTasksManager];
    v12 = [auxiliaryTasksManager auxilaryTaskForClass:objc_opt_class()];

    [v12 showVLFUI];
  }
}

- (void)mapView:(id)view didDeselectLabelMarker:(id)marker
{
  markerCopy = marker;
  stepActionCoordinator = [(StepContainerViewController *)self stepActionCoordinator];
  [stepActionCoordinator deselectVKLabelMarker:markerCopy];
}

- (void)mapView:(id)view didSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  stepActionCoordinator = [(StepContainerViewController *)self stepActionCoordinator];
  [stepActionCoordinator selectVKLabelMarker:markerCopy];
}

- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  stepActionCoordinator = [(StepContainerViewController *)self stepActionCoordinator];
  v7 = [stepActionCoordinator canSelectVKLabelMarker:markerCopy];

  return v7;
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  if (self->_userIsInteractingWithMap)
  {
    self->_mustNotBreakUserTrackingMode = 0;
  }
}

- (void)mapViewDidStopUserInteraction:(id)interaction
{
  self->_userIsInteractingWithMap = 0;
  v4 = +[NSDate date];
  lastMapTouchDate = self->_lastMapTouchDate;
  self->_lastMapTouchDate = v4;

  [(StepContainerViewController *)self _startArrivalEndTimerIfNecessary];
}

- (void)_updateForMatchedStepIndex:(unint64_t)index matchedSegmentIndex:(unint64_t)segmentIndex
{
  matchedStepIndex = self->_matchedStepIndex;
  [(SteppingSignGenerator *)self->_signGenerator signIndexForStepIndex:index, segmentIndex];
  self->_matchedStepIndex = index;
  if (self->_isGoingToEnterGuidance)
  {
    self->_isGoingToEnterGuidance = 0;
  }

  collectionView = [(SteppingPageViewController *)self->_pagingVC collectionView];
  if ([collectionView isTracking])
  {
    goto LABEL_6;
  }

  collectionView2 = [(SteppingPageViewController *)self->_pagingVC collectionView];
  if ([collectionView2 isDragging])
  {

LABEL_6:

    return;
  }

  _isTrackingLocation = [(StepContainerViewController *)self _isTrackingLocation];

  if (_isTrackingLocation)
  {
    signGenerator = [(SteppingPageViewController *)self->_pagingVC signGenerator];
    v10 = [signGenerator signIndexForStepIndex:index];

    v11 = v10 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v10;
    signIndex = [(SteppingPageViewController *)self->_pagingVC signIndex];
    if (index != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v11 == signIndex)
      {
        if (matchedStepIndex == index)
        {
          return;
        }

        mapView = [(StepContainerViewController *)self mapView];
        userTrackingMode = [mapView userTrackingMode];

        if (!userTrackingMode)
        {
          v15 = [(GEOComposedRoute *)self->_route segmentForStepIndex:index];
          if ([v15 type] == 6)
          {
            [(StepContainerViewController *)self _updateMapRegionForSignAtIndex:v11];
          }
        }
      }

      else
      {
        matchedSignIndex = self->_matchedSignIndex;
        if (matchedSignIndex != 0x7FFFFFFFFFFFFFFFLL && v11 <= matchedSignIndex)
        {
          return;
        }

        signIndex2 = [(SteppingPageViewController *)self->_pagingVC signIndex];
        signGenerator2 = [(SteppingPageViewController *)self->_pagingVC signGenerator];
        v19 = [signGenerator2 signIndexForStepIndex:index];

        if (signIndex2 >= v19)
        {
          return;
        }

        [(SteppingPageViewController *)self->_pagingVC setSignIndex:v11];
        self->_matchedSignIndex = v11;
      }

      [(StepContainerViewController *)self _setGizmoStepIndex:index];
    }
  }
}

- (BOOL)_shouldShowHeadingIndicatorForStep:(id)step
{
  stepCopy = step;
  stepActionCoordinator = [(StepContainerViewController *)self stepActionCoordinator];
  isAuthorizedForPreciseLocation = [stepActionCoordinator isAuthorizedForPreciseLocation];

  if (stepCopy)
  {
    if ([stepCopy transportType] == 1)
    {
      maneuver = [stepCopy maneuver];
      if (maneuver - 4 <= 5)
      {
        isAuthorizedForPreciseLocation &= (0x27u >> (maneuver - 4)) ^ 1;
      }
    }
  }

  return isAuthorizedForPreciseLocation & 1;
}

- (BOOL)_isStepOnTransitLine:(id)line
{
  lineCopy = line;
  v4 = lineCopy;
  if (lineCopy && [lineCopy routeSegmentType] == 6)
  {
    v5 = v4;
    v6 = [v5 maneuver] == 4 || objc_msgSend(v5, "maneuver") == 5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateUserLocationViewAppearanceWithMatchedLocation:(id)location
{
  locationCopy = location;
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  chromeContext = [(ContainerViewController *)self chromeContext];
  v7 = [chromeViewController isCurrentContext:chromeContext];

  if (locationCopy && v7)
  {
    routeMatch = [locationCopy routeMatch];
    step = [routeMatch step];

    v10 = [(StepContainerViewController *)self _isStepOnTransitLine:step];
    mapView = [(StepContainerViewController *)self mapView];
    _shouldSplitRouteLine = [mapView _shouldSplitRouteLine];

    chromeViewController2 = [(ContainerViewController *)self chromeViewController];
    userLocationView = [chromeViewController2 userLocationView];

    if (userLocationView)
    {
      _shouldSplitRouteLine = ([locationCopy isDirectional] & v10);
      [userLocationView updateStateFromLocation:locationCopy duration:0.0];
    }

    mapView2 = [(StepContainerViewController *)self mapView];
    _shouldSplitRouteLine2 = [mapView2 _shouldSplitRouteLine];

    if (_shouldSplitRouteLine != _shouldSplitRouteLine2)
    {
      mapView3 = [(StepContainerViewController *)self mapView];
      [mapView3 _setShouldSplitRouteLine:_shouldSplitRouteLine];
    }

    v18 = [(StepContainerViewController *)self _shouldShowHeadingIndicatorForStep:step];
    mapView4 = [(StepContainerViewController *)self mapView];
    [mapView4 _setShowHeadingIndicatorForStepping:v18];

    [(NSTimer *)self->_locationExpirationTimer invalidate];
    expirationDate = [locationCopy expirationDate];

    if (expirationDate)
    {
      expirationDate2 = [locationCopy expirationDate];
      [expirationDate2 timeIntervalSinceNow];
      v22 = 0.0;
      if (v23 > 0.0)
      {
        expirationDate3 = [locationCopy expirationDate];
        [expirationDate3 timeIntervalSinceNow];
        v22 = v25;
      }

      objc_initWeak(&location, self);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100EA2608;
      v28[3] = &unk_101661BC8;
      objc_copyWeak(&v29, &location);
      v26 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v28 block:v22];
      locationExpirationTimer = self->_locationExpirationTimer;
      self->_locationExpirationTimer = v26;

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }
  }
}

- (void)setUserTrackingViewVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_userTrackingViewVisible != visible)
  {
    v27 = v7;
    v28 = v6;
    v29 = v4;
    v30 = v5;
    animatedCopy = animated;
    self->_userTrackingViewVisible = visible;
    v10 = self->_recenterButton;
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100EA27C8;
    v24 = &unk_101661AE0;
    v11 = v10;
    v25 = v11;
    visibleCopy = visible;
    v12 = objc_retainBlock(&v21);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100EA281C;
    v18 = &unk_1016574C0;
    v19 = v11;
    LOBYTE(v20) = visible;
    v13 = v11;
    v14 = objc_retainBlock(&v15);
    if (animatedCopy)
    {
      [UIView animateWithDuration:v12 animations:v14 completion:0.25, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24];
    }

    else
    {
      (v12[2])(v12);
      (v14[2])(v14, 1);
    }
  }
}

- (void)_locationManagerApprovalDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100EA28AC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_setUserTrackingMode:(int64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  if (mode && self->_matchedStepIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    signGenerator = [(SteppingPageViewController *)self->_pagingVC signGenerator];
    v8 = [signGenerator signIndexForStepIndex:self->_matchedStepIndex];

    [(SteppingPageViewController *)self->_pagingVC setSignIndex:v8];
  }

  mapView = [(StepContainerViewController *)self mapView];
  [mapView setUserTrackingMode:mode animated:animatedCopy];
}

- (void)_updateMapRegionForSignAtIndex:(int64_t)index
{
  if (!self->_userIsInteractingWithMap)
  {
    signGenerator = [(SteppingPageViewController *)self->_pagingVC signGenerator];
    matchedStepIndex = self->_matchedStepIndex;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100EA2AEC;
    v8[3] = &unk_101657498;
    v8[4] = self;
    [signGenerator rectForSignAtIndex:index currentStepIndex:matchedStepIndex handler:v8];

    if (self->_showingOverview)
    {
      stepActionCoordinator = [(StepContainerViewController *)self stepActionCoordinator];
      [stepActionCoordinator viewController:self showOverview:0 zoomToMapRegion:0];
    }
  }
}

- (MapCameraController)mapCameraController
{
  mapCameraController = self->_mapCameraController;
  if (!mapCameraController)
  {
    v4 = [MapCameraController alloc];
    mapView = [(StepContainerViewController *)self mapView];
    v6 = [(MapCameraController *)v4 initWithMapView:mapView];
    v7 = self->_mapCameraController;
    self->_mapCameraController = v6;

    mapCameraController = self->_mapCameraController;
  }

  return mapCameraController;
}

- (MKMapView)mapView
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (id)passThroughView
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  passThroughView = [chromeViewController passThroughView];

  return passThroughView;
}

- (void)containerStyleManagerDidChangeStyle:(unint64_t)style
{
  v5.receiver = self;
  v5.super_class = StepContainerViewController;
  [(ContainerViewController *)&v5 containerStyleManagerDidChangeStyle:style];
  [(StepContainerViewController *)self _showInitialStepIfNecessary];
  iosBasedChromeViewController = [(StepContainerViewController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarStyle" animated:0];
}

- (double)availableHeight
{
  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v4 userInterfaceIdiom];

    if (userInterfaceIdiom != 5)
    {
LABEL_9:
      v23.receiver = self;
      v23.super_class = StepContainerViewController;
      [(ContainerViewController *)&v23 availableHeight];
      return v21;
    }
  }

  containerStyle = [(ContainerViewController *)self containerStyle];
  if (containerStyle > 6 || ((1 << containerStyle) & 0x54) == 0)
  {
    goto LABEL_9;
  }

  view = [(StepContainerViewController *)self view];
  [view bounds];
  v9 = v8;
  topContentView = [(OverlayContainerViewController *)self topContentView];
  [topContentView frame];
  MaxY = CGRectGetMaxY(v24);
  [(ContainerViewController *)self edgePadding];
  v13 = v12 + MaxY;
  v14 = 0.0;
  if (v9 >= v13)
  {
    view2 = [(StepContainerViewController *)self view];
    [view2 bounds];
    v17 = v16;
    topContentView2 = [(OverlayContainerViewController *)self topContentView];
    [topContentView2 frame];
    v19 = CGRectGetMaxY(v25);
    [(ContainerViewController *)self edgePadding];
    v14 = v17 - (v19 + v20);
  }

  return v14;
}

- (double)topEdgeInset
{
  if ([(StepContainerViewController *)self isVLFActive])
  {
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    view = [chromeViewController view];
    [view safeAreaInsets];
    v6 = v5;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = StepContainerViewController;
    [(OverlayContainerViewController *)&v9 topEdgeInset];
    return v7;
  }

  return v6;
}

- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)style
{
  v14.receiver = self;
  v14.super_class = StepContainerViewController;
  [(OverlayContainerViewController *)&v14 containerStyleManagerConfigureLayoutForStyle:?];
  v5 = &OBJC_IVAR___StepContainerViewController__userLocationTrailingConstraint;
  v6 = &OBJC_IVAR___StepContainerViewController__userLocationLeadingConstraint;
  v7 = 0.0;
  if (style <= 7 && ((1 << style) & 0xE3) != 0)
  {
    [(ContainerViewController *)self attributionVerticalPadding];
    v5 = &OBJC_IVAR___StepContainerViewController__userLocationLeadingConstraint;
    v6 = &OBJC_IVAR___StepContainerViewController__userLocationTrailingConstraint;
  }

  [(NSLayoutConstraint *)self->_userLocationBottomConstraint setConstant:v7];
  [*(&self->super.super.super.super.super.super.super.isa + *v6) setActive:0];
  [*(&self->super.super.super.super.super.super.super.isa + *v5) setActive:1];
  topContentView = [(OverlayContainerViewController *)self topContentView];
  layer = [topContentView layer];
  [layer cornerRadius];
  v11 = v10;
  view = [(SteppingPageViewController *)self->_pagingVC view];
  layer2 = [view layer];
  [layer2 setCornerRadius:v11];
}

- (void)updateLayoutAnimated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = StepContainerViewController;
  [(ContainerViewController *)&v4 updateLayoutAnimated:animated];
  [(StepContainerViewController *)self _updateIdleTimer];
}

- (unint64_t)originalLayoutForViewController:(id)controller
{
  controllerCopy = controller;
  stepActionCoordinator = [(StepContainerViewController *)self stepActionCoordinator];
  v6 = [stepActionCoordinator originalLayoutForViewController:controllerCopy];

  return v6;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = StepContainerViewController;
  [(ContainerViewController *)&v4 traitCollectionDidChange:change];
  [(StepContainerViewController *)self _updateStatusBarIndicatorLayout];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = StepContainerViewController;
  [(ContainerViewController *)&v7 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinator];
  v5 = objc_alloc_init(NSMutableDictionary);
  isExpandedMapping = self->_isExpandedMapping;
  self->_isExpandedMapping = v5;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = StepContainerViewController;
  [(ContainerViewController *)&v9 viewDidDisappear:disappear];
  debugViewsController = self->_debugViewsController;
  overlayView = [(OverlayContainerViewController *)self overlayView];
  [(NavigationDebugViewsController *)debugViewsController removeDebugViewsFromView:overlayView];

  [(NavDebugLocationManager *)self->_debugLocationManager setMapView:0];
  debugLocationManager = self->_debugLocationManager;
  self->_debugLocationManager = 0;

  mapView = [(StepContainerViewController *)self mapView];
  _debugConsole = [mapView _debugConsole];
  [_debugConsole setCustomTextEnabled:0];

  [(StepContainerViewController *)self _invalidateTimers];
}

- (void)_showInitialStepIfNecessary
{
  view = [(StepContainerViewController *)self view];
  superview = [view superview];
  if (superview)
  {
    v4 = superview;
    containerStyle = [(ContainerViewController *)self containerStyle];

    if (!containerStyle)
    {
      return;
    }

    initialStepIndex = self->_initialStepIndex;
    if (initialStepIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    steps = [(GEOComposedRoute *)self->_route steps];
    v8 = [steps count];

    if (initialStepIndex >= v8)
    {
      return;
    }

    steps2 = [(GEOComposedRoute *)self->_route steps];
    v12 = [steps2 objectAtIndexedSubscript:self->_initialStepIndex];

    v10 = v12;
    if (v12)
    {
      [(StepContainerViewController *)self updateWithDisplayedStep:v12];
      -[StepContainerViewController _setGizmoStepIndex:](self, "_setGizmoStepIndex:", [v12 stepIndex]);
      v10 = v12;
    }

    self->_initialStepIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = view;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = StepContainerViewController;
  [(OverlayContainerViewController *)&v4 viewDidAppear:appear];
  [(StepContainerViewController *)self _showInitialStepIfNecessary];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = StepContainerViewController;
  [(ContainerViewController *)&v6 viewWillAppear:appear];
  [(StepContainerViewController *)self _setupDebugUtilities];
  if ([(StepContainerViewController *)self _isTrackingLocation])
  {
    v4 = +[MNNavigationService sharedService];
    lastLocation = [v4 lastLocation];

    [(StepContainerViewController *)self _updateUserLocationViewAppearanceWithMatchedLocation:lastLocation];
  }

  if (self->_hasDesiredUserTrackingMode)
  {
    self->_mustNotBreakUserTrackingMode = 1;
    [(StepContainerViewController *)self _setUserTrackingMode:self->_desiredUserTrackingMode animated:1];
    self->_hasDesiredUserTrackingMode = 0;
  }

  [(StepContainerViewController *)self _startArrivalEndTimerIfNecessary];
  [(StepContainerViewController *)self _updateIdleTimer];
  [(StepContainerViewController *)self _updateStatusBarIndicatorLayout];
}

- (void)_updateCompassLayout
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
    chromeViewController2 = [(ContainerViewController *)self chromeViewController];
    floatingControlsOverlay = [chromeViewController2 floatingControlsOverlay];
    [floatingControlsOverlay margin];
    v12 = v15;

    v6 = v12;
  }

  chromeViewController3 = [(ContainerViewController *)self chromeViewController];
  mapView2 = [chromeViewController3 mapView];
  [mapView2 _setCompassInsets:{v6, v8, v10, v12}];
}

- (void)_setupConstraints
{
  heightAnchor = [(UIScrollView *)self->_verticalSignScrollView heightAnchor];
  v4 = [heightAnchor constraintEqualToConstant:0.0];
  scrollViewHeightConstraint = self->_scrollViewHeightConstraint;
  self->_scrollViewHeightConstraint = v4;

  innerLayoutGuide = [(OverlayContainerViewController *)self innerLayoutGuide];
  bottomAnchor = [innerLayoutGuide bottomAnchor];
  bottomAnchor2 = [(UIButton *)self->_recenterButton bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  userLocationBottomConstraint = self->_userLocationBottomConstraint;
  self->_userLocationBottomConstraint = v9;

  leadingAnchor = [(UIButton *)self->_recenterButton leadingAnchor];
  innerLayoutGuide2 = [(OverlayContainerViewController *)self innerLayoutGuide];
  leadingAnchor2 = [innerLayoutGuide2 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  userLocationLeadingConstraint = self->_userLocationLeadingConstraint;
  self->_userLocationLeadingConstraint = v14;

  innerLayoutGuide3 = [(OverlayContainerViewController *)self innerLayoutGuide];
  trailingAnchor = [innerLayoutGuide3 trailingAnchor];
  trailingAnchor2 = [(UIButton *)self->_recenterButton trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  userLocationTrailingConstraint = self->_userLocationTrailingConstraint;
  self->_userLocationTrailingConstraint = v19;

  topAnchor = [(UIScrollView *)self->_verticalSignScrollView topAnchor];
  topContentView = [(OverlayContainerViewController *)self topContentView];
  topAnchor2 = [topContentView topAnchor];
  v61 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v65[0] = v61;
  bottomAnchor3 = [(UIScrollView *)self->_verticalSignScrollView bottomAnchor];
  topContentView2 = [(OverlayContainerViewController *)self topContentView];
  bottomAnchor4 = [topContentView2 bottomAnchor];
  v57 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v65[1] = v57;
  leadingAnchor3 = [(UIScrollView *)self->_verticalSignScrollView leadingAnchor];
  topContentView3 = [(OverlayContainerViewController *)self topContentView];
  leadingAnchor4 = [topContentView3 leadingAnchor];
  v53 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v65[2] = v53;
  trailingAnchor3 = [(UIScrollView *)self->_verticalSignScrollView trailingAnchor];
  topContentView4 = [(OverlayContainerViewController *)self topContentView];
  trailingAnchor4 = [topContentView4 trailingAnchor];
  v49 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v65[3] = v49;
  widthAnchor = [(UIScrollView *)self->_verticalSignScrollView widthAnchor];
  view = [(SteppingPageViewController *)self->_pagingVC view];
  widthAnchor2 = [view widthAnchor];
  v45 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v21 = self->_scrollViewHeightConstraint;
  v65[4] = v45;
  v65[5] = v21;
  view2 = [(SteppingPageViewController *)self->_pagingVC view];
  topAnchor3 = [view2 topAnchor];
  topAnchor4 = [(UIScrollView *)self->_verticalSignScrollView topAnchor];
  v41 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v65[6] = v41;
  view3 = [(SteppingPageViewController *)self->_pagingVC view];
  bottomAnchor5 = [view3 bottomAnchor];
  bottomAnchor6 = [(UIScrollView *)self->_verticalSignScrollView bottomAnchor];
  v37 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v65[7] = v37;
  view4 = [(SteppingPageViewController *)self->_pagingVC view];
  leadingAnchor5 = [view4 leadingAnchor];
  leadingAnchor6 = [(UIScrollView *)self->_verticalSignScrollView leadingAnchor];
  v33 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v65[8] = v33;
  view5 = [(SteppingPageViewController *)self->_pagingVC view];
  trailingAnchor5 = [view5 trailingAnchor];
  trailingAnchor6 = [(UIScrollView *)self->_verticalSignScrollView trailingAnchor];
  v25 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v65[9] = v25;
  signHeightConstraint = [(SteppingPageViewController *)self->_pagingVC signHeightConstraint];
  v65[10] = signHeightConstraint;
  widthAnchor3 = [(UIButton *)self->_recenterButton widthAnchor];
  v28 = [widthAnchor3 constraintEqualToConstant:60.0];
  v65[11] = v28;
  heightAnchor2 = [(UIButton *)self->_recenterButton heightAnchor];
  v30 = [heightAnchor2 constraintEqualToConstant:60.0];
  v31 = self->_userLocationBottomConstraint;
  v65[12] = v30;
  v65[13] = v31;
  v65[14] = self->_userLocationLeadingConstraint;
  v32 = [NSArray arrayWithObjects:v65 count:15];
  [NSLayoutConstraint activateConstraints:v32];
}

- (void)_setupViews
{
  v3 = [[DrivingWalkingSteppingSignGenerator alloc] initWithRoute:self->_route];
  signGenerator = self->_signGenerator;
  self->_signGenerator = v3;

  stepsWithCorrespondingSigns = [(SteppingSignGenerator *)self->_signGenerator stepsWithCorrespondingSigns];
  [(GEOComposedRoute *)self->_route setManeuverDisplaySteps:stepsWithCorrespondingSigns];

  v6 = [[UIScrollView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  verticalSignScrollView = self->_verticalSignScrollView;
  self->_verticalSignScrollView = v6;

  [(UIScrollView *)self->_verticalSignScrollView setContentInsetAdjustmentBehavior:2];
  [(UIScrollView *)self->_verticalSignScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_verticalSignScrollView setScrollEnabled:0];
  [(UIScrollView *)self->_verticalSignScrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_verticalSignScrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_verticalSignScrollView setAccessibilityIdentifier:@"StepContainerVerticalSignScrollView"];
  topContentView = [(OverlayContainerViewController *)self topContentView];
  [topContentView addSubview:self->_verticalSignScrollView];

  v9 = [[SteppingPageViewController alloc] initWithSignGenerator:self->_signGenerator];
  pagingVC = self->_pagingVC;
  self->_pagingVC = v9;

  [(SteppingPageViewController *)self->_pagingVC setDelegate:self];
  [(SteppingPageViewController *)self->_pagingVC setAccessibilityIdentifier:@"StepContainerPagingView"];
  [(ContainerViewController *)self addChildViewController:self->_pagingVC];
  view = [(SteppingPageViewController *)self->_pagingVC view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = self->_verticalSignScrollView;
  view2 = [(SteppingPageViewController *)self->_pagingVC view];
  [(UIScrollView *)v12 addSubview:view2];

  [(SteppingPageViewController *)self->_pagingVC didMoveToParentViewController:self];
  [(SteppingSignGenerator *)self->_signGenerator setCellVendor:self->_pagingVC];
  v14 = objc_opt_new();
  recenterButton = self->_recenterButton;
  self->_recenterButton = v14;

  [(UIButton *)self->_recenterButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = +[UIColor systemBackgroundColor];
  [(UIButton *)self->_recenterButton setBackgroundColor:v16];

  v17 = +[UIColor systemBlueColor];
  [(UIButton *)self->_recenterButton setTintColor:v17];

  [(UIButton *)self->_recenterButton setAccessibilityIdentifier:@"RecenterButton"];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"[Navigation] Recenter" value:@"localized string not found" table:0];
  [(UIButton *)self->_recenterButton setAccessibilityLabel:v19];

  [(UIButton *)self->_recenterButton addTarget:self action:"_pressedRecenterButton" forControlEvents:64];
  v37 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
  v20 = self->_recenterButton;
  v21 = [UIImage systemImageNamed:@"location.fill" withConfiguration:v37];
  [(UIButton *)v20 setImage:v21 forState:0];

  layer = [(UIButton *)self->_recenterButton layer];
  [layer setCornerRadius:30.0];

  layer2 = [(UIButton *)self->_recenterButton layer];
  LODWORD(v24) = 1045220557;
  [layer2 setShadowOpacity:v24];

  height = CGSizeZero.height;
  layer3 = [(UIButton *)self->_recenterButton layer];
  [layer3 setShadowOffset:{CGSizeZero.width, height}];

  layer4 = [(UIButton *)self->_recenterButton layer];
  [layer4 setShadowRadius:1.0];

  v28 = _UISolariumEnabled();
  v29 = -8.0;
  if (v28)
  {
    v29 = -5.0;
  }

  [(UIButton *)self->_recenterButton _setTouchInsets:v29, -16.0, v29, -16.0];
  stepActionCoordinator = [(StepContainerViewController *)self stepActionCoordinator];
  -[StepContainerViewController setUserTrackingViewVisible:](self, "setUserTrackingViewVisible:", [stepActionCoordinator isAuthorizedForPreciseLocation]);

  v31 = +[NSNotificationCenter defaultCenter];
  [v31 addObserver:self selector:"_locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

  overlayView = [(OverlayContainerViewController *)self overlayView];
  [overlayView addSubview:self->_recenterButton];

  mapView = [(StepContainerViewController *)self mapView];
  [(ContainerViewController *)self edgePadding];
  v35 = v34;
  [(ContainerViewController *)self edgePadding];
  [mapView _setCompassInsets:{v35, 0.0, 0.0, v36}];

  [(StepContainerViewController *)self _setupConstraints];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = StepContainerViewController;
  [(OverlayContainerViewController *)&v5 viewDidLoad];
  [(StepContainerViewController *)self _setupViews];
  stepActionCoordinator = [(StepContainerViewController *)self stepActionCoordinator];
  [stepActionCoordinator viewControllerPresentTray:self];

  statusIndicatorManager = [(StepContainerViewController *)self statusIndicatorManager];
  [statusIndicatorManager updateIndicatorType];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = StepContainerViewController;
  [(OverlayContainerViewController *)&v3 viewDidLayoutSubviews];
  [(StepContainerViewController *)self _updateCompassLayout];
}

- (void)showOverview:(BOOL)overview andZoomToMapRegion:(BOOL)region
{
  self->_showingOverview = overview;
  if (region)
  {
    if (overview)
    {
      mapCameraController = [(StepContainerViewController *)self mapCameraController];
      route = [(StepContainerViewController *)self route];
      v9 = route;
      v7 = [NSArray arrayWithObjects:&v9 count:1];
      [mapCameraController frameRoutes:v7 includeCompassInset:1 animated:1 completion:0];
    }

    else
    {
      signIndex = [(SteppingPageViewController *)self->_pagingVC signIndex];

      [(StepContainerViewController *)self _updateMapRegionForSignAtIndex:signIndex];
    }
  }
}

- (void)updateWithDisplayedStep:(id)step
{
  pagingVC = self->_pagingVC;
  stepCopy = step;
  signGenerator = [(SteppingPageViewController *)pagingVC signGenerator];
  v7 = [signGenerator signIndexForStep:stepCopy];

  [(SteppingPageViewController *)self->_pagingVC setSignIndex:v7];
  if (v7 <= 0x7FFFFFFFFFFFFFFELL)
  {
    route = [(StepContainerViewController *)self route];
    [route setCurrentDisplayStep:v7];
  }

  [(StepContainerViewController *)self _updateMapRegionForSignAtIndex:v7];
}

- (void)dealloc
{
  v3 = +[MNNavigationService sharedService];
  [v3 unregisterObserver:self];

  [(StepContainerViewController *)self _invalidateTimers];
  v4.receiver = self;
  v4.super_class = StepContainerViewController;
  [(StepContainerViewController *)&v4 dealloc];
}

- (void)_setupDebugUtilities
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  v4 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v4 isInternalInstall];

  if (isInternalInstall)
  {
    v6 = objc_alloc_init(NavDebugLocationManager);
    debugLocationManager = self->_debugLocationManager;
    self->_debugLocationManager = v6;

    chromeViewController2 = [(ContainerViewController *)self chromeViewController];
    mapView2 = [chromeViewController2 mapView];
    [(NavDebugLocationManager *)self->_debugLocationManager setMapView:mapView2];

    _debugConsole = [mapView _debugConsole];
    [_debugConsole setCustomTextEnabled:1];

    _debugConsole2 = [mapView _debugConsole];
    [_debugConsole2 setPageIndex:2];

    [(StepContainerViewController *)self _updateDebugConsoleForLocation:0];
  }

  v12 = +[MNNavigationService sharedService];
  isNavigatingFromTrace = [v12 isNavigatingFromTrace];

  if (isNavigatingFromTrace)
  {
    v14 = [[NavigationDebugViewsController alloc] initWithDelegate:0];
    debugViewsController = self->_debugViewsController;
    self->_debugViewsController = v14;

    [(NavigationDebugViewsController *)self->_debugViewsController setShowTraceControlsForStaleLocations:0];
    debugViewsController = [(StepContainerViewController *)self debugViewsController];
    overlayView = [(OverlayContainerViewController *)self overlayView];
    innerLayoutGuide = [(OverlayContainerViewController *)self innerLayoutGuide];
    chromeViewController3 = [(ContainerViewController *)self chromeViewController];
    [debugViewsController addDebugViewsToView:overlayView layoutGuide:innerLayoutGuide mapView:mapView modalPresentingViewController:chromeViewController3];
  }
}

- (void)_addNavigationObservers
{
  v3 = +[MNNavigationService sharedService];
  [v3 registerObserver:self];
}

- (StepActionCoordinator)stepActionCoordinator
{
  stepActionCoordinator = self->_stepActionCoordinator;
  if (!stepActionCoordinator)
  {
    v4 = [[StepActionCoordinator alloc] initWithContainerViewController:self];
    v5 = self->_stepActionCoordinator;
    self->_stepActionCoordinator = v4;

    stepActionCoordinator = self->_stepActionCoordinator;
  }

  return stepActionCoordinator;
}

- (StepContainerViewController)initWithRoute:(id)route initialStepIndex:(unint64_t)index desiredTrackingMode:(int64_t)mode
{
  result = [(StepContainerViewController *)self initWithRoute:route initialStepIndex:index];
  if (result)
  {
    result->_hasDesiredUserTrackingMode = 1;
    result->_desiredUserTrackingMode = mode;
  }

  return result;
}

- (StepContainerViewController)initWithRoute:(id)route initialStepIndex:(unint64_t)index
{
  routeCopy = route;
  v25.receiver = self;
  v25.super_class = StepContainerViewController;
  v8 = [(ContainerViewController *)&v25 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(StepContainerViewController *)v8 setAccessibilityIdentifier:v10];

    objc_storeStrong(&v8->_route, route);
    if ([(GEOComposedRoute *)v8->_route transportType]== 1)
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v27 = "[StepContainerViewController initWithRoute:initialStepIndex:]";
        v28 = 2080;
        v29 = "StepContainerViewController.m";
        v30 = 1024;
        v31 = 156;
        v32 = 2080;
        v33 = "_route.transportType != GEOTransportType_TRANSIT";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v23 = sub_10006D178();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v27 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v11 = +[MNNavigationService sharedService];
    v8->_matchedStepIndex = [v11 stepIndex];

    v8->_matchedSignIndex = 0x7FFFFFFFFFFFFFFFLL;
    v8->_isGoingToEnterGuidance = 1;
    v12 = +[NSDate date];
    startDate = v8->_startDate;
    v8->_startDate = v12;

    v8->_initialStepIndex = index;
    v14 = objc_alloc_init(NSMutableDictionary);
    isExpandedMapping = v8->_isExpandedMapping;
    v8->_isExpandedMapping = v14;

    v8->_userTrackingViewVisible = 1;
    [(StepContainerViewController *)v8 _addNavigationObservers];
    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v8 selector:"_willEnterForeground:" name:UISceneWillEnterForegroundNotification object:0];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v8 selector:"_didEnterBackground:" name:UISceneDidEnterBackgroundNotification object:0];

    v18 = [[StatusIndicatorManager alloc] initWithDelegate:v8];
    [(StepContainerViewController *)v8 setStatusIndicatorManager:v18];

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v8 selector:"vlfSessionTaskWillShowVLFUINotification:" name:@"VLFSessionTaskWillShowVLFUINotification" object:0];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v8 selector:"vlfContaineeViewControllerDidDisappearNotification:" name:@"VLFContaineeViewControllerDidDisappearNotification" object:0];
  }

  return v8;
}

@end