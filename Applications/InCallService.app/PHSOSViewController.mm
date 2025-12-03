@interface PHSOSViewController
+ (BOOL)isCallBufferDismissalAssertionActive;
+ (BOOL)isSOSDismissalAssertionActive;
+ (BOOL)shouldShowMedicalID:(id)d;
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
- (PHSOSViewController)initWithSOSHandles:(id)handles;
- (PHSlidingView)slidingView;
- (UILabel)infoLabel;
- (double)marginPadding;
- (id)getCheckInViewModel;
- (id)getSOSDialCountdownViewModel;
- (id)nameForSOSMode:(int64_t)mode;
- (void)addDismissalAssertionReleasedObserver;
- (void)addObservers;
- (void)buttonPressStateChangedNotification:(id)notification;
- (void)buttonPressed:(id)pressed;
- (void)callStateChangedNotification:(id)notification;
- (void)clearStatusHeartbeatTimer;
- (void)deactivateSOSWithSOSDismissalType:(int64_t)type;
- (void)dialEmergencyCall;
- (void)dialSOSNumberAtIndex:(int64_t)index;
- (void)didReceiveMemoryWarning;
- (void)didTapTemporarilyDisableFindMy;
- (void)dismissMedicalIDViewController;
- (void)dismissSOSNotification:(id)notification;
- (void)dismissalAssertionReleasedNotification:(id)notification;
- (void)emergencyCallbackModeChangedNotification:(id)notification;
- (void)fetchMedicalIDWithCompletion:(id)completion;
- (void)handleAlertDisconnectingCallsNotification:(id)notification;
- (void)handleAnimationSlidingCompletionResponse;
- (void)handleCallBufferCompletionNotification:(id)notification;
- (void)handleNetworkUnavailableAlertDidFinishNotification:(id)notification;
- (void)handleVolumeChanges;
- (void)handleVolumeHUDEnablement;
- (void)hideMedicalIDWithCompletion:(id)completion;
- (void)interactiveStart;
- (void)interactiveStateChangedNotification:(id)notification;
- (void)interactiveStop:(BOOL)stop;
- (void)loadMedicalIDWithCompletion:(id)completion;
- (void)notifyEmergencyContacts;
- (void)presentMedicalID;
- (void)raiseAccidentalSOSNotification;
- (void)removeDismissalAssertionReleasedObserver;
- (void)restoreSystemVolumeLevel;
- (void)sendFlowStateUpdateForCurrentSOSMode;
- (void)setPostCallMode;
- (void)setPostContactNotificationMode;
- (void)setSosMode:(int64_t)mode;
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
- (void)showPowerDownFindMyInfoAlertWithProceed:(id)proceed cancelCompletion:(id)completion;
- (void)showRestingView;
- (void)showSOSDialCanceled;
- (void)showSOSDialCountdown;
- (void)showSOSDialSliding;
- (void)showSOSNotificationCanceled;
- (void)showSOSNotificationCountdown;
- (void)showSOSNotified;
- (void)showSOSNumbersList;
- (void)sosNumbersViewController:(id)controller didSelectRowAtIndexPath:(id)path;
- (void)startSOSNotificationCountdown;
- (void)startStatusHeartbeatTimer;
- (void)stateChanged:(id)changed;
- (void)submitSOSResolutionMetric:(BOOL)metric;
- (void)submitSOSUserActivityMetric;
- (void)transitionToView:(id)view animated:(BOOL)animated;
- (void)updateInteractiveState;
- (void)updateSOSHandles:(id)handles;
- (void)userAcknowledgedFindMyInfo;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (PHSOSViewController)initWithSOSHandles:(id)handles
{
  handlesCopy = handles;
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

  objc_storeStrong(&v6->_sosHandles, handles);
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
  currentRoute = [(PHAudioDeviceController *)v6->_audioDeviceController currentRoute];
  priorSystemAudioRoute = v6->_priorSystemAudioRoute;
  v6->_priorSystemAudioRoute = currentRoute;

  v6->_callDialStartTime = -1.0;
  v6->_timeTillActive = -1.0;
  v6->_callAutoDialled = 0;
  v17 = +[NSUUID UUID];
  uUIDString = [v17 UUIDString];
  sessionId = v6->_sessionId;
  v6->_sessionId = uUIDString;

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
      getState = [(CTStewieStateMonitor *)v6->_stewieStateMonitor getState];
      stewieState = v6->_stewieState;
      v6->_stewieState = getState;

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

- (void)updateSOSHandles:(id)handles
{
  handlesCopy = handles;
  objc_storeStrong(&self->_sosHandles, handles);
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
  currentSOSButtonPressState = [v3 currentSOSButtonPressState];
  [currentSOSButtonPressState getButtonPressGap];
  v6 = v5 <= 3.0;

  return v6;
}

- (void)interactiveStart
{
  if ([(PHSOSViewController *)self sosMode]!= 2 || [(PHSOSViewController *)self requestedCallActive])
  {
    goto LABEL_8;
  }

  slidingView = [(PHSOSViewController *)self slidingView];
  if ([slidingView slidingViewState] == 1 || !sub_10008B280())
  {
    goto LABEL_7;
  }

  coreTelephonyClient = [(PHSOSViewController *)self coreTelephonyClient];
  if ([SOSUtilities shouldForceDisableAutoCallForClient:coreTelephonyClient])
  {

LABEL_7:
    goto LABEL_8;
  }

  clawButtonPressGapWithinThreshold = [(PHSOSViewController *)self clawButtonPressGapWithinThreshold];

  if (!clawButtonPressGapWithinThreshold)
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

  slidingView2 = [(PHSOSViewController *)self slidingView];
  v7 = objc_alloc_init(PHSOSDialSlidingViewModel);
  [slidingView2 interactiveStartWithCountdownModel:v7];

  +[NSDate timeIntervalSinceReferenceDate];

  [(PHSOSViewController *)self setInteractiveStartTime:?];
}

- (void)interactiveStop:(BOOL)stop
{
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B800;
  v7[3] = &unk_100358078;
  objc_copyWeak(&v8, &location);
  stopCopy = stop;
  v5 = objc_retainBlock(v7);
  if ([(PHSOSViewController *)self sosMode]== 2)
  {
    slidingView = [(PHSOSViewController *)self slidingView];
    [slidingView interactiveStop:v5];
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
    speakerRouteIsPicked = [(PHAudioDeviceController *)self->_audioDeviceController speakerRouteIsPicked];
    v4 = sub_100004F84();
    v5 = v4;
    if (speakerRouteIsPicked)
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

  cancelButton = [(PHSOSViewController *)self cancelButton];
  [cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];

  cancelButton2 = [(PHSOSViewController *)self cancelButton];
  [cancelButton2 addTarget:self action:"buttonPressed:" forEvents:64];

  view = [(PHSOSViewController *)self view];
  cancelButton3 = [(PHSOSViewController *)self cancelButton];
  [view addSubview:cancelButton3];

  [(PHSOSViewController *)self setUpCancelButtonConstraints];
  [(PHSOSViewController *)self setSosMode:self->_sosMode];
  v12 = +[SOSManager sharedInstance];
  [v12 setCurrentSOSInitiationState:1];

  [(PHSOSViewController *)self updateInteractiveState];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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
  [(PHSOSViewController *)&v7 viewWillDisappear:disappearCopy];
  if (!+[PHSOSViewController isCallBufferDismissalAssertionActive])
  {
    [(PHSOSViewController *)self setVolumeHUDHiddenPending:0];
    [(PHSOSViewController *)self handleVolumeHUDEnablement];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = PHSOSViewController;
  [(PHSOSViewController *)&v10 viewWillAppear:appear];
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
  delegate = [v6 delegate];
  sceneManager = [delegate sceneManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008BD14;
  v9[3] = &unk_100357AF8;
  v9[4] = self;
  [sceneManager waitForRegistrationOfSceneWithType:0 completion:v9];
}

- (void)handleVolumeHUDEnablement
{
  volumeHUDHiddenPending = [(PHSOSViewController *)self volumeHUDHiddenPending];
  volumeHUDHiddenCurrently = [(PHSOSViewController *)self volumeHUDHiddenCurrently];
  v5 = sub_100004F84();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (volumeHUDHiddenPending == volumeHUDHiddenCurrently)
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
    delegate = [v5 delegate];
    currentInCallScene = [delegate currentInCallScene];
    [currentInCallScene _setSystemVolumeHUDEnabled:{-[PHSOSViewController volumeHUDHiddenPending](self, "volumeHUDHiddenPending") ^ 1}];
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

- (void)handleNetworkUnavailableAlertDidFinishNotification:(id)notification
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notified that network unavailable alert finished, so dismissing SOS", v5, 2u);
  }

  [(PHSOSViewController *)self deactivateSOS];
}

- (void)handleAlertDisconnectingCallsNotification:(id)notification
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

- (void)callStateChangedNotification:(id)notification
{
  object = [notification object];
  if ([object isConnected] && objc_msgSend(object, "isSOSOrFakeSOS"))
  {
    [(PHSOSViewController *)self setShouldDropBioAuthTokenOnDismiss:0];
  }

  status = [object status];
  if (status <= 3)
  {
    if (status == 1)
    {
      goto LABEL_20;
    }

    if (status != 3)
    {
      goto LABEL_59;
    }

    if ([object isSOSOrFakeSOS])
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
    sosMode = [(PHSOSViewController *)self sosMode];
    if (sosMode <= 8 && ((1 << sosMode) & 0x107) != 0)
    {
      if (-[PHSOSViewController requestedCallActive](self, "requestedCallActive") && [object isSOSOrFakeSOS])
      {
        callUUID = [object callUUID];
        sosCallUUID = self->_sosCallUUID;
        self->_sosCallUUID = callUUID;
      }

      if (![(PHSOSViewController *)self requestedCallActive])
      {
        v17 = self->_sosCallUUID;
        callUUID2 = [object callUUID];
        LOBYTE(v17) = [(NSString *)v17 isEqualToString:callUUID2];

        if ((v17 & 1) == 0)
        {
          isEmergency = [object isEmergency];
          v20 = sub_100004F84();
          v21 = v20;
          if (isEmergency)
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

    if ([object status] == 1)
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

  if (status == 4)
  {
    goto LABEL_19;
  }

  if (status != 6)
  {
    goto LABEL_59;
  }

  if ([object isSOSOrFakeSOS])
  {
    [(PHSOSViewController *)self setRequestedCallActive:0];
    -[PHSOSViewController setCallDisconnectReason:](self, "setCallDisconnectReason:", [object disconnectedReason]);
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

  disconnectedReasonRequiresCallFailureUI = [object disconnectedReasonRequiresCallFailureUI];
  isSOSOrFakeSOS = [object isSOSOrFakeSOS];
  if (disconnectedReasonRequiresCallFailureUI)
  {
    if (isSOSOrFakeSOS)
    {
      [(PHSOSViewController *)self addDismissalAssertionReleasedObserver];
    }

    goto LABEL_57;
  }

  if (!isSOSOrFakeSOS)
  {
    sosMode = self->_sosMode;
    if (sosMode == 2)
    {
      if ([object isOutgoing])
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
  sosTrigger = [(PHSOSViewController *)self sosTrigger];
  if (sosTrigger >= 3)
  {
    if (sosTrigger != 3)
    {
      if (sosTrigger != 7)
      {
        v30 = sub_100004F84();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_100255504(self);
        }
      }

      [object callDuration];
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
  [object callDuration];
  [(PHSOSViewController *)self setTimeTillCancelCall:?];
  [(PHSOSViewController *)self setWasCallCancelled:0];
  if (!v31 || ([object callDuration], v32 > 12.0))
  {
LABEL_56:
    [(PHSOSViewController *)self submitSOSResolutionMetric:0];
    goto LABEL_57;
  }

  [(PHSOSViewController *)self raiseAccidentalSOSNotification];
LABEL_57:
  if ([object isSOSOrFakeSOS])
  {
    [(PHSOSViewController *)self setSlidingViewExitReason:10];
    [(PHSOSViewController *)self submitSOSUserActivityMetric];
  }

LABEL_59:
}

- (void)dismissalAssertionReleasedNotification:(id)notification
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

- (void)interactiveStateChangedNotification:(id)notification
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
  currentSOSInteractiveState = [v3 currentSOSInteractiveState];

  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218240;
    currentInteractiveState = [(PHSOSViewController *)self currentInteractiveState];
    v8 = 2048;
    v9 = currentSOSInteractiveState;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSOSViewController attempting to set currentInteractiveState from %lu to %lu", &v6, 0x16u);
  }

  if ([(PHSOSViewController *)self currentInteractiveState]!= currentSOSInteractiveState)
  {
    [(PHSOSViewController *)self setCurrentInteractiveState:currentSOSInteractiveState];
    if (currentSOSInteractiveState)
    {
      if (currentSOSInteractiveState == 1)
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

- (void)buttonPressStateChangedNotification:(id)notification
{
  v4 = +[SOSManager sharedInstance];
  currentSOSButtonPressState = [v4 currentSOSButtonPressState];
  [(PHSOSViewController *)self setCurrentButtonPressState:currentSOSButtonPressState];

  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentButtonPressState = [(PHSOSViewController *)self currentButtonPressState];
    v8 = 138543362;
    v9 = currentButtonPressState;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,currentButtonPressState:%{public}@", &v8, 0xCu);
  }
}

- (void)dismissSOSNotification:(id)notification
{
  shouldAllowLockButtonPressesToDismissSOS = [(PHSOSViewController *)self shouldAllowLockButtonPressesToDismissSOS];
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = shouldAllowLockButtonPressesToDismissSOS;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSOSViewController attempting to dismiss SOS due to lock button press; shouldAllowLockButtonPressesToDismissSOS: %d", v6, 8u);
  }

  if (shouldAllowLockButtonPressesToDismissSOS)
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
  hasValidContactsToMessage = [v3 hasValidContactsToMessage];

  if (hasValidContactsToMessage)
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

    selfCopy2 = self;
    v4 = 9;
  }

  else
  {
    selfCopy2 = self;
    v4 = 7;
  }

  [(PHSOSViewController *)selfCopy2 setSosMode:v4];
}

- (void)setSosMode:(int64_t)mode
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PHSOSViewController *)self nameForSOSMode:mode];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating SOS mode to %@", &v7, 0xCu);
  }

  self->_sosMode = mode;
  if (mode <= 4)
  {
    if (mode <= 1)
    {
      if (mode)
      {
        if (mode == 1)
        {
          [(PHSOSViewController *)self showSOSDialCountdown];
        }
      }

      else
      {
        [(PHSOSViewController *)self showSOSNumbersList];
      }
    }

    else if (mode == 2)
    {
      [(PHSOSViewController *)self showSOSDialSliding];
    }

    else if (mode == 3)
    {
      [(PHSOSViewController *)self showSOSDialCanceled];
    }

    else
    {
      [(PHSOSViewController *)self showSOSNotificationCountdown];
    }
  }

  else if (mode > 7)
  {
    switch(mode)
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

  else if (mode == 5)
  {
    [(PHSOSViewController *)self showSOSNotified];
  }

  else if (mode == 6)
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
  launchedForAssertionReason = [(PHSOSViewController *)self launchedForAssertionReason];

  if (launchedForAssertionReason != @"PHSOSCallAssertionReason")
  {
    return;
  }

  sosMode = [(PHSOSViewController *)self sosMode];
  if (sosMode <= 4)
  {
    if (sosMode <= 1)
    {
      if (!sosMode)
      {
        return;
      }

      v5 = sosMode == 1;
      v6 = 2;
      goto LABEL_23;
    }

    v7 = 13;
    v8 = 6;
    v9 = 5;
    if (sosMode != 4)
    {
      v9 = 0;
    }

    if (sosMode != 3)
    {
      v8 = v9;
    }

    v10 = sosMode == 2;
  }

  else
  {
    if (sosMode <= 7)
    {
      if ((sosMode - 5) < 2)
      {
        return;
      }

      v5 = sosMode == 7;
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
    if (sosMode != 10)
    {
      v11 = 0;
    }

    if (sosMode != 9)
    {
      v8 = v11;
    }

    v10 = sosMode == 8;
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

- (id)nameForSOSMode:(int64_t)mode
{
  if (mode > 0xA)
  {
    return &stru_100361FD0;
  }

  else
  {
    return off_100358300[mode];
  }
}

- (PHSOSNumbersViewController)sosNumbersViewController
{
  sosNumbersViewController = self->_sosNumbersViewController;
  if (!sosNumbersViewController)
  {
    v4 = [PHSOSNumbersViewController alloc];
    sosHandles = [(PHSOSViewController *)self sosHandles];
    v6 = [(PHSOSNumbersViewController *)v4 initWithSOSHandles:sosHandles];
    v7 = self->_sosNumbersViewController;
    self->_sosNumbersViewController = v6;

    view = [(PHSOSNumbersViewController *)self->_sosNumbersViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

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
  sosHandles = [(PHSOSViewController *)self sosHandles];
  v4 = [sosHandles count];

  if (v4 > 1)
  {
    if ([(PHSOSViewController *)self sosTrigger]== 7 && ![(PHSOSViewController *)self isUserResponsive])
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = -1;
      sosHandles2 = [(PHSOSViewController *)self sosHandles];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10008D3E0;
      v8[3] = &unk_1003580A0;
      v8[4] = &v9;
      [sosHandles2 enumerateObjectsUsingBlock:v8];

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

- (void)dialSOSNumberAtIndex:(int64_t)index
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sosHandles = [(PHSOSViewController *)self sosHandles];
    *buf = 134218242;
    indexCopy = index;
    v37 = 2112;
    v38 = sosHandles;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "index: %ld self.sosHandles: %@", buf, 0x16u);
  }

  v7 = +[NSDate date];
  [(PHSOSViewController *)self setDateOfCall:v7];

  v8 = +[TUCall shouldMakeFakeSOSCall];
  v9 = [TUDialRequest alloc];
  v10 = +[TUCallCenter sharedInstance];
  providerManager = [v10 providerManager];
  v12 = providerManager;
  if (v8)
  {
    telephonyProvider = [providerManager telephonyProvider];
    v14 = [v9 initWithProvider:telephonyProvider];

    v15 = [TUHandle handleWithDestinationID:@"+14089619342"];
    [v14 setHandle:v15];
  }

  else
  {
    emergencyProvider = [providerManager emergencyProvider];
    v14 = [v9 initWithProvider:emergencyProvider];

    [v14 setDialType:1];
    [v14 setSOS:1];
  }

  sosTrigger = [(PHSOSViewController *)self sosTrigger];
  if (sosTrigger <= 2)
  {
    if (sosTrigger < 3)
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

  if (sosTrigger != 7)
  {
    if (sosTrigger == 5)
    {
      v18 = 13;
      goto LABEL_23;
    }

    if (sosTrigger == 3)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  isUserResponsive = [(PHSOSViewController *)self isUserResponsive];
  if (isUserResponsive)
  {
    v18 = 12;
  }

  else
  {
    v18 = 10;
  }

  if (isUserResponsive)
  {
    v21 = 3;
  }

  else
  {
    v21 = 4;
  }

LABEL_24:
  [v14 setOriginatingUIType:v18];
  launchedForAssertionReason = [(PHSOSViewController *)self launchedForAssertionReason];
  v23 = launchedForAssertionReason == @"PHSOSCallAssertionReason";

  if (v23)
  {
    v24 = +[SOSStatusReporter sharedInstance];
    [v24 updateSOSFlowState:v21];
  }

  if (([v14 isRTTAvailable] & 1) != 0 || objc_msgSend(v14, "isTTYAvailable"))
  {
    [v14 setTtyType:2];
  }

  sosHandles2 = [(PHSOSViewController *)self sosHandles];
  if ([sosHandles2 count] <= index)
  {
  }

  else
  {
    v26 = +[TUCall shouldMakeFakeSOSCall];

    if ((v26 & 1) == 0)
    {
      sosHandles3 = [(PHSOSViewController *)self sosHandles];
      v28 = [sosHandles3 objectAtIndexedSubscript:index];
      handle = [v28 handle];
      [v14 setHandle:handle];

      if (([v14 isValid] & 1) == 0)
      {
        v30 = sub_100004F84();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          indexCopy = v14;
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
    indexCopy = v14;
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
  cancelButton = [(PHSOSViewController *)self cancelButton];
  [cancelButton setHidden:0];

  sosNumbersViewController = [(PHSOSViewController *)self sosNumbersViewController];
  view = [sosNumbersViewController view];
  [(PHSOSViewController *)self transitionToView:view animated:0];

  [(PHSOSViewController *)self setUpSOSNumbersListViewConstraints];
  cancelButton2 = [(PHSOSViewController *)self cancelButton];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];
  [cancelButton2 setTitle:v8 forState:0];

  [(PHSOSViewController *)self willStartSendingLocationUpdate];
}

- (void)showCheckInView
{
  cancelButton = [(PHSOSViewController *)self cancelButton];
  [cancelButton setHidden:0];

  checkInView = [(PHSOSViewController *)self checkInView];
  [(PHSOSViewController *)self transitionToView:checkInView animated:0];

  [(PHSOSViewController *)self setUpCheckInViewConstraints];
  cancelButton2 = [(PHSOSViewController *)self cancelButton];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];
  [cancelButton2 setTitle:v7 forState:0];

  [(PHSOSViewController *)self willStartSendingLocationUpdate];
  getCheckInViewModel = [(PHSOSViewController *)self getCheckInViewModel];
  if ([getCheckInViewModel sosVoiceMessageType])
  {
    [(PHSOSViewController *)self setVolumeMaxedPending:1];
    v9 = +[UIApplication sharedApplication];
    delegate = [v9 delegate];
    sceneManager = [delegate sceneManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10008E000;
    v17[3] = &unk_100357AF8;
    v17[4] = self;
    [sceneManager waitForRegistrationOfSceneWithType:0 completion:v17];
  }

  Current = CFAbsoluteTimeGetCurrent();
  objc_initWeak(&location, self);
  checkInView2 = [(PHSOSViewController *)self checkInView];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008E03C;
  v14[3] = &unk_1003580F0;
  objc_copyWeak(v15, &location);
  v15[1] = *&Current;
  v14[4] = self;
  [checkInView2 start:getCheckInViewModel completion:v14];

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
  volumeMaxedPending = [(PHSOSViewController *)self volumeMaxedPending];
  if (volumeMaxedPending == [(PHSOSViewController *)self volumeMaxedCurrently])
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
  sosTrigger = [(PHSOSViewController *)self sosTrigger];
  if (sosTrigger >= 3)
  {
    if (sosTrigger == 7)
    {
      v5 = PHSOSKappaDialCountdownViewModel;
      goto LABEL_12;
    }

    if (sosTrigger == 3)
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
  cancelButton = [(PHSOSViewController *)self cancelButton];
  [cancelButton setHidden:0];

  countdownView = [(PHSOSViewController *)self countdownView];
  [(PHSOSViewController *)self transitionToView:countdownView animated:0];

  [(PHSOSViewController *)self setUpCountdownViewConstraints];
  cancelButton2 = [(PHSOSViewController *)self cancelButton];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"STOP" value:&stru_100361FD0 table:@"InCallService"];
  [cancelButton2 setTitle:v7 forState:0];

  [(PHSOSViewController *)self willStartSendingLocationUpdate];
  getSOSDialCountdownViewModel = [(PHSOSViewController *)self getSOSDialCountdownViewModel];
  objc_initWeak(&location, self);
  countdownView2 = [(PHSOSViewController *)self countdownView];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008E82C;
  v10[3] = &unk_100358118;
  objc_copyWeak(&v11, &location);
  [countdownView2 start:getSOSDialCountdownViewModel showSlider:1 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)showSOSDialSliding
{
  cancelButton = [(PHSOSViewController *)self cancelButton];
  [cancelButton setHidden:0];

  slidingView = [(PHSOSViewController *)self slidingView];
  [(PHSOSViewController *)self transitionToView:slidingView animated:0];

  [(PHSOSViewController *)self setUpSlidingViewConstraints];
  cancelButton2 = [(PHSOSViewController *)self cancelButton];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];
  [cancelButton2 setTitle:v7 forState:0];

  [(PHSOSViewController *)self setCallDialStartTime:-1.0];
  [(PHSOSViewController *)self setTimeTillActive:-1.0];
  [(PHSOSViewController *)self setCallAutoDialled:0];
  [(PHSOSViewController *)self setClawSwipeAfterRTCTimeout:0];
  [(PHSOSViewController *)self setWasCallCancelled:1];
  v8 = +[SOSManager sharedInstance];
  currentSOSButtonPressState = [v8 currentSOSButtonPressState];
  [(PHSOSViewController *)self setCurrentButtonPressState:currentSOSButtonPressState];

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
  slidingView2 = [(PHSOSViewController *)self slidingView];
  [slidingView2 setAnimatedSlidingButtonCompletionBlock:v10];

  slidingView3 = [(PHSOSViewController *)self slidingView];
  [slidingView3 setShouldMaxVolumeCompletionBlock:v12];

  slidingView4 = [(PHSOSViewController *)self slidingView];
  [slidingView4 setPowerDownCompletionBlock:v13];

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
  cancelButton = [(PHSOSViewController *)self cancelButton];
  [cancelButton setHidden:1];

  infoLabel = [(PHSOSViewController *)self infoLabel];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"EMERGENCY_CALL_CANCELED" value:&stru_100361FD0 table:@"InCallService"];
  [infoLabel setText:v6];

  infoLabel2 = [(PHSOSViewController *)self infoLabel];
  [(PHSOSViewController *)self transitionToView:infoLabel2 animated:1];

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
  cancelButton = [(PHSOSViewController *)self cancelButton];
  [cancelButton setHidden:1];

  cancelButton2 = [(PHSOSViewController *)self cancelButton];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CLOSE" value:&stru_100361FD0 table:@"InCallService"];
  [cancelButton2 setTitle:v6 forState:0];

  infoLabel = [(PHSOSViewController *)self infoLabel];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"SOS_NOTIFIED" value:&stru_100361FD0 table:@"InCallService"];
  [infoLabel setText:v9];

  infoLabel2 = [(PHSOSViewController *)self infoLabel];
  [(PHSOSViewController *)self transitionToView:infoLabel2 animated:1];

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
  cancelButton = [(PHSOSViewController *)self cancelButton];
  [cancelButton setHidden:1];

  infoLabel = [(PHSOSViewController *)self infoLabel];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SOS_NOTIFICATION_CANCELED" value:&stru_100361FD0 table:@"InCallService"];
  [infoLabel setText:v6];

  infoLabel2 = [(PHSOSViewController *)self infoLabel];
  [(PHSOSViewController *)self transitionToView:infoLabel2 animated:1];

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
  cancelButton = [(PHSOSViewController *)self cancelButton];
  [cancelButton setHidden:0];

  cancelButton2 = [(PHSOSViewController *)self cancelButton];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"STOP" value:&stru_100361FD0 table:@"InCallService"];
  [cancelButton2 setTitle:v6 forState:0];

  countdownView = [(PHSOSViewController *)self countdownView];
  [(PHSOSViewController *)self transitionToView:countdownView animated:0];

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
  sosTrigger = [(PHSOSViewController *)self sosTrigger];
  v4 = off_100353220;
  if (sosTrigger != 7)
  {
    v4 = off_100353240;
  }

  v5 = objc_alloc_init(*v4);
  objc_initWeak(&location, self);
  countdownView = [(PHSOSViewController *)self countdownView];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008F8F4;
  v7[3] = &unk_100358118;
  objc_copyWeak(&v8, &location);
  [countdownView start:v5 showSlider:0 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)showRestingView
{
  [(PHSOSViewController *)self setAlreadyVisitedRestingScreen:1];
  cancelButton = [(PHSOSViewController *)self cancelButton];
  [cancelButton setHidden:0];

  cancelButton2 = [(PHSOSViewController *)self cancelButton];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CLOSE" value:&stru_100361FD0 table:@"InCallService"];
  [cancelButton2 setTitle:v6 forState:0];

  restingView = [(PHSOSViewController *)self restingView];
  [(PHSOSViewController *)self transitionToView:restingView animated:0];

  [(PHSOSViewController *)self setUpRestingViewConstraints];
  v8 = +[SOSUtilities mostRecentSOSStatus];
  v9 = v8;
  if (v8 && ([v8 timeOfDetection], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    timeOfDetection = [v9 timeOfDetection];
  }

  else
  {
    dateOfCall = [(PHSOSViewController *)self dateOfCall];

    if (!dateOfCall)
    {
      goto LABEL_7;
    }

    timeOfDetection = [(PHSOSViewController *)self dateOfCall];
  }

  v13 = timeOfDetection;
  restingView2 = [(PHSOSViewController *)self restingView];
  [restingView2 setDateOfSOSEvent:v13];

LABEL_7:
  sosTrigger = [(PHSOSViewController *)self sosTrigger];
  v16 = off_100353228;
  if (sosTrigger != 7)
  {
    v16 = off_100353238;
  }

  v17 = objc_alloc_init(*v16);
  restingView3 = [(PHSOSViewController *)self restingView];
  [restingView3 setViewModel:v17];

  objc_initWeak(&location, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10008FC50;
  v23[3] = &unk_100358118;
  objc_copyWeak(&v24, &location);
  restingView4 = [(PHSOSViewController *)self restingView];
  [restingView4 setCompletionHandler:v23];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10008FD20;
  v21[3] = &unk_100358188;
  objc_copyWeak(&v22, &location);
  [(PHSOSViewController *)self fetchMedicalIDWithCompletion:v21];
  launchedForAssertionReason = [(PHSOSViewController *)self launchedForAssertionReason];

  if (launchedForAssertionReason == @"PHSOSCallAssertionReason")
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
  statusHeartbeatTimer = [(PHSOSViewController *)self statusHeartbeatTimer];

  if (statusHeartbeatTimer)
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,clearing status heartbeat timer", v6, 2u);
    }

    statusHeartbeatTimer2 = [(PHSOSViewController *)self statusHeartbeatTimer];
    [statusHeartbeatTimer2 invalidate];

    [(PHSOSViewController *)self setStatusHeartbeatTimer:0];
  }
}

- (void)showAlertRestingView
{
  cancelButton = [(PHSOSViewController *)self cancelButton];
  [cancelButton setHidden:0];

  cancelButton2 = [(PHSOSViewController *)self cancelButton];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CLOSE" value:&stru_100361FD0 table:@"InCallService"];
  [cancelButton2 setTitle:v6 forState:0];

  alertRestingView = [(PHSOSViewController *)self alertRestingView];
  [(PHSOSViewController *)self transitionToView:alertRestingView animated:0];

  [(PHSOSViewController *)self setUpAlertRestingViewConstraints];
  sosTrigger = [(PHSOSViewController *)self sosTrigger];
  v9 = off_100353218;
  if (sosTrigger != 7)
  {
    v9 = off_100353230;
  }

  v10 = objc_alloc_init(*v9);
  alertRestingView2 = [(PHSOSViewController *)self alertRestingView];
  [alertRestingView2 setViewModel:v10];

  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100090350;
  v15[3] = &unk_100358118;
  objc_copyWeak(&v16, &location);
  alertRestingView3 = [(PHSOSViewController *)self alertRestingView];
  [alertRestingView3 setCompletionHandler:v15];

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

+ (BOOL)shouldShowMedicalID:(id)d
{
  dCopy = d;
  v4 = CUTWeakLinkClass();
  hasAnyData = [dCopy hasAnyData];

  if (hasAnyData)
  {
    sharedInstance = [v4 sharedInstance];
    v7 = [sharedInstance lostModeIsActive] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)fetchMedicalIDWithCompletion:(id)completion
{
  completionCopy = completion;
  healthStore = [(PHSOSViewController *)self healthStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100090640;
  v7[3] = &unk_1003581D8;
  v8 = completionCopy;
  v6 = completionCopy;
  [healthStore fetchMedicalIDDataWithCompletion:v7];
}

- (void)loadMedicalIDWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v6 = completionCopy;
  v8 = v6;
  [(PHSOSViewController *)self fetchMedicalIDWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)dismissMedicalIDViewController
{
  medicalIDNavigationController = [(PHSOSViewController *)self medicalIDNavigationController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100090AA0;
  v4[3] = &unk_100356988;
  v4[4] = self;
  [medicalIDNavigationController dismissViewControllerAnimated:1 completion:v4];
}

- (void)hideMedicalIDWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(UINavigationController *)self->_medicalIDNavigationController presentingViewController];

  if (presentingViewController)
  {
    [(UINavigationController *)self->_medicalIDNavigationController dismissViewControllerAnimated:1 completion:completionCopy];
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
    medicalIDNavigationController = [(PHSOSViewController *)self medicalIDNavigationController];

    if (medicalIDNavigationController)
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

- (void)transitionToView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  v7 = viewCopy;
  if (animatedCopy)
  {
    [viewCopy setAlpha:0.0];
    view = [(PHSOSViewController *)self view];
    [view addSubview:v7];

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
    currentView = [(PHSOSViewController *)self currentView];
    [currentView removeFromSuperview];

    view2 = [(PHSOSViewController *)self view];
    [view2 addSubview:v7];

    [(PHSOSViewController *)self setCurrentView:v7];
  }
}

- (void)buttonPressed:(id)pressed
{
  sosMode = [(PHSOSViewController *)self sosMode];
  if (sosMode > 5)
  {
    if (sosMode > 8)
    {
      if (sosMode == 9)
      {
        coreAnalyticsReporter = [(PHSOSViewController *)self coreAnalyticsReporter];
        sosTrigger = [(PHSOSViewController *)self sosTrigger];
        restingView = [(PHSOSViewController *)self restingView];
        [coreAnalyticsReporter reportSOSRestingResponse:sosTrigger restingResponse:2 hasMedicalID:{objc_msgSend(restingView, "hasMedicalIDSlider")}];
      }

      else if (sosMode != 10)
      {
        return;
      }

      goto LABEL_44;
    }

    if ((sosMode - 6) < 2)
    {
      goto LABEL_44;
    }

    if (sosMode != 8)
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

  if (sosMode <= 2)
  {
    if (!sosMode)
    {
      goto LABEL_44;
    }

    if (sosMode != 1)
    {
      if (sosMode != 2)
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
      slidingView = [(PHSOSViewController *)self slidingView];
      slidingViewState = [slidingView slidingViewState];

      if (slidingViewState <= 2)
      {
        if (slidingViewState)
        {
          if (slidingViewState != 1)
          {
            if (slidingViewState == 2)
            {
              [(PHSOSViewController *)self setSlidingViewExitReason:8];
              [(PHSOSViewController *)self submitSOSUserActivityMetric];
              [(PHSOSViewController *)self setVolumeMaxedPending:0];
              [(PHSOSViewController *)self handleVolumeChanges];
              [(PHSOSViewController *)self setClawResolution:1];
              [(PHSOSViewController *)self raiseAccidentalSOSNotification];
              slidingView2 = [(PHSOSViewController *)self slidingView];
              [slidingView2 clearReleaseToCallState];

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

        slidingView3 = [(PHSOSViewController *)self slidingView];
        slidingViewState2 = [slidingView3 slidingViewState];

        if (slidingViewState2 == 1)
        {
          [(PHSOSViewController *)self setSlidingViewExitReason:7];
        }

        goto LABEL_41;
      }

      if ((slidingViewState - 4) >= 2)
      {
        if (slidingViewState != 3)
        {
          return;
        }

LABEL_41:
        slidingView4 = [(PHSOSViewController *)self slidingView];
        slidingViewState3 = [slidingView4 slidingViewState];

        if (slidingViewState3 == 3)
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

  if (sosMode == 3)
  {
    goto LABEL_44;
  }

  if (sosMode == 4)
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

- (void)deactivateSOSWithSOSDismissalType:(int64_t)type
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
    [v6 didDismissSOSBeforeSOSCall:type];

    v7 = 6;
  }

  else
  {
    v7 = 10;
  }

  launchedForAssertionReason = [(PHSOSViewController *)self launchedForAssertionReason];

  if (launchedForAssertionReason == @"PHSOSCallAssertionReason")
  {
    v9 = +[SOSStatusReporter sharedInstance];
    [v9 updateSOSFlowState:v7];
  }

  launchedForAssertionReason2 = [(PHSOSViewController *)self launchedForAssertionReason];
  [PHInCallRootViewController releaseDismissalAssertionForReason:launchedForAssertionReason2];

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
    delegate = [v13 delegate];
    [delegate setActivationContext:0];
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
    uniqueIdentifier = [(TUAudioRoute *)self->_priorSystemAudioRoute uniqueIdentifier];
    [(PHAudioDeviceController *)audioDeviceController pickRouteWithUID:uniqueIdentifier];
  }
}

- (void)emergencyCallbackModeChangedNotification:(id)notification
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
  launchedForAssertionReason = [(PHSOSViewController *)self launchedForAssertionReason];

  if (launchedForAssertionReason == @"PHSOSCallAssertionReason" && ([(PHSOSViewController *)self sosTrigger]== 1 || [(PHSOSViewController *)self sosTrigger]== 2 || [(PHSOSViewController *)self sosTrigger]== 3))
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
    uTF8String = [SOSSettingsURLSourceKey UTF8String];
    v10 = [v8 stringByAppendingFormat:@"&%s=%s", uTF8String, objc_msgSend(SOSSettingsURLSourceAccCallNotification, "UTF8String")];
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

- (void)handleCallBufferCompletionNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,handleCallBufferCompletionNotification,entered", buf, 2u);
  }

  [(PHSOSViewController *)self setVolumeMaxedPending:0];
  [(PHSOSViewController *)self handleVolumeChanges];
  userInfo = [notificationCopy userInfo];

  if (userInfo)
  {
    [(PHSOSViewController *)self setSlidingViewEntryReason:5];
    v7 = [userInfo objectForKeyedSubscript:@"PHCallBufferCompletionReasonKey"];
    integerValue = [v7 integerValue];

    if (integerValue == 1)
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

    else if (!integerValue)
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

  sosHandles = [(PHSOSViewController *)self sosHandles];

  if (sosHandles)
  {
    sosHandles2 = [(PHSOSViewController *)self sosHandles];
    v6 = [sosHandles2 count];

    if (v6 > 1)
    {
      [(PHSOSViewController *)self setVolumeMaxedPending:0];
      [(PHSOSViewController *)self handleVolumeChanges];
      goto LABEL_2;
    }

    [(PHSOSViewController *)self setVolumeMaxedPending:1];
    [(PHSOSViewController *)self handleVolumeChanges];
    callAutoDialled = [(PHSOSViewController *)self callAutoDialled];
    v8 = off_100359450;
    if (!callAutoDialled)
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

- (void)sosNumbersViewController:(id)controller didSelectRowAtIndexPath:(id)path
{
  v5 = [path row];

  [(PHSOSViewController *)self dialSOSNumberAtIndex:v5];
}

- (void)showPowerDownFindMyInfoAlertWithProceed:(id)proceed cancelCompletion:(id)completion
{
  proceedCopy = proceed;
  completionCopy = completion;
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
  v24 = proceedCopy;
  v16 = proceedCopy;
  v17 = [UIAlertAction actionWithTitle:v12 style:0 handler:v23];
  [v15 addAction:v17];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100092BAC;
  v21[3] = &unk_1003582A0;
  v22 = completionCopy;
  v18 = completionCopy;
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
  beaconManager = [(PHSOSViewController *)self beaconManager];
  [beaconManager setUserHasAcknowledgedFindMy:1 completion:&stru_1003582C0];

  slidingView = [(PHSOSViewController *)self slidingView];
  [slidingView didAcknowledgeFindMyInfo];
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

- (void)stateChanged:(id)changed
{
  changedCopy = changed;
  launchedForAssertionReason = [(PHSOSViewController *)self launchedForAssertionReason];

  v6 = sub_100004F84();
  v7 = v6;
  if (launchedForAssertionReason == @"PHAlertRestingScreenAssertionReason")
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = changedCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,Stewie state changed: %@", &v10, 0xCu);
    }

    if ([(PHSOSViewController *)self sosMode]== 10)
    {
      stewieState = [(PHSOSViewController *)self stewieState];
      if ([stewieState activeServices])
      {
        activeServices = [changedCopy activeServices];

        if ((activeServices & 1) == 0)
        {
          [(PHSOSViewController *)self setSosMode:9];
        }
      }

      else
      {
      }
    }

    [(PHSOSViewController *)self setStewieState:changedCopy];
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
  cancelButton = [(PHSOSViewController *)self cancelButton];
  centerXAnchor = [cancelButton centerXAnchor];
  view = [(PHSOSViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  cancelButton2 = [(PHSOSViewController *)self cancelButton];
  bottomAnchor = [cancelButton2 bottomAnchor];
  view2 = [(PHSOSViewController *)self view];
  bottomAnchor2 = [view2 bottomAnchor];
  view3 = [(PHSOSViewController *)self view];
  [PHCallViewController _bottomBarBottomMarginForView:view3];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v13];

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
  checkInView = [(PHSOSViewController *)self checkInView];
  leadingAnchor = [checkInView leadingAnchor];
  view = [(PHSOSViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v4];
  [v30 addObject:v9];

  checkInView2 = [(PHSOSViewController *)self checkInView];
  trailingAnchor = [checkInView2 trailingAnchor];
  view2 = [(PHSOSViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v4];
  [v30 addObject:v14];

  checkInView3 = [(PHSOSViewController *)self checkInView];
  centerXAnchor = [checkInView3 centerXAnchor];
  view3 = [(PHSOSViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v30 addObject:v19];

  checkInView4 = [(PHSOSViewController *)self checkInView];
  topAnchor = [checkInView4 topAnchor];
  view4 = [(PHSOSViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v30 addObject:v24];

  checkInView5 = [(PHSOSViewController *)self checkInView];
  bottomAnchor = [checkInView5 bottomAnchor];
  cancelButton = [(PHSOSViewController *)self cancelButton];
  topAnchor3 = [cancelButton topAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  [v30 addObject:v29];

  [NSLayoutConstraint activateConstraints:v30];
}

- (void)setUpRestingViewConstraints
{
  v30 = objc_alloc_init(NSMutableArray);
  [(PHSOSViewController *)self marginPadding];
  v4 = v3;
  restingView = [(PHSOSViewController *)self restingView];
  leadingAnchor = [restingView leadingAnchor];
  view = [(PHSOSViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v4];
  [v30 addObject:v9];

  restingView2 = [(PHSOSViewController *)self restingView];
  trailingAnchor = [restingView2 trailingAnchor];
  view2 = [(PHSOSViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v4];
  [v30 addObject:v14];

  restingView3 = [(PHSOSViewController *)self restingView];
  centerXAnchor = [restingView3 centerXAnchor];
  view3 = [(PHSOSViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v30 addObject:v19];

  restingView4 = [(PHSOSViewController *)self restingView];
  topAnchor = [restingView4 topAnchor];
  view4 = [(PHSOSViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v30 addObject:v24];

  restingView5 = [(PHSOSViewController *)self restingView];
  bottomAnchor = [restingView5 bottomAnchor];
  cancelButton = [(PHSOSViewController *)self cancelButton];
  topAnchor3 = [cancelButton topAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  [v30 addObject:v29];

  [NSLayoutConstraint activateConstraints:v30];
}

- (void)setUpAlertRestingViewConstraints
{
  v30 = objc_alloc_init(NSMutableArray);
  [(PHSOSViewController *)self marginPadding];
  v4 = v3;
  alertRestingView = [(PHSOSViewController *)self alertRestingView];
  leadingAnchor = [alertRestingView leadingAnchor];
  view = [(PHSOSViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v4];
  [v30 addObject:v9];

  alertRestingView2 = [(PHSOSViewController *)self alertRestingView];
  trailingAnchor = [alertRestingView2 trailingAnchor];
  view2 = [(PHSOSViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v4];
  [v30 addObject:v14];

  alertRestingView3 = [(PHSOSViewController *)self alertRestingView];
  centerXAnchor = [alertRestingView3 centerXAnchor];
  view3 = [(PHSOSViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v30 addObject:v19];

  alertRestingView4 = [(PHSOSViewController *)self alertRestingView];
  topAnchor = [alertRestingView4 topAnchor];
  view4 = [(PHSOSViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v30 addObject:v24];

  alertRestingView5 = [(PHSOSViewController *)self alertRestingView];
  bottomAnchor = [alertRestingView5 bottomAnchor];
  cancelButton = [(PHSOSViewController *)self cancelButton];
  topAnchor3 = [cancelButton topAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  [v30 addObject:v29];

  [NSLayoutConstraint activateConstraints:v30];
}

- (void)setUpCountdownViewConstraints
{
  [(PHSOSViewController *)self marginPadding];
  v4 = v3;
  countdownView = [(PHSOSViewController *)self countdownView];
  leadingAnchor = [countdownView leadingAnchor];
  view = [(PHSOSViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v4];

  countdownView2 = [(PHSOSViewController *)self countdownView];
  trailingAnchor = [countdownView2 trailingAnchor];
  view2 = [(PHSOSViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v4];

  countdownView3 = [(PHSOSViewController *)self countdownView];
  centerXAnchor = [countdownView3 centerXAnchor];
  view3 = [(PHSOSViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  countdownView4 = [(PHSOSViewController *)self countdownView];
  topAnchor = [countdownView4 topAnchor];
  view4 = [(PHSOSViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];

  countdownView5 = [(PHSOSViewController *)self countdownView];
  bottomAnchor = [countdownView5 bottomAnchor];
  cancelButton = [(PHSOSViewController *)self cancelButton];
  topAnchor3 = [cancelButton topAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:topAnchor3];

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
  slidingView = [(PHSOSViewController *)self slidingView];
  leadingAnchor = [slidingView leadingAnchor];
  view = [(PHSOSViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  slidingView2 = [(PHSOSViewController *)self slidingView];
  trailingAnchor = [slidingView2 trailingAnchor];
  view2 = [(PHSOSViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  slidingView3 = [(PHSOSViewController *)self slidingView];
  centerXAnchor = [slidingView3 centerXAnchor];
  view3 = [(PHSOSViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  slidingView4 = [(PHSOSViewController *)self slidingView];
  topAnchor = [slidingView4 topAnchor];
  view4 = [(PHSOSViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];

  slidingView5 = [(PHSOSViewController *)self slidingView];
  bottomAnchor = [slidingView5 bottomAnchor];
  cancelButton = [(PHSOSViewController *)self cancelButton];
  topAnchor3 = [cancelButton topAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:topAnchor3];

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
  sosNumbersViewController = [(PHSOSViewController *)self sosNumbersViewController];
  view = [sosNumbersViewController view];
  leadingAnchor = [view leadingAnchor];
  view2 = [(PHSOSViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v4];

  sosNumbersViewController2 = [(PHSOSViewController *)self sosNumbersViewController];
  view3 = [sosNumbersViewController2 view];
  trailingAnchor = [view3 trailingAnchor];
  view4 = [(PHSOSViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v4];

  sosNumbersViewController3 = [(PHSOSViewController *)self sosNumbersViewController];
  view5 = [sosNumbersViewController3 view];
  centerXAnchor = [view5 centerXAnchor];
  view6 = [(PHSOSViewController *)self view];
  centerXAnchor2 = [view6 centerXAnchor];
  v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  sosNumbersViewController4 = [(PHSOSViewController *)self sosNumbersViewController];
  view7 = [sosNumbersViewController4 view];
  topAnchor = [view7 topAnchor];
  view8 = [(PHSOSViewController *)self view];
  safeAreaLayoutGuide = [view8 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:52.0];

  sosNumbersViewController5 = [(PHSOSViewController *)self sosNumbersViewController];
  view9 = [sosNumbersViewController5 view];
  bottomAnchor = [view9 bottomAnchor];
  cancelButton = [(PHSOSViewController *)self cancelButton];
  topAnchor3 = [cancelButton topAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-28.0];

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
  infoLabel = [(PHSOSViewController *)self infoLabel];
  leadingAnchor = [infoLabel leadingAnchor];
  view = [(PHSOSViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v4];

  infoLabel2 = [(PHSOSViewController *)self infoLabel];
  trailingAnchor = [infoLabel2 trailingAnchor];
  view2 = [(PHSOSViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v4];

  infoLabel3 = [(PHSOSViewController *)self infoLabel];
  centerXAnchor = [infoLabel3 centerXAnchor];
  view3 = [(PHSOSViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  v20 = 27.0;
  if ((+[PHUIConfiguration shouldUseSOSTightSpacing]& 1) == 0)
  {
    v21 = +[UIScreen mainScreen];
    [v21 bounds];
    v20 = v22 * 0.0599999987;
  }

  infoLabel4 = [(PHSOSViewController *)self infoLabel];
  topAnchor = [infoLabel4 topAnchor];
  safeAreaLayoutGuide = [(PHSOSViewController *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v20];

  v29[0] = v9;
  v29[1] = v14;
  v29[2] = v19;
  v29[3] = v27;
  v28 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v28];
}

- (void)submitSOSResolutionMetric:(BOOL)metric
{
  metricCopy = metric;
  launchedForAssertionReason = [(PHSOSViewController *)self launchedForAssertionReason];

  if (launchedForAssertionReason != @"PHSOSCallAssertionReason")
  {
    return;
  }

  sosTrigger = [(PHSOSViewController *)self sosTrigger];
  if (sosTrigger > 4)
  {
    v8 = 1;
    if (sosTrigger == 5 || sosTrigger == 7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((sosTrigger - 1) < 2)
    {
      v7 = +[SOSUtilities isCallWithSideButtonPressesEnabled];
LABEL_10:
      v8 = v7;
      goto LABEL_14;
    }

    if (sosTrigger == 3)
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
  sosTrigger2 = [(PHSOSViewController *)self sosTrigger];
  if ([SOSCoreAnalyticsReporter isSensitiveTrigger:sosTrigger2])
  {
    v11 = +[MCProfileConnection sharedConnection];
    isSafetyDataSubmissionAllowed = [v11 isSafetyDataSubmissionAllowed];

    if ((isSafetyDataSubmissionAllowed & 1) == 0)
    {
      sosTrigger2 = 9;
    }
  }

  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = [NSNumber numberWithInteger:sosTrigger2];
  [v13 setValue:v14 forKey:@"trigger"];

  v15 = [NSNumber numberWithBool:[(PHSOSViewController *)self wasCallCancelled]];
  [v13 setValue:v15 forKey:@"callCancelled"];

  [(PHSOSViewController *)self timeTillCancelCall];
  LODWORD(v17) = vcvtpd_s64_f64(v16);
  v18 = [NSNumber numberWithInt:v17];
  [v13 setValue:v18 forKey:@"timeTillCancel"];

  v19 = [NSNumber numberWithBool:metricCopy];
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

  currentButtonPressState = [(PHSOSViewController *)self currentButtonPressState];

  if (currentButtonPressState)
  {
    currentButtonPressState2 = [(PHSOSViewController *)self currentButtonPressState];
    [currentButtonPressState2 getButtonPressGap];
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

  slidingView = [(PHSOSViewController *)self slidingView];
  v36 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [slidingView wasMounted]);
  [v13 setValue:v36 forKey:@"wasMounted"];

  slidingView2 = [(PHSOSViewController *)self slidingView];
  v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [slidingView2 wasMountedProbability]);
  [v13 setValue:v38 forKey:@"wasMountedProbability"];

  slidingView3 = [(PHSOSViewController *)self slidingView];
  v40 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [slidingView3 numberOfEpochsForMountProbability]);
  [v13 setValue:v40 forKey:@"numberEpochs"];

  slidingView4 = [(PHSOSViewController *)self slidingView];
  if (!slidingView4)
  {
    goto LABEL_24;
  }

  +[SOSUtilities clawReleaseToCallSupport];
  if (v42 <= 1.0)
  {
    goto LABEL_24;
  }

  slidingView5 = [(PHSOSViewController *)self slidingView];
  timeToReleaseClaw = [slidingView5 timeToReleaseClaw];

  if ((timeToReleaseClaw & 0x8000000000000000) == 0)
  {
    slidingView4 = [(PHSOSViewController *)self slidingView];
    v45 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [slidingView4 timeToReleaseClaw]);
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
    intValue = [v82 intValue];
    v80 = [v13 valueForKey:@"callCancelled"];
    intValue2 = [v80 intValue];
    v78 = [v13 valueForKey:@"timeTillCancel"];
    intValue3 = [v78 intValue];
    v76 = [v13 valueForKey:@"notificationPosted"];
    intValue4 = [v76 intValue];
    v75 = [v13 valueForKey:@"autoCallEnabled"];
    intValue5 = [v75 intValue];
    v73 = [v13 valueForKey:@"callDisconnectReason"];
    intValue6 = [v73 intValue];
    v48 = [v13 valueForKey:@"timeTillActive"];
    intValue7 = [v48 intValue];
    v50 = [v13 valueForKey:@"callAutoDialled"];
    intValue8 = [v50 intValue];
    v52 = [v13 valueForKey:@"clawButtonPressGap"];
    intValue9 = [v52 intValue];
    v54 = [v13 valueForKey:@"clawButtonPressGapFloat"];
    [v54 doubleValue];
    *buf = 67111424;
    v86 = intValue;
    v87 = 1024;
    v88 = intValue2;
    v89 = 1024;
    v90 = intValue3;
    v91 = 1024;
    v92 = intValue4;
    v93 = 1024;
    v94 = intValue5;
    v95 = 1024;
    v96 = intValue6;
    v97 = 1024;
    v98 = intValue7;
    v99 = 1024;
    v100 = intValue8;
    v101 = 1024;
    v102 = intValue9;
    v103 = 2048;
    v104 = v55;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,SOS Resolution details,trigger,%d,callCancelled,%d,timeTillCancel,%d,notificationPosted,%d,autoCallEnabled,%d,callDisconnectReason,%d,timeTillActive,%d,callAutoDialled,%d,clawButtonPressGap,%d,clawButtonPressGapFloat,%f", buf, 0x42u);
  }

  v56 = sub_100004F84();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v83 = [v13 valueForKey:@"clawResolution"];
    intValue10 = [v83 intValue];
    v81 = [v13 valueForKey:@"wasMounted"];
    intValue11 = [v81 intValue];
    v57 = [v13 valueForKey:@"wasMountedProbability"];
    intValue12 = [v57 intValue];
    v59 = [v13 valueForKey:@"numberEpochs"];
    intValue13 = [v59 intValue];
    v61 = [v13 valueForKey:@"timeToReleaseClaw"];
    intValue14 = [v61 intValue];
    v63 = [v13 valueForKey:@"clawSwipeAfterRTCTimeout"];
    intValue15 = [v63 intValue];
    *buf = 67110400;
    v86 = intValue10;
    v87 = 1024;
    v88 = intValue11;
    v89 = 1024;
    v90 = intValue12;
    v91 = 1024;
    v92 = intValue13;
    v93 = 1024;
    v94 = intValue14;
    v95 = 1024;
    v96 = intValue15;
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
  launchedForAssertionReason = [(PHSOSViewController *)self launchedForAssertionReason];

  if (launchedForAssertionReason == @"PHSOSCallAssertionReason")
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    sessionId = [(PHSOSViewController *)self sessionId];
    [v4 setValue:sessionId forKey:@"sessionId"];

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
      currentSOSButtonPressState = [v21 currentSOSButtonPressState];
      [currentSOSButtonPressState getButtonPressGap];
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
      intValue = [v56 intValue];
      v55 = [v4 valueForKey:@"entryReason"];
      intValue2 = [v55 intValue];
      v54 = [v4 valueForKey:@"exitReason"];
      intValue3 = [v54 intValue];
      v53 = [v4 valueForKey:@"callConnected"];
      intValue4 = [v53 intValue];
      v52 = [v4 valueForKey:@"callDuration"];
      intValue5 = [v52 intValue];
      v50 = [v4 valueForKey:@"callConnectTimeSinceSessionStart"];
      intValue6 = [v50 intValue];
      v36 = [v4 valueForKey:@"callDisconnectReason"];
      intValue7 = [v36 intValue];
      v38 = [v4 valueForKey:@"clawButtonPressGapFloat"];
      [v38 doubleValue];
      v40 = v39;
      v41 = [v4 valueForKey:@"clawSwipeAfterRTCTimeout"];
      intValue8 = [v41 intValue];
      v43 = [v4 valueForKey:@"sliderProgressDuration"];
      *buf = 138414850;
      v58 = v35;
      v59 = 1024;
      v60 = intValue;
      v61 = 1024;
      v62 = intValue2;
      v63 = 1024;
      v64 = intValue3;
      v65 = 1024;
      v66 = intValue4;
      v67 = 1024;
      v68 = intValue5;
      v69 = 1024;
      v70 = intValue6;
      v71 = 1024;
      v72 = intValue7;
      v73 = 2048;
      v74 = v40;
      v75 = 1024;
      v76 = intValue8;
      v77 = 1024;
      intValue9 = [v43 intValue];
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,User Activity details,sessionId,%@,timeSinceSessionStart,%d,entryReason,%d,exitReason,%d,callConnected,%d,callDuration,%d,callConnectTimeSinceSessionStart,%d,callDisconnectReason,%d,clawButtonPressGapFloat,%f,clawSwipeAfterRTCTimeout,%d,sliderProgressDuration,%d", buf, 0x4Cu);
    }
  }
}

@end