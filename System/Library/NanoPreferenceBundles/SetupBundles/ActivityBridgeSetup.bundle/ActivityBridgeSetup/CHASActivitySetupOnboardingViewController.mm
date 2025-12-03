@interface CHASActivitySetupOnboardingViewController
+ (void)performEndToEndCloudSyncOnSkippingSetupForHealthStore:(id)store;
- (BOOL)holdBeforeDisplaying;
- (CHASActivitySetupOnboardingViewController)initWithPresentationContext:(int64_t)context;
- (id)animationController;
- (id)detailString;
- (id)detailTitleString;
- (id)imageResourceBundleIdentifier;
- (id)okayButtonTitle;
- (id)privacyBundles;
- (id)suggestedButtonTitle;
- (id)tapToRadarMetadata;
- (id)titleString;
- (void)_timeoutAndMoveOn:(id)on;
- (void)didReceiveMemoryWarning;
- (void)okayButtonPressed:(id)pressed;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation CHASActivitySetupOnboardingViewController

- (CHASActivitySetupOnboardingViewController)initWithPresentationContext:(int64_t)context
{
  v7.receiver = self;
  v7.super_class = CHASActivitySetupOnboardingViewController;
  v4 = [(CHASActivitySetupOnboardingViewController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_presentationContext = context;
    [(CHASActivitySetupOnboardingViewController *)v4 setStyle:98];
  }

  return v5;
}

- (id)titleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HEALTH_TITLE" value:&stru_35FD0 table:@"ActivitySetup"];

  return v3;
}

- (id)imageResourceBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (id)animationController
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  LOBYTE(v5) = 1;
  v3 = [BPSAnimationControllingBuilder animationControllerWithFileName:@"Screen-Animation-Fitness" fileExtension:0 fileType:0 initialState:0 targetState:0 bundle:v2 autoStart:0.5 startDelay:v5];

  return v3;
}

- (id)privacyBundles
{
  v4 = @"com.apple.onboarding.activity";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)suggestedButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HEALTH_CHOICE_OK" value:&stru_35FD0 table:@"ActivitySetup"];

  return v3;
}

- (id)okayButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SKIP_THIS_STEP" value:&stru_35FD0 table:@"ActivitySetup"];

  return v3;
}

- (id)detailTitleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WHAT_IS_HEALTH" value:&stru_35FD0 table:@"ActivitySetup"];

  return v3;
}

- (id)detailString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HEALTH_DETAIL_FYI" value:&stru_35FD0 table:@"ActivitySetup"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  _HKInitializeLogging();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Started Health Setup", v6, 2u);
  }

  delegate = [(CHASActivitySetupOnboardingViewController *)self delegate];
  [delegate buddyControllerDone:self nextControllerClass:objc_opt_class()];
}

- (void)okayButtonPressed:(id)pressed
{
  _HKInitializeLogging();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Skipped Health Setup", v9, 2u);
  }

  delegate = [(CHASActivitySetupOnboardingViewController *)self delegate];
  activePairingDevice = [delegate activePairingDevice];

  v7 = FIUIHealthStoreForDevice();
  [CHASActivitySetupOnboardingViewController performEndToEndCloudSyncOnSkippingSetupForHealthStore:v7];
  delegate2 = [(CHASActivitySetupOnboardingViewController *)self delegate];
  [delegate2 buddyControllerDone:self];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CHASActivitySetupOnboardingViewController;
  [(CHASActivitySetupOnboardingViewController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = CHASActivitySetupOnboardingViewController;
  [(CHASActivitySetupOnboardingViewController *)&v2 didReceiveMemoryWarning];
}

+ (void)performEndToEndCloudSyncOnSkippingSetupForHealthStore:(id)store
{
  storeCopy = store;
  v5 = FIGetActivePairedDevice();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v6 = qword_3CF80;
  v18 = qword_3CF80;
  if (!qword_3CF80)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2C14;
    v14[3] = &unk_354B0;
    v14[4] = &v15;
    sub_2C14(v14);
    v6 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v6)
  {
    sub_20F34();
    v12 = v11;
    _Block_object_dispose(&v15, 8);
    _Unwind_Resume(v12);
  }

  v7 = [v5 valueForProperty:*v6];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = [[HKSecondaryDevicePairingAgent alloc] initWithHealthStore:storeCopy];
    pairingID = [v5 pairingID];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_25B4;
    v13[3] = &unk_35410;
    v13[4] = self;
    [v9 performEndToEndCloudSyncWithNRDeviceUUID:pairingID syncParticipantFirst:1 completion:v13];
  }
}

- (id)tapToRadarMetadata
{
  v2 = [[BPSTTRMetadata alloc] initWithComponent:2];

  return v2;
}

- (BOOL)holdBeforeDisplaying
{
  delegate = [(CHASActivitySetupOnboardingViewController *)self delegate];
  activePairingDevice = [delegate activePairingDevice];

  v5 = [[NSUUID alloc] initWithUUIDString:@"DB36394D-9CED-4841-BA1D-84B029EA25BB"];
  v6 = [activePairingDevice supportsCapability:v5];

  if (v6)
  {
    if (!self->_healthQueue)
    {
      v7 = dispatch_queue_create("com.apple.Bridge.healthqueue", 0);
      healthQueue = self->_healthQueue;
      self->_healthQueue = v7;
    }

    v9 = [NSTimer timerWithTimeInterval:self target:"_timeoutAndMoveOn:" selector:0 userInfo:0 repeats:5.0];
    hasExistingMoveGoalTimer = self->_hasExistingMoveGoalTimer;
    self->_hasExistingMoveGoalTimer = v9;

    v11 = +[NSRunLoop currentRunLoop];
    [v11 addTimer:self->_hasExistingMoveGoalTimer forMode:NSRunLoopCommonModes];

    v12 = self->_healthQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2868;
    v14[3] = &unk_35488;
    v15 = activePairingDevice;
    selfCopy = self;
    dispatch_async(v12, v14);
  }

  return v6;
}

- (void)_timeoutAndMoveOn:(id)on
{
  _HKInitializeLogging();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_FAULT))
  {
    sub_2105C(v4);
  }

  delegate = [(CHASActivitySetupOnboardingViewController *)self delegate];
  activePairingDevice = [delegate activePairingDevice];

  v7 = FIUIHealthStoreForDevice();
  [CHASActivitySetupOnboardingViewController performEndToEndCloudSyncOnSkippingSetupForHealthStore:v7];
  delegate2 = [(CHASActivitySetupOnboardingViewController *)self delegate];
  [delegate2 buddyControllerReleaseHoldAndSkip:self];
}

@end