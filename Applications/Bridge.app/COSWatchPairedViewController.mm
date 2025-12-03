@interface COSWatchPairedViewController
- (COSSetupController)setupController;
- (COSWatchPairedViewController)init;
- (id)alternateButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_continueRestoring;
- (void)_continueSetupAsNew;
- (void)_enterExpressModeIfAppropriate;
- (void)_madeWristOnLeftSelection:(BOOL)selection crownOnRightSelection:(BOOL)rightSelection;
- (void)backupsChanged:(unint64_t)changed;
- (void)dealloc;
- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value;
- (void)deviceBecameActive:(id)active;
- (void)outroAnimationFinished:(id)finished;
- (void)processWristDetectionResults;
- (void)refreshActiveWatchStatus;
- (void)refreshBackupStatus;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSWatchPairedViewController

- (COSWatchPairedViewController)init
{
  v5.receiver = self;
  v5.super_class = COSWatchPairedViewController;
  v2 = [(COSWatchPairedViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSWatchPairedViewController *)v2 setStyle:6];
  }

  return v3;
}

- (void)dealloc
{
  observedDevice = self->_observedDevice;
  v6 = NRDevicePropertyLocalPairingDataStorePath;
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  [(NRDevice *)observedDevice removePropertyObserver:self forPropertyChanges:v4];

  v5.receiver = self;
  v5.super_class = COSWatchPairedViewController;
  [(COSWatchPairedViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v40.receiver = self;
  v40.super_class = COSWatchPairedViewController;
  [(COSWatchPairedViewController *)&v40 viewDidLoad];
  self->_completedIntroAnimation = 0;
  v3 = objc_alloc_init(COSAnimatedInsigniaWatchView);
  insigniaWatchView = self->_insigniaWatchView;
  self->_insigniaWatchView = v3;

  contentView = [(COSWatchPairedViewController *)self contentView];
  [contentView addSubview:self->_insigniaWatchView];

  [(COSAnimatedInsigniaWatchView *)self->_insigniaWatchView setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(COSAnimatedInsigniaWatchView *)self->_insigniaWatchView topAnchor];
  contentView2 = [(COSWatchPairedViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v9 setActive:1];

  bottomAnchor = [(COSAnimatedInsigniaWatchView *)self->_insigniaWatchView bottomAnchor];
  contentView3 = [(COSWatchPairedViewController *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v13 setActive:1];

  centerXAnchor = [(COSAnimatedInsigniaWatchView *)self->_insigniaWatchView centerXAnchor];
  view = [(COSWatchPairedViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v17 setActive:1];

  v18 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v18;

  [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
  view2 = [(COSWatchPairedViewController *)self view];
  [view2 addSubview:self->_spinner];

  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  bottomAnchor3 = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
  view3 = [(COSWatchPairedViewController *)self view];
  bottomAnchor4 = [view3 bottomAnchor];
  v24 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-44.0];
  [v24 setActive:1];

  centerXAnchor3 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  view4 = [(COSWatchPairedViewController *)self view];
  centerXAnchor4 = [view4 centerXAnchor];
  v28 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v28 setActive:1];

  v29 = +[COSBackupManager sharedBackupManager];
  [v29 setDelegate:self];

  if (_os_feature_enabled_impl())
  {
    v30 = +[COSBackupManager sharedBackupManager];
    compatiblePairedDevices = [v30 compatiblePairedDevices];
    v32 = [compatiblePairedDevices count];

    if (v32)
    {
      v33 = pbb_bridge_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Paired device detected, entering express mode", v39, 2u);
      }

      setupController = [(COSWatchPairedViewController *)self setupController];
      [setupController setExpressMode:1];
    }
  }

  v35 = [UINotificationFeedbackGenerator alloc];
  view5 = [(COSWatchPairedViewController *)self view];
  v37 = [v35 initWithCoordinateSpace:view5];
  successBehavior = self->_successBehavior;
  self->_successBehavior = v37;

  [(UINotificationFeedbackGenerator *)self->_successBehavior activateWithCompletionBlock:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v33.receiver = self;
  v33.super_class = COSWatchPairedViewController;
  [(COSWatchPairedViewController *)&v33 viewWillAppear:appear];
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    completedIntroAnimation = self->_completedIntroAnimation;
    *buf = 136315394;
    v35 = "[COSWatchPairedViewController viewWillAppear:]";
    v36 = 1024;
    LODWORD(v37) = completedIntroAnimation;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s, completedIntroAnimation: %i", buf, 0x12u);
  }

  v6 = +[UIApplication sharedApplication];
  activeWatch = [v6 activeWatch];

  setupController = [(COSWatchPairedViewController *)self setupController];
  [setupController updateActivePairingDevice:activeWatch];

  if (!activeWatch)
  {
    v9 = pbb_bridge_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "activeWatch null, adding observer to wait for device to become active", buf, 2u);
    }

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"deviceBecameActive:" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];
  }

  v11 = +[COSBackupManager sharedBackupManager];
  minWatchOSVersion = [v11 minWatchOSVersion];

  if (!minWatchOSVersion)
  {
    v13 = [activeWatch valueForProperty:NRDevicePropertySystemVersion];
    v14 = pbb_bridge_log();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v35 = "[COSWatchPairedViewController viewWillAppear:]";
        v36 = 2112;
        v37 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s, setting backups min watchOS version to: %@", buf, 0x16u);
      }

      v15 = +[COSBackupManager sharedBackupManager];
      [v15 setMinWatchOSVersion:v13];
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "[COSWatchPairedViewController viewWillAppear:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: ERROR: no minimum watchOS version is being provided to COSBackupManager", buf, 0xCu);
    }
  }

  [(COSWatchPairedViewController *)self refreshBackupStatus];
  if (!self->_completedIntroAnimation)
  {
    buttonTray = [(COSWatchPairedViewController *)self buttonTray];
    [buttonTray setAlpha:0.0];

    spinner = [(COSWatchPairedViewController *)self spinner];
    [spinner setAlpha:0.0];

    [(UINotificationFeedbackGenerator *)self->_successBehavior notificationOccurred:0];
    [(COSWatchPairedViewController *)self processWristDetectionResults];
    objc_initWeak(buf, self);
    v18 = dispatch_time(0, 2000000000);
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_1000EC370;
    v30 = &unk_100268458;
    objc_copyWeak(&v32, buf);
    selfCopy = self;
    dispatch_after(v18, &_dispatch_main_q, &v27);
    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  setupController2 = [UIApp setupController];
  pairingCompatiblity = [setupController2 pairingCompatiblity];
  failSafeUpdateRequested = [pairingCompatiblity failSafeUpdateRequested];

  v22 = +[NRPairedDeviceRegistry sharedInstance];
  LODWORD(pairingCompatiblity) = [v22 compatibilityState];

  if (pairingCompatiblity == 3 && (failSafeUpdateRequested & 1) == 0)
  {
    v23 = pbb_setupflow_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "NR is now in configure state, we can't allow navigating back to the skipped update pane.", buf, 2u);
    }

    setupController3 = [UIApp setupController];
    [setupController3 blockGoingBackFromCurrentController];
  }

  setupController4 = [(COSWatchPairedViewController *)self setupController];
  resumePairingController = [setupController4 resumePairingController];
  [resumePairingController didConnectToWatch:activeWatch];
}

- (void)outroAnimationFinished:(id)finished
{
  self->_completedOutroAnimation = 1;
  [(COSWatchPairedViewController *)self _enterExpressModeIfAppropriate];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:@"COSOutroAnimationFinishedNotification"];
}

- (void)_enterExpressModeIfAppropriate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupController);
  expressMode = [WeakRetained expressMode];

  if (expressMode)
  {
    [(COSWatchPairedViewController *)self refreshActiveWatchStatus];
    setupController = [(COSWatchPairedViewController *)self setupController];
    activePairingDevice = [setupController activePairingDevice];
    if (activePairingDevice)
    {
      completedOutroAnimation = self->_completedOutroAnimation;

      if (completedOutroAnimation)
      {
        objc_initWeak(location, self);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000EC928;
        block[3] = &unk_100268430;
        objc_copyWeak(&v14, location);
        dispatch_async(&_dispatch_main_q, block);
        objc_destroyWeak(&v14);
        objc_destroyWeak(location);
        return;
      }
    }

    else
    {
    }

    v8 = pbb_setupflow_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      setupController2 = [(COSWatchPairedViewController *)self setupController];
      activePairingDevice2 = [setupController2 activePairingDevice];
      _bridgeConciseDebugDescription = [activePairingDevice2 _bridgeConciseDebugDescription];
      v12 = self->_completedOutroAnimation;
      *location = 138412546;
      *&location[4] = _bridgeConciseDebugDescription;
      v16 = 1024;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Delaying Actively paired watch: %@ - completedOutroAnimation: %{BOOL}d", location, 0x12u);
    }

    if (self->_completedOutroAnimation)
    {
      [(UIActivityIndicatorView *)self->_spinner startAnimating];
    }
  }
}

- (id)titleString
{
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (isTinkerPairing)
  {
    v6 = @"GIZMO_PAIRED_TINKER";
    v7 = @"Localizable-tinker";
  }

  else
  {
    v6 = @"GIZMO_PAIRED";
    v7 = @"Localizable";
  }

  v8 = [v4 localizedStringForKey:v6 value:&stru_10026E598 table:v7];

  return v8;
}

- (id)suggestedButtonTitle
{
  backupStatus = self->_backupStatus;
  if (backupStatus == 1)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"RESTORE_BACKUP" value:&stru_10026E598 table:@"Localizable"];
    v7 = [NSString stringWithFormat:v4];
    goto LABEL_5;
  }

  if (backupStatus == 2)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"SETUP_%@" value:&stru_10026E598 table:@"Localizable"];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"APPLE_WATCH_ALL_STRING" value:&stru_10026E598 table:@"Localizable"];
    v7 = [NSString stringWithFormat:v4, v6];

LABEL_5:
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)alternateButtonTitle
{
  if (self->_backupStatus == 1)
  {
    v2 = +[NSBundle mainBundle];
    v3 = [v2 localizedStringForKey:@"SETUP_NEW_%@" value:&stru_10026E598 table:@"Localizable"];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"APPLE_WATCH_ALL_STRING" value:&stru_10026E598 table:@"Localizable"];
    v6 = [NSString stringWithFormat:v3, v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)suggestedButtonPressed:(id)pressed
{
  if (self->_backupStatus == 1)
  {
    [(COSWatchPairedViewController *)self _continueRestoring];
  }

  else
  {
    [(COSWatchPairedViewController *)self _continueSetupAsNew];
  }
}

- (void)_continueRestoring
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[COSWatchPairedViewController _continueRestoring]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  setupController = [UIApp setupController];
  pairingReportManager = [setupController pairingReportManager];

  [pairingReportManager addPairingTimeEventToPairingReportPlist:11 withValue:&__kCFBooleanTrue withError:0];
  delegate = [(COSWatchPairedViewController *)self delegate];
  [delegate buddyControllerDone:self nextControllerClass:objc_opt_class()];
}

- (void)_continueSetupAsNew
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[COSWatchPairedViewController _continueSetupAsNew]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  setupController = [UIApp setupController];
  linkUpgradeMonitor = [setupController linkUpgradeMonitor];
  [linkUpgradeMonitor indicateBackupRestoreStepCompleted];

  setupController2 = [(COSWatchPairedViewController *)self setupController];
  LODWORD(linkUpgradeMonitor) = [setupController2 wristChoicesDetected];

  delegate = [(COSWatchPairedViewController *)self delegate];
  v8 = delegate;
  if (linkUpgradeMonitor)
  {
    [delegate buddyControllerDone:self nextControllerClass:objc_opt_class()];

    if (!PBLogPerformanceMetrics())
    {
      return;
    }

    v8 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v8 beginMacroActivity:@"COSPostWristChoiceUserWaitPhase" beginTime:CFAbsoluteTimeGetCurrent()];
  }

  else
  {
    [delegate buddyControllerDone:self];
  }
}

- (void)processWristDetectionResults
{
  setupController = [UIApp setupController];
  visualDetector = [setupController visualDetector];

  confidenceSummary = [visualDetector confidenceSummary];
  setupController2 = [(COSWatchPairedViewController *)self setupController];
  [setupController2 setWristChoicesDetected:0];

  if ([confidenceSummary attribute] >= 5)
  {
    setupController3 = [(COSWatchPairedViewController *)self setupController];
    [setupController3 setWristChoicesDetected:1];

    attribute = [confidenceSummary attribute];
    if ((attribute - 5) <= 3)
    {
      v9 = 8 * (attribute - 5);
      self->_leftWristSelected = 0x101u >> v9;
      self->_rightCrownSelected = 0x10001u >> v9;
    }

    v10 = pbb_setupflow_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [NSNumber numberWithBool:self->_leftWristSelected];
      v12 = [NSNumber numberWithBool:self->_rightCrownSelected];
      v19 = 138412546;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Detected Wrist: %@ // Crown: %@", &v19, 0x16u);
    }

    [(COSWatchPairedViewController *)self _madeWristOnLeftSelection:self->_leftWristSelected crownOnRightSelection:self->_rightCrownSelected];
    if (!sub_10002D088())
    {
      v13 = +[COSInternalUserStudyDataManager sharedManager];
      [v13 setDetectedWristChoice:!self->_leftWristSelected];

      v14 = +[COSInternalUserStudyDataManager sharedManager];
      [v14 setDetectedCrownChoice:!self->_rightCrownSelected];
    }

    goto LABEL_8;
  }

  if ([confidenceSummary attribute] == 1)
  {
    PBBridgeCAReporterIncrementSuccessType();
    v15 = +[COSInternalUserStudyDataManager sharedManager];
    v16 = v15;
    v17 = 4;
LABEL_11:
    [v15 setDetectedWristChoice:v17];

    goto LABEL_12;
  }

  if ([confidenceSummary attribute] != 4)
  {
    if ([confidenceSummary attribute] == 3)
    {
      PBBridgeCAReporterIncrementSuccessType();
      v15 = +[COSInternalUserStudyDataManager sharedManager];
      v16 = v15;
      v17 = 5;
    }

    else
    {
      if ([confidenceSummary attribute] != 2)
      {
        goto LABEL_12;
      }

      PBBridgeCAReporterIncrementSuccessType();
      v15 = +[COSInternalUserStudyDataManager sharedManager];
      v16 = v15;
      v17 = 2;
    }

    goto LABEL_11;
  }

LABEL_8:
  PBBridgeCAReporterIncrementSuccessType();
LABEL_12:
  v18 = +[COSInternalUserStudyDataManager sharedManager];
  [confidenceSummary confidence];
  [v18 setConfidence:?];
}

- (void)_madeWristOnLeftSelection:(BOOL)selection crownOnRightSelection:(BOOL)rightSelection
{
  rightSelectionCopy = rightSelection;
  selectionCopy = selection;
  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v33 = selectionCopy;
    *&v33[4] = 1024;
    *&v33[6] = rightSelectionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[ML Flow] Set Orientation Choice: Wrist on Left: %{BOOL}d, Crown on Right: %{BOOL}d", buf, 0xEu);
  }

  setupController = [UIApp setupController];
  pairingReportManager = [setupController pairingReportManager];

  v10 = [NSNumber numberWithBool:selectionCopy];
  [pairingReportManager addPairingTimeEventToPairingReportPlist:10 withValue:v10 withError:0];

  [pairingReportManager addPairingTimeEventToPairingReportPlist:11 withValue:&__kCFBooleanFalse withError:0];
  if (sub_10002D16C())
  {
    activeWatch = +[COSInternalUserStudyDataManager sharedManager];
    [activeWatch setWristChoice:selectionCopy ^ 1];
  }

  else
  {
    v12 = +[UIApplication sharedApplication];
    activeWatch = [v12 activeWatch];

    v13 = [activeWatch valueForProperty:NRDevicePropertyPairingID];
    v14 = NRDevicePropertyLocalPairingDataStorePath;
    v15 = [activeWatch valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    v16 = [activeWatch valueForProperty:NRDevicePropertyProductType];
    if (NRDeviceSizeForProductType() - 7 >= 3)
    {
      v19 = pbb_setupflow_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *v33 = "[COSWatchPairedViewController _madeWristOnLeftSelection:crownOnRightSelection:]";
        *&v33[8] = 2112;
        v34 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Device is eligible for BeamBridge: %@", buf, 0x16u);
      }

      if (v15)
      {
        v18 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nano" pairingID:v13 pairingDataStore:v15];
        [v18 setBool:selectionCopy ^ 1 forKey:@"wornOnRightArm"];
        [v18 setBool:rightSelectionCopy ^ 1 forKey:@"invertUI"];
        synchronize = [v18 synchronize];
        if (selectionCopy)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        [PBBridgeCAReporter recordPairingInitiatedDeviceWristChoice:v21 pairingSelectionType:2];
        if (rightSelectionCopy)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        [PBBridgeCAReporter recordPairingInitiatedDeviceOrientationChoice:v22 pairingSelectionType:2];
        v23 = +[NRPairedDeviceRegistry sharedInstance];
        compatibilityState = [v23 compatibilityState];

        v25 = pbb_setupflow_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *v33 = "[COSWatchPairedViewController _madeWristOnLeftSelection:crownOnRightSelection:]";
          *&v33[8] = 1024;
          LODWORD(v34) = compatibilityState;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s NRCompatibilityState is %i", buf, 0x12u);
        }

        if (compatibilityState == 3)
        {
          v26 = pbb_setupflow_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *v33 = "[COSWatchPairedViewController _madeWristOnLeftSelection:crownOnRightSelection:]";
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s IPE is complete, sending crown orientation directly to gizmo.", buf, 0xCu);
          }

          v27 = +[UIApplication sharedApplication];
          bridgeController = [v27 bridgeController];
          [bridgeController tellGizmoToSetCrownOrientationRight:rightSelectionCopy];
        }
      }

      else
      {
        v29 = pbb_setupflow_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10018A20C(activeWatch, v29);
        }

        objc_storeStrong(&self->_observedDevice, activeWatch);
        observedDevice = self->_observedDevice;
        v31 = v14;
        v18 = [NSArray arrayWithObjects:&v31 count:1];
        [(NRDevice *)observedDevice addPropertyObserver:self forPropertyChanges:v18];
      }
    }

    else
    {
      setupController2 = [(COSWatchPairedViewController *)self setupController];
      [setupController2 setWristChoicesDetected:0];

      v18 = pbb_setupflow_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *v33 = "[COSWatchPairedViewController _madeWristOnLeftSelection:crownOnRightSelection:]";
        *&v33[8] = 2112;
        v34 = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Device ineligible for BeamBridge: %@", buf, 0x16u);
      }
    }
  }
}

- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value
{
  deviceCopy = device;
  changeCopy = change;
  v9 = NRDevicePropertyLocalPairingDataStorePath;
  v10 = [deviceCopy valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  if (v10 && [changeCopy isEqualToString:v9])
  {
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = deviceCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NRDevice propertyDidChange %@ %@", buf, 0x16u);
    }

    v15 = v9;
    v12 = [NSArray arrayWithObjects:&v15 count:1];
    [deviceCopy removePropertyObserver:self forPropertyChanges:v12];

    setupController = [(COSWatchPairedViewController *)self setupController];
    wristChoicesDetected = [setupController wristChoicesDetected];

    if (wristChoicesDetected)
    {
      [(COSWatchPairedViewController *)self _madeWristOnLeftSelection:self->_leftWristSelected crownOnRightSelection:self->_rightCrownSelected];
    }
  }
}

- (void)deviceBecameActive:(id)active
{
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[COSWatchPairedViewController deviceBecameActive:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Device became active", &v6, 0xCu);
  }

  [(COSWatchPairedViewController *)self _enterExpressModeIfAppropriate];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:NRPairedDeviceRegistryDeviceDidBecomeActive];
}

- (void)refreshBackupStatus
{
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  if (isTinkerPairing)
  {
    self->_backupStatus = 2;
  }

  else
  {
    v5 = +[COSBackupManager sharedBackupManager];
    self->_backupStatus = [v5 shouldOfferToRestore];
  }

  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    backupStatus = self->_backupStatus;
    v9 = 136315394;
    v10 = "[COSWatchPairedViewController refreshBackupStatus]";
    v11 = 2048;
    v12 = backupStatus;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s - backupStatus: %lu", &v9, 0x16u);
  }

  [(COSWatchPairedViewController *)self refreshViews];
  spinner = self->_spinner;
  if (self->_backupStatus)
  {
    [(UIActivityIndicatorView *)spinner stopAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)spinner startAnimating];
  }
}

- (void)refreshActiveWatchStatus
{
  v3 = +[UIApplication sharedApplication];
  activeWatch = [v3 activeWatch];

  setupController = [(COSWatchPairedViewController *)self setupController];
  [setupController updateActivePairingDevice:activeWatch];

  spinner = self->_spinner;
  if (activeWatch)
  {
    [(UIActivityIndicatorView *)spinner stopAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)spinner startAnimating];
  }
}

- (void)backupsChanged:(unint64_t)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EDCD0;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (COSSetupController)setupController
{
  WeakRetained = objc_loadWeakRetained(&self->_setupController);

  if (!WeakRetained)
  {
    setupController = [UIApp setupController];
    objc_storeWeak(&self->_setupController, setupController);
  }

  v5 = objc_loadWeakRetained(&self->_setupController);

  return v5;
}

@end