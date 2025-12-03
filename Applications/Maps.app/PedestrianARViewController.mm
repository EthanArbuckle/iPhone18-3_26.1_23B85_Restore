@interface PedestrianARViewController
- (ARConfiguration)configuration;
- (BOOL)isARSessionBeingRecorded;
- (BOOL)isARSessionReplayingFromRecording;
- (BOOL)isRerouteNecessary;
- (BOOL)isRerouting;
- (BOOL)isShowingFailureView;
- (BOOL)isWaitingForActiveFeature;
- (PedestrianARLocalizingView)localizingView;
- (PedestrianARViewController)initWithRoute:(id)route platformController:(id)controller guidanceObserver:(id)observer navigationService:(id)service;
- (PedestrianARViewControllerDelegate)arDelegate;
- (PlatformController)platformController;
- (id)mapView;
- (int)analyticsTarget;
- (void)VLFSessionLocalizationFailedWithError:(id)error;
- (void)VLFSessionLocalizationSucceeded;
- (void)_updateConstraintsForLandscape:(BOOL)landscape;
- (void)applicationDidEnterBackgroundNotification:(id)notification;
- (void)applyTransitionWithProgress:(double)progress;
- (void)cancelReroute;
- (void)cancelWaitingForActiveFeature;
- (void)closeButtonTapped:(id)tapped;
- (void)createViews;
- (void)dealloc;
- (void)didResignContainee:(id)containee finished:(BOOL)finished;
- (void)disableIdleTimer;
- (void)enableIdleTimer;
- (void)failureViewDismissButtonTapped:(id)tapped;
- (void)failureViewRetryButtonTapped:(id)tapped;
- (void)hideArrowGuidanceView;
- (void)hideFailureView;
- (void)hideInstructionView;
- (void)hideSafetyView;
- (void)mapLayer:(id)layer activeARWalkingFeatureDidUpdate:(id)update;
- (void)mapLayer:(id)layer failedElevationRequestWithReason:(int64_t)reason;
- (void)mapLayer:(id)layer updatedFeatures:(id)features;
- (void)navigationSession:(id)session didUpdateRouteCollection:(id)collection;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)playFailureHaptic;
- (void)playSuccessHaptic;
- (void)replayConfigurationDidFinishReplaying:(id)replaying;
- (void)reroute;
- (void)resetAnalytics;
- (void)session:(id)session didChangeGeoTrackingStatus:(id)status;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)sessionManager:(id)manager didGainSessionOwnership:(id)ownership;
- (void)sessionManager:(id)manager didResignSessionOwnership:(id)ownership;
- (void)setRoute:(id)route;
- (void)setState:(int64_t)state;
- (void)showArrowGuidanceView;
- (void)showFailureView;
- (void)showInstructionView;
- (void)showSafetyView;
- (void)showVLTracePopupIfNecessaryWithCompletion:(id)completion;
- (void)start;
- (void)startFailureViewTimeoutTimer;
- (void)stop;
- (void)ttrButtonTapped:(id)tapped;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)waitForActiveFeatureIfNecessary;
@end

@implementation PedestrianARViewController

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (PedestrianARViewControllerDelegate)arDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_arDelegate);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"PedestrianARAutoFocusDistanceKey"] && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == objectCopy))
  {
    configuration = [(PedestrianARViewController *)self configuration];
    if (configuration)
    {
      configuration2 = [(PedestrianARViewController *)self configuration];
      -[PedestrianARViewController setShouldUpdateCameraFocusLensPosition:](self, "setShouldUpdateCameraFocusLensPosition:", [configuration2 isAutoFocusEnabled] ^ 1);
    }

    else
    {
      [(PedestrianARViewController *)self setShouldUpdateCameraFocusLensPosition:0];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = PedestrianARViewController;
    [(PedestrianARViewController *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)navigationSession:(id)session didUpdateRouteCollection:(id)collection
{
  sessionCopy = session;
  collectionCopy = collection;
  v8 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v8, &v14);

  currentRoute = [collectionCopy currentRoute];
  v10 = sub_100C276B8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    uniqueRouteID = [currentRoute uniqueRouteID];
    uUIDString = [uniqueRouteID UUIDString];
    *buf = 134349314;
    selfCopy2 = self;
    v17 = 2112;
    v18 = uUIDString;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Route updated: %@", buf, 0x16u);
  }

  [(PedestrianARViewController *)self setRoute:currentRoute];
  if ([(PedestrianARViewController *)self isRerouting])
  {
    [(PedestrianARViewController *)self cancelReroute];
    v13 = sub_100C276B8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Reroute succeeded", buf, 0xCu);
    }

    [(PedestrianARViewController *)self waitForActiveFeatureIfNecessary];
  }

  os_activity_scope_leave(&v14);
}

- (void)applicationDidEnterBackgroundNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v5, &v7);

  v6 = sub_100C276B8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] App backgrounded; dismissing ourselves", buf, 0xCu);
  }

  [(PedestrianARViewController *)self stop];
  os_activity_scope_leave(&v7);
}

- (void)didResignContainee:(id)containee finished:(BOOL)finished
{
  containeeCopy = containee;
  failureContainee = [(PedestrianARViewController *)self failureContainee];

  if (failureContainee == containeeCopy)
  {
    isDismissing = [(PedestrianARViewController *)self isDismissing];

    if (isDismissing)
    {

      [(PedestrianARViewController *)self stop];
    }
  }

  else
  {
  }
}

- (void)failureViewDismissButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(activity, &state);

  v6 = sub_100799F08();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "User-initiated dismiss after failure", v7, 2u);
  }

  [(PedestrianARViewController *)self setIsDismissing:1];
  [(ContainerViewController *)self popLastViewControllerAnimated:1];
  os_activity_scope_leave(&state);
}

- (void)failureViewRetryButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(activity, &state);

  v6 = sub_100799F08();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "User-initiated retry after failure", buf, 2u);
  }

  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C27B28;
  v7[3] = &unk_101661B98;
  objc_copyWeak(&v8, buf);
  [(PedestrianARViewController *)self showVLTracePopupIfNecessaryWithCompletion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  os_activity_scope_leave(&state);
}

- (void)applyTransitionWithProgress:(double)progress
{
  view = [(PedestrianARViewController *)self view];
  [view setAlpha:progress];
}

- (void)ttrButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(activity, &state);

  v6 = sub_100799F08();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "User tapped TTR button", v8, 2u);
  }

  v7 = +[PedestrianARFloatingDebugViewController sharedInstance];
  [v7 composeTTR];

  os_activity_scope_leave(&state);
}

- (void)closeButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(activity, &state);

  v6 = sub_100799F08();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "User tapped close button", v7, 2u);
  }

  [(PedestrianARViewController *)self stop];
  os_activity_scope_leave(&state);
}

- (void)VLFSessionLocalizationFailedWithError:(id)error
{
  errorCopy = error;
  v5 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v5, &v12);

  v6 = sub_100C276B8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349314;
    selfCopy = self;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{public}p] VLF localization failed with error: %@", buf, 0x16u);
  }

  domain = [(PedestrianARViewController *)errorCopy domain];
  v8 = [domain isEqualToString:@"com.apple.Maps.VLFSession"];

  if (v8)
  {
    if ([(PedestrianARViewController *)errorCopy code]== 2)
    {
      analyticsTarget = [(PedestrianARViewController *)self analyticsTarget];
      v10 = 122;
    }

    else
    {
      analyticsTarget = [(PedestrianARViewController *)self analyticsTarget];
      v10 = 119;
    }
  }

  else
  {
    analyticsTarget = [(PedestrianARViewController *)self analyticsTarget];
    v10 = 120;
  }

  [GEOAPPortal captureUserAction:v10 target:analyticsTarget value:0];
  if (![(PedestrianARViewController *)self isStopping])
  {
    v11 = sub_100799F08();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = errorCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "VLF localization failed: %@", buf, 0xCu);
    }

    [(PedestrianARViewController *)self setState:3];
  }

  os_activity_scope_leave(&v12);
}

- (void)VLFSessionLocalizationSucceeded
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(activity, &state);

  v4 = sub_100799F08();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "VLF localization succeeded", v10, 2u);
  }

  v5 = +[PedestrianARSessionUsageTracker sharedInstance];
  route = [(PedestrianARViewController *)self route];
  uniqueRouteID = [route uniqueRouteID];
  uUIDString = [uniqueRouteID UUIDString];
  [v5 registerLocalizationSuccessForRoute:uUIDString];

  v9 = +[MapsARSessionManager sharedManager];
  [v9 requestSessionWithOwner:self];

  if ([(PedestrianARViewController *)self isRerouteNecessary])
  {
    [(PedestrianARViewController *)self reroute];
  }

  else
  {
    [(PedestrianARViewController *)self waitForActiveFeatureIfNecessary];
  }

  [GEOAPPortal captureUserAction:121 target:[(PedestrianARViewController *)self analyticsTarget] value:0];
  os_activity_scope_leave(&state);
}

- (void)sessionManager:(id)manager didResignSessionOwnership:(id)ownership
{
  managerCopy = manager;
  ownershipCopy = ownership;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(activity, &state);

  session = [(PedestrianARViewController *)self session];
  [session _removeObserver:self];

  if ([(PedestrianARViewController *)self isARSessionBeingRecorded])
  {
    configuration = [(PedestrianARViewController *)self configuration];
    fileURL = [configuration fileURL];
    path = [fileURL path];

    v13 = sub_100C276B8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Ending ARKit session recording", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    configuration2 = [(PedestrianARViewController *)self configuration];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100C2834C;
    v21 = &unk_10165D288;
    objc_copyWeak(&v23, buf);
    configuration3 = path;
    v22 = configuration3;
    [configuration2 finishRecordingWithHandler:&v18];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
    goto LABEL_7;
  }

  if ([(PedestrianARViewController *)self isARSessionReplayingFromRecording])
  {
    configuration3 = [(PedestrianARViewController *)self configuration];
    [configuration3 setDelegate:0];
LABEL_7:
  }

  v16 = [PedestrianARFloatingDebugViewController sharedInstance:v18];
  [v16 setSession:0];

  session = self->_session;
  self->_session = 0;

  os_activity_scope_leave(&state);
}

- (void)sessionManager:(id)manager didGainSessionOwnership:(id)ownership
{
  managerCopy = manager;
  ownershipCopy = ownership;
  v8 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v8, &v20);

  objc_storeStrong(&self->_session, ownership);
  if ([(PedestrianARViewController *)self isARSessionBeingRecorded])
  {
    configuration = [(PedestrianARViewController *)self configuration];
    fileURL = [configuration fileURL];
    path = [fileURL path];

    navigationService = [(PedestrianARViewController *)self navigationService];
    [navigationService recordPedestrianTracePath:path];
  }

  else
  {
    if ([(PedestrianARViewController *)self isARSessionReplayingFromRecording])
    {
      configuration = [(PedestrianARViewController *)self configuration];
      [configuration setDelegate:self];
      goto LABEL_6;
    }

    if (!GEOConfigGetBOOL())
    {
      goto LABEL_7;
    }

    configuration = [(PedestrianARViewController *)self configuration];
    GEOConfigGetDouble();
    v18 = v17;
    v19 = sub_100C276B8();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      selfCopy = self;
      v23 = 2048;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] Configuring VL with custom interval: %f", buf, 0x16u);
    }

    [configuration setVisualLocalizationCallInterval:v18];
    path = [(PedestrianARViewController *)self session];
    [path runWithConfiguration:configuration];
  }

LABEL_6:
LABEL_7:
  configuration2 = [(PedestrianARViewController *)self configuration];
  -[PedestrianARViewController setShouldUpdateCameraFocusLensPosition:](self, "setShouldUpdateCameraFocusLensPosition:", [configuration2 isAutoFocusEnabled] ^ 1);

  session = [(PedestrianARViewController *)self session];
  [session _addObserver:self];

  session2 = [(PedestrianARViewController *)self session];
  v16 = +[PedestrianARFloatingDebugViewController sharedInstance];
  [v16 setSession:session2];

  os_activity_scope_leave(&v20);
}

- (void)replayConfigurationDidFinishReplaying:(id)replaying
{
  replayingCopy = replaying;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 136316418;
        selfCopy3 = "[PedestrianARViewController replayConfigurationDidFinishReplaying:]";
        v18 = 2080;
        v19 = "PedestrianARViewController.m";
        v20 = 1024;
        v21 = 1116;
        v22 = 2080;
        v23 = "dispatch_get_main_queue()";
        v24 = 2080;
        v25 = dispatch_queue_get_label(&_dispatch_main_q);
        v26 = 2080;
        v27 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v16, 0x3Au);
      }

      if (sub_100E03634())
      {
        v14 = sub_10006D178();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = +[NSThread callStackSymbols];
          v16 = 138412290;
          selfCopy3 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
        }
      }
    }
  }

  v8 = sub_100C276B8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v16 = 134349056;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] ARKit replay ended", &v16, 0xCu);
  }

  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 BOOLForKey:@"MapsARSessionPlaybackLoopKey"];

  v11 = sub_100C276B8();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v12)
    {
      v16 = 134349056;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Looping replay", &v16, 0xCu);
    }

    [(PedestrianARViewController *)self setArkitSessionStartTimestamp:0];
    [(PedestrianARViewController *)self start];
  }

  else
  {
    if (v12)
    {
      v16 = 134349056;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Stopping AR", &v16, 0xCu);
    }

    [(PedestrianARViewController *)self stop];
  }
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C28D70;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(&_dispatch_main_q, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)session:(id)session didChangeGeoTrackingStatus:(id)status
{
  if ([status state] != 3)
  {
    v5 = sub_100C276B8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] ARKit is no longer localized; re-starting localization", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C28F54;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v7, buf);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

- (void)session:(id)session didFailWithError:(id)error
{
  errorCopy = error;
  v6 = sub_100C276B8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349314;
    selfCopy = self;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{public}p] ARSession did fail with error: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C2918C;
  v8[3] = &unk_101661340;
  objc_copyWeak(&v10, buf);
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)mapLayer:(id)layer failedElevationRequestWithReason:(int64_t)reason
{
  if (reason == 2 && ![(PedestrianARViewController *)self didFailUndulationLookup])
  {

    [(PedestrianARViewController *)self setDidFailUndulationLookup:1];
  }
}

- (void)mapLayer:(id)layer updatedFeatures:(id)features
{
  v8 = [(PedestrianARViewController *)self renderingView:layer];
  mapViewDelegate = [v8 mapViewDelegate];
  if ([mapViewDelegate hasActiveFeatureSet])
  {
    isWaitingForActiveFeature = [(PedestrianARViewController *)self isWaitingForActiveFeature];

    if (isWaitingForActiveFeature)
    {
      [(PedestrianARViewController *)self cancelWaitingForActiveFeature];
      v7 = sub_100C276B8();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Got first active feature; changing state to .Running", buf, 0xCu);
      }

      [(PedestrianARViewController *)self setState:2];
    }
  }

  else
  {
  }
}

- (void)mapLayer:(id)layer activeARWalkingFeatureDidUpdate:(id)update
{
  layerCopy = layer;
  updateCopy = update;
  v8 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v8, &v20);

  v9 = sub_100C276B8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    feature = [updateCopy feature];
    if ([updateCopy isVisible])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = v11;
    if ([updateCopy isDirectlyBehind])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = v13;
    [updateCopy screenHeading];
    *buf = 134350338;
    selfCopy = self;
    v23 = 2112;
    v24 = updateCopy;
    v25 = 2112;
    v26 = feature;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v14;
    v31 = 2048;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Feature did update: %@, feature: %@, isVisible: %@, isDirectlyBehind: %@, screenHeading: %f", buf, 0x3Eu);
  }

  feature2 = [updateCopy feature];
  if (feature2)
  {
    didRenderLabel = [(PedestrianARViewController *)self didRenderLabel];

    if ((didRenderLabel & 1) == 0)
    {
      [(PedestrianARViewController *)self setDidRenderLabel:1];
    }
  }

  if ([updateCopy isVisible])
  {
    v18 = +[PedestrianARSessionUsageTracker sharedInstance];
    [v18 registerARElementRendered];

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 postNotificationName:@"PedestrianARViewControllerARFeatureDidAppearNotification" object:self];
  }

  os_activity_scope_leave(&v20);
}

- (id)mapView
{
  renderingView = [(PedestrianARViewController *)self renderingView];
  mapViewDelegate = [renderingView mapViewDelegate];
  mapView = [mapViewDelegate mapView];

  return mapView;
}

- (int)analyticsTarget
{
  if ([(PedestrianARViewController *)self entryPoint])
  {
    return 402;
  }

  else
  {
    return 302;
  }
}

- (BOOL)isARSessionReplayingFromRecording
{
  configuration = [(PedestrianARViewController *)self configuration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isARSessionBeingRecorded
{
  configuration = [(PedestrianARViewController *)self configuration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (ARConfiguration)configuration
{
  session = [(PedestrianARViewController *)self session];
  configuration = [session configuration];

  return configuration;
}

- (void)playFailureHaptic
{
  notificationGenerator = [(PedestrianARViewController *)self notificationGenerator];
  [notificationGenerator notificationOccurred:2];
}

- (void)playSuccessHaptic
{
  notificationGenerator = [(PedestrianARViewController *)self notificationGenerator];
  [notificationGenerator notificationOccurred:0];
}

- (void)showVLTracePopupIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *location = 136315906;
      *&location[4] = "[PedestrianARViewController showVLTracePopupIfNecessaryWithCompletion:]";
      v23 = 2080;
      v24 = "PedestrianARViewController.m";
      v25 = 1024;
      v26 = 929;
      v27 = 2080;
      v28 = "completion != nil";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", location, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        *location = 138412290;
        *&location[4] = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
      }
    }
  }

  v5 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v5 isInternalInstall];

  if ((isInternalInstall & 1) == 0 || -[PedestrianARViewController didShowVLTracePopup](self, "didShowVLTracePopup") || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 BOOLForKey:@"PedestrianARViewControllerTemporarilyEnableVLTraceRecordingKey"], v7, v8) || GEOConfigGetBOOL())
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    v9 = [UIAlertController alertControllerWithTitle:@"Localization failure [Internal only]" message:@"Would you like to enable VL trace recording until the next time you cold launch Maps? VL trace recording is required to diagnose issues with localization." preferredStyle:1];
    objc_initWeak(location, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100C29DAC;
    v19[3] = &unk_10164E1A8;
    objc_copyWeak(&v21, location);
    v10 = completionCopy;
    v20 = v10;
    v11 = [UIAlertAction actionWithTitle:@"Yes" style:0 handler:v19];
    [v9 addAction:v11];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100C29FAC;
    v17[3] = &unk_101660728;
    v18 = v10;
    v12 = [UIAlertAction actionWithTitle:@"No" style:1 handler:v17];
    [v9 addAction:v12];

    chromeViewController = [(ContainerViewController *)self chromeViewController];
    [chromeViewController _maps_topMostPresentViewController:v9 animated:1 completion:0];

    [(PedestrianARViewController *)self setDidShowVLTracePopup:1];
    [(PedestrianARViewController *)self stopFailureViewTimeoutTimer];

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }
}

- (void)resetAnalytics
{
  [(PedestrianARViewController *)self setDidRenderLabel:0];

  [(PedestrianARViewController *)self setDidFailUndulationLookup:0];
}

- (void)startFailureViewTimeoutTimer
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(activity, &state);

  GEOConfigGetDouble();
  v5 = v4;
  v6 = sub_100C276B8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    selfCopy = self;
    v14 = 2048;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Starting failure view timeout with threshold: %f", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7 = &_dispatch_main_q;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100C2A254;
  v9[3] = &unk_1016616E8;
  objc_copyWeak(&v10, buf);
  v8 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v9 block:v5];
  [(PedestrianARViewController *)self setFailureViewTimeoutTimer:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  os_activity_scope_leave(&state);
}

- (void)cancelWaitingForActiveFeature
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v6);

  activeFeatureTimer = [(PedestrianARViewController *)self activeFeatureTimer];
  LOBYTE(v3) = activeFeatureTimer == 0;

  if ((v3 & 1) == 0)
  {
    v5 = sub_100C276B8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Canceling active feature timer", buf, 0xCu);
    }

    [(PedestrianARViewController *)self setActiveFeatureTimer:0];
  }

  os_activity_scope_leave(&v6);
}

- (void)waitForActiveFeatureIfNecessary
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(activity, &state);

  renderingView = [(PedestrianARViewController *)self renderingView];
  [renderingView setShouldGenerateFeatures:1];

  renderingView2 = [(PedestrianARViewController *)self renderingView];
  mapViewDelegate = [renderingView2 mapViewDelegate];
  hasActiveFeatureSet = [mapViewDelegate hasActiveFeatureSet];

  if (hasActiveFeatureSet)
  {
    v8 = sub_100C276B8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Active feature already exists; no need to wait", buf, 0xCu);
    }

    [(PedestrianARViewController *)self setState:2];
  }

  else
  {
    GEOConfigGetDouble();
    v10 = v9;
    v11 = sub_100C276B8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      selfCopy2 = self;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Waiting for active feature with timeout: %f", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v12 = &_dispatch_main_q;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100C2A710;
    v14[3] = &unk_1016616E8;
    objc_copyWeak(&v15, buf);
    v13 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v14 block:v10];
    [(PedestrianARViewController *)self setActiveFeatureTimer:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  os_activity_scope_leave(&state);
}

- (BOOL)isWaitingForActiveFeature
{
  activeFeatureTimer = [(PedestrianARViewController *)self activeFeatureTimer];
  v3 = activeFeatureTimer != 0;

  return v3;
}

- (void)cancelReroute
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v6);

  rerouteCompletionTimer = [(PedestrianARViewController *)self rerouteCompletionTimer];
  LOBYTE(v3) = rerouteCompletionTimer == 0;

  if ((v3 & 1) == 0)
  {
    v5 = sub_100C276B8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Canceling reroute timer", buf, 0xCu);
    }

    [(PedestrianARViewController *)self setRerouteCompletionTimer:0];
  }

  os_activity_scope_leave(&v6);
}

- (void)reroute
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(activity, &state);

  if (![(PedestrianARViewController *)self isRerouteNecessary])
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      selfCopy3 = "[PedestrianARViewController reroute]";
      v23 = 2080;
      v24 = "PedestrianARViewController.m";
      v25 = 1024;
      v26 = 833;
      v27 = 2080;
      v28 = "[self isRerouteNecessary]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        *buf = 138412290;
        selfCopy3 = v16;
        v17 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  rerouteCompletionTimer = [(PedestrianARViewController *)self rerouteCompletionTimer];
  v5 = rerouteCompletionTimer == 0;

  v6 = sub_100C276B8();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Rerouting", buf, 0xCu);
    }

    navigationService = [(PedestrianARViewController *)self navigationService];
    [navigationService forceReroute];

    GEOConfigGetDouble();
    v10 = v9;
    v11 = sub_100C276B8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      selfCopy3 = self;
      v23 = 2048;
      v24 = *&v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Starting reroute completion timer with timeout: %f", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v12 = &_dispatch_main_q;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100C2AD44;
    v18[3] = &unk_1016616E8;
    objc_copyWeak(&v19, buf);
    v13 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v18 block:v10];
    [(PedestrianARViewController *)self setRerouteCompletionTimer:v13];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Reroute already in progress; ignoring", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);
}

- (BOOL)isRerouting
{
  rerouteCompletionTimer = [(PedestrianARViewController *)self rerouteCompletionTimer];
  v3 = rerouteCompletionTimer != 0;

  return v3;
}

- (BOOL)isRerouteNecessary
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v30);

  route = [(PedestrianARViewController *)self route];
  if ([route source] == 2)
  {

LABEL_4:
    lastLocation = sub_100C276B8();
    if (os_log_type_enabled(lastLocation, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, lastLocation, OS_LOG_TYPE_INFO, "[%{public}p] The current route is curated or user created; do not re-route", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_23;
  }

  route2 = [(PedestrianARViewController *)self route];
  v6 = [route2 source] == 3;

  if (v6)
  {
    goto LABEL_4;
  }

  navigationService = [(PedestrianARViewController *)self navigationService];
  lastLocation = [navigationService lastLocation];

  session = [(PedestrianARViewController *)self session];
  currentFrame = [session currentFrame];
  location = [currentFrame location];

  if (lastLocation | location)
  {
    if (location)
    {
      v13 = location;
      v14 = [[GEOLocation alloc] initWithCLLocation:v13];
      v15 = [GEORouteMatcher alloc];
      route3 = [(PedestrianARViewController *)self route];
      v17 = [v15 initWithRoute:route3 auditToken:0];

      routeMatch = [v17 matchToRouteWithLocation:v14];
    }

    else
    {
      v13 = lastLocation;
      routeMatch = [v13 routeMatch];
    }

    [routeMatch distanceFromRoute];
    v20 = v19;
    GEOConfigGetDouble();
    v22 = v21;
    v23 = sub_100C276B8();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134349568;
      selfCopy4 = self;
      v33 = 2048;
      v34 = v20;
      v35 = 2048;
      v36 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%{public}p] Distance from the route: (%f) threshold: (%f)", buf, 0x20u);
    }

    if (v20 <= v22)
    {
      [v13 horizontalAccuracy];
      v25 = v24;
      GEOConfigGetDouble();
      v27 = v26;
      v28 = sub_100C276B8();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 134349568;
        selfCopy4 = self;
        v33 = 2048;
        v34 = v25;
        v35 = 2048;
        v36 = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}p] Location horizontal accuracy: (%f) threshold: (%f)", buf, 0x20u);
      }

      v8 = v25 > v27;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v13 = sub_100C276B8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] There is no known last location; cannot determine whether reroute is necessary", buf, 0xCu);
    }

    v8 = 0;
  }

LABEL_23:
  os_activity_scope_leave(&v30);
  return v8;
}

- (void)enableIdleTimer
{
  v3 = +[UIApplication sharedMapsDelegate];
  idleTimerController = [v3 idleTimerController];
  [idleTimerController setDesiredIdleTimerState:0 forReason:4];
}

- (void)disableIdleTimer
{
  v3 = +[UIApplication sharedMapsDelegate];
  idleTimerController = [v3 idleTimerController];
  [idleTimerController setDesiredIdleTimerState:1 forReason:4];
}

- (void)hideSafetyView
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v7);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    safetyView = [(PedestrianARViewController *)self safetyView];
    *buf = 134349312;
    selfCopy = self;
    v10 = 2048;
    v11 = safetyView;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Hiding safety view: %p", buf, 0x16u);
  }

  safetyView2 = [(PedestrianARViewController *)self safetyView];
  [safetyView2 setHidden:1];

  os_activity_scope_leave(&v7);
}

- (void)showSafetyView
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v7);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    safetyView = [(PedestrianARViewController *)self safetyView];
    *buf = 134349312;
    selfCopy = self;
    v10 = 2048;
    v11 = safetyView;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Showing safety view: %p", buf, 0x16u);
  }

  safetyView2 = [(PedestrianARViewController *)self safetyView];
  [safetyView2 setHidden:0];

  os_activity_scope_leave(&v7);
}

- (void)hideArrowGuidanceView
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v8);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    arrowGuidanceView = [(PedestrianARViewController *)self arrowGuidanceView];
    *buf = 134349312;
    selfCopy = self;
    v11 = 2048;
    v12 = arrowGuidanceView;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Hiding arrow guidance view: %p", buf, 0x16u);
  }

  arrowGuidanceView2 = [(PedestrianARViewController *)self arrowGuidanceView];
  [arrowGuidanceView2 _removeAllAnimations:0];

  arrowGuidanceView3 = [(PedestrianARViewController *)self arrowGuidanceView];
  [arrowGuidanceView3 setHidden:1];

  os_activity_scope_leave(&v8);
}

- (void)showArrowGuidanceView
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(activity, &state);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    arrowGuidanceView = [(PedestrianARViewController *)self arrowGuidanceView];
    *buf = 134349312;
    selfCopy = self;
    v14 = 2048;
    v15 = arrowGuidanceView;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Showing arrow guidance view: %p", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  arrowGuidanceView2 = [(PedestrianARViewController *)self arrowGuidanceView];
  [arrowGuidanceView2 setHidden:0];

  arrowGuidanceView3 = [(PedestrianARViewController *)self arrowGuidanceView];
  [arrowGuidanceView3 setAlpha:0.0];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C2B934;
  v10[3] = &unk_101661B18;
  v10[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C2B97C;
  v8[3] = &unk_1016619A8;
  objc_copyWeak(&v9, buf);
  [UIView animateWithDuration:0x10000 delay:v10 options:v8 animations:0.15 completion:0.6];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  os_activity_scope_leave(&state);
}

- (void)hideFailureView
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v7);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    failureContainee = [(PedestrianARViewController *)self failureContainee];
    *buf = 134349312;
    selfCopy = self;
    v10 = 2048;
    v11 = failureContainee;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Hiding failure view: %p", buf, 0x16u);
  }

  [(ContainerViewController *)self popLastViewControllerAnimated:1];
  closeButton = [(PedestrianARViewController *)self closeButton];
  [closeButton setHidden:0];

  os_activity_scope_leave(&v7);
}

- (void)showFailureView
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v10);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    failureContainee = [(PedestrianARViewController *)self failureContainee];
    *buf = 134349312;
    selfCopy = self;
    v13 = 2048;
    v14 = failureContainee;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Showing failure view: %p", buf, 0x16u);
  }

  vlfSession = [(PedestrianARViewController *)self vlfSession];
  [vlfSession stop];

  vlfSession2 = [(PedestrianARViewController *)self vlfSession];
  [vlfSession2 sendAnalytics:0];

  [(PedestrianARViewController *)self setArkitSessionStartTimestamp:0];
  closeButton = [(PedestrianARViewController *)self closeButton];
  [closeButton setHidden:1];

  failureContainee2 = [(PedestrianARViewController *)self failureContainee];
  [(ContainerViewController *)self presentController:failureContainee2];

  os_activity_scope_leave(&v10);
}

- (void)hideInstructionView
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v8);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    instructionContainerView = [(PedestrianARViewController *)self instructionContainerView];
    *buf = 134349312;
    selfCopy = self;
    v11 = 2048;
    v12 = instructionContainerView;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Hiding instruction view: %p", buf, 0x16u);
  }

  instructionContainerView2 = [(PedestrianARViewController *)self instructionContainerView];
  [instructionContainerView2 _removeAllAnimations:1];

  instructionContainerView3 = [(PedestrianARViewController *)self instructionContainerView];
  [instructionContainerView3 setHidden:1];

  os_activity_scope_leave(&v8);
}

- (void)showInstructionView
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(activity, &state);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    instructionContainerView = [(PedestrianARViewController *)self instructionContainerView];
    *buf = 134349312;
    selfCopy = self;
    v14 = 2048;
    v15 = instructionContainerView;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Showing instruction view: %p", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  instructionContainerView2 = [(PedestrianARViewController *)self instructionContainerView];
  [instructionContainerView2 setHidden:0];

  instructionContainerView3 = [(PedestrianARViewController *)self instructionContainerView];
  [instructionContainerView3 setAlpha:0.0];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C2C0D4;
  v10[3] = &unk_101661B18;
  v10[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C2C11C;
  v8[3] = &unk_1016619A8;
  objc_copyWeak(&v9, buf);
  [UIView animateWithDuration:0x10000 delay:v10 options:v8 animations:0.15 completion:0.6];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  os_activity_scope_leave(&state);
}

- (void)stop
{
  if (![(PedestrianARViewController *)self isStopping])
  {
    v3 = [(PedestrianARViewController *)self activity:0];
    os_activity_scope_enter(v3, &v13);

    [(PedestrianARViewController *)self setIsStopping:1];
    v4 = sub_100C276B8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Stopping pedestrian AR", buf, 0xCu);
    }

    [(PedestrianARViewController *)self setSentDisappearNotification:1];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"PedestrianARViewControllerDidDisappearNotification" object:self];

    v6 = objc_alloc_init(GEOVLFARFailureTypes);
    [v6 setArWalkingNoLabels:{-[PedestrianARViewController didRenderLabel](self, "didRenderLabel") ^ 1}];
    [v6 setArWalkingUndulationFailure:{-[PedestrianARViewController didFailUndulationLookup](self, "didFailUndulationLookup")}];
    vlfSession = [(PedestrianARViewController *)self vlfSession];
    [vlfSession stop];

    vlfSession2 = [(PedestrianARViewController *)self vlfSession];
    [vlfSession2 sendAnalytics:v6];

    [(PedestrianARViewController *)self setArkitSessionStartTimestamp:0];
    v9 = +[MapsARSessionManager sharedManager];
    [v9 resignSessionWithOwner:self];

    arrowGuidanceView = [(PedestrianARViewController *)self arrowGuidanceView];
    [arrowGuidanceView stop];

    arDelegate = [(PedestrianARViewController *)self arDelegate];
    [arDelegate pedestrianARViewControllerDidStop:self];

    v12 = +[PedestrianARFloatingDebugViewController sharedInstance];
    [v12 setSession:0];

    os_activity_scope_leave(&v13);
  }
}

- (void)start
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v31);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    selfCopy2 = self;
    v34 = 2080;
    v35 = "[PedestrianARViewController start]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] %s", buf, 0x16u);
  }

  arkitSessionStartTimestamp = [(PedestrianARViewController *)self arkitSessionStartTimestamp];
  v6 = arkitSessionStartTimestamp == 0;

  if (v6)
  {
    v11 = sub_100799F08();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Starting pedestrian AR session", buf, 2u);
    }

    v12 = sub_100799F08();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      origin = [(GEOComposedRoute *)self->_route origin];
      hawkQueryRepresentation = [origin hawkQueryRepresentation];
      destination = [(GEOComposedRoute *)self->_route destination];
      hawkQueryRepresentation2 = [destination hawkQueryRepresentation];
      *buf = 138478083;
      selfCopy2 = hawkQueryRepresentation;
      v34 = 2113;
      v35 = hawkQueryRepresentation2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Origin: %{private}@ -- Destination: %{private}@", buf, 0x16u);
    }

    v17 = +[NSDate date];
    [(PedestrianARViewController *)self setArkitSessionStartTimestamp:v17];

    [(PedestrianARViewController *)self cancelReroute];
    [(PedestrianARViewController *)self cancelWaitingForActiveFeature];
    v18 = [[VLFSession alloc] initWithMode:0];
    [(PedestrianARViewController *)self setVlfSession:v18];

    vlfSession = [(PedestrianARViewController *)self vlfSession];
    [vlfSession setDelegate:self];

    if ([(PedestrianARViewController *)self entryPoint])
    {
      vlfSession2 = [(PedestrianARViewController *)self vlfSession];
      [vlfSession2 setEntryPoint:4];
    }

    else
    {
      vlfSession2 = [(PedestrianARViewController *)self vlfSession];
      [vlfSession2 setEntryPoint:3];
    }

    vlfSession3 = [(PedestrianARViewController *)self vlfSession];
    [vlfSession3 start];

    notificationGenerator = [(PedestrianARViewController *)self notificationGenerator];
    [notificationGenerator prepare];

    vlfSession4 = [(PedestrianARViewController *)self vlfSession];
    session = [vlfSession4 session];
    v25 = +[PedestrianARFloatingDebugViewController sharedInstance];
    [v25 setSession:session];

    vlfSession5 = [(PedestrianARViewController *)self vlfSession];
    session2 = [vlfSession5 session];
    localizingView = [(PedestrianARViewController *)self localizingView];
    [localizingView setSession:session2];

    vlfSession6 = [(PedestrianARViewController *)self vlfSession];
    session3 = [vlfSession6 session];
    renderingView = [(PedestrianARViewController *)self renderingView];
    [renderingView setSession:session3];
  }

  else
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      selfCopy2 = "[PedestrianARViewController start]";
      v34 = 2080;
      v35 = "PedestrianARViewController.m";
      v36 = 1024;
      v37 = 652;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        *buf = 138412290;
        selfCopy2 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    vlfSession6 = sub_100C276B8();
    if (os_log_type_enabled(vlfSession6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, vlfSession6, OS_LOG_TYPE_ERROR, "[%{public}p] ARKit session has already been started. Cannot start twice.", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&v31);
}

- (void)createViews
{
  v3 = [PedestrianARRenderingView alloc];
  guidanceObserver = [(PedestrianARViewController *)self guidanceObserver];
  navigationService = [(PedestrianARViewController *)self navigationService];
  v6 = [(PedestrianARRenderingView *)v3 initWithGuidanceObserver:guidanceObserver navigationService:navigationService];

  [(PedestrianARRenderingView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  route = [(PedestrianARViewController *)self route];
  [(PedestrianARRenderingView *)v6 setRoute:route];

  mapViewDelegate = [(PedestrianARRenderingView *)v6 mapViewDelegate];
  [mapViewDelegate registerObserver:self];

  renderingView = self->_renderingView;
  self->_renderingView = v6;

  v10 = [PedestrianARGradientOverlay alloc];
  v11 = +[PedestrianARGradientOverlayConfiguration defaultConfiguration];
  v12 = [(PedestrianARGradientOverlay *)v10 initWithConfiguration:v11];

  [(PedestrianARGradientOverlay *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PedestrianARGradientOverlay *)v12 setUserInteractionEnabled:0];
  gradientOverlay = self->_gradientOverlay;
  self->_gradientOverlay = v12;

  ttrButton = +[NSUserDefaults standardUserDefaults];
  if ([ttrButton BOOLForKey:@"PedestrianARTTRButtonEnabledKey"])
  {
    v15 = +[MapsTapToRadarExtras shouldEnableTTRButton];

    if (!v15)
    {
      goto LABEL_5;
    }

    v16 = [UIImage imageNamed:@"PedestrianARTTR"];
    v17 = [v16 imageWithRenderingMode:2];

    v18 = [UIButton buttonWithType:0];
    [(UIButton *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v18 setImage:v17 forState:0];
    v19 = +[UIColor labelColor];
    [(UIButton *)v18 setTintColor:v19];

    v20 = +[UIColor secondarySystemBackgroundColor];
    [(UIButton *)v18 setBackgroundColor:v20];

    [(UIButton *)v18 _setCornerRadius:21.0];
    [(UIButton *)v18 addTarget:self action:"ttrButtonTapped:" forControlEvents:64];

    ttrButton = self->_ttrButton;
    self->_ttrButton = v18;
  }

LABEL_5:
  v21 = [[MUBlurView alloc] initWithBlurEffectStyle:16];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = +[UIColor secondarySystemBackgroundColor];
  [v21 setNonBlurredColor:v22];

  [v21 _setCornerRadius:21.0];
  layer = [v21 layer];
  [layer setMasksToBounds:1];

  [v21 setClipsToBounds:1];
  traitCollection = [(PedestrianARViewController *)self traitCollection];
  v25 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  v26 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleBody weight:v25 compatibleWithTraitCollection:UIFontWeightBold];
  v61 = [UIImageSymbolConfiguration configurationWithFont:v26];

  v27 = [UIImage systemImageNamed:@"xmark" withConfiguration:v61];
  v60 = [v27 imageWithRenderingMode:2];

  v28 = [UIButton buttonWithType:0];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v28 setImage:v60 forState:0];
  v29 = +[UIColor secondaryLabelColor];
  [v28 setTintColor:v29];

  [v28 addTarget:self action:"closeButtonTapped:" forControlEvents:64];
  [v21 addSubview:v28];
  leadingAnchor = [v28 leadingAnchor];
  leadingAnchor2 = [v21 leadingAnchor];
  v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v62[0] = v57;
  trailingAnchor = [v28 trailingAnchor];
  trailingAnchor2 = [v21 trailingAnchor];
  v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v62[1] = v54;
  topAnchor = [v28 topAnchor];
  topAnchor2 = [v21 topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v62[2] = v32;
  bottomAnchor = [v28 bottomAnchor];
  bottomAnchor2 = [v21 bottomAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v62[3] = v35;
  v36 = [NSArray arrayWithObjects:v62 count:4];
  [NSLayoutConstraint activateConstraints:v36];

  closeButton = self->_closeButton;
  self->_closeButton = v21;

  v38 = [PedestrianARInstructionContainerView alloc];
  mapViewDelegate2 = [(PedestrianARRenderingView *)self->_renderingView mapViewDelegate];
  v40 = [(PedestrianARInstructionContainerView *)v38 initWithMapViewDelegate:mapViewDelegate2 navigationService:self->_navigationService];

  [(PedestrianARInstructionContainerView *)v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PedestrianARInstructionContainerView *)v40 setUserInteractionEnabled:0];
  [(PedestrianARInstructionContainerView *)v40 setHidden:1];
  route2 = [(PedestrianARViewController *)self route];
  [(PedestrianARInstructionContainerView *)v40 setRoute:route2];

  instructionContainerView = self->_instructionContainerView;
  self->_instructionContainerView = v40;

  v43 = [PedestrianARArrowGuidanceView alloc];
  mapViewDelegate3 = [(PedestrianARRenderingView *)self->_renderingView mapViewDelegate];
  route3 = [(PedestrianARViewController *)self route];
  activity = [(PedestrianARViewController *)self activity];
  v47 = [(PedestrianARArrowGuidanceView *)v43 initWithMapViewDelegate:mapViewDelegate3 route:route3 activity:activity];

  [(PedestrianARArrowGuidanceView *)v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PedestrianARArrowGuidanceView *)v47 setUserInteractionEnabled:0];
  [(PedestrianARArrowGuidanceView *)v47 setHidden:1];
  arrowGuidanceView = self->_arrowGuidanceView;
  self->_arrowGuidanceView = v47;

  v49 = [[PedestrianARFailureContaineeViewController alloc] initWithEntryPoint:[(PedestrianARViewController *)self entryPoint]];
  [(PedestrianARFailureContaineeViewController *)v49 setFailureContaineeDelegate:self];
  failureContainee = self->_failureContainee;
  self->_failureContainee = v49;

  v51 = +[NSUserDefaults standardUserDefaults];
  LODWORD(mapViewDelegate3) = [v51 BOOLForKey:@"PedestrianARSafetyUIKey"];

  if (mapViewDelegate3)
  {
    v52 = objc_alloc_init(PedestrianARSafetyView);
    [(PedestrianARSafetyView *)v52 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PedestrianARSafetyView *)v52 setUserInteractionEnabled:0];
    [(PedestrianARSafetyView *)v52 setHidden:1];
    safetyView = self->_safetyView;
    self->_safetyView = v52;
  }
}

- (BOOL)isShowingFailureView
{
  selfCopy = self;
  currentViewController = [(ContainerViewController *)self currentViewController];
  failureContainee = [(PedestrianARViewController *)selfCopy failureContainee];
  LOBYTE(selfCopy) = currentViewController == failureContainee;

  return selfCopy;
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v7 = dispatch_queue_get_label(0);
  if (label != v7)
  {
    v8 = !label || v7 == 0;
    if (v8 || strcmp(label, v7))
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = 136316418;
        v19 = "[PedestrianARViewController setRoute:]";
        v20 = 2080;
        v21 = "PedestrianARViewController.m";
        v22 = 1024;
        v23 = 502;
        v24 = 2080;
        v25 = "dispatch_get_main_queue()";
        v26 = 2080;
        v27 = dispatch_queue_get_label(&_dispatch_main_q);
        v28 = 2080;
        v29 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v18, 0x3Au);
      }

      if (sub_100E03634())
      {
        v16 = sub_10006D178();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = +[NSThread callStackSymbols];
          v18 = 138412290;
          v19 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
        }
      }
    }
  }

  v9 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v9, &v18);

  v10 = self->_route;
  v11 = routeCopy;
  if (v11 | v10)
  {
    v12 = [v10 isEqual:v11];

    if ((v12 & 1) == 0)
    {
      objc_storeStrong(&self->_route, route);
      renderingView = [(PedestrianARViewController *)self renderingView];
      [renderingView setRoute:v11];

      instructionContainerView = [(PedestrianARViewController *)self instructionContainerView];
      [instructionContainerView setRoute:v11];
    }
  }

  os_activity_scope_leave(&v18);
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    activity = [(PedestrianARViewController *)self activity];
    os_activity_scope_enter(activity, &state);

    if ([(PedestrianARViewController *)self isStopping])
    {
      gradientOverlay = sub_100C276B8();
      if (os_log_type_enabled(gradientOverlay, OS_LOG_TYPE_INFO))
      {
        if (state >= 4)
        {
          state = [NSString stringWithFormat:@"%ld", state];
        }

        else
        {
          state = off_10164E1E8[state];
        }

        *buf = 134349314;
        selfCopy2 = self;
        v34 = 2112;
        v35 = state;
        _os_log_impl(&_mh_execute_header, gradientOverlay, OS_LOG_TYPE_INFO, "[%{public}p] Requested to update state: %@, but we are currently stopping; ignoring", buf, 0x16u);
      }
    }

    else
    {
      self->_state = state;
      v8 = sub_100C276B8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        if (state >= 4)
        {
          state2 = [NSString stringWithFormat:@"%ld", state];
        }

        else
        {
          state2 = off_10164E1E8[state];
        }

        *buf = 134349314;
        selfCopy2 = self;
        v34 = 2112;
        v35 = state2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Updating state: %@", buf, 0x16u);
      }

      if (state > 1)
      {
        if (state == 2)
        {
          objc_initWeak(buf, self);
          localizingView = [(PedestrianARViewController *)self localizingView];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_100C2DAE8;
          v29[3] = &unk_1016619A8;
          objc_copyWeak(&v30, buf);
          [localizingView hideAnimated:1 completion:v29];

          [(PedestrianARViewController *)self showInstructionView];
          [(PedestrianARViewController *)self showArrowGuidanceView];
          [(PedestrianARViewController *)self hideFailureView];
          safetyView = [(PedestrianARViewController *)self safetyView];
          [safetyView didStartARSession];

          [(PedestrianARViewController *)self showSafetyView];
          renderingView = [(PedestrianARViewController *)self renderingView];
          [renderingView setShouldGenerateFeatures:1];

          renderingView2 = [(PedestrianARViewController *)self renderingView];
          [renderingView2 setShouldShowFeatures:1];

          [(PedestrianARViewController *)self disableIdleTimer];
          [(PedestrianARViewController *)self stopFailureViewTimeoutTimer];
          [(PedestrianARViewController *)self cancelReroute];
          [(PedestrianARViewController *)self playSuccessHaptic];
          objc_destroyWeak(&v30);
          objc_destroyWeak(buf);
        }

        else if (state == 3)
        {
          objc_initWeak(buf, self);
          localizingView2 = [(PedestrianARViewController *)self localizingView];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100C2DB6C;
          v27[3] = &unk_1016619A8;
          objc_copyWeak(&v28, buf);
          [localizingView2 hideAnimated:0 completion:v27];

          [(PedestrianARViewController *)self hideInstructionView];
          [(PedestrianARViewController *)self hideArrowGuidanceView];
          [(PedestrianARViewController *)self showFailureView];
          [(PedestrianARViewController *)self hideSafetyView];
          safetyView2 = [(PedestrianARViewController *)self safetyView];
          [safetyView2 didEndARSession];

          renderingView3 = [(PedestrianARViewController *)self renderingView];
          [renderingView3 setShouldGenerateFeatures:1];

          renderingView4 = [(PedestrianARViewController *)self renderingView];
          [renderingView4 setShouldShowFeatures:0];

          [(PedestrianARViewController *)self enableIdleTimer];
          [(PedestrianARViewController *)self startFailureViewTimeoutTimer];
          [(PedestrianARViewController *)self cancelReroute];
          [(PedestrianARViewController *)self playFailureHaptic];
          objc_destroyWeak(&v28);
          objc_destroyWeak(buf);
        }
      }

      else if (state)
      {
        if (state == 1)
        {
          [(PedestrianARViewController *)self resetAnalytics];
          [(PedestrianARViewController *)self hideInstructionView];
          [(PedestrianARViewController *)self hideArrowGuidanceView];
          [(PedestrianARViewController *)self hideFailureView];
          [(PedestrianARViewController *)self hideSafetyView];
          safetyView3 = [(PedestrianARViewController *)self safetyView];
          [safetyView3 didEndARSession];

          isRerouteNecessary = [(PedestrianARViewController *)self isRerouteNecessary];
          renderingView5 = [(PedestrianARViewController *)self renderingView];
          [renderingView5 setShouldGenerateFeatures:isRerouteNecessary ^ 1];

          renderingView6 = [(PedestrianARViewController *)self renderingView];
          [renderingView6 setShouldShowFeatures:0];

          [(PedestrianARViewController *)self disableIdleTimer];
          [(PedestrianARViewController *)self stopFailureViewTimeoutTimer];
          [(PedestrianARViewController *)self cancelReroute];
          localizingView3 = [(PedestrianARViewController *)self localizingView];
          [localizingView3 showAnimated:1 completion:0];

          [GEOAPPortal captureUserAction:123 target:[(PedestrianARViewController *)self analyticsTarget] value:0];
        }
      }

      else
      {
        v19 = sub_10006D178();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          selfCopy2 = "[PedestrianARViewController setState:]";
          v34 = 2080;
          v35 = "PedestrianARViewController.m";
          v36 = 1024;
          v37 = 490;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
        }

        if (sub_100E03634())
        {
          v20 = sub_10006D178();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = +[NSThread callStackSymbols];
            *buf = 138412290;
            selfCopy2 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v26 = self->_state;
      gradientOverlay = [(PedestrianARViewController *)self gradientOverlay];
      [gradientOverlay setState:v26];
    }

    os_activity_scope_leave(&state);
  }
}

- (PedestrianARLocalizingView)localizingView
{
  localizingView = self->_localizingView;
  if (!localizingView)
  {
    v4 = [[PedestrianARLocalizingView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(PedestrianARLocalizingView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PedestrianARLocalizingView *)v4 setUserInteractionEnabled:0];
    v5 = self->_localizingView;
    self->_localizingView = v4;

    view = [(PedestrianARViewController *)self view];
    v7 = self->_localizingView;
    gradientOverlay = [(PedestrianARViewController *)self gradientOverlay];
    [view insertSubview:v7 aboveSubview:gradientOverlay];

    leadingAnchor = [(PedestrianARLocalizingView *)self->_localizingView leadingAnchor];
    view2 = [(PedestrianARViewController *)self view];
    leadingAnchor2 = [view2 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v27[0] = v23;
    trailingAnchor = [(PedestrianARLocalizingView *)self->_localizingView trailingAnchor];
    view3 = [(PedestrianARViewController *)self view];
    trailingAnchor2 = [view3 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v27[1] = v19;
    topAnchor = [(PedestrianARLocalizingView *)self->_localizingView topAnchor];
    view4 = [(PedestrianARViewController *)self view];
    topAnchor2 = [view4 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v27[2] = v11;
    bottomAnchor = [(PedestrianARLocalizingView *)self->_localizingView bottomAnchor];
    view5 = [(PedestrianARViewController *)self view];
    bottomAnchor2 = [view5 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v27[3] = v15;
    v16 = [NSArray arrayWithObjects:v27 count:4];
    [NSLayoutConstraint activateConstraints:v16];

    localizingView = self->_localizingView;
  }

  return localizingView;
}

- (void)_updateConstraintsForLandscape:(BOOL)landscape
{
  if (!landscape)
  {
    closeButtonTopConstraint = [(PedestrianARViewController *)self closeButtonTopConstraint];
    [closeButtonTopConstraint setConstant:10.0];

    closeButtonTrailingConstraint = [(PedestrianARViewController *)self closeButtonTrailingConstraint];
    [closeButtonTrailingConstraint setActive:0];

    closeButtonSafeAreaTrailingConstraint = [(PedestrianARViewController *)self closeButtonSafeAreaTrailingConstraint];
    [closeButtonSafeAreaTrailingConstraint setActive:1];

    closeButtonSafeAreaTrailingConstraint2 = [(PedestrianARViewController *)self closeButtonSafeAreaTrailingConstraint];
    [closeButtonSafeAreaTrailingConstraint2 setConstant:-16.0];

    arrowGuidanceViewLeadingSafeAreaConstraint = [(PedestrianARViewController *)self arrowGuidanceViewLeadingSafeAreaConstraint];
    [arrowGuidanceViewLeadingSafeAreaConstraint setActive:0];

    arrowGuidanceViewTrailingSafeAreaConstraint = [(PedestrianARViewController *)self arrowGuidanceViewTrailingSafeAreaConstraint];
    [arrowGuidanceViewTrailingSafeAreaConstraint setActive:0];

    arrowGuidanceViewLeadingConstraint = [(PedestrianARViewController *)self arrowGuidanceViewLeadingConstraint];
    [arrowGuidanceViewLeadingConstraint setActive:1];

    arrowGuidanceViewTrailingConstraint = [(PedestrianARViewController *)self arrowGuidanceViewTrailingConstraint];
    [arrowGuidanceViewTrailingConstraint setActive:1];

    arrowGuidanceViewLeadingConstraint2 = [(PedestrianARViewController *)self arrowGuidanceViewLeadingConstraint];
    [arrowGuidanceViewLeadingConstraint2 setConstant:16.0];

    arrowGuidanceViewTrailingConstraint2 = [(PedestrianARViewController *)self arrowGuidanceViewTrailingConstraint];
    v28 = -16.0;
    goto LABEL_9;
  }

  view = [(PedestrianARViewController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  view2 = [(PedestrianARViewController *)self view];
  window = [view2 window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  if (effectiveUserInterfaceLayoutDirection != 1)
  {
    if (interfaceOrientation != 4)
    {
      goto LABEL_4;
    }

LABEL_7:
    closeButtonTrailingConstraint2 = [(PedestrianARViewController *)self closeButtonTrailingConstraint];
    [closeButtonTrailingConstraint2 setActive:0];

    closeButtonSafeAreaTrailingConstraint3 = [(PedestrianARViewController *)self closeButtonSafeAreaTrailingConstraint];
    [closeButtonSafeAreaTrailingConstraint3 setActive:1];

    closeButtonSafeAreaTrailingConstraint4 = [(PedestrianARViewController *)self closeButtonSafeAreaTrailingConstraint];
    [closeButtonSafeAreaTrailingConstraint4 setConstant:0.0];

    arrowGuidanceViewLeadingSafeAreaConstraint2 = [(PedestrianARViewController *)self arrowGuidanceViewLeadingSafeAreaConstraint];
    [arrowGuidanceViewLeadingSafeAreaConstraint2 setActive:0];

    arrowGuidanceViewTrailingSafeAreaConstraint2 = [(PedestrianARViewController *)self arrowGuidanceViewTrailingSafeAreaConstraint];
    [arrowGuidanceViewTrailingSafeAreaConstraint2 setActive:1];

    arrowGuidanceViewLeadingConstraint3 = [(PedestrianARViewController *)self arrowGuidanceViewLeadingConstraint];
    [arrowGuidanceViewLeadingConstraint3 setActive:1];

    arrowGuidanceViewLeadingConstraint4 = [(PedestrianARViewController *)self arrowGuidanceViewLeadingConstraint];
    [arrowGuidanceViewLeadingConstraint4 setConstant:24.0];

    arrowGuidanceViewTrailingConstraint3 = [(PedestrianARViewController *)self arrowGuidanceViewTrailingConstraint];
    [arrowGuidanceViewTrailingConstraint3 setActive:0];
    goto LABEL_8;
  }

  if (interfaceOrientation == 3)
  {
    goto LABEL_7;
  }

LABEL_4:
  closeButtonSafeAreaTrailingConstraint5 = [(PedestrianARViewController *)self closeButtonSafeAreaTrailingConstraint];
  [closeButtonSafeAreaTrailingConstraint5 setActive:0];

  closeButtonTrailingConstraint3 = [(PedestrianARViewController *)self closeButtonTrailingConstraint];
  [closeButtonTrailingConstraint3 setActive:1];

  closeButtonTrailingConstraint4 = [(PedestrianARViewController *)self closeButtonTrailingConstraint];
  [closeButtonTrailingConstraint4 setConstant:-24.0];

  arrowGuidanceViewLeadingSafeAreaConstraint3 = [(PedestrianARViewController *)self arrowGuidanceViewLeadingSafeAreaConstraint];
  [arrowGuidanceViewLeadingSafeAreaConstraint3 setActive:1];

  arrowGuidanceViewTrailingSafeAreaConstraint3 = [(PedestrianARViewController *)self arrowGuidanceViewTrailingSafeAreaConstraint];
  [arrowGuidanceViewTrailingSafeAreaConstraint3 setActive:0];

  arrowGuidanceViewLeadingConstraint5 = [(PedestrianARViewController *)self arrowGuidanceViewLeadingConstraint];
  [arrowGuidanceViewLeadingConstraint5 setActive:0];

  arrowGuidanceViewTrailingConstraint4 = [(PedestrianARViewController *)self arrowGuidanceViewTrailingConstraint];
  [arrowGuidanceViewTrailingConstraint4 setActive:1];

  arrowGuidanceViewTrailingConstraint3 = [(PedestrianARViewController *)self arrowGuidanceViewTrailingConstraint];
  [arrowGuidanceViewTrailingConstraint3 setConstant:-24.0];
LABEL_8:

  arrowGuidanceViewTrailingConstraint2 = [(PedestrianARViewController *)self closeButtonTopConstraint];
  v28 = 24.0;
LABEL_9:
  v36 = arrowGuidanceViewTrailingConstraint2;
  [arrowGuidanceViewTrailingConstraint2 setConstant:v28];
}

- (void)viewSafeAreaInsetsDidChange
{
  v7.receiver = self;
  v7.super_class = PedestrianARViewController;
  [(ContainerViewController *)&v7 viewSafeAreaInsetsDidChange];
  view = [(PedestrianARViewController *)self view];
  [view frame];
  Width = CGRectGetWidth(v8);
  view2 = [(PedestrianARViewController *)self view];
  [view2 frame];
  v6 = Width > CGRectGetHeight(v9);

  [(PedestrianARViewController *)self _updateConstraintsForLandscape:v6];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v15.receiver = self;
  v15.super_class = PedestrianARViewController;
  [(ContainerViewController *)&v15 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C2E480;
  v11[3] = &unk_10164E158;
  objc_copyWeak(&v12, &location);
  v13 = width > height;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C2E4D0;
  v8[3] = &unk_10164E158;
  objc_copyWeak(&v9, &location);
  v10 = width > height;
  [coordinatorCopy animateAlongsideTransition:v11 completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(activity, &state);

  v6 = sub_100799F08();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Ending pedestrian AR session", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = PedestrianARViewController;
  [(ContainerViewController *)&v7 viewWillDisappear:disappearCopy];
  [(PedestrianARViewController *)self stop];
  os_activity_scope_leave(&state);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(activity, &state);

  v10.receiver = self;
  v10.super_class = PedestrianARViewController;
  [(ContainerViewController *)&v10 viewWillAppear:appearCopy];
  v6 = +[PedestrianARSessionUsageTracker sharedInstance];
  route = [(PedestrianARViewController *)self route];
  uniqueRouteID = [route uniqueRouteID];
  uUIDString = [uniqueRouteID UUIDString];
  [v6 registerUserEnteredARForRoute:uUIDString entryPoint:{-[PedestrianARViewController entryPoint](self, "entryPoint")}];

  os_activity_scope_leave(&state);
}

- (void)viewDidLoad
{
  v161.receiver = self;
  v161.super_class = PedestrianARViewController;
  [(ContainerViewController *)&v161 viewDidLoad];
  [(PedestrianARViewController *)self setOverrideUserInterfaceStyle:2];
  v160 = +[NSMutableArray array];
  view = [(PedestrianARViewController *)self view];
  renderingView = self->_renderingView;
  containerView = [(ContainerViewController *)self containerView];
  [view insertSubview:renderingView belowSubview:containerView];

  leadingAnchor = [(PedestrianARRenderingView *)self->_renderingView leadingAnchor];
  view2 = [(PedestrianARViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v139 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v168[0] = v139;
  trailingAnchor = [(PedestrianARRenderingView *)self->_renderingView trailingAnchor];
  view3 = [(PedestrianARViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v120 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v168[1] = v120;
  topAnchor = [(PedestrianARRenderingView *)self->_renderingView topAnchor];
  view4 = [(PedestrianARViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v168[2] = v9;
  bottomAnchor = [(PedestrianARRenderingView *)self->_renderingView bottomAnchor];
  view5 = [(PedestrianARViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v168[3] = v13;
  v14 = [NSArray arrayWithObjects:v168 count:4];
  [v160 addObjectsFromArray:v14];

  view6 = [(PedestrianARViewController *)self view];
  gradientOverlay = self->_gradientOverlay;
  containerView2 = [(ContainerViewController *)self containerView];
  [view6 insertSubview:gradientOverlay belowSubview:containerView2];

  leadingAnchor3 = [(PedestrianARGradientOverlay *)self->_gradientOverlay leadingAnchor];
  view7 = [(PedestrianARViewController *)self view];
  leadingAnchor4 = [view7 leadingAnchor];
  v140 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v167[0] = v140;
  trailingAnchor3 = [(PedestrianARGradientOverlay *)self->_gradientOverlay trailingAnchor];
  view8 = [(PedestrianARViewController *)self view];
  trailingAnchor4 = [view8 trailingAnchor];
  v121 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v167[1] = v121;
  topAnchor3 = [(PedestrianARGradientOverlay *)self->_gradientOverlay topAnchor];
  view9 = [(PedestrianARViewController *)self view];
  topAnchor4 = [view9 topAnchor];
  v21 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v167[2] = v21;
  bottomAnchor3 = [(PedestrianARGradientOverlay *)self->_gradientOverlay bottomAnchor];
  view10 = [(PedestrianARViewController *)self view];
  bottomAnchor4 = [view10 bottomAnchor];
  v25 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v167[3] = v25;
  v26 = [NSArray arrayWithObjects:v167 count:4];
  [v160 addObjectsFromArray:v26];

  view11 = [(PedestrianARViewController *)self view];
  instructionContainerView = self->_instructionContainerView;
  containerView3 = [(ContainerViewController *)self containerView];
  [view11 insertSubview:instructionContainerView belowSubview:containerView3];

  leadingAnchor5 = [(PedestrianARInstructionContainerView *)self->_instructionContainerView leadingAnchor];
  view12 = [(PedestrianARViewController *)self view];
  leadingAnchor6 = [view12 leadingAnchor];
  v141 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v166[0] = v141;
  trailingAnchor5 = [(PedestrianARInstructionContainerView *)self->_instructionContainerView trailingAnchor];
  view13 = [(PedestrianARViewController *)self view];
  trailingAnchor6 = [view13 trailingAnchor];
  v122 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v166[1] = v122;
  topAnchor5 = [(PedestrianARInstructionContainerView *)self->_instructionContainerView topAnchor];
  view14 = [(PedestrianARViewController *)self view];
  topAnchor6 = [view14 topAnchor];
  v33 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v166[2] = v33;
  bottomAnchor5 = [(PedestrianARInstructionContainerView *)self->_instructionContainerView bottomAnchor];
  view15 = [(PedestrianARViewController *)self view];
  bottomAnchor6 = [view15 bottomAnchor];
  v37 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v166[3] = v37;
  v38 = [NSArray arrayWithObjects:v166 count:4];
  [v160 addObjectsFromArray:v38];

  view16 = [(PedestrianARViewController *)self view];
  arrowGuidanceView = self->_arrowGuidanceView;
  containerView4 = [(ContainerViewController *)self containerView];
  [view16 insertSubview:arrowGuidanceView belowSubview:containerView4];

  leadingAnchor7 = [(PedestrianARArrowGuidanceView *)self->_arrowGuidanceView leadingAnchor];
  view17 = [(PedestrianARViewController *)self view];
  leadingAnchor8 = [view17 leadingAnchor];
  v45 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:16.0];
  arrowGuidanceViewLeadingConstraint = self->_arrowGuidanceViewLeadingConstraint;
  self->_arrowGuidanceViewLeadingConstraint = v45;

  trailingAnchor7 = [(PedestrianARArrowGuidanceView *)self->_arrowGuidanceView trailingAnchor];
  view18 = [(PedestrianARViewController *)self view];
  trailingAnchor8 = [view18 trailingAnchor];
  v50 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-16.0];
  arrowGuidanceViewTrailingConstraint = self->_arrowGuidanceViewTrailingConstraint;
  self->_arrowGuidanceViewTrailingConstraint = v50;

  leadingAnchor9 = [(PedestrianARArrowGuidanceView *)self->_arrowGuidanceView leadingAnchor];
  view19 = [(PedestrianARViewController *)self view];
  safeAreaLayoutGuide = [view19 safeAreaLayoutGuide];
  leadingAnchor10 = [safeAreaLayoutGuide leadingAnchor];
  v56 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  arrowGuidanceViewLeadingSafeAreaConstraint = self->_arrowGuidanceViewLeadingSafeAreaConstraint;
  self->_arrowGuidanceViewLeadingSafeAreaConstraint = v56;

  trailingAnchor9 = [(PedestrianARArrowGuidanceView *)self->_arrowGuidanceView trailingAnchor];
  view20 = [(PedestrianARViewController *)self view];
  safeAreaLayoutGuide2 = [view20 safeAreaLayoutGuide];
  trailingAnchor10 = [safeAreaLayoutGuide2 trailingAnchor];
  v62 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  arrowGuidanceViewTrailingSafeAreaConstraint = self->_arrowGuidanceViewTrailingSafeAreaConstraint;
  self->_arrowGuidanceViewTrailingSafeAreaConstraint = v62;

  v64 = self->_arrowGuidanceViewTrailingConstraint;
  v165[0] = self->_arrowGuidanceViewLeadingConstraint;
  v165[1] = v64;
  heightAnchor = [(PedestrianARArrowGuidanceView *)self->_arrowGuidanceView heightAnchor];
  view21 = [(PedestrianARViewController *)self view];
  heightAnchor2 = [view21 heightAnchor];
  v67 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.5];
  v165[2] = v67;
  topAnchor7 = [(PedestrianARArrowGuidanceView *)self->_arrowGuidanceView topAnchor];
  bottomAnchor7 = [(MUBlurView *)self->_closeButton bottomAnchor];
  v70 = [topAnchor7 constraintEqualToAnchor:bottomAnchor7];
  v165[3] = v70;
  v71 = [NSArray arrayWithObjects:v165 count:4];
  [v160 addObjectsFromArray:v71];

  view22 = [(PedestrianARViewController *)self view];
  closeButton = self->_closeButton;
  containerView5 = [(ContainerViewController *)self containerView];
  [view22 insertSubview:closeButton belowSubview:containerView5];

  topAnchor8 = [(MUBlurView *)self->_closeButton topAnchor];
  view23 = [(PedestrianARViewController *)self view];
  safeAreaLayoutGuide3 = [view23 safeAreaLayoutGuide];
  topAnchor9 = [safeAreaLayoutGuide3 topAnchor];
  v79 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  closeButtonTopConstraint = self->_closeButtonTopConstraint;
  self->_closeButtonTopConstraint = v79;

  trailingAnchor11 = [(MUBlurView *)self->_closeButton trailingAnchor];
  view24 = [(PedestrianARViewController *)self view];
  trailingAnchor12 = [view24 trailingAnchor];
  v84 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  closeButtonTrailingConstraint = self->_closeButtonTrailingConstraint;
  self->_closeButtonTrailingConstraint = v84;

  trailingAnchor13 = [(MUBlurView *)self->_closeButton trailingAnchor];
  view25 = [(PedestrianARViewController *)self view];
  safeAreaLayoutGuide4 = [view25 safeAreaLayoutGuide];
  trailingAnchor14 = [safeAreaLayoutGuide4 trailingAnchor];
  v90 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
  closeButtonSafeAreaTrailingConstraint = self->_closeButtonSafeAreaTrailingConstraint;
  self->_closeButtonSafeAreaTrailingConstraint = v90;

  v92 = self->_closeButtonTopConstraint;
  v164[0] = self->_closeButtonSafeAreaTrailingConstraint;
  v164[1] = v92;
  widthAnchor = [(MUBlurView *)self->_closeButton widthAnchor];
  v94 = [widthAnchor constraintEqualToConstant:42.0];
  v164[2] = v94;
  heightAnchor3 = [(MUBlurView *)self->_closeButton heightAnchor];
  widthAnchor2 = [(MUBlurView *)self->_closeButton widthAnchor];
  v97 = [heightAnchor3 constraintEqualToAnchor:widthAnchor2];
  v164[3] = v97;
  v98 = [NSArray arrayWithObjects:v164 count:4];
  [v160 addObjectsFromArray:v98];

  if (self->_ttrButton)
  {
    view26 = [(PedestrianARViewController *)self view];
    ttrButton = self->_ttrButton;
    containerView6 = [(ContainerViewController *)self containerView];
    [view26 insertSubview:ttrButton belowSubview:containerView6];

    leadingAnchor11 = [(UIButton *)self->_ttrButton leadingAnchor];
    view27 = [(PedestrianARViewController *)self view];
    safeAreaLayoutGuide5 = [view27 safeAreaLayoutGuide];
    leadingAnchor12 = [safeAreaLayoutGuide5 leadingAnchor];
    v137 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:16.0];
    v163[0] = v137;
    topAnchor10 = [(UIButton *)self->_ttrButton topAnchor];
    topAnchor11 = [(MUBlurView *)self->_closeButton topAnchor];
    v123 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
    v163[1] = v123;
    widthAnchor3 = [(UIButton *)self->_ttrButton widthAnchor];
    widthAnchor4 = [(MUBlurView *)self->_closeButton widthAnchor];
    v104 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v163[2] = v104;
    heightAnchor4 = [(UIButton *)self->_ttrButton heightAnchor];
    widthAnchor5 = [(UIButton *)self->_ttrButton widthAnchor];
    v107 = [heightAnchor4 constraintEqualToAnchor:widthAnchor5];
    v163[3] = v107;
    v108 = [NSArray arrayWithObjects:v163 count:4];
    [v160 addObjectsFromArray:v108];
  }

  if (self->_safetyView)
  {
    view28 = [(PedestrianARViewController *)self view];
    [view28 insertSubview:self->_safetyView belowSubview:self->_closeButton];

    leadingAnchor13 = [(PedestrianARSafetyView *)self->_safetyView leadingAnchor];
    view29 = [(PedestrianARViewController *)self view];
    leadingAnchor14 = [view29 leadingAnchor];
    v143 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
    v162[0] = v143;
    trailingAnchor15 = [(PedestrianARSafetyView *)self->_safetyView trailingAnchor];
    view30 = [(PedestrianARViewController *)self view];
    trailingAnchor16 = [view30 trailingAnchor];
    v110 = [trailingAnchor15 constraintEqualToAnchor:trailingAnchor16];
    v162[1] = v110;
    topAnchor12 = [(PedestrianARSafetyView *)self->_safetyView topAnchor];
    view31 = [(PedestrianARViewController *)self view];
    topAnchor13 = [view31 topAnchor];
    v114 = [topAnchor12 constraintEqualToAnchor:topAnchor13];
    v162[2] = v114;
    bottomAnchor8 = [(PedestrianARSafetyView *)self->_safetyView bottomAnchor];
    view32 = [(PedestrianARViewController *)self view];
    bottomAnchor9 = [view32 bottomAnchor];
    v118 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    v162[3] = v118;
    v119 = [NSArray arrayWithObjects:v162 count:4];
    [v160 addObjectsFromArray:v119];
  }

  [NSLayoutConstraint activateConstraints:v160];
}

- (void)dealloc
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(activity, &state);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Deallocing", buf, 0xCu);
  }

  session = [(PedestrianARViewController *)self session];
  [session _removeObserver:self];

  v6 = +[MapsARSessionManager sharedManager];
  [v6 resignSessionWithOwner:self];

  [(NavigationSession *)self->_navigationSession unregisterObserver:self];
  safetyView = [(PedestrianARViewController *)self safetyView];
  [safetyView didEndARSession];

  [(PedestrianARViewController *)self enableIdleTimer];
  if (!self->_sentDisappearNotification)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"PedestrianARViewControllerDidDisappearNotification" object:self];
  }

  v9 = +[NSUserDefaults standardUserDefaults];
  [v9 removeObserver:self forKeyPath:@"PedestrianARAutoFocusDistanceKey"];

  os_activity_scope_leave(&state);
  v10.receiver = self;
  v10.super_class = PedestrianARViewController;
  [(PedestrianARViewController *)&v10 dealloc];
}

- (PedestrianARViewController)initWithRoute:(id)route platformController:(id)controller guidanceObserver:(id)observer navigationService:(id)service
{
  routeCopy = route;
  controllerCopy = controller;
  observerCopy = observer;
  serviceCopy = service;
  if (!routeCopy)
  {
    v30 = sub_10006D178();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v52 = "[PedestrianARViewController initWithRoute:platformController:guidanceObserver:navigationService:]";
      v53 = 2080;
      v54 = "PedestrianARViewController.m";
      v55 = 1024;
      v56 = 146;
      v57 = 2080;
      v58 = "route != nil";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v31 = sub_10006D178();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v52 = v32;
        v33 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!controllerCopy)
  {
    v34 = sub_10006D178();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v52 = "[PedestrianARViewController initWithRoute:platformController:guidanceObserver:navigationService:]";
      v53 = 2080;
      v54 = "PedestrianARViewController.m";
      v55 = 1024;
      v56 = 147;
      v57 = 2080;
      v58 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v35 = sub_10006D178();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v52 = v36;
        v37 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!observerCopy)
  {
    v38 = sub_10006D178();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v52 = "[PedestrianARViewController initWithRoute:platformController:guidanceObserver:navigationService:]";
      v53 = 2080;
      v54 = "PedestrianARViewController.m";
      v55 = 1024;
      v56 = 148;
      v57 = 2080;
      v58 = "guidanceObserver != nil";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v39 = sub_10006D178();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v52 = v40;
        v41 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!serviceCopy)
  {
    v42 = sub_10006D178();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v52 = "[PedestrianARViewController initWithRoute:platformController:guidanceObserver:navigationService:]";
      v53 = 2080;
      v54 = "PedestrianARViewController.m";
      v55 = 1024;
      v56 = 149;
      v57 = 2080;
      v58 = "navigationService != nil";
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v43 = sub_10006D178();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v52 = v44;
        v45 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v50.receiver = self;
  v50.super_class = PedestrianARViewController;
  v14 = [(ContainerViewController *)&v50 initWithNibName:0 bundle:0];
  if (v14)
  {
    v15 = _os_activity_create(&_mh_execute_header, "Pedestrian AR Session", &_os_activity_current, OS_ACTIVITY_FLAG_DETACHED);
    [(PedestrianARViewController *)v14 setActivity:v15];

    v16 = [(PedestrianARViewController *)v14 activity:0];
    os_activity_scope_enter(v16, &v49);

    v17 = sub_100C276B8();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v52 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 postNotificationName:@"PedestrianARViewControllerDidAppearNotification" object:v14];

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v14 selector:"applicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v14 selector:"vlfSessionDidGetFirstFrameNotification:" name:@"VLFSessionDidGetFirstFrameNotification" object:0];

    v21 = +[NSUserDefaults standardUserDefaults];
    [v21 addObserver:v14 forKeyPath:@"PedestrianARAutoFocusDistanceKey" options:0 context:0];

    objc_storeWeak(&v14->_platformController, controllerCopy);
    objc_storeStrong(&v14->_guidanceObserver, observer);
    objc_storeStrong(&v14->_navigationService, service);
    WeakRetained = objc_loadWeakRetained(&v14->_platformController);
    currentSession = [WeakRetained currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = currentSession;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    navigationSession = v14->_navigationSession;
    v14->_navigationSession = v25;

    if (!v14->_navigationSession)
    {
      v46 = sub_10006D178();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v52 = "[PedestrianARViewController initWithRoute:platformController:guidanceObserver:navigationService:]";
        v53 = 2080;
        v54 = "PedestrianARViewController.m";
        v55 = 1024;
        v56 = 170;
        v57 = 2080;
        v58 = "_navigationSession != nil";
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v47 = sub_10006D178();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v52 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v14->_entryPoint = [(NavigationSession *)v14->_navigationSession guidanceType]!= 2;
    [(NavigationSession *)v14->_navigationSession registerObserver:v14];
    v27 = objc_alloc_init(UINotificationFeedbackGenerator);
    notificationGenerator = v14->_notificationGenerator;
    v14->_notificationGenerator = v27;

    [(PedestrianARViewController *)v14 setRoute:routeCopy];
    [(PedestrianARViewController *)v14 createViews];
    [(PedestrianARViewController *)v14 start];
    os_activity_scope_leave(&v49);
  }

  return v14;
}

@end