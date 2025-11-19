@interface PHEmergencyDialerViewController
+ (BOOL)isEmergencyNumber:(id)a3;
- (BOOL)shouldShowAirplaneEmergencyCallAlertForDialRequest:(id)a3;
- (BOOL)shouldShowRTTAlertForDialRequest:(id)a3;
- (BOOL)shouldShowUseRTTButton;
- (PHEmergencyDialerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (TUSenderIdentityClient)senderIdentityClient;
- (UIButton)useRTTButton;
- (double)bottomToCancelBaselineOffset;
- (double)bottomToCancelBaselineOffsetForDxDevices;
- (id)currentCallStatusStringForDisplay;
- (id)digits;
- (void)alertWillInvoke;
- (void)attemptToDialEmergencyCall;
- (void)backButtonTapped:(id)a3;
- (void)callButtonTapped:(id)a3;
- (void)callStatusChangedNotification:(id)a3;
- (void)continueCyclingEmergencyTitleLabel;
- (void)dealloc;
- (void)dialEmergencyCallForDialRequest:(id)a3;
- (void)dialerViewTextDidChange:(id)a3;
- (void)dismissMedicalIDViewControllerIfNecessary;
- (void)emergencyCallbackModeChangedNotification:(id)a3;
- (void)endButtonTapped:(id)a3;
- (void)handleAlertInvokedNotification:(id)a3;
- (void)handleTUCallSupportsTTYWithVoiceChangedNotification:(id)a3;
- (void)handleTUCallTTYTypeChangedNotification:(id)a3;
- (void)handleUseRTTActionForButtonSender:(id)a3 event:(id)a4;
- (void)loadConstraints;
- (void)loadView;
- (void)medicalIDButtonTapped:(id)a3;
- (void)noteTintColorForBackgroundStyleChanged:(id)a3;
- (void)noteViewMovedOffscreenTemporarily;
- (void)phonePad:(id)a3 appendString:(id)a4;
- (void)phonePad:(id)a3 keyDown:(char)a4;
- (void)phonePadDeleteLastDigit:(id)a3;
- (void)refreshUseRTTButton;
- (void)setCurrentState:(signed __int16)a3 animated:(BOOL)a4;
- (void)stewieAlertButtonTapped:(id)a3;
- (void)updateCurrentState;
- (void)updateEmergencyTitleLabelForCallDuration;
- (void)updatePresentationStateWithAllowed:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PHEmergencyDialerViewController

- (PHEmergencyDialerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = PHEmergencyDialerViewController;
  v4 = [(PHEmergencyDialerViewController *)&v9 initWithNibName:a3 bundle:a4];
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
  v4 = [v3 isSetupAssistantRunning];

  if (v4)
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
  v12 = [[PHEmergencyHandsetDialerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  dialerView = self->_dialerView;
  self->_dialerView = v12;

  v14 = [(PHEmergencyHandsetDialerView *)self->_dialerView phonePadView];
  [v14 setPlaysSounds:1];

  [(PHEmergencyHandsetDialerView *)self->_dialerView setAutoresizingMask:18];
  [(PHEmergencyHandsetDialerView *)self->_dialerView setDelegate:self];
  [(PHEmergencyHandsetDialerView *)self->_dialerView bounds];
  v58 = v10;
  [v10 setFrame:?];
  [v10 addSubview:self->_dialerView];
  v15 = [(PHEmergencyHandsetDialerView *)self->_dialerView callButton];
  [v15 addTarget:self action:"callButtonTapped:" forEvents:64];

  v16 = [(PHEmergencyHandsetDialerView *)self->_dialerView deleteButton];
  [v16 addTarget:self action:"deleteButtonTapped:" forEvents:64];

  v17 = [(PHEmergencyHandsetDialerView *)self->_dialerView phonePadView];
  [v17 setDelegate:self];

  v18 = [PHEdgeInsetButton buttonWithType:1];
  [v18 setTouchAreaEdgeInsets:{-15.0, -15.0, -15.0, -15.0}];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 addTarget:self action:"backButtonTapped:" forControlEvents:64];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"EmergencyCallStrings"];
  [v18 setTitle:v20 forState:0];

  v21 = +[UIColor blackColor];
  [v18 setTitleColor:v21 forState:0];

  v22 = [v18 titleLabel];
  if (+[PHUIConfiguration handsetDialerSpacing])
  {
    v23 = 16.0;
  }

  else
  {
    v23 = 14.0;
  }

  v24 = [UIFont systemFontOfSize:v23];
  [v22 setFont:v24];

  v25 = [v18 titleLabel];
  [v25 setTextAlignment:1];

  v26 = [(PHEmergencyDialerViewController *)self view];
  [v26 addSubview:v18];

  [(PHEmergencyDialerViewController *)self setBackButton:v18];
  v27 = [(PHEmergencyDialerViewController *)self view];
  v28 = [(PHEmergencyDialerViewController *)self useRTTButton];
  [v27 addSubview:v28];

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

  v33 = [v29 titleLabel];
  if (+[PHUIConfiguration handsetDialerSpacing])
  {
    v34 = 16.0;
  }

  else
  {
    v34 = 14.0;
  }

  v35 = [UIFont systemFontOfSize:v34];
  [v33 setFont:v35];

  v36 = [UIImage tpImageForSymbolType:38 pointSize:10.0];
  [v29 setImage:v36 forState:0];

  v37 = +[UIColor systemRedColor];
  [v29 _setImageColor:v37 forState:0];

  v38 = +[UIApplication sharedApplication];
  v39 = [v38 userInterfaceLayoutDirection];

  if (v39 == 1)
  {
    v40 = -3.0;
  }

  else
  {
    v40 = 3.0;
  }

  if (v39 == 1)
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
  v42 = [(PHEmergencyDialerViewController *)self view];
  [v42 addSubview:v29];

  [(PHEmergencyDialerViewController *)self setMedicalIDButton:v29];
  v43 = [(PHEmergencyDialerViewController *)self healthStore];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_1000BED94;
  v59[3] = &unk_100358D00;
  v59[4] = self;
  [v43 fetchMedicalIDDataWithCompletion:v59];

  v57 = [[PHBottomBarButtonConfiguration alloc] initWithAction:15];
  v44 = [[PHBottomBarButton alloc] initWithConfiguration:v57 appType:2];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v44 addTarget:self action:"endButtonTapped:" forControlEvents:64];
  [v44 setAlpha:0.0];
  v45 = [(PHEmergencyDialerViewController *)self view];
  [v45 addSubview:v44];

  [(PHEmergencyDialerViewController *)self setEndButton:v44];
  v46 = [[PHBottomBarButtonConfiguration alloc] initWithAction:38];
  v47 = [[PHBottomBarButton alloc] initWithConfiguration:v46 appType:2];
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v47 addTarget:self action:"stewieAlertButtonTapped:" forControlEvents:64];
  [v47 setAlpha:0.0];
  v48 = [(PHEmergencyDialerViewController *)self view];
  [v48 addSubview:v47];

  [(PHEmergencyDialerViewController *)self setStewieAlertButton:v47];
  v49 = [(PHEmergencyDialerViewController *)self stewieAlertButton];
  v50 = +[UIColor blackColor];
  [v49 setTitleColor:v50 forState:0];

  v51 = [[PHBottomBarButtonConfiguration alloc] initWithAction:39];
  v52 = [[PHBottomBarButton alloc] initWithConfiguration:v51 appType:2];
  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v52 addTarget:self action:"endButtonTapped:" forControlEvents:64];
  [v52 setAlpha:0.0];
  v53 = [(PHEmergencyDialerViewController *)self view];
  [v53 addSubview:v52];

  [(PHEmergencyDialerViewController *)self setStewieEndCallButton:v52];
  v54 = [(PHEmergencyDialerViewController *)self stewieEndCallButton];
  v55 = +[UIColor blackColor];
  [v54 setTitleColor:v55 forState:0];

  v56 = objc_alloc_init(UINotificationFeedbackGenerator);
  [(PHEmergencyDialerViewController *)self setAlertFeedbackGenerator:v56];

  [(PHEmergencyDialerViewController *)self loadConstraints];
  [(PHEmergencyDialerViewController *)self updateCurrentState];
}

- (void)loadConstraints
{
  v3 = [(PHEmergencyDialerViewController *)self dialerView];
  v4 = [v3 phonePadView];
  v5 = [v4 centerXAnchor];
  v6 = [(PHEmergencyDialerViewController *)self medicalIDButton];
  v7 = [v6 centerXAnchor];
  +[TPNumberPadLightStyleButton defaultSize];
  v8 = [v5 constraintEqualToAnchor:v7 constant:?];

  LODWORD(v9) = 1144750080;
  [v8 setPriority:v9];
  [v8 setActive:1];
  v10 = [(PHEmergencyDialerViewController *)self medicalIDButton];
  v11 = [v10 leadingAnchor];
  v12 = [(PHEmergencyDialerViewController *)self dialerView];
  v13 = [v12 leadingAnchor];
  v14 = [v11 constraintGreaterThanOrEqualToAnchor:v13 constant:15.0];

  [v14 setActive:1];
  v15 = [(PHEmergencyDialerViewController *)self medicalIDButton];
  v16 = [v15 centerYAnchor];
  v17 = [(PHEmergencyDialerViewController *)self backButton];
  v18 = [v17 centerYAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];

  [v19 setActive:1];
  v20 = [(PHEmergencyDialerViewController *)self endButton];
  v21 = [v20 centerXAnchor];
  v22 = [(PHEmergencyDialerViewController *)self dialerView];
  v23 = [v22 callButton];
  v24 = [v23 centerXAnchor];
  v25 = [v21 constraintEqualToAnchor:v24];

  [v25 setActive:1];
  v26 = [(PHEmergencyDialerViewController *)self endButton];
  v27 = [v26 centerYAnchor];
  v28 = [(PHEmergencyDialerViewController *)self dialerView];
  v29 = [v28 callButton];
  v30 = [v29 centerYAnchor];
  v31 = [v27 constraintEqualToAnchor:v30];

  [v31 setActive:1];
  v32 = [(PHEmergencyDialerViewController *)self stewieAlertButton];
  v33 = [v32 centerYAnchor];
  v34 = [(PHEmergencyDialerViewController *)self dialerView];
  v35 = [v34 callButton];
  v36 = [v35 centerYAnchor];
  v37 = [v33 constraintEqualToAnchor:v36];

  [v37 setActive:1];
  v38 = [(PHEmergencyDialerViewController *)self stewieAlertButton];
  v39 = [v38 leadingAnchor];
  v40 = [(PHEmergencyDialerViewController *)self dialerView];
  v41 = [v40 callButton];
  v42 = [v41 trailingAnchor];
  v43 = [v39 constraintEqualToAnchor:v42];

  [v43 setActive:1];
  v44 = [(PHEmergencyDialerViewController *)self stewieEndCallButton];
  v45 = [v44 centerYAnchor];
  v46 = [(PHEmergencyDialerViewController *)self dialerView];
  v47 = [v46 callButton];
  v48 = [v47 centerYAnchor];
  v49 = [v45 constraintEqualToAnchor:v48];

  [v49 setActive:1];
  v50 = [(PHEmergencyDialerViewController *)self stewieEndCallButton];
  v51 = [v50 trailingAnchor];
  v52 = [(PHEmergencyDialerViewController *)self dialerView];
  v53 = [v52 callButton];
  v54 = [v53 leadingAnchor];
  v55 = [v51 constraintEqualToAnchor:v54];

  [v55 setActive:1];
  v56 = [(PHEmergencyDialerViewController *)self backButton];
  v57 = [v56 centerXAnchor];
  v58 = [(PHEmergencyDialerViewController *)self dialerView];
  v59 = [v58 phonePadView];
  v60 = [v59 centerXAnchor];
  +[TPNumberPadLightStyleButton defaultSize];
  v61 = [v57 constraintEqualToAnchor:v60 constant:?];

  [v61 setActive:1];
  v62 = [(PHEmergencyDialerViewController *)self view];
  v63 = [v62 bottomAnchor];
  v64 = [(PHEmergencyDialerViewController *)self backButton];
  v65 = [v64 lastBaselineAnchor];
  [(PHEmergencyDialerViewController *)self bottomToCancelBaselineOffset];
  v66 = [v63 constraintEqualToAnchor:v65 constant:?];

  [v66 setActive:1];
  v67 = [(PHEmergencyDialerViewController *)self useRTTButton];
  v68 = [v67 centerXAnchor];
  v69 = [(PHEmergencyDialerViewController *)self dialerView];
  v70 = [v69 phonePadView];
  v71 = [v70 centerXAnchor];
  +[TPNumberPadLightStyleButton defaultSize];
  v72 = [v68 constraintEqualToAnchor:v71 constant:?];

  [v72 setActive:1];
  v73 = [(PHEmergencyDialerViewController *)self view];
  v74 = [v73 bottomAnchor];
  v75 = [(PHEmergencyDialerViewController *)self useRTTButton];
  v76 = [v75 lastBaselineAnchor];
  [(PHEmergencyDialerViewController *)self bottomToCancelBaselineOffset];
  v77 = [v74 constraintEqualToAnchor:v76 constant:?];

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

- (void)endButtonTapped:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v21 = [(PHEmergencyDialerViewController *)self currentState];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PHEmergencyDialerViewController endButtonTapped:] current state is %d", buf, 8u);
  }

  [(PHEmergencyDialerViewController *)self setCallEnding:1];
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PHEmergencyDialerViewController endButtonTapped:] endbutton setEnabled:NO", buf, 2u);
  }

  [v4 setEnabled:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = +[TUCallCenter sharedInstance];
  v8 = [v7 currentAudioAndVideoCalls];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = +[TUCallCenter sharedInstance];
        [v14 disconnectCall:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [(PHEmergencyDialerViewController *)self updateEmergencyTitleLabelForCallDuration];
}

- (void)callButtonTapped:(id)a3
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

- (void)backButtonTapped:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ending emergency callback mode due to back button tap", v6, 2u);
  }

  +[TUCallCapabilities endEmergencyCallbackMode];
  v5 = [(PHEmergencyDialerViewController *)self _remoteViewControllerProxy];
  [v5 dismiss];
}

- (void)medicalIDButtonTapped:(id)a3
{
  v4 = [UINavigationController alloc];
  v5 = [(PHEmergencyDialerViewController *)self medicalIDViewController];
  v10 = [v4 initWithRootViewController:v5];

  v6 = [v10 navigationBar];
  [v6 setPrefersLargeTitles:1];

  [v10 setModalPresentationStyle:6];
  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissMedicalIDViewControllerIfNecessary"];
  v8 = [(PHEmergencyDialerViewController *)self medicalIDViewController];
  v9 = [v8 navigationItem];
  [v9 setRightBarButtonItem:v7];

  [(PHEmergencyDialerViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)dismissMedicalIDViewControllerIfNecessary
{
  v3 = [(PHEmergencyDialerViewController *)self presentedViewController];
  v4 = [(PHEmergencyDialerViewController *)self medicalIDViewController];
  v5 = [v4 navigationController];

  if (v3 == v5)
  {

    [(PHEmergencyDialerViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PHEmergencyDialerViewController;
  [(PHEmergencyDialerViewController *)&v6 viewWillAppear:a3];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = PHEmergencyDialerViewController;
  [(PHEmergencyDialerViewController *)&v12 viewDidDisappear:a3];
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

  v6 = [(PHEmergencyDialerViewController *)self callDurationTimer];
  [v6 invalidate];

  [(PHEmergencyDialerViewController *)self setCallDurationTimer:0];
  [(PHEmergencyDialerViewController *)self setCurrentState:0];
  v7 = +[TUCallCenter sharedInstance];
  v8 = [v7 currentCallCount];

  if (!v8)
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

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = PHEmergencyDialerViewController;
  [(PHEmergencyDialerViewController *)&v4 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
}

- (void)updateCurrentState
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[TUCallCenter sharedInstance];
    v5 = [v4 currentCalls];
    v6 = +[TUCallCenter sharedInstance];
    v16 = 138412546;
    v17 = v5;
    v18 = 2048;
    v19 = [v6 currentCallCount];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "updateCurrentState: Calls are: %@. Count is %lu.", &v16, 0x16u);
  }

  v7 = +[TUCallCenter sharedInstance];
  v8 = [v7 currentCallCount];

  if (v8)
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "updateCurrentState: There are current calls, so setting state to PHEmergencyDialerStateInCall", &v16, 2u);
    }

    v10 = +[TUCallCenter sharedInstance];
    v11 = [v10 frontmostCall];

    if ([v11 canDisplayAlertUI:[(PHEmergencyDialerViewController *)self shouldPresentAlertButton]])
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
    v11 = sub_100004F84();
    v15 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v15)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "updateCurrentState: emergency callback mode is active, so setting state to PHEmergencyDialerStateEmergencyCallBackMode", &v16, 2u);
      }

      v13 = 3;
    }

    else
    {
      if (v15)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "updateCurrentState: setting state to PHEmergencyDialerStateIdle", &v16, 2u);
      }

      v13 = 0;
    }
  }

  [(PHEmergencyDialerViewController *)self setCurrentState:v13];
}

- (void)setCurrentState:(signed __int16)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (self->_currentState != a3)
  {
    v6 = a4;
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set Current State %d", buf, 8u);
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v34 = [(PHEmergencyDialerViewController *)self alertFeedbackGenerator];
        [v34 notificationOccurred:0];

        v35 = +[NSBundle mainBundle];
        v36 = [v35 localizedStringForKey:@"ALERT_ERROR_LABEL" value:&stru_100361FD0 table:@"Localizable-Stewie"];
        v37 = [(PHEmergencyDialerViewController *)self dialerView];
        v38 = [v37 emergencyTitleLabel];
        [v38 setText:v36];

        v39 = [(PHEmergencyDialerViewController *)self dialerView];
        objc_opt_class();
        LOBYTE(v36) = objc_opt_isKindOfClass();

        if (v36)
        {
          v40 = [(PHEmergencyDialerViewController *)self dialerView];
          if ([v40 numberOfLinesInEmergencyTitleLabel] >= 3)
          {
            v41 = +[NSBundle mainBundle];
            v42 = [v41 localizedStringForKey:@"ALERT_ERROR_LABEL_NO_LINE_BREAK" value:&stru_100361FD0 table:@"Localizable-Stewie"];
            v43 = [(PHEmergencyDialerViewController *)self dialerView];
            v44 = [v43 emergencyTitleLabel];
            [v44 setText:v42];
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
          if (v6)
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

      else if (v4 == 3)
      {
        v23 = [(PHEmergencyDialerViewController *)self callDurationTimer];
        [v23 invalidate];

        [(PHEmergencyDialerViewController *)self setCallDurationTimer:0];
        [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"continueCyclingEmergencyTitleLabel" object:0];
        v24 = +[NSBundle mainBundle];
        v25 = [v24 localizedStringForKey:@"EMERGENCY_CALL_MODE" value:&stru_100361FD0 table:@"EmergencyCallStrings"];
        v26 = [(PHEmergencyDialerViewController *)self dialerView];
        v27 = [v26 emergencyTitleLabel];
        [v27 setText:v25];

        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_1000C0E14;
        v50[3] = &unk_100356988;
        v50[4] = self;
        v28 = objc_retainBlock(v50);
        v29 = v28;
        if (v6)
        {
          [UIView animateWithDuration:v28 animations:0 completion:0.5];
        }

        else
        {
          (v28[2])(v28);
        }
      }
    }

    else if (v4)
    {
      if (v4 == 1)
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
        v13 = [v12 displayedCall];

        if (v13 && [v13 isEmergency])
        {
          v14 = [(PHEmergencyDialerViewController *)self dialerView];
          v15 = [v14 lcdView];
          v16 = [v13 handle];
          v17 = [v16 value];
          [v15 setText:v17 needsFormat:1];
        }

        [(PHEmergencyDialerViewController *)self updateEmergencyTitleLabelForCallDuration];
        v18 = [(PHEmergencyDialerViewController *)self callDurationTimer];
        [v18 invalidate];

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
        if (v6)
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

      v31 = [(PHEmergencyDialerViewController *)self callDurationTimer];
      [v31 invalidate];

      [(PHEmergencyDialerViewController *)self setCallDurationTimer:0];
      [(PHEmergencyDialerViewController *)self continueCyclingEmergencyTitleLabel];
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_1000C0BB8;
      v52[3] = &unk_100356988;
      v52[4] = self;
      v32 = objc_retainBlock(v52);
      v33 = v32;
      if (v6)
      {
        [UIView animateWithDuration:v32 animations:0 completion:0.5];
      }

      else
      {
        (v32[2])(v32);
      }
    }
  }

  self->_currentState = v4;
}

- (void)continueCyclingEmergencyTitleLabel
{
  v3 = [(PHEmergencyDialerViewController *)self dialerView];
  v2 = [v3 emergencyTitleLabel];
  [v2 startCyclingStrings];
}

- (void)callStatusChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 138412546;
    *&v25[4] = objc_opt_class();
    *&v25[12] = 2112;
    *&v25[14] = v4;
    v6 = *&v25[4];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", v25, 0x16u);
  }

  [(PHEmergencyDialerViewController *)self setCallEnding:0];
  v7 = [v4 object];
  if ([v7 status] == 3)
  {
    [(PHEmergencyDialerViewController *)self dismissMedicalIDViewControllerIfNecessary];
    [(PHEmergencyDialerViewController *)self setShouldPresentAlertButton:0];
    v8 = +[UIApplication sharedApplication];
    v9 = [v8 delegate];
    v10 = [v9 alertCoordinator];

    if (!v10)
    {
      v11 = objc_alloc_init(_TtC13InCallService16AlertCoordinator);
      v12 = +[UIApplication sharedApplication];
      v13 = [v12 delegate];
      [v13 setAlertCoordinator:v11];
    }

    v14 = [UIApplication sharedApplication:*v25];
    v15 = [v14 delegate];
    v16 = [v15 alertCoordinator];
    [v16 setDelegate:self];

    v17 = +[UIApplication sharedApplication];
    v18 = [v17 delegate];
    v19 = [v18 alertCoordinator];
    v20 = [v19 isMonitoring];

    v21 = +[UIApplication sharedApplication];
    v22 = [v21 delegate];
    v23 = [v22 alertCoordinator];
    v24 = v23;
    if (v20)
    {
      [v23 refreshDelegateWithState];
    }

    else
    {
      [v23 startMonitoring];
    }
  }

  [(PHEmergencyDialerViewController *)self refreshUseRTTButton:*v25];
  [(PHEmergencyDialerViewController *)self updateCurrentState];
}

- (void)emergencyCallbackModeChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Emergency callback mode changed notification %@", &v6, 0xCu);
  }

  [(PHEmergencyDialerViewController *)self updateCurrentState];
}

- (void)handleAlertInvokedNotification:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dismiss emergency dialer because we invoke stewie", v6, 2u);
  }

  +[TUCallCapabilities endEmergencyCallbackMode];
  v5 = [(PHEmergencyDialerViewController *)self _remoteViewControllerProxy];
  [v5 dismiss];
}

- (void)phonePad:(id)a3 appendString:(id)a4
{
  dialerView = self->_dialerView;
  v6 = a4;
  v7 = [(PHEmergencyHandsetDialerView *)dialerView lcdView];
  [v7 insertStringAtCurrentPosition:v6];

  v8 = [(PHEmergencyHandsetDialerView *)self->_dialerView lcdView];
  [v8 setName:0 numberLabel:0 suggestion:0];
}

- (void)phonePadDeleteLastDigit:(id)a3
{
  v4 = [(PHEmergencyHandsetDialerView *)self->_dialerView lcdView];
  [v4 deleteCharacter];

  v5 = [(PHEmergencyHandsetDialerView *)self->_dialerView lcdView];
  [v5 setName:0 numberLabel:0 suggestion:0];
}

- (void)phonePad:(id)a3 keyDown:(char)a4
{
  v5 = +[TUCallCenter sharedInstance];
  v6 = [v5 currentCalls];
  v9 = [v6 firstObject];

  v8 = v9;
  if (v9)
  {
    v7 = [v9 shouldPlayDTMFTone];
    v8 = v9;
    if (v7)
    {
      v7 = [v9 playDTMFToneForKey:a4];
      v8 = v9;
    }
  }

  _objc_release_x1(v7, v8);
}

- (void)dialerViewTextDidChange:(id)a3
{
  v3 = [(PHEmergencyHandsetDialerView *)self->_dialerView lcdView];
  [v3 setName:0 numberLabel:0 suggestion:0];
}

- (id)currentCallStatusStringForDisplay
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 displayedCall];

  if (!v3)
  {
    v10 = &stru_100361FD0;
    goto LABEL_15;
  }

  v4 = [v3 status];
  if (v4 == 4)
  {
    v7 = +[NSBundle conversationKit];
    v8 = v7;
    v9 = @"CALLING";
  }

  else
  {
    v5 = v4;
    if (v4 == 3)
    {
      v6 = [v3 hasBeenRedirected];
      v7 = +[NSBundle conversationKit];
      v8 = v7;
      if (v6)
      {
        v9 = @"REDIRECTED";
      }

      else
      {
        v9 = @"CALLING";
      }
    }

    else if ([v3 isOnHold])
    {
      v7 = +[NSBundle conversationKit];
      v8 = v7;
      v9 = @"HOLD_LABEL";
    }

    else
    {
      if (v5 != 6)
      {
        v16 = [v3 callDurationString];
        v8 = v16;
        v17 = @"00:00";
        if (v16)
        {
          v17 = v16;
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
    v5 = [(PHEmergencyDialerViewController *)self currentCallStatusStringForDisplay];
    v3 = [(PHEmergencyDialerViewController *)self dialerView];
    v4 = [v3 emergencyTitleLabel];
    [v4 setText:v5];
  }
}

- (void)noteTintColorForBackgroundStyleChanged:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PHEmergencyDialerViewController;
  [(PHEmergencyDialerViewController *)&v8 noteTintColorForBackgroundStyleChanged:v4];
  v5 = +[PHInCallUtilities sharedInstance];
  v6 = [v5 isSetupAssistantRunning];

  if (v6)
  {
    v7 = [(PHEmergencyDialerViewController *)self view];
    [v7 setBackgroundColor:v4];
  }
}

- (void)noteViewMovedOffscreenTemporarily
{
  v5.receiver = self;
  v5.super_class = PHEmergencyDialerViewController;
  [(PHEmergencyDialerViewController *)&v5 noteViewMovedOffscreenTemporarily];
  v3 = [(PHEmergencyDialerViewController *)self dialerView];
  v4 = [v3 lcdView];
  [v4 setText:&stru_100361FD0 needsFormat:0];

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
  v2 = [(PHEmergencyDialerViewController *)self dialerView];
  v3 = [v2 lcdView];
  v4 = [v3 text];

  v5 = [v4 stringByApplyingTransform:NSStringTransformToLatin reverse:0];
  if (v5)
  {
    v6 = TUNetworkCountryCode();
    v7 = [TUPhoneNumber phoneNumberWithDigits:v5 countryCode:v6];

    v8 = [v7 digits];

    if (![v8 length])
    {
      v9 = v5;

      v8 = v9;
    }

    v4 = v8;
  }

  return v4;
}

+ (BOOL)isEmergencyNumber:(id)a3
{
  v3 = a3;
  v4 = +[PHApplicationServices sharedInstance];
  v5 = [v4 callProviderManager];
  v6 = [v5 emergencyProvider];

  v7 = objc_alloc_init(TUSenderIdentityClient);
  v8 = [v6 prioritizedSenderIdentities];
  v9 = [v8 count];
  v10 = sub_100004F84();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 138412290;
      v26 = v3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Checking whether the digits %@ are an emergency telephone number.", buf, 0xCu);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v13)
    {
      v20 = v6;
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
          v17 = [v16 UUID];
          v18 = [v7 isEmergencyNumberForDigits:v3 senderIdentityUUID:v17];

          if (v18)
          {
            v13 = sub_100004F84();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v26 = v3;
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
      v6 = v20;
    }
  }

  else
  {
    if (v11)
    {
      *buf = 138412290;
      v26 = v3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Checking whether the digits %@ is an emergency telephone number for nil sender identity.", buf, 0xCu);
    }

    LOBYTE(v13) = [v7 isEmergencyNumberForDigits:v3 senderIdentityUUID:0];
  }

  return v13;
}

- (BOOL)shouldShowAirplaneEmergencyCallAlertForDialRequest:(id)a3
{
  v3 = a3;
  if (PHIsInAirplaneMode() && [v3 isValid] && objc_msgSend(v3, "dialType") == 1 && (objc_msgSend(v3, "isSOS") & 1) == 0)
  {
    v6 = [v3 localSenderIdentityUUID];
    if (v6)
    {
      v7 = [v3 localSenderIdentityUUID];
      if ([TUCallCapabilities canAttemptEmergencyCallsWithoutCellularConnectionWithUUID:v7])
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
    v5 = [v4 currentCallCount];
    v6 = @"NO";
    if (!v5)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v39 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PHEmergencyDialerViewController dialEmergencyCall]: current call count is 0: %@", buf, 0xCu);
  }

  v7 = +[TUCallCenter sharedInstance];
  v8 = [v7 currentCallCount];

  if (!v8)
  {
    v9 = [(PHEmergencyDialerViewController *)self digits];
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "dialEmergencyCall: digits to dial is %@", buf, 0xCu);
    }

    if ([(__CFString *)v9 length])
    {
      v11 = +[ICSApplicationServices sharedInstance];
      v12 = [v11 callProviderManager];

      v13 = [v12 emergencyProvider];
      v14 = sub_100004F84();
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "dialEmergencyCall: dialing non-TTY emergency call", buf, 2u);
        }

        v16 = [[TUDialRequest alloc] initWithProvider:v13];
        v17 = [TUHandle handleWithDestinationID:v9];
        [v16 setHandle:v17];

        [v16 setPerformDialAssist:0];
        [v16 setOriginatingUIType:1];
        v18 = [v13 prioritizedSenderIdentities];
        v19 = [v18 firstObject];
        v20 = [v19 UUID];
        [v16 setLocalSenderIdentityUUID:v20];

        v21 = [v13 prioritizedSenderIdentities];
        v22 = [v21 firstObject];
        v23 = [v22 accountUUID];
        [v16 setLocalSenderIdentityAccountUUID:v23];

        v24 = [(PHEmergencyDialerViewController *)self senderIdentityClient];
        v15 = [v16 dialRequestByResolvingDialTypeUsingSenderIdentityClient:v24];

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
          v36 = self;
          v15 = v15;
          v37 = v15;
          v27 = [(PHAirplaneEmergencyCallAlert *)v26 initWithDialAction:&v32];
          [(PHAirplaneEmergencyCallAlert *)v27 showOnViewController:self, v32, v33, v34, v35, v36];
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

            v31 = [UIAlertController networkUnavailableAlertControllerWithCallProvider:v13 dialType:1 senderIdentityUUID:0];
            if (v31)
            {
              [(PHEmergencyDialerViewController *)self presentViewController:v31 animated:1 completion:0];
            }
          }
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1002563B0(v12, v15);
      }
    }
  }
}

- (void)dialEmergencyCallForDialRequest:(id)a3
{
  v4 = a3;
  if (![(PHEmergencyDialerViewController *)self shouldShowRTTAlertForDialRequest:v4])
  {
    goto LABEL_6;
  }

  v5 = sub_10001A58C();
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v4 handle];
  v8 = [v7 value];

  if ([v8 destinationIdIsPhoneNumber])
  {
    v9 = TUHomeCountryCode();
    v10 = TUFormattedPhoneNumber();

    v8 = v10;
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
  v52 = v4;
  p_buf = &buf;
  v12 = v11;
  v53 = v12;
  [v6 displayCallPromptForContact:v8 withCompletion:v51];
  v13 = dispatch_time(0, 15000000000);
  dispatch_semaphore_wait(v12, v13);
  [v6 cancelCallPromptDisplay];
  v14 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  if (v14)
  {
LABEL_6:
    v15 = [v4 handle];
    v16 = [v15 value];
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
      v19 = v4;
      v50 = v19;
      v20 = objc_retainBlock(&v46);
      v21 = [v19 handle];
      v22 = [v21 value];
      v23 = [PHInCallUIUtilities shouldRequestPasscodeUnlockForMMICode:v22];

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
      v26 = [v25 isSetupAssistantRunning];

      v27 = +[UIApplication sharedApplication];
      v28 = [v27 isPasscodeRequiredToUnlock];

      v29 = PHPreferencesGetValueInDomain();
      LOBYTE(v27) = [v29 BOOLValue];

      if (!(v27 & 1 | (((v26 | v28 | +[APApplication isPhoneAppLocked]) & 1) == 0)))
      {
        [v4 setDialType:1];
        if (v28)
        {
          v30 = 2;
        }

        else
        {
          v30 = 0;
        }

        [v4 setOriginatingUIType:v30];
      }

      v31 = sub_100004F84();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v4;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "dialEmergencyCall: preparing to dial request %@", &buf, 0xCu);
      }

      v32 = +[TUCallCenter sharedInstance];
      v33 = [v32 dialWithRequest:v4];

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
        v37 = [v36 delegate];
        [v37 requestPresentationForCall:v33 dialRequest:v4];

        v38 = sub_100004F84();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: dismiss emergency dialer due to ICS launch", &buf, 2u);
        }

        +[TUCallCapabilities endEmergencyCallbackMode];
        v39 = [(PHEmergencyDialerViewController *)self _remoteViewControllerProxy];
        [v39 dismiss];
      }

      if ([v33 status] == 6)
      {
LABEL_28:
        v40 = +[NSBundle mainBundle];
        v41 = [v40 localizedStringForKey:@"EMERGENCY_CALLS_ONLY" value:&stru_100361FD0 table:@"EmergencyCallStrings"];
        v42 = [(PHEmergencyDialerViewController *)self dialerView];
        v43 = [v42 emergencyTitleLabel];
        [v43 setText:v41];

        v44 = [(PHEmergencyDialerViewController *)self dialerView];
        v45 = [v44 lcdView];
        [v45 setText:&stru_100361FD0 needsFormat:0];

        [(PHEmergencyDialerViewController *)self performSelector:"continueCyclingEmergencyTitleLabel" withObject:0 afterDelay:3.0];
      }
    }
  }
}

- (void)handleUseRTTActionForButtonSender:(id)a3 event:(id)a4
{
  v5 = a3;
  v6 = [(PHEmergencyDialerViewController *)self useRTTButton];

  if (v6 == v5)
  {
    v9 = +[TUCallCenter sharedInstance];
    v7 = +[TUCallCenter sharedInstance];
    v8 = [v7 frontmostCall];
    [v9 setTTYType:1 forCall:v8];
  }
}

- (void)refreshUseRTTButton
{
  v3 = [(PHEmergencyDialerViewController *)self shouldShowUseRTTButton];
  v4 = [(PHEmergencyDialerViewController *)self useRTTButton];
  [v4 setAlpha:v3];

  v5 = [(PHEmergencyDialerViewController *)self shouldShowUseRTTButton];
  v6 = [(PHEmergencyDialerViewController *)self useRTTButton];
  [v6 setEnabled:v5];
}

- (BOOL)shouldShowRTTAlertForDialRequest:(id)a3
{
  v3 = a3;
  v4 = +[TUCallCenter sharedInstance];
  if ([v4 currentCallCount] || !objc_msgSend(v3, "isValid"))
  {
    v6 = 0;
  }

  else
  {
    v5 = [v3 provider];
    if ([v5 isTelephonyProvider])
    {
      if ([v3 isRTTAvailable])
      {
        v6 = 1;
      }

      else
      {
        v6 = [v3 isTTYAvailable];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)shouldShowUseRTTButton
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 frontmostCall];

  if (v3 && [v3 status] == 1 && (objc_msgSend(v3, "isRTT") & 1) == 0 && (objc_msgSend(v3, "isTTY") & 1) == 0 && objc_msgSend(v3, "supportsTTYWithVoice"))
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
    v12 = v3;
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
    v6 = [v5 frontmostCall];

    v7 = [PHEdgeInsetButton buttonWithType:1];
    [(UIButton *)v7 setTouchAreaEdgeInsets:-15.0, -15.0, -15.0, -15.0];
    [(UIButton *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v7 addTarget:self action:"handleUseRTTActionForButtonSender:event:" forControlEvents:64];
    v8 = [v6 localSenderIdentityUUID];
    v9 = [v4 rttDisplayName:1 forSubscriptionContextUUID:v8];
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
    v14 = [(UIButton *)v7 titleLabel];
    [v14 setFont:v13];

    v15 = [(UIButton *)v7 titleLabel];
    [v15 setTextAlignment:1];

    v16 = self->_useRTTButton;
    self->_useRTTButton = v7;

    useRTTButton = self->_useRTTButton;
  }

  return useRTTButton;
}

- (void)handleTUCallSupportsTTYWithVoiceChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHEmergencyDialerViewController *)self refreshUseRTTButton];
}

- (void)handleTUCallTTYTypeChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHEmergencyDialerViewController *)self refreshUseRTTButton];
}

- (void)stewieAlertButtonTapped:(id)a3
{
  v5 = +[UIApplication sharedApplication];
  v3 = [v5 delegate];
  v4 = [v3 alertCoordinator];
  [v4 invokeAlertWithRequestUnlock:1 automaticallyInvoked:0];
}

- (void)alertWillInvoke
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PHAlertDisconnectingCallsNotification" object:0];
}

- (void)updatePresentationStateWithAllowed:(BOOL)a3
{
  v3 = a3;
  if ([(PHEmergencyDialerViewController *)self shouldPresentAlertButton]!= a3)
  {
    [(PHEmergencyDialerViewController *)self setShouldPresentAlertButton:v3];

    [(PHEmergencyDialerViewController *)self updateCurrentState];
  }
}

@end