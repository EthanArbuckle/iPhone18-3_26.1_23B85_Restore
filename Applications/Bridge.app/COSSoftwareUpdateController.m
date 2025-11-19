@interface COSSoftwareUpdateController
+ (int64_t)_extractBuildPrefixFromBuildVersion:(id)a3;
- (BOOL)downloadTermsAcceptedForInstallTonight;
- (BOOL)presentiPhoneMirrorErrorIfNecessary;
- (BOOL)shouldShowExtraRows:(int64_t)a3;
- (COSSoftwareUpdateController)init;
- (SEL)termsAcceptanceAction;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_customViewForSpecifier:(id)a3 class:(Class)a4 isHeader:(BOOL)a5;
- (id)_filterPrograms:(id)a3 withMinimumBuildPrefix:(int64_t)a4;
- (id)automaticUpdateStatusString;
- (id)enrolledBetaProgramString;
- (id)extractValueFromDict:(id)a3 key:(id)a4 expectedClass:(Class)a5;
- (id)internalMessageFromDenialInfo:(id)a3;
- (id)selectSpecifier:(id)a3;
- (id)specifiers;
- (id)specifiersForState:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_filterBetaPrograms:(id)a3;
- (void)_manager:(id)a3 didChangeProgressOnDownload:(id)a4;
- (void)_manager:(id)a3 didFailDownload:(id)a4 withError:(id)a5;
- (void)_manager:(id)a3 didFailInstallation:(id)a4 withError:(id)a5;
- (void)_manager:(id)a3 didFinishDownload:(id)a4 willProceedWithInstallation:(BOOL)a5 waitingForAdmissionControl:(BOOL)a6;
- (void)_manager:(id)a3 didFinishInstallation:(id)a4;
- (void)_manager:(id)a3 installationOfUpdate:(id)a4 canProceed:(BOOL)a5;
- (void)_manager:(id)a3 scanRequestDidLocateUpdate:(id)a4 error:(id)a5;
- (void)_manager:(id)a3 willProceedWithInstallation:(id)a4;
- (void)_reallyInstall;
- (void)_setupTitleCell;
- (void)_termsAgree;
- (void)_termsDisagree;
- (void)cancelHidingProgressBarAfterDelay;
- (void)cancelUpdatePressed;
- (void)checkForUpdatedBuildVersionWithDevice:(id)a3;
- (void)dealloc;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
- (void)devicePINControllerDidDismissPINPane:(id)a3;
- (void)didBecomeActive;
- (void)displayInstallButtonSpinner:(BOOL)a3 reloadSpecifier:(BOOL)a4;
- (void)displayRevLockBootProgressIndicatorIfNeeded;
- (void)displayRevLockBootProgressIndicatorWithElapsedDuration:(double)a3 totalDuration:(double)a4;
- (void)downloadAndInstall:(id)a3;
- (void)downloadTermsAccepted;
- (void)downloadTermsAcceptedForLegacyFlow;
- (void)enableNotifications;
- (void)enrollInBetaProgram:(id)a3 completion:(id)a4;
- (void)handleDownloadError:(id)a3;
- (void)handleInstallationError:(id)a3;
- (void)handleManagerState:(int64_t)a3 update:(id)a4 error:(id)a5;
- (void)handleManagerStateError:(id)a3;
- (void)handleScanError:(id)a3;
- (void)hideProgressBarAfterDelay;
- (void)install:(id)a3;
- (void)loadBetaUpdates;
- (void)loadBetaUpdatesWithCompletion:(id)a3;
- (void)loadView;
- (void)manager:(id)a3 didChangeProgressOnDownload:(id)a4;
- (void)manager:(id)a3 didFailDownload:(id)a4 withError:(id)a5;
- (void)manager:(id)a3 didFailInstallation:(id)a4 withError:(id)a5;
- (void)manager:(id)a3 didFinishDownload:(id)a4 willProceedWithInstallation:(BOOL)a5 waitingForAdmissionControl:(BOOL)a6;
- (void)manager:(id)a3 didFinishInstallation:(id)a4;
- (void)manager:(id)a3 installationOfUpdate:(id)a4 canProceed:(BOOL)a5;
- (void)manager:(id)a3 scanRequestDidLocateUpdate:(id)a4 error:(id)a5;
- (void)manager:(id)a3 userInstallRequestTypeDidChange:(int64_t)a4;
- (void)manager:(id)a3 willProceedWithInstallation:(id)a4;
- (void)managerUserDidAcceptTermsAndConditionsForUpdate:(id)a3;
- (void)presentAlertForDuetDenialCondition:(unint64_t)a3 denialReasons:(id)a4;
- (void)presentAlertForUpdatingCompanion;
- (void)presentAlertForiPhoneMirroring;
- (void)presentDuetAlertIfNecessary;
- (void)presentInSetupFlowForDevice:(id)a3 userForcedUpdate:(BOOL)a4 withController:(id)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)presentModalForDevice:(id)a3 userForcedUpdate:(BOOL)a4 withController:(id)a5 unpairOnExit:(BOOL)a6 launchedForTerms:(BOOL)a7 animated:(BOOL)a8 completion:(id)a9;
- (void)presentPasscodePromptIfNecessaryWithHandler:(id)a3;
- (void)presentPasscodePromptWithCompletionHandler:(id)a3;
- (void)presentTermsForInstallTonightIfNeeded;
- (void)presentTermsRequiringPasscode:(BOOL)a3 ifNecessaryWithAcceptanceAction:(SEL)a4 withDescriptor:(id)a5;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)queryManagerState;
- (void)reportRequiredUpdateAbort;
- (void)resetInstallButtonEnabledStateAndReloadSpecifier:(BOOL)a3;
- (void)scanForUpdatesInBackgound:(BOOL)a3;
- (void)setTermsAcceptanceAction:(SEL)a3;
- (void)startSUBUpdates;
- (void)stopSUBUpdates;
- (void)transitionToState:(int64_t)a3;
- (void)unenrollFromBetaUpdatesWithCompletion:(id)a3;
- (void)unpairDevice;
- (void)updateTableViewWithTask:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willEnterForeground;
@end

@implementation COSSoftwareUpdateController

- (COSSoftwareUpdateController)init
{
  v26.receiver = self;
  v26.super_class = COSSoftwareUpdateController;
  v2 = [(COSSoftwareUpdateController *)&v26 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.Bridge.SeedingQueryQueue", v3);
    seedingQueryQueue = v2->_seedingQueryQueue;
    v2->_seedingQueryQueue = v4;

    v6 = objc_alloc_init(NSDateComponentsFormatter);
    durationFormatter = v2->_durationFormatter;
    v2->_durationFormatter = v6;

    [(NSDateComponentsFormatter *)v2->_durationFormatter setUnitsStyle:3];
    [(NSDateComponentsFormatter *)v2->_durationFormatter setAllowedUnits:240];
    [(NSDateComponentsFormatter *)v2->_durationFormatter setMaximumUnitCount:1];
    [(NSDateComponentsFormatter *)v2->_durationFormatter setIncludesApproximationPhrase:1];
    [(NSDateComponentsFormatter *)v2->_durationFormatter setIncludesTimeRemainingPhrase:1];
    [(NSDateComponentsFormatter *)v2->_durationFormatter setFormattingContext:2];
    v8 = +[PSSpecifier emptyGroupSpecifier];
    titleGroup = v2->_titleGroup;
    v2->_titleGroup = v8;

    v10 = PSIDKey;
    [(PSSpecifier *)v2->_titleGroup setProperty:@"TITLE_GROUP" forKey:PSIDKey];
    v11 = +[PSSpecifier emptyGroupSpecifier];
    installButtonGroup = v2->_installButtonGroup;
    v2->_installButtonGroup = v11;

    [(PSSpecifier *)v2->_installButtonGroup setProperty:@"INSTALL_BUTTON_GROUP" forKey:v10];
    v13 = v2->_installButtonGroup;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [(PSSpecifier *)v13 setProperty:v15 forKey:PSFooterCellClassGroupKey];

    v2->_subState = 0;
    v16 = +[NRPairedDeviceRegistry sharedInstance];
    v17 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v18 = [v16 getAllDevicesWithArchivedAltAccountDevicesMatching:v17];
    v19 = [v18 firstObject];
    activeDevice = v2->_activeDevice;
    v2->_activeDevice = v19;

    v2->_termsAcceptanceAction = 0;
    v21 = [PSSpecifier preferenceSpecifierNamed:0 target:v2 set:0 get:0 detail:0 cell:13 edit:0];
    installButtonSpecifier = v2->_installButtonSpecifier;
    v2->_installButtonSpecifier = v21;

    v2->_scanRetries = 0;
    v23 = [[NSSManager alloc] initWithQueue:&_dispatch_main_q];
    [(COSSoftwareUpdateController *)v2 setNssManager:v23];

    v24 = pbb_bridge_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v28 = v2;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "SoftwareUpdateController initialized (%p)", buf, 0xCu);
    }
  }

  return v2;
}

- (void)enableNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"didBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"willResignActive" name:UIApplicationWillResignActiveNotification object:0];
}

- (void)dealloc
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SoftwareUpdateController deallocating (%p)", buf, 0xCu);
  }

  hidingProgressBarSource = self->_hidingProgressBarSource;
  if (hidingProgressBarSource)
  {
    dispatch_source_cancel(hidingProgressBarSource);
    v5 = self->_hidingProgressBarSource;
    self->_hidingProgressBarSource = 0;
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  [(COSSoftwareUpdateController *)self stopSUBUpdates];
  v7.receiver = self;
  v7.super_class = COSSoftwareUpdateController;
  [(COSSoftwareUpdateController *)&v7 dealloc];
}

- (void)presentInSetupFlowForDevice:(id)a3 userForcedUpdate:(BOOL)a4 withController:(id)a5 animated:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v9 = a4;
  self->_inSetupFlow = 1;
  v12 = a7;
  v13 = a5;
  v14 = a3;
  v15 = pbb_bridge_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Presenting Update pane in Setup flow", v16, 2u);
  }

  [(COSSoftwareUpdateController *)self presentModalForDevice:v14 userForcedUpdate:v9 withController:v13 unpairOnExit:v9 ^ 1 animated:v7 completion:v12];
}

- (void)presentModalForDevice:(id)a3 userForcedUpdate:(BOOL)a4 withController:(id)a5 unpairOnExit:(BOOL)a6 launchedForTerms:(BOOL)a7 animated:(BOOL)a8 completion:(id)a9
{
  v11 = a6;
  v16 = a3;
  v17 = a5;
  v18 = a9;
  v19 = pbb_bridge_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v11;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Presenting Update pane modally.  Unpair on exit: %{BOOL}d", &buf, 8u);
  }

  self->_unpairOnExit = v11;
  self->_userIsTryingToForceUpdate = a4;
  self->_noUpdateFoundOrIsComplete = 0;
  objc_storeStrong(&self->_activeDevice, a3);
  self->_presentedModally = 1;
  self->_launchedForTerms = a7;
  v20 = objc_retainBlock(v18);
  updateCompletionBlock = self->_updateCompletionBlock;
  self->_updateCompletionBlock = v20;

  v22 = [[SUBManager alloc] initWithDelegate:self];
  subManager = self->_subManager;
  self->_subManager = v22;

  objc_initWeak(&buf, self);
  v24 = self->_subManager;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10011EED8;
  v26[3] = &unk_10026C668;
  objc_copyWeak(&v29, &buf);
  v25 = v17;
  v27 = v25;
  v28 = self;
  v30 = a4;
  v31 = a8;
  [(SUBManager *)v24 getCloudDescriptors:v26];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&buf);
}

- (void)displayRevLockBootProgressIndicatorWithElapsedDuration:(double)a3 totalDuration:(double)a4
{
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = a3;
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Displaying RevLock Boot progress indicator; Elapsed duration: (%f); Total duration: (%f)", &v8, 0x16u);
  }

  self->_isDisplayingRevLockBootProgressIndicator = !self->_userIsTryingToForceUpdate;
  self->_revLockBootProgressIndicatorElapsedDuration = a3;
  self->_revLockBootProgressIndicatorTotalDuration = a4;
  [(COSSoftwareUpdateController *)self displayRevLockBootProgressIndicatorIfNeeded];
}

- (void)displayRevLockBootProgressIndicatorIfNeeded
{
  if (self->_isDisplayingRevLockBootProgressIndicator)
  {
    v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__table];
    v5 = v4;
    if (v4)
    {
      v7 = v4;
      v6 = [v4 isDisplayingRevLockBootProgressIndicator];
      v5 = v7;
      if ((v6 & 1) == 0)
      {
        [v7 displayRevLockBootProgressIndicatorWithElapsedDuration:self->_revLockBootProgressIndicatorElapsedDuration totalDuration:self->_revLockBootProgressIndicatorTotalDuration];
        v5 = v7;
      }
    }
  }
}

- (void)unpairDevice
{
  v3 = [(NRDevice *)self->_activeDevice valueForProperty:NRDevicePropertyIsPaired];
  v4 = [v3 BOOLValue];

  v5 = [UIApp isActivated];
  activeDevice = self->_activeDevice;
  v7 = pbb_bridge_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (activeDevice && ((v4 | v5) & 1) != 0)
  {
    if (v8)
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User Reset Buddy! - Unpairing", v11, 2u);
    }

    v12[0] = @"obliterate";
    v12[1] = @"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2";
    v13[0] = &__kCFBooleanTrue;
    v13[1] = &__kCFBooleanTrue;
    v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = +[NRPairedDeviceRegistry sharedInstance];
    [v10 unpairWithDevice:self->_activeDevice withOptions:v9 operationHasBegun:&stru_10026C688];
  }

  else
  {
    if (v8)
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User Reset Buddy!", v11, 2u);
    }

    [UIApp resetSetupFlowAnimated:0 forEvent:41];
    [UIApp dismissSetupFlowComplete:0 animated:1];
  }
}

- (void)cancelUpdatePressed
{
  unpairOnExit = self->_unpairOnExit;
  v4 = pbb_bridge_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (unpairOnExit)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User Backed Out during Update UI: Present Option to Reset Buddy", buf, 2u);
    }

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"EXIT_UPDATE_TITLE" value:&stru_10026E598 table:@"Software Update"];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"EXIT_UPDATE_BODY_%@" value:&stru_10026E598 table:@"Software Update"];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"APPLE_WATCH_ALL_STRING" value:&stru_10026E598 table:@"Localizable"];
    v12 = [NSString stringWithFormat:v9, v11];
    modalController = [UIAlertController alertControllerWithTitle:v7 message:v12 preferredStyle:1];

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"EXIT_UPDATE_EXIT_BUTTON" value:&stru_10026E598 table:@"Software Update"];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10011FB78;
    v24[3] = &unk_100268580;
    v24[4] = self;
    v16 = [UIAlertAction actionWithTitle:v15 style:2 handler:v24];

    [modalController addAction:v16];
    objc_initWeak(buf, self);
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"EXIT_UPDATE_PBAutomationStringContinueButton" value:&stru_10026E598 table:@"Software Update"];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10011FBB4;
    v22[3] = &unk_10026C6B0;
    objc_copyWeak(&v23, buf);
    v22[4] = self;
    v19 = [UIAlertAction actionWithTitle:v18 style:1 handler:v22];

    [modalController addAction:v19];
    [(COSSoftwareUpdateController *)self presentViewController:modalController animated:1 completion:0];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v5)
    {
      v20 = objc_retainBlock(self->_updateCompletionBlock);
      *buf = 138412290;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Done pushed, not killing pairing: %@", buf, 0xCu);
    }

    [(COSSoftwareUpdateController *)self stopSUBUpdates];
    [(COSSoftwareUpdateController *)self dismissViewControllerAnimated:1 completion:0];
    updateCompletionBlock = self->_updateCompletionBlock;
    if (updateCompletionBlock)
    {
      updateCompletionBlock[2](updateCompletionBlock, 1, self->_update, 0);
    }

    modalController = self->_modalController;
    self->_modalController = 0;
  }
}

- (void)startSUBUpdates
{
  if (!self->_subManager)
  {
    v3 = [[SUBManager alloc] initWithDelegate:self];
    subManager = self->_subManager;
    self->_subManager = v3;
  }

  v5 = OBJC_IVAR___PSListController__table;
  v6 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__table];
  v7 = sub_10011FE6C(self->_activeDevice, 0);
  [v6 setCurrentVersion:v7];

  v8 = [*&self->BPSListController_opaque[v5] checkingStatusLabel];
  v9 = BPSDetailTextColor();
  [v8 setTextColor:v9];

  v10 = [*&self->BPSListController_opaque[v5] subtitleLabel];
  v11 = BPSDetailTextColor();
  [v10 setTextColor:v11];

  v12 = [*&self->BPSListController_opaque[v5] checkingForUpdateSpinner];
  [v12 setActivityIndicatorViewStyle:100];

  [(COSSoftwareUpdateController *)self transitionToState:0];
  v13 = +[UIApplication sharedApplication];
  v14 = [v13 applicationState];

  if (!v14)
  {
    objc_initWeak(&location, self);
    v15 = self->_subManager;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100120100;
    v16[3] = &unk_10026C6D8;
    objc_copyWeak(&v17, &location);
    v16[4] = self;
    [(SUBManager *)v15 getCloudDescriptors:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)stopSUBUpdates
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    subManager = self->_subManager;
    *buf = 136315394;
    v10 = "[COSSoftwareUpdateController stopSUBUpdates]";
    v11 = 2112;
    v12 = subManager;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - %@", buf, 0x16u);
  }

  if (self->_subManager)
  {
    activeDevice = self->_activeDevice;
    v8 = NRDevicePropertySystemBuildVersion;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
    [(NRDevice *)activeDevice removePropertyObserver:self forPropertyChanges:v6];

    [(SUBManager *)self->_subManager setDelegate:0];
    v7 = self->_subManager;
    self->_subManager = 0;
  }
}

- (void)didBecomeActive
{
  v3 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 pairingID];
    v6 = [(NRDevice *)self->_activeDevice pairingID];
    v13 = 136315650;
    v14 = "[COSSoftwareUpdateController didBecomeActive]";
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s - CurrentActiveWatchID: %@ CachedActiveWatchID: %@", &v13, 0x20u);
  }

  if (v3 && ([v3 pairingID], v7 = objc_claimAutoreleasedReturnValue(), -[NRDevice pairingID](self->_activeDevice, "pairingID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, v9))
  {
    self->_alreadyPresentedTermsForRequestType = 0;
    [(COSSoftwareUpdateController *)self startSUBUpdates];
    [(COSSoftwareUpdateController *)self presentTermsForInstallTonightIfNeeded];
  }

  else
  {
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Devices changed, cleaning up COSSoftwareUpdateController", &v13, 2u);
    }

    [(COSSoftwareUpdateController *)self dismissViewControllerAnimated:1 completion:0];
    updateCompletionBlock = self->_updateCompletionBlock;
    if (updateCompletionBlock)
    {
      updateCompletionBlock[2](updateCompletionBlock, 1, self->_update, 0);
    }

    modalController = self->_modalController;
    self->_modalController = 0;
  }
}

- (void)checkForUpdatedBuildVersionWithDevice:(id)a3
{
  v4 = [a3 valueForProperty:NRDevicePropertySystemBuildVersion];
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SUBDescriptor *)self->_update productBuildVersion];
    userIsTryingToForceUpdate = self->_userIsTryingToForceUpdate;
    noUpdateFoundOrIsComplete = self->_noUpdateFoundOrIsComplete;
    v17 = 136316162;
    v18 = "[COSSoftwareUpdateController checkForUpdatedBuildVersionWithDevice:]";
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v4;
    v23 = 1024;
    v24 = userIsTryingToForceUpdate;
    v25 = 1024;
    v26 = noUpdateFoundOrIsComplete;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - Descripter build version: %@ Updated BuildVersion: %@ Forced Update: %{BOOL}d NoUpdateFoundOfIsComplete: %{BOOL}d", &v17, 0x2Cu);
  }

  v9 = [(SUBDescriptor *)self->_update productBuildVersion];
  if ([v9 isEqualToString:v4])
  {

LABEL_5:
    update = self->_update;
    self->_update = 0;

    download = self->_download;
    self->_download = 0;

    self->_hasUpdatedSuccessfully = 1;
    self->_noUpdateFoundOrIsComplete = 1;
    v12 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__table];
    v13 = sub_10011FE6C(self->_activeDevice, 0);
    [v12 setCurrentVersion:v13];

    [(COSSoftwareUpdateController *)self transitionToState:1];
    updateCompletionBlock = self->_updateCompletionBlock;
    if (updateCompletionBlock)
    {
      (*(updateCompletionBlock + 2))(updateCompletionBlock, 0, self->_update, 0);
    }

    if (self->_modalController)
    {
      [(COSSoftwareUpdateController *)self stopSUBUpdates];
      modalController = self->_modalController;
      self->_modalController = 0;
    }

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 removeObserver:self];
    goto LABEL_13;
  }

  if (self->_userIsTryingToForceUpdate)
  {
    v16 = self->_noUpdateFoundOrIsComplete;

    if (!v16)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

LABEL_13:

LABEL_14:
}

- (void)reportRequiredUpdateAbort
{
  v2 = [UIApp setupController];
  v3 = [v2 pairingReportManager];

  [v3 addPairingTimeEventToPairingReportPlist:55 withValue:&__kCFBooleanTrue withError:0];
}

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pbb_bridge_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218754;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "self: (%p); device: (%@); property: (%@); fromValue: (%@)", &v12, 0x2Au);
  }

  if ([v9 isEqualToString:NRDevicePropertySystemBuildVersion])
  {
    [(COSSoftwareUpdateController *)self checkForUpdatedBuildVersionWithDevice:v8];
  }
}

- (void)queryManagerState
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Querying for current state", buf, 2u);
  }

  objc_initWeak(buf, self);
  subManager = self->_subManager;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100120CA8;
  v5[3] = &unk_1002686A0;
  objc_copyWeak(&v6, buf);
  [(SUBManager *)subManager managerState:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)handleManagerState:(int64_t)a3 update:(id)a4 error:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = pbb_bridge_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = SUBStringForManagerState();
    v22 = 134218754;
    v23 = self;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "handleManagerState: self: (%p); subState: (%@); update: (%@); error: (%@)", &v22, 0x2Au);
  }

  if ([v9 userInstallRequestType] != 2 && !self->_hasScannedSinceBeingForegrounded)
  {
    [(COSSoftwareUpdateController *)self scanForUpdatesInBackgound:1];
  }

  if (self->_hasUpdatedSuccessfully)
  {
    v13 = pbb_bridge_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring callback as the update has succeeded", &v22, 2u);
    }

    goto LABEL_30;
  }

  if (v10)
  {
    if (self->_subManager)
    {
      [(COSSoftwareUpdateController *)self handleManagerStateError:v10];
    }

    goto LABEL_30;
  }

  if (a3 > 7)
  {
    goto LABEL_25;
  }

  if (((1 << a3) & 0xCA) == 0)
  {
    if (a3 != 2)
    {
      goto LABEL_25;
    }

LABEL_22:
    if (([(SUBDescriptor *)self->_update isEqual:v9]& 1) != 0)
    {
      goto LABEL_30;
    }

    update = self->_update;
    self->_update = 0;

    download = self->_download;
    self->_download = 0;

    v16 = self;
    v17 = 2;
LABEL_24:
    [(COSSoftwareUpdateController *)v16 transitionToState:v17];
    goto LABEL_30;
  }

  sub_10002E500(self->_activeDevice);
  if (a3 == 2)
  {
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v14 = self->_update;
    self->_update = 0;

    v15 = self->_download;
    self->_download = 0;

    if (!self->_hasReceivedValidFirstScanResult)
    {
      [(COSSoftwareUpdateController *)self scanForUpdatesInBackgound:0];
      goto LABEL_30;
    }

    if (self->_userIsTryingToForceUpdate)
    {
      self->_noUpdateFoundOrIsComplete = 1;
    }

    v16 = self;
    v17 = 1;
    goto LABEL_24;
  }

LABEL_25:
  if (self->_update && ([v9 isEqual:?] & 1) == 0)
  {
    v20 = self->_update;
    self->_update = 0;

    v21 = self->_download;
    self->_download = 0;

    [(COSSoftwareUpdateController *)self transitionToState:0];
  }

  objc_storeStrong(&self->_update, a4);
  [(COSSoftwareUpdateController *)self _setupTitleCell];
  [(COSSoftwareUpdateController *)self transitionToState:a3];
  [(COSSoftwareUpdateController *)self presentTermsForInstallTonightIfNeeded];
LABEL_30:
}

- (void)_setupTitleCell
{
  if (!self->_titleCell)
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[OSVersionIcon]: Attempting to set up titleCell with OSVersion icon", v33, 2u);
    }

    update = self->_update;
    v5 = pbb_bridge_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (update)
    {
      if (v6)
      {
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[OSVersionIcon]: Attempting to determine OSVersion icon from descriptor", v33, 2u);
      }

      v7 = [(SUBDescriptor *)self->_update documentation];

      if (!v7)
      {
        v5 = pbb_bridge_log();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        *v33 = 0;
        v16 = "[OSVersionIcon]: Could not extract icon from descriptor since no documentation asset found. Falling back to legacy icon selection";
        goto LABEL_20;
      }

      v8 = [(SUBDescriptor *)self->_update documentation];
      v9 = [v8 preferencesIcon];

      v5 = pbb_bridge_log();
      v10 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v10)
        {
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[OSVersionIcon]: Found OSVersion icon in descriptor", v33, 2u);
        }

        v11 = [UIImage alloc];
        v12 = [(SUBDescriptor *)self->_update documentation];
        v13 = [v12 preferencesIcon];
        v14 = +[UIScreen mainScreen];
        [v14 scale];
        v15 = [v11 initWithData:v13 scale:?];

        if (v15)
        {
          goto LABEL_37;
        }

LABEL_22:
        v17 = [(SUBDescriptor *)self->_update productVersion];
        NRRawVersionFromString();

        NRRawVersionFromString();
        NRRawVersionFromString();
        NRRawVersionFromString();
        NRRawVersionFromString();
        NRRawVersionFromString();
        NRRawVersionFromString();
        IsGreaterThanOrEqual = NRVersionIsGreaterThanOrEqual();
        v19 = NRVersionIsGreaterThanOrEqual();
        v20 = NRVersionIsGreaterThanOrEqual();
        v21 = NRVersionIsGreaterThanOrEqual();
        v22 = NRVersionIsGreaterThanOrEqual();
        v23 = NRVersionIsGreaterThanOrEqual();
        if (IsGreaterThanOrEqual && v19)
        {
          v24 = pbb_bridge_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *v33 = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[OSVersionIcon]: Legacy icon detection: Update is in range to show 9 version icon", v33, 2u);
          }

          v25 = @"WatchOS_GC_9";
        }

        else if ((v20 & v21) == 1)
        {
          v24 = pbb_bridge_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *v33 = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[OSVersionIcon]: Legacy icon detection: Update is in range to show 10 version icon", v33, 2u);
          }

          v25 = @"WatchOS_GC_10";
        }

        else
        {
          v26 = v22 & v23;
          v24 = pbb_bridge_log();
          v27 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          if (v26 != 1)
          {
            if (v27)
            {
              *v33 = 0;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[OSVersionIcon]: Legacy icon detection: Update is not in range to display any known version icons", v33, 2u);
            }

            goto LABEL_41;
          }

          if (v27)
          {
            *v33 = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[OSVersionIcon]: Legacy icon detection: Update is in range to show 11 version icon", v33, 2u);
          }

          v25 = @"WatchOS_GC_11";
        }

        v28 = [UIImage imageNamed:v25];
        if (v28)
        {
          v15 = v28;
LABEL_37:
          v29 = [[COSSoftwareUpdateTitleCell alloc] initWithStyle:3 reuseIdentifier:0 specifier:0 device:self->_activeDevice image:v15];
          titleCell = self->_titleCell;
          self->_titleCell = v29;

LABEL_44:
          return;
        }

LABEL_41:
        v31 = pbb_bridge_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[OSVersionIcon]: Legacy icon detection: No icon file found. Using default image for title cell", v33, 2u);
        }

        v32 = [[COSSoftwareUpdateTitleCell alloc] initWithStyle:3 reuseIdentifier:0 specifier:0 device:self->_activeDevice];
        v15 = self->_titleCell;
        self->_titleCell = v32;
        goto LABEL_44;
      }

      if (v10)
      {
        *v33 = 0;
        v16 = "[OSVersionIcon]: OSVersion icon not set in documentation. Falling back to legacy icon selection";
        goto LABEL_20;
      }
    }

    else if (v6)
    {
      *v33 = 0;
      v16 = "[OSVersionIcon]: Could not extract icon from descriptor since no descriptor is present. Falling back to legacy icon selection";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v16, v33, 2u);
    }

LABEL_21:

    goto LABEL_22;
  }
}

- (void)presentTermsForInstallTonightIfNeeded
{
  update = self->_update;
  if (update)
  {
    alreadyPresentedTermsForRequestType = self->_alreadyPresentedTermsForRequestType;
    if (alreadyPresentedTermsForRequestType)
    {
      if (alreadyPresentedTermsForRequestType == [(SUBDescriptor *)update userInstallRequestType])
      {
        return;
      }

      update = self->_update;
    }

    if ((([(SUBDescriptor *)update displayTermsRequested]& 1) != 0 || self->_launchedForTerms) && ([(SUBDescriptor *)self->_update userDidAcceptTermsAndConditions]& 1) == 0)
    {
      self->_alreadyPresentedTermsForRequestType = [(SUBDescriptor *)self->_update userInstallRequestType];
      self->_showingTermsRequestedByWatch = 1;
      v5 = pbb_bridge_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Showing terms as requested by Watch", v6, 2u);
      }

      objc_storeStrong(&self->_updateAgreedTo, self->_update);
      [(COSSoftwareUpdateController *)self presentTermsRequiringPasscode:0 ifNecessaryWithAcceptanceAction:"downloadTermsAccepted"];
    }
  }

  else
  {
    self->_alreadyPresentedTermsForRequestType = 0;
    if (self->_termsAcceptanceAction && self->_showingTermsRequestedByWatch)
    {
      self->_showingTermsRequestedByWatch = 0;
      self->_termsAcceptanceAction = 0;
      [(COSSoftwareUpdateController *)self resetInstallButtonEnabledStateAndReloadSpecifier:1];

      [(COSSoftwareUpdateController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (id)specifiersForState:(int64_t)a3
{
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v54 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "State is: %ld", buf, 0xCu);
  }

  v6 = objc_alloc_init(NSMutableArray);
  v7 = BPSRemoteUISetupStyle_ptr;
  if ([(COSSoftwareUpdateController *)self shouldShowExtraRows:a3])
  {
    v8 = +[PSSpecifier emptyGroupSpecifier];
    [v8 setProperty:@"AUTOMATIC_WATCH_UPDATES_BUTTON_GROUP" forKey:PSIDKey];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"AUTOMATIC_UPDATES" value:&stru_10026E598 table:@"Software Update"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:"automaticUpdateStatusString" detail:objc_opt_class() cell:2 edit:0];

    [v11 setIdentifier:@"AUTOMATIC_WATCH_UPDATES_BUTTON_SPECIFIER"];
    [v6 addObject:v11];
    v12 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
    v13 = [[NSUUID alloc] initWithUUIDString:@"F364B0F1-4FC0-461A-8B5B-93CF7E2BC79F"];
    v14 = [v12 supportsCapability:v13];

    if (v14)
    {
      betaPrograms = self->_betaPrograms;
      if (!betaPrograms || ![(NSArray *)betaPrograms count])
      {
        goto LABEL_13;
      }

      v16 = pbb_setup_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Beta programs exist for this device, dispalying beta update row", buf, 2u);
      }

      v17 = +[NSBundle mainBundle];
      v18 = [v17 localizedStringForKey:@"BETA_UPDATES" value:&stru_10026E598 table:@"Software Update"];
      v7 = BPSRemoteUISetupStyle_ptr;
      v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:"enrolledBetaProgramString" detail:objc_opt_class() cell:2 edit:0];

      [v19 setIdentifier:@"BETA_WATCH_UPDATES_BUTTON_SPECIFIER"];
      [v6 addObject:v19];
    }

    else
    {
      v19 = pbb_setup_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Beta updates not supported on this watch, skipping", buf, 2u);
      }
    }

LABEL_13:
  }

  if (![(COSSoftwareUpdateController *)self shouldShowTableViewForState:a3])
  {
    [v6 addObject:self->_titleGroup];
    v20 = [v7[378] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    v52 = PSIDKey;
    [v20 setProperty:@"title" forKey:?];
    [v20 setProperty:self->_titleCell forKey:PSTableCellKey];
    [(COSSoftwareUpdateTitleCell *)self->_titleCell setSpecifier:v20];
    [v6 addObject:v20];
    v21 = [(SUBDescriptor *)self->_update documentation];
    v22 = [v21 releaseNotesSummary];
    v23 = [v22 length];

    if (v23)
    {
      v24 = [(SUBDescriptor *)self->_update documentation];
      v25 = [v24 releaseNotesSummary];
    }

    else
    {
      v25 = 0;
    }

    v26 = [(SUBDescriptor *)self->_update documentation];
    v27 = [v26 releaseNotes];
    v28 = [v27 length];

    if (v28)
    {
      v29 = [(SUBDescriptor *)self->_update documentation];
      v30 = [v29 releaseNotes];

      v31 = v30 == 0;
    }

    else
    {
      v31 = 1;
    }

    [(COSSoftwareUpdateTitleCell *)self->_titleCell setReleaseNotesSummary:v25];
    if (v25)
    {
      v32 = [(COSSoftwareUpdateTitleCell *)self->_titleCell releaseNotesSummaryView];
      v33 = [v32 webView];

      v51 = [v33 _browserView];
      v34 = BPSBridgeTintColor();
      [v34 styleString];
      v35 = self;
      v36 = v31;
      v37 = v20;
      v38 = v6;
      v39 = v25;
      v41 = v40 = v7;
      v42 = [NSString stringWithFormat:@"a:link {color: %@}\n", v41];;

      v7 = v40;
      v25 = v39;
      v6 = v38;
      v20 = v37;
      v31 = v36;
      self = v35;

      [v51 setUserStyleSheet:v42];
      v43 = [v33 stringByEvaluatingJavaScriptFromString:@"document.body.style.color='#FFFFFF';"];
    }

    if (!v31)
    {
      v44 = v7[378];
      v45 = [NSBundle bundleForClass:objc_opt_class()];
      v46 = [v45 localizedStringForKey:@"LEARN_MORE" value:&stru_10026E598 table:@"Software Update"];
      v47 = [v44 preferenceSpecifierNamed:v46 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
      [(COSSoftwareUpdateController *)self setLearnMoreSpecifier:v47];

      v48 = [(COSSoftwareUpdateController *)self learnMoreSpecifier];
      [v48 setProperty:@"DETAILED_RELEASE_NOTES_LINK" forKey:v52];

      v49 = [(COSSoftwareUpdateController *)self learnMoreSpecifier];
      [v6 addObject:v49];
    }

    [v6 addObject:self->_installButtonGroup];
    [v6 addObject:self->_installButtonSpecifier];
  }

  return v6;
}

- (BOOL)shouldShowExtraRows:(int64_t)a3
{
  if (self->_inSetupFlow || self->_userIsTryingToForceUpdate)
  {
    return 0;
  }

  v5 = [UIApp activeWatch];
  HasCapabilityForString = BPSDeviceHasCapabilityForString();
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v3 = HasCapabilityForString;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)automaticUpdateStatusString
{
  v3 = [NPSDomainAccessor alloc];
  v4 = [v3 initWithDomain:kBridgeDomain pairedDevice:self->_activeDevice];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 synchronize];
    v7 = sub_10002DEE4();
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (v7)
    {
      v10 = @"AUTOMATIC_UPDATES_ENABLED";
    }

    else
    {
      v10 = @"AUTOMATIC_UPDATES_DISABLED";
    }
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"AUTOMATIC_UPDATES_DISABLED";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_10026E598 table:@"Software Update"];

  return v11;
}

- (void)transitionToState:(int64_t)a3
{
  if (self->_inSetupFlow && self->_userIsTryingToForceUpdate && self->_noUpdateFoundOrIsComplete)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSNumber numberWithInteger:self->_subState];
      v7 = SUBStringForManagerState();
      v8 = [NSNumber numberWithInteger:a3];
      v9 = SUBStringForManagerState();
      *buf = 138413058;
      v93 = v6;
      v94 = 2112;
      v95 = v7;
      v96 = 2112;
      v97 = v8;
      v98 = 2112;
      v99 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_subState (%@/%@) -> subState (%@/%@)", buf, 0x2Au);
    }

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"COSSoftwareUpdateDidCompleteNotification" object:self userInfo:0];
  }

  if (!a3 || self->_subState != a3)
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = SUBStringForManagerState();
      v13 = SUBStringForManagerState();
      *buf = 134218498;
      v93 = self;
      v94 = 2112;
      v95 = v12;
      v96 = 2112;
      v97 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "self: (%p); Transitioning from (%@) to (%@)", buf, 0x20u);
    }

    subState = self->_subState;
    self->_subState = a3;
    betaPrograms = self->_betaPrograms;
    if (betaPrograms)
    {
      v15 = [(NSArray *)betaPrograms count]!= 0;
      v16 = self->_subState;
    }

    else
    {
      v15 = 0;
      v16 = a3;
    }

    if (subState != v16 && !(v15 | ![(COSSoftwareUpdateController *)self shouldShowExtraRows:?]))
    {
      v17 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
      v18 = [[NSUUID alloc] initWithUUIDString:@"F364B0F1-4FC0-461A-8B5B-93CF7E2BC79F"];
      v19 = [v17 supportsCapability:v18];

      if (v19)
      {
        v20 = pbb_bridge_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "loading beta programs info on state update", buf, 2u);
        }

        [(COSSoftwareUpdateController *)self loadBetaUpdates];
      }
    }

    if (self->_update)
    {
      v21 = [(COSSoftwareUpdateTitleCell *)self->_titleCell detailTextLabel];
      v22 = [(SUBDescriptor *)self->_update publisher];
      [v21 setText:v22];

      v23 = sub_10011FE6C(self->_activeDevice, self->_update);
      [(COSSoftwareUpdateTitleCell *)self->_titleCell setUpdateName:v23];
    }

    [(COSSoftwareUpdateTitleCell *)self->_titleCell setAnimatingGearView:self->_subState == 4];
    [(COSSoftwareUpdateTitleCell *)self->_titleCell setStatusMessage:0];
    if ([(SUBDescriptor *)self->_update userInstallRequestType]== 3 || [(SUBDescriptor *)self->_update userInstallRequestType]== 2)
    {
      installButtonGroup = self->_installButtonGroup;
      v25 = +[NSBundle mainBundle];
      v26 = [v25 localizedStringForKey:@"INSTALL_BUTTON_FOOTER_AUTO_UPDATE" value:&stru_10026E598 table:@"Software Update"];
      v27 = PSFooterTextGroupKey;
      [(PSSpecifier *)installButtonGroup setProperty:v26 forKey:PSFooterTextGroupKey];
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v28 = [(SUBDescriptor *)self->_update updatePowerPolicy];
        if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v29 = [(COSSoftwareUpdateController *)self extractValueFromDict:v28 key:SUBErrorUserInfoChargerRequiredForApply expectedClass:objc_opt_class()];
          v30 = v29;
          if (v29 && [v29 BOOLValue])
          {
            v31 = pbb_bridge_log();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Descriptor supports power policy and charger is required for apply. Using legacy string for install button footer", buf, 2u);
            }

            v32 = +[NSBundle mainBundle];
            v33 = SFLocalizableWAPIStringKeyForKey();
            v84 = [v32 localizedStringForKey:v33 value:&stru_10026E598 table:@"Software Update"];
            v25 = [NSString stringWithFormat:@"%@", v84];
          }

          else
          {
            v36 = pbb_bridge_log();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Descriptor supports power policy and charger is *not* required for apply. Using new string for install button footer", buf, 2u);
            }

            v32 = [(COSSoftwareUpdateController *)self extractValueFromDict:v28 key:SUBErrorUserInfoMinNeededBatteryLevelWithoutChargerForApply expectedClass:objc_opt_class()];
            v33 = [(COSSoftwareUpdateController *)self extractValueFromDict:v28 key:SUBErrorUserInfoMinNeededBatteryLevelWithChargerForApply expectedClass:objc_opt_class()];
            v85 = +[NSBundle mainBundle];
            v83 = SFLocalizableWAPIStringKeyForKey();
            v82 = [v85 localizedStringForKey:v83 value:&stru_10026E598 table:@"Software Update"];
            if (v32)
            {
              v37 = [v32 intValue];
            }

            else
            {
              v37 = kMinBatteryLevelForApplyPhaseWithoutCharger;
            }

            if (v33)
            {
              v38 = [v33 intValue];
            }

            else
            {
              v38 = kMinBatteryLevelForApplyPhase;
            }

            v39 = [NSString stringWithFormat:v82, v37, v38];
            v25 = [NSString stringWithFormat:@"%@", v39];
          }
        }

        else
        {
          v35 = pbb_bridge_log();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Descriptor supports power policy but power policy is not set. Using legacy string for install button footer", buf, 2u);
          }

          v30 = +[NSBundle mainBundle];
          v32 = SFLocalizableWAPIStringKeyForKey();
          v33 = [v30 localizedStringForKey:v32 value:&stru_10026E598 table:@"Software Update"];
          v25 = [NSString stringWithFormat:@"%@", v33];
        }
      }

      else
      {
        v34 = pbb_bridge_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Descriptor does not support power policy. Using legacy string for install button footer", buf, 2u);
        }

        v28 = +[NSBundle mainBundle];
        v30 = SFLocalizableWAPIStringKeyForKey();
        v32 = [v28 localizedStringForKey:v30 value:&stru_10026E598 table:@"Software Update"];
        v25 = [NSString stringWithFormat:@"%@", v32];
      }

      v27 = PSFooterTextGroupKey;
      [(PSSpecifier *)self->_installButtonGroup setProperty:v25 forKey:PSFooterTextGroupKey];
    }

    if (a3 == 4)
    {
      [(COSSoftwareUpdateController *)self cancelHidingProgressBarAfterDelay];
      if (!self->_download)
      {
        v40 = [(COSSoftwareUpdateController *)self titleCell];
        [v40 setProgressDisplayStyle:1];
      }
    }

    else
    {
      [(COSSoftwareUpdateController *)self hideProgressBarAfterDelay];
      if (a3 > 6)
      {
        if ((a3 - 7) < 2)
        {
          titleCell = self->_titleCell;
          v66 = +[NSBundle mainBundle];
          v67 = [v66 localizedStringForKey:@"WAITING_TO_INSTALL" value:&stru_10026E598 table:@"Software Update"];
          [(COSSoftwareUpdateTitleCell *)titleCell setStatusMessage:v67];

          installButtonSpecifier = self->_installButtonSpecifier;
          v69 = +[NSBundle mainBundle];
          v70 = [v69 localizedStringForKey:@"INSTALL" value:&stru_10026E598 table:@"Software Update"];
          [(PSSpecifier *)installButtonSpecifier setName:v70];

          [(PSSpecifier *)self->_installButtonSpecifier setButtonAction:"install:"];
          [(COSSoftwareUpdateController *)self presentDuetAlertIfNecessary];
        }

        else if (a3 == 9)
        {
          v76 = self->_titleCell;
          v77 = +[NSBundle mainBundle];
          v78 = [v77 localizedStringForKey:@"VERIFYING" value:&stru_10026E598 table:@"Software Update"];
          [(COSSoftwareUpdateTitleCell *)v76 setStatusMessage:v78];

          v79 = self->_installButtonSpecifier;
          v80 = +[NSBundle mainBundle];
          v81 = [v80 localizedStringForKey:@"VERIFYING" value:&stru_10026E598 table:@"Software Update"];
          [(PSSpecifier *)v79 setName:v81];

          [(PSSpecifier *)self->_installButtonGroup removePropertyForKey:v27];
        }

        else if (a3 == 10)
        {
          v41 = self->_titleCell;
          v42 = +[NSBundle mainBundle];
          v43 = [v42 localizedStringForKey:@"INSTALLING" value:&stru_10026E598 table:@"Software Update"];
          [(COSSoftwareUpdateTitleCell *)v41 setStatusMessage:v43];

          v44 = self->_installButtonSpecifier;
          v45 = +[NSBundle mainBundle];
          v46 = [v45 localizedStringForKey:@"INSTALLING" value:&stru_10026E598 table:@"Software Update"];
          [(PSSpecifier *)v44 setName:v46];

          v47 = self->_installButtonGroup;
          v48 = +[NSBundle mainBundle];
          v49 = [v48 localizedStringForKey:@"INSTALLING_FOOTER" value:&stru_10026E598 table:@"Software Update"];
          [(PSSpecifier *)v47 setProperty:v49 forKey:v27];
        }

        goto LABEL_67;
      }

      if (a3 == 3)
      {
        v71 = self->_titleCell;
        [(SUBDescriptor *)self->_update downloadSize];
        v72 = CPFSSizeStrings();
        [(COSSoftwareUpdateTitleCell *)v71 setStatusMessage:v72];

        v73 = self->_installButtonSpecifier;
        v74 = +[NSBundle mainBundle];
        v75 = [v74 localizedStringForKey:@"DOWNLOAD_AND_INSTALL" value:&stru_10026E598 table:@"Software Update"];
        [(PSSpecifier *)v73 setName:v75];

        [(PSSpecifier *)self->_installButtonSpecifier setButtonAction:"downloadAndInstall:"];
        goto LABEL_67;
      }

      if (a3 != 5)
      {
        if (a3 == 6)
        {
          v50 = self->_titleCell;
          [(SUBDescriptor *)self->_update downloadSize];
          v51 = CPFSSizeStrings();
          [(COSSoftwareUpdateTitleCell *)v50 setStatusMessage:v51];

          v52 = @"INSTALL_NOW";
          if ([(SUBDescriptor *)self->_update userInstallRequestType]!= 2 && [(SUBDescriptor *)self->_update userInstallRequestType]!= 3)
          {
            v52 = @"INSTALL";
          }

          v53 = self->_installButtonSpecifier;
          v54 = +[NSBundle mainBundle];
          v55 = [v54 localizedStringForKey:v52 value:&stru_10026E598 table:@"Software Update"];
          [(PSSpecifier *)v53 setName:v55];

          [(PSSpecifier *)self->_installButtonSpecifier setButtonAction:"install:"];
        }

        goto LABEL_67;
      }
    }

    v56 = self->_titleCell;
    [(SUBDescriptor *)self->_update downloadSize];
    v57 = CPFSSizeStrings();
    [(COSSoftwareUpdateTitleCell *)v56 setStatusMessage:v57];

    v58 = self->_installButtonSpecifier;
    v59 = +[NSBundle mainBundle];
    v60 = [v59 localizedStringForKey:@"DOWNLOADING" value:&stru_10026E598 table:@"Software Update"];
    [(PSSpecifier *)v58 setName:v60];

LABEL_67:
    [(COSSoftwareUpdateController *)self resetInstallButtonEnabledStateAndReloadSpecifier:0];
    v61 = [(COSSoftwareUpdateController *)self shouldShowTableViewForState:subState];
    v62 = [(COSSoftwareUpdateController *)self shouldShowTableViewForState:self->_subState];
    v63 = v62;
    v64 = v61 != v62 || self->_subState == 1 && (subState & 0xFFFFFFFFFFFFFFFDLL) == 0;
    objc_initWeak(buf, self);
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_100122F10;
    v87[3] = &unk_10026C728;
    v89 = v61;
    v90 = v63;
    v88[1] = a3;
    objc_copyWeak(v88, buf);
    v91 = v64;
    [(COSSoftwareUpdateController *)self updateTableViewWithTask:v87];
    objc_destroyWeak(v88);
    objc_destroyWeak(buf);
  }
}

- (void)updateTableViewWithTask:(id)a3
{
  v5 = a3;
  v4 = OBJC_IVAR___PSListController__table;
  [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__table] beginUpdates];
  v5[2]();
  [*&self->BPSListController_opaque[v4] endUpdates];
}

- (void)hideProgressBarAfterDelay
{
  if (!self->_hidingProgressBarSource)
  {
    objc_initWeak(&location, self);
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    hidingProgressBarSource = self->_hidingProgressBarSource;
    self->_hidingProgressBarSource = v3;

    v5 = self->_hidingProgressBarSource;
    if (v5)
    {
      v6 = dispatch_time(0, 500000000);
      dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
      v7 = self->_hidingProgressBarSource;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100123328;
      v8[3] = &unk_100268430;
      objc_copyWeak(&v9, &location);
      dispatch_source_set_event_handler(v7, v8);
      dispatch_resume(self->_hidingProgressBarSource);
      objc_destroyWeak(&v9);
    }

    objc_destroyWeak(&location);
  }
}

- (void)cancelHidingProgressBarAfterDelay
{
  hidingProgressBarSource = self->_hidingProgressBarSource;
  if (hidingProgressBarSource)
  {
    dispatch_source_cancel(hidingProgressBarSource);
    v4 = self->_hidingProgressBarSource;
    self->_hidingProgressBarSource = 0;
  }
}

- (void)resetInstallButtonEnabledStateAndReloadSpecifier:(BOOL)a3
{
  v3 = a3;
  v5 = (self->_subState < 9uLL) & (0x1C8u >> self->_subState);
  installButtonSpecifier = self->_installButtonSpecifier;
  v7 = [NSNumber numberWithBool:v5];
  [(PSSpecifier *)installButtonSpecifier setProperty:v7 forKey:PSEnabledKey];

  if (v5 == 1)
  {
    [(COSSoftwareUpdateController *)self displayInstallButtonSpinner:0 reloadSpecifier:0];
  }

  if (v3)
  {
    v8 = self->_installButtonSpecifier;

    [(COSSoftwareUpdateController *)self reloadSpecifier:v8];
  }
}

- (void)displayInstallButtonSpinner:(BOOL)a3 reloadSpecifier:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8 = [(PSSpecifier *)self->_installButtonSpecifier propertyForKey:PSTableCellKey];
  if (v5)
  {
    v7 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v7 startAnimating];
  }

  else
  {
    v7 = 0;
  }

  [v8 setAccessoryView:v7];
  if (v4)
  {
    [(COSSoftwareUpdateController *)self reloadSpecifier:self->_installButtonSpecifier];
  }
}

- (void)downloadAndInstall:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User pressed Download and Install", v5, 2u);
  }

  objc_storeStrong(&self->_updateAgreedTo, self->_update);
  [(COSSoftwareUpdateController *)self presentTermsRequiringPasscode:1 ifNecessaryWithAcceptanceAction:"downloadTermsAccepted"];
}

- (void)presentTermsRequiringPasscode:(BOOL)a3 ifNecessaryWithAcceptanceAction:(SEL)a4 withDescriptor:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = pbb_setup_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "present Terms", buf, 2u);
  }

  objc_initWeak(buf, self);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001238D4;
  v27[3] = &unk_10026C750;
  objc_copyWeak(&v28, buf);
  v27[4] = self;
  v10 = objc_retainBlock(v27);
  (v10[2])(v10, 0, 1);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10012397C;
  v24[3] = &unk_10026C778;
  v11 = v10;
  v24[4] = self;
  v25 = v11;
  v26 = a4;
  v12 = objc_retainBlock(v24);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001239CC;
  v18[3] = &unk_10026C7A0;
  v13 = v8;
  v19 = v13;
  objc_copyWeak(v23, buf);
  v14 = v11;
  v21 = v14;
  v15 = v12;
  v23[1] = a4;
  v22 = v15;
  v20 = self;
  v16 = objc_retainBlock(v18);
  v17 = v16;
  if (v6)
  {
    [(COSSoftwareUpdateController *)self presentPasscodePromptIfNecessaryWithHandler:v16];
  }

  else
  {
    (v16[2])(v16, 1);
  }

  objc_destroyWeak(v23);
  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
}

- (void)presentPasscodePromptIfNecessaryWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v5 isPasscodeSet];

  if ((v6 & 1) != 0 && (-[NRDevice valueForProperty:](self->_activeDevice, "valueForProperty:", NRDevicePropertyIsAltAccount), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 BOOLValue], v7, !v8))
  {
    v9 = pbb_bridge_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Checking auto-unlock", buf, 2u);
    }

    v10 = +[SFUnlockManager sharedUnlockManager];
    v11 = IDSDefaultPairedDevice;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001244E4;
    v12[3] = &unk_10026C7F0;
    v12[4] = self;
    v13 = v4;
    [v10 unlockStateForDevice:v11 completionHandler:v12];
  }

  else
  {
    (*(v4 + 2))(v4, 1);
  }
}

- (void)presentPasscodePromptWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(COSSoftwareUpdateController *)self presentiPhoneMirrorErrorIfNecessary])
  {
    v4[2](v4, 0);
  }

  else
  {
    self->_didEnterDevicePasscode = 0;
    objc_initWeak(&location, self);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100124A04;
    v17[3] = &unk_100268DE0;
    objc_copyWeak(&v19, &location);
    v18 = v4;
    v5 = objc_retainBlock(v17);
    devicePasscodeCompletion = self->_devicePasscodeCompletion;
    self->_devicePasscodeCompletion = v5;

    installButtonSpecifier = self->_installButtonSpecifier;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(PSSpecifier *)installButtonSpecifier setProperty:v9 forKey:PSSetupCustomClassKey];

    [(PSSpecifier *)self->_installButtonSpecifier setEditPaneClass:objc_opt_class()];
    [(PSSpecifier *)self->_installButtonSpecifier setProperty:&off_100281E10 forKey:@"mode"];
    [(COSSoftwareUpdateController *)self showPINSheet:self->_installButtonSpecifier];
    v10 = +[UIApplication sharedApplication];
    v11 = [v10 windows];
    v12 = [v11 firstObject];
    v13 = [v12 rootViewController];

    v14 = [v13 presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
      v16 = [v15 navigationBar];
      BPSApplyStyleToNavBar();
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)_termsAgree
{
  v3 = objc_alloc_init(NRTermsAcknowledgementRegistry);
  [(NRTermsEvent *)self->_terms setEventType:4];
  [(NRTermsEvent *)self->_terms updateEventDate];
  [v3 add:self->_terms forDeviceID:self->_termsDeviceID withCompletion:&stru_10026C810];
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100124C1C;
  block[3] = &unk_100268458;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_termsDisagree
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User chose: Disagree", v8, 2u);
  }

  self->_termsAcceptanceAction = 0;
  [(COSSoftwareUpdateController *)self resetInstallButtonEnabledStateAndReloadSpecifier:1];
  termsDisplayController = self->_termsDisplayController;
  if (termsDisplayController)
  {
    [(UIViewController *)termsDisplayController dismissViewControllerAnimated:1 completion:0];
    [(COSSoftwareUpdateController *)self dismissViewControllerAnimated:1 completion:0];
    subManager = self->_subManager;
    self->_subManager = 0;
  }

  else if (self->_presentedModally && self->_showingTermsRequestedByWatch)
  {
    [(COSSoftwareUpdateController *)self dismissViewControllerAnimated:0 completion:0];
    [(UINavigationController *)self->_modalController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    [(COSSoftwareUpdateController *)self dismissViewControllerAnimated:1 completion:0];
    v6 = [(COSSoftwareUpdateController *)self navigationController];
    v7 = [v6 popViewControllerAnimated:1];
  }

  self->_showingTermsRequestedByWatch = 0;
}

- (void)downloadTermsAccepted
{
  if (self->_inSetupFlow)
  {
    v3 = [UIApp setupController];
    v4 = [v3 pairingReportManager];

    [v4 addPairingTimeEventToPairingReportPlist:58 withValue:&__kCFBooleanTrue withError:0];
  }

  if (self->_showingTermsRequestedByWatch)
  {

    [(COSSoftwareUpdateController *)self downloadTermsAcceptedForInstallTonight];
  }

  else
  {

    [(COSSoftwareUpdateController *)self downloadTermsAcceptedForLegacyFlow];
  }
}

- (BOOL)downloadTermsAcceptedForInstallTonight
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = SUBStringForManagerState();
    v16 = 134218242;
    v17 = self;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "self: (%p); subState: (%@)", &v16, 0x16u);
  }

  v5 = self->_updateAgreedTo;
  updateAgreedTo = self->_updateAgreedTo;
  self->_updateAgreedTo = 0;

  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Remove cloud descriptor: %@", &v16, 0xCu);
  }

  [(SUBManager *)self->_subManager removeCloudDescriptor:v5];
  if (self->_termsFromCloudDevice)
  {
    if ([(NSMutableArray *)self->_cloudDescriptors count]&& (!self->_presentedModally || self->_launchedForTerms))
    {
      subManager = [(NSMutableArray *)self->_cloudDescriptors lastObject];
      [(NSMutableArray *)self->_cloudDescriptors removeLastObject];
      [(COSSoftwareUpdateController *)self presentTermsRequiringPasscode:0 ifNecessaryWithAcceptanceAction:"downloadTermsAccepted" withDescriptor:subManager];
    }

    else
    {
      termsDisplayController = self->_termsDisplayController;
      if (termsDisplayController)
      {
        [(UIViewController *)termsDisplayController dismissViewControllerAnimated:1 completion:0];
        subManager = self->_subManager;
        self->_subManager = 0;
      }

      else
      {
        subManager = [(COSSoftwareUpdateController *)self navigationController];
        v10 = [subManager popViewControllerAnimated:1];
      }
    }
  }

  update = self->_update;
  if (!update)
  {
    v13 = pbb_bridge_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v14 = "Update was nil after user agreed to terms and conditions";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v16, 2u);
    }

LABEL_24:

    v12 = 0;
    goto LABEL_25;
  }

  if (([(SUBDescriptor *)update isEqual:v5]& 1) == 0)
  {
    v13 = pbb_bridge_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v14 = "Update was different from the update the user agreed to";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  [(SUBManager *)self->_subManager userDidAcceptTermsAndConditionsForUpdate:self->_update];
  [(PSSpecifier *)self->_installButtonSpecifier setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  v12 = 1;
  [(COSSoftwareUpdateController *)self displayInstallButtonSpinner:0 reloadSpecifier:1];
  if (self->_presentedModally && self->_showingTermsRequestedByWatch)
  {
    [(COSSoftwareUpdateController *)self dismissViewControllerAnimated:0 completion:0];
    [(UINavigationController *)self->_modalController dismissViewControllerAnimated:1 completion:0];
    self->_showingTermsRequestedByWatch = 0;
  }

LABEL_25:

  return v12;
}

- (void)downloadTermsAcceptedForLegacyFlow
{
  if ([(COSSoftwareUpdateController *)self downloadTermsAcceptedForInstallTonight])
  {
    [(SUBManager *)self->_subManager startDownload:self->_update];
    [(COSSoftwareUpdateTitleCell *)self->_titleCell setProgress:0.0];

    [(COSSoftwareUpdateController *)self transitionToState:4];
  }
}

- (void)scanForUpdatesInBackgound:(BOOL)a3
{
  v3 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = SUBStringForManagerState();
    v11 = 134218498;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    v15 = 1024;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: (%p); subState: (%@); backgroundScan: (%d)", &v11, 0x1Cu);
  }

  if (!v3)
  {
    update = self->_update;
    self->_update = 0;

    download = self->_download;
    self->_download = 0;

    [(COSSoftwareUpdateController *)self transitionToState:2];
  }

  if (self->_isExpectingScanResult)
  {
    v9 = pbb_bridge_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not Scanning because already waiting for result", &v11, 2u);
    }
  }

  else
  {
    v10 = +[NRPairedDeviceRegistry sharedInstance];
    [v10 userIsCheckingForUpdate];

    self->_isExpectingScanResult = 1;
    [(SUBManager *)self->_subManager scanForUpdates];
  }
}

- (void)presentDuetAlertIfNecessary
{
  v3 = [(SUBDescriptor *)self->_update denialReasons];
  if (v3)
  {
    v13 = v3;
    v4 = [v3 domain];
    if ([v4 isEqualToString:SUBErrorDomain])
    {
      v5 = [v13 code];

      if (v5 == 18)
      {
        v6 = [v13 userInfo];
        v7 = [v6 objectForKeyedSubscript:SUBErrorUserInfoDenialReasons];

        v8 = [v7 unsignedLongLongValue];
        v9 = [v13 userInfo];
        [(COSSoftwareUpdateController *)self presentAlertForDuetDenialCondition:v8 denialReasons:v9];

LABEL_8:
        v3 = v13;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10 = [v13 domain];
    v11 = [v10 isEqualToString:SUBDuetDenialDomain];

    v3 = v13;
    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = [v13 code];
    v7 = [v13 userInfo];
    [(COSSoftwareUpdateController *)self presentAlertForDuetDenialCondition:v12 denialReasons:v7];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)install:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User pressed Install", v6, 2u);
  }

  [(COSSoftwareUpdateController *)self presentDuetAlertIfNecessary];
  v5 = [(SUBDescriptor *)self->_update denialReasons];

  if (!v5)
  {
    [(COSSoftwareUpdateController *)self presentTermsRequiringPasscode:1 ifNecessaryWithAcceptanceAction:"_reallyInstall"];
  }
}

- (void)_reallyInstall
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = SUBStringForManagerState();
    v5 = 134218242;
    v6 = self;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "self: (%p); subState: %@", &v5, 0x16u);
  }

  [(SUBManager *)self->_subManager userDidAcceptTermsAndConditionsForUpdate:self->_update];
  [(SUBManager *)self->_subManager installUpdate:self->_update];
  [(COSSoftwareUpdateController *)self transitionToState:9];
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(COSSoftwareUpdateController *)self navigationController];
  v11 = [v10 topViewController];

  if (v11 == self)
  {
    [v8 setModalPresentationStyle:0];
    v12.receiver = self;
    v12.super_class = COSSoftwareUpdateController;
    [(COSSoftwareUpdateController *)&v12 presentViewController:v8 animated:v6 completion:v9];
  }
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = COSSoftwareUpdateController;
  [(COSSoftwareUpdateController *)&v11 loadView];
  [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__table] _setMarginWidth:15.0];
  v3 = [(COSSoftwareUpdateTitleCell *)self->_titleCell textLabel];
  v4 = BPSTextColor();
  [v3 setTextColor:v4];

  v5 = [(COSSoftwareUpdateTitleCell *)self->_titleCell detailTextLabel];
  v6 = BPSTextColor();
  [v5 setTextColor:v6];

  v7 = [(COSSoftwareUpdateTitleCell *)self->_titleCell updateStatusLabel];
  v8 = BPSTextColor();
  [v7 setTextColor:v8];

  v9 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:13 edit:0];
  installButtonSpecifier = self->_installButtonSpecifier;
  self->_installButtonSpecifier = v9;

  [(COSSoftwareUpdateController *)self displayRevLockBootProgressIndicatorIfNeeded];
}

- (void)viewDidLoad
{
  if (!self->_termsDisplayController)
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No terms controller, enabling notifications", buf, 2u);
    }

    [(COSSoftwareUpdateController *)self enableNotifications];
  }

  v7.receiver = self;
  v7.super_class = COSSoftwareUpdateController;
  [(COSSoftwareUpdateController *)&v7 viewDidLoad];
  [(COSSoftwareUpdateController *)self startCallingIntoSUB];
  if ([(COSSoftwareUpdateController *)self shouldShowExtraRows:self->_subState])
  {
    v4 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
    v5 = [[NSUUID alloc] initWithUUIDString:@"F364B0F1-4FC0-461A-8B5B-93CF7E2BC79F"];
    v6 = [v4 supportsCapability:v5];

    if (v6)
    {
      [(COSSoftwareUpdateController *)self loadBetaUpdates];
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = COSSoftwareUpdateController;
  [(COSSoftwareUpdateController *)&v16 viewWillAppear:a3];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 bundleURL];

  v6 = [_NSLocalizedStringResource alloc];
  v7 = +[NSLocale currentLocale];
  v8 = [v6 initWithKey:@"SOFTWARE_UPDATE" table:@"General" locale:v7 bundleURL:v5];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [v9 initWithKey:@"GENERAL" table:@"Settings" locale:v10 bundleURL:v5];

  v17 = v11;
  v12 = [NSArray arrayWithObjects:&v17 count:1];
  v13 = [NSURL URLWithString:@"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK"];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"GENERAL_LINK" title:v8 localizedNavigationComponents:v12 deepLink:v13];

  [(COSSoftwareUpdateTitleCell *)self->_titleCell setAnimatingGearView:self->_subState == 4];
  v14 = [(COSSoftwareUpdateController *)self specifierForID:@"AUTOMATIC_WATCH_UPDATES_BUTTON_SPECIFIER"];
  if (v14)
  {
    [(COSSoftwareUpdateController *)self reloadSpecifier:v14];
  }

  v15 = [(COSSoftwareUpdateController *)self specifierForID:@"BETA_WATCH_UPDATES_BUTTON_SPECIFIER"];
  if (v15)
  {
    [(COSSoftwareUpdateController *)self reloadSpecifier:v15];
    if ([(COSSoftwareUpdateController *)self betaUpdatesChanged])
    {
      [(COSSoftwareUpdateController *)self scanForUpdatesInBackgound:0];
      [(COSSoftwareUpdateController *)self setBetaUpdatesChanged:0];
    }
  }
}

- (void)willEnterForeground
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[COSSoftwareUpdateController willEnterForeground]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  if ([(COSSoftwareUpdateController *)self shouldShowExtraRows:self->_subState])
  {
    v4 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
    v5 = [[NSUUID alloc] initWithUUIDString:@"F364B0F1-4FC0-461A-8B5B-93CF7E2BC79F"];
    v6 = [v4 supportsCapability:v5];

    if (v6)
    {
      [(COSSoftwareUpdateController *)self loadBetaUpdates];
    }
  }

  self->_isExpectingScanResult = 0;
  if (!self->_isDisplayingRevLockBootProgressIndicator && self->_subState == 1 && !self->_hasUpdatedSuccessfully)
  {
    [(COSSoftwareUpdateController *)self scanForUpdatesInBackgound:0];
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v4 = [(COSSoftwareUpdateController *)self specifiersForState:self->_subState];
    v5 = *&self->BPSListController_opaque[v3];
    *&self->BPSListController_opaque[v3] = v4;
  }

  v6 = [(COSSoftwareUpdateController *)self navigationItem];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SOFTWARE_UPDATE" value:&stru_10026E598 table:@"Software Update"];
  [v6 setTitle:v8];

  if (self->_presentedModally)
  {
    v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:self->_unpairOnExit target:self action:"cancelUpdatePressed"];
    v10 = [(COSSoftwareUpdateController *)self navigationItem];
    [v10 setLeftBarButtonItem:v9];
  }

  v11 = *&self->BPSListController_opaque[v3];

  return v11;
}

- (id)_customViewForSpecifier:(id)a3 class:(Class)a4 isHeader:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [[a4 alloc] initWithSpecifier:v7];
  v9 = &PSHeaderViewKey;
  if (!v5)
  {
    v9 = &PSFooterViewKey;
  }

  [v7 setProperty:v8 forKey:*v9];

  [v8 setAlpha:1.0];

  return v8;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COSSoftwareUpdateController *)self specifierAtIndex:[(COSSoftwareUpdateController *)self indexForIndexPath:v7]];
  v9 = [(COSSoftwareUpdateController *)self specifierForID:@"title"];
  if (v8 != v9)
  {

LABEL_3:
    v23.receiver = self;
    v23.super_class = COSSoftwareUpdateController;
    [(COSSoftwareUpdateController *)&v23 tableView:v6 heightForRowAtIndexPath:v7];
    v11 = v10;
    goto LABEL_11;
  }

  titleCell = self->_titleCell;

  if (!titleCell)
  {
    goto LABEL_3;
  }

  v13 = [(COSSoftwareUpdateController *)self learnMoreSpecifier];

  if (v13)
  {
    v14 = [(COSSoftwareUpdateController *)self learnMoreSpecifier];
    v15 = [(COSSoftwareUpdateController *)self indexPathForSpecifier:v14];

    v16 = [v6 cellForRowAtIndexPath:v15];
    v17 = v16;
    if (v16)
    {
      [v16 frame];
      [(COSSoftwareUpdateController *)self setLearnMoreBuffer:v18];
    }
  }

  else
  {
    [(COSSoftwareUpdateController *)self setLearnMoreBuffer:0.0];
  }

  [(COSSoftwareUpdateTitleCell *)self->_titleCell preferredHeightWithTable:v6];
  v20 = v19;
  [(COSSoftwareUpdateController *)self learnMoreBuffer];
  v11 = v20 + v21;
LABEL_11:

  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COSSoftwareUpdateController *)self specifierAtIndex:[(COSSoftwareUpdateController *)self indexForIndexPath:v7]];
  v9 = [(COSSoftwareUpdateController *)self specifierForID:@"title"];

  if (v8 == v9)
  {
    v10 = self->_titleCell;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = COSSoftwareUpdateController;
    v10 = [(COSSoftwareUpdateController *)&v13 tableView:v6 cellForRowAtIndexPath:v7];
  }

  v11 = v10;

  return v11;
}

- (id)selectSpecifier:(id)a3
{
  v13.receiver = self;
  v13.super_class = COSSoftwareUpdateController;
  v4 = a3;
  v5 = [(COSSoftwareUpdateController *)&v13 selectSpecifier:v4];
  v6 = [v4 propertyForKey:{PSIDKey, v13.receiver, v13.super_class}];

  LODWORD(v4) = [v6 isEqualToString:@"DETAILED_RELEASE_NOTES_LINK"];
  if (v4)
  {
    v7 = v5;
    v8 = [NSString alloc];
    v9 = [(SUBDescriptor *)self->_update documentation];
    v10 = [v9 releaseNotes];
    v11 = [v8 initWithData:v10 encoding:4];
    [v7 setReleaseNotes:v11];
  }

  return v5;
}

- (void)devicePINControllerDidDismissPINPane:(id)a3
{
  devicePasscodeCompletion = self->_devicePasscodeCompletion;
  if (devicePasscodeCompletion)
  {
    devicePasscodeCompletion[2](devicePasscodeCompletion, self->_didEnterDevicePasscode, a3);
    v5 = self->_devicePasscodeCompletion;
    self->_devicePasscodeCompletion = 0;

    self->_didEnterDevicePasscode = 0;
  }
}

- (void)manager:(id)a3 userInstallRequestTypeDidChange:(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012656C;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)managerUserDidAcceptTermsAndConditionsForUpdate:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001265E8;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)manager:(id)a3 scanRequestDidLocateUpdate:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100126700;
  block[3] = &unk_10026B950;
  objc_copyWeak(&v18, &location);
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_manager:(id)a3 scanRequestDidLocateUpdate:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = SUBStringForManagerState();
    v29 = 134218754;
    *v30 = self;
    *&v30[8] = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = v7;
    v34 = 2112;
    v35 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "scanRequestDidLocateUpdate: self: (%p); subState: (%@); update: (%@); error: (%@)", &v29, 0x2Au);
  }

  if (self->_isDisplayingRevLockBootProgressIndicator)
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      v12 = "isDisplayingRevLockBootProgressIndicator, returning early";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &v29, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (self->_hasUpdatedSuccessfully)
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      v12 = "Ignoring callback as the update has succeeded";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  self->_isExpectingScanResult = 0;
  if (!(v7 | v8))
  {
    goto LABEL_15;
  }

  v13 = [v8 domain];
  v14 = SUBErrorDomain;
  if ([v13 isEqualToString:SUBErrorDomain])
  {
    v15 = [v8 code];

    if (v15 == 4)
    {
LABEL_15:
      v16 = pbb_bridge_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No update found.", &v29, 2u);
      }

      if (self->_inSetupFlow)
      {
        v17 = [UIApp setupController];
        v18 = [v17 pairingReportManager];

        [v18 addPairingTimeEventToPairingReportPlist:59 withValue:&__kCFBooleanTrue withError:0];
        scanRetries = self->_scanRetries;
        if (scanRetries > 2)
        {
          sub_10002E500(self->_activeDevice);
          [(COSSoftwareUpdateController *)self transitionToState:1];
        }

        else
        {
          self->_scanRetries = scanRetries + 1;
          v20 = pbb_bridge_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = self->_scanRetries;
            v29 = 67109376;
            *v30 = v21;
            *&v30[4] = 1024;
            *&v30[6] = 3;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No update found in setup flow, starting retry %d/%d", &v29, 0xEu);
          }

          [(COSSoftwareUpdateController *)self scanForUpdatesInBackgound:0];
        }
      }

      else
      {
        sub_10002E500(self->_activeDevice);
        [(COSSoftwareUpdateController *)self transitionToState:1];
      }

      self->_hasReceivedValidFirstScanResult = 1;
      self->_hasScannedSinceBeingForegrounded = 1;
      update = self->_update;
      self->_update = 0;

      download = self->_download;
      self->_download = 0;

      goto LABEL_11;
    }
  }

  else
  {
  }

  v22 = [v8 domain];
  if ([v22 isEqualToString:v14])
  {
    v23 = [v8 code];

    if (v23 == 34)
    {
      v24 = pbb_bridge_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Need to update phone.", &v29, 2u);
      }

      [(COSSoftwareUpdateController *)self presentAlertForUpdatingCompanion];
      goto LABEL_11;
    }
  }

  else
  {
  }

  if (v8 && [v8 code] != 21)
  {
    v28 = pbb_bridge_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Failed to find update.", &v29, 2u);
    }

    [(COSSoftwareUpdateController *)self handleScanError:v8];
  }

  else
  {
    if (self->_subState | 2) != 2 && ([v7 isEqual:self->_update])
    {
      v11 = pbb_bridge_log();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      LOWORD(v29) = 0;
      v12 = "SU fallthrough case.";
      goto LABEL_9;
    }

    v25 = pbb_bridge_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Received first scan result.", &v29, 2u);
    }

    self->_hasReceivedValidFirstScanResult = 1;
    self->_hasScannedSinceBeingForegrounded = 1;
    [(COSSoftwareUpdateController *)self queryManagerState];
  }

LABEL_11:
}

- (void)manager:(id)a3 didChangeProgressOnDownload:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100126DA8;
  v10[3] = &unk_1002684D0;
  objc_copyWeak(&v13, &location);
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_manager:(id)a3 didChangeProgressOnDownload:(id)a4
{
  v6 = a4;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = SUBStringForManagerState();
    *buf = 136315906;
    v61 = "[COSSoftwareUpdateController _manager:didChangeProgressOnDownload:]";
    v62 = 2048;
    v63 = self;
    v64 = 2112;
    v65 = v8;
    v66 = 2112;
    v67 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: self: (%p); subState: (%@); download: (%@)", buf, 0x2Au);
  }

  v9 = [v6 descriptor];
  v10 = [v6 progress];
  if (!self->_update || ([v9 isEqual:?] & 1) != 0)
  {
    if (self->_hasUpdatedSuccessfully)
    {
      v11 = pbb_bridge_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "Ignoring callback as the update has succeeded";
        v13 = v11;
        v14 = 2;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
        goto LABEL_59;
      }

      goto LABEL_59;
    }

    objc_storeStrong(&self->_update, v9);
    [(COSSoftwareUpdateController *)self _setupTitleCell];
    objc_storeStrong(&self->_download, a4);
    [v10 portionComplete];
    [(COSSoftwareUpdateTitleCell *)self->_titleCell setProgress:?];
    v11 = [v10 phase];
    v58 = v9;
    v59 = v10;
    if ([v11 isEqualToString:SUBPhaseDownloading])
    {
      [(COSSoftwareUpdateController *)self transitionToState:4];
      v15 = [(COSSoftwareUpdateController *)self titleCell];
      [v15 setProgressDisplayStyle:1];

      [v10 estimatedTimeRemaining];
      v17 = v16;
      if (v16 < 0.0)
      {
        v18 = +[NSDate distantFuture];
        [v18 timeIntervalSinceNow];
        v17 = v19;
      }

      if (v17 > 604800.0 || v17 <= 0.0)
      {
        v30 = [NSBundle bundleForClass:objc_opt_class()];
        v20 = [v30 localizedStringForKey:@"ESTIMATING_TIME_REMAINING" value:&stru_10026E598 table:@"Software Update"];
      }

      else
      {
        v20 = [(NSDateComponentsFormatter *)self->_durationFormatter stringFromTimeInterval:v17];
      }

      [(COSSoftwareUpdateTitleCell *)self->_titleCell setStatusMessage:v20];
      installButtonSpecifier = self->_installButtonSpecifier;
      v29 = +[NSBundle mainBundle];
      v32 = [v29 localizedStringForKey:@"DOWNLOADING" value:&stru_10026E598 table:@"Software Update"];
      [(PSSpecifier *)installButtonSpecifier setName:v32];
    }

    else
    {
      if (([v11 isEqualToString:SUBPhasePreparingUpdate]& 1) != 0 || [v11 isEqualToString:SUBPhaseWaitingForAdmissionControl])
      {
        [(COSSoftwareUpdateController *)self transitionToState:4];
        v22 = [(COSSoftwareUpdateController *)self titleCell];
        [v22 setProgressDisplayStyle:1];

        titleCell = self->_titleCell;
        v24 = +[NSBundle mainBundle];
        v25 = [v24 localizedStringForKey:@"PREPARING" value:&stru_10026E598 table:@"Software Update"];
        [(COSSoftwareUpdateTitleCell *)titleCell setStatusMessage:v25];

        v26 = self->_installButtonSpecifier;
        v27 = +[NSBundle mainBundle];
        v20 = v27;
        v28 = @"PREPARING";
      }

      else
      {
        if (![v11 isEqualToString:SUBPhaseStalled])
        {
LABEL_24:
          if ([v11 isEqualToString:SUBPhaseStalled])
          {
            v33 = +[NSBundle mainBundle];
            v34 = SFLocalizableWAPIStringKeyForKey();
            v35 = [v33 localizedStringForKey:v34 value:&stru_10026E598 table:@"Software Update"];

            if (!MGGetBoolAnswer())
            {
LABEL_58:
              v9 = v58;
              [(PSSpecifier *)self->_installButtonGroup setProperty:v35 forKey:PSFooterTextGroupKey];
              [(COSSoftwareUpdateController *)self reloadSpecifier:self->_installButtonGroup];

              goto LABEL_59;
            }

            if (objc_opt_respondsToSelector())
            {
              v36 = [v10 taskID];
            }

            else
            {
              v36 = @"Unknown";
            }

            v41 = [NSString stringWithFormat:@"%@ \n[Internal Only]: Download task(%@) is stalled and will automatically resume once underlying conditions are resolved. Please confirm phone is on WiFi and VPN.", v35, v36];
          }

          else if (objc_opt_respondsToSelector())
          {
            v36 = [(SUBDescriptor *)self->_update updatePowerPolicy];
            if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v37 = [(COSSoftwareUpdateController *)self extractValueFromDict:v36 key:SUBErrorUserInfoChargerRequiredForApply expectedClass:objc_opt_class()];
              v35 = v37;
              if (v37 && [v37 BOOLValue])
              {
                v38 = pbb_bridge_log();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Descriptor supports power policy and charger is required for apply. Using legacy string for install button footer", buf, 2u);
                }

                v39 = +[NSBundle mainBundle];
                v40 = SFLocalizableWAPIStringKeyForKey();
                v56 = [v39 localizedStringForKey:v40 value:&stru_10026E598 table:@"Software Update"];
                v41 = [NSString stringWithFormat:@"%@", v56];
              }

              else
              {
                v49 = pbb_bridge_log();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Descriptor supports power policy and charger is *not* required for apply. Using new string for install button footer", buf, 2u);
                }

                v39 = [(COSSoftwareUpdateController *)self extractValueFromDict:v36 key:SUBErrorUserInfoMinNeededBatteryLevelWithoutChargerForApply expectedClass:objc_opt_class()];
                v40 = [(COSSoftwareUpdateController *)self extractValueFromDict:v36 key:SUBErrorUserInfoMinNeededBatteryLevelWithChargerForApply expectedClass:objc_opt_class()];
                v50 = +[NSBundle mainBundle];
                v55 = SFLocalizableWAPIStringKeyForKey();
                v57 = v50;
                v51 = [v50 localizedStringForKey:? value:? table:?];
                if (v39)
                {
                  v52 = [v39 intValue];
                }

                else
                {
                  v52 = kMinBatteryLevelForApplyPhaseWithoutCharger;
                }

                if (v40)
                {
                  v53 = [v40 intValue];
                }

                else
                {
                  v53 = kMinBatteryLevelForApplyPhase;
                }

                v54 = [NSString stringWithFormat:v51, v52, v53];
                v41 = [NSString stringWithFormat:@"%@", v54];
              }
            }

            else
            {
              v44 = pbb_bridge_log();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Descriptor supports power policy but charger policy is not set. Using legacy string for install button footer", buf, 2u);
              }

              v35 = +[NSBundle mainBundle];
              v39 = SFLocalizableWAPIStringKeyForKey();
              v40 = [v35 localizedStringForKey:v39 value:&stru_10026E598 table:@"Software Update"];
              v41 = [NSString stringWithFormat:@"%@", v40];
            }

            v10 = v59;
          }

          else
          {
            v42 = pbb_bridge_log();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Descriptor does *not* support power policy. Using legacy string for install button footer", buf, 2u);
            }

            v36 = +[NSBundle mainBundle];
            v35 = SFLocalizableWAPIStringKeyForKey();
            v43 = [(__CFString *)v36 localizedStringForKey:v35 value:&stru_10026E598 table:@"Software Update"];
            v41 = [NSString stringWithFormat:@"%@", v43];
          }

          v35 = v41;
          goto LABEL_58;
        }

        [(COSSoftwareUpdateController *)self transitionToState:4];
        v45 = [(COSSoftwareUpdateController *)self titleCell];
        [v45 setProgressDisplayStyle:2];

        v46 = self->_titleCell;
        v47 = +[NSBundle mainBundle];
        v48 = [v47 localizedStringForKey:@"PAUSED" value:&stru_10026E598 table:@"Software Update"];
        [(COSSoftwareUpdateTitleCell *)v46 setStatusMessage:v48];

        v26 = self->_installButtonSpecifier;
        v27 = +[NSBundle mainBundle];
        v20 = v27;
        v28 = @"RESUME_DOWNLOADING";
      }

      v29 = [v27 localizedStringForKey:v28 value:&stru_10026E598 table:@"Software Update"];
      [(PSSpecifier *)v26 setName:v29];
    }

    v10 = v59;
    goto LABEL_24;
  }

  v11 = pbb_bridge_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    update = self->_update;
    *buf = 138412290;
    v61 = update;
    v12 = "Ignoring callback as we are tracking a different update: (%@)";
    v13 = v11;
    v14 = 12;
    goto LABEL_16;
  }

LABEL_59:
}

- (void)manager:(id)a3 didFailDownload:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001279E8;
  block[3] = &unk_10026B950;
  objc_copyWeak(&v18, &location);
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_manager:(id)a3 didFailDownload:(id)a4 withError:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = pbb_bridge_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = SUBStringForManagerState();
    v20 = 136316162;
    v21 = "[COSSoftwareUpdateController _manager:didFailDownload:withError:]";
    v22 = 2048;
    v23 = self;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: self: (%p); subState: (%@); didFailDownload: (%@); error: (%@)", &v20, 0x34u);
  }

  v12 = [v8 descriptor];
  v13 = v12;
  if (!self->_titleCell)
  {
    v14 = pbb_bridge_log();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:

      goto LABEL_18;
    }

    v20 = 136315138;
    v21 = "[COSSoftwareUpdateController _manager:didFailDownload:withError:]";
    v15 = "%s: Ignoring didFailDownload, view isn't setup yet";
    v16 = v14;
    v17 = 12;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v20, v17);
    goto LABEL_13;
  }

  if (!v12 || !self->_update || ([v12 isEqual:?] & 1) != 0)
  {
    if (!self->_hasUpdatedSuccessfully)
    {
      objc_storeStrong(&self->_update, v13);
      [(COSSoftwareUpdateController *)self _setupTitleCell];
      objc_storeStrong(&self->_download, a4);
      sub_10002E500(self->_activeDevice);
      [(COSSoftwareUpdateController *)self handleDownloadError:v9];
      goto LABEL_18;
    }

    v14 = pbb_bridge_log();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    LOWORD(v20) = 0;
    v15 = "Ignoring callback as the update has succeeded";
    v16 = v14;
    v17 = 2;
    goto LABEL_12;
  }

  v18 = pbb_bridge_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    update = self->_update;
    v20 = 138412290;
    v21 = update;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Ignoring callback as we are tracking a different update: (%@)", &v20, 0xCu);
  }

LABEL_18:
}

- (void)manager:(id)a3 didFinishDownload:(id)a4 willProceedWithInstallation:(BOOL)a5 waitingForAdmissionControl:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100127DFC;
  block[3] = &unk_10026C838;
  objc_copyWeak(&v17, &location);
  v15 = v10;
  v16 = v11;
  v18 = a5;
  v19 = a6;
  v12 = v11;
  v13 = v10;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_manager:(id)a3 didFinishDownload:(id)a4 willProceedWithInstallation:(BOOL)a5 waitingForAdmissionControl:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v9 = a4;
  v10 = pbb_bridge_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = SUBStringForManagerState();
    v24 = 136316418;
    v25 = "[COSSoftwareUpdateController _manager:didFinishDownload:willProceedWithInstallation:waitingForAdmissionControl:]";
    v26 = 2048;
    v27 = self;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v9;
    v32 = 1024;
    v33 = v7;
    v34 = 1024;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: self: (%p); subState: (%@); download: (%@); willProceed: (%d); waiting: (%d)", &v24, 0x36u);
  }

  v12 = [v9 descriptor];
  v13 = v12;
  if (!self->_titleCell)
  {
    v14 = pbb_bridge_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315138;
      v25 = "[COSSoftwareUpdateController _manager:didFinishDownload:willProceedWithInstallation:waitingForAdmissionControl:]";
      v15 = "%s: Ignoring didFinishDownload, view isn't setup yet";
      v16 = v14;
      v17 = 12;
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_24;
  }

  if (self->_update && ([v12 isEqual:?] & 1) == 0)
  {
    v22 = pbb_bridge_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      update = self->_update;
      v24 = 138412290;
      v25 = update;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Ignoring callback as we are tracking a different update: (%@)", &v24, 0xCu);
    }
  }

  else
  {
    if (self->_hasUpdatedSuccessfully)
    {
      v14 = pbb_bridge_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v15 = "Ignoring callback as the update has succeeded";
        v16 = v14;
        v17 = 2;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v24, v17);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    objc_storeStrong(&self->_update, v13);
    [(COSSoftwareUpdateController *)self _setupTitleCell];
    download = self->_download;
    self->_download = 0;

    v19 = 8;
    if (!v6)
    {
      v19 = 9;
    }

    v20 = 6;
    if (v6)
    {
      v20 = 7;
    }

    if (v7)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    [(COSSoftwareUpdateController *)self transitionToState:v21];
  }

LABEL_24:
}

- (void)manager:(id)a3 willProceedWithInstallation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001281F4;
  v10[3] = &unk_1002684D0;
  objc_copyWeak(&v13, &location);
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_manager:(id)a3 willProceedWithInstallation:(id)a4
{
  v6 = a4;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = SUBStringForManagerState();
    v13 = 136315906;
    v14 = "[COSSoftwareUpdateController _manager:willProceedWithInstallation:]";
    v15 = 2048;
    v16 = self;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: self: (%p); subState: (%@); update: (%@)", &v13, 0x2Au);
  }

  if (self->_update && ([v6 isEqual:?] & 1) == 0)
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      update = self->_update;
      v13 = 138412290;
      v14 = update;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Ignoring callback as we are tracking a different update: (%@)", &v13, 0xCu);
    }
  }

  else if (self->_hasUpdatedSuccessfully)
  {
    v9 = pbb_bridge_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ignoring callback as the update has succeeded", &v13, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_update, a4);
    [(COSSoftwareUpdateController *)self _setupTitleCell];
    download = self->_download;
    self->_download = 0;

    [(COSSoftwareUpdateController *)self transitionToState:9];
  }
}

- (void)manager:(id)a3 installationOfUpdate:(id)a4 canProceed:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100128544;
  block[3] = &unk_100269F98;
  objc_copyWeak(&v15, &location);
  v13 = v8;
  v14 = v9;
  v16 = a5;
  v10 = v9;
  v11 = v8;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_manager:(id)a3 installationOfUpdate:(id)a4 canProceed:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = SUBStringForManagerState();
    v16 = 136316162;
    v17 = "[COSSoftwareUpdateController _manager:installationOfUpdate:canProceed:]";
    v18 = 2048;
    v19 = self;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v8;
    v24 = 1024;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: self: (%p); subState: (%@); update: (%@); canProceed: (%d)", &v16, 0x30u);
  }

  if (self->_update && ([v8 isEqual:?] & 1) == 0)
  {
    v14 = pbb_bridge_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      update = self->_update;
      v16 = 138412290;
      v17 = update;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ignoring callback as we are tracking a different update: (%@)", &v16, 0xCu);
    }
  }

  else if (self->_hasUpdatedSuccessfully)
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Ignoring callback as the update has succeeded", &v16, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_update, a4);
    [(COSSoftwareUpdateController *)self _setupTitleCell];
    download = self->_download;
    self->_download = 0;

    if (v5)
    {
      v13 = 6;
    }

    else
    {
      v13 = 7;
    }

    [(COSSoftwareUpdateController *)self transitionToState:v13];
  }
}

- (void)manager:(id)a3 didFailInstallation:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001288D0;
  block[3] = &unk_10026B950;
  objc_copyWeak(&v18, &location);
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_manager:(id)a3 didFailInstallation:(id)a4 withError:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = pbb_bridge_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = SUBStringForManagerState();
    v16 = 134218754;
    v17 = self;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didFailInstallation: self: (%p); subState: (%@); update: (%@); error: (%@)", &v16, 0x2Au);
  }

  if (self->_update && ([v8 isEqual:?] & 1) == 0)
  {
    v14 = pbb_bridge_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      update = self->_update;
      v16 = 138412290;
      v17 = update;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ignoring callback as we are tracking a different update: (%@)", &v16, 0xCu);
    }
  }

  else if (self->_hasUpdatedSuccessfully)
  {
    v12 = pbb_bridge_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring callback as the update has succeeded", &v16, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_update, a4);
    [(COSSoftwareUpdateController *)self _setupTitleCell];
    download = self->_download;
    self->_download = 0;

    sub_10002E500(self->_activeDevice);
    [(COSSoftwareUpdateController *)self handleInstallationError:v9];
  }
}

- (void)manager:(id)a3 didFinishInstallation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100128C30;
  v10[3] = &unk_1002684D0;
  objc_copyWeak(&v13, &location);
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_manager:(id)a3 didFinishInstallation:(id)a4
{
  v6 = a4;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = SUBStringForManagerState();
    v13 = 136315906;
    v14 = "[COSSoftwareUpdateController _manager:didFinishInstallation:]";
    v15 = 2048;
    v16 = self;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: self: (%p); subState: (%@); update: (%@)", &v13, 0x2Au);
  }

  if (self->_update && ([v6 isEqual:?] & 1) == 0)
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      update = self->_update;
      v13 = 138412290;
      v14 = update;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Ignoring callback as we are tracking a different update: (%@)", &v13, 0xCu);
    }
  }

  else if (self->_hasUpdatedSuccessfully)
  {
    v9 = pbb_bridge_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ignoring callback as the update has succeeded", &v13, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_update, a4);
    [(COSSoftwareUpdateController *)self _setupTitleCell];
    download = self->_download;
    self->_download = 0;

    [(COSSoftwareUpdateController *)self transitionToState:10];
  }
}

- (id)extractValueFromDict:(id)a3 key:(id)a4 expectedClass:(Class)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || !v8 || !a5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[COSSoftwareUpdateController extractValueFromDict:key:expectedClass:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Invalid options passed. Unable to extract value from dictionary", &v14, 0xCu);
    }

    goto LABEL_12;
  }

  v10 = [v7 objectForKeyedSubscript:v9];
  if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(objc_class *)a5 description];
      v14 = 136315650;
      v15 = "[COSSoftwareUpdateController extractValueFromDict:key:expectedClass:]";
      v16 = 2114;
      v17 = v9;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s : Value for key %{public}@ exist in dictionary but is not of the expected class(%{public}@)", &v14, 0x20u);
    }

LABEL_12:
    v10 = 0;
  }

  return v10;
}

- (id)internalMessageFromDenialInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(COSSoftwareUpdateController *)self extractValueFromDict:v4 key:SUBErrorUserInfoChargerRequiredForApply expectedClass:objc_opt_class()];
    if (!v5)
    {
      v6 = pbb_bridge_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unexpected value for chargerRequiredForUpdate. Assuming required", buf, 2u);
      }

      v5 = &__kCFBooleanTrue;
    }

    v7 = [(COSSoftwareUpdateController *)self extractValueFromDict:v4 key:SUBErrorUserInfoChargerConnected expectedClass:objc_opt_class()];
    v23 = v7;
    if (v7)
    {
      if ([v7 BOOLValue])
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v24 = v8;
    }

    else
    {
      v10 = pbb_bridge_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Invalid value passed for chargerConnected", buf, 2u);
      }

      v24 = @"Unknown";
    }

    v11 = [(COSSoftwareUpdateController *)self extractValueFromDict:v4 key:SUBErrorUserInfoBatteryLevel expectedClass:objc_opt_class()];
    if (v11)
    {
      v12 = [NSString stringWithFormat:@"%@", v11];
    }

    else
    {
      v13 = pbb_bridge_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Invalid value passed for battery level", buf, 2u);
      }

      v12 = @"Unknown";
    }

    v14 = [(COSSoftwareUpdateController *)self extractValueFromDict:v4 key:SUBErrorUserInfoMinNeededBatteryLevelWithChargerForApply expectedClass:objc_opt_class()];
    if (v14)
    {
      v15 = [NSString stringWithFormat:@"%@", v14];
    }

    else
    {
      v16 = pbb_bridge_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Invalid value passed for batteryLevelWithCharger for apply", buf, 2u);
      }

      v15 = @"Unknown";
    }

    v17 = [(COSSoftwareUpdateController *)self extractValueFromDict:v4 key:SUBErrorUserInfoMinNeededBatteryLevelWithoutChargerForApply expectedClass:objc_opt_class()];
    if (v17)
    {
      v18 = [NSString stringWithFormat:@"%@", v17];
    }

    else
    {
      v19 = pbb_bridge_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Invalid value passed for batteryLevelWithoutCharger for apply", buf, 2u);
      }

      v18 = @"Unknown";
    }

    v20 = [v5 BOOLValue];
    v21 = @"NO";
    if (v20)
    {
      v21 = @"YES";
    }

    v9 = [NSString stringWithFormat:@"ChargerRequired: %@ ChargerConnected: %@ BatteryLevel: %@ ApplyBatteryLevelWithCharger: %@ ApplyBatteryLevelWithoutCharger: %@", v21, v24, v12, v15, v18];
  }

  else
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[COSSoftwareUpdateController internalMessageFromDenialInfo:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalid denialInfo passed to %s", buf, 0xCu);
    }

    v9 = @"Unable to parse error info";
  }

  return v9;
}

- (void)presentAlertForDuetDenialCondition:(unint64_t)a3 denialReasons:(id)a4
{
  v6 = a4;
  v7 = v6;
  if ((self->_subState - 7) >= 2 && (kDenialReasonLowBattery & a3) != kDenialReasonLowBattery)
  {
    goto LABEL_27;
  }

  v9 = BPSRemoteUISetupStyle_ptr;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v7 objectForKeyedSubscript:SUBErrorUserInfoRichDenialReasonsSupported];

    v11 = pbb_bridge_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Rich denial reasons supported", buf, 2u);
      }

      v13 = pbb_bridge_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v44 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: DenialReasons passed in using rich format : %{public}@", buf, 0xCu);
      }

      v14 = [(COSSoftwareUpdateController *)self extractValueFromDict:v7 key:SUBErrorUserInfoMinNeededBatteryLevelWithoutChargerForApply expectedClass:objc_opt_class()];
      if (!v14)
      {
        v14 = [NSNumber numberWithInteger:kMinBatteryLevelForApplyPhaseWithoutCharger];
        v15 = pbb_bridge_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v44 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Unexpected value passed for requiredBatteryLevelWithoutCharger. Assuming default(%{public}@)", buf, 0xCu);
        }
      }

      v16 = [(COSSoftwareUpdateController *)self extractValueFromDict:v7 key:SUBErrorUserInfoMinNeededBatteryLevelWithChargerForApply expectedClass:objc_opt_class()];
      if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v17 = v16;
      }

      else
      {
        v17 = [NSNumber numberWithInteger:kMinBatteryLevelForApplyPhase];

        v27 = pbb_bridge_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v44 = v17;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Unexpected value passed for requiredBatteryLevelWithCharger. Assuming default(%{public}@)", buf, 0xCu);
        }
      }

      v28 = [(COSSoftwareUpdateController *)self extractValueFromDict:v7 key:SUBErrorUserInfoChargerRequiredForApply expectedClass:objc_opt_class()];
      if (!v28 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v29 = pbb_bridge_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Unexpected value passed for chargerRequiredForUpdate. Assuming required", buf, 2u);
        }

        v28 = &__kCFBooleanTrue;
      }

      v30 = [(COSSoftwareUpdateController *)self extractValueFromDict:v7 key:SUBErrorUserInfoChargerConnected expectedClass:objc_opt_class()];
      if (!v30)
      {
        v31 = pbb_bridge_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Unable to determine if charger is connected. Assuming not connected", buf, 2u);
        }

        v30 = &__kCFBooleanFalse;
      }

      if ([v28 BOOLValue])
      {
        v32 = [v30 BOOLValue];
        v33 = pbb_bridge_log();
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        if (v32)
        {
          if (v34)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Charger is required for update and is connected. Showing low battery message in notification", buf, 2u);
          }

          v35 = +[NSBundle mainBundle];
          v36 = v35;
          v37 = @"INSTALLATION_PAUSED_BATTERY";
        }

        else
        {
          if (v34)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Charger is required for update and not connected. Showing charger required message in notification", buf, 2u);
          }

          v35 = +[NSBundle mainBundle];
          v36 = v35;
          v37 = @"INSTALLATION_PAUSED_CHARGER";
        }

        v39 = [v35 localizedStringForKey:v37 value:&stru_10026E598 table:@"Software Update"];
        v19 = [NSString stringWithFormat:@"%@", v39];
      }

      else
      {
        v38 = pbb_bridge_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Charger is not required for update. Showing new combined battery/charger message in notification", buf, 2u);
        }

        v36 = +[NSBundle mainBundle];
        v39 = [v36 localizedStringForKey:@"INSTALLATION_PAUSED_CHARGER_OPTIONAL" value:&stru_10026E598 table:@"Software Update"];
        v40 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v39, [v17 intValue], objc_msgSend(v14, "intValue"));
        v19 = [NSString stringWithFormat:@"%@", v40];

        v9 = BPSRemoteUISetupStyle_ptr;
      }

      if (MGGetBoolAnswer())
      {
        v41 = [(COSSoftwareUpdateController *)self internalMessageFromDenialInfo:v7];
        v42 = [v19 stringByAppendingFormat:@"\n[Internal Only]: %@", v41];

        v19 = v42;
      }

      goto LABEL_24;
    }

    if (v12)
    {
      *buf = 0;
      v18 = "[DenialReasons]: denialInfo present but rich denial reasons not supported";
      goto LABEL_22;
    }
  }

  else
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "[DenialReasons]: Rich denial reasons not supported/present";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
    }
  }

  v14 = +[NSBundle mainBundle];
  v17 = [v14 localizedStringForKey:@"INSTALLATION_PAUSED_BATTERY" value:&stru_10026E598 table:@"Software Update"];
  v19 = [NSString stringWithFormat:@"%@", v17];
LABEL_24:

  v20 = [v9[501] mainBundle];
  v21 = [v20 localizedStringForKey:@"INSTALLATION_PAUSED" value:&stru_10026E598 table:@"Software Update"];
  v22 = [UIAlertController alertControllerWithTitle:v21 message:v19 preferredStyle:1];

  v23 = [v9[501] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Software Update"];
  v25 = [UIAlertAction actionWithTitle:v24 style:0 handler:0];
  [v22 addAction:v25];

  v26 = pbb_bridge_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Presenting 'installation paused' alert", buf, 2u);
  }

  [(COSSoftwareUpdateController *)self presentViewController:v22 animated:1 completion:0];
LABEL_27:
}

- (void)presentAlertForUpdatingCompanion
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"COMPANION_UPDATE_ALLOWS_WATCH_UPDATE_FORMAT_TITLE" value:&stru_10026E598 table:@"Software Update"];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"COMPANION_UPDATE_ALLOWS_WATCH_UPDATE_FORMAT" value:&stru_10026E598 table:@"Software Update"];
  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"COMPANION_UPDATE_ALLOWS_WATCH_UPDATE_LINK" value:&stru_10026E598 table:@"Software Update"];
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:&stru_10026C858];
  [v7 addAction:v10];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_10026E598 table:@"Software Update"];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100129FEC;
  v16[3] = &unk_100268580;
  v16[4] = self;
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v16];
  [v7 addAction:v13];

  v14 = pbb_bridge_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Presenting 'Companion Needs Update' alert", v15, 2u);
  }

  [(COSSoftwareUpdateController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)presentAlertForiPhoneMirroring
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"IPHONE_MIRROR_BLOCK_PASSCODE_TITLE" value:&stru_10026E598 table:@"Software Update"];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"IPHONE_MIRROR_BLOCK_PASSCODE_MESSAGE" value:&stru_10026E598 table:@"Software Update"];
  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Software Update"];
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:&stru_10026C898];
  [v7 addAction:v10];

  v11 = pbb_bridge_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Presenting 'iPhone Mirroring Blocks Watch Updates' alert", v12, 2u);
  }

  [(COSSoftwareUpdateController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)handleManagerStateError:(id)a3
{
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v7 = "[COSSoftwareUpdateController handleManagerStateError:]";
    v8 = 2048;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: self: (%p); State error: (%@)", buf, 0x20u);
  }

  BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler();
}

- (void)handleScanError:(id)a3
{
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v32 = "[COSSoftwareUpdateController handleScanError:]";
    v33 = 2048;
    v34 = self;
    v35 = 2112;
    v36 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: self: (%p); Scan error: (%@)", buf, 0x20u);
  }

  if ((self->_subState | 2) == 2)
  {
    v6 = [UIApp setupController];
    v7 = [v6 pairingReportManager];

    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
    [v7 addPairingTimeEventToPairingReportPlist:60 withValue:v8 withError:0];

    v9 = [v4 code];
    v10 = @"NETWORK_SCAN_ERROR";
    if (v9 <= 6)
    {
      if (v9 == 3 || v9 == 5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 == 7)
      {
LABEL_14:
        v13 = [NSBundle bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:v10 value:&stru_10026E598 table:@"Software Update"];
        v11 = sub_10012AA80(v14, v4);

LABEL_15:
        if ([v4 code] == 45)
        {
          v15 = +[NSBundle mainBundle];
          v16 = v15;
          v17 = @"UNABLE_TO_CHECK_FOR_UPDATE_BEFORE_FIRST_UNLOCK";
        }

        else
        {
          v15 = [NSBundle bundleForClass:objc_opt_class()];
          v16 = v15;
          v17 = @"UNABLE_TO_CHECK_FOR_UPDATE";
        }

        v18 = [v15 localizedStringForKey:v17 value:&stru_10026E598 table:@"Software Update"];

        v19 = [UIAlertController alertControllerWithTitle:v18 message:v11 preferredStyle:1];
        if (self->_inSetupFlow)
        {
          v20 = +[NSBundle mainBundle];
          v21 = [v20 localizedStringForKey:@"START_OVER" value:&stru_10026E598 table:@"Software Update"];
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_10012AB94;
          v30[3] = &unk_100268580;
          v30[4] = self;
          v22 = v30;
        }

        else
        {
          v20 = [NSBundle bundleForClass:objc_opt_class()];
          v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_10026E598 table:@"Software Update"];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10012ABD0;
          v29[3] = &unk_100268580;
          v29[4] = self;
          v22 = v29;
        }

        v23 = [UIAlertAction actionWithTitle:v21 style:1 handler:v22];
        [v19 addAction:v23];

        v24 = [NSBundle bundleForClass:objc_opt_class()];
        v25 = [v24 localizedStringForKey:@"TRY_AGAIN" value:&stru_10026E598 table:@"Software Update"];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10012AC20;
        v28[3] = &unk_100268580;
        v28[4] = self;
        v26 = [UIAlertAction actionWithTitle:v25 style:0 handler:v28];
        [v19 addAction:v26];

        v27 = pbb_bridge_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Presenting 'unable to check for update' alert", buf, 2u);
        }

        [(COSSoftwareUpdateController *)self presentViewController:v19 animated:1 completion:0];
        goto LABEL_24;
      }

      if (v9 == 21)
      {
        goto LABEL_24;
      }

      v11 = 0;
      if (v9 == 45)
      {
        goto LABEL_15;
      }
    }

    v10 = @"GENERIC_SCAN_ERROR";
    goto LABEL_14;
  }

  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = SUBStringForManagerState();
    *buf = 138412290;
    v32 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring scan error as this is a background scan. State: (%@)", buf, 0xCu);
  }

LABEL_24:
}

- (void)handleDownloadError:(id)a3
{
  if ([a3 code] == 25)
  {
    nssManager = self->_nssManager;
    if (!nssManager)
    {
      v5 = [[NSSManager alloc] initWithQueue:&_dispatch_main_q];
      v6 = self->_nssManager;
      self->_nssManager = v5;

      nssManager = self->_nssManager;
    }

    v7 = [NSNumber numberWithLongLong:[(SUBDescriptor *)self->_update totalRequiredFreeSpace]];
    v8 = [(SUBDescriptor *)self->_update productBuildVersion];
    [(NSSManager *)nssManager recordSoftwareUpdateSpaceFailure:v7 osBeingUpdatedTo:v8 completion:&stru_10026C8B8];
  }

  update = self->_update;
  self->_update = 0;

  download = self->_download;
  self->_download = 0;

  [(COSSoftwareUpdateController *)self transitionToState:0];

  [(COSSoftwareUpdateController *)self queryManagerState];
}

- (void)handleInstallationError:(id)a3
{
  if ([a3 code] == 18)
  {

    [(COSSoftwareUpdateController *)self transitionToState:7];
  }

  else
  {
    update = self->_update;
    self->_update = 0;

    download = self->_download;
    self->_download = 0;

    [(COSSoftwareUpdateController *)self transitionToState:0];

    [(COSSoftwareUpdateController *)self queryManagerState];
  }
}

- (void)loadBetaUpdates
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10012AEBC;
  v2[3] = &unk_100269800;
  v2[4] = self;
  [(COSSoftwareUpdateController *)self loadBetaUpdatesWithCompletion:v2];
}

- (void)loadBetaUpdatesWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  seedingQueryQueue = self->_seedingQueryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012AFA0;
  block[3] = &unk_100268FF0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(seedingQueryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)enrolledBetaProgramString
{
  v3 = [(COSSoftwareUpdateController *)self selectedBetaProgram];
  if (v3)
  {
    v4 = [(COSSoftwareUpdateController *)self selectedBetaProgram];
    [v4 title];
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    [v4 localizedStringForKey:@"AUTOMATIC_UPDATES_DISABLED" value:&stru_10026E598 table:@"Software Update"];
  }
  v5 = ;

  return v5;
}

- (void)enrollInBetaProgram:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(COSSoftwareUpdateController *)self setSelectedBetaProgram:v6];
  [(COSSoftwareUpdateController *)self setBetaUpdatesChanged:1];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v15 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v15];
  v9 = v15;
  if (!v9)
  {
LABEL_8:
    nssManager = self->_nssManager;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10012B8D0;
    v13[3] = &unk_10026C958;
    v13[4] = self;
    v14 = v7;
    [(NSSManager *)nssManager updateBetaEnrollmentStatus:v8 withCompletion:v13];
    v10 = v14;
    goto LABEL_9;
  }

  v10 = v9;
  v11 = pbb_bridge_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to archive beta program: %@", buf, 0xCu);
  }

  (*(v7 + 2))(v7, 0, v10);
LABEL_9:
}

- (void)unenrollFromBetaUpdatesWithCompletion:(id)a3
{
  v4 = a3;
  [(COSSoftwareUpdateController *)self setSelectedBetaProgram:0];
  [(COSSoftwareUpdateController *)self setBetaUpdatesChanged:1];
  nssManager = self->_nssManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012B9EC;
  v7[3] = &unk_10026C958;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSSManager *)nssManager unenrollFromBetaUpdatesWithCompletion:v7];
}

- (BOOL)presentiPhoneMirrorErrorIfNecessary
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 iPhoneMirroringEnabled];

  if (v4)
  {
    [(COSSoftwareUpdateController *)self presentAlertForiPhoneMirroring];
  }

  return v4;
}

- (void)_filterBetaPrograms:(id)a3
{
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Beta query returned programs: %@", &v17, 0xCu);
  }

  v6 = [(COSSoftwareUpdateController *)self activeDevice];
  v7 = [v6 valueForProperty:NRDevicePropertySystemBuildVersion];

  if (!v7)
  {
    v10 = pbb_bridge_log();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    LOWORD(v17) = 0;
    v16 = "Error getting the active watch's build version; not filtering";
    goto LABEL_21;
  }

  v8 = [COSSoftwareUpdateController _extractBuildPrefixFromBuildVersion:v7];
  v9 = pbb_bridge_log();
  v10 = v9;
  if (v8 <= 0)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    LOWORD(v17) = 0;
    v16 = "Error getting the active watch's build version prefix; not filtering";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v16, &v17, 2u);
LABEL_22:

    [(COSSoftwareUpdateController *)self setBetaPrograms:v4];
    goto LABEL_23;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Filtering returned beta programs for those with build prefixes %ld and above", &v17, 0xCu);
  }

  v11 = [(COSSoftwareUpdateController *)self _filterPrograms:v4 withMinimumBuildPrefix:v8];
  v12 = [v11 count];
  if (v12 > [v4 count])
  {
    v13 = pbb_bridge_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "We somehow ended up with more programs than we started with; proceeding anyway", &v17, 2u);
    }
  }

  v14 = pbb_bridge_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Including filtered programs list: %@", &v17, 0xCu);
  }

  v15 = [NSArray arrayWithArray:v11];
  [(COSSoftwareUpdateController *)self setBetaPrograms:v15];

LABEL_23:
}

- (id)_filterPrograms:(id)a3 withMinimumBuildPrefix:(int64_t)a4
{
  v5 = a3;
  if (a4 <= 0)
  {
    v17 = pbb_bridge_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping program filtering because we couldn't get the watch's build version prefix", buf, 2u);
    }

    v6 = v5;
  }

  else
  {
    v6 = +[NSMutableArray array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [v12 buildPrefix];
          v14 = [v13 integerValue];

          if (v14 >= a4)
          {
            [v6 addObject:v12];
          }

          else
          {
            v15 = pbb_bridge_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v12 title];
              *buf = 138412290;
              v25 = v16;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Beta program %@ does not meet or exceed the watch's build prefix; excluding", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v9);
    }

    v5 = v19;
  }

  return v6;
}

+ (int64_t)_extractBuildPrefixFromBuildVersion:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v14 = 0;
    v4 = [NSRegularExpression regularExpressionWithPattern:@"^\\d+" options:0 error:&v14];
    v5 = v14;
    if (v5)
    {
      v6 = pbb_bridge_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v5 localizedDescription];
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Error creating build prefix regex: %@", buf, 0xCu);
      }

      v8 = 0;
    }

    else
    {
      v9 = [v4 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
      v6 = v9;
      if (v9)
      {
        v10 = [v9 range];
        v12 = [v3 substringWithRange:{v10, v11}];
        v8 = [v12 integerValue];
      }

      else
      {
        v12 = pbb_bridge_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error getting the build version prefix", buf, 2u);
        }

        v8 = 0;
      }
    }
  }

  else
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No build version provided to extract prefix from", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (SEL)termsAcceptanceAction
{
  if (self->_termsAcceptanceAction)
  {
    return self->_termsAcceptanceAction;
  }

  else
  {
    return 0;
  }
}

- (void)setTermsAcceptanceAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_termsAcceptanceAction = v3;
}

@end