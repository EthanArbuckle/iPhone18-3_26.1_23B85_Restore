@interface PHSOSViewController
+ (BOOL)isCallBufferDismissalAssertionActive;
+ (BOOL)isSOSDismissalAssertionActive;
+ (BOOL)shouldShowMedicalID:(id)a3;
+ (void)releaseAllCallBufferDismissalAssertions;
- (BOOL)allowsMenuButtonDismissal;
- (BOOL)clawButtonPressGapWithinThreshold;
- (BOOL)shouldAllowLockButtonPressesToDismissSOS;
- (HKHealthStore)healthStore;
- (PHCheckInView)checkInView;
- (PHCountdownView)countdownView;
- (PHSOSAlertRestingView)alertRestingView;
- (PHSOSNumbersViewController)sosNumbersViewController;
- (PHSOSRestingView)restingView;
- (PHSOSViewController)initWithSOSHandles:(id)a3;
- (PHSlidingView)slidingView;
- (UILabel)infoLabel;
- (double)marginPadding;
- (id)getCheckInViewModel;
- (id)getSOSDialCountdownViewModel;
- (id)nameForSOSMode:(int64_t)a3;
- (void)addDismissalAssertionReleasedObserver;
- (void)addObservers;
- (void)buttonPressStateChangedNotification:(id)a3;
- (void)buttonPressed:(id)a3;
- (void)callStateChangedNotification:(id)a3;
- (void)clearStatusHeartbeatTimer;
- (void)deactivateSOSWithSOSDismissalType:(int64_t)a3;
- (void)dialEmergencyCall;
- (void)dialSOSNumberAtIndex:(int64_t)a3;
- (void)didReceiveMemoryWarning;
- (void)didTapTemporarilyDisableFindMy;
- (void)dismissMedicalIDViewController;
- (void)dismissSOSNotification:(id)a3;
- (void)dismissalAssertionReleasedNotification:(id)a3;
- (void)emergencyCallbackModeChangedNotification:(id)a3;
- (void)fetchMedicalIDWithCompletion:(id)a3;
- (void)handleAlertDisconnectingCallsNotification:(id)a3;
- (void)handleAnimationSlidingCompletionResponse;
- (void)handleCallBufferCompletionNotification:(id)a3;
- (void)handleNetworkUnavailableAlertDidFinishNotification:(id)a3;
- (void)handleVolumeChanges;
- (void)handleVolumeHUDEnablement;
- (void)hideMedicalIDWithCompletion:(id)a3;
- (void)interactiveStart;
- (void)interactiveStateChangedNotification:(id)a3;
- (void)interactiveStop:(BOOL)a3;
- (void)loadMedicalIDWithCompletion:(id)a3;
- (void)notifyEmergencyContacts;
- (void)presentMedicalID;
- (void)raiseAccidentalSOSNotification;
- (void)removeDismissalAssertionReleasedObserver;
- (void)restoreSystemVolumeLevel;
- (void)sendFlowStateUpdateForCurrentSOSMode;
- (void)setPostCallMode;
- (void)setPostContactNotificationMode;
- (void)setSosMode:(int64_t)a3;
- (void)setSystemVolumeToMax;
- (void)setUpAlertRestingViewConstraints;
- (void)setUpCancelButtonConstraints;
- (void)setUpCheckInViewConstraints;
- (void)setUpCountdownViewConstraints;
- (void)setUpInfoLabelConstraints;
- (void)setUpRestingViewConstraints;
- (void)setUpSOSNumbersListViewConstraints;
- (void)setUpSlidingViewConstraints;
- (void)showAlertRestingView;
- (void)showCheckInView;
- (void)showConfirmationAlert;
- (void)showPowerDownFindMyAlert;
- (void)showPowerDownFindMyInfoAlertWithProceed:(id)a3 cancelCompletion:(id)a4;
- (void)showRestingView;
- (void)showSOSDialCanceled;
- (void)showSOSDialCountdown;
- (void)showSOSDialSliding;
- (void)showSOSNotificationCanceled;
- (void)showSOSNotificationCountdown;
- (void)showSOSNotified;
- (void)showSOSNumbersList;
- (void)sosNumbersViewController:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)startSOSNotificationCountdown;
- (void)startStatusHeartbeatTimer;
- (void)stateChanged:(id)a3;
- (void)submitSOSResolutionMetric:(BOOL)a3;
- (void)submitSOSUserActivityMetric;
- (void)transitionToView:(id)a3 animated:(BOOL)a4;
- (void)updateInteractiveState;
- (void)updateSOSHandles:(id)a3;
- (void)userAcknowledgedFindMyInfo;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willStartSendingLocationUpdate;
@end

@implementation PHSOSViewController

+ (BOOL)isCallBufferDismissalAssertionActive
{
  v2 = +[PHSOSViewController getSetOfCallBufferDismissalAssertions];
  v3 = +[PHInCallRootViewController dismissalAssertions];
  v4 = [v2 intersectsSet:v3];

  return v4;
}

+ (BOOL)isSOSDismissalAssertionActive
{
  v2 = +[PHSOSViewController getSetOfSOSDismissalAssertions];
  v3 = +[PHInCallRootViewController dismissalAssertions];
  v4 = [v2 intersectsSet:v3];

  return v4;
}

+ (void)releaseAllCallBufferDismissalAssertions
{
  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHCallBufferScreenAssertionReason"];

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHSliderSwipeCallBufferScreenAssertionReason"];
}

- (PHSOSViewController)initWithSOSHandles:(id)a3
{
  v5 = a3;
  v44.receiver = self;
  v44.super_class = PHSOSViewController;
  v6 = [(PHSOSViewController *)&v44 init];
  if (!v6)
  {
    goto LABEL_32;
  }

  v7 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
  coreTelephonyClient = v6->_coreTelephonyClient;
  v6->_coreTelephonyClient = v7;

  v9 = objc_opt_new();
  analyticsReporter = v6->_analyticsReporter;
  v6->_analyticsReporter = v9;

  objc_storeStrong(&v6->_sosHandles, a3);
  v6->_sosTrigger = +[SOSUtilities mostRecentlyUsedSOSTriggerMechanism];
  v6->_isPendingAudioSessionActivation = 1;
  v11 = objc_alloc_init(PHAudioDeviceController);
  audioDeviceController = v6->_audioDeviceController;
  v6->_audioDeviceController = v11;

  [(PHAudioDeviceController *)v6->_audioDeviceController setDelegate:v6];
  v13 = +[SOSCoreAnalyticsReporter sharedInstance];
  coreAnalyticsReporter = v6->_coreAnalyticsReporter;
  v6->_coreAnalyticsReporter = v13;

  v6->_priorSystemVolume = -1.0;
  v15 = [(PHAudioDeviceController *)v6->_audioDeviceController currentRoute];
  priorSystemAudioRoute = v6->_priorSystemAudioRoute;
  v6->_priorSystemAudioRoute = v15;

  v6->_callDialStartTime = -1.0;
  v6->_timeTillActive = -1.0;
  v6->_callAutoDialled = 0;
  v17 = +[NSUUID UUID];
  v18 = [v17 UUIDString];
  sessionId = v6->_sessionId;
  v6->_sessionId = v18;

  v6->_sessionStartTime = CFAbsoluteTimeGetCurrent();
  v20 = +[PHInCallRootViewController dismissalAssertions];
  v21 = [v20 containsObject:@"PHSOSCallAssertionReason"];

  if (!v21)
  {
    v29 = +[PHInCallRootViewController dismissalAssertions];
    v30 = [v29 containsObject:@"PHAlertRestingScreenAssertionReason"];

    if (v30)
    {
      objc_storeStrong(&v6->_launchedForAssertionReason, @"PHAlertRestingScreenAssertionReason");
      v6->_sosMode = 10;
      v31 = [[CTStewieStateMonitor alloc] initWithDelegate:v6 queue:&_dispatch_main_q];
      stewieStateMonitor = v6->_stewieStateMonitor;
      v6->_stewieStateMonitor = v31;

      [(CTStewieStateMonitor *)v6->_stewieStateMonitor start];
      v33 = [(CTStewieStateMonitor *)v6->_stewieStateMonitor getState];
      stewieState = v6->_stewieState;
      v6->_stewieState = v33;

      v35 = sub_100004F84();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v6->_stewieState;
        *buf = 138412290;
        v46 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,Stewie state on launch: %@", buf, 0xCu);
      }
    }

    else
    {
      v37 = sub_100004F84();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1002553B8();
      }

      v6->_sosMode = 2;
    }

    goto LABEL_29;
  }

  objc_storeStrong(&v6->_launchedForAssertionReason, @"PHSOSCallAssertionReason");
  sosTrigger = v6->_sosTrigger;
  if (sosTrigger <= 2)
  {
    if ((sosTrigger - 1) < 2)
    {
LABEL_9:
      if (+[SOSUtilities isCallWithSideButtonPressesEnabled]&& sub_10008B280() && ([(PHSOSViewController *)v6 coreTelephonyClient], v24 = objc_claimAutoreleasedReturnValue(), v25 = [SOSUtilities shouldForceDisableAutoCallForClient:v24], v24, !v25))
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      v6->_sosMode = v26;
      v27 = 352;
      v28 = 2;
      goto LABEL_28;
    }

    if (!sosTrigger)
    {
      v23 = sub_100004F84();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1002553EC();
      }

      goto LABEL_9;
    }

LABEL_25:
    v38 = sub_100004F84();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_100255420(&v6->_sosTrigger, v38);
    }

    v27 = 32;
    v28 = 2;
    goto LABEL_28;
  }

  if (sosTrigger == 3)
  {
    v6->_sosMode = 2;
    v27 = 352;
    v28 = 1;
  }

  else
  {
    if (sosTrigger != 7)
    {
      goto LABEL_25;
    }

    v27 = 32;
    v28 = 8;
  }

LABEL_28:
  *(&v6->super.super.super.isa + v27) = v28;
  v6->_shouldDropBioAuthTokenOnDismiss = 1;
LABEL_29:
  v39 = sub_100004F84();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    sosHandles = v6->_sosHandles;
    sosMode = v6->_sosMode;
    *buf = 138412546;
    v46 = sosHandles;
    v47 = 2048;
    v48 = sosMode;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Initialized PHSOSViewController with sosHandles: %@ sosMode: %ld", buf, 0x16u);
  }

  [(PHSOSViewController *)v6 addObservers];
  v42 = objc_alloc_init(SPBeaconManager);
  [(PHSOSViewController *)v6 setBeaconManager:v42];

LABEL_32:
  return v6;
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"callStateChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
  [v3 addObserver:self selector:"emergencyCallbackModeChangedNotification:" name:TUCallCapabilitiesEmergencyCallbackModeChangedNotification object:0];
  [v3 addObserver:self selector:"interactiveStateChangedNotification:" name:SOSInteractiveStateChangedNotification object:0];
  [v3 addObserver:self selector:"buttonPressStateChangedNotification:" name:SOSButtonPressStateChangedNotification object:0];
  [v3 addObserver:self selector:"dismissSOSNotification:" name:SOSDismissSOSNotification object:0];
  [v3 addObserver:self selector:"handleNetworkUnavailableAlertDidFinishNotification:" name:@"PHNetworkUnavailableAlertDidFinishNotification" object:0];
  [v3 addObserver:self selector:"handleAlertDisconnectingCallsNotification:" name:@"PHAlertDisconnectingCallsNotification" object:0];
  [v3 addObserver:self selector:"handleCallBufferCompletionNotification:" name:@"PHCallBufferCompletionNotification" object:0];
}

- (void)updateSOSHandles:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_sosHandles, a3);
  sosNumbersViewController = self->_sosNumbersViewController;
  if (sosNumbersViewController)
  {
    [(PHSOSNumbersViewController *)sosNumbersViewController updateSOSHandles:self->_sosHandles];
  }
}

- (BOOL)shouldAllowLockButtonPressesToDismissSOS
{
  if ([(PHSOSViewController *)self sosMode]!= 2 || self->_currentInteractiveState || +[PHSOSViewController isCallBufferDismissalAssertionActive])
  {
    return 0;
  }

  else
  {
    return ![(PHSOSViewController *)self requestedCallActive];
  }
}

- (BOOL)clawButtonPressGapWithinThreshold
{
  +[SOSUtilities clawReleaseToCallSupport];
  if (v2 == 0.0)
  {
    return 1;
  }

  v3 = +[SOSManager sharedInstance];
  v4 = [v3 currentSOSButtonPressState];
  [v4 getButtonPressGap];
  v6 = v5 <= 3.0;

  return v6;
}

- (void)interactiveStart
{
  if ([(PHSOSViewController *)self sosMode]!= 2 || [(PHSOSViewController *)self requestedCallActive])
  {
    goto LABEL_8;
  }

  v3 = [(PHSOSViewController *)self slidingView];
  if ([v3 slidingViewState] == 1 || !sub_10008B280())
  {
    goto LABEL_7;
  }

  v4 = [(PHSOSViewController *)self coreTelephonyClient];
  if ([SOSUtilities shouldForceDisableAutoCallForClient:v4])
  {

LABEL_7:
    goto LABEL_8;
  }

  v5 = [(PHSOSViewController *)self clawButtonPressGapWithinThreshold];

  if (!v5)
  {
LABEL_8:
    if (![(PHSOSViewController *)self clawButtonPressGapWithinThreshold])
    {
      [(PHSOSViewController *)self setWasCallCancelled:1];
      [(PHSOSViewController *)self setClawResolution:7];

      [(PHSOSViewController *)self submitSOSResolutionMetric:0];
    }

    return;
  }

  v6 = [(PHSOSViewController *)self slidingView];
  v7 = objc_alloc_init(PHSOSDialSlidingViewModel);
  [v6 interactiveStartWithCountdownModel:v7];

  +[NSDate timeIntervalSinceReferenceDate];

  [(PHSOSViewController *)self setInteractiveStartTime:?];
}

- (void)interactiveStop:(BOOL)a3
{
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B800;
  v7[3] = &unk_100358078;
  objc_copyWeak(&v8, &location);
  v9 = a3;
  v5 = objc_retainBlock(v7);
  if ([(PHSOSViewController *)self sosMode]== 2)
  {
    v6 = [(PHSOSViewController *)self slidingView];
    [v6 interactiveStop:v5];
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = PHSOSViewController;
  [(PHSOSViewController *)&v2 didReceiveMemoryWarning];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PHSOSViewController;
  [(PHSOSViewController *)&v14 viewDidLoad];
  if ([(PHAudioDeviceController *)self->_audioDeviceController speakerRouteAvailable])
  {
    [(PHAudioDeviceController *)self->_audioDeviceController pickSpeakerRoute];
    v3 = [(PHAudioDeviceController *)self->_audioDeviceController speakerRouteIsPicked];
    v4 = sub_100004F84();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,routed audio through speaker", v13, 2u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1002554D0();
    }
  }

  else
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10025549C();
    }
  }

  v6 = [[PHBottomBarButtonConfiguration alloc] initWithAction:19];
  v7 = [[PHBottomBarButton alloc] initWithConfiguration:v6 appType:2];
  [(PHSOSViewController *)self setCancelButton:v7];

  v8 = [(PHSOSViewController *)self cancelButton];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(PHSOSViewController *)self cancelButton];
  [v9 addTarget:self action:"buttonPressed:" forEvents:64];

  v10 = [(PHSOSViewController *)self view];
  v11 = [(PHSOSViewController *)self cancelButton];
  [v10 addSubview:v11];

  [(PHSOSViewController *)self setUpCancelButtonConstraints];
  [(PHSOSViewController *)self setSosMode:self->_sosMode];
  v12 = +[SOSManager sharedInstance];
  [v12 setCurrentSOSInitiationState:1];

  [(PHSOSViewController *)self updateInteractiveState];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  countdownView = self->_countdownView;
  if (countdownView)
  {
    [(PHCountdownView *)countdownView pause];
  }

  checkInView = self->_checkInView;
  if (checkInView)
  {
    [(PHCheckInView *)checkInView pause];
  }

  v7.receiver = self;
  v7.super_class = PHSOSViewController;
  [(PHSOSViewController *)&v7 viewWillDisappear:v3];
  if (!+[PHSOSViewController isCallBufferDismissalAssertionActive])
  {
    [(PHSOSViewController *)self setVolumeHUDHiddenPending:0];
    [(PHSOSViewController *)self handleVolumeHUDEnablement];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = PHSOSViewController;
  [(PHSOSViewController *)&v10 viewWillAppear:a3];
  countdownView = self->_countdownView;
  if (countdownView)
  {
    [(PHCountdownView *)countdownView resume];
  }

  checkInView = self->_checkInView;
  if (checkInView)
  {
    [(PHCheckInView *)checkInView resume];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [(PHSOSViewController *)self setCountdownStartedTime:?];
  [(PHSOSViewController *)self setVolumeHUDHiddenPending:1];
  v6 = +[UIApplication sharedApplication];
  v7 = [v6 delegate];
  v8 = [v7 sceneManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008BD14;
  v9[3] = &unk_100357AF8;
  v9[4] = self;
  [v8 waitForRegistrationOfSceneWithType:0 completion:v9];
}

- (void)handleVolumeHUDEnablement
{
  v3 = [(PHSOSViewController *)self volumeHUDHiddenPending];
  v4 = [(PHSOSViewController *)self volumeHUDHiddenCurrently];
  v5 = sub_100004F84();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3 == v4)
  {
    if (v6)
    {
      v9 = 67109120;
      v10 = ![(PHSOSViewController *)self volumeHUDHiddenCurrently];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,setVolumeHUDEnablement,volume HUD enablement already set to %d", &v9, 8u);
    }
  }

  else
  {
    if (v6)
    {
      v9 = 67109120;
      v10 = ![(PHSOSViewController *)self volumeHUDHiddenPending];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,setVolumeHUDEnablement,volume HUD enabled:%d", &v9, 8u);
    }

    [(PHSOSViewController *)self setVolumeHUDHiddenCurrently:[(PHSOSViewController *)self volumeHUDHiddenPending]];
    v5 = +[UIApplication sharedApplication];
    v7 = [v5 delegate];
    v8 = [v7 currentInCallScene];
    [v8 _setSystemVolumeHUDEnabled:{-[PHSOSViewController volumeHUDHiddenPending](self, "volumeHUDHiddenPending") ^ 1}];
  }
}

- (double)marginPadding
{
  v2 = +[PHUIConfiguration shouldUseSOSTightSpacing];
  result = 24.0;
  if (v2)
  {
    return 16.0;
  }

  return result;
}

- (void)handleNetworkUnavailableAlertDidFinishNotification:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notified that network unavailable alert finished, so dismissing SOS", v5, 2u);
  }

  [(PHSOSViewController *)self deactivateSOS];
}

- (void)handleAlertDisconnectingCallsNotification:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notified that SOS should handle alert disconnecting calls", v5, 2u);
  }

  [(PHSOSViewController *)self setShouldHandleAlertCallDisconnection:1];
  [(PHSOSViewController *)self setShouldDropBioAuthTokenOnDismiss:0];
}

- (void)callStateChangedNotification:(id)a3
{
  v4 = [a3 object];
  if ([v4 isConnected] && objc_msgSend(v4, "isSOSOrFakeSOS"))
  {
    [(PHSOSViewController *)self setShouldDropBioAuthTokenOnDismiss:0];
  }

  v5 = [v4 status];
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      goto LABEL_20;
    }

    if (v5 != 3)
    {
      goto LABEL_59;
    }

    if ([v4 isSOSOrFakeSOS])
    {
      [(PHSOSViewController *)self removeDismissalAssertionReleasedObserver];
    }

LABEL_19:
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10008C4A4;
    v35[3] = &unk_100356988;
    v35[4] = self;
    [(PHSOSViewController *)self hideMedicalIDWithCompletion:v35];
LABEL_20:
    v14 = [(PHSOSViewController *)self sosMode];
    if (v14 <= 8 && ((1 << v14) & 0x107) != 0)
    {
      if (-[PHSOSViewController requestedCallActive](self, "requestedCallActive") && [v4 isSOSOrFakeSOS])
      {
        v15 = [v4 callUUID];
        sosCallUUID = self->_sosCallUUID;
        self->_sosCallUUID = v15;
      }

      if (![(PHSOSViewController *)self requestedCallActive])
      {
        v17 = self->_sosCallUUID;
        v18 = [v4 callUUID];
        LOBYTE(v17) = [(NSString *)v17 isEqualToString:v18];

        if ((v17 & 1) == 0)
        {
          v19 = [v4 isEmergency];
          v20 = sub_100004F84();
          v21 = v20;
          if (v19)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *v34 = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,interrupted by other emergency call,deactivating SOS", v34, 2u);
            }

            [(PHSOSViewController *)self setShouldDropBioAuthTokenOnDismiss:0];
            [(PHSOSViewController *)self deactivateSOS];
          }

          else
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_100255584();
            }
          }
        }
      }
    }

    if ([v4 status] == 1)
    {
      [(PHSOSViewController *)self callDialStartTime];
      if (v24 > 0.0)
      {
        Current = CFAbsoluteTimeGetCurrent();
        [(PHSOSViewController *)self callDialStartTime];
        [(PHSOSViewController *)self setTimeTillActive:vabdd_f64(Current, v26)];
      }

      v27 = CFAbsoluteTimeGetCurrent();
      [(PHSOSViewController *)self sessionStartTime];
      [(PHSOSViewController *)self setCallConnectTimeSinceSessionStart:vabdd_f64(v27, v28)];
    }

    goto LABEL_59;
  }

  if (v5 == 4)
  {
    goto LABEL_19;
  }

  if (v5 != 6)
  {
    goto LABEL_59;
  }

  if ([v4 isSOSOrFakeSOS])
  {
    [(PHSOSViewController *)self setRequestedCallActive:0];
    -[PHSOSViewController setCallDisconnectReason:](self, "setCallDisconnectReason:", [v4 disconnectedReason]);
  }

  [(PHSOSViewController *)self timeTillActive];
  if (v6 < 0.0)
  {
    [(PHSOSViewController *)self callDialStartTime];
    if (v7 > 0.0)
    {
      v8 = CFAbsoluteTimeGetCurrent();
      [(PHSOSViewController *)self callDialStartTime];
      [(PHSOSViewController *)self setTimeTillActive:vabdd_f64(v8, v9)];
      v10 = CFAbsoluteTimeGetCurrent();
      [(PHSOSViewController *)self sessionStartTime];
      [(PHSOSViewController *)self setCallConnectTimeSinceSessionStart:vabdd_f64(v10, v11)];
    }
  }

  v12 = [v4 disconnectedReasonRequiresCallFailureUI];
  v13 = [v4 isSOSOrFakeSOS];
  if (v12)
  {
    if (v13)
    {
      [(PHSOSViewController *)self addDismissalAssertionReleasedObserver];
    }

    goto LABEL_57;
  }

  if (!v13)
  {
    sosMode = self->_sosMode;
    if (sosMode == 2)
    {
      if ([v4 isOutgoing])
      {
        [(PHSOSViewController *)self deactivateSOS];
      }

      else
      {
        slidingView = self->_slidingView;
        self->_slidingView = 0;

        [(PHSOSViewController *)self setSosMode:2];
      }
    }

    else if (sosMode == 4 && (+[TUCallCapabilities isEmergencyCallbackModeEnabled]& 1) == 0)
    {
      [(PHSOSViewController *)self startSOSNotificationCountdown];
    }

    goto LABEL_57;
  }

  [(PHSOSViewController *)self setPostCallMode];
  v22 = [(PHSOSViewController *)self sosTrigger];
  if (v22 >= 3)
  {
    if (v22 != 3)
    {
      if (v22 != 7)
      {
        v30 = sub_100004F84();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_100255504(self);
        }
      }

      [v4 callDuration];
      [(PHSOSViewController *)self setTimeTillCancelCall:?];
      [(PHSOSViewController *)self setWasCallCancelled:0];
      goto LABEL_56;
    }

    v23 = +[SOSUtilities isCallWithVolumeLockHoldEnabled];
  }

  else
  {
    v23 = +[SOSUtilities isCallWithSideButtonPressesEnabled];
  }

  v31 = v23;
  [v4 callDuration];
  [(PHSOSViewController *)self setTimeTillCancelCall:?];
  [(PHSOSViewController *)self setWasCallCancelled:0];
  if (!v31 || ([v4 callDuration], v32 > 12.0))
  {
LABEL_56:
    [(PHSOSViewController *)self submitSOSResolutionMetric:0];
    goto LABEL_57;
  }

  [(PHSOSViewController *)self raiseAccidentalSOSNotification];
LABEL_57:
  if ([v4 isSOSOrFakeSOS])
  {
    [(PHSOSViewController *)self setSlidingViewExitReason:10];
    [(PHSOSViewController *)self submitSOSUserActivityMetric];
  }

LABEL_59:
}

- (void)dismissalAssertionReleasedNotification:(id)a3
{
  v4 = +[PHInCallRootViewController dismissalAssertions];
  v5 = [v4 containsObject:@"PHAudioCallViewControllerDismissalAssertionHandlingCallFailure"];

  if ((v5 & 1) == 0)
  {
    [(PHSOSViewController *)self setPostCallMode];

    [(PHSOSViewController *)self removeDismissalAssertionReleasedObserver];
  }
}

- (void)removeDismissalAssertionReleasedObserver
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"PHDismissalAssertionReleasedNotification" object:0];
}

- (void)addDismissalAssertionReleasedObserver
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"dismissalAssertionReleasedNotification:" name:@"PHDismissalAssertionReleasedNotification" object:0];
}

- (void)interactiveStateChangedNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008C6D4;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateInteractiveState
{
  v3 = +[SOSManager sharedInstance];
  v4 = [v3 currentSOSInteractiveState];

  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218240;
    v7 = [(PHSOSViewController *)self currentInteractiveState];
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSOSViewController attempting to set currentInteractiveState from %lu to %lu", &v6, 0x16u);
  }

  if ([(PHSOSViewController *)self currentInteractiveState]!= v4)
  {
    [(PHSOSViewController *)self setCurrentInteractiveState:v4];
    if (v4)
    {
      if (v4 == 1)
      {
        [(PHSOSViewController *)self interactiveStart];
      }
    }

    else
    {
      [(PHSOSViewController *)self interactiveStop:1];
    }
  }
}

- (void)buttonPressStateChangedNotification:(id)a3
{
  v4 = +[SOSManager sharedInstance];
  v5 = [v4 currentSOSButtonPressState];
  [(PHSOSViewController *)self setCurrentButtonPressState:v5];

  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(PHSOSViewController *)self currentButtonPressState];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,currentButtonPressState:%{public}@", &v8, 0xCu);
  }
}

- (void)dismissSOSNotification:(id)a3
{
  v4 = [(PHSOSViewController *)self shouldAllowLockButtonPressesToDismissSOS];
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSOSViewController attempting to dismiss SOS due to lock button press; shouldAllowLockButtonPressesToDismissSOS: %d", v6, 8u);
  }

  if (v4)
  {
    [(PHSOSViewController *)self deactivateSOSWithSOSDismissalType:1];
  }
}

- (void)setPostCallMode
{
  if ([(PHSOSViewController *)self shouldHandleAlertCallDisconnection])
  {
    [(PHSOSViewController *)self setShouldHandleAlertCallDisconnection:0];
    goto LABEL_3;
  }

  if ([(PHSOSViewController *)self sosTrigger]== 7 && [(PHSOSViewController *)self alreadyVisitedRestingScreen])
  {
LABEL_3:

    [(PHSOSViewController *)self deactivateSOS];
    return;
  }

  v3 = objc_alloc_init(SOSContactsManager);
  v4 = [v3 hasValidContactsToMessage];

  if (v4)
  {

    [(PHSOSViewController *)self setSosMode:4];
  }

  else
  {

    [(PHSOSViewController *)self setPostContactNotificationMode];
  }
}

- (void)setPostContactNotificationMode
{
  if ([(PHSOSViewController *)self sosTrigger]== 7)
  {
    if ([(PHSOSViewController *)self isUserResponsive])
    {

      [(PHSOSViewController *)self deactivateSOS];
      return;
    }

    v3 = self;
    v4 = 9;
  }

  else
  {
    v3 = self;
    v4 = 7;
  }

  [(PHSOSViewController *)v3 setSosMode:v4];
}

- (void)setSosMode:(int64_t)a3
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PHSOSViewController *)self nameForSOSMode:a3];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating SOS mode to %@", &v7, 0xCu);
  }

  self->_sosMode = a3;
  if (a3 <= 4)
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          [(PHSOSViewController *)self showSOSDialCountdown];
        }
      }

      else
      {
        [(PHSOSViewController *)self showSOSNumbersList];
      }
    }

    else if (a3 == 2)
    {
      [(PHSOSViewController *)self showSOSDialSliding];
    }

    else if (a3 == 3)
    {
      [(PHSOSViewController *)self showSOSDialCanceled];
    }

    else
    {
      [(PHSOSViewController *)self showSOSNotificationCountdown];
    }
  }

  else if (a3 > 7)
  {
    switch(a3)
    {
      case 8:
        [(PHSOSViewController *)self showCheckInView];
        break;
      case 9:
        [(PHSOSViewController *)self showRestingView];
        break;
      case 10:
        [(PHSOSViewController *)self showAlertRestingView];
        break;
    }
  }

  else if (a3 == 5)
  {
    [(PHSOSViewController *)self showSOSNotified];
  }

  else if (a3 == 6)
  {
    [(PHSOSViewController *)self showSOSNotificationCanceled];
  }

  else
  {
    [(PHSOSViewController *)self presentMedicalID];
  }

  [(PHSOSViewController *)self sendFlowStateUpdateForCurrentSOSMode];
}

- (void)sendFlowStateUpdateForCurrentSOSMode
{
  v3 = [(PHSOSViewController *)self launchedForAssertionReason];

  if (v3 != @"PHSOSCallAssertionReason")
  {
    return;
  }

  v4 = [(PHSOSViewController *)self sosMode];
  if (v4 <= 4)
  {
    if (v4 <= 1)
    {
      if (!v4)
      {
        return;
      }

      v5 = v4 == 1;
      v6 = 2;
      goto LABEL_23;
    }

    v7 = 13;
    v8 = 6;
    v9 = 5;
    if (v4 != 4)
    {
      v9 = 0;
    }

    if (v4 != 3)
    {
      v8 = v9;
    }

    v10 = v4 == 2;
  }

  else
  {
    if (v4 <= 7)
    {
      if ((v4 - 5) < 2)
      {
        return;
      }

      v5 = v4 == 7;
      v6 = 8;
LABEL_23:
      if (v5)
      {
        v12 = v6;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_26;
    }

    v7 = 1;
    v8 = 9;
    v11 = 11;
    if (v4 != 10)
    {
      v11 = 0;
    }

    if (v4 != 9)
    {
      v8 = v11;
    }

    v10 = v4 == 8;
  }

  if (v10)
  {
    v12 = v7;
  }

  else
  {
    v12 = v8;
  }

LABEL_26:
  v13 = +[SOSStatusReporter sharedInstance];
  [v13 updateSOSFlowState:v12];
}

- (id)nameForSOSMode:(int64_t)a3
{
  if (a3 > 0xA)
  {
    return &stru_100361FD0;
  }

  else
  {
    return off_100358300[a3];
  }
}

- (PHSOSNumbersViewController)sosNumbersViewController
{
  sosNumbersViewController = self->_sosNumbersViewController;
  if (!sosNumbersViewController)
  {
    v4 = [PHSOSNumbersViewController alloc];
    v5 = [(PHSOSViewController *)self sosHandles];
    v6 = [(PHSOSNumbersViewController *)v4 initWithSOSHandles:v5];
    v7 = self->_sosNumbersViewController;
    self->_sosNumbersViewController = v6;

    v8 = [(PHSOSNumbersViewController *)self->_sosNumbersViewController view];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(PHSOSNumbersViewController *)self->_sosNumbersViewController setDelegate:self];
    sosNumbersViewController = self->_sosNumbersViewController;
  }

  return sosNumbersViewController;
}

- (PHCheckInView)checkInView
{
  checkInView = self->_checkInView;
  if (!checkInView)
  {
    v4 = objc_alloc_init(PHCheckInView);
    v5 = self->_checkInView;
    self->_checkInView = v4;

    [(PHCheckInView *)self->_checkInView setTranslatesAutoresizingMaskIntoConstraints:0];
    checkInView = self->_checkInView;
  }

  return checkInView;
}

- (PHSOSRestingView)restingView
{
  restingView = self->_restingView;
  if (!restingView)
  {
    v4 = objc_alloc_init(PHSOSRestingView);
    v5 = self->_restingView;
    self->_restingView = v4;

    [(PHSOSRestingView *)self->_restingView setTranslatesAutoresizingMaskIntoConstraints:0];
    restingView = self->_restingView;
  }

  return restingView;
}

- (PHSOSAlertRestingView)alertRestingView
{
  alertRestingView = self->_alertRestingView;
  if (!alertRestingView)
  {
    v4 = objc_alloc_init(PHSOSAlertRestingView);
    v5 = self->_alertRestingView;
    self->_alertRestingView = v4;

    [(PHSOSAlertRestingView *)self->_alertRestingView setTranslatesAutoresizingMaskIntoConstraints:0];
    alertRestingView = self->_alertRestingView;
  }

  return alertRestingView;
}

- (PHCountdownView)countdownView
{
  countdownView = self->_countdownView;
  if (!countdownView)
  {
    v4 = objc_alloc_init(PHCountdownView);
    v5 = self->_countdownView;
    self->_countdownView = v4;

    [(PHCountdownView *)self->_countdownView setTranslatesAutoresizingMaskIntoConstraints:0];
    countdownView = self->_countdownView;
  }

  return countdownView;
}

- (PHSlidingView)slidingView
{
  slidingView = self->_slidingView;
  if (!slidingView)
  {
    v4 = objc_alloc_init(PHSlidingView);
    v5 = self->_slidingView;
    self->_slidingView = v4;

    [(PHSlidingView *)self->_slidingView setDelegate:self];
    [(PHSlidingView *)self->_slidingView setTranslatesAutoresizingMaskIntoConstraints:0];
    slidingView = self->_slidingView;
  }

  return slidingView;
}

- (UILabel)infoLabel
{
  infoLabel = self->_infoLabel;
  if (!infoLabel)
  {
    v4 = objc_alloc_init(UILabel);
    v5 = self->_infoLabel;
    self->_infoLabel = v4;

    [(UILabel *)self->_infoLabel setNumberOfLines:0];
    [(UILabel *)self->_infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_infoLabel setTextAlignment:1];
    v6 = [UIFont boldSystemFontOfSize:34.0];
    [(UILabel *)self->_infoLabel setFont:v6];

    v7 = +[UIColor whiteColor];
    [(UILabel *)self->_infoLabel setTextColor:v7];

    [(UILabel *)self->_infoLabel setNumberOfLines:0];
    infoLabel = self->_infoLabel;
  }

  return infoLabel;
}

- (HKHealthStore)healthStore
{
  healthStore = self->_healthStore;
  if (!healthStore)
  {
    v4 = objc_alloc_init(CUTWeakLinkClass());
    v5 = self->_healthStore;
    self->_healthStore = v4;

    healthStore = self->_healthStore;
  }

  return healthStore;
}

- (void)dialEmergencyCall
{
  v3 = [(PHSOSViewController *)self sosHandles];
  v4 = [v3 count];

  if (v4 > 1)
  {
    if ([(PHSOSViewController *)self sosTrigger]== 7 && ![(PHSOSViewController *)self isUserResponsive])
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = -1;
      v5 = [(PHSOSViewController *)self sosHandles];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10008D3E0;
      v8[3] = &unk_1003580A0;
      v8[4] = &v9;
      [v5 enumerateObjectsUsingBlock:v8];

      v6 = v10[3];
      if (v6 < 0)
      {
        v7 = sub_100004F84();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1002555B8();
        }

        v6 = 0;
        v10[3] = 0;
      }

      [(PHSOSViewController *)self dialSOSNumberAtIndex:v6];
      _Block_object_dispose(&v9, 8);
    }

    else
    {

      [(PHSOSViewController *)self setSosMode:0];
    }
  }

  else
  {

    [(PHSOSViewController *)self dialSOSNumberAtIndex:0];
  }
}

- (void)dialSOSNumberAtIndex:(int64_t)a3
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PHSOSViewController *)self sosHandles];
    *buf = 134218242;
    v36 = a3;
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "index: %ld self.sosHandles: %@", buf, 0x16u);
  }

  v7 = +[NSDate date];
  [(PHSOSViewController *)self setDateOfCall:v7];

  v8 = +[TUCall shouldMakeFakeSOSCall];
  v9 = [TUDialRequest alloc];
  v10 = +[TUCallCenter sharedInstance];
  v11 = [v10 providerManager];
  v12 = v11;
  if (v8)
  {
    v13 = [v11 telephonyProvider];
    v14 = [v9 initWithProvider:v13];

    v15 = [TUHandle handleWithDestinationID:@"+14089619342"];
    [v14 setHandle:v15];
  }

  else
  {
    v16 = [v11 emergencyProvider];
    v14 = [v9 initWithProvider:v16];

    [v14 setDialType:1];
    [v14 setSOS:1];
  }

  v17 = [(PHSOSViewController *)self sosTrigger];
  if (v17 <= 2)
  {
    if (v17 < 3)
    {
      v18 = 3;
LABEL_23:
      v21 = 3;
      goto LABEL_24;
    }

LABEL_12:
    v19 = sub_100004F84();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1002555EC(self);
    }

LABEL_15:
    v18 = 4;
    goto LABEL_23;
  }

  if (v17 != 7)
  {
    if (v17 == 5)
    {
      v18 = 13;
      goto LABEL_23;
    }

    if (v17 == 3)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v20 = [(PHSOSViewController *)self isUserResponsive];
  if (v20)
  {
    v18 = 12;
  }

  else
  {
    v18 = 10;
  }

  if (v20)
  {
    v21 = 3;
  }

  else
  {
    v21 = 4;
  }

LABEL_24:
  [v14 setOriginatingUIType:v18];
  v22 = [(PHSOSViewController *)self launchedForAssertionReason];
  v23 = v22 == @"PHSOSCallAssertionReason";

  if (v23)
  {
    v24 = +[SOSStatusReporter sharedInstance];
    [v24 updateSOSFlowState:v21];
  }

  if (([v14 isRTTAvailable] & 1) != 0 || objc_msgSend(v14, "isTTYAvailable"))
  {
    [v14 setTtyType:2];
  }

  v25 = [(PHSOSViewController *)self sosHandles];
  if ([v25 count] <= a3)
  {
  }

  else
  {
    v26 = +[TUCall shouldMakeFakeSOSCall];

    if ((v26 & 1) == 0)
    {
      v27 = [(PHSOSViewController *)self sosHandles];
      v28 = [v27 objectAtIndexedSubscript:a3];
      v29 = [v28 handle];
      [v14 setHandle:v29];

      if (([v14 isValid] & 1) == 0)
      {
        v30 = sub_100004F84();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v14;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] Dial request %@ is invalid using the chosen handle. Falling back to using a default emergency number", buf, 0xCu);
        }

        [v14 setHandle:0];
      }
    }
  }

  v31 = sub_100004F84();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "SOSViewController is launching dial request for SOS call: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  [(PHSOSViewController *)self setRequestedCallActive:1];
  [(PHSOSViewController *)self setCallDialStartTime:CFAbsoluteTimeGetCurrent()];
  v32 = +[TUCallCenter sharedInstance];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10008D9D4;
  v33[3] = &unk_100356F88;
  objc_copyWeak(&v34, buf);
  [v32 launchAppForDialRequest:v14 completion:v33];

  objc_destroyWeak(&v34);
  objc_destroyWeak(buf);
}

- (void)notifyEmergencyContacts
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  if ([(PHSOSViewController *)self sosTrigger]== 7)
  {
    if (+[SOSUtilities isKappaUnmasked])
    {
      v4 = 2;
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

  objc_initWeak(buf, self);
  v5 = +[SOSManager sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008DBB0;
  v6[3] = &unk_1003580C8;
  objc_copyWeak(&v7, buf);
  [v5 startSendingLocationUpdateForReason:v4 withCompletion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)willStartSendingLocationUpdate
{
  v2 = +[SOSManager sharedInstance];
  [v2 willStartSendingLocationUpdate];
}

- (void)showSOSNumbersList
{
  v3 = [(PHSOSViewController *)self cancelButton];
  [v3 setHidden:0];

  v4 = [(PHSOSViewController *)self sosNumbersViewController];
  v5 = [v4 view];
  [(PHSOSViewController *)self transitionToView:v5 animated:0];

  [(PHSOSViewController *)self setUpSOSNumbersListViewConstraints];
  v6 = [(PHSOSViewController *)self cancelButton];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];
  [v6 setTitle:v8 forState:0];

  [(PHSOSViewController *)self willStartSendingLocationUpdate];
}

- (void)showCheckInView
{
  v3 = [(PHSOSViewController *)self cancelButton];
  [v3 setHidden:0];

  v4 = [(PHSOSViewController *)self checkInView];
  [(PHSOSViewController *)self transitionToView:v4 animated:0];

  [(PHSOSViewController *)self setUpCheckInViewConstraints];
  v5 = [(PHSOSViewController *)self cancelButton];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];
  [v5 setTitle:v7 forState:0];

  [(PHSOSViewController *)self willStartSendingLocationUpdate];
  v8 = [(PHSOSViewController *)self getCheckInViewModel];
  if ([v8 sosVoiceMessageType])
  {
    [(PHSOSViewController *)self setVolumeMaxedPending:1];
    v9 = +[UIApplication sharedApplication];
    v10 = [v9 delegate];
    v11 = [v10 sceneManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10008E000;
    v17[3] = &unk_100357AF8;
    v17[4] = self;
    [v11 waitForRegistrationOfSceneWithType:0 completion:v17];
  }

  Current = CFAbsoluteTimeGetCurrent();
  objc_initWeak(&location, self);
  v13 = [(PHSOSViewController *)self checkInView];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008E03C;
  v14[3] = &unk_1003580F0;
  objc_copyWeak(v15, &location);
  v15[1] = *&Current;
  v14[4] = self;
  [v13 start:v8 completion:v14];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

- (id)getCheckInViewModel
{
  v2 = objc_alloc_init(PHSOSKappaCheckInViewModel);

  return v2;
}

- (void)handleVolumeChanges
{
  v3 = [(PHSOSViewController *)self volumeMaxedPending];
  if (v3 == [(PHSOSViewController *)self volumeMaxedCurrently])
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = [(PHSOSViewController *)self volumeMaxedCurrently];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,handleVolumeChanges,volume level already set,maxed:%d", v5, 8u);
    }
  }

  else if ([(PHSOSViewController *)self volumeMaxedPending])
  {
    [(PHSOSViewController *)self setVolumeMaxedCurrently:1];

    [(PHSOSViewController *)self setSystemVolumeToMax];
  }

  else
  {
    [(PHSOSViewController *)self setVolumeMaxedCurrently:0];

    [(PHSOSViewController *)self restoreSystemVolumeLevel];
  }
}

- (void)setSystemVolumeToMax
{
  if ([SOSUtilities BOOLOverrideForDefaultsKey:@"debug.countdown.subtle" defaultValue:0])
  {
    v3 = 0.4;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = +[PHAudioDeviceController sharedSystemController];
  v11 = 0.0;
  if (([v4 getVolume:&v11 forCategory:@"Audio/Video"] & 1) == 0)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100255670();
    }

    v11 = -1.0;
  }

  *&v5 = v3;
  v7 = [v4 setVolumeTo:@"Audio/Video" forCategory:v5];
  v8 = sub_100004F84();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,changed volume from %f to max", buf, 0xCu);
    }

    *&v10 = v11;
    [(PHSOSViewController *)self setPriorSystemVolume:v10];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1002556A4();
    }
  }
}

- (void)restoreSystemVolumeLevel
{
  [(PHSOSViewController *)self priorSystemVolume];
  if (v3 >= 0.0)
  {
    v4 = +[PHAudioDeviceController sharedSystemController];
    [(PHSOSViewController *)self priorSystemVolume];
    v5 = [v4 setVolumeTo:@"Audio/Video" forCategory:?];
    v6 = sub_100004F84();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        [(PHSOSViewController *)self priorSystemVolume];
        v10 = 134217984;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,set volume back to %f", &v10, 0xCu);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1002556D8(self);
    }

    LODWORD(v9) = -1.0;
    [(PHSOSViewController *)self setPriorSystemVolume:v9];
  }
}

- (id)getSOSDialCountdownViewModel
{
  v3 = [(PHSOSViewController *)self sosTrigger];
  if (v3 >= 3)
  {
    if (v3 == 7)
    {
      v5 = PHSOSKappaDialCountdownViewModel;
      goto LABEL_12;
    }

    if (v3 == 3)
    {
      v4 = sub_100004F84();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100255760();
      }
    }

    else
    {
      v6 = sub_100004F84();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100255794(self);
      }
    }
  }

  v5 = PHSOSDialCountdownViewModel;
LABEL_12:
  v7 = objc_alloc_init(v5);

  return v7;
}

- (void)showSOSDialCountdown
{
  v3 = [(PHSOSViewController *)self cancelButton];
  [v3 setHidden:0];

  v4 = [(PHSOSViewController *)self countdownView];
  [(PHSOSViewController *)self transitionToView:v4 animated:0];

  [(PHSOSViewController *)self setUpCountdownViewConstraints];
  v5 = [(PHSOSViewController *)self cancelButton];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"STOP" value:&stru_100361FD0 table:@"InCallService"];
  [v5 setTitle:v7 forState:0];

  [(PHSOSViewController *)self willStartSendingLocationUpdate];
  v8 = [(PHSOSViewController *)self getSOSDialCountdownViewModel];
  objc_initWeak(&location, self);
  v9 = [(PHSOSViewController *)self countdownView];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008E82C;
  v10[3] = &unk_100358118;
  objc_copyWeak(&v11, &location);
  [v9 start:v8 showSlider:1 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)showSOSDialSliding
{
  v3 = [(PHSOSViewController *)self cancelButton];
  [v3 setHidden:0];

  v4 = [(PHSOSViewController *)self slidingView];
  [(PHSOSViewController *)self transitionToView:v4 animated:0];

  [(PHSOSViewController *)self setUpSlidingViewConstraints];
  v5 = [(PHSOSViewController *)self cancelButton];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];
  [v5 setTitle:v7 forState:0];

  [(PHSOSViewController *)self setCallDialStartTime:-1.0];
  [(PHSOSViewController *)self setTimeTillActive:-1.0];
  [(PHSOSViewController *)self setCallAutoDialled:0];
  [(PHSOSViewController *)self setClawSwipeAfterRTCTimeout:0];
  [(PHSOSViewController *)self setWasCallCancelled:1];
  v8 = +[SOSManager sharedInstance];
  v9 = [v8 currentSOSButtonPressState];
  [(PHSOSViewController *)self setCurrentButtonPressState:v9];

  objc_initWeak(location, self);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10008ED7C;
  v30[3] = &unk_100358118;
  objc_copyWeak(&v31, location);
  v10 = objc_retainBlock(v30);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10008EF18;
  v28[3] = &unk_100356F60;
  objc_copyWeak(&v29, location);
  v11 = objc_retainBlock(v28);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10008EF78;
  v26[3] = &unk_100356E98;
  objc_copyWeak(&v27, location);
  v12 = objc_retainBlock(v26);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10008EFD0;
  v24[3] = &unk_100356F60;
  objc_copyWeak(&v25, location);
  v13 = objc_retainBlock(v24);
  v14 = [(PHSOSViewController *)self slidingView];
  [v14 setAnimatedSlidingButtonCompletionBlock:v10];

  v15 = [(PHSOSViewController *)self slidingView];
  [v15 setShouldMaxVolumeCompletionBlock:v12];

  v16 = [(PHSOSViewController *)self slidingView];
  [v16 setPowerDownCompletionBlock:v13];

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10008F01C;
  v21 = &unk_100358160;
  objc_copyWeak(&v23, location);
  v17 = v11;
  v22 = v17;
  [(PHSOSViewController *)self fetchMedicalIDWithCompletion:&v18];
  [(PHSOSViewController *)self startStatusHeartbeatTimer:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&v31);
  objc_destroyWeak(location);
}

- (void)showSOSDialCanceled
{
  v3 = [(PHSOSViewController *)self cancelButton];
  [v3 setHidden:1];

  v4 = [(PHSOSViewController *)self infoLabel];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"EMERGENCY_CALL_CANCELED" value:&stru_100361FD0 table:@"InCallService"];
  [v4 setText:v6];

  v7 = [(PHSOSViewController *)self infoLabel];
  [(PHSOSViewController *)self transitionToView:v7 animated:1];

  [(PHSOSViewController *)self setUpInfoLabelConstraints];
  objc_initWeak(&location, self);
  v8 = dispatch_time(0, 2500000000);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008F28C;
  v9[3] = &unk_100356F60;
  objc_copyWeak(&v10, &location);
  dispatch_after(v8, &_dispatch_main_q, v9);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)showSOSNotified
{
  v3 = [(PHSOSViewController *)self cancelButton];
  [v3 setHidden:1];

  v4 = [(PHSOSViewController *)self cancelButton];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CLOSE" value:&stru_100361FD0 table:@"InCallService"];
  [v4 setTitle:v6 forState:0];

  v7 = [(PHSOSViewController *)self infoLabel];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"SOS_NOTIFIED" value:&stru_100361FD0 table:@"InCallService"];
  [v7 setText:v9];

  v10 = [(PHSOSViewController *)self infoLabel];
  [(PHSOSViewController *)self transitionToView:v10 animated:1];

  [(PHSOSViewController *)self setUpInfoLabelConstraints];
  objc_initWeak(&location, self);
  v11 = dispatch_time(0, 2000000000);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008F4A4;
  v12[3] = &unk_100356F60;
  objc_copyWeak(&v13, &location);
  dispatch_after(v11, &_dispatch_main_q, v12);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)showSOSNotificationCanceled
{
  v3 = [(PHSOSViewController *)self cancelButton];
  [v3 setHidden:1];

  v4 = [(PHSOSViewController *)self infoLabel];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SOS_NOTIFICATION_CANCELED" value:&stru_100361FD0 table:@"InCallService"];
  [v4 setText:v6];

  v7 = [(PHSOSViewController *)self infoLabel];
  [(PHSOSViewController *)self transitionToView:v7 animated:1];

  [(PHSOSViewController *)self setUpInfoLabelConstraints];
  objc_initWeak(&location, self);
  v8 = dispatch_time(0, 2000000000);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008F64C;
  v9[3] = &unk_100356F60;
  objc_copyWeak(&v10, &location);
  dispatch_after(v8, &_dispatch_main_q, v9);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)showSOSNotificationCountdown
{
  v3 = [(PHSOSViewController *)self cancelButton];
  [v3 setHidden:0];

  v4 = [(PHSOSViewController *)self cancelButton];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"STOP" value:&stru_100361FD0 table:@"InCallService"];
  [v4 setTitle:v6 forState:0];

  v7 = [(PHSOSViewController *)self countdownView];
  [(PHSOSViewController *)self transitionToView:v7 animated:0];

  [(PHSOSViewController *)self setUpCountdownViewConstraints];
  if ((+[TUCallCapabilities isEmergencyCallbackModeEnabled]& 1) != 0)
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not starting notification countdown due to ECBM mode being shown.", v9, 2u);
    }
  }

  else
  {

    [(PHSOSViewController *)self startSOSNotificationCountdown];
  }
}

- (void)startSOSNotificationCountdown
{
  v3 = [(PHSOSViewController *)self sosTrigger];
  v4 = off_100353220;
  if (v3 != 7)
  {
    v4 = off_100353240;
  }

  v5 = objc_alloc_init(*v4);
  objc_initWeak(&location, self);
  v6 = [(PHSOSViewController *)self countdownView];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008F8F4;
  v7[3] = &unk_100358118;
  objc_copyWeak(&v8, &location);
  [v6 start:v5 showSlider:0 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)showRestingView
{
  [(PHSOSViewController *)self setAlreadyVisitedRestingScreen:1];
  v3 = [(PHSOSViewController *)self cancelButton];
  [v3 setHidden:0];

  v4 = [(PHSOSViewController *)self cancelButton];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CLOSE" value:&stru_100361FD0 table:@"InCallService"];
  [v4 setTitle:v6 forState:0];

  v7 = [(PHSOSViewController *)self restingView];
  [(PHSOSViewController *)self transitionToView:v7 animated:0];

  [(PHSOSViewController *)self setUpRestingViewConstraints];
  v8 = +[SOSUtilities mostRecentSOSStatus];
  v9 = v8;
  if (v8 && ([v8 timeOfDetection], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [v9 timeOfDetection];
  }

  else
  {
    v12 = [(PHSOSViewController *)self dateOfCall];

    if (!v12)
    {
      goto LABEL_7;
    }

    v11 = [(PHSOSViewController *)self dateOfCall];
  }

  v13 = v11;
  v14 = [(PHSOSViewController *)self restingView];
  [v14 setDateOfSOSEvent:v13];

LABEL_7:
  v15 = [(PHSOSViewController *)self sosTrigger];
  v16 = off_100353228;
  if (v15 != 7)
  {
    v16 = off_100353238;
  }

  v17 = objc_alloc_init(*v16);
  v18 = [(PHSOSViewController *)self restingView];
  [v18 setViewModel:v17];

  objc_initWeak(&location, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10008FC50;
  v23[3] = &unk_100358118;
  objc_copyWeak(&v24, &location);
  v19 = [(PHSOSViewController *)self restingView];
  [v19 setCompletionHandler:v23];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10008FD20;
  v21[3] = &unk_100358188;
  objc_copyWeak(&v22, &location);
  [(PHSOSViewController *)self fetchMedicalIDWithCompletion:v21];
  v20 = [(PHSOSViewController *)self launchedForAssertionReason];

  if (v20 == @"PHSOSCallAssertionReason")
  {
    [(PHSOSViewController *)self startStatusHeartbeatTimer];
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)startStatusHeartbeatTimer
{
  [(PHSOSViewController *)self clearStatusHeartbeatTimer];
  if (([(PHSOSViewController *)self sosMode]== 2 || [(PHSOSViewController *)self sosMode]== 9) && ([(PHSOSViewController *)self launchedForAssertionReason], v3 = objc_claimAutoreleasedReturnValue(), v3, v3 == @"PHSOSCallAssertionReason"))
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,starting status heartbeat timer", buf, 2u);
    }

    objc_initWeak(buf, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008FF68;
    v7[3] = &unk_100356CE8;
    objc_copyWeak(&v8, buf);
    v6 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v7 block:30.0];
    [(PHSOSViewController *)self setStatusHeartbeatTimer:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }

  else
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,not starting status heartbeat timer", buf, 2u);
    }
  }
}

- (void)clearStatusHeartbeatTimer
{
  v3 = [(PHSOSViewController *)self statusHeartbeatTimer];

  if (v3)
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,clearing status heartbeat timer", v6, 2u);
    }

    v5 = [(PHSOSViewController *)self statusHeartbeatTimer];
    [v5 invalidate];

    [(PHSOSViewController *)self setStatusHeartbeatTimer:0];
  }
}

- (void)showAlertRestingView
{
  v3 = [(PHSOSViewController *)self cancelButton];
  [v3 setHidden:0];

  v4 = [(PHSOSViewController *)self cancelButton];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CLOSE" value:&stru_100361FD0 table:@"InCallService"];
  [v4 setTitle:v6 forState:0];

  v7 = [(PHSOSViewController *)self alertRestingView];
  [(PHSOSViewController *)self transitionToView:v7 animated:0];

  [(PHSOSViewController *)self setUpAlertRestingViewConstraints];
  v8 = [(PHSOSViewController *)self sosTrigger];
  v9 = off_100353218;
  if (v8 != 7)
  {
    v9 = off_100353230;
  }

  v10 = objc_alloc_init(*v9);
  v11 = [(PHSOSViewController *)self alertRestingView];
  [v11 setViewModel:v10];

  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100090350;
  v15[3] = &unk_100358118;
  objc_copyWeak(&v16, &location);
  v12 = [(PHSOSViewController *)self alertRestingView];
  [v12 setCompletionHandler:v15];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100090490;
  v13[3] = &unk_100358188;
  objc_copyWeak(&v14, &location);
  [(PHSOSViewController *)self fetchMedicalIDWithCompletion:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

+ (BOOL)shouldShowMedicalID:(id)a3
{
  v3 = a3;
  v4 = CUTWeakLinkClass();
  v5 = [v3 hasAnyData];

  if (v5)
  {
    v6 = [v4 sharedInstance];
    v7 = [v6 lostModeIsActive] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)fetchMedicalIDWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PHSOSViewController *)self healthStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100090640;
  v7[3] = &unk_1003581D8;
  v8 = v4;
  v6 = v4;
  [v5 fetchMedicalIDDataWithCompletion:v7];
}

- (void)loadMedicalIDWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to load medical ID data...", buf, 2u);
  }

  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100090838;
  v7[3] = &unk_100358200;
  objc_copyWeak(&v9, buf);
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [(PHSOSViewController *)self fetchMedicalIDWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)dismissMedicalIDViewController
{
  v3 = [(PHSOSViewController *)self medicalIDNavigationController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100090AA0;
  v4[3] = &unk_100356988;
  v4[4] = self;
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

- (void)hideMedicalIDWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(UINavigationController *)self->_medicalIDNavigationController presentingViewController];

  if (v4)
  {
    [(UINavigationController *)self->_medicalIDNavigationController dismissViewControllerAnimated:1 completion:v5];
  }
}

- (void)presentMedicalID
{
  if (+[TUCallCapabilities isEmergencyCallbackModeEnabled])
  {
    v3 = sub_100004F84();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not presenting medical ID because going to present ECBM dialer", buf, 2u);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100090C7C;
    v6[3] = &unk_100356F60;
    objc_copyWeak(&v7, buf);
    v4 = objc_retainBlock(v6);
    v5 = [(PHSOSViewController *)self medicalIDNavigationController];

    if (v5)
    {
      (v4[2])(v4);
    }

    else
    {
      [(PHSOSViewController *)self loadMedicalIDWithCompletion:v4];
    }

    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

- (void)transitionToView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    [v6 setAlpha:0.0];
    v8 = [(PHSOSViewController *)self view];
    [v8 addSubview:v7];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100090FA4;
    v13[3] = &unk_100357110;
    v13[4] = self;
    v14 = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000910F4;
    v11[3] = &unk_100356D10;
    v11[4] = self;
    v12 = v14;
    [UIView animateKeyframesWithDuration:4 delay:v13 options:v11 animations:0.600000024 completion:0.0];
  }

  else
  {
    v9 = [(PHSOSViewController *)self currentView];
    [v9 removeFromSuperview];

    v10 = [(PHSOSViewController *)self view];
    [v10 addSubview:v7];

    [(PHSOSViewController *)self setCurrentView:v7];
  }
}

- (void)buttonPressed:(id)a3
{
  v4 = [(PHSOSViewController *)self sosMode];
  if (v4 > 5)
  {
    if (v4 > 8)
    {
      if (v4 == 9)
      {
        v15 = [(PHSOSViewController *)self coreAnalyticsReporter];
        v16 = [(PHSOSViewController *)self sosTrigger];
        v17 = [(PHSOSViewController *)self restingView];
        [v15 reportSOSRestingResponse:v16 restingResponse:2 hasMedicalID:{objc_msgSend(v17, "hasMedicalIDSlider")}];
      }

      else if (v4 != 10)
      {
        return;
      }

      goto LABEL_44;
    }

    if ((v4 - 6) < 2)
    {
      goto LABEL_44;
    }

    if (v4 != 8)
    {
      return;
    }

LABEL_18:
    [(PHSOSViewController *)self setIsUserResponsive:1];
LABEL_24:
    +[NSDate timeIntervalSinceReferenceDate];
    [(PHSOSViewController *)self setCountdownPausedTime:?];
    if ([(PHSOSViewController *)self sosMode]== 8)
    {
      [(PHSOSViewController *)self checkInView];
    }

    else
    {
      [(PHSOSViewController *)self countdownView];
    }
    v14 = ;
    [v14 pause];

    [(PHSOSViewController *)self showConfirmationAlert];
    return;
  }

  if (v4 <= 2)
  {
    if (!v4)
    {
      goto LABEL_44;
    }

    if (v4 != 1)
    {
      if (v4 != 2)
      {
        return;
      }

      [(PHSOSViewController *)self setWasCallCancelled:1];
      [(PHSOSViewController *)self interactiveStartTime];
      v6 = v5;
      v7 = -1.0;
      if (v6 > 0.0)
      {
        +[NSDate timeIntervalSinceReferenceDate];
        v9 = v8;
        [(PHSOSViewController *)self interactiveStartTime];
        v7 = v9 - v10;
      }

      [(PHSOSViewController *)self setTimeTillCancelCall:v7];
      v11 = [(PHSOSViewController *)self slidingView];
      v12 = [v11 slidingViewState];

      if (v12 <= 2)
      {
        if (v12)
        {
          if (v12 != 1)
          {
            if (v12 == 2)
            {
              [(PHSOSViewController *)self setSlidingViewExitReason:8];
              [(PHSOSViewController *)self submitSOSUserActivityMetric];
              [(PHSOSViewController *)self setVolumeMaxedPending:0];
              [(PHSOSViewController *)self handleVolumeChanges];
              [(PHSOSViewController *)self setClawResolution:1];
              [(PHSOSViewController *)self raiseAccidentalSOSNotification];
              v13 = [(PHSOSViewController *)self slidingView];
              [v13 clearReleaseToCallState];

              [(PHSOSViewController *)self setSosMode:3];
            }

            return;
          }
        }

        else
        {
          [(PHSOSViewController *)self setSlidingViewExitReason:6];
          [(PHSOSViewController *)self submitSOSUserActivityMetric];
        }

        v18 = [(PHSOSViewController *)self slidingView];
        v19 = [v18 slidingViewState];

        if (v19 == 1)
        {
          [(PHSOSViewController *)self setSlidingViewExitReason:7];
        }

        goto LABEL_41;
      }

      if ((v12 - 4) >= 2)
      {
        if (v12 != 3)
        {
          return;
        }

LABEL_41:
        v20 = [(PHSOSViewController *)self slidingView];
        v21 = [v20 slidingViewState];

        if (v21 == 3)
        {
          [(PHSOSViewController *)self setSlidingViewExitReason:6];
          [(PHSOSViewController *)self submitSOSUserActivityMetric];
        }

        [(PHSOSViewController *)self setClawResolution:2];
        [(PHSOSViewController *)self interactiveStop:0];
        goto LABEL_44;
      }

      [(PHSOSViewController *)self setClawResolution:2];
LABEL_44:

      [(PHSOSViewController *)self deactivateSOS];
      return;
    }

    goto LABEL_18;
  }

  if (v4 == 3)
  {
    goto LABEL_44;
  }

  if (v4 == 4)
  {
    goto LABEL_24;
  }

  [(PHSOSViewController *)self setPostContactNotificationMode];
}

- (void)showConfirmationAlert
{
  if ([(PHSOSViewController *)self sosMode]== 1)
  {
    v3 = @"STOP_CALLING";
  }

  else
  {
    v3 = @"STOP_CALLING";
    if ([(PHSOSViewController *)self sosMode]!= 8 && [(PHSOSViewController *)self sosMode]!= 2)
    {
      v3 = @"STOP_NOTIFYING_EMERGENCY_CONTACTS";
    }
  }

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:v3 value:&stru_100361FD0 table:@"InCallService"];

  v6 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000917AC;
  v18[3] = &unk_100358228;
  v18[4] = self;
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:v18];
  [v6 addAction:v9];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100091864;
  v17[3] = &unk_100358228;
  v17[4] = self;
  v10 = [UIAlertAction actionWithTitle:v5 style:2 handler:v17];
  [v6 addAction:v10];

  [(PHSOSViewController *)self presentViewController:v6 animated:1 completion:0];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100091B00;
  v13[3] = &unk_100358250;
  v11 = v6;
  v14 = v11;
  objc_copyWeak(&v15, &location);
  v12 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v13 block:5.0];
  [(PHSOSViewController *)self setConfirmationTimeoutTimer:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)deactivateSOSWithSOSDismissalType:(int64_t)a3
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,Releasing SOS Dismissal Assertion", buf, 2u);
  }

  [(PHSOSViewController *)self clearStatusHeartbeatTimer];
  [(PHSOSViewController *)self setVolumeMaxedPending:0];
  [(PHSOSViewController *)self handleVolumeChanges];
  +[PHSOSViewController releaseAllCallBufferDismissalAssertions];
  if ([(PHSOSViewController *)self shouldDropBioAuthTokenOnDismiss])
  {
    v6 = +[SOSManager sharedInstance];
    [v6 didDismissSOSBeforeSOSCall:a3];

    v7 = 6;
  }

  else
  {
    v7 = 10;
  }

  v8 = [(PHSOSViewController *)self launchedForAssertionReason];

  if (v8 == @"PHSOSCallAssertionReason")
  {
    v9 = +[SOSStatusReporter sharedInstance];
    [v9 updateSOSFlowState:v7];
  }

  v10 = [(PHSOSViewController *)self launchedForAssertionReason];
  [PHInCallRootViewController releaseDismissalAssertionForReason:v10];

  if (!+[PHSOSViewController isSOSDismissalAssertionActive])
  {
    v11 = sub_100004F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,setting SOSInitiationState to Idle", v19, 2u);
    }

    v12 = +[SOSManager sharedInstance];
    [v12 setCurrentSOSInitiationState:0];

    v13 = +[UIApplication sharedApplication];
    v14 = [v13 delegate];
    [v14 setActivationContext:0];
  }

  if (!+[PHSOSViewController isSOSDismissalAssertionActive]&& self->_priorSystemAudioRoute)
  {
    v15 = sub_100004F84();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,restoring audio route", v18, 2u);
    }

    audioDeviceController = self->_audioDeviceController;
    v17 = [(TUAudioRoute *)self->_priorSystemAudioRoute uniqueIdentifier];
    [(PHAudioDeviceController *)audioDeviceController pickRouteWithUID:v17];
  }
}

- (void)emergencyCallbackModeChangedNotification:(id)a3
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100091F84;
  v3[3] = &unk_100356F60;
  objc_copyWeak(&v4, &location);
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)raiseAccidentalSOSNotification
{
  v3 = [(PHSOSViewController *)self launchedForAssertionReason];

  if (v3 == @"PHSOSCallAssertionReason" && ([(PHSOSViewController *)self sosTrigger]== 1 || [(PHSOSViewController *)self sosTrigger]== 2 || [(PHSOSViewController *)self sosTrigger]== 3))
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Raising possible accidental SOS notification", buf, 2u);
    }

    v5 = objc_alloc_init(UNMutableNotificationContent);
    v6 = +[SOSUtilities accidentalCallNotificationTitle];
    [v5 setTitle:v6];

    v7 = +[SOSUtilities accidentalCallNotificationBody];
    [v5 setBody:v7];

    v8 = SOSSettingsURLBaseString;
    v9 = [SOSSettingsURLSourceKey UTF8String];
    v10 = [v8 stringByAppendingFormat:@"&%s=%s", v9, objc_msgSend(SOSSettingsURLSourceAccCallNotification, "UTF8String")];
    v11 = [NSURL URLWithString:v10];
    [v5 setDefaultActionURL:v11];

    [v5 setCategoryIdentifier:@"com.apple.SOSNotification"];
    v12 = [UNNotificationRequest requestWithIdentifier:@"com.apple.SOSNotificationId" content:v5 trigger:0 destinations:6];
    v13 = sub_100004F84();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Created SOS notification request:%@", buf, 0xCu);
    }

    v14 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.Preferences"];
    v15 = +[NSArray array];
    v16 = +[NSArray array];
    v17 = [UNNotificationCategory categoryWithIdentifier:@"com.apple.SOSNotification" actions:v15 intentIdentifiers:v16 options:0x20000];

    v18 = [NSSet setWithObject:v17];
    [v14 setNotificationCategories:v18];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000923AC;
    v19[3] = &unk_100358278;
    v19[4] = self;
    [v14 addNotificationRequest:v12 withCompletionHandler:v19];
  }
}

- (void)handleCallBufferCompletionNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,handleCallBufferCompletionNotification,entered", buf, 2u);
  }

  [(PHSOSViewController *)self setVolumeMaxedPending:0];
  [(PHSOSViewController *)self handleVolumeChanges];
  v6 = [v4 userInfo];

  if (v6)
  {
    [(PHSOSViewController *)self setSlidingViewEntryReason:5];
    v7 = [v6 objectForKeyedSubscript:@"PHCallBufferCompletionReasonKey"];
    v8 = [v7 integerValue];

    if (v8 == 1)
    {
      v11 = sub_100004F84();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,handleInCallCallBufferNotification,PHCallBufferCompletionReasonCancelled", v18, 2u);
      }

      [(PHSOSViewController *)self interactiveStartTime];
      v13 = v12;
      v14 = -1.0;
      if (v13 > 0.0)
      {
        +[NSDate timeIntervalSinceReferenceDate];
        v16 = v15;
        [(PHSOSViewController *)self interactiveStartTime];
        v14 = v16 - v17;
      }

      [(PHSOSViewController *)self setTimeTillCancelCall:v14];
      [(PHSOSViewController *)self setWasCallCancelled:1];
      [(PHSOSViewController *)self setClawResolution:6];
      [(PHSOSViewController *)self setSosMode:3];
      [(PHSOSViewController *)self raiseAccidentalSOSNotification];
      [(PHSOSViewController *)self setSlidingViewExitReason:9];
      [(PHSOSViewController *)self submitSOSUserActivityMetric];
    }

    else if (!v8)
    {
      v9 = sub_100004F84();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,handleInCallCallBufferNotification,PHCallBufferCompletionReasonTimeout", v19, 2u);
      }

      [(PHSOSViewController *)self clearStatusHeartbeatTimer];
      [(PHSOSViewController *)self willStartSendingLocationUpdate];
      [(PHSOSViewController *)self dialEmergencyCall];
    }
  }

  else
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,handleInCallCallBufferNotification,nil userInfo,Early return", v20, 2u);
    }
  }
}

- (void)handleAnimationSlidingCompletionResponse
{
  +[SOSUtilities clawReleaseToCallSupport];
  if (v3 == 0.0)
  {
LABEL_2:
    [(PHSOSViewController *)self clearStatusHeartbeatTimer];
    [(PHSOSViewController *)self willStartSendingLocationUpdate];

    [(PHSOSViewController *)self dialEmergencyCall];
    return;
  }

  v4 = [(PHSOSViewController *)self sosHandles];

  if (v4)
  {
    v5 = [(PHSOSViewController *)self sosHandles];
    v6 = [v5 count];

    if (v6 > 1)
    {
      [(PHSOSViewController *)self setVolumeMaxedPending:0];
      [(PHSOSViewController *)self handleVolumeChanges];
      goto LABEL_2;
    }

    [(PHSOSViewController *)self setVolumeMaxedPending:1];
    [(PHSOSViewController *)self handleVolumeChanges];
    v7 = [(PHSOSViewController *)self callAutoDialled];
    v8 = off_100359450;
    if (!v7)
    {
      v8 = off_100359458;
    }

    [PHInCallRootViewController obtainDismissalAssertionForReason:*v8];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"PHCallBufferNotification" object:0 userInfo:0];
  }

  else
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] PHSOSViewController,animatedSliderCompletion,no SOS handles.Unexpected.return", buf, 2u);
    }

    [(PHSOSViewController *)self setVolumeMaxedPending:0];
    [(PHSOSViewController *)self handleVolumeChanges];
  }
}

- (void)sosNumbersViewController:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [a4 row];

  [(PHSOSViewController *)self dialSOSNumberAtIndex:v5];
}

- (void)showPowerDownFindMyInfoAlertWithProceed:(id)a3 cancelCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"POWER_DOWN_FIND_MY_TITLE" value:&stru_100361FD0 table:@"InCallService"];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"POWER_DOWN_FIND_MY" value:&stru_100361FD0 table:@"InCallService"];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_100361FD0 table:@"InCallService"];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];

  v15 = [UIAlertController alertControllerWithTitle:v8 message:v10 preferredStyle:1];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100092B94;
  v23[3] = &unk_1003582A0;
  v24 = v5;
  v16 = v5;
  v17 = [UIAlertAction actionWithTitle:v12 style:0 handler:v23];
  [v15 addAction:v17];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100092BAC;
  v21[3] = &unk_1003582A0;
  v22 = v6;
  v18 = v6;
  v19 = [UIAlertAction actionWithTitle:v14 style:0 handler:v21];
  [v15 addAction:v19];

  [(PHSOSViewController *)self presentViewController:v15 animated:1 completion:0];
}

- (void)showPowerDownFindMyAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"POWER_DOWN_FIND_MY_TITLE" value:&stru_100361FD0 table:@"InCallService"];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"POWER_DOWN_FIND_MY_DISABLE" value:&stru_100361FD0 table:@"InCallService"];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"POWER_DOWN_FIND_MY_DISABLE_BUTTON" value:&stru_100361FD0 table:@"InCallService"];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_100361FD0 table:@"InCallService"];

  v11 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100092E10;
  v15[3] = &unk_100358228;
  v15[4] = self;
  v12 = [UIAlertAction actionWithTitle:v10 style:0 handler:v15];
  [v11 addAction:v12];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100092E18;
  v14[3] = &unk_100358228;
  v14[4] = self;
  v13 = [UIAlertAction actionWithTitle:v8 style:0 handler:v14];
  [v11 addAction:v13];

  [(PHSOSViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)userAcknowledgedFindMyInfo
{
  v3 = [(PHSOSViewController *)self beaconManager];
  [v3 setUserHasAcknowledgedFindMy:1 completion:&stru_1003582C0];

  v4 = [(PHSOSViewController *)self slidingView];
  [v4 didAcknowledgeFindMyInfo];
}

- (void)didTapTemporarilyDisableFindMy
{
  [(PHSOSViewController *)self userAcknowledgedFindMyInfo];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100092FF8;
  v10[3] = &unk_1003569B0;
  v10[4] = self;
  v3 = objc_retainBlock(v10);
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Requesting passcode for FindMy temp disable", v9, 2u);
  }

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"POWER_DOWN_FIND_MY_DISABLE_PASSCODE_TITLE" value:&stru_100361FD0 table:@"InCallService"];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"POWER_DOWN_FIND_MY_DISABLE_PASSCODE_SUBTITLE" value:&stru_100361FD0 table:@"InCallService"];

  SBSRequestPasscodeCheckUI();
}

- (BOOL)allowsMenuButtonDismissal
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 callPassingTest:&stru_1003582E0];
  v4 = v3 != 0;

  return v4;
}

- (void)stateChanged:(id)a3
{
  v4 = a3;
  v5 = [(PHSOSViewController *)self launchedForAssertionReason];

  v6 = sub_100004F84();
  v7 = v6;
  if (v5 == @"PHAlertRestingScreenAssertionReason")
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,Stewie state changed: %@", &v10, 0xCu);
    }

    if ([(PHSOSViewController *)self sosMode]== 10)
    {
      v8 = [(PHSOSViewController *)self stewieState];
      if ([v8 activeServices])
      {
        v9 = [v4 activeServices];

        if ((v9 & 1) == 0)
        {
          [(PHSOSViewController *)self setSosMode:9];
        }
      }

      else
      {
      }
    }

    [(PHSOSViewController *)self setStewieState:v4];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1002558F4();
    }
  }
}

- (void)setUpCancelButtonConstraints
{
  v3 = [(PHSOSViewController *)self cancelButton];
  v4 = [v3 centerXAnchor];
  v5 = [(PHSOSViewController *)self view];
  v6 = [v5 centerXAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];

  v8 = [(PHSOSViewController *)self cancelButton];
  v9 = [v8 bottomAnchor];
  v10 = [(PHSOSViewController *)self view];
  v11 = [v10 bottomAnchor];
  v12 = [(PHSOSViewController *)self view];
  [PHCallViewController _bottomBarBottomMarginForView:v12];
  v14 = [v9 constraintEqualToAnchor:v11 constant:-v13];

  v16[0] = v7;
  v16[1] = v14;
  v15 = [NSArray arrayWithObjects:v16 count:2];
  [NSLayoutConstraint activateConstraints:v15];
}

- (void)setUpCheckInViewConstraints
{
  v30 = objc_alloc_init(NSMutableArray);
  [(PHSOSViewController *)self marginPadding];
  v4 = v3;
  v5 = [(PHSOSViewController *)self checkInView];
  v6 = [v5 leadingAnchor];
  v7 = [(PHSOSViewController *)self view];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:v4];
  [v30 addObject:v9];

  v10 = [(PHSOSViewController *)self checkInView];
  v11 = [v10 trailingAnchor];
  v12 = [(PHSOSViewController *)self view];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:-v4];
  [v30 addObject:v14];

  v15 = [(PHSOSViewController *)self checkInView];
  v16 = [v15 centerXAnchor];
  v17 = [(PHSOSViewController *)self view];
  v18 = [v17 centerXAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v30 addObject:v19];

  v20 = [(PHSOSViewController *)self checkInView];
  v21 = [v20 topAnchor];
  v22 = [(PHSOSViewController *)self view];
  v23 = [v22 topAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  [v30 addObject:v24];

  v25 = [(PHSOSViewController *)self checkInView];
  v26 = [v25 bottomAnchor];
  v27 = [(PHSOSViewController *)self cancelButton];
  v28 = [v27 topAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  [v30 addObject:v29];

  [NSLayoutConstraint activateConstraints:v30];
}

- (void)setUpRestingViewConstraints
{
  v30 = objc_alloc_init(NSMutableArray);
  [(PHSOSViewController *)self marginPadding];
  v4 = v3;
  v5 = [(PHSOSViewController *)self restingView];
  v6 = [v5 leadingAnchor];
  v7 = [(PHSOSViewController *)self view];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:v4];
  [v30 addObject:v9];

  v10 = [(PHSOSViewController *)self restingView];
  v11 = [v10 trailingAnchor];
  v12 = [(PHSOSViewController *)self view];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:-v4];
  [v30 addObject:v14];

  v15 = [(PHSOSViewController *)self restingView];
  v16 = [v15 centerXAnchor];
  v17 = [(PHSOSViewController *)self view];
  v18 = [v17 centerXAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v30 addObject:v19];

  v20 = [(PHSOSViewController *)self restingView];
  v21 = [v20 topAnchor];
  v22 = [(PHSOSViewController *)self view];
  v23 = [v22 topAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  [v30 addObject:v24];

  v25 = [(PHSOSViewController *)self restingView];
  v26 = [v25 bottomAnchor];
  v27 = [(PHSOSViewController *)self cancelButton];
  v28 = [v27 topAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  [v30 addObject:v29];

  [NSLayoutConstraint activateConstraints:v30];
}

- (void)setUpAlertRestingViewConstraints
{
  v30 = objc_alloc_init(NSMutableArray);
  [(PHSOSViewController *)self marginPadding];
  v4 = v3;
  v5 = [(PHSOSViewController *)self alertRestingView];
  v6 = [v5 leadingAnchor];
  v7 = [(PHSOSViewController *)self view];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:v4];
  [v30 addObject:v9];

  v10 = [(PHSOSViewController *)self alertRestingView];
  v11 = [v10 trailingAnchor];
  v12 = [(PHSOSViewController *)self view];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:-v4];
  [v30 addObject:v14];

  v15 = [(PHSOSViewController *)self alertRestingView];
  v16 = [v15 centerXAnchor];
  v17 = [(PHSOSViewController *)self view];
  v18 = [v17 centerXAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v30 addObject:v19];

  v20 = [(PHSOSViewController *)self alertRestingView];
  v21 = [v20 topAnchor];
  v22 = [(PHSOSViewController *)self view];
  v23 = [v22 topAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  [v30 addObject:v24];

  v25 = [(PHSOSViewController *)self alertRestingView];
  v26 = [v25 bottomAnchor];
  v27 = [(PHSOSViewController *)self cancelButton];
  v28 = [v27 topAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  [v30 addObject:v29];

  [NSLayoutConstraint activateConstraints:v30];
}

- (void)setUpCountdownViewConstraints
{
  [(PHSOSViewController *)self marginPadding];
  v4 = v3;
  v5 = [(PHSOSViewController *)self countdownView];
  v6 = [v5 leadingAnchor];
  v7 = [(PHSOSViewController *)self view];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:v4];

  v10 = [(PHSOSViewController *)self countdownView];
  v11 = [v10 trailingAnchor];
  v12 = [(PHSOSViewController *)self view];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:-v4];

  v15 = [(PHSOSViewController *)self countdownView];
  v16 = [v15 centerXAnchor];
  v17 = [(PHSOSViewController *)self view];
  v18 = [v17 centerXAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];

  v20 = [(PHSOSViewController *)self countdownView];
  v21 = [v20 topAnchor];
  v22 = [(PHSOSViewController *)self view];
  v23 = [v22 topAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];

  v25 = [(PHSOSViewController *)self countdownView];
  v26 = [v25 bottomAnchor];
  v27 = [(PHSOSViewController *)self cancelButton];
  v28 = [v27 topAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];

  v31[0] = v9;
  v31[1] = v14;
  v31[2] = v19;
  v31[3] = v24;
  v31[4] = v29;
  v30 = [NSArray arrayWithObjects:v31 count:5];
  [NSLayoutConstraint activateConstraints:v30];
}

- (void)setUpSlidingViewConstraints
{
  v3 = [(PHSOSViewController *)self slidingView];
  v4 = [v3 leadingAnchor];
  v5 = [(PHSOSViewController *)self view];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];

  v8 = [(PHSOSViewController *)self slidingView];
  v9 = [v8 trailingAnchor];
  v10 = [(PHSOSViewController *)self view];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];

  v13 = [(PHSOSViewController *)self slidingView];
  v14 = [v13 centerXAnchor];
  v15 = [(PHSOSViewController *)self view];
  v16 = [v15 centerXAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];

  v18 = [(PHSOSViewController *)self slidingView];
  v19 = [v18 topAnchor];
  v20 = [(PHSOSViewController *)self view];
  v21 = [v20 topAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];

  v23 = [(PHSOSViewController *)self slidingView];
  v24 = [v23 bottomAnchor];
  v25 = [(PHSOSViewController *)self cancelButton];
  v26 = [v25 topAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];

  v29[0] = v7;
  v29[1] = v12;
  v29[2] = v17;
  v29[3] = v22;
  v29[4] = v27;
  v28 = [NSArray arrayWithObjects:v29 count:5];
  [NSLayoutConstraint activateConstraints:v28];
}

- (void)setUpSOSNumbersListViewConstraints
{
  [(PHSOSViewController *)self marginPadding];
  v4 = v3;
  v5 = [(PHSOSViewController *)self sosNumbersViewController];
  v6 = [v5 view];
  v7 = [v6 leadingAnchor];
  v8 = [(PHSOSViewController *)self view];
  v9 = [v8 leadingAnchor];
  v36 = [v7 constraintEqualToAnchor:v9 constant:v4];

  v10 = [(PHSOSViewController *)self sosNumbersViewController];
  v11 = [v10 view];
  v12 = [v11 trailingAnchor];
  v13 = [(PHSOSViewController *)self view];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:-v4];

  v16 = [(PHSOSViewController *)self sosNumbersViewController];
  v17 = [v16 view];
  v18 = [v17 centerXAnchor];
  v19 = [(PHSOSViewController *)self view];
  v20 = [v19 centerXAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];

  v22 = [(PHSOSViewController *)self sosNumbersViewController];
  v23 = [v22 view];
  v24 = [v23 topAnchor];
  v25 = [(PHSOSViewController *)self view];
  v26 = [v25 safeAreaLayoutGuide];
  v27 = [v26 topAnchor];
  v28 = [v24 constraintEqualToAnchor:v27 constant:52.0];

  v29 = [(PHSOSViewController *)self sosNumbersViewController];
  v30 = [v29 view];
  v31 = [v30 bottomAnchor];
  v32 = [(PHSOSViewController *)self cancelButton];
  v33 = [v32 topAnchor];
  v34 = [v31 constraintEqualToAnchor:v33 constant:-28.0];

  v37[0] = v36;
  v37[1] = v15;
  v37[2] = v21;
  v37[3] = v28;
  v37[4] = v34;
  v35 = [NSArray arrayWithObjects:v37 count:5];
  [NSLayoutConstraint activateConstraints:v35];
}

- (void)setUpInfoLabelConstraints
{
  [(PHSOSViewController *)self marginPadding];
  v4 = v3;
  v5 = [(PHSOSViewController *)self infoLabel];
  v6 = [v5 leadingAnchor];
  v7 = [(PHSOSViewController *)self view];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:v4];

  v10 = [(PHSOSViewController *)self infoLabel];
  v11 = [v10 trailingAnchor];
  v12 = [(PHSOSViewController *)self view];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:-v4];

  v15 = [(PHSOSViewController *)self infoLabel];
  v16 = [v15 centerXAnchor];
  v17 = [(PHSOSViewController *)self view];
  v18 = [v17 centerXAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];

  v20 = 27.0;
  if ((+[PHUIConfiguration shouldUseSOSTightSpacing]& 1) == 0)
  {
    v21 = +[UIScreen mainScreen];
    [v21 bounds];
    v20 = v22 * 0.0599999987;
  }

  v23 = [(PHSOSViewController *)self infoLabel];
  v24 = [v23 topAnchor];
  v25 = [(PHSOSViewController *)self safeAreaLayoutGuide];
  v26 = [v25 topAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:v20];

  v29[0] = v9;
  v29[1] = v14;
  v29[2] = v19;
  v29[3] = v27;
  v28 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v28];
}

- (void)submitSOSResolutionMetric:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHSOSViewController *)self launchedForAssertionReason];

  if (v5 != @"PHSOSCallAssertionReason")
  {
    return;
  }

  v6 = [(PHSOSViewController *)self sosTrigger];
  if (v6 > 4)
  {
    v8 = 1;
    if (v6 == 5 || v6 == 7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((v6 - 1) < 2)
    {
      v7 = +[SOSUtilities isCallWithSideButtonPressesEnabled];
LABEL_10:
      v8 = v7;
      goto LABEL_14;
    }

    if (v6 == 3)
    {
      v7 = +[SOSUtilities isCallWithVolumeLockHoldEnabled];
      goto LABEL_10;
    }
  }

  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100255928(self);
  }

  v8 = 0;
LABEL_14:
  v10 = [(PHSOSViewController *)self sosTrigger];
  if ([SOSCoreAnalyticsReporter isSensitiveTrigger:v10])
  {
    v11 = +[MCProfileConnection sharedConnection];
    v12 = [v11 isSafetyDataSubmissionAllowed];

    if ((v12 & 1) == 0)
    {
      v10 = 9;
    }
  }

  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = [NSNumber numberWithInteger:v10];
  [v13 setValue:v14 forKey:@"trigger"];

  v15 = [NSNumber numberWithBool:[(PHSOSViewController *)self wasCallCancelled]];
  [v13 setValue:v15 forKey:@"callCancelled"];

  [(PHSOSViewController *)self timeTillCancelCall];
  LODWORD(v17) = vcvtpd_s64_f64(v16);
  v18 = [NSNumber numberWithInt:v17];
  [v13 setValue:v18 forKey:@"timeTillCancel"];

  v19 = [NSNumber numberWithBool:v3];
  [v13 setValue:v19 forKey:@"notificationPosted"];

  v20 = [NSNumber numberWithBool:v8];
  [v13 setValue:v20 forKey:@"autoCallEnabled"];

  v21 = [NSNumber numberWithInt:[(PHSOSViewController *)self callDisconnectReason]];
  [v13 setValue:v21 forKey:@"callDisconnectReason"];

  [(PHSOSViewController *)self timeTillActive];
  LODWORD(v23) = vcvtpd_s64_f64(v22);
  v24 = [NSNumber numberWithInt:v23];
  [v13 setValue:v24 forKey:@"timeTillActive"];

  v25 = [NSNumber numberWithBool:[(PHSOSViewController *)self callAutoDialled]];
  [v13 setValue:v25 forKey:@"callAutoDialled"];

  v26 = [(PHSOSViewController *)self currentButtonPressState];

  if (v26)
  {
    v27 = [(PHSOSViewController *)self currentButtonPressState];
    [v27 getButtonPressGap];
    v29 = v28;

    LODWORD(v30) = vcvtpd_s64_f64(v29);
    v31 = [NSNumber numberWithInt:v30];
    [v13 setValue:v31 forKey:@"clawButtonPressGap"];

    v32 = [NSNumber numberWithDouble:ceil(v29 * 10.0) / 10.0];
    [v13 setValue:v32 forKey:@"clawButtonPressGapFloat"];
  }

  if ([(PHSOSViewController *)self sosTrigger]!= 3 && ((+[SOSUtilities isCallWithSideButtonPressesEnabled]& 1) != 0 || [(PHSOSViewController *)self sosTrigger]!= 2 && [(PHSOSViewController *)self sosTrigger]!= 1))
  {
    goto LABEL_26;
  }

  v33 = [NSNumber numberWithBool:[(PHSOSViewController *)self clawSwipeAfterRTCTimeout]];
  [v13 setValue:v33 forKey:@"clawSwipeAfterRTCTimeout"];

  v34 = [NSNumber numberWithUnsignedInteger:[(PHSOSViewController *)self clawResolution]];
  [v13 setValue:v34 forKey:@"clawResolution"];

  v35 = [(PHSOSViewController *)self slidingView];
  v36 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v35 wasMounted]);
  [v13 setValue:v36 forKey:@"wasMounted"];

  v37 = [(PHSOSViewController *)self slidingView];
  v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v37 wasMountedProbability]);
  [v13 setValue:v38 forKey:@"wasMountedProbability"];

  v39 = [(PHSOSViewController *)self slidingView];
  v40 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v39 numberOfEpochsForMountProbability]);
  [v13 setValue:v40 forKey:@"numberEpochs"];

  v41 = [(PHSOSViewController *)self slidingView];
  if (!v41)
  {
    goto LABEL_24;
  }

  +[SOSUtilities clawReleaseToCallSupport];
  if (v42 <= 1.0)
  {
    goto LABEL_24;
  }

  v43 = [(PHSOSViewController *)self slidingView];
  v44 = [v43 timeToReleaseClaw];

  if ((v44 & 0x8000000000000000) == 0)
  {
    v41 = [(PHSOSViewController *)self slidingView];
    v45 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v41 timeToReleaseClaw]);
    [v13 setValue:v45 forKey:@"timeToReleaseClaw"];

LABEL_24:
  }

LABEL_26:
  v84 = objc_alloc_init(ICSCallAnalyticsLogger);
  [(ICSCallAnalyticsLogger *)v84 submitCAMetric:v13 viewId:@"com.apple.sos.resolution"];
  v46 = sub_100004F84();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v82 = [v13 valueForKey:@"trigger"];
    v74 = [v82 intValue];
    v80 = [v13 valueForKey:@"callCancelled"];
    v72 = [v80 intValue];
    v78 = [v13 valueForKey:@"timeTillCancel"];
    v71 = [v78 intValue];
    v76 = [v13 valueForKey:@"notificationPosted"];
    v70 = [v76 intValue];
    v75 = [v13 valueForKey:@"autoCallEnabled"];
    v69 = [v75 intValue];
    v73 = [v13 valueForKey:@"callDisconnectReason"];
    v47 = [v73 intValue];
    v48 = [v13 valueForKey:@"timeTillActive"];
    v49 = [v48 intValue];
    v50 = [v13 valueForKey:@"callAutoDialled"];
    v51 = [v50 intValue];
    v52 = [v13 valueForKey:@"clawButtonPressGap"];
    v53 = [v52 intValue];
    v54 = [v13 valueForKey:@"clawButtonPressGapFloat"];
    [v54 doubleValue];
    *buf = 67111424;
    v86 = v74;
    v87 = 1024;
    v88 = v72;
    v89 = 1024;
    v90 = v71;
    v91 = 1024;
    v92 = v70;
    v93 = 1024;
    v94 = v69;
    v95 = 1024;
    v96 = v47;
    v97 = 1024;
    v98 = v49;
    v99 = 1024;
    v100 = v51;
    v101 = 1024;
    v102 = v53;
    v103 = 2048;
    v104 = v55;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,SOS Resolution details,trigger,%d,callCancelled,%d,timeTillCancel,%d,notificationPosted,%d,autoCallEnabled,%d,callDisconnectReason,%d,timeTillActive,%d,callAutoDialled,%d,clawButtonPressGap,%d,clawButtonPressGapFloat,%f", buf, 0x42u);
  }

  v56 = sub_100004F84();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v83 = [v13 valueForKey:@"clawResolution"];
    v79 = [v83 intValue];
    v81 = [v13 valueForKey:@"wasMounted"];
    v77 = [v81 intValue];
    v57 = [v13 valueForKey:@"wasMountedProbability"];
    v58 = [v57 intValue];
    v59 = [v13 valueForKey:@"numberEpochs"];
    v60 = [v59 intValue];
    v61 = [v13 valueForKey:@"timeToReleaseClaw"];
    v62 = [v61 intValue];
    v63 = [v13 valueForKey:@"clawSwipeAfterRTCTimeout"];
    v64 = [v63 intValue];
    *buf = 67110400;
    v86 = v79;
    v87 = 1024;
    v88 = v77;
    v89 = 1024;
    v90 = v58;
    v91 = 1024;
    v92 = v60;
    v93 = 1024;
    v94 = v62;
    v95 = 1024;
    v96 = v64;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,SOS Resolution details II,clawResolution,%d,wasMounted,%d,wasMountedProbability,%d,numberEpochs,%d,timeToReleaseClaw,%d, clawSwipeAfterRTCTimeout,%d", buf, 0x26u);
  }

  v65 = sub_100004F84();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    v66 = +[SOSUtilities isCallWithVolumeLockHoldEnabled];
    v67 = +[SOSUtilities isCallWithSideButtonPressesEnabled];
    v68 = +[SOSUtilities shouldPlayAudioDuringCountdown];
    *buf = 67109632;
    v86 = v66;
    v87 = 1024;
    v88 = v67;
    v89 = 1024;
    v90 = v68;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,SOS Settings details,isCallWithVolumeLockHoldEnabled:%d,isCallWithSideButtonPressesEnabled:%d,emergencySOSSoundEnabled:%d", buf, 0x14u);
  }
}

- (void)submitSOSUserActivityMetric
{
  v3 = [(PHSOSViewController *)self launchedForAssertionReason];

  if (v3 == @"PHSOSCallAssertionReason")
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = [(PHSOSViewController *)self sessionId];
    [v4 setValue:v5 forKey:@"sessionId"];

    Current = CFAbsoluteTimeGetCurrent();
    [(PHSOSViewController *)self sessionStartTime];
    LODWORD(v8) = vcvtpd_s64_f64(vabdd_f64(Current, v7));
    v9 = [NSNumber numberWithInt:v8];
    [v4 setValue:v9 forKey:@"timeSinceSessionStart"];

    v10 = [NSNumber numberWithUnsignedInteger:[(PHSOSViewController *)self slidingViewEntryReason]];
    [v4 setValue:v10 forKey:@"entryReason"];

    v11 = [NSNumber numberWithUnsignedInteger:[(PHSOSViewController *)self slidingViewExitReason]];
    [v4 setValue:v11 forKey:@"exitReason"];

    +[SOSUtilities clawReleaseToCallSupport];
    if (v12 == 0.0 || (+[SOSUtilities clawReleaseToCallSupport], v44 != 0.0) && [(PHSOSViewController *)self slidingViewEntryReason]== 5)
    {
      v13 = [NSNumber numberWithInt:[(PHSOSViewController *)self wasCallCancelled]^ 1];
      [v4 setValue:v13 forKey:@"callConnected"];

      if (![(PHSOSViewController *)self wasCallCancelled])
      {
        [(PHSOSViewController *)self timeTillCancelCall];
        LODWORD(v15) = vcvtpd_s64_f64(v14);
        v16 = [NSNumber numberWithInt:v15];
        [v4 setValue:v16 forKey:@"callDuration"];

        [(PHSOSViewController *)self callConnectTimeSinceSessionStart];
        LODWORD(v18) = vcvtpd_s64_f64(fabs(v17));
        v19 = [NSNumber numberWithInt:v18];
        [v4 setValue:v19 forKey:@"callConnectTimeSinceSessionStart"];
      }

      v20 = [NSNumber numberWithInt:[(PHSOSViewController *)self callDisconnectReason]];
      [v4 setValue:v20 forKey:@"callDisconnectReason"];
    }

    if ([(PHSOSViewController *)self sosTrigger]== 3 || (+[SOSUtilities isCallWithSideButtonPressesEnabled]& 1) == 0 && ([(PHSOSViewController *)self sosTrigger]== 2 || [(PHSOSViewController *)self sosTrigger]== 1))
    {
      v21 = +[SOSManager sharedInstance];
      v22 = [v21 currentSOSButtonPressState];
      [v22 getButtonPressGap];
      v24 = v23;

      v25 = [NSNumber numberWithDouble:ceil(v24 * 10.0) / 10.0];
      [v4 setValue:v25 forKey:@"clawButtonPressGapFloat"];

      +[SOSUtilities clawReleaseToCallSupport];
      if (v26 != 0.0)
      {
        v27 = [NSNumber numberWithBool:[(PHSOSViewController *)self clawSwipeAfterRTCTimeout]];
        [v4 setValue:v27 forKey:@"clawSwipeAfterRTCTimeout"];
      }

      if ([(PHSOSViewController *)self slidingViewExitReason]== 4 || [(PHSOSViewController *)self slidingViewExitReason]== 7)
      {
        [(PHSOSViewController *)self sliderProgressDuration];
        v29 = v28;
        v30 = objc_alloc_init(PHSOSDialSlidingViewModel);
        LODWORD(v31) = vcvtpd_s64_f64(v29 * [(PHSOSDialSlidingViewModel *)v30 countdown]);
        v32 = [NSNumber numberWithInt:v31];
        [v4 setValue:v32 forKey:@"sliderProgressDuration"];
      }
    }

    v33 = objc_alloc_init(ICSCallAnalyticsLogger);
    [(ICSCallAnalyticsLogger *)v33 submitCAMetric:v4 viewId:@"com.apple.sos.user_activity"];
    v34 = sub_100004F84();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v4 valueForKey:@"sessionId"];
      v56 = [v4 valueForKey:@"timeSinceSessionStart"];
      v51 = [v56 intValue];
      v55 = [v4 valueForKey:@"entryReason"];
      v49 = [v55 intValue];
      v54 = [v4 valueForKey:@"exitReason"];
      v48 = [v54 intValue];
      v53 = [v4 valueForKey:@"callConnected"];
      v47 = [v53 intValue];
      v52 = [v4 valueForKey:@"callDuration"];
      v46 = [v52 intValue];
      v50 = [v4 valueForKey:@"callConnectTimeSinceSessionStart"];
      v45 = [v50 intValue];
      v36 = [v4 valueForKey:@"callDisconnectReason"];
      v37 = [v36 intValue];
      v38 = [v4 valueForKey:@"clawButtonPressGapFloat"];
      [v38 doubleValue];
      v40 = v39;
      v41 = [v4 valueForKey:@"clawSwipeAfterRTCTimeout"];
      v42 = [v41 intValue];
      v43 = [v4 valueForKey:@"sliderProgressDuration"];
      *buf = 138414850;
      v58 = v35;
      v59 = 1024;
      v60 = v51;
      v61 = 1024;
      v62 = v49;
      v63 = 1024;
      v64 = v48;
      v65 = 1024;
      v66 = v47;
      v67 = 1024;
      v68 = v46;
      v69 = 1024;
      v70 = v45;
      v71 = 1024;
      v72 = v37;
      v73 = 2048;
      v74 = v40;
      v75 = 1024;
      v76 = v42;
      v77 = 1024;
      v78 = [v43 intValue];
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,User Activity details,sessionId,%@,timeSinceSessionStart,%d,entryReason,%d,exitReason,%d,callConnected,%d,callDuration,%d,callConnectTimeSinceSessionStart,%d,callDisconnectReason,%d,clawButtonPressGapFloat,%f,clawSwipeAfterRTCTimeout,%d,sliderProgressDuration,%d", buf, 0x4Cu);
    }
  }
}

@end