@interface COSSetupController
+ (BOOL)isLiveActivityFeatureEnabled;
+ (double)delayForRevLockDuringPairingBeforeEnteringConfigureState;
+ (id)buddyFlowMapping;
+ (id)bundleFlowMapping;
+ (id)classicBuddyFlowMapping;
+ (id)loadBundleControllerClasses;
+ (id)signInFlowLastControllerClassName;
+ (id)signInFlowMapping;
+ (id)tinkerBuddyFlowMapping;
+ (void)addBundlesToTinkerFlowMapping:(id)mapping;
+ (void)debugLiveActivities;
+ (void)updateMappingForYorktown:(id)yorktown;
- (BOOL)_controllerShouldMirrorToGizmo:(id)gizmo;
- (BOOL)_shouldSkipForBetterTogether:(id)together;
- (BOOL)areLiveActivitiesAllowed;
- (BOOL)canPairAgain;
- (BOOL)doesLiveActivityProviderRequiresPairSyncNotifications;
- (BOOL)hasStartedPairing;
- (BOOL)isAlreadyPaired;
- (BOOL)nextControllerToPresentAfterBlockedOnSignInStep;
- (COSActivationResponseManager)activationManager;
- (COSAppleIDAuthController)tinkerAuthenticationController;
- (COSAppleIDSignInModel)appleIDSignInModel;
- (COSLinkUpgradeMonitor)linkUpgradeMonitor;
- (COSPairingCompatibility)pairingCompatiblity;
- (COSSetupController)initWithMode:(unint64_t)mode;
- (COSSetupSoftwareUpdateManager)setupSoftwareUpdateManager;
- (Class)_updateNextControllerForSignInFlow:(Class)flow currentControllerClass:(Class)class;
- (NRDevice)expressModeDevice;
- (NSArray)expressModeControllers;
- (id)_alertMessageForReason:(unint64_t)reason andCode:(id)code;
- (id)_controllerFollowingControllerClass:(Class)class;
- (id)_controllerForClass:(Class)class;
- (id)_titleForViewController:(id)controller;
- (id)_viewControllerForBuddyController:(id)controller;
- (id)lastLiveActivityProvider;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)setupFlowUserInfo;
- (void)_buddyControllerDone:(id)done nextControllerClass:(Class)class nextController:(id)controller;
- (void)_buddyControllerReleaseHold:(id)hold andSkip:(BOOL)skip;
- (void)_pushBuddyController:(id)controller ontoNavigationController:(id)navigationController;
- (void)_pushGizmoBuddyController:(id)controller;
- (void)_transitionFromBuddyController:(id)controller toBuddyController:(id)buddyController;
- (void)activationServerResponded;
- (void)appleIDSilentSignInControllerSignedAccountType:(unint64_t)type withSuccess:(BOOL)success;
- (void)blockGoingBackFromCurrentController;
- (void)buddyControllerCancelAnyHold;
- (void)buddyControllerDoneForSignIn:(id)in;
- (void)buddyControllerHold:(id)hold beforePresentingBuddyController:(id)controller;
- (void)buddyControllerWillPushNextControllerClass:(Class)class outNextController:(id *)controller ontoNavigationController:(id)navigationController;
- (void)checkInWithPairingMetricForSignInState;
- (void)checkSafeToTransitionOnNavigationController:(id)controller withCompletion:(id)completion;
- (void)cleanupHoldWaitTimer;
- (void)clearIdleUserNotification;
- (void)companionDidFinishHealthSharingOptIn:(BOOL)in;
- (void)completePairingMetricForAppTermination;
- (void)dealloc;
- (void)displayCompanionTooOldPairingFailureAlertWithDismissalHandler:(id)handler;
- (void)displayPairingFailureAlertForMessage:(id)message title:(id)title failureCode:(id)code withCompletion:(id)completion;
- (void)displayPairingFailureAlertForReason:(unint64_t)reason withCompletion:(id)completion;
- (void)displayPairingFailureWatchAlreadyPairedToCompanion:(id)companion completion:(id)completion;
- (void)displayUnpairingInstructions;
- (void)displayUnsupportedTinkerHardwareFailure:(id)failure;
- (void)displayUnsupportedWatchPairingAlertToBetterTogetherDeviceWithCompletion:(id)completion;
- (void)displayUnsupportedYorktownHardwareFailure:(id)failure;
- (void)displayWatchAppearsPairedOrOffAlert:(id)alert;
- (void)endLiveActivityIfNeeded;
- (void)endLiveActivityWithEndStatus:(int64_t)status;
- (void)finalCleanup;
- (void)finishedActivating:(id)activating;
- (void)gizmoDidFinishHealthSharingOptIn:(BOOL)in;
- (void)invalidateState;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)passcodeCreationComplete;
- (void)passcodeCreationFailed;
- (void)popRUIObject:(id)object animated:(BOOL)animated;
- (void)popViewController:(id)controller;
- (void)postUserNotificationForController:(id)controller;
- (void)prewarmVisualDetector;
- (void)promptWhetherToResetPairing:(id)pairing;
- (void)promptWhetherToUpdateGizmo:(id)gizmo;
- (void)pushRUIObject:(id)object animated:(BOOL)animated completion:(id)completion;
- (void)reloadAppearance;
- (void)run;
- (void)saveCombinedPasswordBasediTunesStoreAccount:(id)account fromAccountStore:(id)store;
- (void)setPairingParentFamilyMember:(id)member;
- (void)setPairingReportManager:(id)manager;
- (void)setTinkerFamilyMember:(id)member;
- (void)setTinkerUserName:(id)name;
- (void)showBusyIndicator:(BOOL)indicator;
- (void)showButtonTrayBusyIndicator:(BOOL)indicator forController:(id)controller;
- (void)startLiveActivity;
- (void)startPostActivationCompatiblePairingBackgroundTasks;
- (void)startSilentAppleIDSignIn;
- (void)tellAppConduitToInstallAllApps;
- (void)tellWatchAgainToUpdateNRToNormalStateAfterRelaunchingForLanguageChange;
- (void)updateActivelyPairingWatchBuddyStage:(unsigned int)stage;
- (void)updateActivityAndRegenerateImages;
- (void)updateLiveActivityWithBuddyController:(id)controller;
- (void)updateLiveActivityWithTitle:(id)title subtitle:(id)subtitle;
- (void)updateLiveActivityWithViewController:(id)controller;
- (void)updateNanoRegistryToNormalState;
- (void)updateStagedMDMEnrollmentDataForPairingWatchWithCompletion:(id)completion;
@end

@implementation COSSetupController

+ (void)debugLiveActivities
{
  if (sub_100009A74())
  {
    v2 = LiveActivityServiceDebugUtils.debugCallback.unsafeMutableAddressor();
    swift_beginAccess();
    v3 = *v2;
    *v2 = sub_10014606C;
    v2[1] = 0;
    sub_10000D74C(v3);
    v4 = LiveActivityServiceDebugUtils.debugEndedCallback.unsafeMutableAddressor();
    swift_beginAccess();
    v5 = *v4;
    *v4 = sub_100146158;
    v4[1] = 0;
    sub_10000D74C(v5);
  }
}

- (COSSetupController)initWithMode:(unint64_t)mode
{
  v22.receiver = self;
  v22.super_class = COSSetupController;
  v4 = [(COSSetupController *)&v22 init];
  v5 = v4;
  if (v4)
  {
    v4->_mode = mode;
    v6 = objc_alloc_init(NSMutableArray);
    buddyControllers = v5->_buddyControllers;
    v5->_buddyControllers = v6;

    v8 = objc_alloc_init(COSBuddyNavigationController);
    navigationController = v5->_navigationController;
    v5->_navigationController = v8;

    view = [(COSBuddyNavigationController *)v5->_navigationController view];
    v11 = +[UIColor blackColor];
    [view setBackgroundColor:v11];

    [(COSBuddyNavigationController *)v5->_navigationController setDelegate:v5];
    navigationBar = [(COSBuddyNavigationController *)v5->_navigationController navigationBar];
    [navigationBar setBarStyle:1];

    [(COSBuddyNavigationController *)v5->_navigationController setBuddyNavDelegate:v5];
    view2 = [(COSBuddyNavigationController *)v5->_navigationController view];
    v14 = BPSSetupTintColor();
    [view2 setTintColor:v14];

    [UINavigationBar _setUseCustomBackButtonAction:1];
    v27 = objc_opt_class();
    v15 = [NSArray arrayWithObjects:&v27 count:1];
    v16 = [UIBarButtonItem appearanceWhenContainedInInstancesOfClasses:v15];
    v25 = NSFontAttributeName;
    v17 = BPSFontWithSize();
    v26 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [v16 setTitleTextAttributes:v18 forState:5];

    navigationBar2 = [(COSBuddyNavigationController *)v5->_navigationController navigationBar];
    sub_10002C794(navigationBar2);

    v20 = pbb_setupflow_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SetupController initialized (%p)", buf, 0xCu);
    }
  }

  return v5;
}

- (COSAppleIDSignInModel)appleIDSignInModel
{
  appleIDSignInModel = self->_appleIDSignInModel;
  if (!appleIDSignInModel)
  {
    v4 = objc_alloc_init(COSAppleIDSignInModel);
    v5 = self->_appleIDSignInModel;
    self->_appleIDSignInModel = v4;

    appleIDSignInModel = self->_appleIDSignInModel;
  }

  return appleIDSignInModel;
}

- (id)setupFlowUserInfo
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  tinkerFamilyMember = self->_tinkerFamilyMember;
  if (tinkerFamilyMember)
  {
    [v3 setObject:tinkerFamilyMember forKey:BPSPairingFlowFamilyMember];
  }

  organizerFamilyMember = self->_organizerFamilyMember;
  if (organizerFamilyMember)
  {
    [v4 setObject:organizerFamilyMember forKey:BPSPairingFlowFamilyOrganizer];
  }

  pairingParentFamilyMember = self->_pairingParentFamilyMember;
  if (pairingParentFamilyMember)
  {
    [v4 setObject:pairingParentFamilyMember forKey:BPSPairingFlowFamilyPairingParent];
  }

  bridgeController = [UIApp bridgeController];
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [bridgeController isTinkerPairing]);

  [v4 setObject:v9 forKey:BPSPairingFlowIsTinkerPairing];
  v10 = pbb_setupflow_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting backup info in the user info dict", &v23, 2u);
  }

  deviceRestoredFrom = self->_deviceRestoredFrom;
  pairingID = pbb_setupflow_log();
  v13 = os_log_type_enabled(pairingID, OS_LOG_TYPE_DEFAULT);
  if (deviceRestoredFrom)
  {
    if (v13)
    {
      v14 = self->_deviceRestoredFrom;
      v23 = 138412290;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, pairingID, OS_LOG_TYPE_DEFAULT, "Setting Device to restore from to: %@", &v23, 0xCu);
    }

    [v4 setObject:self->_deviceRestoredFrom forKey:BPSPairingDeviceRestoredFrom];
    pairingID = [(NRDevice *)self->_deviceRestoredFrom pairingID];
    [v4 setObject:pairingID forKey:BPSPairingIDRestoredFrom];
  }

  else if (v13)
  {
    v15 = self->_deviceRestoredFrom;
    v23 = 138412290;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, pairingID, OS_LOG_TYPE_DEFAULT, "No Device to restore from to: %@", &v23, 0xCu);
  }

  backupRestoredFrom = self->_backupRestoredFrom;
  v17 = pbb_setupflow_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (backupRestoredFrom)
  {
    if (v18)
    {
      v19 = self->_backupRestoredFrom;
      v23 = 138412290;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Setting Backup to restore from to: %@", &v23, 0xCu);
    }

    [v4 setObject:self->_backupRestoredFrom forKey:BPSPairingBackupRestoredFrom];
  }

  else
  {
    if (v18)
    {
      v20 = self->_deviceRestoredFrom;
      v23 = 138412290;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No Backup to restore from to: %@", &v23, 0xCu);
    }
  }

  v21 = [NSNumber numberWithBool:self->_didAllowTinkerHealthSharing];
  [v4 setObject:v21 forKey:BPSPairingFlowIsTinkerHealthSharingEnabled];

  return v4;
}

- (void)reloadAppearance
{
  navigationBar = [(COSBuddyNavigationController *)self->_navigationController navigationBar];
  sub_10002C794(navigationBar);
}

- (void)invalidateState
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating state (self: %p)", &v20, 0xCu);
  }

  if ([(COSSetupController *)self offerYorktownForCurrentPairing]&& self->_analyticsEnrollmentFailed)
  {
    [PBBridgeCAReporter recordDeviceEnrollmentResult:0 retryCount:self->_analyticsEnrollmentRetryCount];
    pairingReportManager = [(COSSetupController *)self pairingReportManager];
    [pairingReportManager addPairingTimeEventToPairingReportPlist:75 withValue:&off_100281B70 withError:0];
  }

  self->_analyticsEnrollmentRetryCount = 0;
  self->_analyticsEnrollmentFailed = 0;
  [(COSLinkUpgradeMonitor *)self->_linkUpgradeMonitor resetMonitor];
  linkUpgradeMonitor = self->_linkUpgradeMonitor;
  self->_linkUpgradeMonitor = 0;

  self->_resolvedPreconditionsForSoftwareUpdate = 0;
  self->_nrUpdatedToNormalState = 0;
  self->_watchBuddyCompletedStages = 0;
  deferredHoldBlock = self->_deferredHoldBlock;
  self->_deferredHoldBlock = 0;

  [(COSSetupController *)self cleanupHoldWaitTimer];
  [(COSActivationResponseManager *)self->_activationManager setSetupController:0];
  activationManager = self->_activationManager;
  self->_activationManager = 0;

  [(COSSetupController *)self buddyControllerCancelAnyHold];
  self->_hasAddedPasscode = 0;
  appleIDSignInModel = self->_appleIDSignInModel;
  self->_appleIDSignInModel = 0;

  self->_hasStartedSilentAppleIDSignIn = 0;
  [(COSAppleIDSilentSignInController *)self->_silentSignInController setDelegate:0];
  silentSignInController = self->_silentSignInController;
  self->_silentSignInController = 0;

  *&self->_updateInSetupFlowHasCompleted = 0;
  revLockDelayAfterUpdateDate = self->_revLockDelayAfterUpdateDate;
  self->_revLockDelayAfterUpdateDate = 0;

  revLockDelayAfterUpdateTimer = self->_revLockDelayAfterUpdateTimer;
  if (revLockDelayAfterUpdateTimer)
  {
    dispatch_source_cancel(revLockDelayAfterUpdateTimer);
    v12 = self->_revLockDelayAfterUpdateTimer;
    self->_revLockDelayAfterUpdateTimer = 0;
  }

  *&self->_didWaitAfterRevLockUpdate = 0;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.keybagd.lock_status", 0);
  v14 = +[COSBackupManager sharedBackupManager];
  [v14 reset];

  v15 = UIApp;
  [v15 resetActivationFailureCountAndReport:0];
  [v15 setIsRestoringToKnownDevice:0];
  [v15 setIsUpdatingGizmoInSetupFlow:0];
  [v15 setIsActivated:0];
  [v15 setIsLanguageAndLocaleFinished:0];
  setupController = [v15 setupController];
  [setupController setPairingReportManager:0];

  bridgeController = [v15 bridgeController];
  [bridgeController endSetupTransaction];

  [(COSRegistryDispatcher *)self->_alreadyPairedDispatcher invalidate];
  alreadyPairedDispatcher = self->_alreadyPairedDispatcher;
  self->_alreadyPairedDispatcher = 0;

  *&self->_isDeKOTAFlow = 0;
  appChoiceUpdater = self->_appChoiceUpdater;
  self->_appChoiceUpdater = 0;

  [(COSSetupController *)self finalCleanup];
}

- (void)run
{
  [(COSSetupController *)self loadSetupBundle];
  +[COSInternalUserStudyAssetManager clearVideoFile];
  [(COSSetupController *)self prewarmVisualDetector];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"finishedActivating:" name:PBBridgeGizmoDidFinishActivatingNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"activationServerResponded" name:PBBridgeActivationServerRespondedNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"passcodeCreationFailed" name:PBBridgeDidFailToCreatePasscodeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"passcodeCreationComplete" name:PBBridgeDidCompletePasscodeCreationNotification object:0];

  v7 = +[AVAudioSession sharedInstance];
  [v7 setCategory:AVAudioSessionCategoryPlayback withOptions:1 error:0];

  v8 = objc_opt_new();
  resumePairingController = self->_resumePairingController;
  self->_resumePairingController = v8;

  [(COSResumePairingStateController *)self->_resumePairingController setSetupController:self];
  [(COSResumePairingStateController *)self->_resumePairingController loadPairingState];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10008D6B0;
  v33[3] = &unk_10026A2E8;
  v33[4] = self;
  v10 = objc_retainBlock(v33);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10008D93C;
  v29[3] = &unk_100268A38;
  v11 = UIApp;
  v30 = v11;
  selfCopy = self;
  v12 = v10;
  v32 = v12;
  v13 = objc_retainBlock(v29);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10008DB68;
  v25[3] = &unk_10026A338;
  v25[4] = self;
  v14 = v12;
  v27 = v14;
  v15 = v11;
  v26 = v15;
  v16 = v13;
  v28 = v16;
  v17 = objc_retainBlock(v25);
  v18 = pbb_setupflow_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    mode = self->_mode;
    *buf = 134217984;
    v35 = mode;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Initial pairing mode: %lu", buf, 0xCu);
  }

  v20 = self->_mode;
  switch(v20)
  {
    case 1uLL:
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10008E034;
      v23[3] = &unk_100269120;
      v24 = v17;
      [(COSSetupController *)self updateStagedMDMEnrollmentDataForPairingWatchWithCompletion:v23];

      break;
    case 3uLL:
      v16[2](v16);
      break;
    case 2uLL:
      v21 = objc_alloc_init(COSResetWatchNoticeViewController);
      [(COSResetWatchNoticeViewController *)v21 setDelegate:self];
      (v14[2])(v14, v21);

      break;
  }

  v22 = +[NSUserDefaults standardUserDefaults];
  [v22 removeObjectForKey:@"COSWatchReportedUseAfterSetup"];
}

+ (id)loadBundleControllerClasses
{
  if (qword_1002BD4E8 != -1)
  {
    sub_100188878();
  }

  v3 = qword_1002BD4E0;

  return v3;
}

- (void)dealloc
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SetupController deallocating (%p)", buf, 0xCu);
  }

  [(COSSetupController *)self finalCleanup];
  v4.receiver = self;
  v4.super_class = COSSetupController;
  [(COSSetupController *)&v4 dealloc];
}

- (void)finalCleanup
{
  tinkerAuthenticationController = self->_tinkerAuthenticationController;
  self->_tinkerAuthenticationController = 0;

  deferredHoldBlock = self->_deferredHoldBlock;
  self->_deferredHoldBlock = 0;

  [(COSSetupController *)self cleanupHoldWaitTimer];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6 = self->_navigationController;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008E4F4;
  block[3] = &unk_1002682F0;
  v13 = v6;
  v7 = v6;
  dispatch_async(&_dispatch_main_q, block);
  [(NSMutableArray *)self->_buddyControllers removeAllObjects];
  buddyControllers = self->_buddyControllers;
  self->_buddyControllers = 0;

  navigationController = self->_navigationController;
  self->_navigationController = 0;

  controllerDisplayedWhileOnHold = self->_controllerDisplayedWhileOnHold;
  self->_controllerDisplayedWhileOnHold = 0;

  nextControllerAfterHold = self->_nextControllerAfterHold;
  self->_nextControllerAfterHold = 0;

  [(COSSetupController *)self endLiveActivityWithEndStatus:0];
}

- (BOOL)isAlreadyPaired
{
  v2 = sub_100009AB4();
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  status = [v3 status];

  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NRPairedDeviceRegistryStatusCodeString();
    v9 = 138412546;
    v10 = v2;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Paired Devices %@ Status %@", &v9, 0x16u);
  }

  v7 = status == 2 && [v2 count] != 0;
  return v7;
}

- (BOOL)canPairAgain
{
  v2 = PBPairedSyncComplete();
  if (v2)
  {

    LOBYTE(v2) = sub_100005808(0, 0);
  }

  return v2;
}

- (BOOL)hasStartedPairing
{
  viewControllers = [(COSBuddyNavigationController *)self->_navigationController viewControllers];
  v3 = [viewControllers count] != 0;

  return v3;
}

- (void)displayUnpairingInstructions
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Already Paired Detector] has watch that is alt account and this watch is already paired, give instructions to unpair", v6, 2u);
  }

  v4 = objc_alloc_init(COSWatchUnpairInstructionsController);
  unpairInstructions = self->_unpairInstructions;
  self->_unpairInstructions = v4;

  [(COSWatchUnpairInstructionsController *)self->_unpairInstructions presentWithController:self->_navigationController];
}

- (void)displayWatchAppearsPairedOrOffAlert:(id)alert
{
  alertCopy = alert;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"WATCH_IS_OFF_OR_ALREADY_PAIRED_ALERT_BODY" value:&stru_10026E598 table:@"Localizable"];

  if (PBIsInternalInstall())
  {
    v6 = [v5 stringByAppendingString:@"\n\n[Internal-Only: This alert appearing unexpectedly may indicate that your development watch is not correctly advertising (the heuristic behind this is looking for an advertising watch in the camera frame). Please re-try pairing after rebooting your Apple Watch and if issues persist file a radar with Pepper Pairing.]"];

    v5 = v6;
  }

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"WATCH_IS_OFF_OR_ALREADY_PAIRED_ALERT_TITLE" value:&stru_10026E598 table:@"Localizable"];
  v9 = [UIAlertController alertControllerWithTitle:v8 message:v5 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"WATCH_IS_OFF_OR_ALREADY_PAIRED_ALERT_LINK" value:&stru_10026E598 table:@"Localizable"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10008EA50;
  v21[3] = &unk_10026A380;
  v12 = alertCopy;
  v22 = v12;
  v13 = [UIAlertAction actionWithTitle:v11 style:0 handler:v21];

  [v9 addAction:v13];
  [v9 setPreferredAction:v13];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"WATCH_IS_OFF_OR_ALREADY_PAIRED_ALERT_CANCEL" value:&stru_10026E598 table:@"Localizable"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008EAF8;
  v19[3] = &unk_10026A380;
  v20 = v12;
  v16 = v12;
  v17 = [UIAlertAction actionWithTitle:v15 style:1 handler:v19];

  [v9 addAction:v17];
  [(COSBuddyNavigationController *)self->_navigationController presentViewController:v9 animated:1 completion:0];
}

- (void)displayCompanionTooOldPairingFailureAlertWithDismissalHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"COMPANION_TOO_OLD_ALERT_TITLE" value:&stru_10026E598 table:@"Localizable"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"COMPANION_TOO_OLD_ALERT_BODY" value:&stru_10026E598 table:@"Localizable"];
  v8 = [UIAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"COMPANION_TOO_OLD_ALERT_UPDATE" value:&stru_10026E598 table:@"Localizable"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10008EDD0;
  v21[3] = &unk_10026A380;
  v11 = handlerCopy;
  v22 = v11;
  v12 = [UIAlertAction actionWithTitle:v10 style:0 handler:v21];

  [v8 addAction:v12];
  [v8 setPreferredAction:v12];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"COMPANION_TOO_OLD_ALERT_CANCEL" value:&stru_10026E598 table:@"Localizable"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008EE78;
  v19[3] = &unk_10026A380;
  v20 = v11;
  v15 = v11;
  v16 = [UIAlertAction actionWithTitle:v14 style:1 handler:v19];

  [v8 addAction:v16];
  v17 = pbb_setupflow_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_1001888FC();
  }

  [(COSBuddyNavigationController *)self->_navigationController presentViewController:v8 animated:1 completion:0];
}

- (void)displayUnsupportedTinkerHardwareFailure:(id)failure
{
  failureCopy = failure;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"UNSUPPORTED_TINKER_HW_ALERT_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];
  v7 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008F090;
  v14[3] = &unk_10026A380;
  v10 = failureCopy;
  v15 = v10;
  v11 = [UIAlertAction actionWithTitle:v9 style:1 handler:v14];

  [v7 addAction:v11];
  presentedViewController = [(COSBuddyNavigationController *)self->_navigationController presentedViewController];
  objc_opt_class();
  LOBYTE(v8) = objc_opt_isKindOfClass();

  if (v8)
  {
    [(COSBuddyNavigationController *)self->_navigationController dismissViewControllerAnimated:1 completion:0];
  }

  v13 = pbb_setupflow_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100188938();
  }

  [(COSBuddyNavigationController *)self->_navigationController presentViewController:v7 animated:1 completion:0];
}

- (void)setPairingParentFamilyMember:(id)member
{
  memberCopy = member;
  objc_storeStrong(&self->_pairingParentFamilyMember, member);
  if (self->_pairingParentFamilyMember)
  {
    v6 = +[NRPairedDeviceRegistry sharedInstance];
    iTunesAccountUsername = [memberCopy iTunesAccountUsername];
    altDSID = [memberCopy altDSID];
    activePairingDevice = [(COSSetupController *)self activePairingDevice];
    [v6 pairingClientSetPairingParentName:iTunesAccountUsername pairingParentAltDSID:altDSID forDevice:activePairingDevice completion:&stru_10026A3A0];
  }

  else
  {
    v10 = pbb_setupflow_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting pairing parent to nil", v11, 2u);
    }
  }
}

- (void)displayUnsupportedYorktownHardwareFailure:(id)failure
{
  failureCopy = failure;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"UNSUPPORTED_YORKTOWN_HW_ALERT_TITLE" value:&stru_10026E598 table:@"Localizable-yorktown"];
  v7 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008F410;
  v14[3] = &unk_10026A380;
  v10 = failureCopy;
  v15 = v10;
  v11 = [UIAlertAction actionWithTitle:v9 style:1 handler:v14];

  [v7 addAction:v11];
  presentedViewController = [(COSBuddyNavigationController *)self->_navigationController presentedViewController];
  objc_opt_class();
  LOBYTE(v8) = objc_opt_isKindOfClass();

  if (v8)
  {
    [(COSBuddyNavigationController *)self->_navigationController dismissViewControllerAnimated:1 completion:0];
  }

  v13 = pbb_setupflow_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1001889F4();
  }

  [(COSBuddyNavigationController *)self->_navigationController presentViewController:v7 animated:1 completion:0];
}

- (void)promptWhetherToUpdateGizmo:(id)gizmo
{
  gizmoCopy = gizmo;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"OUT_OF_DATE_ALERT_TITLE" value:&stru_10026E598 table:@"Localizable"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OUT_OF_DATE_ALERT_BODY" value:&stru_10026E598 table:@"Localizable"];
  v8 = [UIAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"OUT_OF_DATE_ALERT_LATER" value:&stru_10026E598 table:@"Localizable"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10008F6E0;
  v22[3] = &unk_10026A380;
  v11 = gizmoCopy;
  v23 = v11;
  v12 = [UIAlertAction actionWithTitle:v10 style:1 handler:v22];
  [v8 addAction:v12];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"OUT_OF_DATE_ALERT_NOW" value:&stru_10026E598 table:@"Localizable"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10008F6F4;
  v20[3] = &unk_10026A380;
  v21 = v11;
  v15 = v11;
  v16 = [UIAlertAction actionWithTitle:v14 style:0 handler:v20];
  [v8 addAction:v16];

  v17 = pbb_setupflow_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_100188A30();
  }

  navigationController = [(COSSetupController *)self navigationController];
  [navigationController presentViewController:v8 animated:1 completion:0];
}

- (void)displayUnsupportedWatchPairingAlertToBetterTogetherDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"UNSUPPORTED_WATCH_PAIRED_TO_BETTER_TOGETHER_DEMO_DEVICE_ALERT_TITLE" value:&stru_10026E598 table:@"Localizable"];
  v7 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008F8C0;
  v13[3] = &unk_10026A380;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = [UIAlertAction actionWithTitle:v9 style:1 handler:v13];

  [v7 addAction:v11];
  v12 = pbb_setupflow_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100188A6C();
  }

  [(COSBuddyNavigationController *)self->_navigationController presentViewController:v7 animated:1 completion:0];
}

+ (double)delayForRevLockDuringPairingBeforeEnteringConfigureState
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"DelayBeforeEnteringConfigureState", @"com.apple.Bridge", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 300.0;
  }

  return result;
}

- (void)setPairingReportManager:(id)manager
{
  managerCopy = manager;
  objc_storeStrong(&self->_pairingReportManager, manager);
  if (sub_100009A74())
  {
    v5 = objc_alloc_init(COSInternalPairingDashboardViewController);
    internalDashboardController = self->_internalDashboardController;
    self->_internalDashboardController = v5;

    [(COSBuddyNavigationController *)self->_navigationController showInternalDashboard];
  }
}

- (void)displayPairingFailureAlertForReason:(unint64_t)reason withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"LiveOnCollection"];

  if (v7)
  {
    if (completionCopy)
    {
      completionCopy[2]();
    }
  }

  else
  {
    v8 = [NSNumber numberWithLong:CFPreferencesGetAppIntegerValue(PBBridgeLastNRFailureCode, PBBridgeConnectionIdentifier, 0)];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"GENERIC_PAIRING_FAILURE_ALERT_TITLE" value:&stru_10026E598 table:@"Localizable"];

    v11 = [(COSSetupController *)self _alertMessageForReason:reason andCode:v8];
    [(COSSetupController *)self displayPairingFailureAlertForMessage:v11 title:v10 failureCode:v8 withCompletion:completionCopy];
  }
}

- (id)_alertMessageForReason:(unint64_t)reason andCode:(id)code
{
  codeCopy = code;
  v6 = sub_100009A74();
  v7 = v6;
  if (reason > 5)
  {
    if (reason <= 7)
    {
      if (reason != 6)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (reason == 8)
      {
        if (v6)
        {
          v8 = @"[Internal] Your Apple Watch could not be discovered by your iPhone. Try turning Bluetooth off and on in your iPhone's settings and try again.";
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      if (reason == 9)
      {
        if (v6)
        {
          v8 = @"[Internal] IDS message send failed.";
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      if (reason != 10)
      {
        goto LABEL_28;
      }
    }

    if (v6)
    {
      v8 = @"[Internal] Activation timed out, and failed. Your Apple Watch couldn't pair to your iPhone";
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  if (reason <= 2)
  {
    if (reason == 1)
    {
      v8 = +[NSBundle mainBundle];
      codeCopy = [(__CFString *)v8 localizedStringForKey:@"PIN_INCORRECT_PAIRING_FAILURE_ALERT_BODY" value:&stru_10026E598 table:@"Localizable"];
LABEL_32:
      v10 = codeCopy;
      goto LABEL_33;
    }

    if (reason == 2)
    {
      v8 = +[NSBundle mainBundle];
      v9 = SFLocalizableWAPIStringKeyForKey();
      v10 = [(__CFString *)v8 localizedStringForKey:v9 value:&stru_10026E598 table:@"Localizable"];

LABEL_33:
      v8 = v10;
      goto LABEL_34;
    }
  }

  else if (reason == 3)
  {
    if (v6)
    {
      v8 = @"[Internal] Activation failed. Your Apple Watch couldn't pair with your iPhone.";
      goto LABEL_34;
    }
  }

  else
  {
    if (reason != 4)
    {
LABEL_15:
      if (v6)
      {
        v8 = @"[Internal] Activation failed on the server. Your Apple Watch couldn't pair to your iPhone";
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    if (v6)
    {
      v8 = @"[Internal] Activation failed to create a request on your Apple Watch, so pairing was unsuccessful. You can reboot both devices and try again.";
      goto LABEL_34;
    }
  }

LABEL_28:
  v12 = +[NSBundle mainBundle];
  v8 = [v12 localizedStringForKey:@"GENERIC_PAIRING_FAILURE_ALERT_BODY" value:&stru_10026E598 table:@"Localizable"];

  v13 = v7 ^ 1;
  if (!codeCopy)
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    codeCopy = [NSString stringWithFormat:@"[Internal] Your Apple Watch couldn't pair with your iPhone. Error code: %@", codeCopy];
    goto LABEL_32;
  }

LABEL_34:

  return v8;
}

- (void)displayPairingFailureAlertForMessage:(id)message title:(id)title failureCode:(id)code withCompletion:(id)completion
{
  completionCopy = completion;
  v9 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"GENERIC_PAIRING_FAILURE_ALERT_START_OVER" value:&stru_10026E598 table:@"Localizable"];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10008FFC4;
  v23[3] = &unk_10026A380;
  v12 = completionCopy;
  v24 = v12;
  v13 = [UIAlertAction actionWithTitle:v11 style:0 handler:v23];
  [v9 addAction:v13];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"GENERIC_PAIRING_FAILURE_ALERT_LEARN_MORE" value:&stru_10026E598 table:@"Localizable"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10008FFDC;
  v21[3] = &unk_10026A380;
  v22 = v12;
  v16 = v12;
  v17 = [UIAlertAction actionWithTitle:v15 style:0 handler:v21];
  [v9 addAction:v17];

  v18 = pbb_setupflow_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_100188AA8();
  }

  if (!v16)
  {
    v19 = pbb_setupflow_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100188AE8();
    }
  }

  [(COSBuddyNavigationController *)self->_navigationController presentViewController:v9 animated:1 completion:0];
}

- (void)displayPairingFailureWatchAlreadyPairedToCompanion:(id)companion completion:(id)completion
{
  completionCopy = completion;
  companionCopy = companion;
  v8 = +[NRPairedDeviceRegistry sharedInstance];
  v9 = [[NSUUID alloc] initWithUUIDString:companionCopy];

  v10 = [v8 deviceForPairingID:v9];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100090470;
  v35[3] = &unk_10026A410;
  v35[4] = self;
  v29 = v10;
  v36 = v29;
  v28 = completionCopy;
  v37 = v28;
  v11 = objc_retainBlock(v35);
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"ALREADY_PAIRED_TITLE" value:&stru_10026E598 table:@"Localizable"];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"ALREADY_PAIRED_BODY" value:&stru_10026E598 table:@"Localizable"];
  v16 = [UIAlertController alertControllerWithTitle:v13 message:v15 preferredStyle:1];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"ALREADY_PAIRED_CANCEL" value:&stru_10026E598 table:@"Localizable"];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100090774;
  v33[3] = &unk_10026A380;
  v19 = v11;
  v34 = v19;
  v20 = [UIAlertAction actionWithTitle:v18 style:1 handler:v33];
  [v16 addAction:v20];

  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"ALREADY_PAIRED_UNPAIR" value:&stru_10026E598 table:@"Localizable"];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100090788;
  v31[3] = &unk_10026A438;
  v31[4] = self;
  v32 = v19;
  v23 = v19;
  v24 = [UIAlertAction actionWithTitle:v22 style:0 handler:v31];
  [v16 addAction:v24];

  v25 = pbb_setupflow_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Presenting 'watch already paired' alert", buf, 2u);
  }

  navigationController = [(COSSetupController *)self navigationController];
  visibleViewController = [navigationController visibleViewController];
  [visibleViewController presentViewController:v16 animated:1 completion:0];
}

- (void)setTinkerUserName:(id)name
{
  objc_storeStrong(&self->_tinkerUserName, name);
  nameCopy = name;
  activeWatch = [UIApp activeWatch];
  v5 = [NPSDomainAccessor alloc];
  v6 = [v5 initWithDomain:kBridgeDomain pairedDevice:activeWatch];
  [v6 setObject:nameCopy forKey:@"kTinkerUserNameKey"];
}

- (void)setTinkerFamilyMember:(id)member
{
  objc_storeStrong(&self->_tinkerFamilyMember, member);
  memberCopy = member;
  v6 = +[BPSTinkerSupport sharedInstance];
  [v6 setTinkerFamilyMember:memberCopy];

  firstName = [memberCopy firstName];
  [(COSSetupController *)self setTinkerUserName:firstName];

  v8 = +[UIApplication sharedApplication];
  bridgeController = [v8 bridgeController];
  [bridgeController tellWatchToChangeDeviceNameFor:memberCopy];

  v10 = +[NSNotificationCenter defaultCenter];

  [v10 postNotificationName:BPSTinkerFamilyMemberNameSet object:0];
}

+ (id)buddyFlowMapping
{
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  if (isTinkerPairing)
  {
    [self tinkerBuddyFlowMapping];
  }

  else
  {
    [self classicBuddyFlowMapping];
  }
  v5 = ;

  return v5;
}

+ (void)addBundlesToTinkerFlowMapping:(id)mapping
{
  mappingCopy = mapping;
  if (NSClassFromString(@"HKBridgeSetupPrincipalClass"))
  {
    v3 = NSClassFromString(@"HKBridgeSetupPrincipalClass");
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [mappingCopy setObject:v3 forKeyedSubscript:v5];

    v6 = NSClassFromString(@"CHASActivitySetupMetricsCollectionViewController");
    v7 = NSClassFromString(@"HKBridgeSetupPrincipalClass");
    v8 = NSStringFromClass(v7);
    [mappingCopy setObject:v6 forKeyedSubscript:v8];
  }

  if (NSClassFromString(@"TextSettingsMiniFlowController") && NSClassFromString(@"AccessibilitySettingsMiniFlowController"))
  {
    v9 = NSClassFromString(@"TextSettingsMiniFlowController");
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [mappingCopy setObject:v9 forKeyedSubscript:v11];

    v12 = NSClassFromString(@"AccessibilitySettingsMiniFlowController");
    v13 = NSClassFromString(@"TextSettingsMiniFlowController");
    v14 = NSStringFromClass(v13);
    [mappingCopy setObject:v12 forKeyedSubscript:v14];

    v15 = objc_opt_class();
    v16 = NSClassFromString(@"AccessibilitySettingsMiniFlowController");
    v17 = NSStringFromClass(v16);
    [mappingCopy setObject:v15 forKeyedSubscript:v17];
  }

  if (NSClassFromString(@"NCBSBridgeSetupController"))
  {
    v18 = [mappingCopy allKeysForObject:objc_opt_class()];
    firstObject = [v18 firstObject];
    v20 = NSClassFromString(firstObject);

    v21 = NSClassFromString(@"NCBSBridgeSetupController");
    v22 = NSStringFromClass(v20);
    [mappingCopy setObject:v21 forKeyedSubscript:v22];

    v23 = objc_opt_class();
    v24 = NSClassFromString(@"NCBSBridgeSetupController");
    v25 = NSStringFromClass(v24);
    [mappingCopy setObject:v23 forKeyedSubscript:v25];
  }

  activeWatch = [UIApp activeWatch];
  v27 = [[NSUUID alloc] initWithUUIDString:@"6E76AC51-634C-415F-8491-C6784AF2C471"];
  if ([activeWatch supportsCapability:v27])
  {
    v28 = [[NSUUID alloc] initWithUUIDString:@"BD0302DD-00BC-43C2-81E9-48C038E6F8BB"];
    v29 = [activeWatch supportsCapability:v28] ^ 1;
  }

  else
  {
    LOBYTE(v29) = 0;
  }

  if (NSClassFromString(@"CompanionAppViewSetup"))
  {
    v30 = (NSClassFromString(@"CompanionAppViewSetupViewController") != 0) & v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  v33 = [mappingCopy objectForKeyedSubscript:v32];

  if (!NSClassFromString(@"SCLSetupPrincipleClass"))
  {
    if (!v30)
    {
      goto LABEL_21;
    }

    v38 = NSClassFromString(@"CompanionAppViewSetup");
    v39 = objc_opt_class();
    goto LABEL_19;
  }

  v34 = @"SCLSetupPrincipleClass";
  v35 = NSClassFromString(@"SCLSetupPrincipleClass");
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  [mappingCopy setObject:v35 forKeyedSubscript:v37];

  if (v30)
  {
    v38 = NSClassFromString(@"CompanionAppViewSetup");
    v39 = NSClassFromString(@"SCLSetupPrincipleClass");
LABEL_19:
    v40 = NSStringFromClass(v39);
    [mappingCopy setObject:v38 forKeyedSubscript:v40];

    v34 = @"CompanionAppViewSetup";
  }

  v41 = NSClassFromString(&v34->isa);
  v42 = NSStringFromClass(v41);
  [mappingCopy setObject:v33 forKeyedSubscript:v42];

LABEL_21:
  if (NSClassFromString(@"NPHCellularSetupBridgeBuddyUIPrincipalClass"))
  {
    v43 = NSClassFromString(@"NPHCellularSetupBridgeBuddyUIPrincipalClass");
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    [mappingCopy setObject:v43 forKeyedSubscript:v45];

    v46 = objc_opt_class();
    v47 = NSClassFromString(@"NPHCellularSetupBridgeBuddyUIPrincipalClass");
    v48 = NSStringFromClass(v47);
    [mappingCopy setObject:v46 forKeyedSubscript:v48];
  }

  v49 = +[UIDevice currentDevice];
  sf_isChinaRegionCellularDevice = [v49 sf_isChinaRegionCellularDevice];

  if (sf_isChinaRegionCellularDevice)
  {
    if (NSClassFromString(@"CKMPRBridgeBuddyUIPrincipalClass") && NSClassFromString(@"AccessibilitySettingsMiniFlowController"))
    {
      v51 = NSClassFromString(@"CKMPRBridgeBuddyUIPrincipalClass");
      v52 = NSClassFromString(@"AccessibilitySettingsMiniFlowController");
      v53 = NSStringFromClass(v52);
      [mappingCopy setObject:v51 forKeyedSubscript:v53];

      v54 = objc_opt_class();
      v55 = NSClassFromString(@"CKMPRBridgeBuddyUIPrincipalClass");
      v56 = NSStringFromClass(v55);
      [mappingCopy setObject:v54 forKeyedSubscript:v56];
    }

    if (NSClassFromString(@"CKMPRiMessageContactsTransparencyViewController"))
    {
      v57 = NSClassFromString(@"CKMPRiMessageContactsTransparencyViewController");
      v58 = NSClassFromString(@"AccessibilitySettingsMiniFlowController");
      v59 = NSStringFromClass(v58);
      [mappingCopy setObject:v57 forKeyedSubscript:v59];

      v60 = NSClassFromString(@"CKMPRBridgeBuddyUIPrincipalClass");
      v61 = NSClassFromString(@"CKMPRiMessageContactsTransparencyViewController");
      v62 = NSStringFromClass(v61);
      [mappingCopy setObject:v60 forKeyedSubscript:v62];
    }
  }

  if (NSClassFromString(@"HeartRateNotificationsViewController"))
  {
    v63 = NSClassFromString(@"HeartRateNotificationsViewController");
    v64 = objc_opt_class();
    v65 = NSStringFromClass(v64);
    [mappingCopy setObject:v63 forKeyedSubscript:v65];

    v66 = NSClassFromString(@"HeartRateNotificationsViewController");
    v67 = objc_opt_class();
    v68 = NSStringFromClass(v67);
    [mappingCopy setObject:v66 forKeyedSubscript:v68];

    v69 = NSClassFromString(@"HeartRateNotificationsViewController");
    v70 = objc_opt_class();
    v71 = NSStringFromClass(v70);
    [mappingCopy setObject:v69 forKeyedSubscript:v71];

    v72 = objc_opt_class();
    v73 = NSClassFromString(@"HeartRateNotificationsViewController");
    v74 = NSStringFromClass(v73);
    [mappingCopy setObject:v72 forKeyedSubscript:v74];
  }

  if (!NSClassFromString(@"BPSStingSetupPrincipalClass"))
  {
LABEL_37:
    if (!NSClassFromString(@"DepthSetupPrincipalClass"))
    {
      goto LABEL_44;
    }

    if (!v30)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v75 = NSClassFromString(@"SCLSetupPrincipleClass");
  v76 = NSClassFromString(@"BPSStingSetupPrincipalClass");
  if (v75)
  {
    v77 = NSClassFromString(@"SCLSetupPrincipleClass");
  }

  else
  {
    v77 = objc_opt_class();
  }

  v78 = NSStringFromClass(v77);
  [mappingCopy setObject:v76 forKeyedSubscript:v78];

  if (NSClassFromString(@"DepthSetupPrincipalClass"))
  {
    v79 = NSClassFromString(@"DepthSetupPrincipalClass");
    v80 = NSClassFromString(@"BPSStingSetupPrincipalClass");
    v81 = NSStringFromClass(v80);
    [mappingCopy setObject:v79 forKeyedSubscript:v81];

    goto LABEL_37;
  }

  if (v30)
  {
    v82 = NSClassFromString(@"CompanionAppViewSetup");
    v83 = NSClassFromString(@"BPSStingSetupPrincipalClass");
    v84 = NSStringFromClass(v83);
    [mappingCopy setObject:v82 forKeyedSubscript:v84];

    if (!NSClassFromString(@"DepthSetupPrincipalClass"))
    {
      goto LABEL_44;
    }

LABEL_42:
    v33 = NSClassFromString(@"CompanionAppViewSetup");
LABEL_43:
    v85 = NSClassFromString(@"DepthSetupPrincipalClass");
    v86 = NSStringFromClass(v85);
    [mappingCopy setObject:v33 forKeyedSubscript:v86];

    goto LABEL_44;
  }

  v87 = NSClassFromString(@"BPSStingSetupPrincipalClass");
  v88 = NSStringFromClass(v87);
  [mappingCopy setObject:v33 forKeyedSubscript:v88];

  if (NSClassFromString(@"DepthSetupPrincipalClass"))
  {
    goto LABEL_43;
  }

LABEL_44:
}

+ (id)tinkerBuddyFlowMapping
{
  v2 = objc_opt_class();
  v100 = NSStringFromClass(v2);
  v102[0] = v100;
  v103[0] = objc_opt_class();
  v3 = objc_opt_class();
  v99 = NSStringFromClass(v3);
  v102[1] = v99;
  v103[1] = objc_opt_class();
  v4 = objc_opt_class();
  v98 = NSStringFromClass(v4);
  v102[2] = v98;
  v103[2] = objc_opt_class();
  v5 = objc_opt_class();
  v97 = NSStringFromClass(v5);
  v102[3] = v97;
  v103[3] = objc_opt_class();
  v6 = objc_opt_class();
  v96 = NSStringFromClass(v6);
  v102[4] = v96;
  v103[4] = objc_opt_class();
  v7 = objc_opt_class();
  v95 = NSStringFromClass(v7);
  v102[5] = v95;
  v103[5] = objc_opt_class();
  v8 = objc_opt_class();
  v94 = NSStringFromClass(v8);
  v102[6] = v94;
  v103[6] = objc_opt_class();
  v9 = objc_opt_class();
  v93 = NSStringFromClass(v9);
  v102[7] = v93;
  v103[7] = objc_opt_class();
  v10 = objc_opt_class();
  v92 = NSStringFromClass(v10);
  v102[8] = v92;
  v103[8] = objc_opt_class();
  v11 = objc_opt_class();
  v91 = NSStringFromClass(v11);
  v102[9] = v91;
  v103[9] = objc_opt_class();
  v12 = objc_opt_class();
  v90 = NSStringFromClass(v12);
  v102[10] = v90;
  v103[10] = objc_opt_class();
  v13 = objc_opt_class();
  v89 = NSStringFromClass(v13);
  v102[11] = v89;
  v103[11] = objc_opt_class();
  v14 = objc_opt_class();
  v88 = NSStringFromClass(v14);
  v102[12] = v88;
  v103[12] = objc_opt_class();
  v15 = objc_opt_class();
  v87 = NSStringFromClass(v15);
  v102[13] = v87;
  v103[13] = objc_opt_class();
  v16 = objc_opt_class();
  v86 = NSStringFromClass(v16);
  v102[14] = v86;
  v103[14] = objc_opt_class();
  v17 = objc_opt_class();
  v85 = NSStringFromClass(v17);
  v102[15] = v85;
  v103[15] = objc_opt_class();
  v18 = objc_opt_class();
  v84 = NSStringFromClass(v18);
  v102[16] = v84;
  v103[16] = objc_opt_class();
  v19 = objc_opt_class();
  v83 = NSStringFromClass(v19);
  v102[17] = v83;
  v103[17] = objc_opt_class();
  v20 = objc_opt_class();
  v82 = NSStringFromClass(v20);
  v102[18] = v82;
  v103[18] = objc_opt_class();
  v21 = objc_opt_class();
  v81 = NSStringFromClass(v21);
  v102[19] = v81;
  v103[19] = objc_opt_class();
  v22 = objc_opt_class();
  v80 = NSStringFromClass(v22);
  v102[20] = v80;
  v103[20] = objc_opt_class();
  v23 = objc_opt_class();
  v79 = NSStringFromClass(v23);
  v102[21] = v79;
  v103[21] = objc_opt_class();
  v24 = objc_opt_class();
  v78 = NSStringFromClass(v24);
  v102[22] = v78;
  v103[22] = objc_opt_class();
  v25 = objc_opt_class();
  v77 = NSStringFromClass(v25);
  v102[23] = v77;
  v103[23] = objc_opt_class();
  v26 = objc_opt_class();
  v76 = NSStringFromClass(v26);
  v102[24] = v76;
  v103[24] = objc_opt_class();
  v27 = objc_opt_class();
  v75 = NSStringFromClass(v27);
  v102[25] = v75;
  v103[25] = objc_opt_class();
  v28 = objc_opt_class();
  v74 = NSStringFromClass(v28);
  v102[26] = v74;
  v103[26] = objc_opt_class();
  v29 = objc_opt_class();
  v73 = NSStringFromClass(v29);
  v102[27] = v73;
  v103[27] = objc_opt_class();
  v30 = objc_opt_class();
  v72 = NSStringFromClass(v30);
  v102[28] = v72;
  v103[28] = NSClassFromString(@"VTUITinkerSiriOptinViewController");
  v31 = NSClassFromString(@"VTUITinkerSiriOptinViewController");
  v71 = NSStringFromClass(v31);
  v102[29] = v71;
  v103[29] = objc_opt_class();
  v32 = NSClassFromString(@"VTUITinkerSiriVoiceSelectionViewController");
  v70 = NSStringFromClass(v32);
  v102[30] = v70;
  v103[30] = objc_opt_class();
  v33 = objc_opt_class();
  v69 = NSStringFromClass(v33);
  v102[31] = v69;
  v103[31] = objc_opt_class();
  v34 = objc_opt_class();
  v68 = NSStringFromClass(v34);
  v102[32] = v68;
  v103[32] = objc_opt_class();
  v35 = objc_opt_class();
  v67 = NSStringFromClass(v35);
  v102[33] = v67;
  v103[33] = objc_opt_class();
  v36 = objc_opt_class();
  v66 = NSStringFromClass(v36);
  v102[34] = v66;
  v103[34] = objc_opt_class();
  v37 = objc_opt_class();
  v65 = NSStringFromClass(v37);
  v102[35] = v65;
  v103[35] = objc_opt_class();
  v38 = objc_opt_class();
  v64 = NSStringFromClass(v38);
  v102[36] = v64;
  v103[36] = objc_opt_class();
  v39 = objc_opt_class();
  v63 = NSStringFromClass(v39);
  v102[37] = v63;
  v103[37] = objc_opt_class();
  v40 = objc_opt_class();
  v62 = NSStringFromClass(v40);
  v102[38] = v62;
  v103[38] = objc_opt_class();
  v41 = objc_opt_class();
  v61 = NSStringFromClass(v41);
  v102[39] = v61;
  v103[39] = objc_opt_class();
  v42 = objc_opt_class();
  v43 = NSStringFromClass(v42);
  v102[40] = v43;
  v103[40] = NSClassFromString(@"CHASActivitySetupMetricsCollectionViewController");
  v44 = NSClassFromString(@"CHASActivitySetupMetricsCollectionViewController");
  v45 = NSStringFromClass(v44);
  v102[41] = v45;
  v103[41] = objc_opt_class();
  v46 = NSClassFromString(@"CHASActivitySetupOnboardingViewController");
  v47 = NSStringFromClass(v46);
  v102[42] = v47;
  v103[42] = objc_opt_class();
  v48 = NSClassFromString(@"CHASActivitySetupThreeRingsOnboardingViewController");
  v49 = NSStringFromClass(v48);
  v102[43] = v49;
  v103[43] = objc_opt_class();
  v50 = NSClassFromString(@"CHASActivitySetupViewController");
  v51 = NSStringFromClass(v50);
  v102[44] = v51;
  v103[44] = objc_opt_class();
  v52 = objc_opt_class();
  v53 = NSStringFromClass(v52);
  v102[45] = v53;
  v103[45] = objc_opt_class();
  v54 = objc_opt_class();
  v55 = NSStringFromClass(v54);
  v102[46] = v55;
  v103[46] = objc_opt_class();
  v56 = objc_opt_class();
  v57 = NSStringFromClass(v56);
  v102[47] = v57;
  v103[47] = objc_opt_class();
  v58 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:48];
  v59 = [NSMutableDictionary dictionaryWithDictionary:v58];

  [self addBundlesToTinkerFlowMapping:v59];

  return v59;
}

+ (id)bundleFlowMapping
{
  v2 = objc_alloc_init(NSMutableDictionary);
  if (NSClassFromString(@"NPHCellularSetupBridgeBuddyUIPrincipalClass"))
  {
    v3 = NSClassFromString(@"NPHCellularSetupBridgeBuddyUIPrincipalClass");
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v2 setObject:v3 forKeyedSubscript:v5];

    v6 = objc_opt_class();
    v7 = NSClassFromString(@"NPHCellularSetupBridgeBuddyUIPrincipalClass");
    v8 = NSStringFromClass(v7);
    [v2 setObject:v6 forKeyedSubscript:v8];
  }

  if (NSClassFromString(@"TextSettingsMiniFlowController") && NSClassFromString(@"AccessibilitySettingsMiniFlowController"))
  {
    v9 = NSClassFromString(@"TextSettingsMiniFlowController");
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v2 setObject:v9 forKeyedSubscript:v11];

    v12 = NSClassFromString(@"AccessibilitySettingsMiniFlowController");
    v13 = NSClassFromString(@"TextSettingsMiniFlowController");
    v14 = NSStringFromClass(v13);
    [v2 setObject:v12 forKeyedSubscript:v14];

    v15 = NSClassFromString(@"VTUISiriOptinViewController");
    v16 = NSClassFromString(@"AccessibilitySettingsMiniFlowController");
    v17 = NSStringFromClass(v16);
    [v2 setObject:v15 forKeyedSubscript:v17];
  }

  if (_os_feature_enabled_impl() && (v18 = @"HealthFeaturesBridgeSetupPlugin.HealthFeaturesSetupFlowController", NSClassFromString(@"HealthFeaturesBridgeSetupPlugin.HealthFeaturesSetupFlowController")) || (v18 = @"HeartRateNotificationsViewController", NSClassFromString(@"HeartRateNotificationsViewController")))
  {
    v19 = NSClassFromString(&v18->isa);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [v2 setObject:v19 forKeyedSubscript:v21];

    v22 = objc_opt_class();
    v23 = NSClassFromString(&v18->isa);
    v24 = NSStringFromClass(v23);
    [v2 setObject:v22 forKeyedSubscript:v24];
  }

  if (NSClassFromString(@"NanoSleepBridgeSetup.NanoSleepBridgeSetupController"))
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v2 objectForKeyedSubscript:v26];

    v28 = NSClassFromString(@"NanoSleepBridgeSetup.NanoSleepBridgeSetupController");
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    [v2 setObject:v28 forKeyedSubscript:v30];

    v31 = NSClassFromString(@"NanoSleepBridgeSetup.NanoSleepBridgeSetupController");
    v32 = NSStringFromClass(v31);
    [v2 setObject:v27 forKeyedSubscript:v32];
  }

  v33 = NSClassFromString(@"NPHCellularSetupBridgeBuddyUIPrincipalClass");
  if (!v33)
  {
    v33 = objc_opt_class();
  }

  if (NSClassFromString(@"BPSStingSetupPrincipalClass"))
  {
    v34 = NSClassFromString(@"BPSStingSetupPrincipalClass");
    v35 = NSStringFromClass(v33);
    [v2 setObject:v34 forKeyedSubscript:v35];

    if (NSClassFromString(@"DepthSetupPrincipalClass"))
    {
      v36 = NSClassFromString(@"DepthSetupPrincipalClass");
    }

    else
    {
      v36 = objc_opt_class();
    }

    v37 = v36;
    v38 = NSClassFromString(@"BPSStingSetupPrincipalClass");
    v39 = NSStringFromClass(v38);
    [v2 setObject:v37 forKeyedSubscript:v39];
  }

  if (NSClassFromString(@"DepthSetupPrincipalClass"))
  {
    v40 = objc_opt_class();
    v41 = NSClassFromString(@"DepthSetupPrincipalClass");
    v42 = NSStringFromClass(v41);
    [v2 setObject:v40 forKeyedSubscript:v42];
  }

  activeWatch = [UIApp activeWatch];
  if (NSClassFromString(@"WGAEltonPhoneBuddyFlowPrincipalClass"))
  {
    v44 = NSClassFromString(@"WGAEltonPhoneBuddyFlowPrincipalClass");
    v45 = NSStringFromClass(v33);
    [v2 setObject:v44 forKeyedSubscript:v45];

    v46 = NSClassFromString(@"BPSStingSetupPrincipalClass");
    NSClassFromString(@"WGAEltonPhoneBuddyFlowPrincipalClass");
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    [v2 setObject:v46 forKeyedSubscript:v48];
  }

  v49 = [[NSUUID alloc] initWithUUIDString:@"BD0302DD-00BC-43C2-81E9-48C038E6F8BB"];
  v50 = [activeWatch supportsCapability:v49];

  if (NSClassFromString(@"CompanionAppViewSetup") && !((NSClassFromString(@"CompanionAppViewSetupViewController") == 0) | v50 & 1))
  {
    v51 = NSClassFromString(@"CompanionAppViewSetup");
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    [v2 setObject:v51 forKeyedSubscript:v53];

    v54 = objc_opt_class();
    v55 = NSClassFromString(@"CompanionAppViewSetup");
    v56 = NSStringFromClass(v55);
    [v2 setObject:v54 forKeyedSubscript:v56];
  }

  v57 = +[UIDevice currentDevice];
  sf_isChinaRegionCellularDevice = [v57 sf_isChinaRegionCellularDevice];

  if (sf_isChinaRegionCellularDevice && NSClassFromString(@"CKMPRiMessageContactsTransparencyViewController"))
  {
    v59 = NSClassFromString(@"CKMPRiMessageContactsTransparencyViewController");
    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    [v2 setObject:v59 forKeyedSubscript:v61];

    v62 = objc_opt_class();
    v63 = NSClassFromString(@"CKMPRiMessageContactsTransparencyViewController");
    v64 = NSStringFromClass(v63);
    [v2 setObject:v62 forKeyedSubscript:v64];
  }

  return v2;
}

+ (id)classicBuddyFlowMapping
{
  v2 = objc_opt_class();
  v85 = NSStringFromClass(v2);
  v87[0] = v85;
  v88[0] = objc_opt_class();
  v3 = objc_opt_class();
  v84 = NSStringFromClass(v3);
  v87[1] = v84;
  v88[1] = objc_opt_class();
  v4 = objc_opt_class();
  v83 = NSStringFromClass(v4);
  v87[2] = v83;
  v88[2] = objc_opt_class();
  v5 = objc_opt_class();
  v82 = NSStringFromClass(v5);
  v87[3] = v82;
  v88[3] = objc_opt_class();
  v6 = objc_opt_class();
  v81 = NSStringFromClass(v6);
  v87[4] = v81;
  v88[4] = objc_opt_class();
  v7 = objc_opt_class();
  v80 = NSStringFromClass(v7);
  v87[5] = v80;
  v88[5] = objc_opt_class();
  v8 = objc_opt_class();
  v79 = NSStringFromClass(v8);
  v87[6] = v79;
  v88[6] = objc_opt_class();
  v9 = objc_opt_class();
  v78 = NSStringFromClass(v9);
  v87[7] = v78;
  v88[7] = objc_opt_class();
  v10 = objc_opt_class();
  v77 = NSStringFromClass(v10);
  v87[8] = v77;
  v88[8] = objc_opt_class();
  v11 = objc_opt_class();
  v76 = NSStringFromClass(v11);
  v87[9] = v76;
  v88[9] = objc_opt_class();
  v12 = objc_opt_class();
  v75 = NSStringFromClass(v12);
  v87[10] = v75;
  v88[10] = objc_opt_class();
  v13 = objc_opt_class();
  v74 = NSStringFromClass(v13);
  v87[11] = v74;
  v88[11] = objc_opt_class();
  v14 = objc_opt_class();
  v73 = NSStringFromClass(v14);
  v87[12] = v73;
  v88[12] = objc_opt_class();
  v15 = objc_opt_class();
  v72 = NSStringFromClass(v15);
  v87[13] = v72;
  v88[13] = objc_opt_class();
  v16 = objc_opt_class();
  v71 = NSStringFromClass(v16);
  v87[14] = v71;
  v88[14] = objc_opt_class();
  v17 = objc_opt_class();
  v70 = NSStringFromClass(v17);
  v87[15] = v70;
  v88[15] = objc_opt_class();
  v18 = objc_opt_class();
  v69 = NSStringFromClass(v18);
  v87[16] = v69;
  v88[16] = objc_opt_class();
  v19 = objc_opt_class();
  v68 = NSStringFromClass(v19);
  v87[17] = v68;
  v88[17] = objc_opt_class();
  v20 = objc_opt_class();
  v67 = NSStringFromClass(v20);
  v87[18] = v67;
  v88[18] = objc_opt_class();
  v21 = objc_opt_class();
  v66 = NSStringFromClass(v21);
  v87[19] = v66;
  v88[19] = objc_opt_class();
  v22 = objc_opt_class();
  v65 = NSStringFromClass(v22);
  v87[20] = v65;
  v88[20] = objc_opt_class();
  v23 = objc_opt_class();
  v64 = NSStringFromClass(v23);
  v87[21] = v64;
  v88[21] = NSClassFromString(@"VTUISiriOptinViewController");
  v24 = NSClassFromString(@"VTUISiriOptinViewController");
  v63 = NSStringFromClass(v24);
  v87[22] = v63;
  v88[22] = objc_opt_class();
  v25 = NSClassFromString(@"VTUISiriVoiceSelectionViewController");
  v62 = NSStringFromClass(v25);
  v87[23] = v62;
  v88[23] = objc_opt_class();
  v26 = objc_opt_class();
  v61 = NSStringFromClass(v26);
  v87[24] = v61;
  v88[24] = objc_opt_class();
  v27 = objc_opt_class();
  v60 = NSStringFromClass(v27);
  v87[25] = v60;
  v88[25] = objc_opt_class();
  v28 = objc_opt_class();
  v59 = NSStringFromClass(v28);
  v87[26] = v59;
  v88[26] = NSClassFromString(@"CHASActivitySetupMetricsCollectionViewController");
  v29 = NSClassFromString(@"CHASActivitySetupMetricsCollectionViewController");
  v58 = NSStringFromClass(v29);
  v87[27] = v58;
  v88[27] = objc_opt_class();
  v30 = NSClassFromString(@"CHASActivitySetupOnboardingViewController");
  v57 = NSStringFromClass(v30);
  v87[28] = v57;
  v88[28] = objc_opt_class();
  v31 = NSClassFromString(@"CHASActivitySetupThreeRingsOnboardingViewController");
  v56 = NSStringFromClass(v31);
  v87[29] = v56;
  v88[29] = objc_opt_class();
  v32 = NSClassFromString(@"CHASActivitySetupViewController");
  v33 = NSStringFromClass(v32);
  v87[30] = v33;
  v88[30] = objc_opt_class();
  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  v87[31] = v35;
  v88[31] = objc_opt_class();
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  v87[32] = v37;
  v88[32] = objc_opt_class();
  v38 = objc_opt_class();
  v39 = NSStringFromClass(v38);
  v87[33] = v39;
  v88[33] = objc_opt_class();
  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  v87[34] = v41;
  v88[34] = objc_opt_class();
  v42 = objc_opt_class();
  v43 = NSStringFromClass(v42);
  v87[35] = v43;
  v88[35] = objc_opt_class();
  v44 = objc_opt_class();
  v45 = NSStringFromClass(v44);
  v87[36] = v45;
  v88[36] = objc_opt_class();
  v46 = objc_opt_class();
  v47 = NSStringFromClass(v46);
  v87[37] = v47;
  v88[37] = objc_opt_class();
  v48 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:38];
  v49 = [NSMutableDictionary dictionaryWithDictionary:v48];

  if (sub_10002D16C())
  {
    v50 = objc_opt_class();
    v51 = objc_opt_class();
    v52 = NSStringFromClass(v51);
    [v49 setObject:v50 forKey:v52];
  }

  signInFlowMapping = [self signInFlowMapping];
  [v49 addEntriesFromDictionary:signInFlowMapping];

  bundleFlowMapping = [self bundleFlowMapping];
  [v49 addEntriesFromDictionary:bundleFlowMapping];

  [self updateMappingForYorktown:v49];

  return v49;
}

+ (id)signInFlowLastControllerClassName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)signInFlowMapping
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v15[0] = v3;
  v16[0] = objc_opt_class();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v15[1] = v5;
  v16[1] = objc_opt_class();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v15[2] = v7;
  v16[2] = objc_opt_class();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v15[3] = v9;
  v16[3] = objc_opt_class();
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v15[4] = v11;
  v16[4] = objc_opt_class();
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];
  v13 = [NSMutableDictionary dictionaryWithDictionary:v12];

  return v13;
}

+ (void)updateMappingForYorktown:(id)yorktown
{
  yorktownCopy = yorktown;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [yorktownCopy objectForKey:v5];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [yorktownCopy removeObjectForKey:v8];

  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [yorktownCopy setObject:v9 forKey:v11];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [yorktownCopy setObject:v6 forKey:v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [yorktownCopy objectForKey:v15];

  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [yorktownCopy removeObjectForKey:v18];

  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  [yorktownCopy setObject:v19 forKey:v21];

  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  [yorktownCopy setObject:v16 forKey:v23];
}

- (Class)_updateNextControllerForSignInFlow:(Class)flow currentControllerClass:(Class)class
{
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  if (isTinkerPairing)
  {
    flowCopy5 = flow;
    goto LABEL_20;
  }

  if (objc_opt_respondsToSelector())
  {
    flowCopy3 = flow;
    if ([(objc_class *)flowCopy3 controllerAllowsPresentingSignInFlow])
    {
      objc_storeStrong(&self->_controllerClassToPresentAfterSignIn, flow);
      flowCopy3 = [objc_opt_class() signInFlowFirstControllerClass];
      v11 = pbb_setupflow_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    flowCopy3 = flow;
    if ([(objc_class *)flowCopy3 controllerBlocksRunningBeforeSignInStep])
    {
      objc_storeStrong(&self->_controllerClassToPresentAfterSignIn, flow);
      flowCopy3 = [objc_opt_class() signInFlowFirstControllerClass];
      v11 = pbb_setupflow_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:
        controllerClassToPresentAfterSignIn = self->_controllerClassToPresentAfterSignIn;
        v18 = 136315650;
        v19 = "[COSSetupController _updateNextControllerForSignInFlow:currentControllerClass:]";
        v20 = 2112;
        flowCopy4 = controllerClassToPresentAfterSignIn;
        v22 = 2112;
        v23 = flowCopy3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: updated: _controllerClassToPresentAfterSignIn: %@ nextControllerClass: %@", &v18, 0x20u);
      }

LABEL_11:
    }

LABEL_12:

    flow = flowCopy3;
  }

  v13 = NSStringFromClass(class);
  if (!flow)
  {
    signInFlowLastControllerClassName = [objc_opt_class() signInFlowLastControllerClassName];
    v15 = [v13 isEqualToString:signInFlowLastControllerClassName];

    if (v15)
    {
      flow = self->_controllerClassToPresentAfterSignIn;
      v16 = pbb_setupflow_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315394;
        v19 = "[COSSetupController _updateNextControllerForSignInFlow:currentControllerClass:]";
        v20 = 2112;
        flowCopy4 = flow;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: updated controller after last sign-in class to nextControllerClass: %@", &v18, 0x16u);
      }
    }

    else
    {
      flow = 0;
    }
  }

  flowCopy5 = flow;

LABEL_20:

  return flowCopy5;
}

- (id)_controllerFollowingControllerClass:(Class)class
{
  v5 = +[COSSetupController buddyFlowMapping];
  v6 = NSStringFromClass(class);
  v7 = [v5 objectForKey:v6];

  v8 = [(COSSetupController *)self _updateNextControllerForSignInFlow:v7 currentControllerClass:class];

  if (PBShouldOfferBetterTogetherFlow() && self->_isDeKOTAFlow)
  {
    v9 = objc_opt_class();

    v8 = v9;
  }

  v10 = pbb_setupflow_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 138412290;
    *&v24[4] = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_controllerFollowingControllerClass: (%@)", v24, 0xCu);
  }

  if (!v8)
  {
    goto LABEL_14;
  }

  if (![v8 conformsToProtocol:&OBJC_PROTOCOL___BPSBuddyController])
  {
    v15 = pbb_setupflow_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100188B24();
    }

LABEL_14:
    v16 = 0;
    goto LABEL_35;
  }

  if (objc_opt_respondsToSelector())
  {
    controllerNeedsToRun = [v8 controllerNeedsToRunForBuddyControllerDelegate:self];
    v12 = pbb_setupflow_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [NSNumber numberWithBool:controllerNeedsToRun];
      *v24 = 138412290;
      *&v24[4] = v13;
      v14 = "controllerNeedsToRunForBuddyControllerDelegate: (%@)";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, v24, 0xCu);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (objc_opt_respondsToSelector())
  {
    controllerNeedsToRun = [v8 controllerNeedsToRun];
    v12 = pbb_setupflow_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [NSNumber numberWithBool:controllerNeedsToRun];
      *v24 = 138412290;
      *&v24[4] = v13;
      v14 = "controllerNeedsToRun: (%@)";
      goto LABEL_18;
    }

LABEL_19:

    goto LABEL_21;
  }

  LOBYTE(controllerNeedsToRun) = 1;
LABEL_21:
  if ([(COSSetupController *)self expressMode])
  {
    if (objc_opt_respondsToSelector())
    {
      expressModeDevice = [(COSSetupController *)self expressModeDevice];
      v18 = [v8 skipControllerForExpressMode:expressModeDevice];

      v19 = pbb_setupflow_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [NSNumber numberWithBool:v18];
        *v24 = 138412546;
        *&v24[4] = v8;
        *&v24[12] = 2112;
        *&v24[14] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "skipControllerForExpressMode(%@): (%@)", v24, 0x16u);
      }

      if (v18)
      {
        if (objc_opt_respondsToSelector())
        {
          expressModeDevice2 = [(COSSetupController *)self expressModeDevice];
          [v8 doWorkForSkippedExpressSettingPane:expressModeDevice2];
        }

        goto LABEL_34;
      }
    }

    else
    {
      v22 = pbb_setupflow_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 138412290;
        *&v24[4] = v8;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ doesn't respond to skipControllerForExpressMode", v24, 0xCu);
      }
    }
  }

  if ((controllerNeedsToRun & 1) == 0)
  {
LABEL_34:
    v16 = [(COSSetupController *)self _controllerFollowingControllerClass:v8];
    goto LABEL_35;
  }

  v16 = [objc_msgSend(v8 "alloc")];
  [v16 setDelegate:self];
  if ([v16 isMemberOfClass:objc_opt_class()])
  {
    objc_storeStrong(&self->_passcodeChoiceController, v16);
  }

LABEL_35:

  return v16;
}

- (NSArray)expressModeControllers
{
  v2 = objc_opt_new();
  v3 = +[COSSetupController buddyFlowMapping];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 objectForKey:v5];

  while (v6)
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 addObject:v6];
    }

    v7 = NSStringFromClass(v6);
    v6 = [v3 objectForKey:v7];
  }

  v8 = [v2 copy];

  return v8;
}

- (NRDevice)expressModeDevice
{
  expressModeDevice = self->_expressModeDevice;
  if (!expressModeDevice)
  {
    v4 = +[COSBackupManager sharedBackupManager];
    compatiblePairedDevices = [v4 compatiblePairedDevices];

    v6 = [compatiblePairedDevices sortedArrayUsingComparator:&stru_10026A478];

    self->_expressModeDevice = [v6 lastObject];
    expressModeDevice = self->_expressModeDevice;
  }

  return expressModeDevice;
}

- (id)_controllerForClass:(Class)class
{
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromClass(class);
    v18 = 138412290;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_controllerForClass: (%@)", &v18, 0xCu);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      controllerNeedsToRun = [(objc_class *)class controllerNeedsToRun];
      v11 = pbb_setupflow_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [NSNumber numberWithBool:controllerNeedsToRun];
        v18 = 138412290;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "controllerNeedsToRun: (%@)", &v18, 0xCu);
      }

      if (!controllerNeedsToRun)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    v13 = objc_alloc_init(class);
    goto LABEL_14;
  }

  v7 = [(objc_class *)class controllerNeedsToRunForBuddyControllerDelegate:self];
  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithBool:v7];
    v18 = 138412290;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "controllerNeedsToRunForBuddyControllerDelegate: (%@)", &v18, 0xCu);
  }

  if (v7)
  {
    goto LABEL_12;
  }

LABEL_13:
  v13 = [(COSSetupController *)self _controllerFollowingControllerClass:class];
LABEL_14:
  v14 = v13;
  if (objc_opt_respondsToSelector())
  {
    v15 = pbb_setupflow_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[COSSetupController _controllerForClass:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "<Set Delegate - %s>", &v18, 0xCu);
    }

    [v14 setDelegate:self];
    v16 = pbb_setupflow_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[COSSetupController _controllerForClass:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "</Set Delegate - %s>", &v18, 0xCu);
    }
  }

  return v14;
}

- (id)_viewControllerForBuddyController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    viewController = [controllerCopy viewController];
LABEL_5:
    v5 = viewController;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewController = controllerCopy;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)_pushBuddyController:(id)controller ontoNavigationController:(id)navigationController
{
  controllerCopy = controller;
  navigationControllerCopy = navigationController;
  navigationController = navigationControllerCopy;
  if (!navigationControllerCopy)
  {
    navigationController = self->_navigationController;
  }

  navigationControllerCopy2 = navigationController;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100093D3C;
  v14[3] = &unk_10026A4A0;
  objc_copyWeak(&v18, &location);
  v10 = controllerCopy;
  v15 = v10;
  v11 = navigationControllerCopy2;
  v16 = v11;
  selfCopy = self;
  v12 = objc_retainBlock(v14);
  if (objc_opt_respondsToSelector())
  {
    viewController = [v10 viewController];
    if (viewController)
    {
      (v12[2])(v12, viewController);
    }

    else
    {
      [(COSSetupController *)self buddyControllerDone:v10];
    }
  }

  else
  {
    (v12[2])(v12, v10);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_transitionFromBuddyController:(id)controller toBuddyController:(id)buddyController
{
  buddyControllerCopy = buddyController;
  if ((PBShouldOfferBetterTogetherFlow() & 1) != 0 || !self->_isDeKOTAFlow)
  {
    pairingReportManager = [(COSSetupController *)self pairingReportManager];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [pairingReportManager checkInWithController:v9 action:0];

    [(COSSetupController *)self _pushGizmoBuddyController:buddyControllerCopy];
    [(COSSetupController *)self _pushBuddyController:buddyControllerCopy];
    v10 = 0;
    if ([(NSMutableArray *)self->_buddyControllers count]>= 2)
    {
      v10 = [(NSMutableArray *)self->_buddyControllers objectAtIndexedSubscript:[(NSMutableArray *)self->_buddyControllers count]- 2];
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && ![buddyControllerCopy controllerAllowsNavigatingBackFrom] || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v10, "controllerAllowsNavigatingBackTo") & 1) == 0)
    {
      [(COSSetupController *)self blockGoingBackFromCurrentController];
    }
  }

  else
  {
    v6 = pbb_setupflow_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "We're in DeKOTA flow. Holding controller pushes.", v11, 2u);
    }
  }
}

- (void)blockGoingBackFromCurrentController
{
  viewControllers = [(COSBuddyNavigationController *)self->_navigationController viewControllers];
  if ([viewControllers count] < 2)
  {
    lastObject = pbb_setupflow_log();
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_DEFAULT))
    {
      buddyControllers = self->_buddyControllers;
      v11 = 138412546;
      v12 = viewControllers;
      v13 = 2112;
      v14 = buddyControllers;
      _os_log_impl(&_mh_execute_header, lastObject, OS_LOG_TYPE_DEFAULT, "No second-to-last view controller! navStack: %@\n _buddyControllers: %@", &v11, 0x16u);
    }
  }

  else
  {
    lastObject = [viewControllers lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [lastObject setHidesBackButton:1];
    }

    navigationItem = [lastObject navigationItem];
    v6 = sub_10002C85C(self, "promptWhetherToResetPairing:");
    [navigationItem setLeftBarButtonItem:v6];

    [navigationItem setLeftItemsSupplementBackButton:0];
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Blocked going back from controller: %{public}@", &v11, 0xCu);
    }
  }
}

- (void)checkSafeToTransitionOnNavigationController:(id)controller withCompletion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000944F4;
  v17[3] = &unk_100268C18;
  v7 = controllerCopy;
  v18 = v7;
  v8 = completionCopy;
  v19 = v8;
  v9 = objc_retainBlock(v17);
  topViewController = [v7 topViewController];
  presentedViewController = [topViewController presentedViewController];

  if (presentedViewController && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = pbb_setupflow_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Dismissing alert before transition to next controller", buf, 2u);
    }

    topViewController2 = [v7 topViewController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100094670;
    v14[3] = &unk_100269120;
    v15 = v9;
    [topViewController2 dismissViewControllerAnimated:1 completion:v14];
  }

  else
  {
    (v9[2])(v9);
  }
}

- (void)_buddyControllerDone:(id)done nextControllerClass:(Class)class nextController:(id)controller
{
  doneCopy = done;
  controllerCopy = controller;
  v10 = pbb_setupflow_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (controllerCopy)
    {
      [controllerCopy description];
    }

    else
    {
      NSStringFromClass(class);
    }
    v11 = ;
    *buf = 138412546;
    v24 = doneCopy;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Controller Done: %@ -> Next: %@", buf, 0x16u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000948EC;
  v19[3] = &unk_10026A4F0;
  v19[4] = self;
  v20 = doneCopy;
  v21 = controllerCopy;
  classCopy = class;
  v12 = controllerCopy;
  v13 = doneCopy;
  v14 = objc_retainBlock(v19);
  navigationController = [(COSSetupController *)self navigationController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100094BF0;
  v17[3] = &unk_100269120;
  v18 = v14;
  v16 = v14;
  [(COSSetupController *)self checkSafeToTransitionOnNavigationController:navigationController withCompletion:v17];
}

- (void)buddyControllerHold:(id)hold beforePresentingBuddyController:(id)controller
{
  holdCopy = hold;
  controllerCopy = controller;
  objc_storeStrong(&self->_controllerDisplayedWhileOnHold, hold);
  objc_storeStrong(&self->_nextControllerAfterHold, controller);
  pairingReportManager = [(COSSetupController *)self pairingReportManager];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [pairingReportManager checkInWithController:v11 action:1];

  topViewController = [(COSBuddyNavigationController *)self->_navigationController topViewController];
  view = [topViewController view];
  [view setUserInteractionEnabled:0];

  navigationBar = [(COSBuddyNavigationController *)self->_navigationController navigationBar];
  [navigationBar setUserInteractionEnabled:0];

  v15 = [[UIActivityIndicatorView alloc] initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  v16 = [[UIBarButtonItem alloc] initWithCustomView:v15];
  navigationBar2 = [(COSBuddyNavigationController *)self->_navigationController navigationBar];
  topItem = [navigationBar2 topItem];
  [topItem setRightBarButtonItem:v16 animated:1];
  [v15 startAnimating];
  [(COSSetupController *)self showButtonTrayBusyIndicator:1 forController:holdCopy];
  if (objc_opt_respondsToSelector())
  {
    [controllerCopy didEstablishHold];
  }

  if ([controllerCopy conformsToProtocol:&OBJC_PROTOCOL___BPSBuddyControllerHolding] && objc_msgSend(controllerCopy, "holdWithWaitScreen"))
  {
    [controllerCopy waitScreenPushGracePeriod];
    v20 = v19;
    localizedWaitScreenDescription = [controllerCopy localizedWaitScreenDescription];
    navigationController = [(COSSetupController *)self navigationController];
    topViewController2 = [navigationController topViewController];

    v23 = pbb_setupflow_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Looks like Hold Wait Screen is needed for (%@)", buf, 0xCu);
    }

    holdWaitScreenBlock = self->_holdWaitScreenBlock;
    if (holdWaitScreenBlock || self->_holdWaitScreenPresentationTimer)
    {
      self->_holdWaitScreenBlock = 0;

      v25 = pbb_setupflow_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100188B94();
      }
    }

    else
    {
      objc_initWeak(&location, self);
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100095150;
      v43[3] = &unk_10026A518;
      objc_copyWeak(&v49, &location);
      v44 = topViewController2;
      v45 = localizedWaitScreenDescription;
      v46 = controllerCopy;
      v47 = v15;
      v48 = holdCopy;
      v26 = objc_retainBlock(v43);
      v27 = self->_holdWaitScreenBlock;
      self->_holdWaitScreenBlock = v26;

      v28 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      holdWaitScreenPresentationTimer = self->_holdWaitScreenPresentationTimer;
      v38 = v28;
      self->_holdWaitScreenPresentationTimer = v28;

      v30 = self->_holdWaitScreenPresentationTimer;
      v31 = dispatch_time(0, 1000000000 * v20);
      dispatch_source_set_timer(v30, v31, 0xFFFFFFFFFFFFFFFFLL, 100000000 * v20);
      v32 = pbb_setupflow_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = self->_holdWaitScreenPresentationTimer;
        v34 = objc_retainBlock(self->_holdWaitScreenBlock);
        *buf = 138412546;
        v52 = v33;
        v53 = 2112;
        v54 = v34;
        v35 = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Prepare hold wait screen timer. %@ %@", buf, 0x16u);
      }

      v36 = self->_holdWaitScreenPresentationTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000954A4;
      handler[3] = &unk_100268458;
      objc_copyWeak(&v42, &location);
      v41 = v38;
      v37 = v38;
      dispatch_source_set_event_handler(v36, handler);
      dispatch_resume(self->_holdWaitScreenPresentationTimer);

      objc_destroyWeak(&v42);
      objc_destroyWeak(&v49);
      objc_destroyWeak(&location);
    }
  }
}

- (void)cleanupHoldWaitTimer
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    holdWaitScreenPresentationTimer = self->_holdWaitScreenPresentationTimer;
    v5 = objc_retainBlock(self->_holdWaitScreenBlock);
    v9 = 138412546;
    v10 = holdWaitScreenPresentationTimer;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "cleanupHoldWaitTimer %@ %@", &v9, 0x16u);
  }

  v6 = self->_holdWaitScreenPresentationTimer;
  if (v6)
  {
    dispatch_source_cancel(v6);
    v7 = self->_holdWaitScreenPresentationTimer;
    self->_holdWaitScreenPresentationTimer = 0;
  }

  holdWaitScreenBlock = self->_holdWaitScreenBlock;
  self->_holdWaitScreenBlock = 0;
}

- (void)_buddyControllerReleaseHold:(id)hold andSkip:(BOOL)skip
{
  holdCopy = hold;
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000958BC;
  v15[3] = &unk_100269F98;
  objc_copyWeak(&v18, &location);
  v7 = holdCopy;
  skipCopy = skip;
  v16 = v7;
  selfCopy = self;
  v8 = objc_retainBlock(v15);
  navigationController = [(COSSetupController *)self navigationController];
  _isTransitioning = [navigationController _isTransitioning];

  if (_isTransitioning)
  {
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "We're mid-transition; waiting for animation to complete before releasing hold for (%@).", buf, 0xCu);
    }

    v12 = objc_retainBlock(v8);
    deferredHoldBlock = self->_deferredHoldBlock;
    self->_deferredHoldBlock = v12;
  }

  else
  {
    v14 = pbb_setupflow_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Releasing hold inline for (%@).", buf, 0xCu);
    }

    (v8[2])(v8);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (BOOL)_shouldSkipForBetterTogether:(id)together
{
  togetherCopy = together;
  if (PBShouldOfferBetterTogetherFlow() && self->_isDeKOTAFlow)
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)postUserNotificationForController:(id)controller
{
  controllerCopy = controller;
  if ([objc_opt_class() isLiveActivityFeatureEnabled])
  {
    if (controllerCopy)
    {
      [(COSSetupController *)self updateLiveActivityWithBuddyController:controllerCopy];
    }

    else
    {
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"LIVE_ACTIVITY_DEFAULT_TITLE" value:&stru_10026E598 table:@"Localizable"];
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"RETURN_TO_PAIRING_NOTIFICATION_BODY" value:&stru_10026E598 table:@"Localizable"];
      [(COSSetupController *)self updateLiveActivityWithTitle:v7 subtitle:v9];
    }
  }

  else
  {
    +[UNUserNotificationCenter currentNotificationCenter];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100095FA8;
    v11 = v10[3] = &unk_10026A560;
    v5 = v11;
    [v5 getDeliveredNotificationsWithCompletionHandler:v10];
  }
}

- (void)clearIdleUserNotification
{
  v3 = +[UNUserNotificationCenter currentNotificationCenter];
  v5 = @"com.apple.Bridge.pairing";
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v3 removeDeliveredNotificationsWithIdentifiers:v4];

  [(COSSetupController *)self endLiveActivityIfNeeded];
}

- (void)buddyControllerDoneForSignIn:(id)in
{
  inCopy = in;
  controllerClassToPresentAfterSignIn = self->_controllerClassToPresentAfterSignIn;
  if (!controllerClassToPresentAfterSignIn)
  {
    v6 = pbb_setupflow_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100188CE4();
    }

    controllerClassToPresentAfterSignIn = self->_controllerClassToPresentAfterSignIn;
  }

  [(COSSetupController *)self _buddyControllerDone:inCopy nextControllerClass:controllerClassToPresentAfterSignIn nextController:0];
  v7 = self->_controllerClassToPresentAfterSignIn;
  self->_controllerClassToPresentAfterSignIn = 0;
}

- (void)buddyControllerCancelAnyHold
{
  [(COSSetupController *)self cleanupHoldWaitTimer];
  [(COSSetupController *)self showBusyIndicator:0];
  controllerDisplayedWhileOnHold = self->_controllerDisplayedWhileOnHold;
  if (controllerDisplayedWhileOnHold)
  {
    self->_controllerDisplayedWhileOnHold = 0;

    nextControllerAfterHold = self->_nextControllerAfterHold;
    self->_nextControllerAfterHold = 0;
  }

  navigationController = [(COSSetupController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  topItem = [navigationBar topItem];
  [topItem setRightBarButtonItem:0 animated:1];
  navigationController2 = [(COSSetupController *)self navigationController];
  topViewController = [navigationController2 topViewController];
  view = [topViewController view];
  [view setUserInteractionEnabled:1];

  navigationController3 = [(COSSetupController *)self navigationController];
  navigationBar2 = [navigationController3 navigationBar];
  [navigationBar2 setUserInteractionEnabled:1];
}

- (void)buddyControllerWillPushNextControllerClass:(Class)class outNextController:(id *)controller ontoNavigationController:(id)navigationController
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100096640;
  v12[3] = &unk_10026A588;
  v12[4] = self;
  navigationControllerCopy = navigationController;
  classCopy = class;
  controllerCopy = controller;
  v8 = navigationControllerCopy;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009670C;
  v10[3] = &unk_100269120;
  v11 = objc_retainBlock(v12);
  v9 = v11;
  [(COSSetupController *)self checkSafeToTransitionOnNavigationController:v8 withCompletion:v10];
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  viewControllerCopy = viewController;
  if (objc_opt_respondsToSelector())
  {
    useFadePushAnimation = [viewControllerCopy useFadePushAnimation];
    v9 = 0;
    if (operation == 1 && useFadePushAnimation)
    {
      v9 = objc_opt_new();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (self->_deferredHoldBlock)
  {
    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = controllerCopy;
      v16 = 2112;
      v17 = viewControllerCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "navigationController: %@ viewController: %@", &v14, 0x16u);
    }

    if (self->_deferredHoldBlock)
    {
      v10 = pbb_setupflow_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Pushing deferred block!", &v14, 2u);
      }

      (*(self->_deferredHoldBlock + 2))();
      deferredHoldBlock = self->_deferredHoldBlock;
      self->_deferredHoldBlock = 0;
    }
  }

  navigationItem = [viewControllerCopy navigationItem];
  v13 = [(COSSetupController *)self _titleForViewController:viewControllerCopy];
  [navigationItem setBackButtonTitle:v13];

  [navigationItem setBackButtonDisplayMode:1];
  [(COSSetupController *)self updateLiveActivityWithViewController:viewControllerCopy];
}

- (id)_titleForViewController:(id)controller
{
  controllerCopy = controller;
  title = [controllerCopy title];

  if (title)
  {
    title2 = [controllerCopy title];
LABEL_7:
    v6 = title2;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    title2 = [controllerCopy titleString];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    title2 = [controllerCopy navTitle];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)promptWhetherToResetPairing:(id)pairing
{
  pairingCopy = pairing;
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User Backed Out", buf, 2u);
  }

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"RESET_BUDDY_TITLE" value:&stru_10026E598 table:@"Localizable"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"RESET_BUDDY_MESSAGE_%@" value:&stru_10026E598 table:@"Localizable"];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"APPLE_WATCH_ALL_STRING" value:&stru_10026E598 table:@"Localizable"];
  v10 = [NSString stringWithFormat:v7, v9];
  v11 = [UIAlertController alertControllerWithTitle:v5 message:v10 preferredStyle:1];

  objc_initWeak(buf, self);
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"RESET_BUDDY_ACTION" value:&stru_10026E598 table:@"Localizable"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100096D28;
  v20[3] = &unk_10026A5D0;
  objc_copyWeak(&v21, buf);
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:v20];

  [v11 addAction:v14];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"CANCEL_RESET_BUDDY_ACTION" value:&stru_10026E598 table:@"Localizable"];
  v17 = [UIAlertAction actionWithTitle:v16 style:1 handler:&stru_10026A5F0];

  [v11 addAction:v17];
  [(COSBuddyNavigationController *)self->_navigationController presentViewController:v11 animated:1 completion:0];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (void)passcodeCreationFailed
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100188D98();
  }

  self->_hasAddedPasscode = 0;
  passcodeChoiceController = self->_passcodeChoiceController;
  if (passcodeChoiceController)
  {
    v5 = [(COSBuddyNavigationController *)self->_navigationController popToViewController:passcodeChoiceController animated:1];
  }

  else
  {
    v6 = pbb_setupflow_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100188DD4();
    }
  }
}

- (void)passcodeCreationComplete
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Passcode Creation Complete.", v4, 2u);
  }

  self->_hasAddedPasscode = 1;
}

- (void)companionDidFinishHealthSharingOptIn:(BOOL)in
{
  if (in)
  {
    topBuddyController = [(COSSetupController *)self topBuddyController];
    [(COSSetupController *)self _buddyControllerDone:topBuddyController nextControllerClass:objc_opt_class() nextController:0];
  }

  else
  {
    self->_didAllowTinkerHealthSharing = 0;
    topBuddyController = [(COSSetupController *)self topBuddyController];
    [(COSSetupController *)self buddyControllerDone:?];
  }
}

- (void)gizmoDidFinishHealthSharingOptIn:(BOOL)in
{
  inCopy = in;
  self->_didAllowTinkerHealthSharing = in;
  topBuddyController = [(COSSetupController *)self topBuddyController];
  if (inCopy)
  {
    [(COSSetupController *)self _buddyControllerDone:topBuddyController nextControllerClass:objc_opt_class() nextController:0];
  }

  else
  {
    [(COSSetupController *)self buddyControllerDone:topBuddyController];
  }
}

- (void)pushRUIObject:(id)object animated:(BOOL)animated completion:(id)completion
{
  objectCopy = object;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000974C8;
  v18[3] = &unk_10026A618;
  objc_copyWeak(&v21, &location);
  v10 = objectCopy;
  v19 = v10;
  animatedCopy = animated;
  v11 = completionCopy;
  v20 = v11;
  v12 = objc_retainBlock(v18);
  if ([(COSBuddyNavigationController *)self->_navigationController _isTransitioning])
  {
    v13 = pbb_setupflow_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(RUI) We're mid-transition; waiting for animation to complete before releasing hold.", &v17, 2u);
    }

    v14 = objc_retainBlock(v12);
    deferredHoldBlock = self->_deferredHoldBlock;
    self->_deferredHoldBlock = v14;
  }

  else
  {
    v16 = pbb_setupflow_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "(RUI) Releasing hold inline.", &v17, 2u);
    }

    (v12[2])(v12);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)popRUIObject:(id)object animated:(BOOL)animated
{
  animatedCopy = animated;
  topViewController = [(COSBuddyNavigationController *)self->_navigationController topViewController];
  lastObject = [(NSMutableArray *)self->_buddyControllers lastObject];
  if ([lastObject isMemberOfClass:objc_opt_class()] && (objc_msgSend(lastObject, "viewController"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == topViewController))
  {
    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = topViewController;
      v13 = 2112;
      v14 = lastObject;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "POP: %@ vs %@", &v11, 0x16u);
    }
  }

  else
  {
    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100188EB0();
    }
  }

  v10 = [(COSBuddyNavigationController *)self->_navigationController popViewControllerAnimated:animatedCopy];
  [(NSMutableArray *)self->_buddyControllers removeObject:lastObject];
}

- (void)showBusyIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  customActivityIndicator = self->_customActivityIndicator;
  if (!indicator || customActivityIndicator)
  {
    [(UIActivityIndicatorView *)customActivityIndicator stopAnimating];
    [(UIActivityIndicatorView *)self->_customActivityIndicator removeFromSuperview];
    navigationBar = self->_customActivityIndicator;
    self->_customActivityIndicator = 0;
  }

  else
  {
    navigationBar = [(COSBuddyNavigationController *)self->_navigationController navigationBar];
    [navigationBar size];
    v8 = v7;
    v10 = v9;
    v11 = [UIActivityIndicatorView alloc];
    v12 = (v8 + -20.0) * 0.5;
    v13 = (v10 + -20.0) * 0.5;
    v14 = [v11 initWithFrame:{floorf(v12), floorf(v13), 20.0, 20.0}];
    v15 = self->_customActivityIndicator;
    self->_customActivityIndicator = v14;

    v16 = self->_customActivityIndicator;
    v17 = +[UIColor blackColor];
    [(UIActivityIndicatorView *)v16 setBackgroundColor:v17];

    [navigationBar addSubview:self->_customActivityIndicator];
    [(UIActivityIndicatorView *)self->_customActivityIndicator startAnimating];
  }

  controllerDisplayedWhileOnHold = self->_controllerDisplayedWhileOnHold;
  if (controllerDisplayedWhileOnHold)
  {
    v19 = controllerDisplayedWhileOnHold;
  }

  else
  {
    buddyControllers = [(COSSetupController *)self buddyControllers];
    lastObject = [buddyControllers lastObject];

    v19 = lastObject;
  }

  v22 = v19;
  [(COSSetupController *)self showButtonTrayBusyIndicator:indicatorCopy forController:v19];
}

- (void)showButtonTrayBusyIndicator:(BOOL)indicator forController:(id)controller
{
  indicatorCopy = indicator;
  controllerCopy = controller;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100097C70;
  v20[3] = &unk_10026A640;
  v6 = objc_opt_new();
  v21 = v6;
  v7 = objc_retainBlock(v20);
  (v7[2])(v7, controllerCopy);
  if (objc_opt_respondsToSelector())
  {
    viewController = [controllerCopy viewController];
    (v7[2])(v7, viewController);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        buttonTray = [*(*(&v16 + 1) + 8 * v13) buttonTray];
        v15 = buttonTray;
        if (indicatorCopy)
        {
          [buttonTray showButtonsBusy];
        }

        else
        {
          [buttonTray showButtonsAvailable];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v11);
  }
}

- (BOOL)_controllerShouldMirrorToGizmo:(id)gizmo
{
  gizmoCopy = gizmo;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  return v4 & 1;
}

- (void)popViewController:(id)controller
{
  controllerCopy = controller;
  kdebug_trace();
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[COSSetupController popViewController:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s cancelling any hold on pop", &v14, 0xCu);
  }

  [(COSSetupController *)self buddyControllerCancelAnyHold];
  lastObject = [(NSMutableArray *)self->_buddyControllers lastObject];
  v7 = [(COSSetupController *)self _viewControllerForBuddyController:lastObject];
  if (v7 == controllerCopy)
  {
    [(NSMutableArray *)self->_buddyControllers removeLastObject];
  }

  lastObject2 = [(NSMutableArray *)self->_buddyControllers lastObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [lastObject2 setAppearingFromBackNavigation:1];
  }

  if ([(COSSetupController *)self _controllerShouldMirrorToGizmo:controllerCopy])
  {
    bridgeController = [UIApp bridgeController];
    topViewController = [(COSBuddyNavigationController *)self->_navigationController topViewController];
    [bridgeController tellGizmoToPopToControllerType:sub_10009809C(topViewController)];
  }

  v11 = +[NRPairedDeviceRegistry sharedInstance];
  topViewController2 = [(COSBuddyNavigationController *)self->_navigationController topViewController];
  sub_10009809C(topViewController2);
  v13 = PBBuddyControllerDescription();
  [v11 pairingClientDidEnterPhase:v13];
}

- (void)_pushGizmoBuddyController:(id)controller
{
  controllerCopy = controller;
  kdebug_trace();
  if ([(COSSetupController *)self _controllerShouldMirrorToGizmo:controllerCopy])
  {
    bridgeController = [UIApp bridgeController];
    [bridgeController tellGizmoToPushControllerType:sub_10009809C(controllerCopy)];
  }

  v5 = +[NRPairedDeviceRegistry sharedInstance];
  sub_10009809C(controllerCopy);
  v6 = PBBuddyControllerDescription();
  [v5 pairingClientDidEnterPhase:v6];
}

- (void)activationServerResponded
{
  topViewController = [(COSBuddyNavigationController *)self->_navigationController topViewController];
  [PBBridgeCAReporter activationServerRespondedAtPage:sub_10009809C(topViewController)];
}

- (void)finishedActivating:(id)activating
{
  activatingCopy = activating;
  if (PBLogPerformanceMetrics())
  {
    v5 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v5 endMacroActivity:PBBridgeProxyActivationStageThreeActivityName beginTime:CFAbsoluteTimeGetCurrent()];
    v7 = v6;

    [PBBridgeCAReporter pushTimingType:4 withValue:v7];
  }

  v8 = pbb_activation_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Watch finished activating", v18, 2u);
  }

  v9 = UIApp;
  [v9 setIsActivated:1];
  [v9 resetActivationFailureCountAndReport:1];
  setupController = [UIApp setupController];
  pairingReportManager = [setupController pairingReportManager];

  [pairingReportManager addPairingTimeEventToPairingReportPlist:13 withValue:&__kCFBooleanTrue withError:0];
  [pairingReportManager checkInWithClosingPairingTimeEvent:18];
  [(COSSetupController *)self updateActivelyPairingWatchBuddyStage:1];
  object = [activatingCopy object];

  if (object)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([object isEqualToString:PBBridgeWatchDemoDeviceString])
      {
        bridgeController = [UIApp bridgeController];
        [bridgeController sendDemoWatchWirelessCredentials];

        self->_isDeKOTAFlow = 1;
      }
    }
  }

  if ((PBShouldOfferBetterTogetherFlow() & 1) != 0 && !self->_isDeKOTAFlow)
  {
    v17 = pbb_setupflow_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100188FD0();
    }

    [(COSSetupController *)self displayUnsupportedWatchPairingAlertToBetterTogetherDeviceWithCompletion:&stru_10026A660];
  }

  else if (self->_isDeKOTAFlow)
  {
    v14 = pbb_setupflow_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      isDeKOTAFlow = self->_isDeKOTAFlow;
      v18[0] = 67109120;
      v18[1] = isDeKOTAFlow;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "DeKOTA:%{BOOL}d skipping startPostActivationCompatiblePairingBackgroundTasks", v18, 8u);
    }
  }

  else if ([v9 isUpdatingGizmoInSetupFlow])
  {
    v16 = pbb_setupflow_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18[0]) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "updating in setup flow, skipping post activation tasks for now", v18, 2u);
    }
  }

  else
  {
    [(COSSetupController *)self startPostActivationCompatiblePairingBackgroundTasks];
  }
}

- (void)startPostActivationCompatiblePairingBackgroundTasks
{
  v3 = pbb_activation_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (self->_alreadyStartPostActivationCompatiblePairingBackgroundTasks)
    {
      v4 = "YES";
    }

    v10 = 136315394;
    v11 = "[COSSetupController startPostActivationCompatiblePairingBackgroundTasks]";
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: alreadyStartPostActivationCompatiblePairingBackgroundTasks:%s", &v10, 0x16u);
  }

  if (self->_alreadyStartPostActivationCompatiblePairingBackgroundTasks)
  {
    activeWatch = pbb_activation_log();
    if (os_log_type_enabled(activeWatch, OS_LOG_TYPE_ERROR))
    {
      sub_10018907C();
    }
  }

  else
  {
    self->_alreadyStartPostActivationCompatiblePairingBackgroundTasks = 1;
    [(COSSetupController *)self startSilentAppleIDSignIn];
    activeWatch = [UIApp activeWatch];
    v6 = [[NSUUID alloc] initWithUUIDString:@"4AA3FF3B-3224-42E6-995E-481F49AE9260"];
    v7 = [activeWatch supportsCapability:v6];

    if (v7)
    {
      sharedInstance = [sub_10000E07C() sharedInstance];
      [sharedInstance startRemoteProvisioning];

      sharedInstance2 = [sub_10000E07C() sharedInstance];
      [sharedInstance2 updateCellularPlansWithFetch:1];
    }
  }
}

- (void)startSilentAppleIDSignIn
{
  if (!self->_alreadyStartPostActivationCompatiblePairingBackgroundTasks)
  {
    activeWatch = pbb_accountsignin_log();
    if (os_log_type_enabled(activeWatch, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[COSSetupController startSilentAppleIDSignIn]";
      v6 = "%s - Activation not completed yet, ignoring";
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  if (isTinkerPairing)
  {
    activeWatch = pbb_accountsignin_log();
    if (os_log_type_enabled(activeWatch, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[COSSetupController startSilentAppleIDSignIn]";
      v6 = "%s - Skipped for Satellite Pairing";
LABEL_7:
      _os_log_impl(&_mh_execute_header, activeWatch, OS_LOG_TYPE_DEFAULT, v6, &v13, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = +[COSCDPRepairController requiresiCDPRepair];
  activeWatch = pbb_accountsignin_log();
  v8 = os_log_type_enabled(activeWatch, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_8;
    }

    v13 = 136315138;
    v14 = "[COSSetupController startSilentAppleIDSignIn]";
    v6 = "%s - CDP Repair required. Skipping";
    goto LABEL_7;
  }

  if (v8)
  {
    v13 = 136315138;
    v14 = "[COSSetupController startSilentAppleIDSignIn]";
    _os_log_impl(&_mh_execute_header, activeWatch, OS_LOG_TYPE_DEFAULT, "%s", &v13, 0xCu);
  }

  if (!self->_hasStartedSilentAppleIDSignIn)
  {
    self->_hasStartedSilentAppleIDSignIn = 1;
    activeWatch = [UIApp activeWatch];
    setupController = [UIApp setupController];
    pairingReportManager = [setupController pairingReportManager];

    [pairingReportManager addPairingTimeEventToPairingReportPlist:19 withValue:&__kCFBooleanTrue withError:0];
    [pairingReportManager checkInWithOpenPairingTimeEvent:44];
    [pairingReportManager checkInWithOpenPairingTimeEvent:43];
    v11 = [[COSAppleIDSilentSignInController alloc] initWithDelegate:self device:activeWatch];
    silentSignInController = self->_silentSignInController;
    self->_silentSignInController = v11;

    [(COSAppleIDSilentSignInController *)self->_silentSignInController startSigninIn];
    goto LABEL_8;
  }
}

- (void)saveCombinedPasswordBasediTunesStoreAccount:(id)account fromAccountStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  v8 = pbb_accountsignin_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = accountCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Saving iTunesStore account (%@) after successful password-based sign in for combined account", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100099188;
  v11[3] = &unk_1002682C8;
  v12 = accountCopy;
  v9 = accountCopy;
  [COSiTunesStoreAuthController saveToPairedDeviceiTunesStoreAccount:v9 fromAccountStore:storeCopy completion:v11];

  appleIDSignInModel = [(COSSetupController *)self appleIDSignInModel];
  [appleIDSignInModel setHasSignedInToiTunesStore:1];
}

- (COSActivationResponseManager)activationManager
{
  activationManager = self->_activationManager;
  if (!activationManager)
  {
    v4 = objc_alloc_init(COSActivationResponseManager);
    v5 = self->_activationManager;
    self->_activationManager = v4;

    [(COSActivationResponseManager *)self->_activationManager setSetupController:self];
    activationManager = self->_activationManager;
  }

  return activationManager;
}

- (COSSetupSoftwareUpdateManager)setupSoftwareUpdateManager
{
  setupSoftwareUpdateManager = self->_setupSoftwareUpdateManager;
  if (!setupSoftwareUpdateManager)
  {
    v4 = objc_alloc_init(COSSetupSoftwareUpdateManager);
    v5 = self->_setupSoftwareUpdateManager;
    self->_setupSoftwareUpdateManager = v4;

    setupSoftwareUpdateManager = self->_setupSoftwareUpdateManager;
  }

  return setupSoftwareUpdateManager;
}

- (COSPairingCompatibility)pairingCompatiblity
{
  pairingCompatiblity = self->_pairingCompatiblity;
  if (!pairingCompatiblity)
  {
    v4 = objc_alloc_init(COSPairingCompatibility);
    v5 = self->_pairingCompatiblity;
    self->_pairingCompatiblity = v4;

    pairingCompatiblity = self->_pairingCompatiblity;
  }

  return pairingCompatiblity;
}

- (void)checkInWithPairingMetricForSignInState
{
  appleIDSignInModel = [(COSSetupController *)self appleIDSignInModel];
  hasSignedIntoAllServices = [appleIDSignInModel hasSignedIntoAllServices];

  if (hasSignedIntoAllServices)
  {
    pairingReportManager = [(COSSetupController *)self pairingReportManager];
    [pairingReportManager addPairingTimeEventToPairingReportPlist:42 withValue:&__kCFBooleanTrue withError:0];
    [pairingReportManager checkInWithClosingPairingTimeEvent:43];
  }
}

- (void)completePairingMetricForAppTermination
{
  pairingReportManager = [(COSSetupController *)self pairingReportManager];
  [pairingReportManager completeMetricForAppTermination];
}

- (void)appleIDSilentSignInControllerSignedAccountType:(unint64_t)type withSuccess:(BOOL)success
{
  successCopy = success;
  v6 = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      appleIDSignInModel = [(COSSetupController *)self appleIDSignInModel];
      [appleIDSignInModel setHasSignedInToFaceTime:successCopy];
      v7 = 35;
      v6 = 36;
      v9 = 3;
    }

    else
    {
      v7 = 0;
      if (type != 3)
      {
        goto LABEL_11;
      }

      appleIDSignInModel = [(COSSetupController *)self appleIDSignInModel];
      [appleIDSignInModel setHasSignedInToiTunesStore:successCopy];
      v7 = 25;
      v6 = 26;
      v9 = 1;
    }
  }

  else if (type)
  {
    v7 = 0;
    if (type != 1)
    {
      goto LABEL_11;
    }

    appleIDSignInModel = [(COSSetupController *)self appleIDSignInModel];
    [appleIDSignInModel setHasSignedInToiMessage:successCopy];
    v7 = 30;
    v6 = 31;
    v9 = 2;
  }

  else
  {
    appleIDSignInModel = [(COSSetupController *)self appleIDSignInModel];
    [appleIDSignInModel setHasSignedInToiCloud:successCopy];
    v9 = 0;
    v7 = 20;
    v6 = 21;
  }

  appleIDSignInModel2 = [(COSSetupController *)self appleIDSignInModel];
  v11 = [appleIDSignInModel2 stateForServiceType:v9];
  [v11 setSilentSignInSuccessful:successCopy];

  appleIDSignInModel3 = [(COSSetupController *)self appleIDSignInModel];
  v13 = [appleIDSignInModel3 stateForServiceType:v9];
  [v13 setWaitingForSilentSigninToComplete:0];

LABEL_11:
  setupController = [UIApp setupController];
  pairingReportManager = [setupController pairingReportManager];

  v15 = [NSNumber numberWithBool:successCopy];
  [pairingReportManager addPairingTimeEventToPairingReportPlist:v7 withValue:v15 withError:0];

  [pairingReportManager checkInWithClosingPairingTimeEvent:v6];
  appleIDSignInModel4 = [(COSSetupController *)self appleIDSignInModel];
  waitingForAnySilentSignInToComplete = [appleIDSignInModel4 waitingForAnySilentSignInToComplete];

  if ((waitingForAnySilentSignInToComplete & 1) == 0)
  {
    [(COSAppleIDSilentSignInController *)self->_silentSignInController setDelegate:0];
    silentSignInController = self->_silentSignInController;
    self->_silentSignInController = 0;

    appleIDSignInModel5 = [(COSSetupController *)self appleIDSignInModel];
    silentSignInSuccessfulForAll = [appleIDSignInModel5 silentSignInSuccessfulForAll];

    if (silentSignInSuccessfulForAll)
    {
      [pairingReportManager addPairingTimeEventToPairingReportPlist:40 withValue:&__kCFBooleanTrue withError:0];
    }

    [pairingReportManager checkInWithClosingPairingTimeEvent:44];
  }

  v21 = +[NSNotificationCenter defaultCenter];
  [v21 postNotificationName:@"COSBuddyAppleIDSilentSignInChangeNotification" object:0];
}

- (void)prewarmVisualDetector
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099754;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)updateStagedMDMEnrollmentDataForPairingWatchWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000998B0;
  block[3] = &unk_100268FF0;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (COSAppleIDAuthController)tinkerAuthenticationController
{
  tinkerAuthenticationController = self->_tinkerAuthenticationController;
  if (!tinkerAuthenticationController)
  {
    v4 = objc_alloc_init(COSAppleIDAuthController);
    v5 = self->_tinkerAuthenticationController;
    self->_tinkerAuthenticationController = v4;

    tinkerAuthenticationController = self->_tinkerAuthenticationController;
  }

  return tinkerAuthenticationController;
}

- (void)tellAppConduitToInstallAllApps
{
  v3 = objc_alloc_init(COSWatchKitAppChoiceUpdater);
  appChoiceUpdater = self->_appChoiceUpdater;
  self->_appChoiceUpdater = v3;

  v5 = self->_appChoiceUpdater;

  [(COSWatchKitAppChoiceUpdater *)v5 updateAppConduitAboutAppInstallChoice];
}

- (void)updateNanoRegistryToNormalState
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[COSSetupController updateNanoRegistryToNormalState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  activeWatch = [UIApp activeWatch];
  if (activeWatch)
  {
    v5 = PBIsEarlyPairedSyncSupportedForDevice();
    if (v5 && !self->_nrUpdatedToNormalState)
    {
      [(COSSetupController *)self tellAppConduitToInstallAllApps];
      bridgeController = [UIApp bridgeController];
      [bridgeController tellGizmoToUpdateNanoRegistryToNormalState];

      v10 = pbb_setupflow_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[COSSetupController updateNanoRegistryToNormalState]";
        v14 = 2112;
        *v15 = activeWatch;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s notifying device %@", &v12, 0x16u);
      }

      v11 = +[NRPairedDeviceRegistry sharedInstance];
      [v11 notifyActivationCompleted:activeWatch withSuccess:1];

      self->_nrUpdatedToNormalState = 1;
    }

    else
    {
      v6 = pbb_setupflow_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        nrUpdatedToNormalState = self->_nrUpdatedToNormalState;
        v12 = 136315650;
        v13 = "[COSSetupController updateNanoRegistryToNormalState]";
        v14 = 1024;
        *v15 = v5;
        *&v15[4] = 1024;
        *&v15[6] = nrUpdatedToNormalState;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s early sync supported %d already updated to normal state: %d", &v12, 0x18u);
      }
    }
  }

  else
  {
    v8 = pbb_setupflow_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100189130();
    }
  }
}

- (void)tellWatchAgainToUpdateNRToNormalStateAfterRelaunchingForLanguageChange
{
  if (self->_nrUpdatedToNormalState)
  {
    bridgeController = [UIApp bridgeController];
    [bridgeController tellGizmoToUpdateNanoRegistryToNormalState];
  }
}

- (COSLinkUpgradeMonitor)linkUpgradeMonitor
{
  linkUpgradeMonitor = self->_linkUpgradeMonitor;
  if (!linkUpgradeMonitor)
  {
    v4 = objc_alloc_init(COSLinkUpgradeMonitor);
    v5 = self->_linkUpgradeMonitor;
    self->_linkUpgradeMonitor = v4;

    linkUpgradeMonitor = self->_linkUpgradeMonitor;
  }

  return linkUpgradeMonitor;
}

- (void)updateActivelyPairingWatchBuddyStage:(unsigned int)stage
{
  v4 = self->_watchBuddyCompletedStages | stage;
  self->_watchBuddyCompletedStages = v4;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[COSSetupController updateActivelyPairingWatchBuddyStage:]";
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s completed stages: %d", buf, 0x12u);
  }

  objc_initWeak(buf, self);
  v6 = dispatch_get_global_queue(25, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009A198;
  v7[3] = &unk_10026A6F8;
  objc_copyWeak(&v8, buf);
  v9 = v4;
  dispatch_async(v6, v7);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (BOOL)nextControllerToPresentAfterBlockedOnSignInStep
{
  if (!self->_controllerClassToPresentAfterSignIn || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v2 = objc_opt_class();

  return [v2 controllerBlocksRunningBeforeSignInStep];
}

- (id)lastLiveActivityProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_lastLiveActivityProvider);

  return WeakRetained;
}

+ (BOOL)isLiveActivityFeatureEnabled
{
  v5 = &type metadata for FeatureFlags;
  v6 = sub_100144D98();
  v4[0] = 0;
  v2 = isFeatureEnabled(_:)();
  sub_10014A63C(v4);
  return v2 & 1;
}

- (BOOL)areLiveActivitiesAllowed
{
  v8 = &type metadata for FeatureFlags;
  v9 = sub_100144D98();
  v7[0] = 0;
  selfCopy = self;
  v4 = isFeatureEnabled(_:)();
  sub_10014A63C(v7);
  hasStartedPairing = 0;
  if (v4)
  {
    hasStartedPairing = [(COSSetupController *)selfCopy hasStartedPairing];
  }

  return hasStartedPairing;
}

- (BOOL)doesLiveActivityProviderRequiresPairSyncNotifications
{
  selfCopy = self;
  v3 = sub_100144F0C(&qword_1002BC550);

  return v3 & 1;
}

- (void)startLiveActivity
{
  selfCopy = self;
  sub_10014501C();
}

- (void)updateLiveActivityWithViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  if ([(COSSetupController *)selfCopy areLiveActivitiesAllowed])
  {
    sub_10014514C(controllerCopy);
  }
}

- (void)updateLiveActivityWithBuddyController:(id)controller
{
  swift_unknownObjectRetain();
  selfCopy = self;
  if ([(COSSetupController *)selfCopy areLiveActivitiesAllowed])
  {
    sub_10014514C(controller);
  }

  swift_unknownObjectRelease();
}

- (void)updateLiveActivityWithTitle:(id)title subtitle:(id)subtitle
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100145C64();
}

- (void)endLiveActivityWithEndStatus:(int64_t)status
{
  selfCopy = self;
  sub_100145EB0(status);
}

- (void)endLiveActivityIfNeeded
{
  selfCopy = self;
  if (sub_100144F0C(&qword_1002BC558))
  {
    [(COSSetupController *)selfCopy endLiveActivityWithEndStatus:1];
  }
}

- (void)updateActivityAndRegenerateImages
{
  selfCopy = self;
  sub_1001461D4();
}

@end