@interface StepContainerViewController
- (BOOL)_isStepOnTransitLine:(id)a3;
- (BOOL)_isTrackingLocation;
- (BOOL)_shouldShowHeadingIndicatorForStep:(id)a3;
- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4;
- (BOOL)pptTestHasNextStep;
- (BOOL)pptTestMoveToBoardStep;
- (MKMapView)mapView;
- (MapCameraController)mapCameraController;
- (NSDateComponentsFormatter)debugHoursDurationFormatter;
- (NSDateComponentsFormatter)debugMinsDurationFormatter;
- (StatusIndicatorView)statusIndicatorView;
- (StepActionCoordinator)stepActionCoordinator;
- (StepContainerViewController)initWithRoute:(id)a3 initialStepIndex:(unint64_t)a4;
- (StepContainerViewController)initWithRoute:(id)a3 initialStepIndex:(unint64_t)a4 desiredTrackingMode:(int64_t)a5;
- (double)availableHeight;
- (double)maximumSignHeight;
- (double)topEdgeInset;
- (id)_geoRouteDetails;
- (id)passThroughView;
- (id)statusBarBackgroundViewStyle;
- (id)statusBarSupplementaryView;
- (int64_t)pptTestCurrentStepIndex;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)originalLayoutForViewController:(id)a3;
- (void)_addNavigationObservers;
- (void)_arrivalEndTimerFired;
- (void)_backgroundArrivalTimerFired;
- (void)_delayTimerFired;
- (void)_didEnterBackground:(id)a3;
- (void)_invalidateTimers;
- (void)_locationExpirationTimerFired;
- (void)_locationManagerApprovalDidChange:(id)a3;
- (void)_setGizmoStepIndex:(unint64_t)matchedStepIndex;
- (void)_setUserTrackingMode:(int64_t)a3 animated:(BOOL)a4;
- (void)_setupConstraints;
- (void)_setupDebugUtilities;
- (void)_setupViews;
- (void)_showInitialStepIfNecessary;
- (void)_startArrivalEndTimerIfNecessary;
- (void)_stopArrivalEndTimer;
- (void)_toggleTraceControls;
- (void)_updateCompassLayout;
- (void)_updateDebugConsoleForLocation:(id)a3;
- (void)_updateForMatchedStepIndex:(unint64_t)a3 matchedSegmentIndex:(unint64_t)a4;
- (void)_updateIdleTimer;
- (void)_updateMapRegionForSignAtIndex:(int64_t)a3;
- (void)_updateStatusBarIndicatorLayout;
- (void)_updateUserLocationViewAppearanceWithMatchedLocation:(id)a3;
- (void)_willEnterForeground:(id)a3;
- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)a3;
- (void)containerStyleManagerDidChangeStyle:(unint64_t)a3;
- (void)dealloc;
- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4;
- (void)idleTimerDidTimeout:(id)a3;
- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapViewDidFinishInitialUserTrackingModeAnimation:(id)a3;
- (void)mapViewDidStopUserInteraction:(id)a3;
- (void)navigationService:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)pptTestMoveToNextStep;
- (void)setUserTrackingViewVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)showOverview:(BOOL)a3 andZoomToMapRegion:(BOOL)a4;
- (void)statusIndicatorTypeChanged:(unint64_t)a3;
- (void)steppingPageViewController:(id)a3 didChangeCurrentSign:(int64_t)a4 previousSign:(int64_t)a5 fromUserGesture:(unint64_t)a6;
- (void)steppingPageViewControllerDidChangeSignHeight:(id)a3;
- (void)steppingPageViewControllerUserDidStartScrolling:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLayoutAnimated:(BOOL)a3;
- (void)updateWithDisplayedStep:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)vlfContaineeViewControllerDidDisappearNotification:(id)a3;
- (void)vlfSessionTaskWillShowVLFUINotification:(id)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation StepContainerViewController

- (BOOL)pptTestMoveToBoardStep
{
  v3 = [(StepContainerViewController *)self route];
  v4 = [v3 steps];
  v5 = [v4 firstObject];

  v6 = [v5 nextBoardingStep];
  if (v6 && (-[StepContainerViewController pagingVC](self, "pagingVC"), v7 = objc_claimAutoreleasedReturnValue(), [v7 signGenerator], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "signIndexForStep:", v6), v8, v7, v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v11 = [(StepContainerViewController *)self pagingVC];
    [v11 setSignIndex:v9 animated:0];

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
    v3 = [(StepContainerViewController *)self pagingVC];
    [v3 setSignIndex:{objc_msgSend(v3, "signIndex") + 1}];
  }
}

- (BOOL)pptTestHasNextStep
{
  v3 = [(StepContainerViewController *)self pagingVC];
  v4 = [v3 signGenerator];
  v5 = [v4 numberOfSigns];

  if (v5 < 2)
  {
    return 0;
  }

  v7 = [(StepContainerViewController *)self pagingVC];
  v8 = [v7 signIndex];
  v9 = [(StepContainerViewController *)self pagingVC];
  v10 = [v9 signGenerator];
  v6 = v8 < ([v10 numberOfSigns] - 1);

  return v6;
}

- (int64_t)pptTestCurrentStepIndex
{
  v2 = [(StepContainerViewController *)self pagingVC];
  v3 = [v2 signIndex];

  return v3;
}

- (void)_toggleTraceControls
{
  if (self->_debugViewsController)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"PlaybackControls"];

    if (v4)
    {
      v5 = [(NavigationDebugViewsController *)self->_debugViewsController isShowingTraceControls];
      debugViewsController = self->_debugViewsController;
      if (v5)
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

- (void)_updateDebugConsoleForLocation:(id)a3
{
  v35 = a3;
  v4 = +[GEOPlatform sharedPlatform];
  v5 = [v4 isInternalInstall];

  v6 = v35;
  if (v5)
  {
    if (v35)
    {
      v7 = [v35 routeMatch];
      [v7 locationCoordinate];
      v9 = v8;
      v11 = v10;
      v12 = [v7 routeCoordinate];
      v13 = [v7 step];
      if ([v13 transportType] == 1)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      v16 = v15;
      if (v15)
      {
        v17 = [v15 maneuver];
        if (v17 >= 0xB)
        {
          v18 = [NSString stringWithFormat:@"(unknown: %i)", v17];
        }

        else
        {
          v18 = *(&off_101657510 + v17);
        }

        v22 = [v18 lowercaseString];
      }

      else
      {
        v21 = [v13 routeSegmentType] - 1;
        if (v21 > 5)
        {
          v22 = @"unknown";
        }

        else
        {
          v22 = *(&off_1016574E0 + v21);
        }
      }

      v23 = +[MNNavigationService sharedService];
      v24 = [v23 isNavigatingFromTrace];

      if (v24)
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
      v30 = [v7 stepIndex];
      [v7 distanceFromRoute];
      v20 = [NSString stringWithFormat:@"%@, (%0.5f %0.5f), [%d, %0.2f], Step %d\n[%@], dist to route: %0.1fm", v29, v9, v11, v12, *(&v12 + 1), v30, v22, v31];
      if ([v7 isGoodMatch])
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

    v32 = [(ContainerViewController *)self chromeViewController];
    v33 = [v32 mapView];
    v34 = [v33 _debugConsole];

    [v34 updateCustomText:v20 textColor:v19];
    v6 = v35;
  }
}

- (NSDateComponentsFormatter)debugHoursDurationFormatter
{
  debugHoursDurationFormatter = self->_debugHoursDurationFormatter;
  if (!debugHoursDurationFormatter)
  {
    v4 = [(StepContainerViewController *)self debugMinsDurationFormatter];
    v5 = [v4 copy];

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
  v3 = [(SteppingPageViewController *)self->_pagingVC signGenerator];
  v4 = [v3 stepAtSignIndex:{-[SteppingPageViewController signIndex](self->_pagingVC, "signIndex")}];

  v5 = +[MNNavigationService sharedService];
  v6 = [v5 lastLocation];
  v7 = [v6 routeMatch];
  v8 = [v7 isGoodMatch];

  v9 = [(StepContainerViewController *)self route];
  v10 = [v9 _maps_routeIndex];

  if (v4)
  {
    v11 = [v4 stepIndex];
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  v12 = [(SteppingPageViewController *)self->_pagingVC signGenerator];
  v13 = [v12 signIndexForStepIndex:self->_matchedStepIndex];

  v14 = v13 == [(SteppingPageViewController *)self->_pagingVC signIndex];
  v15 = [(ContainerViewController *)self chromeViewController];
  v16 = [v15 mapView];
  v17 = [v16 userTrackingMode] != 0;

  v18 = +[MNNavigationService sharedService];
  v19 = [v18 currentRequest];
  [v19 requestTime];
  v21 = v20;

  v22 = [GEORouteDetails routeDetailsWithResultIndex:v10 stepID:v11 nearRoute:v8 nearCurrentlyDisplayedStep:v14 userTrackingOn:v17 timeSinceResponse:CFAbsoluteTimeGetCurrent() - v21];

  return v22;
}

- (void)vlfContaineeViewControllerDidDisappearNotification:(id)a3
{
  v4 = [(StepContainerViewController *)self pagingVC];
  v5 = [v4 view];
  [v5 setHidden:0];

  v6 = [(StepContainerViewController *)self recenterButton];
  [v6 setHidden:0];

  [(StepContainerViewController *)self setVlfActive:0];
  v7 = [(StepContainerViewController *)self iosBasedChromeViewController];
  [v7 setNeedsUpdateComponent:@"statusBarStyle" animated:0];
}

- (void)vlfSessionTaskWillShowVLFUINotification:(id)a3
{
  v4 = [(StepContainerViewController *)self pagingVC];
  v5 = [v4 view];
  [v5 setHidden:1];

  v6 = [(StepContainerViewController *)self recenterButton];
  [v6 setHidden:1];

  [(StepContainerViewController *)self setVlfActive:1];
  v7 = [(StepContainerViewController *)self iosBasedChromeViewController];
  [v7 setNeedsUpdateComponent:@"statusBarStyle" animated:0];
}

- (void)idleTimerDidTimeout:(id)a3
{
  v4 = [(ContainerViewController *)self currentViewController];
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
    v6 = [(StepContainerViewController *)self view];
    v7 = [v6 window];
    v8 = [(NavIdleTimeoutTimer *)v5 initWithWindow:v7];
    [(StepContainerViewController *)self setIdleTimer:v8];

    v9 = [(StepContainerViewController *)self idleTimer];
    [v9 setDelegate:self];
  }

  else
  {

    [(StepContainerViewController *)self setIdleTimer:0];
  }
}

- (id)statusBarSupplementaryView
{
  v3 = [(StepContainerViewController *)self statusIndicatorView];
  if ([v3 isVisible])
  {
    v4 = [(StepContainerViewController *)self statusIndicatorView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateStatusBarIndicatorLayout
{
  if (_UISolariumEnabled())
  {
    statusIndicatorView = self->_statusIndicatorView;
    v4 = [(StepContainerViewController *)self preferredStatusBarStyle];
    v5 = statusIndicatorView;
  }

  else
  {
    v6 = [(ContainerViewController *)self containerStyle];
    if (v6 <= 7 && ((1 << v6) & 0xE3) != 0)
    {
      v5 = self->_statusIndicatorView;
      v4 = 1;
    }

    else
    {
      v7 = [(StepContainerViewController *)self traitCollection];
      if ([v7 userInterfaceStyle] == 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = 3;
      }

      v5 = self->_statusIndicatorView;
      v4 = v8;
    }
  }

  [(StatusIndicatorView *)v5 updateWithStatusBarStyle:v4];
}

- (void)statusIndicatorTypeChanged:(unint64_t)a3
{
  v5 = [(StepContainerViewController *)self statusIndicatorView];
  [v5 setType:a3];

  v6 = [(StepContainerViewController *)self iosBasedChromeViewController];
  [v6 setNeedsUpdateComponent:@"statusBarSupplementaryView" animated:1];
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
  v9 = [(StepContainerViewController *)self theme];
  v10 = [v9 navSignPrimaryColor];
  v5 = [(StatusBarBackgroundViewStyle *)v8 initWithColor:v10];

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
    v6 = [(StepContainerViewController *)self theme];
    v7 = [v6 statusBarStyle];

    return v7;
  }

  v9 = _UISolariumEnabled();

  if (v9)
  {
    goto LABEL_7;
  }

  return 1;
}

- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v7 = +[MNNavigationService sharedService];
  v8 = [v7 isNavigatingFromTrace];

  if (v8)
  {
    [(StepContainerViewController *)self _toggleTraceControls];
  }

  v9 = [(ContainerViewController *)self currentViewController];
  if ([v9 conformsToProtocol:&OBJC_PROTOCOL___MapViewResponderHandling])
  {
    [v9 didTapMapView:v10 atPoint:{x, y}];
  }
}

- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  if (!a5)
  {
    v7 = [(StepContainerViewController *)self stepActionCoordinator:a3];
    [v7 pressedEndWithSender:self];
  }
}

- (void)navigationService:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v7 = [a3 route];
  self->_hasArrived = [v7 isLegIndexOfLastLeg:a5];

  if (self->_hasArrived)
  {

    [(StepContainerViewController *)self _startArrivalEndTimerIfNecessary];
  }
}

- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = +[NSDate date];
  v10 = [(NavigationDebugViewsController *)self->_debugViewsController tracePlayer];
  GEOConfigGetDouble();
  v12 = v11;
  if (v10)
  {
    [v10 speedMultiplier];
  }

  else
  {
    v13 = 1.0;
  }

  v14 = v12 / v13;
  [v9 timeIntervalSinceDate:self->_startDate];
  if (v15 >= v14)
  {
    [(StepContainerViewController *)self _updateForMatchedStepIndex:a4 matchedSegmentIndex:a5];
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

- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4
{
  objc_storeStrong(&self->_previousMatchedLocation, a4);
  v8 = a4;
  [(StepContainerViewController *)self _updateUserLocationViewAppearanceWithMatchedLocation:v8];
  debugLocationManager = self->_debugLocationManager;
  v7 = [v8 rawLocation];
  [(NavDebugLocationManager *)debugLocationManager addLocation:v7];

  [(StepContainerViewController *)self _updateDebugConsoleForLocation:v8];
}

- (BOOL)_isTrackingLocation
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 isTrackingCurrentLocation];

  return v3;
}

- (void)_setGizmoStepIndex:(unint64_t)matchedStepIndex
{
  v5 = [(SteppingPageViewController *)self->_pagingVC signGenerator];
  v6 = [v5 signIndexForStepIndex:self->_matchedStepIndex];

  v7 = [(SteppingPageViewController *)self->_pagingVC signGenerator];
  v8 = [v7 signIndexForStepIndex:matchedStepIndex];

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
    v8 = [(MNLocation *)previousMatchedLocation routeMatch];
    v5 = [v8 stepIndex];
    v6 = [v8 route];
    v7 = [v6 segmentIndexForStepIndex:v5];

    [(StepContainerViewController *)self _updateForMatchedStepIndex:v5 matchedSegmentIndex:v7];
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

  v5 = [(StepContainerViewController *)self stepActionCoordinator];
  [v5 pressedEndWithSender:self];
}

- (void)_locationExpirationTimerFired
{
  v2 = [(ContainerViewController *)self chromeViewController];
  v5 = [v2 userLocationView];

  v3 = v5;
  if (v5)
  {
    v4 = [v5 isStale];
    v3 = v5;
    if ((v4 & 1) == 0)
    {
      [v5 locationManagerFailedToUpdateLocation];
      v3 = v5;
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

  v5 = [(StepContainerViewController *)self stepActionCoordinator];
  [v5 pressedEndWithSender:self];
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

- (void)_didEnterBackground:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [(StepContainerViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 windowScene];

  if (v5 == v8)
  {
    previousMatchedLocation = self->_previousMatchedLocation;
    if (previousMatchedLocation)
    {
      v10 = [(MNLocation *)previousMatchedLocation routeMatch];
      v11 = [v10 step];

      if (v11)
      {
        if ([v11 isArrivalStep])
        {
          v12 = [(StepContainerViewController *)self stepActionCoordinator];
          [v12 pressedEndWithSender:self];
        }

        else
        {
          v12 = -[GEOComposedRoute segmentForStepIndex:](self->_route, "segmentForStepIndex:", [v11 stepIndex]);
          v13 = [(GEOComposedRoute *)self->_route segments];
          v14 = [v13 lastObject];

          if (v14 == v12)
          {
            [v12 expectedTime];
            v16 = 15.0;
            if (v15 * 3.0 >= 15.0)
            {
              [v12 expectedTime];
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

- (void)_willEnterForeground:(id)a3
{
  v9 = [a3 object];
  v4 = [(StepContainerViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 windowScene];

  v7 = v9;
  if (v9 == v6)
  {
    [(NSTimer *)self->_backgroundArrivalTimer invalidate];
    backgroundArrivalTimer = self->_backgroundArrivalTimer;
    self->_backgroundArrivalTimer = 0;

    v7 = v9;
  }
}

- (double)maximumSignHeight
{
  v3 = [(StepContainerViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v6 = [(OverlayContainerViewController *)self topContentView];
  [v6 frame];
  v8 = v7;
  [(ContainerViewController *)self edgePadding];
  v10 = v9;
  v11 = [(StepContainerViewController *)self stepActionCoordinator];
  v12 = [v11 trayContaineeViewController];
  [v12 heightForLayout:1];
  v14 = v5 - (v10 + v8 + v13);
  v15 = 512.0;
  if (v14 < 512.0)
  {
    v16 = [(StepContainerViewController *)self view];
    [v16 bounds];
    v18 = v17;
    v19 = [(OverlayContainerViewController *)self topContentView];
    [v19 frame];
    v21 = v20;
    [(ContainerViewController *)self edgePadding];
    v23 = v22;
    v24 = [(StepContainerViewController *)self stepActionCoordinator];
    v25 = [v24 trayContaineeViewController];
    [v25 heightForLayout:1];
    v15 = v18 - (v23 + v21 + v26);
  }

  return v15;
}

- (void)steppingPageViewControllerDidChangeSignHeight:(id)a3
{
  v20 = a3;
  [(StepContainerViewController *)self maximumSignHeight];
  v6 = v5;
  v7 = [v20 signHeightConstraint];
  [v7 constant];
  v9 = v8;

  if (v9 <= v6)
  {
    v10 = [v20 signHeightConstraint];
    [v10 constant];
    [(NSLayoutConstraint *)self->_scrollViewHeightConstraint setConstant:?];

    [(UIScrollView *)self->_verticalSignScrollView setScrollEnabled:0];
  }

  else
  {
    [(UIScrollView *)self->_verticalSignScrollView setScrollEnabled:1];
    [(NSLayoutConstraint *)self->_scrollViewHeightConstraint setConstant:v6];
  }

  v11 = [(ContainerViewController *)self containeeLayout];
  if (v11 - 3 >= 2)
  {
    if (v11 != 5)
    {
      goto LABEL_18;
    }

    v13 = +[UIDevice currentDevice];
    v14 = [v13 userInterfaceIdiom];
    if (v14 != 1)
    {
      v3 = +[UIDevice currentDevice];
      if ([v3 userInterfaceIdiom] != 5)
      {
        goto LABEL_17;
      }
    }

    v15 = [(ContainerViewController *)self currentViewController];
    v16 = [v15 cardPresentationController];
    v17 = [v16 presentedModally];

    if (v14 != 1)
    {

      if ((v17 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    if (v17)
    {
LABEL_16:
      v13 = [(ContainerViewController *)self currentViewController];
      v3 = [v13 cardPresentationController];
      [v3 updateHeightForCurrentLayout];
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
    v19 = [v18 userInterfaceIdiom];

    if (v19 == 5)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
}

- (void)steppingPageViewControllerUserDidStartScrolling:(id)a3
{
  self->_mustNotBreakUserTrackingMode = 0;
  [(StepContainerViewController *)self _setUserTrackingMode:0 animated:1];

  [(StepContainerViewController *)self _stopArrivalEndTimer];
}

- (void)steppingPageViewController:(id)a3 didChangeCurrentSign:(int64_t)a4 previousSign:(int64_t)a5 fromUserGesture:(unint64_t)a6
{
  v23 = a3;
  if (a6)
  {
    [(StepContainerViewController *)self _startArrivalEndTimerIfNecessary];
  }

  if (a4 != a5)
  {
    v10 = [(StepContainerViewController *)self route];
    v11 = [(SteppingPageViewController *)self->_pagingVC signGenerator];
    v12 = [v11 stepAtSignIndex:{-[SteppingPageViewController signIndex](self->_pagingVC, "signIndex")}];

    if (v12)
    {
      v13 = [v12 stepIndex];
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v14 = [v10 segmentIndexForStepIndex:v13];
    v15 = [(StepContainerViewController *)self stepActionCoordinator];
    v16 = [v15 trayContaineeViewController];
    [v16 setCurrentStepIndex:v13];

    v17 = [(StepContainerViewController *)self mapView];
    [v17 _setRouteContextInspectedSegmentIndex:v14 inspectedStepIndex:v13];

    if (a4 <= 0x7FFFFFFFFFFFFFFELL)
    {
      [v10 setCurrentDisplayStep:a4];
    }

    v18 = +[NSDate date];
    [v18 timeIntervalSinceDate:self->_lastMapTouchDate];
    v20 = v19;

    if (a6 || (!self->_lastMapTouchDate || v20 > 4.0) && (-[StepContainerViewController mapView](self, "mapView"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 userTrackingMode], v21, !v22))
    {
      [(StepContainerViewController *)self _updateMapRegionForSignAtIndex:a4];
    }

    [(StepContainerViewController *)self _setGizmoStepIndex:v13];
  }
}

- (void)mapViewDidFinishInitialUserTrackingModeAnimation:(id)a3
{
  v15 = a3;
  if ([v15 userTrackingMode])
  {
    v4 = [(MNLocation *)self->_previousMatchedLocation routeMatch];
    v5 = [v4 transitTripStep];

    if ([v5 maneuver] == 5)
    {
      v6 = [v5 previousTransitStep];

      v5 = v6;
    }

    if ([(StepContainerViewController *)self _isStepOnTransitLine:v5])
    {
      [v5 startGeoCoordinate];
      [v5 endGeoCoordinate];
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

    v11 = [v15 camera];
    [v11 altitude];
    if (v12 < v9 || ([v11 altitude], v10 < v13))
    {
      v14 = [v11 copy];

      [v14 setAltitude:v8];
      [v15 setCamera:v14 animated:1];
      v11 = v14;
    }
  }
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v13 = a4;
  v6 = a3;
  v7 = [v13 annotation];
  [v6 deselectAnnotation:v7 animated:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 isVLFPuckVisible])
  {
    v8 = [(ContainerViewController *)self chromeViewController];
    v9 = [v8 appCoordinator];
    v10 = [v9 platformController];
    v11 = [v10 auxiliaryTasksManager];
    v12 = [v11 auxilaryTaskForClass:objc_opt_class()];

    [v12 showVLFUI];
  }
}

- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4
{
  v5 = a4;
  v6 = [(StepContainerViewController *)self stepActionCoordinator];
  [v6 deselectVKLabelMarker:v5];
}

- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4
{
  v5 = a4;
  v6 = [(StepContainerViewController *)self stepActionCoordinator];
  [v6 selectVKLabelMarker:v5];
}

- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4
{
  v5 = a4;
  v6 = [(StepContainerViewController *)self stepActionCoordinator];
  v7 = [v6 canSelectVKLabelMarker:v5];

  return v7;
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  if (self->_userIsInteractingWithMap)
  {
    self->_mustNotBreakUserTrackingMode = 0;
  }
}

- (void)mapViewDidStopUserInteraction:(id)a3
{
  self->_userIsInteractingWithMap = 0;
  v4 = +[NSDate date];
  lastMapTouchDate = self->_lastMapTouchDate;
  self->_lastMapTouchDate = v4;

  [(StepContainerViewController *)self _startArrivalEndTimerIfNecessary];
}

- (void)_updateForMatchedStepIndex:(unint64_t)a3 matchedSegmentIndex:(unint64_t)a4
{
  matchedStepIndex = self->_matchedStepIndex;
  [(SteppingSignGenerator *)self->_signGenerator signIndexForStepIndex:a3, a4];
  self->_matchedStepIndex = a3;
  if (self->_isGoingToEnterGuidance)
  {
    self->_isGoingToEnterGuidance = 0;
  }

  v20 = [(SteppingPageViewController *)self->_pagingVC collectionView];
  if ([v20 isTracking])
  {
    goto LABEL_6;
  }

  v7 = [(SteppingPageViewController *)self->_pagingVC collectionView];
  if ([v7 isDragging])
  {

LABEL_6:

    return;
  }

  v8 = [(StepContainerViewController *)self _isTrackingLocation];

  if (v8)
  {
    v9 = [(SteppingPageViewController *)self->_pagingVC signGenerator];
    v10 = [v9 signIndexForStepIndex:a3];

    v11 = v10 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v10;
    v12 = [(SteppingPageViewController *)self->_pagingVC signIndex];
    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v11 == v12)
      {
        if (matchedStepIndex == a3)
        {
          return;
        }

        v13 = [(StepContainerViewController *)self mapView];
        v14 = [v13 userTrackingMode];

        if (!v14)
        {
          v15 = [(GEOComposedRoute *)self->_route segmentForStepIndex:a3];
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

        v17 = [(SteppingPageViewController *)self->_pagingVC signIndex];
        v18 = [(SteppingPageViewController *)self->_pagingVC signGenerator];
        v19 = [v18 signIndexForStepIndex:a3];

        if (v17 >= v19)
        {
          return;
        }

        [(SteppingPageViewController *)self->_pagingVC setSignIndex:v11];
        self->_matchedSignIndex = v11;
      }

      [(StepContainerViewController *)self _setGizmoStepIndex:a3];
    }
  }
}

- (BOOL)_shouldShowHeadingIndicatorForStep:(id)a3
{
  v4 = a3;
  v5 = [(StepContainerViewController *)self stepActionCoordinator];
  v6 = [v5 isAuthorizedForPreciseLocation];

  if (v4)
  {
    if ([v4 transportType] == 1)
    {
      v7 = [v4 maneuver];
      if (v7 - 4 <= 5)
      {
        v6 &= (0x27u >> (v7 - 4)) ^ 1;
      }
    }
  }

  return v6 & 1;
}

- (BOOL)_isStepOnTransitLine:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 routeSegmentType] == 6)
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

- (void)_updateUserLocationViewAppearanceWithMatchedLocation:(id)a3
{
  v4 = a3;
  v5 = [(ContainerViewController *)self chromeViewController];
  v6 = [(ContainerViewController *)self chromeContext];
  v7 = [v5 isCurrentContext:v6];

  if (v4 && v7)
  {
    v8 = [v4 routeMatch];
    v9 = [v8 step];

    v10 = [(StepContainerViewController *)self _isStepOnTransitLine:v9];
    v11 = [(StepContainerViewController *)self mapView];
    v12 = [v11 _shouldSplitRouteLine];

    v13 = [(ContainerViewController *)self chromeViewController];
    v14 = [v13 userLocationView];

    if (v14)
    {
      v12 = ([v4 isDirectional] & v10);
      [v14 updateStateFromLocation:v4 duration:0.0];
    }

    v15 = [(StepContainerViewController *)self mapView];
    v16 = [v15 _shouldSplitRouteLine];

    if (v12 != v16)
    {
      v17 = [(StepContainerViewController *)self mapView];
      [v17 _setShouldSplitRouteLine:v12];
    }

    v18 = [(StepContainerViewController *)self _shouldShowHeadingIndicatorForStep:v9];
    v19 = [(StepContainerViewController *)self mapView];
    [v19 _setShowHeadingIndicatorForStepping:v18];

    [(NSTimer *)self->_locationExpirationTimer invalidate];
    v20 = [v4 expirationDate];

    if (v20)
    {
      v21 = [v4 expirationDate];
      [v21 timeIntervalSinceNow];
      v22 = 0.0;
      if (v23 > 0.0)
      {
        v24 = [v4 expirationDate];
        [v24 timeIntervalSinceNow];
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

- (void)setUserTrackingViewVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_userTrackingViewVisible != a3)
  {
    v27 = v7;
    v28 = v6;
    v29 = v4;
    v30 = v5;
    v8 = a4;
    self->_userTrackingViewVisible = a3;
    v10 = self->_recenterButton;
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100EA27C8;
    v24 = &unk_101661AE0;
    v11 = v10;
    v25 = v11;
    v26 = a3;
    v12 = objc_retainBlock(&v21);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100EA281C;
    v18 = &unk_1016574C0;
    v19 = v11;
    LOBYTE(v20) = a3;
    v13 = v11;
    v14 = objc_retainBlock(&v15);
    if (v8)
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

- (void)_locationManagerApprovalDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100EA28AC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_setUserTrackingMode:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3 && self->_matchedStepIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(SteppingPageViewController *)self->_pagingVC signGenerator];
    v8 = [v7 signIndexForStepIndex:self->_matchedStepIndex];

    [(SteppingPageViewController *)self->_pagingVC setSignIndex:v8];
  }

  v9 = [(StepContainerViewController *)self mapView];
  [v9 setUserTrackingMode:a3 animated:v4];
}

- (void)_updateMapRegionForSignAtIndex:(int64_t)a3
{
  if (!self->_userIsInteractingWithMap)
  {
    v5 = [(SteppingPageViewController *)self->_pagingVC signGenerator];
    matchedStepIndex = self->_matchedStepIndex;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100EA2AEC;
    v8[3] = &unk_101657498;
    v8[4] = self;
    [v5 rectForSignAtIndex:a3 currentStepIndex:matchedStepIndex handler:v8];

    if (self->_showingOverview)
    {
      v7 = [(StepContainerViewController *)self stepActionCoordinator];
      [v7 viewController:self showOverview:0 zoomToMapRegion:0];
    }
  }
}

- (MapCameraController)mapCameraController
{
  mapCameraController = self->_mapCameraController;
  if (!mapCameraController)
  {
    v4 = [MapCameraController alloc];
    v5 = [(StepContainerViewController *)self mapView];
    v6 = [(MapCameraController *)v4 initWithMapView:v5];
    v7 = self->_mapCameraController;
    self->_mapCameraController = v6;

    mapCameraController = self->_mapCameraController;
  }

  return mapCameraController;
}

- (MKMapView)mapView
{
  v2 = [(ContainerViewController *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
}

- (id)passThroughView
{
  v2 = [(ContainerViewController *)self chromeViewController];
  v3 = [v2 passThroughView];

  return v3;
}

- (void)containerStyleManagerDidChangeStyle:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = StepContainerViewController;
  [(ContainerViewController *)&v5 containerStyleManagerDidChangeStyle:a3];
  [(StepContainerViewController *)self _showInitialStepIfNecessary];
  v4 = [(StepContainerViewController *)self iosBasedChromeViewController];
  [v4 setNeedsUpdateComponent:@"statusBarStyle" animated:0];
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
    v5 = [v4 userInterfaceIdiom];

    if (v5 != 5)
    {
LABEL_9:
      v23.receiver = self;
      v23.super_class = StepContainerViewController;
      [(ContainerViewController *)&v23 availableHeight];
      return v21;
    }
  }

  v6 = [(ContainerViewController *)self containerStyle];
  if (v6 > 6 || ((1 << v6) & 0x54) == 0)
  {
    goto LABEL_9;
  }

  v7 = [(StepContainerViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v10 = [(OverlayContainerViewController *)self topContentView];
  [v10 frame];
  MaxY = CGRectGetMaxY(v24);
  [(ContainerViewController *)self edgePadding];
  v13 = v12 + MaxY;
  v14 = 0.0;
  if (v9 >= v13)
  {
    v15 = [(StepContainerViewController *)self view];
    [v15 bounds];
    v17 = v16;
    v18 = [(OverlayContainerViewController *)self topContentView];
    [v18 frame];
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
    v3 = [(ContainerViewController *)self chromeViewController];
    v4 = [v3 view];
    [v4 safeAreaInsets];
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

- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)a3
{
  v14.receiver = self;
  v14.super_class = StepContainerViewController;
  [(OverlayContainerViewController *)&v14 containerStyleManagerConfigureLayoutForStyle:?];
  v5 = &OBJC_IVAR___StepContainerViewController__userLocationTrailingConstraint;
  v6 = &OBJC_IVAR___StepContainerViewController__userLocationLeadingConstraint;
  v7 = 0.0;
  if (a3 <= 7 && ((1 << a3) & 0xE3) != 0)
  {
    [(ContainerViewController *)self attributionVerticalPadding];
    v5 = &OBJC_IVAR___StepContainerViewController__userLocationLeadingConstraint;
    v6 = &OBJC_IVAR___StepContainerViewController__userLocationTrailingConstraint;
  }

  [(NSLayoutConstraint *)self->_userLocationBottomConstraint setConstant:v7];
  [*(&self->super.super.super.super.super.super.super.isa + *v6) setActive:0];
  [*(&self->super.super.super.super.super.super.super.isa + *v5) setActive:1];
  v8 = [(OverlayContainerViewController *)self topContentView];
  v9 = [v8 layer];
  [v9 cornerRadius];
  v11 = v10;
  v12 = [(SteppingPageViewController *)self->_pagingVC view];
  v13 = [v12 layer];
  [v13 setCornerRadius:v11];
}

- (void)updateLayoutAnimated:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = StepContainerViewController;
  [(ContainerViewController *)&v4 updateLayoutAnimated:a3];
  [(StepContainerViewController *)self _updateIdleTimer];
}

- (unint64_t)originalLayoutForViewController:(id)a3
{
  v4 = a3;
  v5 = [(StepContainerViewController *)self stepActionCoordinator];
  v6 = [v5 originalLayoutForViewController:v4];

  return v6;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = StepContainerViewController;
  [(ContainerViewController *)&v4 traitCollectionDidChange:a3];
  [(StepContainerViewController *)self _updateStatusBarIndicatorLayout];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v7.receiver = self;
  v7.super_class = StepContainerViewController;
  [(ContainerViewController *)&v7 willTransitionToTraitCollection:a3 withTransitionCoordinator:a4];
  v5 = objc_alloc_init(NSMutableDictionary);
  isExpandedMapping = self->_isExpandedMapping;
  self->_isExpandedMapping = v5;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = StepContainerViewController;
  [(ContainerViewController *)&v9 viewDidDisappear:a3];
  debugViewsController = self->_debugViewsController;
  v5 = [(OverlayContainerViewController *)self overlayView];
  [(NavigationDebugViewsController *)debugViewsController removeDebugViewsFromView:v5];

  [(NavDebugLocationManager *)self->_debugLocationManager setMapView:0];
  debugLocationManager = self->_debugLocationManager;
  self->_debugLocationManager = 0;

  v7 = [(StepContainerViewController *)self mapView];
  v8 = [v7 _debugConsole];
  [v8 setCustomTextEnabled:0];

  [(StepContainerViewController *)self _invalidateTimers];
}

- (void)_showInitialStepIfNecessary
{
  v11 = [(StepContainerViewController *)self view];
  v3 = [v11 superview];
  if (v3)
  {
    v4 = v3;
    v5 = [(ContainerViewController *)self containerStyle];

    if (!v5)
    {
      return;
    }

    initialStepIndex = self->_initialStepIndex;
    if (initialStepIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    v7 = [(GEOComposedRoute *)self->_route steps];
    v8 = [v7 count];

    if (initialStepIndex >= v8)
    {
      return;
    }

    v9 = [(GEOComposedRoute *)self->_route steps];
    v12 = [v9 objectAtIndexedSubscript:self->_initialStepIndex];

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
    v10 = v11;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = StepContainerViewController;
  [(OverlayContainerViewController *)&v4 viewDidAppear:a3];
  [(StepContainerViewController *)self _showInitialStepIfNecessary];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = StepContainerViewController;
  [(ContainerViewController *)&v6 viewWillAppear:a3];
  [(StepContainerViewController *)self _setupDebugUtilities];
  if ([(StepContainerViewController *)self _isTrackingLocation])
  {
    v4 = +[MNNavigationService sharedService];
    v5 = [v4 lastLocation];

    [(StepContainerViewController *)self _updateUserLocationViewAppearanceWithMatchedLocation:v5];
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
  v3 = [(ContainerViewController *)self chromeViewController];
  v4 = [v3 mapView];
  [v4 _compassInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (sub_10000FA08(self) != 5)
  {
    v13 = [(ContainerViewController *)self chromeViewController];
    v14 = [v13 floatingControlsOverlay];
    [v14 margin];
    v12 = v15;

    v6 = v12;
  }

  v17 = [(ContainerViewController *)self chromeViewController];
  v16 = [v17 mapView];
  [v16 _setCompassInsets:{v6, v8, v10, v12}];
}

- (void)_setupConstraints
{
  v3 = [(UIScrollView *)self->_verticalSignScrollView heightAnchor];
  v4 = [v3 constraintEqualToConstant:0.0];
  scrollViewHeightConstraint = self->_scrollViewHeightConstraint;
  self->_scrollViewHeightConstraint = v4;

  v6 = [(OverlayContainerViewController *)self innerLayoutGuide];
  v7 = [v6 bottomAnchor];
  v8 = [(UIButton *)self->_recenterButton bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  userLocationBottomConstraint = self->_userLocationBottomConstraint;
  self->_userLocationBottomConstraint = v9;

  v11 = [(UIButton *)self->_recenterButton leadingAnchor];
  v12 = [(OverlayContainerViewController *)self innerLayoutGuide];
  v13 = [v12 leadingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  userLocationLeadingConstraint = self->_userLocationLeadingConstraint;
  self->_userLocationLeadingConstraint = v14;

  v16 = [(OverlayContainerViewController *)self innerLayoutGuide];
  v17 = [v16 trailingAnchor];
  v18 = [(UIButton *)self->_recenterButton trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  userLocationTrailingConstraint = self->_userLocationTrailingConstraint;
  self->_userLocationTrailingConstraint = v19;

  v63 = [(UIScrollView *)self->_verticalSignScrollView topAnchor];
  v64 = [(OverlayContainerViewController *)self topContentView];
  v62 = [v64 topAnchor];
  v61 = [v63 constraintEqualToAnchor:v62];
  v65[0] = v61;
  v59 = [(UIScrollView *)self->_verticalSignScrollView bottomAnchor];
  v60 = [(OverlayContainerViewController *)self topContentView];
  v58 = [v60 bottomAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v65[1] = v57;
  v55 = [(UIScrollView *)self->_verticalSignScrollView leadingAnchor];
  v56 = [(OverlayContainerViewController *)self topContentView];
  v54 = [v56 leadingAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v65[2] = v53;
  v51 = [(UIScrollView *)self->_verticalSignScrollView trailingAnchor];
  v52 = [(OverlayContainerViewController *)self topContentView];
  v50 = [v52 trailingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v65[3] = v49;
  v47 = [(UIScrollView *)self->_verticalSignScrollView widthAnchor];
  v48 = [(SteppingPageViewController *)self->_pagingVC view];
  v46 = [v48 widthAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v21 = self->_scrollViewHeightConstraint;
  v65[4] = v45;
  v65[5] = v21;
  v44 = [(SteppingPageViewController *)self->_pagingVC view];
  v43 = [v44 topAnchor];
  v42 = [(UIScrollView *)self->_verticalSignScrollView topAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v65[6] = v41;
  v40 = [(SteppingPageViewController *)self->_pagingVC view];
  v39 = [v40 bottomAnchor];
  v38 = [(UIScrollView *)self->_verticalSignScrollView bottomAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v65[7] = v37;
  v36 = [(SteppingPageViewController *)self->_pagingVC view];
  v35 = [v36 leadingAnchor];
  v34 = [(UIScrollView *)self->_verticalSignScrollView leadingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v65[8] = v33;
  v22 = [(SteppingPageViewController *)self->_pagingVC view];
  v23 = [v22 trailingAnchor];
  v24 = [(UIScrollView *)self->_verticalSignScrollView trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v65[9] = v25;
  v26 = [(SteppingPageViewController *)self->_pagingVC signHeightConstraint];
  v65[10] = v26;
  v27 = [(UIButton *)self->_recenterButton widthAnchor];
  v28 = [v27 constraintEqualToConstant:60.0];
  v65[11] = v28;
  v29 = [(UIButton *)self->_recenterButton heightAnchor];
  v30 = [v29 constraintEqualToConstant:60.0];
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

  v5 = [(SteppingSignGenerator *)self->_signGenerator stepsWithCorrespondingSigns];
  [(GEOComposedRoute *)self->_route setManeuverDisplaySteps:v5];

  v6 = [[UIScrollView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  verticalSignScrollView = self->_verticalSignScrollView;
  self->_verticalSignScrollView = v6;

  [(UIScrollView *)self->_verticalSignScrollView setContentInsetAdjustmentBehavior:2];
  [(UIScrollView *)self->_verticalSignScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_verticalSignScrollView setScrollEnabled:0];
  [(UIScrollView *)self->_verticalSignScrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_verticalSignScrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_verticalSignScrollView setAccessibilityIdentifier:@"StepContainerVerticalSignScrollView"];
  v8 = [(OverlayContainerViewController *)self topContentView];
  [v8 addSubview:self->_verticalSignScrollView];

  v9 = [[SteppingPageViewController alloc] initWithSignGenerator:self->_signGenerator];
  pagingVC = self->_pagingVC;
  self->_pagingVC = v9;

  [(SteppingPageViewController *)self->_pagingVC setDelegate:self];
  [(SteppingPageViewController *)self->_pagingVC setAccessibilityIdentifier:@"StepContainerPagingView"];
  [(ContainerViewController *)self addChildViewController:self->_pagingVC];
  v11 = [(SteppingPageViewController *)self->_pagingVC view];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = self->_verticalSignScrollView;
  v13 = [(SteppingPageViewController *)self->_pagingVC view];
  [(UIScrollView *)v12 addSubview:v13];

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

  v22 = [(UIButton *)self->_recenterButton layer];
  [v22 setCornerRadius:30.0];

  v23 = [(UIButton *)self->_recenterButton layer];
  LODWORD(v24) = 1045220557;
  [v23 setShadowOpacity:v24];

  height = CGSizeZero.height;
  v26 = [(UIButton *)self->_recenterButton layer];
  [v26 setShadowOffset:{CGSizeZero.width, height}];

  v27 = [(UIButton *)self->_recenterButton layer];
  [v27 setShadowRadius:1.0];

  v28 = _UISolariumEnabled();
  v29 = -8.0;
  if (v28)
  {
    v29 = -5.0;
  }

  [(UIButton *)self->_recenterButton _setTouchInsets:v29, -16.0, v29, -16.0];
  v30 = [(StepContainerViewController *)self stepActionCoordinator];
  -[StepContainerViewController setUserTrackingViewVisible:](self, "setUserTrackingViewVisible:", [v30 isAuthorizedForPreciseLocation]);

  v31 = +[NSNotificationCenter defaultCenter];
  [v31 addObserver:self selector:"_locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

  v32 = [(OverlayContainerViewController *)self overlayView];
  [v32 addSubview:self->_recenterButton];

  v33 = [(StepContainerViewController *)self mapView];
  [(ContainerViewController *)self edgePadding];
  v35 = v34;
  [(ContainerViewController *)self edgePadding];
  [v33 _setCompassInsets:{v35, 0.0, 0.0, v36}];

  [(StepContainerViewController *)self _setupConstraints];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = StepContainerViewController;
  [(OverlayContainerViewController *)&v5 viewDidLoad];
  [(StepContainerViewController *)self _setupViews];
  v3 = [(StepContainerViewController *)self stepActionCoordinator];
  [v3 viewControllerPresentTray:self];

  v4 = [(StepContainerViewController *)self statusIndicatorManager];
  [v4 updateIndicatorType];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = StepContainerViewController;
  [(OverlayContainerViewController *)&v3 viewDidLayoutSubviews];
  [(StepContainerViewController *)self _updateCompassLayout];
}

- (void)showOverview:(BOOL)a3 andZoomToMapRegion:(BOOL)a4
{
  self->_showingOverview = a3;
  if (a4)
  {
    if (a3)
    {
      v5 = [(StepContainerViewController *)self mapCameraController];
      v6 = [(StepContainerViewController *)self route];
      v9 = v6;
      v7 = [NSArray arrayWithObjects:&v9 count:1];
      [v5 frameRoutes:v7 includeCompassInset:1 animated:1 completion:0];
    }

    else
    {
      v8 = [(SteppingPageViewController *)self->_pagingVC signIndex];

      [(StepContainerViewController *)self _updateMapRegionForSignAtIndex:v8];
    }
  }
}

- (void)updateWithDisplayedStep:(id)a3
{
  pagingVC = self->_pagingVC;
  v5 = a3;
  v6 = [(SteppingPageViewController *)pagingVC signGenerator];
  v7 = [v6 signIndexForStep:v5];

  [(SteppingPageViewController *)self->_pagingVC setSignIndex:v7];
  if (v7 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v8 = [(StepContainerViewController *)self route];
    [v8 setCurrentDisplayStep:v7];
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
  v3 = [(ContainerViewController *)self chromeViewController];
  v20 = [v3 mapView];

  v4 = +[GEOPlatform sharedPlatform];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = objc_alloc_init(NavDebugLocationManager);
    debugLocationManager = self->_debugLocationManager;
    self->_debugLocationManager = v6;

    v8 = [(ContainerViewController *)self chromeViewController];
    v9 = [v8 mapView];
    [(NavDebugLocationManager *)self->_debugLocationManager setMapView:v9];

    v10 = [v20 _debugConsole];
    [v10 setCustomTextEnabled:1];

    v11 = [v20 _debugConsole];
    [v11 setPageIndex:2];

    [(StepContainerViewController *)self _updateDebugConsoleForLocation:0];
  }

  v12 = +[MNNavigationService sharedService];
  v13 = [v12 isNavigatingFromTrace];

  if (v13)
  {
    v14 = [[NavigationDebugViewsController alloc] initWithDelegate:0];
    debugViewsController = self->_debugViewsController;
    self->_debugViewsController = v14;

    [(NavigationDebugViewsController *)self->_debugViewsController setShowTraceControlsForStaleLocations:0];
    v16 = [(StepContainerViewController *)self debugViewsController];
    v17 = [(OverlayContainerViewController *)self overlayView];
    v18 = [(OverlayContainerViewController *)self innerLayoutGuide];
    v19 = [(ContainerViewController *)self chromeViewController];
    [v16 addDebugViewsToView:v17 layoutGuide:v18 mapView:v20 modalPresentingViewController:v19];
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

- (StepContainerViewController)initWithRoute:(id)a3 initialStepIndex:(unint64_t)a4 desiredTrackingMode:(int64_t)a5
{
  result = [(StepContainerViewController *)self initWithRoute:a3 initialStepIndex:a4];
  if (result)
  {
    result->_hasDesiredUserTrackingMode = 1;
    result->_desiredUserTrackingMode = a5;
  }

  return result;
}

- (StepContainerViewController)initWithRoute:(id)a3 initialStepIndex:(unint64_t)a4
{
  v7 = a3;
  v25.receiver = self;
  v25.super_class = StepContainerViewController;
  v8 = [(ContainerViewController *)&v25 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(StepContainerViewController *)v8 setAccessibilityIdentifier:v10];

    objc_storeStrong(&v8->_route, a3);
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

    v8->_initialStepIndex = a4;
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