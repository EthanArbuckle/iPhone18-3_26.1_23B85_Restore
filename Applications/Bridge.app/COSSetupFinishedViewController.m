@interface COSSetupFinishedViewController
- (BOOL)_isSyncComplete;
- (BOOL)holdBeforeDisplaying;
- (BOOL)isTinkerWatch;
- (COSSetupFinishedViewController)init;
- (id)detailString;
- (id)okayButtonTitle;
- (id)titleString;
- (void)_pushToSetupFinished;
- (void)_updateProgressUI;
- (void)checkHoldReleaseConditions;
- (void)continuePairedSync;
- (void)dealloc;
- (void)determineArchitectureCompatibilityIfNeeded;
- (void)deviceBecameActive:(id)a3;
- (void)deviceIsSetup:(id)a3;
- (void)didEstablishHold;
- (void)dismissDiscoverIntro:(id)a3;
- (void)finishedActivating;
- (void)finishedInitialSyncPrep;
- (void)globalAlertPresentationCoordinator:(id)a3 dismissAlert:(unint64_t)a4 withCompletion:(id)a5;
- (void)globalAlertPresentationCoordinator:(id)a3 presentAlert:(unint64_t)a4 withCompletion:(id)a5;
- (void)globalAlertPresentationCoordinator:(id)a3 syncProgressDidUpdate:(double)a4;
- (void)initialSyncStateObserver:(id)a3 syncDidCompleteForPairingIdentifier:(id)a4;
- (void)okayButtonPressed:(id)a3;
- (void)removeAllObservers;
- (void)setIsSyncComplete:(BOOL)a3;
- (void)setupSyncMonitorIfNeeded;
- (void)updateAppsIfNeededWithArchitectureIncompatibleApps:(id)a3;
- (void)updateLiveActivityProgress;
- (void)userAbortedPairing;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation COSSetupFinishedViewController

- (COSSetupFinishedViewController)init
{
  v41.receiver = self;
  v41.super_class = COSSetupFinishedViewController;
  v2 = [(COSSetupFinishedViewController *)&v41 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  [(COSSetupFinishedViewController *)v2 setStyle:32];
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Add Observer For NRPairedDeviceRegistryDeviceIsSetupNotification", buf, 2u);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:v3 selector:"deviceIsSetup:" name:NRPairedDeviceRegistryDeviceIsSetupNotification object:0];
  [v5 addObserver:v3 selector:"continuePairedSync" name:@"com.apple.PreferencesApp.willBecomeActive" object:0];
  [v5 addObserver:v3 selector:"deviceBecameActive:" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];
  v6 = [BPSIllustratedWatchView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  illustratedSyncView = v3->_illustratedSyncView;
  v3->_illustratedSyncView = v10;

  [(BPSIllustratedWatchView *)v3->_illustratedSyncView setUsingSemiCompactWatchAsset:1];
  [(BPSIllustratedWatchView *)v3->_illustratedSyncView setShouldBeVerticallyCentered:1];
  [(BPSIllustratedWatchView *)v3->_illustratedSyncView setAllowUpScaling:1];
  v12 = +[PBBridgeWatchAttributeController sharedDeviceController];
  v13 = [v12 size];

  if (v13 == 19)
  {
    v14 = sub_10002D528(@"Screen-Blank");
    [(BPSIllustratedWatchView *)v3->_illustratedSyncView setScreenImageName:v14];
  }

  if (sub_100009A74() && sub_10002CFFC())
  {
    v15 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    progress = v3->_progress;
    v3->_progress = v15;

    v17 = v3->_progress;
    v18 = +[UIColor clearColor];
    [(UILabel *)v17 setBackgroundColor:v18];

    v19 = v3->_progress;
    v20 = +[UIColor whiteColor];
    [(UILabel *)v19 setTextColor:v20];

    v21 = v3->_progress;
    v22 = BPSFontWithSize();
    [(UILabel *)v21 setFont:v22];

    [(UILabel *)v3->_progress setTextAlignment:1];
    [(UILabel *)v3->_progress setNumberOfLines:0];
    [(BPSIllustratedWatchView *)v3->_illustratedSyncView addSubview:v3->_progress];
  }

  v23 = [UIApp activeWatch];
  v24 = BPSIsDeviceCompatibleWithVersions();

  v25 = +[PBBridgeWatchAttributeController sharedDeviceController];
  v26 = [v25 size];

  v27 = [PBBridgeProgressView alloc];
  if (v26 == 19)
  {
    v28 = [v27 initWithStyle:0 andVersion:v24];
  }

  else
  {
    v28 = [v27 initWithStyle:0 andVersion:v24 overrideSize:7];
  }

  progressView = v3->_progressView;
  v3->_progressView = v28;

  [(BPSIllustratedWatchView *)v3->_illustratedSyncView addSyncTrapProgressView:v3->_progressView];
  [(PBBridgeProgressView *)v3->_progressView setHidden:1];
  if ((sub_10002EAFC() & 1) == 0 && ![(COSSetupFinishedViewController *)v3 isTinkerWatch])
  {
    v31 = +[UIApplication sharedApplication];
    [v31 setSyncTrapUIEnabled:1];
    v30 = 0;
LABEL_20:

    goto LABEL_21;
  }

  if ((PBHasSetupDevice() & 1) == 0)
  {
    v31 = pbb_setupflow_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "There are still no setup completed devices so we will block the UI for a moment while NR wraps up pairing.", buf, 2u);
    }

    v30 = 1;
    goto LABEL_20;
  }

  v30 = 1;
LABEL_21:
  [(COSSetupFinishedViewController *)v3 setIsSyncComplete:v30];
  v32 = +[COSGlobalAlertPresentationCoordinator sharedInstance];
  [v32 addAlertPresenterObserver:v3];

  v33 = [UIApp activeWatch];
  v34 = [v33 valueForProperty:NRDevicePropertyIsSetup];
  if ([v34 BOOLValue])
  {
    [(COSSetupFinishedViewController *)v3 deviceIsSetup:0];
  }

  else
  {
    v35 = +[NRPairedDeviceRegistry sharedInstance];
    [v35 setWatchBuddyCompletedSetupSteps:0];
  }

  if (PBIsEarlyPairedSyncSupportedForDevice())
  {
    v36 = pbb_setupflow_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Initiating sync progress fetch", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007F568;
    block[3] = &unk_1002682F0;
    v39 = v3;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v3;
}

- (void)removeAllObservers
{
  v3 = +[COSGlobalAlertPresentationCoordinator sharedInstance];
  [v3 removeAlertPresenterObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)dealloc
{
  [(COSSetupFinishedViewController *)self removeAllObservers];
  v3.receiver = self;
  v3.super_class = COSSetupFinishedViewController;
  [(COSSetupFinishedViewController *)&v3 dealloc];
}

- (BOOL)holdBeforeDisplaying
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 isActivated];

  if (v4)
  {
    self->_isDeviceActivated = 1;
  }

  else
  {
    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Holding (%@) because gizmo is not activated", buf, 0xCu);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"finishedActivating" name:PBBridgeGizmoDidFinishActivatingNotification object:0];
  }

  v9 = pbb_setupflow_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Holding controller to ensure Watch is ready for InitialSync.", buf, 2u);
  }

  objc_initWeak(buf, self);
  v10 = +[UIApplication sharedApplication];
  v11 = [v10 bridgeController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007F874;
  v13[3] = &unk_100268430;
  objc_copyWeak(&v14, buf);
  [v11 tellGizmoToPrepareForInitialSyncWithCompletion:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
  return 1;
}

- (void)didEstablishHold
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 isActivated];

  if ((v3 & 1) == 0)
  {
    v6 = +[UIApplication sharedApplication];
    v4 = [v6 setupController];
    v5 = [v4 activationManager];
    [v5 setAwaitingActivation:1];
  }
}

- (void)finishedActivating
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:PBBridgeGizmoDidFinishActivatingNotification object:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FA54;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)finishedInitialSyncPrep
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FB44;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)checkHoldReleaseConditions
{
  if (self->_isDeviceActivated)
  {
    v8 = v2;
    v9 = v3;
    if (self->_isRemotePreparedForInitialSync)
    {
      v5 = pbb_setupflow_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Conditions met, showing sync trap", v7, 2u);
      }

      v6 = [(COSSetupFinishedViewController *)self delegate];
      [v6 buddyControllerReleaseHold:self];
    }
  }
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = COSSetupFinishedViewController;
  [(COSSetupFinishedViewController *)&v26 viewDidLoad];
  v3 = [(COSSetupFinishedViewController *)self contentView];
  [v3 addSubview:self->_illustratedSyncView];

  v4 = [(COSSetupFinishedViewController *)self contentView];
  [v4 bounds];
  v6 = v5;
  [(BPSIllustratedWatchView *)self->_illustratedSyncView idealAssetHeight];
  v8 = v7;

  v9 = [NSValue valueWithCGSize:v6, v8];
  [(BPSIllustratedWatchView *)self->_illustratedSyncView setPreferredCGSizeValue:v9];

  [(BPSIllustratedWatchView *)self->_illustratedSyncView setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = [(COSSetupFinishedViewController *)self contentView];
  v24 = [v25 heightAnchor];
  [(BPSIllustratedWatchView *)self->_illustratedSyncView idealContainerHeight];
  v23 = [v24 constraintEqualToConstant:?];
  v27[0] = v23;
  v21 = [(BPSIllustratedWatchView *)self->_illustratedSyncView topAnchor];
  v22 = [(COSSetupFinishedViewController *)self contentView];
  v20 = [v22 topAnchor];
  v10 = [v21 constraintEqualToAnchor:v20];
  v27[1] = v10;
  v11 = [(BPSIllustratedWatchView *)self->_illustratedSyncView bottomAnchor];
  v12 = [(COSSetupFinishedViewController *)self contentView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v27[2] = v14;
  v15 = [(BPSIllustratedWatchView *)self->_illustratedSyncView centerXAnchor];
  v16 = [(COSSetupFinishedViewController *)self contentView];
  v17 = [v16 centerXAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v27[3] = v18;
  v19 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v19];
}

- (void)viewDidAppear:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = COSSetupFinishedViewController;
  [(COSSetupFinishedViewController *)&v17 viewDidAppear:a3];
  v4 = [UIApp activeWatch];
  v5 = pbb_setupflow_log();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Telling NR to end Setup with %@.", buf, 0xCu);
    }

    v7 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v7 beginMacroActivity:@"InitialPairingPhase" beginTime:CFAbsoluteTimeGetCurrent()];

    v8 = +[PBBridgeWatchAttributeController sharedDeviceController];
    v9 = [v8 hardwareBehavior];

    v10 = 16;
    if (v9 == 2)
    {
      v10 = 14;
    }

    if (v9 == 1)
    {
      v11 = 15;
    }

    else
    {
      v11 = v10;
    }

    [PBBridgeCAReporter incrementSuccessType:v11];
    if ((PBIsEarlyPairedSyncSupportedForDevice() & 1) == 0)
    {
      v12 = pbb_setupflow_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating NR to end pairing", buf, 2u);
      }

      v13 = [UIApp setupController];
      [v13 tellAppConduitToInstallAllApps];

      v14 = +[NRPairedDeviceRegistry sharedInstance];
      [v14 notifyActivationCompleted:v4 withSuccess:1];
    }

    [PBBridgeCAReporter incrementSuccessType:8];
    if ([(COSSetupFinishedViewController *)self isTinkerWatch])
    {
      [PBBridgeCAReporter incrementSuccessType:24];
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100188390();
    }

    [UIApp resetSetupFlowAnimated:1 forEvent:47];
  }

  v15 = [UIApp setupController];
  v16 = [v15 resumePairingController];
  [v16 clearPairingState];
}

- (void)setIsSyncComplete:(BOOL)a3
{
  v3 = a3;
  v5 = pbb_setup_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithBool:self->_isSyncComplete];
    [NSNumber numberWithBool:v3];
    v7 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v8 = [NSNumber numberWithBool:self->_userDidAbortSync];
    v41 = 138412802;
    v42 = *&v6;
    v43 = 2112;
    v44 = v7;
    v45 = 2112;
    v46 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SyncComplete State Changed from %@ to %@ (userDidAbortSync: %@)", &v41, 0x20u);
  }

  if (v3)
  {
    v9 = +[UIApplication sharedApplication];
    v10 = [v9 isActivated];

    if (v10)
    {
      if (self->_isSyncComplete)
      {
        v11 = pbb_setupflow_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v41) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "We already think that sync has completed!", &v41, 2u);
        }

LABEL_27:

        v37 = [UIApp setupController];
        v38 = [v37 linkUpgradeMonitor];
        [v38 resetCompanionLinkPreference];

        v39 = [UIApp setupController];
        v40 = [v39 resumePairingController];
        [v40 clearPairingState];

        [(COSSetupFinishedViewController *)self _pushToSetupFinished];
        self->_isSyncComplete = 1;
        return;
      }

      v21 = +[UIApplication sharedApplication];
      v22 = [v21 bridgeController];
      [v22 setShouldSuppressTransportReachabilityTimeout:1];

      v11 = [UIApp activeWatch];
      v23 = [v11 valueForProperty:NRDevicePropertySerialNumber];
      if (v23)
      {
        [AMSDevice registerCompanionWithSerialNumber:v23];
        v24 = pbb_setupflow_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v41) = 0;
          v25 = "Notified Morocco";
          v26 = v24;
          v27 = 2;
LABEL_23:
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, &v41, v27);
        }
      }

      else
      {
        v24 = pbb_setupflow_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v41 = 138412290;
          v42 = *&v11;
          v25 = "Skipped Morocco %@";
          v26 = v24;
          v27 = 12;
          goto LABEL_23;
        }
      }

      v28 = +[COSGlobalAlertPresentationCoordinator sharedInstance];
      [v28 removeAlertPresenterObserver:self];

      v29 = +[UIApplication sharedApplication];
      [v29 setSyncTrapUIEnabled:0];

      v30 = +[UIApplication sharedApplication];
      [v30 setSyncTrapUICompleted:1];

      v31 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      [v31 endMacroActivity:@"InitialPairingPhase" beginTime:CFAbsoluteTimeGetCurrent()];
      v33 = v32;

      v34 = pbb_setupflow_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 134218240;
        v42 = v33;
        v43 = 2048;
        v44 = v33 / 60.0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "SyncTrapped For: %f seconds (%f minutes)", &v41, 0x16u);
      }

      v35 = +[UIApplication sharedApplication];
      v36 = [v35 bridgeController];
      [v36 stopListeningForIDSSentMessages];

      goto LABEL_27;
    }

    v18 = pbb_setup_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Tried to set sync complete before activation is completed, waiting for activation.", &v41, 2u);
    }

    self->_syncCompletedBeforeActivation = 1;
    v19 = [UIApp setupController];
    v20 = [v19 linkUpgradeMonitor];
    [v20 resetCompanionLinkPreference];
  }

  else
  {
    isSyncComplete = self->_isSyncComplete;
    v13 = pbb_setupflow_log();
    v14 = v13;
    if (isSyncComplete)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1001883CC();
      }

      v15 = +[COSGlobalAlertPresentationCoordinator sharedInstance];
      [v15 addAlertPresenterObserver:self];

      v16 = +[UIApplication sharedApplication];
      [v16 setSyncTrapUIEnabled:1];

      v17 = +[UIApplication sharedApplication];
      [v17 setSyncTrapUICompleted:0];

      self->_isSyncComplete = 0;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v41) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting isSyncComplete to NO", &v41, 2u);
      }

      [(PBBridgeProgressView *)self->_progressView setHidden:0];
    }
  }
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WATCH_IS_SYNCING" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SYNC_DETAIL" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)okayButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DISCOVER_IN_SETUP" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)okayButtonPressed:(id)a3
{
  v4 = objc_alloc_init(COSDiscoverListViewController);
  discoverIntro = self->_discoverIntro;
  self->_discoverIntro = v4;

  v6 = self->_discoverIntro;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"DISCOVER" value:&stru_10026E598 table:@"Localizable"];
  [(COSDiscoverListViewController *)v6 setTitle:v8];

  v12 = [[UINavigationController alloc] initWithRootViewController:self->_discoverIntro];
  v9 = [v12 navigationBar];
  [v9 setPrefersLargeTitles:1];

  v10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissDiscoverIntro:"];
  v11 = [(COSDiscoverListViewController *)self->_discoverIntro navigationItem];
  [v11 setRightBarButtonItem:v10];

  [BCCAReporter incrementDiscoverSuccessType:12];
  [(COSSetupFinishedViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)dismissDiscoverIntro:(id)a3
{
  discoverIntro = self->_discoverIntro;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000809F4;
  v4[3] = &unk_1002682F0;
  v4[4] = self;
  [(COSDiscoverListViewController *)discoverIntro dismissViewControllerAnimated:1 completion:v4];
}

- (void)continuePairedSync
{
  [(COSSetupFinishedViewController *)self setupSyncMonitorIfNeeded];
  self->_totalProgress = (PBPairingGlobalProgress() / 100.0);
  v3 = PBPairedSyncCompleteState();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v4 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v5 = [v4 valueForProperty:NRDevicePropertyIsAltAccount];
  v6 = [v5 BOOLValue];

  if ((v3 != 2) | v6 & 1)
  {
    *(v19 + 24) = v3 == 1;
  }

  else
  {
    v7 = [UIApp activeWatch];
    v8 = [v7 valueForProperty:NRDevicePropertyPairingID];

    if (v8)
    {
      v9 = dispatch_semaphore_create(0);
      initialSyncStateObserver = self->_initialSyncStateObserver;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100080CCC;
      v15[3] = &unk_100269F50;
      v17 = &v18;
      v11 = v9;
      v16 = v11;
      [(PSYInitialSyncStateObserver *)initialSyncStateObserver requestInitialSyncStateForPairingIdentifier:v8 completion:v15];
      dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  v12 = pbb_setupflow_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [NSNumber numberWithDouble:self->_totalProgress];
    v14 = [NSNumber numberWithBool:*(v19 + 24)];
    *buf = 138412546;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "continuePairedSync (_totalProgress %@ isSyncComplete %@)", buf, 0x16u);
  }

  [(COSSetupFinishedViewController *)self _updateProgressUI];
  [(COSSetupFinishedViewController *)self setIsSyncComplete:*(v19 + 24)];

  _Block_object_dispose(&v18, 8);
}

- (void)_pushToSetupFinished
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Trying to push setup finished controller.", buf, 2u);
  }

  [(COSSetupFinishedViewController *)self removeAllObservers];
  v4 = [(COSSetupFinishedViewController *)self delegate];
  v5 = [v4 topBuddyController];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = pbb_setupflow_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "We are already displaying setup finished controller. Don't push it again.", v8, 2u);
    }
  }

  else
  {
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Pushing setup finished controller.", v9, 2u);
    }

    v6 = [(COSSetupFinishedViewController *)self delegate];
    [v6 buddyControllerDone:self nextControllerClass:objc_opt_class()];
  }
}

- (void)setupSyncMonitorIfNeeded
{
  if (!self->_initialSyncStateObserver)
  {
    v3 = objc_alloc_init(PSYInitialSyncStateObserver);
    initialSyncStateObserver = self->_initialSyncStateObserver;
    self->_initialSyncStateObserver = v3;

    [(PSYInitialSyncStateObserver *)self->_initialSyncStateObserver setDelegate:self];
  }

  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithDouble:self->_totalProgress];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Created: Sync State was %@", &v7, 0xCu);
  }
}

- (void)initialSyncStateObserver:(id)a3 syncDidCompleteForPairingIdentifier:(id)a4
{
  v5 = a4;
  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "initialSyncStateObserver:syncDidCompleteForPairingIdentifier:", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000810A4;
  v8[3] = &unk_100268358;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);
}

- (BOOL)isTinkerWatch
{
  v2 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v3 = [v2 valueForProperty:NRDevicePropertyIsAltAccount];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)deviceIsSetup:(id)a3
{
  v4 = a3;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device Is Setup(Sender %@)", buf, 0xCu);
  }

  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Remove Observer For NRPairedDeviceRegistryDeviceIsSetupNotification", buf, 2u);
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:NRPairedDeviceRegistryDeviceIsSetupNotification object:0];

  v8 = [UIApp bridgeController];
  v9 = [v8 isTinkerPairing];

  if (v9)
  {
    v10 = pbb_setupflow_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Tinker pairing, skipping sync.";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    }
  }

  else
  {
    if (!sub_10002EAFC())
    {
      [(COSSetupFinishedViewController *)self setupSyncMonitorIfNeeded];
      goto LABEL_14;
    }

    v10 = pbb_setupflow_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "NR has notified us that we did Pair! Unblocking UI and Skipping Sync Monitor Creation.";
      goto LABEL_11;
    }
  }

  [(COSSetupFinishedViewController *)self _pushToSetupFinished];
LABEL_14:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008144C;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)_isSyncComplete
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSNumber numberWithBool:self->_userDidAbortSync];
    v5 = [NSNumber numberWithDouble:self->_totalProgress];
    v6 = [NSNumber numberWithBool:self->_alertDismissed];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_isSyncComplete? userDidAbortSync (%@) _totalProgress (%@) || _alertDismissed (%@)", &v8, 0x20u);
  }

  return !self->_userDidAbortSync && (self->_totalProgress >= 1.0 || self->_alertDismissed);
}

- (void)_updateProgressUI
{
  [(PBBridgeProgressView *)self->_progressView setCurrentProgress:self->_totalProgress];
  if (!self->_isSyncComplete)
  {
    [(COSSetupFinishedViewController *)self updateLiveActivityProgress];
  }

  if (PBIsInternalInstall())
  {
    illustratedSyncView = self->_illustratedSyncView;
    progress = self->_progress;

    [(BPSIllustratedWatchView *)illustratedSyncView bringSubviewToFront:progress];
  }
}

- (void)userAbortedPairing
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10018847C();
  }

  [(COSSetupFinishedViewController *)self removeAllObservers];
  v4 = [UIApp activeWatch];
  v5 = [v4 valueForProperty:NRDevicePropertyIsPaired];
  v6 = [v5 BOOLValue];

  v7 = [UIApp isActivated];
  self->_userDidAbortSync = 1;
  v8 = pbb_setupflow_log();
  v9 = v8;
  if (v4 && ((v6 | v7) & 1) != 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "User Reset Buddy! - Unpairing", v14, 2u);
    }

    v15[0] = @"obliterate";
    v15[1] = @"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2";
    v16[0] = &__kCFBooleanTrue;
    v16[1] = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v11 = [UIApp setupController];
    v12 = [v11 pairingReportManager];

    [v12 addPairingTimeEventToPairingReportPlist:1 withValue:&__kCFBooleanTrue withError:0];
    [v12 completePairingMetricWithSuccess:0];
    v13 = +[NRPairedDeviceRegistry sharedInstance];
    [v13 unpairWithDevice:v4 withOptions:v10 operationHasBegun:&stru_100269F70];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001884B8();
    }

    v10 = +[NRPairedDeviceRegistry sharedInstance];
    [v10 abortPairingWithReason:NRPairedDeviceRegistryAbortPairingUserRequested];
  }

  [PBBridgeCAReporter incrementSuccessType:42];
}

- (void)deviceBecameActive:(id)a3
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(COSSetupFinishedViewController) Active Watch Changed during SyncTrap.", v4, 2u);
  }
}

- (void)globalAlertPresentationCoordinator:(id)a3 syncProgressDidUpdate:(double)a4
{
  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = +[NSThread currentThread];
    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(COSInitialSyncMonitor) %@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100081A98;
  v8[3] = &unk_100268220;
  *&v8[5] = a4;
  v8[4] = self;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)globalAlertPresentationCoordinator:(id)a3 presentAlert:(unint64_t)a4 withCompletion:(id)a5
{
  v6 = a5;
  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithUnsignedInteger:a4];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(COSSetupFinishedViewController) presentAlert: %@", &v9, 0xCu);
  }

  v6[2](v6);
}

- (void)globalAlertPresentationCoordinator:(id)a3 dismissAlert:(unint64_t)a4 withCompletion:(id)a5
{
  v7 = a5;
  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithUnsignedInteger:a4];
    v10 = [NSNumber numberWithInt:!self->_userDidAbortSync];
    *buf = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(COSSetupFinishedViewController) dismissAlert: %@ (%@)", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081E8C;
  block[3] = &unk_100268180;
  v13 = v7;
  v14 = a4;
  block[4] = self;
  v11 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)determineArchitectureCompatibilityIfNeeded
{
  v3 = +[ACXDeviceConnection sharedDeviceConnection];
  v4 = [UIApp activeWatch];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008203C;
  v5[3] = &unk_100269800;
  v5[4] = self;
  [v3 getAlwaysInstallForPairedDevice:v4 completion:v5];
}

- (void)updateAppsIfNeededWithArchitectureIncompatibleApps:(id)a3
{
  v3 = a3;
  v4 = [UIApp activeWatch];
  HasCapabilityForString = BPSDeviceHasCapabilityForString();

  v6 = pbb_setup_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!HasCapabilityForString)
  {
    if (!v7)
    {
      goto LABEL_38;
    }

    *buf = 0;
    v22 = "Skip 32->64 flow";
    goto LABEL_30;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "32->64 flow matters", buf, 2u);
  }

  if (![v3 count])
  {
    v23 = pbb_setup_log();
    v6 = v23;
    if (v3)
    {
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      *buf = 0;
      v22 = "No apps to update";
    }

    else
    {
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      *buf = 0;
      v22 = "nil architectureIncompatibleApps!";
    }

LABEL_30:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
    goto LABEL_38;
  }

  v6 = objc_alloc_init(NSMutableArray);
  v8 = pbb_setup_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Has incompatible apps...", buf, 2u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = v3;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    v13 = ACXContainerAppBundleIdKey;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:v13];
        if (v16)
        {
          [v6 addObject:v16];
        }

        else
        {
          v17 = pbb_setup_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v15;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No container bundleID for %@", buf, 0xCu);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v11);
  }

  if ([v6 count])
  {
    v25 = 0;
    v18 = [ASDUpdateWatchApps updateBundleIDs:v6 userInitiated:0 error:&v25];
    v19 = v25;
    v20 = v19;
    v3 = v24;
    if (!v18 || v19)
    {
      v21 = pbb_setup_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Error forcing updates: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v3 = v24;
  }

LABEL_38:
}

- (void)updateLiveActivityProgress
{
  v2 = self;
  sub_1001382B0();
}

@end