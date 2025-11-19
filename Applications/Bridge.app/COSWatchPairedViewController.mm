@interface COSWatchPairedViewController
- (COSSetupController)setupController;
- (COSWatchPairedViewController)init;
- (id)alternateButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_continueRestoring;
- (void)_continueSetupAsNew;
- (void)_enterExpressModeIfAppropriate;
- (void)_madeWristOnLeftSelection:(BOOL)a3 crownOnRightSelection:(BOOL)a4;
- (void)backupsChanged:(unint64_t)a3;
- (void)dealloc;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
- (void)deviceBecameActive:(id)a3;
- (void)outroAnimationFinished:(id)a3;
- (void)processWristDetectionResults;
- (void)refreshActiveWatchStatus;
- (void)refreshBackupStatus;
- (void)suggestedButtonPressed:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

  v5 = [(COSWatchPairedViewController *)self contentView];
  [v5 addSubview:self->_insigniaWatchView];

  [(COSAnimatedInsigniaWatchView *)self->_insigniaWatchView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(COSAnimatedInsigniaWatchView *)self->_insigniaWatchView topAnchor];
  v7 = [(COSWatchPairedViewController *)self contentView];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [(COSAnimatedInsigniaWatchView *)self->_insigniaWatchView bottomAnchor];
  v11 = [(COSWatchPairedViewController *)self contentView];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [(COSAnimatedInsigniaWatchView *)self->_insigniaWatchView centerXAnchor];
  v15 = [(COSWatchPairedViewController *)self view];
  v16 = [v15 centerXAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v18;

  [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
  v20 = [(COSWatchPairedViewController *)self view];
  [v20 addSubview:self->_spinner];

  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
  v22 = [(COSWatchPairedViewController *)self view];
  v23 = [v22 bottomAnchor];
  v24 = [v21 constraintEqualToAnchor:v23 constant:-44.0];
  [v24 setActive:1];

  v25 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  v26 = [(COSWatchPairedViewController *)self view];
  v27 = [v26 centerXAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  [v28 setActive:1];

  v29 = +[COSBackupManager sharedBackupManager];
  [v29 setDelegate:self];

  if (_os_feature_enabled_impl())
  {
    v30 = +[COSBackupManager sharedBackupManager];
    v31 = [v30 compatiblePairedDevices];
    v32 = [v31 count];

    if (v32)
    {
      v33 = pbb_bridge_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Paired device detected, entering express mode", v39, 2u);
      }

      v34 = [(COSWatchPairedViewController *)self setupController];
      [v34 setExpressMode:1];
    }
  }

  v35 = [UINotificationFeedbackGenerator alloc];
  v36 = [(COSWatchPairedViewController *)self view];
  v37 = [v35 initWithCoordinateSpace:v36];
  successBehavior = self->_successBehavior;
  self->_successBehavior = v37;

  [(UINotificationFeedbackGenerator *)self->_successBehavior activateWithCompletionBlock:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v33.receiver = self;
  v33.super_class = COSWatchPairedViewController;
  [(COSWatchPairedViewController *)&v33 viewWillAppear:a3];
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
  v7 = [v6 activeWatch];

  v8 = [(COSWatchPairedViewController *)self setupController];
  [v8 updateActivePairingDevice:v7];

  if (!v7)
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
  v12 = [v11 minWatchOSVersion];

  if (!v12)
  {
    v13 = [v7 valueForProperty:NRDevicePropertySystemVersion];
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
    v16 = [(COSWatchPairedViewController *)self buttonTray];
    [v16 setAlpha:0.0];

    v17 = [(COSWatchPairedViewController *)self spinner];
    [v17 setAlpha:0.0];

    [(UINotificationFeedbackGenerator *)self->_successBehavior notificationOccurred:0];
    [(COSWatchPairedViewController *)self processWristDetectionResults];
    objc_initWeak(buf, self);
    v18 = dispatch_time(0, 2000000000);
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_1000EC370;
    v30 = &unk_100268458;
    objc_copyWeak(&v32, buf);
    v31 = self;
    dispatch_after(v18, &_dispatch_main_q, &v27);
    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  v19 = [UIApp setupController];
  v20 = [v19 pairingCompatiblity];
  v21 = [v20 failSafeUpdateRequested];

  v22 = +[NRPairedDeviceRegistry sharedInstance];
  LODWORD(v20) = [v22 compatibilityState];

  if (v20 == 3 && (v21 & 1) == 0)
  {
    v23 = pbb_setupflow_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "NR is now in configure state, we can't allow navigating back to the skipped update pane.", buf, 2u);
    }

    v24 = [UIApp setupController];
    [v24 blockGoingBackFromCurrentController];
  }

  v25 = [(COSWatchPairedViewController *)self setupController];
  v26 = [v25 resumePairingController];
  [v26 didConnectToWatch:v7];
}

- (void)outroAnimationFinished:(id)a3
{
  self->_completedOutroAnimation = 1;
  [(COSWatchPairedViewController *)self _enterExpressModeIfAppropriate];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:@"COSOutroAnimationFinishedNotification"];
}

- (void)_enterExpressModeIfAppropriate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupController);
  v4 = [WeakRetained expressMode];

  if (v4)
  {
    [(COSWatchPairedViewController *)self refreshActiveWatchStatus];
    v5 = [(COSWatchPairedViewController *)self setupController];
    v6 = [v5 activePairingDevice];
    if (v6)
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
      v9 = [(COSWatchPairedViewController *)self setupController];
      v10 = [v9 activePairingDevice];
      v11 = [v10 _bridgeConciseDebugDescription];
      v12 = self->_completedOutroAnimation;
      *location = 138412546;
      *&location[4] = v11;
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
  v2 = [UIApp bridgeController];
  v3 = [v2 isTinkerPairing];

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
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

- (void)suggestedButtonPressed:(id)a3
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

  v4 = [UIApp setupController];
  v5 = [v4 pairingReportManager];

  [v5 addPairingTimeEventToPairingReportPlist:11 withValue:&__kCFBooleanTrue withError:0];
  v6 = [(COSWatchPairedViewController *)self delegate];
  [v6 buddyControllerDone:self nextControllerClass:objc_opt_class()];
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

  v4 = [UIApp setupController];
  v5 = [v4 linkUpgradeMonitor];
  [v5 indicateBackupRestoreStepCompleted];

  v6 = [(COSWatchPairedViewController *)self setupController];
  LODWORD(v5) = [v6 wristChoicesDetected];

  v7 = [(COSWatchPairedViewController *)self delegate];
  v8 = v7;
  if (v5)
  {
    [v7 buddyControllerDone:self nextControllerClass:objc_opt_class()];

    if (!PBLogPerformanceMetrics())
    {
      return;
    }

    v8 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v8 beginMacroActivity:@"COSPostWristChoiceUserWaitPhase" beginTime:CFAbsoluteTimeGetCurrent()];
  }

  else
  {
    [v7 buddyControllerDone:self];
  }
}

- (void)processWristDetectionResults
{
  v3 = [UIApp setupController];
  v4 = [v3 visualDetector];

  v5 = [v4 confidenceSummary];
  v6 = [(COSWatchPairedViewController *)self setupController];
  [v6 setWristChoicesDetected:0];

  if ([v5 attribute] >= 5)
  {
    v7 = [(COSWatchPairedViewController *)self setupController];
    [v7 setWristChoicesDetected:1];

    v8 = [v5 attribute];
    if ((v8 - 5) <= 3)
    {
      v9 = 8 * (v8 - 5);
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

  if ([v5 attribute] == 1)
  {
    PBBridgeCAReporterIncrementSuccessType();
    v15 = +[COSInternalUserStudyDataManager sharedManager];
    v16 = v15;
    v17 = 4;
LABEL_11:
    [v15 setDetectedWristChoice:v17];

    goto LABEL_12;
  }

  if ([v5 attribute] != 4)
  {
    if ([v5 attribute] == 3)
    {
      PBBridgeCAReporterIncrementSuccessType();
      v15 = +[COSInternalUserStudyDataManager sharedManager];
      v16 = v15;
      v17 = 5;
    }

    else
    {
      if ([v5 attribute] != 2)
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
  [v5 confidence];
  [v18 setConfidence:?];
}

- (void)_madeWristOnLeftSelection:(BOOL)a3 crownOnRightSelection:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v33 = v5;
    *&v33[4] = 1024;
    *&v33[6] = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[ML Flow] Set Orientation Choice: Wrist on Left: %{BOOL}d, Crown on Right: %{BOOL}d", buf, 0xEu);
  }

  v8 = [UIApp setupController];
  v9 = [v8 pairingReportManager];

  v10 = [NSNumber numberWithBool:v5];
  [v9 addPairingTimeEventToPairingReportPlist:10 withValue:v10 withError:0];

  [v9 addPairingTimeEventToPairingReportPlist:11 withValue:&__kCFBooleanFalse withError:0];
  if (sub_10002D16C())
  {
    v11 = +[COSInternalUserStudyDataManager sharedManager];
    [v11 setWristChoice:v5 ^ 1];
  }

  else
  {
    v12 = +[UIApplication sharedApplication];
    v11 = [v12 activeWatch];

    v13 = [v11 valueForProperty:NRDevicePropertyPairingID];
    v14 = NRDevicePropertyLocalPairingDataStorePath;
    v15 = [v11 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    v16 = [v11 valueForProperty:NRDevicePropertyProductType];
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
        [v18 setBool:v5 ^ 1 forKey:@"wornOnRightArm"];
        [v18 setBool:v4 ^ 1 forKey:@"invertUI"];
        v20 = [v18 synchronize];
        if (v5)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        [PBBridgeCAReporter recordPairingInitiatedDeviceWristChoice:v21 pairingSelectionType:2];
        if (v4)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        [PBBridgeCAReporter recordPairingInitiatedDeviceOrientationChoice:v22 pairingSelectionType:2];
        v23 = +[NRPairedDeviceRegistry sharedInstance];
        v24 = [v23 compatibilityState];

        v25 = pbb_setupflow_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *v33 = "[COSWatchPairedViewController _madeWristOnLeftSelection:crownOnRightSelection:]";
          *&v33[8] = 1024;
          LODWORD(v34) = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s NRCompatibilityState is %i", buf, 0x12u);
        }

        if (v24 == 3)
        {
          v26 = pbb_setupflow_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *v33 = "[COSWatchPairedViewController _madeWristOnLeftSelection:crownOnRightSelection:]";
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s IPE is complete, sending crown orientation directly to gizmo.", buf, 0xCu);
          }

          v27 = +[UIApplication sharedApplication];
          v28 = [v27 bridgeController];
          [v28 tellGizmoToSetCrownOrientationRight:v4];
        }
      }

      else
      {
        v29 = pbb_setupflow_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10018A20C(v11, v29);
        }

        objc_storeStrong(&self->_observedDevice, v11);
        observedDevice = self->_observedDevice;
        v31 = v14;
        v18 = [NSArray arrayWithObjects:&v31 count:1];
        [(NRDevice *)observedDevice addPropertyObserver:self forPropertyChanges:v18];
      }
    }

    else
    {
      v17 = [(COSWatchPairedViewController *)self setupController];
      [v17 setWristChoicesDetected:0];

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

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = NRDevicePropertyLocalPairingDataStorePath;
  v10 = [v7 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  if (v10 && [v8 isEqualToString:v9])
  {
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NRDevice propertyDidChange %@ %@", buf, 0x16u);
    }

    v15 = v9;
    v12 = [NSArray arrayWithObjects:&v15 count:1];
    [v7 removePropertyObserver:self forPropertyChanges:v12];

    v13 = [(COSWatchPairedViewController *)self setupController];
    v14 = [v13 wristChoicesDetected];

    if (v14)
    {
      [(COSWatchPairedViewController *)self _madeWristOnLeftSelection:self->_leftWristSelected crownOnRightSelection:self->_rightCrownSelected];
    }
  }
}

- (void)deviceBecameActive:(id)a3
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
  v3 = [UIApp bridgeController];
  v4 = [v3 isTinkerPairing];

  if (v4)
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
  v6 = [v3 activeWatch];

  v4 = [(COSWatchPairedViewController *)self setupController];
  [v4 updateActivePairingDevice:v6];

  spinner = self->_spinner;
  if (v6)
  {
    [(UIActivityIndicatorView *)spinner stopAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)spinner startAnimating];
  }
}

- (void)backupsChanged:(unint64_t)a3
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
    v4 = [UIApp setupController];
    objc_storeWeak(&self->_setupController, v4);
  }

  v5 = objc_loadWeakRetained(&self->_setupController);

  return v5;
}

@end