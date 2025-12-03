@interface COSScanWatchViewController
- (BOOL)_isSatellitePairing;
- (BOOL)isViewControllerVisibleForScanningCoordinator:(id)coordinator;
- (COSBuddyControllerDelegate)delegate;
- (void)_alertUnpairableWatchPredicted:(id)predicted;
- (void)_beginConsideringFaceUpAdvice;
- (void)_cancelAlreadyPairedTimers;
- (void)_evaluateWristDetection:(id)detection;
- (void)_normalizeCameraReticuleScale;
- (void)_offerCameraUseAdvice:(id)advice;
- (void)_refreshFaceUpAdviceTimer;
- (void)_scannerSetupComplete;
- (void)_setupCameraSessionWithCompletion:(id)completion isAsync:(BOOL)async;
- (void)_startEvaluatingWristDetection:(id)detection;
- (void)_startStopWatchSetupPushesIfNeeded;
- (void)accelerometer:(id)accelerometer didAccelerateWithTimeStamp:(double)stamp x:(float)x y:(float)y z:(float)z eventType:(int)type;
- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation;
- (void)cancelEnqueuedAlreadyPairedDetectionStart;
- (void)cancelScanningTimeout;
- (void)cancelledManualPairing;
- (void)deviceDidDecode:(id)decode;
- (void)didCancelManualPairing;
- (void)didEstablishHold;
- (void)discoveredWatchNearby:(id)nearby;
- (void)doneManualPairing;
- (void)dynamicHelpControllerDidDisappear:(id)disappear;
- (void)enqueueAlreadyPairedDetectionStart;
- (void)finishedPairing;
- (void)prepareCameraInfrastructureWithCompletion:(id)completion;
- (void)presentNoCameraMode;
- (void)presentUHP;
- (void)receivedData:(id)data;
- (void)resetScanningTimeout;
- (void)scanningCoordinatorDidCompleteForInternalUserStudyFlow:(id)flow;
- (void)scanningCoordinatorDidCompleteForManualPairing:(id)pairing;
- (void)scanningCoordinatorDidDetectUnsupportedCompanionSoftware:(id)software;
- (void)scanningCoordinatorDidDetectUnsupportedTinkerHardware:(id)hardware;
- (void)scanningCoordinatorDidDetectUnsupportedYorktownHardware:(id)hardware;
- (void)scanningCoordinatorDidUnpair:(id)unpair;
- (void)scanningDidTimeout;
- (void)setManualPairingScannedCode:(id)code;
- (void)stopTrackingAccelerometer;
- (void)updateScanningProgress:(double)progress key:(id)key;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSScanWatchViewController

- (void)didEstablishHold
{
  if (_os_feature_enabled_impl())
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10005F674;
    v4[3] = &unk_1002682F0;
    v4[4] = self;
    [(COSScanWatchViewController *)self prepareCameraInfrastructureWithCompletion:v4];
  }

  else
  {
    delegate = [(COSScanWatchViewController *)self delegate];
    [delegate buddyControllerReleaseHold:self];
  }
}

- (void)prepareCameraInfrastructureWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[COSMagicCodeScanner alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  magicCodeScanner = self->_magicCodeScanner;
  self->_magicCodeScanner = v5;

  [(COSMagicCodeScanner *)self->_magicCodeScanner setDelegate:self];
  if (_os_feature_enabled_impl())
  {
    v7 = dispatch_get_global_queue(33, 0);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005F7F4;
    v8[3] = &unk_100268C18;
    v8[4] = self;
    v9 = completionCopy;
    dispatch_async(v7, v8);
  }

  else
  {
    [(COSScanWatchViewController *)self _setupCameraSessionWithCompletion:completionCopy isAsync:0];
  }
}

- (void)_setupCameraSessionWithCompletion:(id)completion isAsync:(BOOL)async
{
  asyncCopy = async;
  completionCopy = completion;
  setupCameraSession = [(COSMagicCodeScanner *)self->_magicCodeScanner setupCameraSession];
  if (!setupCameraSession && [(COSMagicCodeScanner *)self->_magicCodeScanner canUseCamera])
  {
    if (asyncCopy)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005F9A4;
      block[3] = &unk_1002682F0;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
      if (!completionCopy)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    [(COSScanWatchViewController *)self _scannerSetupComplete];
    if (!completionCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    sub_100187AA0(setupCameraSession, v8);
  }

  self->_noCameraMode = 1;
  if (completionCopy)
  {
    if (asyncCopy)
    {
LABEL_10:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10005F9AC;
      v9[3] = &unk_100269120;
      v10 = completionCopy;
      dispatch_async(&_dispatch_main_q, v9);

      goto LABEL_13;
    }

LABEL_12:
    completionCopy[2](completionCopy);
  }

LABEL_13:
}

- (void)_scannerSetupComplete
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(COSMagicCodeScanner *)self->_magicCodeScanner startRunning];
  v3 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
  [v3 beginMacroActivity:@"COSGizmoCaptureViewControllerScanningPhase" beginTime:CFAbsoluteTimeGetCurrent()];
}

- (void)viewDidLoad
{
  v160.receiver = self;
  v160.super_class = COSScanWatchViewController;
  [(COSScanWatchViewController *)&v160 viewDidLoad];
  v3 = objc_alloc_init(COSScanningCoordinator);
  [(COSScanWatchViewController *)self setScanningCoordinator:v3];

  scanningCoordinator = [(COSScanWatchViewController *)self scanningCoordinator];
  [scanningCoordinator setDelegate:self];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(COSScanWatchViewController *)self prepareCameraInfrastructureWithCompletion:0];
  }

  self->_hasFinishedPairing = 0;
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v7 = v6;

  v8 = +[UIScreen mainScreen];
  [v8 bounds];
  v10 = v9;

  if (v7 >= v10)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 * 0.36;
  v13 = [UIView alloc];
  view = [(COSScanWatchViewController *)self view];
  [view bounds];
  v15 = [v13 initWithFrame:?];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(COSScanWatchViewController *)self view];
  [view2 addSubview:v15];

  view3 = [(COSScanWatchViewController *)self view];
  leadingAnchor = [view3 leadingAnchor];
  leadingAnchor2 = [v15 leadingAnchor];
  v136 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v167[0] = v136;
  view4 = [(COSScanWatchViewController *)self view];
  trailingAnchor = [view4 trailingAnchor];
  trailingAnchor2 = [v15 trailingAnchor];
  v118 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v167[1] = v118;
  view5 = [(COSScanWatchViewController *)self view];
  layoutMarginsGuide = [view5 layoutMarginsGuide];
  topAnchor = [layoutMarginsGuide topAnchor];
  topAnchor2 = [v15 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v167[2] = v21;
  heightAnchor = [v15 heightAnchor];
  v23 = [heightAnchor constraintEqualToConstant:v12];
  v167[3] = v23;
  v24 = [NSArray arrayWithObjects:v167 count:4];
  [NSLayoutConstraint activateConstraints:v24];

  v25 = v15;
  [v15 insertSubview:self->_magicCodeScanner atIndex:0];
  [(COSMagicCodeScanner *)self->_magicCodeScanner setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor3 = [v15 leadingAnchor];
  leadingAnchor4 = [(COSMagicCodeScanner *)self->_magicCodeScanner leadingAnchor];
  v144 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v166[0] = v144;
  trailingAnchor3 = [v15 trailingAnchor];
  trailingAnchor4 = [(COSMagicCodeScanner *)self->_magicCodeScanner trailingAnchor];
  v26 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v166[1] = v26;
  topAnchor3 = [v15 topAnchor];
  topAnchor4 = [(COSMagicCodeScanner *)self->_magicCodeScanner topAnchor];
  v29 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v166[2] = v29;
  bottomAnchor = [v25 bottomAnchor];
  bottomAnchor2 = [(COSMagicCodeScanner *)self->_magicCodeScanner bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v166[3] = v32;
  v33 = [NSArray arrayWithObjects:v166 count:4];
  [NSLayoutConstraint activateConstraints:v33];

  v34 = [COSTargetOverlayView alloc];
  v35 = v25;
  [v25 bounds];
  v36 = [(COSTargetOverlayView *)v34 initWithFrame:?];
  overlayView = self->_overlayView;
  self->_overlayView = v36;

  [v25 insertSubview:self->_overlayView atIndex:1];
  [(COSTargetOverlayView *)self->_overlayView setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor5 = [v25 leadingAnchor];
  leadingAnchor6 = [(COSTargetOverlayView *)self->_overlayView leadingAnchor];
  v145 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v165[0] = v145;
  trailingAnchor5 = [v25 trailingAnchor];
  trailingAnchor6 = [(COSTargetOverlayView *)self->_overlayView trailingAnchor];
  v39 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v165[1] = v39;
  v159 = v35;
  topAnchor5 = [v35 topAnchor];
  topAnchor6 = [(COSTargetOverlayView *)self->_overlayView topAnchor];
  v42 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v165[2] = v42;
  bottomAnchor3 = [v35 bottomAnchor];
  bottomAnchor4 = [(COSTargetOverlayView *)self->_overlayView bottomAnchor];
  v45 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v165[3] = v45;
  v46 = [NSArray arrayWithObjects:v165 count:4];
  [NSLayoutConstraint activateConstraints:v46];

  [v159 setClipsToBounds:1];
  v47 = objc_opt_new();
  headerScrollView = self->_headerScrollView;
  self->_headerScrollView = v47;

  view6 = [(COSScanWatchViewController *)self view];
  [view6 addSubview:self->_headerScrollView];

  [(UIScrollView *)self->_headerScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  bottomAnchor5 = [(UIScrollView *)self->_headerScrollView bottomAnchor];
  view7 = [(COSScanWatchViewController *)self view];
  bottomAnchor6 = [view7 bottomAnchor];
  v53 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];

  topAnchor7 = [(UIScrollView *)self->_headerScrollView topAnchor];
  bottomAnchor7 = [v159 bottomAnchor];
  v139 = [topAnchor7 constraintEqualToAnchor:bottomAnchor7];
  v164[0] = v139;
  leadingAnchor7 = [(UIScrollView *)self->_headerScrollView leadingAnchor];
  view8 = [(COSScanWatchViewController *)self view];
  leadingAnchor8 = [view8 leadingAnchor];
  v56 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v164[1] = v56;
  trailingAnchor7 = [(UIScrollView *)self->_headerScrollView trailingAnchor];
  view9 = [(COSScanWatchViewController *)self view];
  trailingAnchor8 = [view9 trailingAnchor];
  v60 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v164[2] = v60;
  v164[3] = v53;
  v158 = v53;
  v61 = [NSArray arrayWithObjects:v164 count:4];
  [NSLayoutConstraint activateConstraints:v61];

  v62 = objc_opt_new();
  [v62 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_headerScrollView addSubview:v62];
  topAnchor8 = [(UIScrollView *)self->_headerScrollView topAnchor];
  topAnchor9 = [v62 topAnchor];
  v140 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  v163[0] = v140;
  bottomAnchor8 = [(UIScrollView *)self->_headerScrollView bottomAnchor];
  bottomAnchor9 = [v62 bottomAnchor];
  v123 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
  v163[1] = v123;
  view10 = [(COSScanWatchViewController *)self view];
  leadingAnchor9 = [view10 leadingAnchor];
  leadingAnchor10 = [v62 leadingAnchor];
  v65 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v163[2] = v65;
  view11 = [(COSScanWatchViewController *)self view];
  trailingAnchor9 = [view11 trailingAnchor];
  trailingAnchor10 = [v62 trailingAnchor];
  v69 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v163[3] = v69;
  v70 = [NSArray arrayWithObjects:v163 count:4];
  [NSLayoutConstraint activateConstraints:v70];

  v71 = [OBHeaderView alloc];
  v72 = +[NSBundle mainBundle];
  v73 = [v72 localizedStringForKey:@"SCAN_TITLE_TOP_LAYOUT" value:&stru_10026E598 table:@"Localizable"];
  v74 = +[NSBundle mainBundle];
  v75 = [v74 localizedStringForKey:@"SCAN_DETAIL_TOP_LAYOUT" value:&stru_10026E598 table:@"Localizable"];
  v76 = [v71 initWithTitle:v73 detailText:v75 icon:0];
  headerView = self->_headerView;
  self->_headerView = v76;

  [v62 addSubview:self->_headerView];
  [(OBHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor11 = [(OBHeaderView *)self->_headerView leadingAnchor];
  leadingAnchor12 = [v62 leadingAnchor];
  v128 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:16.0];
  v162[0] = v128;
  trailingAnchor11 = [(OBHeaderView *)self->_headerView trailingAnchor];
  trailingAnchor12 = [v62 trailingAnchor];
  v79 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:-16.0];
  v162[1] = v79;
  topAnchor10 = [(OBHeaderView *)self->_headerView topAnchor];
  topAnchor11 = [v62 topAnchor];
  v82 = [topAnchor10 constraintEqualToAnchor:topAnchor11 constant:32.0];
  v162[2] = v82;
  bottomAnchor10 = [(OBHeaderView *)self->_headerView bottomAnchor];
  v154 = v62;
  bottomAnchor11 = [v62 bottomAnchor];
  v85 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11 constant:-32.0];
  v162[3] = v85;
  v86 = [NSArray arrayWithObjects:v162 count:4];
  [NSLayoutConstraint activateConstraints:v86];

  v87 = +[OBHeaderAccessoryButton accessoryButton];
  manualPairingButton = self->_manualPairingButton;
  self->_manualPairingButton = v87;

  v89 = self->_manualPairingButton;
  v90 = +[NSBundle mainBundle];
  v91 = [v90 localizedStringForKey:@"SCAN_MANUAL_PAIR_TOP_LAYOUT" value:&stru_10026E598 table:@"Localizable"];
  [(OBHeaderAccessoryButton *)v89 setTitle:v91 forState:0];

  [(OBHeaderAccessoryButton *)self->_manualPairingButton addTarget:self action:"manualPairingButtonPressed:" forEvents:64];
  [(OBHeaderView *)self->_headerView addAccessoryButton:self->_manualPairingButton];
  v92 = +[NSNotificationCenter defaultCenter];
  [v92 addObserver:self selector:"presentNoCameraMode" name:@"COSCameraHitRuntimeError" object:0];

  v93 = +[NSNotificationCenter defaultCenter];
  [v93 addObserver:self selector:"deviceDidDecode:" name:@"COSMagicCodeDidDecodeNotification" object:0];

  v94 = objc_alloc_init(BKSAccelerometer);
  accelerometer = self->_accelerometer;
  self->_accelerometer = v94;

  [(BKSAccelerometer *)self->_accelerometer setDelegate:self];
  [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:1];
  LODWORD(v96) = 1008981770;
  [(BKSAccelerometer *)self->_accelerometer setXThreshold:v96];
  LODWORD(v97) = 1008981770;
  [(BKSAccelerometer *)self->_accelerometer setYThreshold:v97];
  LODWORD(v98) = 0.5;
  [(BKSAccelerometer *)self->_accelerometer setZThreshold:v98];
  [PBBridgeCAReporter incrementSuccessType:4];
  if ([(COSScanWatchViewController *)self _isSatellitePairing])
  {
    [PBBridgeCAReporter incrementSuccessType:23];
  }

  if (PBIsInternalInstall())
  {
    v99 = +[COSInternalUserStudyAssetManager detailBundle];
    if (v99)
    {
      v100 = v99;
      v101 = sub_10002D148();

      if (v101)
      {
        v102 = [[COSMLCaptureDisclosureView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        disclosureView = self->_disclosureView;
        self->_disclosureView = v102;

        [(COSMLCaptureDisclosureView *)self->_disclosureView setParentController:self];
        view12 = [(COSScanWatchViewController *)self view];
        [view12 addSubview:self->_disclosureView];

        [(COSMLCaptureDisclosureView *)self->_disclosureView setTranslatesAutoresizingMaskIntoConstraints:0];
        [v158 setActive:0];
        view13 = [(COSScanWatchViewController *)self view];
        leadingAnchor13 = [view13 leadingAnchor];
        leadingAnchor14 = [(COSMLCaptureDisclosureView *)self->_disclosureView leadingAnchor];
        v129 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
        v161[0] = v129;
        view14 = [(COSScanWatchViewController *)self view];
        trailingAnchor13 = [view14 trailingAnchor];
        trailingAnchor14 = [(COSMLCaptureDisclosureView *)self->_disclosureView trailingAnchor];
        v117 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
        v161[1] = v117;
        view15 = [(COSScanWatchViewController *)self view];
        bottomAnchor12 = [view15 bottomAnchor];
        bottomAnchor13 = [(COSMLCaptureDisclosureView *)self->_disclosureView bottomAnchor];
        v107 = [bottomAnchor12 constraintEqualToAnchor:bottomAnchor13 constant:0.0];
        v161[2] = v107;
        heightAnchor2 = [(COSMLCaptureDisclosureView *)self->_disclosureView heightAnchor];
        v109 = [heightAnchor2 constraintEqualToConstant:100.0];
        v161[3] = v109;
        bottomAnchor14 = [(UIScrollView *)self->_headerScrollView bottomAnchor];
        topAnchor12 = [(COSMLCaptureDisclosureView *)self->_disclosureView topAnchor];
        v112 = [bottomAnchor14 constraintEqualToAnchor:topAnchor12];
        v161[4] = v112;
        v113 = [NSArray arrayWithObjects:v161 count:5];
        [NSLayoutConstraint activateConstraints:v113];
      }
    }
  }

  v114 = objc_alloc_init(COSWatchDiscoveryCoordinator);
  discoveryCoordinator = self->_discoveryCoordinator;
  self->_discoveryCoordinator = v114;

  [(COSWatchDiscoveryCoordinator *)self->_discoveryCoordinator setDelegate:self];
  [(COSWatchDiscoveryCoordinator *)self->_discoveryCoordinator startDiscoveringWatchNearby];
  [(COSScanWatchViewController *)self _normalizeCameraReticuleScale];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = COSScanWatchViewController;
  [(COSScanWatchViewController *)&v9 viewWillAppear:appear];
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[COSScanWatchViewController viewWillAppear:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (self->_wrappingUpSuccessfulManualPairing || self->_hasFinishedPairing)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      wrappingUpSuccessfulManualPairing = self->_wrappingUpSuccessfulManualPairing;
      hasFinishedPairing = self->_hasFinishedPairing;
      *buf = 136315650;
      v11 = "[COSScanWatchViewController viewWillAppear:]";
      v12 = 1024;
      v13 = wrappingUpSuccessfulManualPairing;
      v14 = 1024;
      v15 = hasFinishedPairing;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s skipping initialization. wrappingUpSuccessfulManualPairing: %{BOOL}d hasFinishedPairing: %{BOOL}d", buf, 0x18u);
    }
  }

  else
  {
    if (![(COSMagicCodeScanner *)self->_magicCodeScanner isScanningForCode])
    {
      [(COSMagicCodeScanner *)self->_magicCodeScanner startRunning];
      v8 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      [v8 beginMacroActivity:@"COSGizmoCaptureViewControllerScanningPhase" beginTime:CFAbsoluteTimeGetCurrent()];
    }

    [(COSScanWatchViewController *)self _beginConsideringFaceUpAdvice];
    [(COSScanWatchViewController *)self _startStopWatchSetupPushesIfNeeded];
    [(COSScanWatchViewController *)self resetScanningTimeout];
    [(COSScanWatchViewController *)self enqueueAlreadyPairedDetectionStart];
    [(COSWatchDiscoveryCoordinator *)self->_discoveryCoordinator startDiscoveringWatchNearby];
    v5 = +[UIApplication sharedApplication];
    [v5 setIdleTimerDisabled:1];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = COSScanWatchViewController;
  [(COSScanWatchViewController *)&v11 viewDidAppear:appear];
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[COSScanWatchViewController viewDidAppear:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (self->_wrappingUpSuccessfulManualPairing || self->_hasFinishedPairing)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      wrappingUpSuccessfulManualPairing = self->_wrappingUpSuccessfulManualPairing;
      hasFinishedPairing = self->_hasFinishedPairing;
      *buf = 136315650;
      v13 = "[COSScanWatchViewController viewDidAppear:]";
      v14 = 1024;
      v15 = wrappingUpSuccessfulManualPairing;
      v16 = 1024;
      v17 = hasFinishedPairing;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s skipping initialization. wrappingUpSuccessfulManualPairing: %{BOOL}d hasFinishedPairing: %{BOOL}d", buf, 0x18u);
    }
  }

  else
  {
    if (sub_10002D04C() && [UIApp automationFlowPressed])
    {
      if (!self->_internalPairingController)
      {
        v8 = objc_alloc_init(COSInternalManualPairingViewController);
        internalPairingController = self->_internalPairingController;
        self->_internalPairingController = v8;

        [(COSInternalManualPairingViewController *)self->_internalPairingController setPairingDelegate:self];
        [(COSInternalManualPairingViewController *)self->_internalPairingController setModalPresentationStyle:0];
        scanningCoordinator = [(COSScanWatchViewController *)self scanningCoordinator];
        [scanningCoordinator startObservingCompatibilityState];

        [(COSScanWatchViewController *)self presentViewController:self->_internalPairingController animated:1 completion:&stru_1002697B8];
      }
    }

    else if (self->_noCameraMode && !self->_manualPairingController)
    {
      [(COSScanWatchViewController *)self presentNoCameraMode];
    }

    [(UIScrollView *)self->_headerScrollView flashScrollIndicators];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = COSScanWatchViewController;
  [(COSScanWatchViewController *)&v8 viewDidDisappear:disappear];
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[COSScanWatchViewController viewDidDisappear:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(COSScanWatchViewController *)self stopTrackingAccelerometer];
  if ([(COSMagicCodeScanner *)self->_magicCodeScanner isScanningForCode])
  {
    [(COSMagicCodeScanner *)self->_magicCodeScanner stopRunning];
  }

  if (self->_teardownScannerOnNextDisappear)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Tearing down code scanner post lock-on.", buf, 2u);
    }

    [(COSMagicCodeScanner *)self->_magicCodeScanner stopRunning];
    [(COSMagicCodeScanner *)self->_magicCodeScanner removeFromSuperview];
    magicCodeScanner = self->_magicCodeScanner;
    self->_magicCodeScanner = 0;

    self->_teardownScannerOnNextDisappear = 0;
  }

  [(COSScanWatchViewController *)self _startStopWatchSetupPushesIfNeeded];
  [(COSScanWatchViewController *)self cancelScanningTimeout];
  [(COSScanWatchViewController *)self _cancelAlreadyPairedTimers];
  [(COSWatchDiscoveryCoordinator *)self->_discoveryCoordinator stopDiscoveringWatchNearby];
  v7 = +[UIApplication sharedApplication];
  [v7 setIdleTimerDisabled:0];
}

- (void)_normalizeCameraReticuleScale
{
  [(COSTargetOverlayView *)self->_overlayView targetWidthRatio];
  v4 = v3;
  if (v3 >= 0.45)
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v13.a) = 134217984;
      *(&v13.a + 4) = v4;
      v8 = "Reticule is already at appropriate ratio (%f)";
      v9 = &v13;
      v10 = v7;
      v11 = 12;
      goto LABEL_6;
    }
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
    CGAffineTransformMakeScale(&v13, 0.45 / v3, 0.45 / v3);
    overlayView = self->_overlayView;
    v12 = v13;
    [(COSTargetOverlayView *)overlayView setTransform:&v12];
    magicCodeScanner = self->_magicCodeScanner;
    v12 = v13;
    [(COSMagicCodeScanner *)magicCodeScanner setTransform:&v12];
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v12.a) = 134218496;
      *(&v12.a + 4) = v4;
      WORD2(v12.b) = 2048;
      *(&v12.b + 6) = 0.45;
      HIWORD(v12.c) = 2048;
      v12.d = 0.45 / v4;
      v8 = "Scaled camera views from actual reticule ratio (%f) to ideal (%f) with scale factor (%f)";
      v9 = &v12;
      v10 = v7;
      v11 = 32;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v8, v9, v11);
    }
  }
}

- (void)didCancelManualPairing
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[COSScanWatchViewController didCancelManualPairing]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  scanningCoordinator = [(COSScanWatchViewController *)self scanningCoordinator];
  [scanningCoordinator stopObservingCompatibilityState];

  if (self->_noCameraMode)
  {
    [UIApp dismissSetupFlowComplete:0 animated:1];
  }

  else
  {
    presentingViewController = [(COSSecurePairingFlowViewController *)self->_manualPairingController presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];

    manualPairingController = self->_manualPairingController;
    self->_manualPairingController = 0;
  }
}

- (void)doneManualPairing
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[COSScanWatchViewController doneManualPairing]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
  }
}

- (void)cancelledManualPairing
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[COSScanWatchViewController cancelledManualPairing]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  internalPairingController = self->_internalPairingController;
  if (internalPairingController)
  {
    presentingViewController = [(COSInternalManualPairingViewController *)internalPairingController presentingViewController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000615E0;
    v6[3] = &unk_1002682F0;
    v6[4] = self;
    [presentingViewController dismissViewControllerAnimated:1 completion:v6];
  }
}

- (void)setManualPairingScannedCode:(id)code
{
  codeCopy = code;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[COSScanWatchViewController setManualPairingScannedCode:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(COSScanWatchViewController *)self receivedData:codeCopy];
}

- (BOOL)_isSatellitePairing
{
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  return isTinkerPairing;
}

- (void)_startStopWatchSetupPushesIfNeeded
{
  magicCodeScanner = self->_magicCodeScanner;
  if (magicCodeScanner && ([(COSMagicCodeScanner *)magicCodeScanner isHidden]& 1) == 0 && [(COSMagicCodeScanner *)self->_magicCodeScanner isScanningForCode]|| self->_manualPairingController)
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    [v4 startWatchSetupPush];
  }

  else
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    [v4 stopWatchSetupPush];
  }
}

- (void)presentUHP
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[COSScanWatchViewController presentUHP]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  [PBBridgeCAReporter incrementSuccessType:7];
  if (!self->_manualPairingController)
  {
    v4 = objc_alloc_init(COSSecurePairingFlowViewController);
    manualPairingController = self->_manualPairingController;
    self->_manualPairingController = v4;

    [(COSManualPairingFlowViewController *)self->_manualPairingController setPairingDelegate:self];
    [(COSSecurePairingFlowViewController *)self->_manualPairingController setModalPresentationStyle:0];
    scanningCoordinator = [(COSScanWatchViewController *)self scanningCoordinator];
    [scanningCoordinator startObservingCompatibilityState];

    [(COSScanWatchViewController *)self presentViewController:self->_manualPairingController animated:1 completion:&stru_1002697D8];
  }
}

- (void)finishedPairing
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[COSScanWatchViewController finishedPairing]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  setupController = [UIApp setupController];
  linkUpgradeMonitor = [setupController linkUpgradeMonitor];
  [linkUpgradeMonitor requestLinkUpgrade];

  setupController2 = [UIApp setupController];
  pairingReportManager = [setupController2 pairingReportManager];

  [pairingReportManager addPairingTimeEventToPairingReportPlist:9 withValue:&__kCFBooleanTrue withError:0];
  if (!self->_hasFinishedPairing)
  {
    internalPairingController = self->_internalPairingController;
    if (internalPairingController)
    {
      presentingViewController = [(COSInternalManualPairingViewController *)internalPairingController presentingViewController];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100061B94;
      v13[3] = &unk_1002682F0;
      v13[4] = self;
      [presentingViewController dismissViewControllerAnimated:1 completion:v13];
    }

    pairingCompatiblity = [setupController pairingCompatiblity];
    if ([pairingCompatiblity runUpdateInSetup])
    {
      delegate = [(COSScanWatchViewController *)self delegate];
      [delegate buddyControllerDone:self nextControllerClass:objc_opt_class()];
    }

    else
    {
      linkUpgradeMonitor2 = [setupController linkUpgradeMonitor];
      [linkUpgradeMonitor2 indicateSoftwareUpdateStateResolved];

      delegate = [(COSScanWatchViewController *)self delegate];
      [delegate buddyControllerDone:self];
    }

    self->_hasFinishedPairing = 1;
    self->_teardownScannerOnNextDisappear = 1;
  }
}

- (void)presentNoCameraMode
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSScanWatchViewController presentNoCameraMode]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  self->_noCameraMode = 1;
  [(COSScanWatchViewController *)self presentUHP];
}

- (void)resetScanningTimeout
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[COSScanWatchViewController resetScanningTimeout]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  if (self->_scanningTimeoutTimer)
  {
    [(COSScanWatchViewController *)self cancelScanningTimeout];
  }

  v4 = [NSTimer timerWithTimeInterval:self target:"scanningDidTimeout" selector:0 userInfo:0 repeats:300.0];
  scanningTimeoutTimer = self->_scanningTimeoutTimer;
  self->_scanningTimeoutTimer = v4;

  v6 = +[NSRunLoop mainRunLoop];
  [v6 addTimer:self->_scanningTimeoutTimer forMode:NSRunLoopCommonModes];
}

- (void)cancelScanningTimeout
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSScanWatchViewController cancelScanningTimeout]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(NSTimer *)self->_scanningTimeoutTimer invalidate];
  scanningTimeoutTimer = self->_scanningTimeoutTimer;
  self->_scanningTimeoutTimer = 0;
}

- (void)scanningDidTimeout
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100187B18(v2);
  }

  v3 = +[UIApplication sharedApplication];
  [v3 resetFlowForCameraExpiry];
}

- (void)enqueueAlreadyPairedDetectionStart
{
  if (!self->_hasDetectedFrames)
  {
    [(COSScanWatchViewController *)self _cancelAlreadyPairedTimers];
    v4 = [NSTimer timerWithTimeInterval:self target:"_startEvaluatingWristDetection:" selector:0 userInfo:0 repeats:5.0];
    alreadyPairedStartTimer = self->_alreadyPairedStartTimer;
    self->_alreadyPairedStartTimer = v4;

    v6 = +[NSRunLoop currentRunLoop];
    [v6 addTimer:self->_alreadyPairedStartTimer forMode:NSRunLoopCommonModes];
  }
}

- (void)cancelEnqueuedAlreadyPairedDetectionStart
{
  [(NSTimer *)self->_alreadyPairedStartTimer invalidate];
  alreadyPairedStartTimer = self->_alreadyPairedStartTimer;
  self->_alreadyPairedStartTimer = 0;
}

- (void)deviceDidDecode:(id)decode
{
  object = [decode object];
  if (objc_opt_respondsToSelector())
  {
    [object floatValue];
    v6 = v5;
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Decoding Code: %.1f", buf, 0xCu);
    }

    if (v6 > 0.0)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006217C;
      block[3] = &unk_1002682F0;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)_startEvaluatingWristDetection:(id)detection
{
  hasDetectedFrames = self->_hasDetectedFrames;
  v5 = pbb_setupflow_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (hasDetectedFrames)
  {
    if (v6)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Already Paired Detector] Found MagicCode frames, bailing out early.", v9, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Already Paired Detector] Begin aggresively looking for wrist / watch.", buf, 2u);
    }

    v7 = [NSTimer timerWithTimeInterval:self target:"_evaluateWristDetection:" selector:0 userInfo:1 repeats:0.4];
    watchOrWristScanTimer = self->_watchOrWristScanTimer;
    self->_watchOrWristScanTimer = v7;

    v5 = +[NSRunLoop currentRunLoop];
    [v5 addTimer:self->_watchOrWristScanTimer forMode:NSRunLoopCommonModes];
  }
}

- (void)_evaluateWristDetection:(id)detection
{
  if (self->_hasDetectedFrames)
  {
    detector = pbb_setupflow_log();
    if (os_log_type_enabled(detector, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, detector, OS_LOG_TYPE_DEFAULT, "[Already Paired Detector] Found MagicCode frames, bailing out during aggressive scan.", v12, 2u);
    }
  }

  else
  {
    detector = [(COSMagicCodeScanner *)self->_magicCodeScanner detector];
    confidenceSummary = [detector confidenceSummary];
    if ([confidenceSummary attribute] < 2)
    {
      if (self->_hasDetectedWrist)
      {
        v10 = pbb_setupflow_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Already Paired Detector] Device/Wrist Disappeared.", v13, 2u);
        }
      }

      [(NSTimer *)self->_alreadyPairedAlertTimer invalidate];
      alreadyPairedAlertTimer = self->_alreadyPairedAlertTimer;
      self->_alreadyPairedAlertTimer = 0;

      self->_hasDetectedWrist = 0;
    }

    else
    {
      if (self->_alreadyPairedDetectionStartTimeStamp == 0.0)
      {
        self->_alreadyPairedDetectionStartTimeStamp = CFAbsoluteTimeGetCurrent();
      }

      if (!self->_hasDetectedWrist)
      {
        v6 = pbb_setupflow_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Already Paired Detector] Detected Device... Begin timer to see if MagicCode is present.", buf, 2u);
        }

        self->_hasDetectedWrist = 1;
        v7 = [NSTimer timerWithTimeInterval:self target:"_alertUnpairableWatchPredicted:" selector:0 userInfo:0 repeats:4.0];
        v8 = self->_alreadyPairedAlertTimer;
        self->_alreadyPairedAlertTimer = v7;

        v9 = +[NSRunLoop currentRunLoop];
        [v9 addTimer:self->_alreadyPairedAlertTimer forMode:NSRunLoopCommonModes];
      }
    }
  }
}

- (void)_alertUnpairableWatchPredicted:(id)predicted
{
  predictedCopy = predicted;
  if (!self->_hasDetectedFrames)
  {
    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Already Paired Detector] No MagicCode frames found; detected device appears to be powered off or already paired. Presenting Unable to Pair alert.", buf, 2u);
    }

    v6 = +[NRPairedDeviceRegistry sharedInstance];
    watchNeedsGraduation = [v6 watchNeedsGraduation];

    if (watchNeedsGraduation)
    {
      delegate = [(COSScanWatchViewController *)self delegate];
      [delegate displayUnpairingInstructions];
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      v10 = Current - self->_alreadyPairedDetectionStartTimeStamp;
      v11 = +[NSUserDefaults standardUserDefaults];
      [v11 doubleForKey:@"AlreadyPairedFiredTimeStamp"];
      v13 = v12;

      v14 = pbb_setupflow_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [NSNumber numberWithDouble:v10];
        v16 = [NSNumber numberWithInt:v13 > 0.0];
        *buf = 138412546;
        v20 = v15;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Already Paired Detector] Detection took ~%@ (Has fired before? %@).", buf, 0x16u);
      }

      [PBBridgeCAReporter recordAlreadyPairedAlertFired:1 afterDuration:v13 > 0.0 hasFiredBefore:v10];
      v17 = +[NSUserDefaults standardUserDefaults];
      [v17 setDouble:@"AlreadyPairedFiredTimeStamp" forKey:Current];

      delegate = [(COSScanWatchViewController *)self delegate];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100062828;
      v18[3] = &unk_100269800;
      v18[4] = self;
      [delegate displayWatchAppearsPairedOrOffAlert:v18];
    }
  }

  [(COSScanWatchViewController *)self _cancelAlreadyPairedTimers];
}

- (void)_cancelAlreadyPairedTimers
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Already Paired Detector] Cleanup Timers.", v7, 2u);
  }

  [(NSTimer *)self->_watchOrWristScanTimer invalidate];
  watchOrWristScanTimer = self->_watchOrWristScanTimer;
  self->_watchOrWristScanTimer = 0;

  [(NSTimer *)self->_alreadyPairedAlertTimer invalidate];
  alreadyPairedAlertTimer = self->_alreadyPairedAlertTimer;
  self->_alreadyPairedAlertTimer = 0;

  [(NSTimer *)self->_watchOrWristScanTimer invalidate];
  v6 = self->_watchOrWristScanTimer;
  self->_watchOrWristScanTimer = 0;
}

- (void)updateScanningProgress:(double)progress key:(id)key
{
  if (progress > 0.0)
  {
    keyCopy = key;
    overlayView = [(COSScanWatchViewController *)self overlayView];
    [overlayView setScanningProgress:keyCopy key:progress];
  }
}

- (void)receivedData:(id)data
{
  dataCopy = data;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 67109634;
    *v13 = 762;
    *&v13[4] = 2080;
    *&v13[6] = "[COSScanWatchViewController receivedData:]";
    *&v13[14] = 2112;
    *&v13[16] = dataCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%d %s (%@)", &v12, 0x1Cu);
  }

  v6 = PBBridgeMagicCodeDecoder();
  v7 = [v6 count];

  setupController = pbb_setupflow_log();
  v9 = os_log_type_enabled(setupController, OS_LOG_TYPE_DEFAULT);
  if (v7 == 7)
  {
    if (v9)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, setupController, OS_LOG_TYPE_DEFAULT, "Valid setup code, starting pairing", &v12, 2u);
    }

    setupController = [UIApp setupController];
    [setupController blockGoingBackFromCurrentController];
    manualPairingButton = [(COSScanWatchViewController *)self manualPairingButton];
    [manualPairingButton setEnabled:0];

    scanningCoordinator = [(COSScanWatchViewController *)self scanningCoordinator];
    [scanningCoordinator startPairingWithScannedCode:dataCopy];

    [(COSScanWatchViewController *)self cancelScanningTimeout];
  }

  else if (v9)
  {
    v12 = 134218240;
    *v13 = v7;
    *&v13[8] = 2048;
    *&v13[10] = 7;
    _os_log_impl(&_mh_execute_header, setupController, OS_LOG_TYPE_DEFAULT, "Invalid setup code! Has %lu comps but expected %lu", &v12, 0x16u);
  }
}

- (BOOL)isViewControllerVisibleForScanningCoordinator:(id)coordinator
{
  selfCopy = self;
  navigationController = [(COSScanWatchViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  LOBYTE(selfCopy) = topViewController == selfCopy;

  return selfCopy;
}

- (void)scanningCoordinatorDidDetectUnsupportedTinkerHardware:(id)hardware
{
  delegate = [(COSScanWatchViewController *)self delegate];
  [delegate displayUnsupportedTinkerHardwareFailure:&stru_100269820];
}

- (void)scanningCoordinatorDidDetectUnsupportedYorktownHardware:(id)hardware
{
  delegate = [(COSScanWatchViewController *)self delegate];
  [delegate displayUnsupportedYorktownHardwareFailure:&stru_100269840];
}

- (void)scanningCoordinatorDidDetectUnsupportedCompanionSoftware:(id)software
{
  delegate = [(COSScanWatchViewController *)self delegate];
  [delegate displayCompanionTooOldPairingFailureAlertWithDismissalHandler:&stru_100269860];
}

- (void)scanningCoordinatorDidUnpair:(id)unpair
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(Scan Watch) Presenting Unpairing UI", v4, 2u);
  }
}

- (void)scanningCoordinatorDidCompleteForInternalUserStudyFlow:(id)flow
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[COSScanWatchViewController scanningCoordinatorDidCompleteForInternalUserStudyFlow:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  delegate = [(COSScanWatchViewController *)self delegate];
  [delegate buddyControllerDone:self nextControllerClass:objc_opt_class()];

  self->_teardownScannerOnNextDisappear = 1;
}

- (void)scanningCoordinatorDidCompleteForManualPairing:(id)pairing
{
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(UHP) Clean up controller", buf, 2u);
  }

  self->_noCameraMode = 0;
  manualPairingController = self->_manualPairingController;
  if (manualPairingController)
  {
    v6 = manualPairingController;
LABEL_6:
    self->_wrappingUpSuccessfulManualPairing = 1;
    goto LABEL_7;
  }

  v6 = self->_internalPairingController;
  if (v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  presentingViewController = [(COSInternalManualPairingViewController *)v6 presentingViewController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006323C;
  v10[3] = &unk_1002682F0;
  v10[4] = self;
  [presentingViewController dismissViewControllerAnimated:1 completion:v10];

  v8 = self->_manualPairingController;
  self->_manualPairingController = 0;

  internalPairingController = self->_internalPairingController;
  self->_internalPairingController = 0;
}

- (void)_beginConsideringFaceUpAdvice
{
  if (!self->_hasDetectedFrames)
  {
    [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:1];
    self->_currentDeviceOrientation = [(BKSAccelerometer *)self->_accelerometer currentDeviceOrientation];
    v3 = objc_alloc_init(NSMutableArray);
    motionDeltaRingBuffer = self->_motionDeltaRingBuffer;
    self->_motionDeltaRingBuffer = v3;

    previousMotion = self->_previousMotion;
    self->_previousMotion = 0;

    if (self->_currentDeviceOrientation == 5)
    {
      v6 = pbb_setupflow_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Start timer for FaceUp advice", v7, 2u);
      }

      [(BKSAccelerometer *)self->_accelerometer setAccelerometerEventsEnabled:1];
      [(COSScanWatchViewController *)self _refreshFaceUpAdviceTimer];
    }
  }
}

- (void)_refreshFaceUpAdviceTimer
{
  [(NSTimer *)self->_faceUpTimer invalidate];
  v3 = [NSTimer timerWithTimeInterval:self target:"_offerCameraUseAdvice:" selector:0 userInfo:0 repeats:5.0];
  faceUpTimer = self->_faceUpTimer;
  self->_faceUpTimer = v3;

  v5 = +[NSRunLoop mainRunLoop];
  [v5 addTimer:self->_faceUpTimer forMode:NSRunLoopCommonModes];
}

- (void)stopTrackingAccelerometer
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop tracking the accelerometer", v5, 2u);
  }

  [(NSTimer *)self->_faceUpTimer invalidate];
  faceUpTimer = self->_faceUpTimer;
  self->_faceUpTimer = 0;

  [(BKSAccelerometer *)self->_accelerometer setAccelerometerEventsEnabled:0];
  [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:0];
}

- (void)_offerCameraUseAdvice:(id)advice
{
  [(NSTimer *)self->_faceUpTimer invalidate];
  faceUpTimer = self->_faceUpTimer;
  self->_faceUpTimer = 0;

  if (self->_currentDeviceOrientation == 5)
  {
    self->_offeringFaceUpAdvice = 1;
    [PBBridgeCAReporter incrementSuccessType:3];
    if (!self->_hasDetectedFrames && _os_feature_enabled_impl() && !self->_dynamicHelpViewController)
    {
      v5 = objc_alloc_init(COSScanWatchDynamicHelpViewController);
      dynamicHelpViewController = self->_dynamicHelpViewController;
      self->_dynamicHelpViewController = v5;

      [(COSScanWatchDynamicHelpViewController *)self->_dynamicHelpViewController setScanDelegate:self];
      [(COSScanWatchDynamicHelpViewController *)self->_dynamicHelpViewController setDiscoveredWatchNearby:[(COSWatchDiscoveryCoordinator *)self->_discoveryCoordinator discoveredWatchNearby]];
      v7 = self->_dynamicHelpViewController;

      [(COSScanWatchViewController *)self presentViewController:v7 animated:1 completion:0];
    }
  }
}

- (void)dynamicHelpControllerDidDisappear:(id)disappear
{
  dynamicHelpViewController = self->_dynamicHelpViewController;
  self->_dynamicHelpViewController = 0;

  self->_offeringFaceUpAdvice = 0;

  [(COSScanWatchViewController *)self _beginConsideringFaceUpAdvice];
}

- (void)accelerometer:(id)accelerometer didAccelerateWithTimeStamp:(double)stamp x:(float)x y:(float)y z:(float)z eventType:(int)type
{
  accelerometerCopy = accelerometer;
  if (self->_faceUpTimer)
  {
    if ([(NSMutableArray *)self->_motionDeltaRingBuffer count]>= 0x12)
    {
      [(NSMutableArray *)self->_motionDeltaRingBuffer removeFirstObject];
    }

    previousMotion = self->_previousMotion;
    if (previousMotion)
    {
      motionDeltaRingBuffer = self->_motionDeltaRingBuffer;
      [(MotionTuple *)previousMotion x];
      v16 = x - v15;
      [(MotionTuple *)self->_previousMotion y];
      v18 = y - v17;
      [(MotionTuple *)self->_previousMotion z];
      *&v20 = z - v19;
      *&v21 = v16;
      *&v22 = v18;
      v23 = [MotionTuple motionWithX:v21 andY:v22 andZ:v20];
      [(NSMutableArray *)motionDeltaRingBuffer addObject:v23];
    }

    else
    {
      v24 = objc_alloc_init(MotionTuple);
      v23 = self->_previousMotion;
      self->_previousMotion = v24;
    }

    *&v25 = x;
    [(MotionTuple *)self->_previousMotion setX:v25];
    *&v26 = y;
    [(MotionTuple *)self->_previousMotion setY:v26];
    *&v27 = z;
    [(MotionTuple *)self->_previousMotion setZ:v27];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v28 = self->_motionDeltaRingBuffer;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v44;
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v36 = *(*(&v43 + 1) + 8 * i);
          [v36 x];
          v34 = v34 + v37;
          [v36 y];
          v33 = v33 + v38;
          [v36 z];
          v32 = v32 + v39;
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v30);
    }

    else
    {
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
    }

    v40 = [(NSMutableArray *)self->_motionDeltaRingBuffer count];
    if (v40)
    {
      v34 = v34 / v40;
      v33 = v33 / v40;
      v32 = v32 / v40;
    }

    else
    {
      v41 = pbb_setupflow_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_100187B5C(v41);
      }
    }

    v42 = v34;
    if (v34 > 0.0003 || (v42 = v33, v33 > 0.0003) || (v42 = v32, v32 > 0.0003))
    {
      [(COSScanWatchViewController *)self _refreshFaceUpAdviceTimer:0.0003];
    }
  }
}

- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation
{
  accelerometerCopy = accelerometer;
  if (self->_offeringFaceUpAdvice)
  {
    if (orientation != 5)
    {
      self->_offeringFaceUpAdvice = 0;
      if (self->_dynamicHelpViewController)
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_100063A20;
        v7[3] = &unk_1002682F0;
        v7[4] = self;
        [(COSScanWatchViewController *)self dismissViewControllerAnimated:1 completion:v7];
      }

      self->_currentDeviceOrientation = orientation;
    }
  }

  else
  {
    [(COSScanWatchViewController *)self _beginConsideringFaceUpAdvice];
  }
}

- (void)discoveredWatchNearby:(id)nearby
{
  dynamicHelpViewController = self->_dynamicHelpViewController;
  nearbyCopy = nearby;
  [(COSScanWatchDynamicHelpViewController *)dynamicHelpViewController setState:1 animated:1];
  [nearbyCopy stopDiscoveringWatchNearby];
}

- (COSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end