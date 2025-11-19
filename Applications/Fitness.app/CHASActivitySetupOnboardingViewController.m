@interface CHASActivitySetupOnboardingViewController
+ (void)performEndToEndCloudSyncOnSkippingSetupForHealthStore:(id)a3;
- (BOOL)holdBeforeDisplaying;
- (CHASActivitySetupOnboardingViewController)initWithPresentationContext:(int64_t)a3;
- (id)animationController;
- (id)detailString;
- (id)detailTitleString;
- (id)imageResourceBundleIdentifier;
- (id)okayButtonTitle;
- (id)privacyBundles;
- (id)suggestedButtonTitle;
- (id)tapToRadarMetadata;
- (id)titleString;
- (void)_timeoutAndMoveOn:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)okayButtonPressed:(id)a3;
- (void)suggestedButtonPressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation CHASActivitySetupOnboardingViewController

- (CHASActivitySetupOnboardingViewController)initWithPresentationContext:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CHASActivitySetupOnboardingViewController;
  v4 = [(CHASActivitySetupOnboardingViewController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_presentationContext = a3;
    [(CHASActivitySetupOnboardingViewController *)v4 setStyle:98];
  }

  return v5;
}

- (id)titleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HEALTH_TITLE" value:&stru_1008680E8 table:@"ActivitySetup"];

  return v3;
}

- (id)imageResourceBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleIdentifier];

  return v3;
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
  v3 = [v2 localizedStringForKey:@"HEALTH_CHOICE_OK" value:&stru_1008680E8 table:@"ActivitySetup"];

  return v3;
}

- (id)okayButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SKIP_THIS_STEP" value:&stru_1008680E8 table:@"ActivitySetup"];

  return v3;
}

- (id)detailTitleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WHAT_IS_HEALTH" value:&stru_1008680E8 table:@"ActivitySetup"];

  return v3;
}

- (id)detailString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HEALTH_DETAIL_FYI" value:&stru_1008680E8 table:@"ActivitySetup"];

  return v3;
}

- (void)suggestedButtonPressed:(id)a3
{
  _HKInitializeLogging();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Started Health Setup", v6, 2u);
  }

  v5 = [(CHASActivitySetupOnboardingViewController *)self delegate];
  [v5 buddyControllerDone:self nextControllerClass:objc_opt_class()];
}

- (void)okayButtonPressed:(id)a3
{
  _HKInitializeLogging();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skipped Health Setup", v9, 2u);
  }

  v5 = [(CHASActivitySetupOnboardingViewController *)self delegate];
  v6 = [v5 activePairingDevice];

  v7 = FIUIHealthStoreForDevice();
  [CHASActivitySetupOnboardingViewController performEndToEndCloudSyncOnSkippingSetupForHealthStore:v7];
  v8 = [(CHASActivitySetupOnboardingViewController *)self delegate];
  [v8 buddyControllerDone:self];
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

+ (void)performEndToEndCloudSyncOnSkippingSetupForHealthStore:(id)a3
{
  v4 = a3;
  v5 = FIGetActivePairedDevice();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v6 = qword_1008F9930;
  v18 = qword_1008F9930;
  if (!qword_1008F9930)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000B5154;
    v14[3] = &unk_10083A998;
    v14[4] = &v15;
    sub_1000B5154(v14);
    v6 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v6)
  {
    sub_10069B458();
    v12 = v11;
    _Block_object_dispose(&v15, 8);
    _Unwind_Resume(v12);
  }

  v7 = [v5 valueForProperty:*v6];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = [[HKSecondaryDevicePairingAgent alloc] initWithHealthStore:v4];
    v10 = [v5 pairingID];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B4AF4;
    v13[3] = &unk_10083A8F8;
    v13[4] = a1;
    [v9 performEndToEndCloudSyncWithNRDeviceUUID:v10 syncParticipantFirst:1 completion:v13];
  }
}

- (id)tapToRadarMetadata
{
  v2 = [[BPSTTRMetadata alloc] initWithComponent:2];

  return v2;
}

- (BOOL)holdBeforeDisplaying
{
  v3 = [(CHASActivitySetupOnboardingViewController *)self delegate];
  v4 = [v3 activePairingDevice];

  v5 = [[NSUUID alloc] initWithUUIDString:@"DB36394D-9CED-4841-BA1D-84B029EA25BB"];
  v6 = [v4 supportsCapability:v5];

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
    v14[2] = sub_1000B4DA8;
    v14[3] = &unk_10083A970;
    v15 = v4;
    v16 = self;
    dispatch_async(v12, v14);
  }

  return v6;
}

- (void)_timeoutAndMoveOn:(id)a3
{
  _HKInitializeLogging();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_FAULT))
  {
    sub_10069B580(v4);
  }

  v5 = [(CHASActivitySetupOnboardingViewController *)self delegate];
  v6 = [v5 activePairingDevice];

  v7 = FIUIHealthStoreForDevice();
  [CHASActivitySetupOnboardingViewController performEndToEndCloudSyncOnSkippingSetupForHealthStore:v7];
  v8 = [(CHASActivitySetupOnboardingViewController *)self delegate];
  [v8 buddyControllerReleaseHoldAndSkip:self];
}

@end