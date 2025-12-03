@interface COSWristSelectionViewController
+ (BOOL)controllerNeedsToRun;
+ (void)_madeWristSelectionForLeftWrist:(BOOL)wrist;
+ (void)resumePairingWithSavedValue:(id)value;
- (COSWristSelectionViewController)init;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_madeWristSelectionForLeftWrist:(BOOL)wrist;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation COSWristSelectionViewController

- (COSWristSelectionViewController)init
{
  v5.receiver = self;
  v5.super_class = COSWristSelectionViewController;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSWristSelectionViewController *)v2 setStyle:66];
  }

  return v3;
}

+ (BOOL)controllerNeedsToRun
{
  setupController = [UIApp setupController];
  resumePairingController = [setupController resumePairingController];
  LOBYTE(self) = [resumePairingController didRestoreValueForPaneClass:self];

  return self ^ 1;
}

+ (void)resumePairingWithSavedValue:(id)value
{
  bOOLValue = [value BOOLValue];

  [self _madeWristSelectionForLeftWrist:bOOLValue];
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = COSWristSelectionViewController;
  [(COSWristSelectionViewController *)&v31 viewDidLoad];
  v3 = [COSHorizontalCheckmarkChoiceView alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"LEFT_WRIST" value:&stru_10026E598 table:@"Localizable"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"RIGHT_WRIST" value:&stru_10026E598 table:@"Localizable"];
  v8 = [(COSHorizontalCheckmarkChoiceView *)v3 initWithLeftTitle:v5 rightTitle:v7];
  choiceView = self->_choiceView;
  self->_choiceView = v8;

  [(COSHorizontalCheckmarkChoiceView *)self->_choiceView setDelegate:self];
  contentView = [(COSWristSelectionViewController *)self contentView];
  [contentView addSubview:self->_choiceView];

  [(COSHorizontalCheckmarkChoiceView *)self->_choiceView setTranslatesAutoresizingMaskIntoConstraints:0];
  watchViewBottomConstraint = [(COSWristSelectionViewController *)self watchViewBottomConstraint];
  [watchViewBottomConstraint setActive:0];

  watchView = [(COSWristSelectionViewController *)self watchView];

  if (watchView)
  {
    topAnchor = [(COSHorizontalCheckmarkChoiceView *)self->_choiceView topAnchor];
    watchView2 = [(COSWristSelectionViewController *)self watchView];
LABEL_5:
    v16 = watchView2;
    bottomAnchor = [watchView2 bottomAnchor];
    v18 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:8.0];
    [v18 setActive:1];

    goto LABEL_6;
  }

  illustratedWatchView = [(COSWristSelectionViewController *)self illustratedWatchView];

  if (illustratedWatchView)
  {
    topAnchor = [(COSHorizontalCheckmarkChoiceView *)self->_choiceView topAnchor];
    watchView2 = [(COSWristSelectionViewController *)self illustratedWatchView];
    goto LABEL_5;
  }

LABEL_6:
  leadingAnchor = [(COSHorizontalCheckmarkChoiceView *)self->_choiceView leadingAnchor];
  contentView2 = [(COSWristSelectionViewController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v22 setActive:1];

  trailingAnchor = [(COSHorizontalCheckmarkChoiceView *)self->_choiceView trailingAnchor];
  contentView3 = [(COSWristSelectionViewController *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v26 setActive:1];

  bottomAnchor2 = [(COSHorizontalCheckmarkChoiceView *)self->_choiceView bottomAnchor];
  contentView4 = [(COSWristSelectionViewController *)self contentView];
  bottomAnchor3 = [contentView4 bottomAnchor];
  v30 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v30 setActive:1];

  [(COSHorizontalCheckmarkChoiceView *)self->_choiceView setSelectedChoice:1];
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WRIST_CHOICE_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (isTinkerPairing)
  {
    v6 = @"WRIST_CHOICE_TINKER";
    v7 = @"Localizable-tinker";
  }

  else
  {
    v6 = @"WRIST_CHOICE";
    v7 = @"Localizable";
  }

  v8 = [v4 localizedStringForKey:v6 value:&stru_10026E598 table:v7];

  return v8;
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"CONTINUE_BUTTON_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[COSWristSelectionViewController suggestedButtonPressed:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  selectedChoice = [(COSHorizontalCheckmarkChoiceView *)self->_choiceView selectedChoice];
  if (selectedChoice == 2)
  {
    [(COSWristSelectionViewController *)self _madeWristSelectionForLeftWrist:0];
    delegate = [(COSWristSelectionViewController *)self delegate];
    [delegate buddyControllerDone:self nextControllerClass:objc_opt_class()];
  }

  else if (selectedChoice == 1)
  {
    [(COSWristSelectionViewController *)self _madeWristSelectionForLeftWrist:1];
    [COSCrownOrientationChoiceViewController sendCrownOnRightChoiceToWatch:1];
    if (PBLogPerformanceMetrics())
    {
      v6 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      [v6 beginMacroActivity:@"COSPostWristChoiceUserWaitPhase" beginTime:CFAbsoluteTimeGetCurrent()];
    }

    delegate = [(COSWristSelectionViewController *)self delegate];
    [delegate buddyControllerDone:self];
  }

  else
  {
    delegate = pbb_bridge_log();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR) && os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_DEFAULT, "Attempted to continue past wrist selection but no choice was found!", &v8, 2u);
    }
  }
}

- (void)_madeWristSelectionForLeftWrist:(BOOL)wrist
{
  wristCopy = wrist;
  [objc_opt_class() _madeWristSelectionForLeftWrist:wrist];
  delegate = [(COSWristSelectionViewController *)self delegate];
  resumePairingController = [delegate resumePairingController];
  [resumePairingController saveBoolValue:wristCopy forPaneClass:objc_opt_class()];
}

+ (void)_madeWristSelectionForLeftWrist:(BOOL)wrist
{
  wristCopy = wrist;
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithBool:wristCopy];
    v17 = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Set Wrist Choice: Left: %@", &v17, 0xCu);
  }

  setupController = [UIApp setupController];
  [setupController setWristChoicesDetected:1];

  setupController2 = [UIApp setupController];
  pairingReportManager = [setupController2 pairingReportManager];

  v9 = [NSNumber numberWithBool:wristCopy];
  [pairingReportManager addPairingTimeEventToPairingReportPlist:10 withValue:v9 withError:0];

  [pairingReportManager addPairingTimeEventToPairingReportPlist:11 withValue:&__kCFBooleanFalse withError:0];
  if (sub_10002D16C())
  {
    activeWatch = +[COSInternalUserStudyDataManager sharedManager];
    [activeWatch setWristChoice:wristCopy ^ 1];
  }

  else
  {
    v11 = +[UIApplication sharedApplication];
    activeWatch = [v11 activeWatch];

    v12 = [activeWatch valueForProperty:NRDevicePropertyPairingID];
    v13 = [activeWatch valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    v14 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nano" pairingID:v12 pairingDataStore:v13];
    [v14 setBool:wristCopy ^ 1 forKey:@"wornOnRightArm"];
    synchronize = [v14 synchronize];
    if (wristCopy)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    [PBBridgeCAReporter recordPairingInitiatedDeviceWristChoice:v16 pairingSelectionType:1];
  }
}

@end