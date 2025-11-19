@interface PedestrianARViewController
- (ARConfiguration)configuration;
- (BOOL)isARSessionBeingRecorded;
- (BOOL)isARSessionReplayingFromRecording;
- (BOOL)isRerouteNecessary;
- (BOOL)isRerouting;
- (BOOL)isShowingFailureView;
- (BOOL)isWaitingForActiveFeature;
- (PedestrianARLocalizingView)localizingView;
- (PedestrianARViewController)initWithRoute:(id)a3 platformController:(id)a4 guidanceObserver:(id)a5 navigationService:(id)a6;
- (PedestrianARViewControllerDelegate)arDelegate;
- (PlatformController)platformController;
- (id)mapView;
- (int)analyticsTarget;
- (void)VLFSessionLocalizationFailedWithError:(id)a3;
- (void)VLFSessionLocalizationSucceeded;
- (void)_updateConstraintsForLandscape:(BOOL)a3;
- (void)applicationDidEnterBackgroundNotification:(id)a3;
- (void)applyTransitionWithProgress:(double)a3;
- (void)cancelReroute;
- (void)cancelWaitingForActiveFeature;
- (void)closeButtonTapped:(id)a3;
- (void)createViews;
- (void)dealloc;
- (void)didResignContainee:(id)a3 finished:(BOOL)a4;
- (void)disableIdleTimer;
- (void)enableIdleTimer;
- (void)failureViewDismissButtonTapped:(id)a3;
- (void)failureViewRetryButtonTapped:(id)a3;
- (void)hideArrowGuidanceView;
- (void)hideFailureView;
- (void)hideInstructionView;
- (void)hideSafetyView;
- (void)mapLayer:(id)a3 activeARWalkingFeatureDidUpdate:(id)a4;
- (void)mapLayer:(id)a3 failedElevationRequestWithReason:(int64_t)a4;
- (void)mapLayer:(id)a3 updatedFeatures:(id)a4;
- (void)navigationSession:(id)a3 didUpdateRouteCollection:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)playFailureHaptic;
- (void)playSuccessHaptic;
- (void)replayConfigurationDidFinishReplaying:(id)a3;
- (void)reroute;
- (void)resetAnalytics;
- (void)session:(id)a3 didChangeGeoTrackingStatus:(id)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)sessionManager:(id)a3 didGainSessionOwnership:(id)a4;
- (void)sessionManager:(id)a3 didResignSessionOwnership:(id)a4;
- (void)setRoute:(id)a3;
- (void)setState:(int64_t)a3;
- (void)showArrowGuidanceView;
- (void)showFailureView;
- (void)showInstructionView;
- (void)showSafetyView;
- (void)showVLTracePopupIfNecessaryWithCompletion:(id)a3;
- (void)start;
- (void)startFailureViewTimeoutTimer;
- (void)stop;
- (void)ttrButtonTapped:(id)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"PedestrianARAutoFocusDistanceKey"] && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == v11))
  {
    v14 = [(PedestrianARViewController *)self configuration];
    if (v14)
    {
      v15 = [(PedestrianARViewController *)self configuration];
      -[PedestrianARViewController setShouldUpdateCameraFocusLensPosition:](self, "setShouldUpdateCameraFocusLensPosition:", [v15 isAutoFocusEnabled] ^ 1);
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
    [(PedestrianARViewController *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)navigationSession:(id)a3 didUpdateRouteCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v8, &v14);

  v9 = [v7 currentRoute];
  v10 = sub_100C276B8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v9 uniqueRouteID];
    v12 = [v11 UUIDString];
    *buf = 134349314;
    v16 = self;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Route updated: %@", buf, 0x16u);
  }

  [(PedestrianARViewController *)self setRoute:v9];
  if ([(PedestrianARViewController *)self isRerouting])
  {
    [(PedestrianARViewController *)self cancelReroute];
    v13 = sub_100C276B8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v16 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Reroute succeeded", buf, 0xCu);
    }

    [(PedestrianARViewController *)self waitForActiveFeatureIfNecessary];
  }

  os_activity_scope_leave(&v14);
}

- (void)applicationDidEnterBackgroundNotification:(id)a3
{
  v4 = a3;
  v5 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v5, &v7);

  v6 = sub_100C276B8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] App backgrounded; dismissing ourselves", buf, 0xCu);
  }

  [(PedestrianARViewController *)self stop];
  os_activity_scope_leave(&v7);
}

- (void)didResignContainee:(id)a3 finished:(BOOL)a4
{
  v5 = a3;
  v7 = [(PedestrianARViewController *)self failureContainee];

  if (v7 == v5)
  {
    v6 = [(PedestrianARViewController *)self isDismissing];

    if (v6)
    {

      [(PedestrianARViewController *)self stop];
    }
  }

  else
  {
  }
}

- (void)failureViewDismissButtonTapped:(id)a3
{
  v4 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(v5, &state);

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

- (void)failureViewRetryButtonTapped:(id)a3
{
  v4 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(v5, &state);

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

- (void)applyTransitionWithProgress:(double)a3
{
  v4 = [(PedestrianARViewController *)self view];
  [v4 setAlpha:a3];
}

- (void)ttrButtonTapped:(id)a3
{
  v4 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(v5, &state);

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

- (void)closeButtonTapped:(id)a3
{
  v4 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(v5, &state);

  v6 = sub_100799F08();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "User tapped close button", v7, 2u);
  }

  [(PedestrianARViewController *)self stop];
  os_activity_scope_leave(&state);
}

- (void)VLFSessionLocalizationFailedWithError:(id)a3
{
  v4 = a3;
  v5 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v5, &v12);

  v6 = sub_100C276B8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349314;
    v14 = self;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{public}p] VLF localization failed with error: %@", buf, 0x16u);
  }

  v7 = [(PedestrianARViewController *)v4 domain];
  v8 = [v7 isEqualToString:@"com.apple.Maps.VLFSession"];

  if (v8)
  {
    if ([(PedestrianARViewController *)v4 code]== 2)
    {
      v9 = [(PedestrianARViewController *)self analyticsTarget];
      v10 = 122;
    }

    else
    {
      v9 = [(PedestrianARViewController *)self analyticsTarget];
      v10 = 119;
    }
  }

  else
  {
    v9 = [(PedestrianARViewController *)self analyticsTarget];
    v10 = 120;
  }

  [GEOAPPortal captureUserAction:v10 target:v9 value:0];
  if (![(PedestrianARViewController *)self isStopping])
  {
    v11 = sub_100799F08();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v4;
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
  v3 = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(v3, &state);

  v4 = sub_100799F08();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "VLF localization succeeded", v10, 2u);
  }

  v5 = +[PedestrianARSessionUsageTracker sharedInstance];
  v6 = [(PedestrianARViewController *)self route];
  v7 = [v6 uniqueRouteID];
  v8 = [v7 UUIDString];
  [v5 registerLocalizationSuccessForRoute:v8];

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

- (void)sessionManager:(id)a3 didResignSessionOwnership:(id)a4
{
  v6 = a3;
  v7 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(v8, &state);

  v9 = [(PedestrianARViewController *)self session];
  [v9 _removeObserver:self];

  if ([(PedestrianARViewController *)self isARSessionBeingRecorded])
  {
    v10 = [(PedestrianARViewController *)self configuration];
    v11 = [v10 fileURL];
    v12 = [v11 path];

    v13 = sub_100C276B8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v26 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Ending ARKit session recording", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v14 = [(PedestrianARViewController *)self configuration];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100C2834C;
    v21 = &unk_10165D288;
    objc_copyWeak(&v23, buf);
    v15 = v12;
    v22 = v15;
    [v14 finishRecordingWithHandler:&v18];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
    goto LABEL_7;
  }

  if ([(PedestrianARViewController *)self isARSessionReplayingFromRecording])
  {
    v15 = [(PedestrianARViewController *)self configuration];
    [v15 setDelegate:0];
LABEL_7:
  }

  v16 = [PedestrianARFloatingDebugViewController sharedInstance:v18];
  [v16 setSession:0];

  session = self->_session;
  self->_session = 0;

  os_activity_scope_leave(&state);
}

- (void)sessionManager:(id)a3 didGainSessionOwnership:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v8, &v20);

  objc_storeStrong(&self->_session, a4);
  if ([(PedestrianARViewController *)self isARSessionBeingRecorded])
  {
    v9 = [(PedestrianARViewController *)self configuration];
    v10 = [v9 fileURL];
    v11 = [v10 path];

    v12 = [(PedestrianARViewController *)self navigationService];
    [v12 recordPedestrianTracePath:v11];
  }

  else
  {
    if ([(PedestrianARViewController *)self isARSessionReplayingFromRecording])
    {
      v9 = [(PedestrianARViewController *)self configuration];
      [v9 setDelegate:self];
      goto LABEL_6;
    }

    if (!GEOConfigGetBOOL())
    {
      goto LABEL_7;
    }

    v9 = [(PedestrianARViewController *)self configuration];
    GEOConfigGetDouble();
    v18 = v17;
    v19 = sub_100C276B8();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      v22 = self;
      v23 = 2048;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] Configuring VL with custom interval: %f", buf, 0x16u);
    }

    [v9 setVisualLocalizationCallInterval:v18];
    v11 = [(PedestrianARViewController *)self session];
    [v11 runWithConfiguration:v9];
  }

LABEL_6:
LABEL_7:
  v13 = [(PedestrianARViewController *)self configuration];
  -[PedestrianARViewController setShouldUpdateCameraFocusLensPosition:](self, "setShouldUpdateCameraFocusLensPosition:", [v13 isAutoFocusEnabled] ^ 1);

  v14 = [(PedestrianARViewController *)self session];
  [v14 _addObserver:self];

  v15 = [(PedestrianARViewController *)self session];
  v16 = +[PedestrianARFloatingDebugViewController sharedInstance];
  [v16 setSession:v15];

  os_activity_scope_leave(&v20);
}

- (void)replayConfigurationDidFinishReplaying:(id)a3
{
  v4 = a3;
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
        v17 = "[PedestrianARViewController replayConfigurationDidFinishReplaying:]";
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
          v17 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
        }
      }
    }
  }

  v8 = sub_100C276B8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v16 = 134349056;
    v17 = self;
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
      v17 = self;
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
      v17 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Stopping AR", &v16, 0xCu);
    }

    [(PedestrianARViewController *)self stop];
  }
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
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

- (void)session:(id)a3 didChangeGeoTrackingStatus:(id)a4
{
  if ([a4 state] != 3)
  {
    v5 = sub_100C276B8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v9 = self;
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

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = sub_100C276B8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349314;
    v12 = self;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{public}p] ARSession did fail with error: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C2918C;
  v8[3] = &unk_101661340;
  objc_copyWeak(&v10, buf);
  v9 = v5;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)mapLayer:(id)a3 failedElevationRequestWithReason:(int64_t)a4
{
  if (a4 == 2 && ![(PedestrianARViewController *)self didFailUndulationLookup])
  {

    [(PedestrianARViewController *)self setDidFailUndulationLookup:1];
  }
}

- (void)mapLayer:(id)a3 updatedFeatures:(id)a4
{
  v8 = [(PedestrianARViewController *)self renderingView:a3];
  v5 = [v8 mapViewDelegate];
  if ([v5 hasActiveFeatureSet])
  {
    v6 = [(PedestrianARViewController *)self isWaitingForActiveFeature];

    if (v6)
    {
      [(PedestrianARViewController *)self cancelWaitingForActiveFeature];
      v7 = sub_100C276B8();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v10 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Got first active feature; changing state to .Running", buf, 0xCu);
      }

      [(PedestrianARViewController *)self setState:2];
    }
  }

  else
  {
  }
}

- (void)mapLayer:(id)a3 activeARWalkingFeatureDidUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v8, &v20);

  v9 = sub_100C276B8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v7 feature];
    if ([v7 isVisible])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = v11;
    if ([v7 isDirectlyBehind])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = v13;
    [v7 screenHeading];
    *buf = 134350338;
    v22 = self;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v14;
    v31 = 2048;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Feature did update: %@, feature: %@, isVisible: %@, isDirectlyBehind: %@, screenHeading: %f", buf, 0x3Eu);
  }

  v16 = [v7 feature];
  if (v16)
  {
    v17 = [(PedestrianARViewController *)self didRenderLabel];

    if ((v17 & 1) == 0)
    {
      [(PedestrianARViewController *)self setDidRenderLabel:1];
    }
  }

  if ([v7 isVisible])
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
  v2 = [(PedestrianARViewController *)self renderingView];
  v3 = [v2 mapViewDelegate];
  v4 = [v3 mapView];

  return v4;
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
  v2 = [(PedestrianARViewController *)self configuration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isARSessionBeingRecorded
{
  v2 = [(PedestrianARViewController *)self configuration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (ARConfiguration)configuration
{
  v2 = [(PedestrianARViewController *)self session];
  v3 = [v2 configuration];

  return v3;
}

- (void)playFailureHaptic
{
  v2 = [(PedestrianARViewController *)self notificationGenerator];
  [v2 notificationOccurred:2];
}

- (void)playSuccessHaptic
{
  v2 = [(PedestrianARViewController *)self notificationGenerator];
  [v2 notificationOccurred:0];
}

- (void)showVLTracePopupIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
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
  v6 = [v5 isInternalInstall];

  if ((v6 & 1) == 0 || -[PedestrianARViewController didShowVLTracePopup](self, "didShowVLTracePopup") || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 BOOLForKey:@"PedestrianARViewControllerTemporarilyEnableVLTraceRecordingKey"], v7, v8) || GEOConfigGetBOOL())
  {
    v4[2](v4);
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
    v10 = v4;
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

    v13 = [(ContainerViewController *)self chromeViewController];
    [v13 _maps_topMostPresentViewController:v9 animated:1 completion:0];

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
  v3 = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(v3, &state);

  GEOConfigGetDouble();
  v5 = v4;
  v6 = sub_100C276B8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    v13 = self;
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

  v4 = [(PedestrianARViewController *)self activeFeatureTimer];
  LOBYTE(v3) = v4 == 0;

  if ((v3 & 1) == 0)
  {
    v5 = sub_100C276B8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v8 = self;
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
  v3 = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(v3, &state);

  v4 = [(PedestrianARViewController *)self renderingView];
  [v4 setShouldGenerateFeatures:1];

  v5 = [(PedestrianARViewController *)self renderingView];
  v6 = [v5 mapViewDelegate];
  v7 = [v6 hasActiveFeatureSet];

  if (v7)
  {
    v8 = sub_100C276B8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v18 = self;
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
      v18 = self;
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
  v2 = [(PedestrianARViewController *)self activeFeatureTimer];
  v3 = v2 != 0;

  return v3;
}

- (void)cancelReroute
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v6);

  v4 = [(PedestrianARViewController *)self rerouteCompletionTimer];
  LOBYTE(v3) = v4 == 0;

  if ((v3 & 1) == 0)
  {
    v5 = sub_100C276B8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v8 = self;
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
  v3 = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(v3, &state);

  if (![(PedestrianARViewController *)self isRerouteNecessary])
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "[PedestrianARViewController reroute]";
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
        v22 = v16;
        v17 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v4 = [(PedestrianARViewController *)self rerouteCompletionTimer];
  v5 = v4 == 0;

  v6 = sub_100C276B8();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v22 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Rerouting", buf, 0xCu);
    }

    v8 = [(PedestrianARViewController *)self navigationService];
    [v8 forceReroute];

    GEOConfigGetDouble();
    v10 = v9;
    v11 = sub_100C276B8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      v22 = self;
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
      v22 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Reroute already in progress; ignoring", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);
}

- (BOOL)isRerouting
{
  v2 = [(PedestrianARViewController *)self rerouteCompletionTimer];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isRerouteNecessary
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v30);

  v4 = [(PedestrianARViewController *)self route];
  if ([v4 source] == 2)
  {

LABEL_4:
    v7 = sub_100C276B8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v32 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] The current route is curated or user created; do not re-route", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_23;
  }

  v5 = [(PedestrianARViewController *)self route];
  v6 = [v5 source] == 3;

  if (v6)
  {
    goto LABEL_4;
  }

  v9 = [(PedestrianARViewController *)self navigationService];
  v7 = [v9 lastLocation];

  v10 = [(PedestrianARViewController *)self session];
  v11 = [v10 currentFrame];
  v12 = [v11 location];

  if (v7 | v12)
  {
    if (v12)
    {
      v13 = v12;
      v14 = [[GEOLocation alloc] initWithCLLocation:v13];
      v15 = [GEORouteMatcher alloc];
      v16 = [(PedestrianARViewController *)self route];
      v17 = [v15 initWithRoute:v16 auditToken:0];

      v18 = [v17 matchToRouteWithLocation:v14];
    }

    else
    {
      v13 = v7;
      v18 = [v13 routeMatch];
    }

    [v18 distanceFromRoute];
    v20 = v19;
    GEOConfigGetDouble();
    v22 = v21;
    v23 = sub_100C276B8();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134349568;
      v32 = self;
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
        v32 = self;
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
      v32 = self;
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
  v2 = [v3 idleTimerController];
  [v2 setDesiredIdleTimerState:0 forReason:4];
}

- (void)disableIdleTimer
{
  v3 = +[UIApplication sharedMapsDelegate];
  v2 = [v3 idleTimerController];
  [v2 setDesiredIdleTimerState:1 forReason:4];
}

- (void)hideSafetyView
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v7);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(PedestrianARViewController *)self safetyView];
    *buf = 134349312;
    v9 = self;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Hiding safety view: %p", buf, 0x16u);
  }

  v6 = [(PedestrianARViewController *)self safetyView];
  [v6 setHidden:1];

  os_activity_scope_leave(&v7);
}

- (void)showSafetyView
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v7);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(PedestrianARViewController *)self safetyView];
    *buf = 134349312;
    v9 = self;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Showing safety view: %p", buf, 0x16u);
  }

  v6 = [(PedestrianARViewController *)self safetyView];
  [v6 setHidden:0];

  os_activity_scope_leave(&v7);
}

- (void)hideArrowGuidanceView
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v8);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(PedestrianARViewController *)self arrowGuidanceView];
    *buf = 134349312;
    v10 = self;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Hiding arrow guidance view: %p", buf, 0x16u);
  }

  v6 = [(PedestrianARViewController *)self arrowGuidanceView];
  [v6 _removeAllAnimations:0];

  v7 = [(PedestrianARViewController *)self arrowGuidanceView];
  [v7 setHidden:1];

  os_activity_scope_leave(&v8);
}

- (void)showArrowGuidanceView
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(v3, &state);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(PedestrianARViewController *)self arrowGuidanceView];
    *buf = 134349312;
    v13 = self;
    v14 = 2048;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Showing arrow guidance view: %p", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v6 = [(PedestrianARViewController *)self arrowGuidanceView];
  [v6 setHidden:0];

  v7 = [(PedestrianARViewController *)self arrowGuidanceView];
  [v7 setAlpha:0.0];

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
    v5 = [(PedestrianARViewController *)self failureContainee];
    *buf = 134349312;
    v9 = self;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Hiding failure view: %p", buf, 0x16u);
  }

  [(ContainerViewController *)self popLastViewControllerAnimated:1];
  v6 = [(PedestrianARViewController *)self closeButton];
  [v6 setHidden:0];

  os_activity_scope_leave(&v7);
}

- (void)showFailureView
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v10);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(PedestrianARViewController *)self failureContainee];
    *buf = 134349312;
    v12 = self;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Showing failure view: %p", buf, 0x16u);
  }

  v6 = [(PedestrianARViewController *)self vlfSession];
  [v6 stop];

  v7 = [(PedestrianARViewController *)self vlfSession];
  [v7 sendAnalytics:0];

  [(PedestrianARViewController *)self setArkitSessionStartTimestamp:0];
  v8 = [(PedestrianARViewController *)self closeButton];
  [v8 setHidden:1];

  v9 = [(PedestrianARViewController *)self failureContainee];
  [(ContainerViewController *)self presentController:v9];

  os_activity_scope_leave(&v10);
}

- (void)hideInstructionView
{
  v3 = [(PedestrianARViewController *)self activity:0];
  os_activity_scope_enter(v3, &v8);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(PedestrianARViewController *)self instructionContainerView];
    *buf = 134349312;
    v10 = self;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Hiding instruction view: %p", buf, 0x16u);
  }

  v6 = [(PedestrianARViewController *)self instructionContainerView];
  [v6 _removeAllAnimations:1];

  v7 = [(PedestrianARViewController *)self instructionContainerView];
  [v7 setHidden:1];

  os_activity_scope_leave(&v8);
}

- (void)showInstructionView
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(v3, &state);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(PedestrianARViewController *)self instructionContainerView];
    *buf = 134349312;
    v13 = self;
    v14 = 2048;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Showing instruction view: %p", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v6 = [(PedestrianARViewController *)self instructionContainerView];
  [v6 setHidden:0];

  v7 = [(PedestrianARViewController *)self instructionContainerView];
  [v7 setAlpha:0.0];

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
      v15 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Stopping pedestrian AR", buf, 0xCu);
    }

    [(PedestrianARViewController *)self setSentDisappearNotification:1];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"PedestrianARViewControllerDidDisappearNotification" object:self];

    v6 = objc_alloc_init(GEOVLFARFailureTypes);
    [v6 setArWalkingNoLabels:{-[PedestrianARViewController didRenderLabel](self, "didRenderLabel") ^ 1}];
    [v6 setArWalkingUndulationFailure:{-[PedestrianARViewController didFailUndulationLookup](self, "didFailUndulationLookup")}];
    v7 = [(PedestrianARViewController *)self vlfSession];
    [v7 stop];

    v8 = [(PedestrianARViewController *)self vlfSession];
    [v8 sendAnalytics:v6];

    [(PedestrianARViewController *)self setArkitSessionStartTimestamp:0];
    v9 = +[MapsARSessionManager sharedManager];
    [v9 resignSessionWithOwner:self];

    v10 = [(PedestrianARViewController *)self arrowGuidanceView];
    [v10 stop];

    v11 = [(PedestrianARViewController *)self arDelegate];
    [v11 pedestrianARViewControllerDidStop:self];

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
    v33 = self;
    v34 = 2080;
    v35 = "[PedestrianARViewController start]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] %s", buf, 0x16u);
  }

  v5 = [(PedestrianARViewController *)self arkitSessionStartTimestamp];
  v6 = v5 == 0;

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
      v13 = [(GEOComposedRoute *)self->_route origin];
      v14 = [v13 hawkQueryRepresentation];
      v15 = [(GEOComposedRoute *)self->_route destination];
      v16 = [v15 hawkQueryRepresentation];
      *buf = 138478083;
      v33 = v14;
      v34 = 2113;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Origin: %{private}@ -- Destination: %{private}@", buf, 0x16u);
    }

    v17 = +[NSDate date];
    [(PedestrianARViewController *)self setArkitSessionStartTimestamp:v17];

    [(PedestrianARViewController *)self cancelReroute];
    [(PedestrianARViewController *)self cancelWaitingForActiveFeature];
    v18 = [[VLFSession alloc] initWithMode:0];
    [(PedestrianARViewController *)self setVlfSession:v18];

    v19 = [(PedestrianARViewController *)self vlfSession];
    [v19 setDelegate:self];

    if ([(PedestrianARViewController *)self entryPoint])
    {
      v20 = [(PedestrianARViewController *)self vlfSession];
      [v20 setEntryPoint:4];
    }

    else
    {
      v20 = [(PedestrianARViewController *)self vlfSession];
      [v20 setEntryPoint:3];
    }

    v21 = [(PedestrianARViewController *)self vlfSession];
    [v21 start];

    v22 = [(PedestrianARViewController *)self notificationGenerator];
    [v22 prepare];

    v23 = [(PedestrianARViewController *)self vlfSession];
    v24 = [v23 session];
    v25 = +[PedestrianARFloatingDebugViewController sharedInstance];
    [v25 setSession:v24];

    v26 = [(PedestrianARViewController *)self vlfSession];
    v27 = [v26 session];
    v28 = [(PedestrianARViewController *)self localizingView];
    [v28 setSession:v27];

    v10 = [(PedestrianARViewController *)self vlfSession];
    v29 = [v10 session];
    v30 = [(PedestrianARViewController *)self renderingView];
    [v30 setSession:v29];
  }

  else
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v33 = "[PedestrianARViewController start]";
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
        v33 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v10 = sub_100C276B8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v33 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}p] ARKit session has already been started. Cannot start twice.", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&v31);
}

- (void)createViews
{
  v3 = [PedestrianARRenderingView alloc];
  v4 = [(PedestrianARViewController *)self guidanceObserver];
  v5 = [(PedestrianARViewController *)self navigationService];
  v6 = [(PedestrianARRenderingView *)v3 initWithGuidanceObserver:v4 navigationService:v5];

  [(PedestrianARRenderingView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(PedestrianARViewController *)self route];
  [(PedestrianARRenderingView *)v6 setRoute:v7];

  v8 = [(PedestrianARRenderingView *)v6 mapViewDelegate];
  [v8 registerObserver:self];

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
  v23 = [v21 layer];
  [v23 setMasksToBounds:1];

  [v21 setClipsToBounds:1];
  v24 = [(PedestrianARViewController *)self traitCollection];
  v25 = [v24 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryLarge];
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
  v59 = [v28 leadingAnchor];
  v58 = [v21 leadingAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v62[0] = v57;
  v56 = [v28 trailingAnchor];
  v55 = [v21 trailingAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v62[1] = v54;
  v30 = [v28 topAnchor];
  v31 = [v21 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  v62[2] = v32;
  v33 = [v28 bottomAnchor];
  v34 = [v21 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  v62[3] = v35;
  v36 = [NSArray arrayWithObjects:v62 count:4];
  [NSLayoutConstraint activateConstraints:v36];

  closeButton = self->_closeButton;
  self->_closeButton = v21;

  v38 = [PedestrianARInstructionContainerView alloc];
  v39 = [(PedestrianARRenderingView *)self->_renderingView mapViewDelegate];
  v40 = [(PedestrianARInstructionContainerView *)v38 initWithMapViewDelegate:v39 navigationService:self->_navigationService];

  [(PedestrianARInstructionContainerView *)v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PedestrianARInstructionContainerView *)v40 setUserInteractionEnabled:0];
  [(PedestrianARInstructionContainerView *)v40 setHidden:1];
  v41 = [(PedestrianARViewController *)self route];
  [(PedestrianARInstructionContainerView *)v40 setRoute:v41];

  instructionContainerView = self->_instructionContainerView;
  self->_instructionContainerView = v40;

  v43 = [PedestrianARArrowGuidanceView alloc];
  v44 = [(PedestrianARRenderingView *)self->_renderingView mapViewDelegate];
  v45 = [(PedestrianARViewController *)self route];
  v46 = [(PedestrianARViewController *)self activity];
  v47 = [(PedestrianARArrowGuidanceView *)v43 initWithMapViewDelegate:v44 route:v45 activity:v46];

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
  LODWORD(v44) = [v51 BOOLForKey:@"PedestrianARSafetyUIKey"];

  if (v44)
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
  v2 = self;
  v3 = [(ContainerViewController *)self currentViewController];
  v4 = [(PedestrianARViewController *)v2 failureContainee];
  LOBYTE(v2) = v3 == v4;

  return v2;
}

- (void)setRoute:(id)a3
{
  v5 = a3;
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
  v11 = v5;
  if (v11 | v10)
  {
    v12 = [v10 isEqual:v11];

    if ((v12 & 1) == 0)
    {
      objc_storeStrong(&self->_route, a3);
      v13 = [(PedestrianARViewController *)self renderingView];
      [v13 setRoute:v11];

      v14 = [(PedestrianARViewController *)self instructionContainerView];
      [v14 setRoute:v11];
    }
  }

  os_activity_scope_leave(&v18);
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v5 = [(PedestrianARViewController *)self activity];
    os_activity_scope_enter(v5, &state);

    if ([(PedestrianARViewController *)self isStopping])
    {
      v6 = sub_100C276B8();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        if (a3 >= 4)
        {
          v7 = [NSString stringWithFormat:@"%ld", a3];
        }

        else
        {
          v7 = off_10164E1E8[a3];
        }

        *buf = 134349314;
        v33 = self;
        v34 = 2112;
        v35 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Requested to update state: %@, but we are currently stopping; ignoring", buf, 0x16u);
      }
    }

    else
    {
      self->_state = a3;
      v8 = sub_100C276B8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        if (a3 >= 4)
        {
          v9 = [NSString stringWithFormat:@"%ld", a3];
        }

        else
        {
          v9 = off_10164E1E8[a3];
        }

        *buf = 134349314;
        v33 = self;
        v34 = 2112;
        v35 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Updating state: %@", buf, 0x16u);
      }

      if (a3 > 1)
      {
        if (a3 == 2)
        {
          objc_initWeak(buf, self);
          v22 = [(PedestrianARViewController *)self localizingView];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_100C2DAE8;
          v29[3] = &unk_1016619A8;
          objc_copyWeak(&v30, buf);
          [v22 hideAnimated:1 completion:v29];

          [(PedestrianARViewController *)self showInstructionView];
          [(PedestrianARViewController *)self showArrowGuidanceView];
          [(PedestrianARViewController *)self hideFailureView];
          v23 = [(PedestrianARViewController *)self safetyView];
          [v23 didStartARSession];

          [(PedestrianARViewController *)self showSafetyView];
          v24 = [(PedestrianARViewController *)self renderingView];
          [v24 setShouldGenerateFeatures:1];

          v25 = [(PedestrianARViewController *)self renderingView];
          [v25 setShouldShowFeatures:1];

          [(PedestrianARViewController *)self disableIdleTimer];
          [(PedestrianARViewController *)self stopFailureViewTimeoutTimer];
          [(PedestrianARViewController *)self cancelReroute];
          [(PedestrianARViewController *)self playSuccessHaptic];
          objc_destroyWeak(&v30);
          objc_destroyWeak(buf);
        }

        else if (a3 == 3)
        {
          objc_initWeak(buf, self);
          v15 = [(PedestrianARViewController *)self localizingView];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100C2DB6C;
          v27[3] = &unk_1016619A8;
          objc_copyWeak(&v28, buf);
          [v15 hideAnimated:0 completion:v27];

          [(PedestrianARViewController *)self hideInstructionView];
          [(PedestrianARViewController *)self hideArrowGuidanceView];
          [(PedestrianARViewController *)self showFailureView];
          [(PedestrianARViewController *)self hideSafetyView];
          v16 = [(PedestrianARViewController *)self safetyView];
          [v16 didEndARSession];

          v17 = [(PedestrianARViewController *)self renderingView];
          [v17 setShouldGenerateFeatures:1];

          v18 = [(PedestrianARViewController *)self renderingView];
          [v18 setShouldShowFeatures:0];

          [(PedestrianARViewController *)self enableIdleTimer];
          [(PedestrianARViewController *)self startFailureViewTimeoutTimer];
          [(PedestrianARViewController *)self cancelReroute];
          [(PedestrianARViewController *)self playFailureHaptic];
          objc_destroyWeak(&v28);
          objc_destroyWeak(buf);
        }
      }

      else if (a3)
      {
        if (a3 == 1)
        {
          [(PedestrianARViewController *)self resetAnalytics];
          [(PedestrianARViewController *)self hideInstructionView];
          [(PedestrianARViewController *)self hideArrowGuidanceView];
          [(PedestrianARViewController *)self hideFailureView];
          [(PedestrianARViewController *)self hideSafetyView];
          v10 = [(PedestrianARViewController *)self safetyView];
          [v10 didEndARSession];

          v11 = [(PedestrianARViewController *)self isRerouteNecessary];
          v12 = [(PedestrianARViewController *)self renderingView];
          [v12 setShouldGenerateFeatures:v11 ^ 1];

          v13 = [(PedestrianARViewController *)self renderingView];
          [v13 setShouldShowFeatures:0];

          [(PedestrianARViewController *)self disableIdleTimer];
          [(PedestrianARViewController *)self stopFailureViewTimeoutTimer];
          [(PedestrianARViewController *)self cancelReroute];
          v14 = [(PedestrianARViewController *)self localizingView];
          [v14 showAnimated:1 completion:0];

          [GEOAPPortal captureUserAction:123 target:[(PedestrianARViewController *)self analyticsTarget] value:0];
        }
      }

      else
      {
        v19 = sub_10006D178();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v33 = "[PedestrianARViewController setState:]";
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
            v33 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v26 = self->_state;
      v6 = [(PedestrianARViewController *)self gradientOverlay];
      [v6 setState:v26];
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

    v6 = [(PedestrianARViewController *)self view];
    v7 = self->_localizingView;
    v8 = [(PedestrianARViewController *)self gradientOverlay];
    [v6 insertSubview:v7 aboveSubview:v8];

    v25 = [(PedestrianARLocalizingView *)self->_localizingView leadingAnchor];
    v26 = [(PedestrianARViewController *)self view];
    v24 = [v26 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v27[0] = v23;
    v21 = [(PedestrianARLocalizingView *)self->_localizingView trailingAnchor];
    v22 = [(PedestrianARViewController *)self view];
    v20 = [v22 trailingAnchor];
    v19 = [v21 constraintEqualToAnchor:v20];
    v27[1] = v19;
    v18 = [(PedestrianARLocalizingView *)self->_localizingView topAnchor];
    v9 = [(PedestrianARViewController *)self view];
    v10 = [v9 topAnchor];
    v11 = [v18 constraintEqualToAnchor:v10];
    v27[2] = v11;
    v12 = [(PedestrianARLocalizingView *)self->_localizingView bottomAnchor];
    v13 = [(PedestrianARViewController *)self view];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v27[3] = v15;
    v16 = [NSArray arrayWithObjects:v27 count:4];
    [NSLayoutConstraint activateConstraints:v16];

    localizingView = self->_localizingView;
  }

  return localizingView;
}

- (void)_updateConstraintsForLandscape:(BOOL)a3
{
  if (!a3)
  {
    v18 = [(PedestrianARViewController *)self closeButtonTopConstraint];
    [v18 setConstant:10.0];

    v19 = [(PedestrianARViewController *)self closeButtonTrailingConstraint];
    [v19 setActive:0];

    v20 = [(PedestrianARViewController *)self closeButtonSafeAreaTrailingConstraint];
    [v20 setActive:1];

    v21 = [(PedestrianARViewController *)self closeButtonSafeAreaTrailingConstraint];
    [v21 setConstant:-16.0];

    v22 = [(PedestrianARViewController *)self arrowGuidanceViewLeadingSafeAreaConstraint];
    [v22 setActive:0];

    v23 = [(PedestrianARViewController *)self arrowGuidanceViewTrailingSafeAreaConstraint];
    [v23 setActive:0];

    v24 = [(PedestrianARViewController *)self arrowGuidanceViewLeadingConstraint];
    [v24 setActive:1];

    v25 = [(PedestrianARViewController *)self arrowGuidanceViewTrailingConstraint];
    [v25 setActive:1];

    v26 = [(PedestrianARViewController *)self arrowGuidanceViewLeadingConstraint];
    [v26 setConstant:16.0];

    v27 = [(PedestrianARViewController *)self arrowGuidanceViewTrailingConstraint];
    v28 = -16.0;
    goto LABEL_9;
  }

  v4 = [(PedestrianARViewController *)self view];
  v5 = [v4 effectiveUserInterfaceLayoutDirection];

  v6 = [(PedestrianARViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 windowScene];
  v9 = [v8 interfaceOrientation];

  if (v5 != 1)
  {
    if (v9 != 4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v29 = [(PedestrianARViewController *)self closeButtonTrailingConstraint];
    [v29 setActive:0];

    v30 = [(PedestrianARViewController *)self closeButtonSafeAreaTrailingConstraint];
    [v30 setActive:1];

    v31 = [(PedestrianARViewController *)self closeButtonSafeAreaTrailingConstraint];
    [v31 setConstant:0.0];

    v32 = [(PedestrianARViewController *)self arrowGuidanceViewLeadingSafeAreaConstraint];
    [v32 setActive:0];

    v33 = [(PedestrianARViewController *)self arrowGuidanceViewTrailingSafeAreaConstraint];
    [v33 setActive:1];

    v34 = [(PedestrianARViewController *)self arrowGuidanceViewLeadingConstraint];
    [v34 setActive:1];

    v35 = [(PedestrianARViewController *)self arrowGuidanceViewLeadingConstraint];
    [v35 setConstant:24.0];

    v17 = [(PedestrianARViewController *)self arrowGuidanceViewTrailingConstraint];
    [v17 setActive:0];
    goto LABEL_8;
  }

  if (v9 == 3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = [(PedestrianARViewController *)self closeButtonSafeAreaTrailingConstraint];
  [v10 setActive:0];

  v11 = [(PedestrianARViewController *)self closeButtonTrailingConstraint];
  [v11 setActive:1];

  v12 = [(PedestrianARViewController *)self closeButtonTrailingConstraint];
  [v12 setConstant:-24.0];

  v13 = [(PedestrianARViewController *)self arrowGuidanceViewLeadingSafeAreaConstraint];
  [v13 setActive:1];

  v14 = [(PedestrianARViewController *)self arrowGuidanceViewTrailingSafeAreaConstraint];
  [v14 setActive:0];

  v15 = [(PedestrianARViewController *)self arrowGuidanceViewLeadingConstraint];
  [v15 setActive:0];

  v16 = [(PedestrianARViewController *)self arrowGuidanceViewTrailingConstraint];
  [v16 setActive:1];

  v17 = [(PedestrianARViewController *)self arrowGuidanceViewTrailingConstraint];
  [v17 setConstant:-24.0];
LABEL_8:

  v27 = [(PedestrianARViewController *)self closeButtonTopConstraint];
  v28 = 24.0;
LABEL_9:
  v36 = v27;
  [v27 setConstant:v28];
}

- (void)viewSafeAreaInsetsDidChange
{
  v7.receiver = self;
  v7.super_class = PedestrianARViewController;
  [(ContainerViewController *)&v7 viewSafeAreaInsetsDidChange];
  v3 = [(PedestrianARViewController *)self view];
  [v3 frame];
  Width = CGRectGetWidth(v8);
  v5 = [(PedestrianARViewController *)self view];
  [v5 frame];
  v6 = Width > CGRectGetHeight(v9);

  [(PedestrianARViewController *)self _updateConstraintsForLandscape:v6];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = PedestrianARViewController;
  [(ContainerViewController *)&v15 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
  [v7 animateAlongsideTransition:v11 completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(v5, &state);

  v6 = sub_100799F08();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Ending pedestrian AR session", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = PedestrianARViewController;
  [(ContainerViewController *)&v7 viewWillDisappear:v3];
  [(PedestrianARViewController *)self stop];
  os_activity_scope_leave(&state);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(v5, &state);

  v10.receiver = self;
  v10.super_class = PedestrianARViewController;
  [(ContainerViewController *)&v10 viewWillAppear:v3];
  v6 = +[PedestrianARSessionUsageTracker sharedInstance];
  v7 = [(PedestrianARViewController *)self route];
  v8 = [v7 uniqueRouteID];
  v9 = [v8 UUIDString];
  [v6 registerUserEnteredARForRoute:v9 entryPoint:{-[PedestrianARViewController entryPoint](self, "entryPoint")}];

  os_activity_scope_leave(&state);
}

- (void)viewDidLoad
{
  v161.receiver = self;
  v161.super_class = PedestrianARViewController;
  [(ContainerViewController *)&v161 viewDidLoad];
  [(PedestrianARViewController *)self setOverrideUserInterfaceStyle:2];
  v160 = +[NSMutableArray array];
  v3 = [(PedestrianARViewController *)self view];
  renderingView = self->_renderingView;
  v5 = [(ContainerViewController *)self containerView];
  [v3 insertSubview:renderingView belowSubview:v5];

  v149 = [(PedestrianARRenderingView *)self->_renderingView leadingAnchor];
  v154 = [(PedestrianARViewController *)self view];
  v144 = [v154 leadingAnchor];
  v139 = [v149 constraintEqualToAnchor:v144];
  v168[0] = v139;
  v129 = [(PedestrianARRenderingView *)self->_renderingView trailingAnchor];
  v134 = [(PedestrianARViewController *)self view];
  v124 = [v134 trailingAnchor];
  v120 = [v129 constraintEqualToAnchor:v124];
  v168[1] = v120;
  v6 = [(PedestrianARRenderingView *)self->_renderingView topAnchor];
  v7 = [(PedestrianARViewController *)self view];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v168[2] = v9;
  v10 = [(PedestrianARRenderingView *)self->_renderingView bottomAnchor];
  v11 = [(PedestrianARViewController *)self view];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v168[3] = v13;
  v14 = [NSArray arrayWithObjects:v168 count:4];
  [v160 addObjectsFromArray:v14];

  v15 = [(PedestrianARViewController *)self view];
  gradientOverlay = self->_gradientOverlay;
  v17 = [(ContainerViewController *)self containerView];
  [v15 insertSubview:gradientOverlay belowSubview:v17];

  v150 = [(PedestrianARGradientOverlay *)self->_gradientOverlay leadingAnchor];
  v155 = [(PedestrianARViewController *)self view];
  v145 = [v155 leadingAnchor];
  v140 = [v150 constraintEqualToAnchor:v145];
  v167[0] = v140;
  v130 = [(PedestrianARGradientOverlay *)self->_gradientOverlay trailingAnchor];
  v135 = [(PedestrianARViewController *)self view];
  v125 = [v135 trailingAnchor];
  v121 = [v130 constraintEqualToAnchor:v125];
  v167[1] = v121;
  v18 = [(PedestrianARGradientOverlay *)self->_gradientOverlay topAnchor];
  v19 = [(PedestrianARViewController *)self view];
  v20 = [v19 topAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  v167[2] = v21;
  v22 = [(PedestrianARGradientOverlay *)self->_gradientOverlay bottomAnchor];
  v23 = [(PedestrianARViewController *)self view];
  v24 = [v23 bottomAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  v167[3] = v25;
  v26 = [NSArray arrayWithObjects:v167 count:4];
  [v160 addObjectsFromArray:v26];

  v27 = [(PedestrianARViewController *)self view];
  instructionContainerView = self->_instructionContainerView;
  v29 = [(ContainerViewController *)self containerView];
  [v27 insertSubview:instructionContainerView belowSubview:v29];

  v151 = [(PedestrianARInstructionContainerView *)self->_instructionContainerView leadingAnchor];
  v156 = [(PedestrianARViewController *)self view];
  v146 = [v156 leadingAnchor];
  v141 = [v151 constraintEqualToAnchor:v146];
  v166[0] = v141;
  v131 = [(PedestrianARInstructionContainerView *)self->_instructionContainerView trailingAnchor];
  v136 = [(PedestrianARViewController *)self view];
  v126 = [v136 trailingAnchor];
  v122 = [v131 constraintEqualToAnchor:v126];
  v166[1] = v122;
  v30 = [(PedestrianARInstructionContainerView *)self->_instructionContainerView topAnchor];
  v31 = [(PedestrianARViewController *)self view];
  v32 = [v31 topAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  v166[2] = v33;
  v34 = [(PedestrianARInstructionContainerView *)self->_instructionContainerView bottomAnchor];
  v35 = [(PedestrianARViewController *)self view];
  v36 = [v35 bottomAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];
  v166[3] = v37;
  v38 = [NSArray arrayWithObjects:v166 count:4];
  [v160 addObjectsFromArray:v38];

  v39 = [(PedestrianARViewController *)self view];
  arrowGuidanceView = self->_arrowGuidanceView;
  v41 = [(ContainerViewController *)self containerView];
  [v39 insertSubview:arrowGuidanceView belowSubview:v41];

  v42 = [(PedestrianARArrowGuidanceView *)self->_arrowGuidanceView leadingAnchor];
  v43 = [(PedestrianARViewController *)self view];
  v44 = [v43 leadingAnchor];
  v45 = [v42 constraintEqualToAnchor:v44 constant:16.0];
  arrowGuidanceViewLeadingConstraint = self->_arrowGuidanceViewLeadingConstraint;
  self->_arrowGuidanceViewLeadingConstraint = v45;

  v47 = [(PedestrianARArrowGuidanceView *)self->_arrowGuidanceView trailingAnchor];
  v48 = [(PedestrianARViewController *)self view];
  v49 = [v48 trailingAnchor];
  v50 = [v47 constraintEqualToAnchor:v49 constant:-16.0];
  arrowGuidanceViewTrailingConstraint = self->_arrowGuidanceViewTrailingConstraint;
  self->_arrowGuidanceViewTrailingConstraint = v50;

  v52 = [(PedestrianARArrowGuidanceView *)self->_arrowGuidanceView leadingAnchor];
  v53 = [(PedestrianARViewController *)self view];
  v54 = [v53 safeAreaLayoutGuide];
  v55 = [v54 leadingAnchor];
  v56 = [v52 constraintEqualToAnchor:v55];
  arrowGuidanceViewLeadingSafeAreaConstraint = self->_arrowGuidanceViewLeadingSafeAreaConstraint;
  self->_arrowGuidanceViewLeadingSafeAreaConstraint = v56;

  v58 = [(PedestrianARArrowGuidanceView *)self->_arrowGuidanceView trailingAnchor];
  v59 = [(PedestrianARViewController *)self view];
  v60 = [v59 safeAreaLayoutGuide];
  v61 = [v60 trailingAnchor];
  v62 = [v58 constraintEqualToAnchor:v61];
  arrowGuidanceViewTrailingSafeAreaConstraint = self->_arrowGuidanceViewTrailingSafeAreaConstraint;
  self->_arrowGuidanceViewTrailingSafeAreaConstraint = v62;

  v64 = self->_arrowGuidanceViewTrailingConstraint;
  v165[0] = self->_arrowGuidanceViewLeadingConstraint;
  v165[1] = v64;
  v157 = [(PedestrianARArrowGuidanceView *)self->_arrowGuidanceView heightAnchor];
  v65 = [(PedestrianARViewController *)self view];
  v66 = [v65 heightAnchor];
  v67 = [v157 constraintEqualToAnchor:v66 multiplier:0.5];
  v165[2] = v67;
  v68 = [(PedestrianARArrowGuidanceView *)self->_arrowGuidanceView topAnchor];
  v69 = [(MUBlurView *)self->_closeButton bottomAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];
  v165[3] = v70;
  v71 = [NSArray arrayWithObjects:v165 count:4];
  [v160 addObjectsFromArray:v71];

  v72 = [(PedestrianARViewController *)self view];
  closeButton = self->_closeButton;
  v74 = [(ContainerViewController *)self containerView];
  [v72 insertSubview:closeButton belowSubview:v74];

  v75 = [(MUBlurView *)self->_closeButton topAnchor];
  v76 = [(PedestrianARViewController *)self view];
  v77 = [v76 safeAreaLayoutGuide];
  v78 = [v77 topAnchor];
  v79 = [v75 constraintEqualToAnchor:v78];
  closeButtonTopConstraint = self->_closeButtonTopConstraint;
  self->_closeButtonTopConstraint = v79;

  v81 = [(MUBlurView *)self->_closeButton trailingAnchor];
  v82 = [(PedestrianARViewController *)self view];
  v83 = [v82 trailingAnchor];
  v84 = [v81 constraintEqualToAnchor:v83];
  closeButtonTrailingConstraint = self->_closeButtonTrailingConstraint;
  self->_closeButtonTrailingConstraint = v84;

  v86 = [(MUBlurView *)self->_closeButton trailingAnchor];
  v87 = [(PedestrianARViewController *)self view];
  v88 = [v87 safeAreaLayoutGuide];
  v89 = [v88 trailingAnchor];
  v90 = [v86 constraintEqualToAnchor:v89];
  closeButtonSafeAreaTrailingConstraint = self->_closeButtonSafeAreaTrailingConstraint;
  self->_closeButtonSafeAreaTrailingConstraint = v90;

  v92 = self->_closeButtonTopConstraint;
  v164[0] = self->_closeButtonSafeAreaTrailingConstraint;
  v164[1] = v92;
  v93 = [(MUBlurView *)self->_closeButton widthAnchor];
  v94 = [v93 constraintEqualToConstant:42.0];
  v164[2] = v94;
  v95 = [(MUBlurView *)self->_closeButton heightAnchor];
  v96 = [(MUBlurView *)self->_closeButton widthAnchor];
  v97 = [v95 constraintEqualToAnchor:v96];
  v164[3] = v97;
  v98 = [NSArray arrayWithObjects:v164 count:4];
  [v160 addObjectsFromArray:v98];

  if (self->_ttrButton)
  {
    v99 = [(PedestrianARViewController *)self view];
    ttrButton = self->_ttrButton;
    v101 = [(ContainerViewController *)self containerView];
    [v99 insertSubview:ttrButton belowSubview:v101];

    v152 = [(UIButton *)self->_ttrButton leadingAnchor];
    v158 = [(PedestrianARViewController *)self view];
    v147 = [v158 safeAreaLayoutGuide];
    v142 = [v147 leadingAnchor];
    v137 = [v152 constraintEqualToAnchor:v142 constant:16.0];
    v163[0] = v137;
    v132 = [(UIButton *)self->_ttrButton topAnchor];
    v127 = [(MUBlurView *)self->_closeButton topAnchor];
    v123 = [v132 constraintEqualToAnchor:v127];
    v163[1] = v123;
    v102 = [(UIButton *)self->_ttrButton widthAnchor];
    v103 = [(MUBlurView *)self->_closeButton widthAnchor];
    v104 = [v102 constraintEqualToAnchor:v103];
    v163[2] = v104;
    v105 = [(UIButton *)self->_ttrButton heightAnchor];
    v106 = [(UIButton *)self->_ttrButton widthAnchor];
    v107 = [v105 constraintEqualToAnchor:v106];
    v163[3] = v107;
    v108 = [NSArray arrayWithObjects:v163 count:4];
    [v160 addObjectsFromArray:v108];
  }

  if (self->_safetyView)
  {
    v109 = [(PedestrianARViewController *)self view];
    [v109 insertSubview:self->_safetyView belowSubview:self->_closeButton];

    v153 = [(PedestrianARSafetyView *)self->_safetyView leadingAnchor];
    v159 = [(PedestrianARViewController *)self view];
    v148 = [v159 leadingAnchor];
    v143 = [v153 constraintEqualToAnchor:v148];
    v162[0] = v143;
    v133 = [(PedestrianARSafetyView *)self->_safetyView trailingAnchor];
    v138 = [(PedestrianARViewController *)self view];
    v128 = [v138 trailingAnchor];
    v110 = [v133 constraintEqualToAnchor:v128];
    v162[1] = v110;
    v111 = [(PedestrianARSafetyView *)self->_safetyView topAnchor];
    v112 = [(PedestrianARViewController *)self view];
    v113 = [v112 topAnchor];
    v114 = [v111 constraintEqualToAnchor:v113];
    v162[2] = v114;
    v115 = [(PedestrianARSafetyView *)self->_safetyView bottomAnchor];
    v116 = [(PedestrianARViewController *)self view];
    v117 = [v116 bottomAnchor];
    v118 = [v115 constraintEqualToAnchor:v117];
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
  v3 = [(PedestrianARViewController *)self activity];
  os_activity_scope_enter(v3, &state);

  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Deallocing", buf, 0xCu);
  }

  v5 = [(PedestrianARViewController *)self session];
  [v5 _removeObserver:self];

  v6 = +[MapsARSessionManager sharedManager];
  [v6 resignSessionWithOwner:self];

  [(NavigationSession *)self->_navigationSession unregisterObserver:self];
  v7 = [(PedestrianARViewController *)self safetyView];
  [v7 didEndARSession];

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

- (PedestrianARViewController)initWithRoute:(id)a3 platformController:(id)a4 guidanceObserver:(id)a5 navigationService:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
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

  if (!v11)
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

  if (!v12)
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

  if (!v13)
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

    objc_storeWeak(&v14->_platformController, v11);
    objc_storeStrong(&v14->_guidanceObserver, a5);
    objc_storeStrong(&v14->_navigationService, a6);
    WeakRetained = objc_loadWeakRetained(&v14->_platformController);
    v23 = [WeakRetained currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
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

    [(PedestrianARViewController *)v14 setRoute:v10];
    [(PedestrianARViewController *)v14 createViews];
    [(PedestrianARViewController *)v14 start];
    os_activity_scope_leave(&v49);
  }

  return v14;
}

@end