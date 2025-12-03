@interface PHEmergencyDialerViewController
+ (BOOL)isEmergencyNumber:(id)number;
- (BOOL)shouldShowAirplaneEmergencyCallAlertForDialRequest:(id)request;
- (BOOL)shouldShowRTTAlertForDialRequest:(id)request;
- (BOOL)shouldShowUseRTTButton;
- (PHEmergencyDialerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (TUSenderIdentityClient)senderIdentityClient;
- (UIButton)useRTTButton;
- (double)bottomToCancelBaselineOffset;
- (double)bottomToCancelBaselineOffsetForDxDevices;
- (id)currentCallStatusStringForDisplay;
- (id)digits;
- (void)alertWillInvoke;
- (void)attemptToDialEmergencyCall;
- (void)backButtonTapped:(id)tapped;
- (void)callButtonTapped:(id)tapped;
- (void)callStatusChangedNotification:(id)notification;
- (void)continueCyclingEmergencyTitleLabel;
- (void)dealloc;
- (void)dialEmergencyCallForDialRequest:(id)request;
- (void)dialerViewTextDidChange:(id)change;
- (void)dismissMedicalIDViewControllerIfNecessary;
- (void)emergencyCallbackModeChangedNotification:(id)notification;
- (void)endButtonTapped:(id)tapped;
- (void)handleAlertInvokedNotification:(id)notification;
- (void)handleTUCallSupportsTTYWithVoiceChangedNotification:(id)notification;
- (void)handleTUCallTTYTypeChangedNotification:(id)notification;
- (void)handleUseRTTActionForButtonSender:(id)sender event:(id)event;
- (void)loadConstraints;
- (void)loadView;
- (void)medicalIDButtonTapped:(id)tapped;
- (void)noteTintColorForBackgroundStyleChanged:(id)changed;
- (void)noteViewMovedOffscreenTemporarily;
- (void)phonePad:(id)pad appendString:(id)string;
- (void)phonePad:(id)pad keyDown:(char)down;
- (void)phonePadDeleteLastDigit:(id)digit;
- (void)refreshUseRTTButton;
- (void)setCurrentState:(signed __int16)state animated:(BOOL)animated;
- (void)stewieAlertButtonTapped:(id)tapped;
- (void)updateCurrentState;
- (void)updateEmergencyTitleLabelForCallDuration;
- (void)updatePresentationStateWithAllowed:(BOOL)allowed;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PHEmergencyDialerViewController

- (PHEmergencyDialerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = PHEmergencyDialerViewController;
  v4 = [(PHEmergencyDialerViewController *)&v9 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(PHEmergencyDialerViewController *)v4 setCurrentState:0];
    v6 = objc_alloc_init(CUTWeakLinkClass());
    healthStore = v5->_healthStore;
    v5->_healthStore = v6;

    [(PHEmergencyDialerViewController *)v5 setShouldSetPresenceToken:1];
  }

  return v5;
}

- (void)loadView
{
  v3 = +[PHInCallUtilities sharedInstance];
  isSetupAssistantRunning = [v3 isSetupAssistantRunning];

  if (isSetupAssistantRunning)
  {
    v5 = 4;
  }

  else
  {
    v5 = 3;
  }

  [(PHEmergencyDialerViewController *)self setBackgroundStyle:v5];
  v6 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v11 = +[UIColor clearColor];
  [v10 setBackgroundColor:v11];

  [v10 setOpaque:0];
  [(PHEmergencyDialerViewController *)self setView:v10];
  height = [[PHEmergencyHandsetDialerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  dialerView = self->_dialerView;
  self->_dialerView = height;

  phonePadView = [(PHEmergencyHandsetDialerView *)self->_dialerView phonePadView];
  [phonePadView setPlaysSounds:1];

  [(PHEmergencyHandsetDialerView *)self->_dialerView setAutoresizingMask:18];
  [(PHEmergencyHandsetDialerView *)self->_dialerView setDelegate:self];
  [(PHEmergencyHandsetDialerView *)self->_dialerView bounds];
  v58 = v10;
  [v10 setFrame:?];
  [v10 addSubview:self->_dialerView];
  callButton = [(PHEmergencyHandsetDialerView *)self->_dialerView callButton];
  [callButton addTarget:self action:"callButtonTapped:" forEvents:64];

  deleteButton = [(PHEmergencyHandsetDialerView *)self->_dialerView deleteButton];
  [deleteButton addTarget:self action:"deleteButtonTapped:" forEvents:64];

  phonePadView2 = [(PHEmergencyHandsetDialerView *)self->_dialerView phonePadView];
  [phonePadView2 setDelegate:self];

  v18 = [PHEdgeInsetButton buttonWithType:1];
  [v18 setTouchAreaEdgeInsets:{-15.0, -15.0, -15.0, -15.0}];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 addTarget:self action:"backButtonTapped:" forControlEvents:64];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"EmergencyCallStrings"];
  [v18 setTitle:v20 forState:0];

  v21 = +[UIColor blackColor];
  [v18 setTitleColor:v21 forState:0];

  titleLabel = [v18 titleLabel];
  if (+[PHUIConfiguration handsetDialerSpacing])
  {
    v23 = 16.0;
  }

  else
  {
    v23 = 14.0;
  }

  v24 = [UIFont systemFontOfSize:v23];
  [titleLabel setFont:v24];

  titleLabel2 = [v18 titleLabel];
  [titleLabel2 setTextAlignment:1];

  view = [(PHEmergencyDialerViewController *)self view];
  [view addSubview:v18];

  [(PHEmergencyDialerViewController *)self setBackButton:v18];
  view2 = [(PHEmergencyDialerViewController *)self view];
  useRTTButton = [(PHEmergencyDialerViewController *)self useRTTButton];
  [view2 addSubview:useRTTButton];

  [(PHEmergencyDialerViewController *)self refreshUseRTTButton];
  v29 = [PHEdgeInsetButton buttonWithType:1];
  [v29 setTouchAreaEdgeInsets:{-15.0, -15.0, -15.0, -15.0}];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v29 addTarget:self action:"medicalIDButtonTapped:" forControlEvents:64];
  v30 = +[NSBundle mainBundle];
  v31 = [v30 localizedStringForKey:@"MEDICAL_ID" value:&stru_100361FD0 table:@"EmergencyCallStrings"];
  [v29 setTitle:v31 forState:0];

  v32 = +[UIColor systemRedColor];
  [v29 setTitleColor:v32 forState:0];

  titleLabel3 = [v29 titleLabel];
  if (+[PHUIConfiguration handsetDialerSpacing])
  {
    v34 = 16.0;
  }

  else
  {
    v34 = 14.0;
  }

  v35 = [UIFont systemFontOfSize:v34];
  [titleLabel3 setFont:v35];

  v36 = [UIImage tpImageForSymbolType:38 pointSize:10.0];
  [v29 setImage:v36 forState:0];

  v37 = +[UIColor systemRedColor];
  [v29 _setImageColor:v37 forState:0];

  v38 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v38 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v40 = -3.0;
  }

  else
  {
    v40 = 3.0;
  }

  if (userInterfaceLayoutDirection == 1)
  {
    v41 = 3.0;
  }

  else
  {
    v41 = -3.0;
  }

  [v29 setTitleEdgeInsets:{0.0, v40, 0.0, v41}];
  [v29 setImageEdgeInsets:{-0.5, v41, 0.5, v40}];
  [v29 setHidden:1];
  view3 = [(PHEmergencyDialerViewController *)self view];
  [view3 addSubview:v29];

  [(PHEmergencyDialerViewController *)self setMedicalIDButton:v29];
  healthStore = [(PHEmergencyDialerViewController *)self healthStore];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_1000BED94;
  v59[3] = &unk_100358D00;
  v59[4] = self;
  [healthStore fetchMedicalIDDataWithCompletion:v59];

  v57 = [[PHBottomBarButtonConfiguration alloc] initWithAction:15];
  v44 = [[PHBottomBarButton alloc] initWithConfiguration:v57 appType:2];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v44 addTarget:self action:"endButtonTapped:" forControlEvents:64];
  [v44 setAlpha:0.0];
  view4 = [(PHEmergencyDialerViewController *)self view];
  [view4 addSubview:v44];

  [(PHEmergencyDialerViewController *)self setEndButton:v44];
  v46 = [[PHBottomBarButtonConfiguration alloc] initWithAction:38];
  v47 = [[PHBottomBarButton alloc] initWithConfiguration:v46 appType:2];
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v47 addTarget:self action:"stewieAlertButtonTapped:" forControlEvents:64];
  [v47 setAlpha:0.0];
  view5 = [(PHEmergencyDialerViewController *)self view];
  [view5 addSubview:v47];

  [(PHEmergencyDialerViewController *)self setStewieAlertButton:v47];
  stewieAlertButton = [(PHEmergencyDialerViewController *)self stewieAlertButton];
  v50 = +[UIColor blackColor];
  [stewieAlertButton setTitleColor:v50 forState:0];

  v51 = [[PHBottomBarButtonConfiguration alloc] initWithAction:39];
  v52 = [[PHBottomBarButton alloc] initWithConfiguration:v51 appType:2];
  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v52 addTarget:self action:"endButtonTapped:" forControlEvents:64];
  [v52 setAlpha:0.0];
  view6 = [(PHEmergencyDialerViewController *)self view];
  [view6 addSubview:v52];

  [(PHEmergencyDialerViewController *)self setStewieEndCallButton:v52];
  stewieEndCallButton = [(PHEmergencyDialerViewController *)self stewieEndCallButton];
  v55 = +[UIColor blackColor];
  [stewieEndCallButton setTitleColor:v55 forState:0];

  v56 = objc_alloc_init(UINotificationFeedbackGenerator);
  [(PHEmergencyDialerViewController *)self setAlertFeedbackGenerator:v56];

  [(PHEmergencyDialerViewController *)self loadConstraints];
  [(PHEmergencyDialerViewController *)self updateCurrentState];
}

- (void)loadConstraints
{
  dialerView = [(PHEmergencyDialerViewController *)self dialerView];
  phonePadView = [dialerView phonePadView];
  centerXAnchor = [phonePadView centerXAnchor];
  medicalIDButton = [(PHEmergencyDialerViewController *)self medicalIDButton];
  centerXAnchor2 = [medicalIDButton centerXAnchor];
  +[TPNumberPadLightStyleButton defaultSize];
  v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:?];

  LODWORD(v9) = 1144750080;
  [v8 setPriority:v9];
  [v8 setActive:1];
  medicalIDButton2 = [(PHEmergencyDialerViewController *)self medicalIDButton];
  leadingAnchor = [medicalIDButton2 leadingAnchor];
  dialerView2 = [(PHEmergencyDialerViewController *)self dialerView];
  leadingAnchor2 = [dialerView2 leadingAnchor];
  v14 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:15.0];

  [v14 setActive:1];
  medicalIDButton3 = [(PHEmergencyDialerViewController *)self medicalIDButton];
  centerYAnchor = [medicalIDButton3 centerYAnchor];
  backButton = [(PHEmergencyDialerViewController *)self backButton];
  centerYAnchor2 = [backButton centerYAnchor];
  v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  [v19 setActive:1];
  endButton = [(PHEmergencyDialerViewController *)self endButton];
  centerXAnchor3 = [endButton centerXAnchor];
  dialerView3 = [(PHEmergencyDialerViewController *)self dialerView];
  callButton = [dialerView3 callButton];
  centerXAnchor4 = [callButton centerXAnchor];
  v25 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];

  [v25 setActive:1];
  endButton2 = [(PHEmergencyDialerViewController *)self endButton];
  centerYAnchor3 = [endButton2 centerYAnchor];
  dialerView4 = [(PHEmergencyDialerViewController *)self dialerView];
  callButton2 = [dialerView4 callButton];
  centerYAnchor4 = [callButton2 centerYAnchor];
  v31 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];

  [v31 setActive:1];
  stewieAlertButton = [(PHEmergencyDialerViewController *)self stewieAlertButton];
  centerYAnchor5 = [stewieAlertButton centerYAnchor];
  dialerView5 = [(PHEmergencyDialerViewController *)self dialerView];
  callButton3 = [dialerView5 callButton];
  centerYAnchor6 = [callButton3 centerYAnchor];
  v37 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];

  [v37 setActive:1];
  stewieAlertButton2 = [(PHEmergencyDialerViewController *)self stewieAlertButton];
  leadingAnchor3 = [stewieAlertButton2 leadingAnchor];
  dialerView6 = [(PHEmergencyDialerViewController *)self dialerView];
  callButton4 = [dialerView6 callButton];
  trailingAnchor = [callButton4 trailingAnchor];
  v43 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];

  [v43 setActive:1];
  stewieEndCallButton = [(PHEmergencyDialerViewController *)self stewieEndCallButton];
  centerYAnchor7 = [stewieEndCallButton centerYAnchor];
  dialerView7 = [(PHEmergencyDialerViewController *)self dialerView];
  callButton5 = [dialerView7 callButton];
  centerYAnchor8 = [callButton5 centerYAnchor];
  v49 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];

  [v49 setActive:1];
  stewieEndCallButton2 = [(PHEmergencyDialerViewController *)self stewieEndCallButton];
  trailingAnchor2 = [stewieEndCallButton2 trailingAnchor];
  dialerView8 = [(PHEmergencyDialerViewController *)self dialerView];
  callButton6 = [dialerView8 callButton];
  leadingAnchor4 = [callButton6 leadingAnchor];
  v55 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4];

  [v55 setActive:1];
  backButton2 = [(PHEmergencyDialerViewController *)self backButton];
  centerXAnchor5 = [backButton2 centerXAnchor];
  dialerView9 = [(PHEmergencyDialerViewController *)self dialerView];
  phonePadView2 = [dialerView9 phonePadView];
  centerXAnchor6 = [phonePadView2 centerXAnchor];
  +[TPNumberPadLightStyleButton defaultSize];
  v61 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6 constant:?];

  [v61 setActive:1];
  view = [(PHEmergencyDialerViewController *)self view];
  bottomAnchor = [view bottomAnchor];
  backButton3 = [(PHEmergencyDialerViewController *)self backButton];
  lastBaselineAnchor = [backButton3 lastBaselineAnchor];
  [(PHEmergencyDialerViewController *)self bottomToCancelBaselineOffset];
  v66 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];

  [v66 setActive:1];
  useRTTButton = [(PHEmergencyDialerViewController *)self useRTTButton];
  centerXAnchor7 = [useRTTButton centerXAnchor];
  dialerView10 = [(PHEmergencyDialerViewController *)self dialerView];
  phonePadView3 = [dialerView10 phonePadView];
  centerXAnchor8 = [phonePadView3 centerXAnchor];
  +[TPNumberPadLightStyleButton defaultSize];
  v72 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8 constant:?];

  [v72 setActive:1];
  view2 = [(PHEmergencyDialerViewController *)self view];
  bottomAnchor2 = [view2 bottomAnchor];
  useRTTButton2 = [(PHEmergencyDialerViewController *)self useRTTButton];
  lastBaselineAnchor2 = [useRTTButton2 lastBaselineAnchor];
  [(PHEmergencyDialerViewController *)self bottomToCancelBaselineOffset];
  v77 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor2 constant:?];

  [v77 setActive:1];
}

- (void)dealloc
{
  if ([(PHEmergencyDialerViewController *)self shouldSetPresenceToken])
  {
    PHSetEmergencyDialerPresenceTokenValue();
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"continueCyclingEmergencyTitleLabel" object:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(NSTimer *)self->_callDurationTimer invalidate];
  callDurationTimer = self->_callDurationTimer;
  self->_callDurationTimer = 0;

  v5.receiver = self;
  v5.super_class = PHEmergencyDialerViewController;
  [(PHEmergencyDialerViewController *)&v5 dealloc];
}

- (TUSenderIdentityClient)senderIdentityClient
{
  senderIdentityClient = self->_senderIdentityClient;
  if (!senderIdentityClient)
  {
    v4 = objc_alloc_init(TUSenderIdentityClient);
    v5 = self->_senderIdentityClient;
    self->_senderIdentityClient = v4;

    senderIdentityClient = self->_senderIdentityClient;
  }

  return senderIdentityClient;
}

- (void)endButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    currentState = [(PHEmergencyDialerViewController *)self currentState];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PHEmergencyDialerViewController endButtonTapped:] current state is %d", buf, 8u);
  }

  [(PHEmergencyDialerViewController *)self setCallEnding:1];
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PHEmergencyDialerViewController endButtonTapped:] endbutton setEnabled:NO", buf, 2u);
  }

  [tappedCopy setEnabled:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = +[TUCallCenter sharedInstance];
  currentAudioAndVideoCalls = [v7 currentAudioAndVideoCalls];

  v9 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = +[TUCallCenter sharedInstance];
        [v14 disconnectCall:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [(PHEmergencyDialerViewController *)self updateEmergencyTitleLabelForCallDuration];
}

- (void)callButtonTapped:(id)tapped
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = [(PHEmergencyDialerViewController *)self currentState];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[PHEmergencyDialerViewController callButtonTapped:] current state is %d", v6, 8u);
  }

  if (![(PHEmergencyDialerViewController *)self currentState]|| [(PHEmergencyDialerViewController *)self currentState]== 3)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will attempt to dial emergency call", v6, 2u);
    }

    [(PHEmergencyDialerViewController *)self attemptToDialEmergencyCall];
  }
}

- (void)backButtonTapped:(id)tapped
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ending emergency callback mode due to back button tap", v6, 2u);
  }

  +[TUCallCapabilities endEmergencyCallbackMode];
  _remoteViewControllerProxy = [(PHEmergencyDialerViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismiss];
}

- (void)medicalIDButtonTapped:(id)tapped
{
  v4 = [UINavigationController alloc];
  medicalIDViewController = [(PHEmergencyDialerViewController *)self medicalIDViewController];
  v10 = [v4 initWithRootViewController:medicalIDViewController];

  navigationBar = [v10 navigationBar];
  [navigationBar setPrefersLargeTitles:1];

  [v10 setModalPresentationStyle:6];
  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissMedicalIDViewControllerIfNecessary"];
  medicalIDViewController2 = [(PHEmergencyDialerViewController *)self medicalIDViewController];
  navigationItem = [medicalIDViewController2 navigationItem];
  [navigationItem setRightBarButtonItem:v7];

  [(PHEmergencyDialerViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)dismissMedicalIDViewControllerIfNecessary
{
  presentedViewController = [(PHEmergencyDialerViewController *)self presentedViewController];
  medicalIDViewController = [(PHEmergencyDialerViewController *)self medicalIDViewController];
  navigationController = [medicalIDViewController navigationController];

  if (presentedViewController == navigationController)
  {

    [(PHEmergencyDialerViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PHEmergencyDialerViewController;
  [(PHEmergencyDialerViewController *)&v6 viewWillAppear:appear];
  if ([(PHEmergencyDialerViewController *)self shouldSetPresenceToken])
  {
    PHSetEmergencyDialerPresenceTokenValue();
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"callStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
  [v4 addObserver:self selector:"emergencyCallbackModeChangedNotification:" name:TUCallCapabilitiesEmergencyCallbackModeChangedNotification object:0];
  [v4 addObserver:self selector:"handleTUCallSupportsTTYWithVoiceChangedNotification:" name:TUCallSupportsTTYWithVoiceChangedNotification object:0];
  [v4 addObserver:self selector:"handleTUCallTTYTypeChangedNotification:" name:TUCallTTYTypeChangedNotification object:0];
  v5 = +[NSNotification PHAlertInvoked];
  [v4 addObserver:self selector:"handleAlertInvokedNotification:" name:v5 object:0];

  [(PHEmergencyDialerViewController *)self updateCurrentState];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v12.receiver = self;
  v12.super_class = PHEmergencyDialerViewController;
  [(PHEmergencyDialerViewController *)&v12 viewDidDisappear:disappear];
  if ([(PHEmergencyDialerViewController *)self shouldSetPresenceToken])
  {
    PHSetEmergencyDialerPresenceTokenValue();
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:TUCallCenterCallStatusChangedNotification object:0];
  [v4 removeObserver:self name:TUCallCapabilitiesEmergencyCallbackModeChangedNotification object:0];
  [v4 removeObserver:self name:TUCallSupportsTTYWithVoiceChangedNotification object:0];
  [v4 removeObserver:self name:TUCallTTYTypeChangedNotification object:0];
  v5 = +[NSNotification PHAlertInvoked];
  [v4 removeObserver:self name:v5 object:0];

  callDurationTimer = [(PHEmergencyDialerViewController *)self callDurationTimer];
  [callDurationTimer invalidate];

  [(PHEmergencyDialerViewController *)self setCallDurationTimer:0];
  [(PHEmergencyDialerViewController *)self setCurrentState:0];
  v7 = +[TUCallCenter sharedInstance];
  currentCallCount = [v7 currentCallCount];

  if (!currentCallCount)
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ending emergency callback mode due because the emergency dialer is disappearing with no current calls", v11, 2u);
    }

    +[TUCallCapabilities endEmergencyCallbackMode];
  }

  sub_1000BFF70();
  v10 = +[PHInCallUtilities sharedInstance];
  [v10 stopSuppressingInCallStatusBarForReason:@"PHSuppressInCallStatusBarForBuddyEmergencyCallReason"];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PHEmergencyDialerViewController;
  [(PHEmergencyDialerViewController *)&v4 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
}

- (void)updateCurrentState
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[TUCallCenter sharedInstance];
    currentCalls = [v4 currentCalls];
    v6 = +[TUCallCenter sharedInstance];
    v16 = 138412546;
    v17 = currentCalls;
    v18 = 2048;
    currentCallCount = [v6 currentCallCount];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "updateCurrentState: Calls are: %@. Count is %lu.", &v16, 0x16u);
  }

  v7 = +[TUCallCenter sharedInstance];
  currentCallCount2 = [v7 currentCallCount];

  if (currentCallCount2)
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "updateCurrentState: There are current calls, so setting state to PHEmergencyDialerStateInCall", &v16, 2u);
    }

    v10 = +[TUCallCenter sharedInstance];
    frontmostCall = [v10 frontmostCall];

    if ([frontmostCall canDisplayAlertUI:[(PHEmergencyDialerViewController *)self shouldPresentAlertButton]])
    {
      v12 = sub_100004F84();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: There are current calls and we need to show alertUI, so setting state to PHEmergencyDialerAlertModeNeededIfAvailable", &v16, 2u);
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v14 = +[TUCallCapabilities isEmergencyCallbackModeEnabled];
    frontmostCall = sub_100004F84();
    v15 = os_log_type_enabled(frontmostCall, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v15)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, frontmostCall, OS_LOG_TYPE_DEFAULT, "updateCurrentState: emergency callback mode is active, so setting state to PHEmergencyDialerStateEmergencyCallBackMode", &v16, 2u);
      }

      v13 = 3;
    }

    else
    {
      if (v15)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, frontmostCall, OS_LOG_TYPE_DEFAULT, "updateCurrentState: setting state to PHEmergencyDialerStateIdle", &v16, 2u);
      }

      v13 = 0;
    }
  }

  [(PHEmergencyDialerViewController *)self setCurrentState:v13];
}

- (void)setCurrentState:(signed __int16)state animated:(BOOL)animated
{
  stateCopy = state;
  if (self->_currentState != state)
  {
    animatedCopy = animated;
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = stateCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set Current State %d", buf, 8u);
    }

    if (stateCopy > 1)
    {
      if (stateCopy == 2)
      {
        alertFeedbackGenerator = [(PHEmergencyDialerViewController *)self alertFeedbackGenerator];
        [alertFeedbackGenerator notificationOccurred:0];

        v35 = +[NSBundle mainBundle];
        v36 = [v35 localizedStringForKey:@"ALERT_ERROR_LABEL" value:&stru_100361FD0 table:@"Localizable-Stewie"];
        dialerView = [(PHEmergencyDialerViewController *)self dialerView];
        emergencyTitleLabel = [dialerView emergencyTitleLabel];
        [emergencyTitleLabel setText:v36];

        dialerView2 = [(PHEmergencyDialerViewController *)self dialerView];
        objc_opt_class();
        LOBYTE(v36) = objc_opt_isKindOfClass();

        if (v36)
        {
          dialerView3 = [(PHEmergencyDialerViewController *)self dialerView];
          if ([dialerView3 numberOfLinesInEmergencyTitleLabel] >= 3)
          {
            v41 = +[NSBundle mainBundle];
            v42 = [v41 localizedStringForKey:@"ALERT_ERROR_LABEL_NO_LINE_BREAK" value:&stru_100361FD0 table:@"Localizable-Stewie"];
            dialerView4 = [(PHEmergencyDialerViewController *)self dialerView];
            emergencyTitleLabel2 = [dialerView4 emergencyTitleLabel];
            [emergencyTitleLabel2 setText:v42];
          }
        }

        if ([(PHEmergencyDialerViewController *)self shouldPresentAlertButton])
        {
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_1000C0F34;
          v49[3] = &unk_100356988;
          v49[4] = self;
          v45 = objc_retainBlock(v49);
          v46 = v45;
          if (animatedCopy)
          {
            v47 = sub_100004F84();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[PHEmergencyDialerViewController setCurrentState:] self.stewieEndCallButton.enabled = YES", buf, 2u);
            }

            [UIView animateWithDuration:v46 animations:0 completion:0.5];
          }

          else
          {
            (v45[2])(v45);
          }
        }

        else
        {
          v48 = sub_100004F84();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "shouldPresentAlertButton is false, skipping update stewie button", buf, 2u);
          }
        }
      }

      else if (stateCopy == 3)
      {
        callDurationTimer = [(PHEmergencyDialerViewController *)self callDurationTimer];
        [callDurationTimer invalidate];

        [(PHEmergencyDialerViewController *)self setCallDurationTimer:0];
        [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"continueCyclingEmergencyTitleLabel" object:0];
        v24 = +[NSBundle mainBundle];
        v25 = [v24 localizedStringForKey:@"EMERGENCY_CALL_MODE" value:&stru_100361FD0 table:@"EmergencyCallStrings"];
        dialerView5 = [(PHEmergencyDialerViewController *)self dialerView];
        emergencyTitleLabel3 = [dialerView5 emergencyTitleLabel];
        [emergencyTitleLabel3 setText:v25];

        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_1000C0E14;
        v50[3] = &unk_100356988;
        v50[4] = self;
        v28 = objc_retainBlock(v50);
        v29 = v28;
        if (animatedCopy)
        {
          [UIView animateWithDuration:v28 animations:0 completion:0.5];
        }

        else
        {
          (v28[2])(v28);
        }
      }
    }

    else if (stateCopy)
    {
      if (stateCopy == 1)
      {
        v53 = 0;
        v54 = &v53;
        v55 = 0x2020000000;
        v8 = off_1003B0E88;
        v56 = off_1003B0E88;
        if (!off_1003B0E88)
        {
          *buf = _NSConcreteStackBlock;
          v58 = 3221225472;
          v59 = sub_1000C3974;
          v60 = &unk_1003576A8;
          v61 = &v53;
          v9 = sub_1000C3800();
          v10 = dlsym(v9, "MSNMonitorBeginException");
          *(v61[1] + 24) = v10;
          off_1003B0E88 = *(v61[1] + 24);
          v8 = v54[3];
        }

        _Block_object_dispose(&v53, 8);
        if (!v8)
        {
          sub_10025485C();
          __break(1u);
        }

        v8("emergency");
        v11 = +[PHInCallUtilities sharedInstance];
        [v11 startSuppressingInCallStatusBarForReason:@"PHSuppressInCallStatusBarForBuddyEmergencyCallReason"];

        v12 = +[TUCallCenter sharedInstance];
        displayedCall = [v12 displayedCall];

        if (displayedCall && [displayedCall isEmergency])
        {
          dialerView6 = [(PHEmergencyDialerViewController *)self dialerView];
          lcdView = [dialerView6 lcdView];
          handle = [displayedCall handle];
          value = [handle value];
          [lcdView setText:value needsFormat:1];
        }

        [(PHEmergencyDialerViewController *)self updateEmergencyTitleLabelForCallDuration];
        callDurationTimer2 = [(PHEmergencyDialerViewController *)self callDurationTimer];
        [callDurationTimer2 invalidate];

        [(PHEmergencyDialerViewController *)self setCallDurationTimer:0];
        v19 = [NSTimer scheduledTimerWithTimeInterval:self target:"updateEmergencyTitleLabelForCallDuration" selector:0 userInfo:1 repeats:1.0];
        [(PHEmergencyDialerViewController *)self setCallDurationTimer:v19];

        [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"continueCyclingEmergencyTitleLabel" object:0];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_1000C0CD8;
        v51[3] = &unk_100356988;
        v51[4] = self;
        v20 = objc_retainBlock(v51);
        v21 = v20;
        if (animatedCopy)
        {
          v22 = sub_100004F84();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[PHEmergencyDialerViewController setCurrentState:] self.endButton.enabled = YES", buf, 2u);
          }

          [UIView animateWithDuration:v21 animations:0.5];
        }

        else
        {
          (v20[2])(v20);
        }
      }
    }

    else
    {
      sub_1000BFF70();
      v30 = +[PHInCallUtilities sharedInstance];
      [v30 stopSuppressingInCallStatusBarForReason:@"PHSuppressInCallStatusBarForBuddyEmergencyCallReason"];

      callDurationTimer3 = [(PHEmergencyDialerViewController *)self callDurationTimer];
      [callDurationTimer3 invalidate];

      [(PHEmergencyDialerViewController *)self setCallDurationTimer:0];
      [(PHEmergencyDialerViewController *)self continueCyclingEmergencyTitleLabel];
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_1000C0BB8;
      v52[3] = &unk_100356988;
      v52[4] = self;
      v32 = objc_retainBlock(v52);
      v33 = v32;
      if (animatedCopy)
      {
        [UIView animateWithDuration:v32 animations:0 completion:0.5];
      }

      else
      {
        (v32[2])(v32);
      }
    }
  }

  self->_currentState = stateCopy;
}

- (void)continueCyclingEmergencyTitleLabel
{
  dialerView = [(PHEmergencyDialerViewController *)self dialerView];
  emergencyTitleLabel = [dialerView emergencyTitleLabel];
  [emergencyTitleLabel startCyclingStrings];
}

- (void)callStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 138412546;
    *&v25[4] = objc_opt_class();
    *&v25[12] = 2112;
    *&v25[14] = notificationCopy;
    v6 = *&v25[4];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", v25, 0x16u);
  }

  [(PHEmergencyDialerViewController *)self setCallEnding:0];
  object = [notificationCopy object];
  if ([object status] == 3)
  {
    [(PHEmergencyDialerViewController *)self dismissMedicalIDViewControllerIfNecessary];
    [(PHEmergencyDialerViewController *)self setShouldPresentAlertButton:0];
    v8 = +[UIApplication sharedApplication];
    delegate = [v8 delegate];
    alertCoordinator = [delegate alertCoordinator];

    if (!alertCoordinator)
    {
      v11 = objc_alloc_init(_TtC13InCallService16AlertCoordinator);
      v12 = +[UIApplication sharedApplication];
      delegate2 = [v12 delegate];
      [delegate2 setAlertCoordinator:v11];
    }

    v14 = [UIApplication sharedApplication:*v25];
    delegate3 = [v14 delegate];
    alertCoordinator2 = [delegate3 alertCoordinator];
    [alertCoordinator2 setDelegate:self];

    v17 = +[UIApplication sharedApplication];
    delegate4 = [v17 delegate];
    alertCoordinator3 = [delegate4 alertCoordinator];
    isMonitoring = [alertCoordinator3 isMonitoring];

    v21 = +[UIApplication sharedApplication];
    delegate5 = [v21 delegate];
    alertCoordinator4 = [delegate5 alertCoordinator];
    v24 = alertCoordinator4;
    if (isMonitoring)
    {
      [alertCoordinator4 refreshDelegateWithState];
    }

    else
    {
      [alertCoordinator4 startMonitoring];
    }
  }

  [(PHEmergencyDialerViewController *)self refreshUseRTTButton:*v25];
  [(PHEmergencyDialerViewController *)self updateCurrentState];
}

- (void)emergencyCallbackModeChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Emergency callback mode changed notification %@", &v6, 0xCu);
  }

  [(PHEmergencyDialerViewController *)self updateCurrentState];
}

- (void)handleAlertInvokedNotification:(id)notification
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dismiss emergency dialer because we invoke stewie", v6, 2u);
  }

  +[TUCallCapabilities endEmergencyCallbackMode];
  _remoteViewControllerProxy = [(PHEmergencyDialerViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismiss];
}

- (void)phonePad:(id)pad appendString:(id)string
{
  dialerView = self->_dialerView;
  stringCopy = string;
  lcdView = [(PHEmergencyHandsetDialerView *)dialerView lcdView];
  [lcdView insertStringAtCurrentPosition:stringCopy];

  lcdView2 = [(PHEmergencyHandsetDialerView *)self->_dialerView lcdView];
  [lcdView2 setName:0 numberLabel:0 suggestion:0];
}

- (void)phonePadDeleteLastDigit:(id)digit
{
  lcdView = [(PHEmergencyHandsetDialerView *)self->_dialerView lcdView];
  [lcdView deleteCharacter];

  lcdView2 = [(PHEmergencyHandsetDialerView *)self->_dialerView lcdView];
  [lcdView2 setName:0 numberLabel:0 suggestion:0];
}

- (void)phonePad:(id)pad keyDown:(char)down
{
  v5 = +[TUCallCenter sharedInstance];
  currentCalls = [v5 currentCalls];
  firstObject = [currentCalls firstObject];

  v8 = firstObject;
  if (firstObject)
  {
    shouldPlayDTMFTone = [firstObject shouldPlayDTMFTone];
    v8 = firstObject;
    if (shouldPlayDTMFTone)
    {
      shouldPlayDTMFTone = [firstObject playDTMFToneForKey:down];
      v8 = firstObject;
    }
  }

  _objc_release_x1(shouldPlayDTMFTone, v8);
}

- (void)dialerViewTextDidChange:(id)change
{
  lcdView = [(PHEmergencyHandsetDialerView *)self->_dialerView lcdView];
  [lcdView setName:0 numberLabel:0 suggestion:0];
}

- (id)currentCallStatusStringForDisplay
{
  v2 = +[TUCallCenter sharedInstance];
  displayedCall = [v2 displayedCall];

  if (!displayedCall)
  {
    v10 = &stru_100361FD0;
    goto LABEL_15;
  }

  status = [displayedCall status];
  if (status == 4)
  {
    v7 = +[NSBundle conversationKit];
    v8 = v7;
    v9 = @"CALLING";
  }

  else
  {
    v5 = status;
    if (status == 3)
    {
      hasBeenRedirected = [displayedCall hasBeenRedirected];
      v7 = +[NSBundle conversationKit];
      v8 = v7;
      if (hasBeenRedirected)
      {
        v9 = @"REDIRECTED";
      }

      else
      {
        v9 = @"CALLING";
      }
    }

    else if ([displayedCall isOnHold])
    {
      v7 = +[NSBundle conversationKit];
      v8 = v7;
      v9 = @"HOLD_LABEL";
    }

    else
    {
      if (v5 != 6)
      {
        callDurationString = [displayedCall callDurationString];
        v8 = callDurationString;
        v17 = @"00:00";
        if (callDurationString)
        {
          v17 = callDurationString;
        }

        v11 = v17;
        goto LABEL_14;
      }

      v7 = +[NSBundle conversationKit];
      v8 = v7;
      v9 = @"CALL_ENDED";
    }
  }

  v11 = [v7 localizedStringForKey:v9 value:&stru_100361FD0 table:@"CallStatus"];
LABEL_14:
  v10 = v11;

LABEL_15:
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"EMERGENCY_CALL_%@" value:&stru_100361FD0 table:@"EmergencyCallStrings"];
  v14 = [NSString stringWithFormat:v13, v10];

  return v14;
}

- (void)updateEmergencyTitleLabelForCallDuration
{
  if ([(PHEmergencyDialerViewController *)self currentState]== 1)
  {
    currentCallStatusStringForDisplay = [(PHEmergencyDialerViewController *)self currentCallStatusStringForDisplay];
    dialerView = [(PHEmergencyDialerViewController *)self dialerView];
    emergencyTitleLabel = [dialerView emergencyTitleLabel];
    [emergencyTitleLabel setText:currentCallStatusStringForDisplay];
  }
}

- (void)noteTintColorForBackgroundStyleChanged:(id)changed
{
  changedCopy = changed;
  v8.receiver = self;
  v8.super_class = PHEmergencyDialerViewController;
  [(PHEmergencyDialerViewController *)&v8 noteTintColorForBackgroundStyleChanged:changedCopy];
  v5 = +[PHInCallUtilities sharedInstance];
  isSetupAssistantRunning = [v5 isSetupAssistantRunning];

  if (isSetupAssistantRunning)
  {
    view = [(PHEmergencyDialerViewController *)self view];
    [view setBackgroundColor:changedCopy];
  }
}

- (void)noteViewMovedOffscreenTemporarily
{
  v5.receiver = self;
  v5.super_class = PHEmergencyDialerViewController;
  [(PHEmergencyDialerViewController *)&v5 noteViewMovedOffscreenTemporarily];
  dialerView = [(PHEmergencyDialerViewController *)self dialerView];
  lcdView = [dialerView lcdView];
  [lcdView setText:&stru_100361FD0 needsFormat:0];

  [(PHEmergencyDialerViewController *)self dismissMedicalIDViewControllerIfNecessary];
}

- (double)bottomToCancelBaselineOffset
{
  if ([PHUIConfiguration shouldUseExplicitLayoutDimensions:2])
  {

    [(PHEmergencyDialerViewController *)self bottomToCancelBaselineOffsetForDxDevices];
  }

  else
  {
    v3 = +[PHUIConfiguration handsetDialerSpacing];
    result = 26.0;
    if ((v3 - 3) <= 3)
    {
      return dbl_1002F9420[(v3 - 3)];
    }
  }

  return result;
}

- (double)bottomToCancelBaselineOffsetForDxDevices
{
  v2 = +[PHUIConfiguration screenSize];
  if ((v2 - 11) > 4)
  {
    return 52.0;
  }

  else
  {
    return dbl_1002F9440[(v2 - 11)];
  }
}

- (id)digits
{
  dialerView = [(PHEmergencyDialerViewController *)self dialerView];
  lcdView = [dialerView lcdView];
  text = [lcdView text];

  v5 = [text stringByApplyingTransform:NSStringTransformToLatin reverse:0];
  if (v5)
  {
    v6 = TUNetworkCountryCode();
    v7 = [TUPhoneNumber phoneNumberWithDigits:v5 countryCode:v6];

    digits = [v7 digits];

    if (![digits length])
    {
      v9 = v5;

      digits = v9;
    }

    text = digits;
  }

  return text;
}

+ (BOOL)isEmergencyNumber:(id)number
{
  numberCopy = number;
  v4 = +[PHApplicationServices sharedInstance];
  callProviderManager = [v4 callProviderManager];
  emergencyProvider = [callProviderManager emergencyProvider];

  v7 = objc_alloc_init(TUSenderIdentityClient);
  prioritizedSenderIdentities = [emergencyProvider prioritizedSenderIdentities];
  v9 = [prioritizedSenderIdentities count];
  v10 = sub_100004F84();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 138412290;
      v26 = numberCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Checking whether the digits %@ are an emergency telephone number.", buf, 0xCu);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = prioritizedSenderIdentities;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v13)
    {
      v20 = emergencyProvider;
      v14 = *v22;
      while (2)
      {
        for (i = 0; i != v13; i = (i + 1))
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          uUID = [v16 UUID];
          v18 = [v7 isEmergencyNumberForDigits:numberCopy senderIdentityUUID:uUID];

          if (v18)
          {
            v13 = sub_100004F84();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v26 = numberCopy;
              v27 = 2112;
              v28 = v16;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Digits %@ are an emergency telephone number for sender identity %@.", buf, 0x16u);
            }

            LOBYTE(v13) = 1;
            goto LABEL_16;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_16:
      emergencyProvider = v20;
    }
  }

  else
  {
    if (v11)
    {
      *buf = 138412290;
      v26 = numberCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Checking whether the digits %@ is an emergency telephone number for nil sender identity.", buf, 0xCu);
    }

    LOBYTE(v13) = [v7 isEmergencyNumberForDigits:numberCopy senderIdentityUUID:0];
  }

  return v13;
}

- (BOOL)shouldShowAirplaneEmergencyCallAlertForDialRequest:(id)request
{
  requestCopy = request;
  if (PHIsInAirplaneMode() && [requestCopy isValid] && objc_msgSend(requestCopy, "dialType") == 1 && (objc_msgSend(requestCopy, "isSOS") & 1) == 0)
  {
    localSenderIdentityUUID = [requestCopy localSenderIdentityUUID];
    if (localSenderIdentityUUID)
    {
      localSenderIdentityUUID2 = [requestCopy localSenderIdentityUUID];
      if ([TUCallCapabilities canAttemptEmergencyCallsWithoutCellularConnectionWithUUID:localSenderIdentityUUID2])
      {
        v4 = +[TUCallCapabilities supportsPrimaryCalling];
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
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)attemptToDialEmergencyCall
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"continueCyclingEmergencyTitleLabel" object:0];
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[TUCallCenter sharedInstance];
    currentCallCount = [v4 currentCallCount];
    v6 = @"NO";
    if (!currentCallCount)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v39 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PHEmergencyDialerViewController dialEmergencyCall]: current call count is 0: %@", buf, 0xCu);
  }

  v7 = +[TUCallCenter sharedInstance];
  currentCallCount2 = [v7 currentCallCount];

  if (!currentCallCount2)
  {
    digits = [(PHEmergencyDialerViewController *)self digits];
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = digits;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "dialEmergencyCall: digits to dial is %@", buf, 0xCu);
    }

    if ([(__CFString *)digits length])
    {
      v11 = +[ICSApplicationServices sharedInstance];
      callProviderManager = [v11 callProviderManager];

      emergencyProvider = [callProviderManager emergencyProvider];
      v14 = sub_100004F84();
      v15 = v14;
      if (emergencyProvider)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "dialEmergencyCall: dialing non-TTY emergency call", buf, 2u);
        }

        v16 = [[TUDialRequest alloc] initWithProvider:emergencyProvider];
        v17 = [TUHandle handleWithDestinationID:digits];
        [v16 setHandle:v17];

        [v16 setPerformDialAssist:0];
        [v16 setOriginatingUIType:1];
        prioritizedSenderIdentities = [emergencyProvider prioritizedSenderIdentities];
        firstObject = [prioritizedSenderIdentities firstObject];
        uUID = [firstObject UUID];
        [v16 setLocalSenderIdentityUUID:uUID];

        prioritizedSenderIdentities2 = [emergencyProvider prioritizedSenderIdentities];
        firstObject2 = [prioritizedSenderIdentities2 firstObject];
        accountUUID = [firstObject2 accountUUID];
        [v16 setLocalSenderIdentityAccountUUID:accountUUID];

        senderIdentityClient = [(PHEmergencyDialerViewController *)self senderIdentityClient];
        v15 = [v16 dialRequestByResolvingDialTypeUsingSenderIdentityClient:senderIdentityClient];

        if ([(PHEmergencyDialerViewController *)self shouldShowAirplaneEmergencyCallAlertForDialRequest:v15])
        {
          v25 = sub_100004F84();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "An emergency call is being attempted with airplane mode enabled but Wi-Fi calling is available.", buf, 2u);
          }

          v26 = [PHAirplaneEmergencyCallAlert alloc];
          v32 = _NSConcreteStackBlock;
          v33 = 3221225472;
          v34 = sub_1000C2454;
          v35 = &unk_100356D10;
          selfCopy = self;
          v15 = v15;
          v37 = v15;
          v27 = [(PHAirplaneEmergencyCallAlert *)v26 initWithDialAction:&v32];
          [(PHAirplaneEmergencyCallAlert *)v27 showOnViewController:self, v32, v33, v34, v35, selfCopy];
        }

        else
        {
          v28 = PHShouldAttemptCallWithDialRequest();
          v29 = sub_100004F84();
          v30 = v29;
          if (v28)
          {
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Attempting an emergency call using a cellular network.", buf, 2u);
            }

            [(PHEmergencyDialerViewController *)self dialEmergencyCallForDialRequest:v15];
          }

          else
          {
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_10025636C(v30);
            }

            v31 = [UIAlertController networkUnavailableAlertControllerWithCallProvider:emergencyProvider dialType:1 senderIdentityUUID:0];
            if (v31)
            {
              [(PHEmergencyDialerViewController *)self presentViewController:v31 animated:1 completion:0];
            }
          }
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1002563B0(callProviderManager, v15);
      }
    }
  }
}

- (void)dialEmergencyCallForDialRequest:(id)request
{
  requestCopy = request;
  if (![(PHEmergencyDialerViewController *)self shouldShowRTTAlertForDialRequest:requestCopy])
  {
    goto LABEL_6;
  }

  v5 = sub_10001A58C();
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  handle = [requestCopy handle];
  value = [handle value];

  if ([value destinationIdIsPhoneNumber])
  {
    v9 = TUHomeCountryCode();
    v10 = TUFormattedPhoneNumber();

    value = v10;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v56 = 0x2020000000;
  v57 = 1;
  v11 = dispatch_semaphore_create(0);
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1000C2B50;
  v51[3] = &unk_100358D28;
  v52 = requestCopy;
  p_buf = &buf;
  v12 = v11;
  v53 = v12;
  [v6 displayCallPromptForContact:value withCompletion:v51];
  v13 = dispatch_time(0, 15000000000);
  dispatch_semaphore_wait(v12, v13);
  [v6 cancelCallPromptDisplay];
  v14 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  if (v14)
  {
LABEL_6:
    handle2 = [requestCopy handle];
    value2 = [handle2 value];
    v17 = TUIsMMIOrUSSDNumber();

    if (v17)
    {
      v18 = sub_100004F84();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "dialEmergencyCall: Digits to dial are MMI/USSD, so dialing directly as a normal dial request", &buf, 2u);
      }

      v46 = _NSConcreteStackBlock;
      v47 = 3221225472;
      v48 = sub_1000C2BD0;
      v49 = &unk_1003569B0;
      v19 = requestCopy;
      v50 = v19;
      v20 = objc_retainBlock(&v46);
      handle3 = [v19 handle];
      value3 = [handle3 value];
      v23 = [PHInCallUIUtilities shouldRequestPasscodeUnlockForMMICode:value3];

      if (v23)
      {
        v24 = +[PHInCallUtilities sharedInstance];
        [v24 requestPasscodeUnlockWithCompletion:v20];
      }

      else
      {
        (v20[2])(v20, 1);
      }

      v33 = v50;
    }

    else
    {
      v25 = +[PHInCallUtilities sharedInstance];
      isSetupAssistantRunning = [v25 isSetupAssistantRunning];

      v27 = +[UIApplication sharedApplication];
      isPasscodeRequiredToUnlock = [v27 isPasscodeRequiredToUnlock];

      v29 = PHPreferencesGetValueInDomain();
      LOBYTE(v27) = [v29 BOOLValue];

      if (!(v27 & 1 | (((isSetupAssistantRunning | isPasscodeRequiredToUnlock | +[APApplication isPhoneAppLocked]) & 1) == 0)))
      {
        [requestCopy setDialType:1];
        if (isPasscodeRequiredToUnlock)
        {
          v30 = 2;
        }

        else
        {
          v30 = 0;
        }

        [requestCopy setOriginatingUIType:v30];
      }

      v31 = sub_100004F84();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = requestCopy;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "dialEmergencyCall: preparing to dial request %@", &buf, 0xCu);
      }

      v32 = +[TUCallCenter sharedInstance];
      v33 = [v32 dialWithRequest:requestCopy];

      v34 = sub_100004F84();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v33;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "dialEmergencyCall: emergency call from request is %@", &buf, 0xCu);
      }

      if (!v33)
      {
        goto LABEL_28;
      }

      if (_os_feature_enabled_impl())
      {
        v35 = sub_100004F84();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: request full screen presentation for call from lock screen", &buf, 2u);
        }

        v36 = +[UIApplication sharedApplication];
        delegate = [v36 delegate];
        [delegate requestPresentationForCall:v33 dialRequest:requestCopy];

        v38 = sub_100004F84();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: dismiss emergency dialer due to ICS launch", &buf, 2u);
        }

        +[TUCallCapabilities endEmergencyCallbackMode];
        _remoteViewControllerProxy = [(PHEmergencyDialerViewController *)self _remoteViewControllerProxy];
        [_remoteViewControllerProxy dismiss];
      }

      if ([v33 status] == 6)
      {
LABEL_28:
        v40 = +[NSBundle mainBundle];
        v41 = [v40 localizedStringForKey:@"EMERGENCY_CALLS_ONLY" value:&stru_100361FD0 table:@"EmergencyCallStrings"];
        dialerView = [(PHEmergencyDialerViewController *)self dialerView];
        emergencyTitleLabel = [dialerView emergencyTitleLabel];
        [emergencyTitleLabel setText:v41];

        dialerView2 = [(PHEmergencyDialerViewController *)self dialerView];
        lcdView = [dialerView2 lcdView];
        [lcdView setText:&stru_100361FD0 needsFormat:0];

        [(PHEmergencyDialerViewController *)self performSelector:"continueCyclingEmergencyTitleLabel" withObject:0 afterDelay:3.0];
      }
    }
  }
}

- (void)handleUseRTTActionForButtonSender:(id)sender event:(id)event
{
  senderCopy = sender;
  useRTTButton = [(PHEmergencyDialerViewController *)self useRTTButton];

  if (useRTTButton == senderCopy)
  {
    v9 = +[TUCallCenter sharedInstance];
    v7 = +[TUCallCenter sharedInstance];
    frontmostCall = [v7 frontmostCall];
    [v9 setTTYType:1 forCall:frontmostCall];
  }
}

- (void)refreshUseRTTButton
{
  shouldShowUseRTTButton = [(PHEmergencyDialerViewController *)self shouldShowUseRTTButton];
  useRTTButton = [(PHEmergencyDialerViewController *)self useRTTButton];
  [useRTTButton setAlpha:shouldShowUseRTTButton];

  shouldShowUseRTTButton2 = [(PHEmergencyDialerViewController *)self shouldShowUseRTTButton];
  useRTTButton2 = [(PHEmergencyDialerViewController *)self useRTTButton];
  [useRTTButton2 setEnabled:shouldShowUseRTTButton2];
}

- (BOOL)shouldShowRTTAlertForDialRequest:(id)request
{
  requestCopy = request;
  v4 = +[TUCallCenter sharedInstance];
  if ([v4 currentCallCount] || !objc_msgSend(requestCopy, "isValid"))
  {
    isTTYAvailable = 0;
  }

  else
  {
    provider = [requestCopy provider];
    if ([provider isTelephonyProvider])
    {
      if ([requestCopy isRTTAvailable])
      {
        isTTYAvailable = 1;
      }

      else
      {
        isTTYAvailable = [requestCopy isTTYAvailable];
      }
    }

    else
    {
      isTTYAvailable = 0;
    }
  }

  return isTTYAvailable;
}

- (BOOL)shouldShowUseRTTButton
{
  v2 = +[TUCallCenter sharedInstance];
  frontmostCall = [v2 frontmostCall];

  if (frontmostCall && [frontmostCall status] == 1 && (objc_msgSend(frontmostCall, "isRTT") & 1) == 0 && (objc_msgSend(frontmostCall, "isTTY") & 1) == 0 && objc_msgSend(frontmostCall, "supportsTTYWithVoice"))
  {
    v4 = +[TUCallCenter sharedInstance];
    v5 = [v4 currentCallCount] == 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"should not";
    if (v5)
    {
      v7 = @"should";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = frontmostCall;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Determined that the Use RTT button %@ be presented during the emergency call %@.", &v9, 0x16u);
  }

  return v5;
}

- (UIButton)useRTTButton
{
  useRTTButton = self->_useRTTButton;
  if (!useRTTButton)
  {
    v4 = sub_10001A58C();
    v5 = +[TUCallCenter sharedInstance];
    frontmostCall = [v5 frontmostCall];

    v7 = [PHEdgeInsetButton buttonWithType:1];
    [(UIButton *)v7 setTouchAreaEdgeInsets:-15.0, -15.0, -15.0, -15.0];
    [(UIButton *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v7 addTarget:self action:"handleUseRTTActionForButtonSender:event:" forControlEvents:64];
    localSenderIdentityUUID = [frontmostCall localSenderIdentityUUID];
    v9 = [v4 rttDisplayName:1 forSubscriptionContextUUID:localSenderIdentityUUID];
    [(UIButton *)v7 setTitle:v9 forState:0];

    v10 = +[UIColor blackColor];
    [(UIButton *)v7 setTitleColor:v10 forState:0];

    v11 = +[PHUIConfiguration handsetDialerSpacing];
    v12 = 16.0;
    if (!v11)
    {
      v12 = 14.0;
    }

    v13 = [UIFont systemFontOfSize:v12];
    titleLabel = [(UIButton *)v7 titleLabel];
    [titleLabel setFont:v13];

    titleLabel2 = [(UIButton *)v7 titleLabel];
    [titleLabel2 setTextAlignment:1];

    v16 = self->_useRTTButton;
    self->_useRTTButton = v7;

    useRTTButton = self->_useRTTButton;
  }

  return useRTTButton;
}

- (void)handleTUCallSupportsTTYWithVoiceChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHEmergencyDialerViewController *)self refreshUseRTTButton];
}

- (void)handleTUCallTTYTypeChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHEmergencyDialerViewController *)self refreshUseRTTButton];
}

- (void)stewieAlertButtonTapped:(id)tapped
{
  v5 = +[UIApplication sharedApplication];
  delegate = [v5 delegate];
  alertCoordinator = [delegate alertCoordinator];
  [alertCoordinator invokeAlertWithRequestUnlock:1 automaticallyInvoked:0];
}

- (void)alertWillInvoke
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PHAlertDisconnectingCallsNotification" object:0];
}

- (void)updatePresentationStateWithAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  if ([(PHEmergencyDialerViewController *)self shouldPresentAlertButton]!= allowed)
  {
    [(PHEmergencyDialerViewController *)self setShouldPresentAlertButton:allowedCopy];

    [(PHEmergencyDialerViewController *)self updateCurrentState];
  }
}

@end