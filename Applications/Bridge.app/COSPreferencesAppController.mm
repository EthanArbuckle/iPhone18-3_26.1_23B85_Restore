@interface COSPreferencesAppController
+ (BOOL)hasUpdateAvailable;
+ (id)getActiveDevice;
- (BOOL)_devicePickerBeingPresented;
- (BOOL)_isProductKitUrl:(id)a3;
- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 willContinueUserActivityWithType:(id)a4;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (BOOL)isActivelyPairing;
- (BOOL)isEitherPhoneOrActiveWatchGreenTeaDevice;
- (BOOL)onlySatellitePairedAndInactive;
- (BOOL)runTest:(id)a3 options:(id)a4;
- (BOOL)safeToPopToSettingsRootController;
- (BOOL)shouldConsiderHoldingSuspendAssertion;
- (BOOL)shouldShowWatchPicker;
- (BOOL)splitViewController:(id)a3 collapseSecondaryViewController:(id)a4 ontoPrimaryViewController:(id)a5;
- (BPSNTKCustomization)ntkCustomization;
- (COSPreferencesAppController)init;
- (NRDevice)displayDevice;
- (UINavigationController)devicePickerNavigationController;
- (UIViewController)selectedTabViewController;
- (id)_appSuspendStateDescription;
- (id)_getStartedController;
- (id)_tabBarController;
- (id)_viewControllers;
- (id)bridgeSettingsTabBarItem;
- (id)bridgeUserNotificationCategories;
- (id)cachedNameForDevice:(id)a3;
- (id)currentSpecifierIDPath;
- (id)getLaunchedByValueForURL:(id)a3;
- (id)keyValueDictionaryForURL:(id)a3;
- (id)oneTimeJumpURL;
- (id)splitViewController:(id)a3 separateSecondaryViewControllerFromPrimaryViewController:(id)a4;
- (id)tinkerUserName;
- (id)urlForActivity:(id)a3;
- (unint64_t)waitToLoadBeforeProcessingURL:(id)a3;
- (void)_activateTinkerWatchWithCSN:(id)a3 completionBlock:(id)a4;
- (void)_allowInteractionsWithSettingsControllers:(BOOL)a3;
- (void)_createIdleNotificationTimer;
- (void)_debug_forcePullAssets;
- (void)_deregisterForPowerNotifications;
- (void)_extendBackgroundAssertion;
- (void)_networkingStartNotification:(id)a3;
- (void)_networkingStopNotification:(id)a3;
- (void)_performURLHandlingForRootListController:(id)a3 controller:(id)a4 dictionary:(id)a5 items:(id)a6 controllerNeedsPush:(BOOL)a7;
- (void)_performWorkAfterUnpairingVCDismissalWithCompletionBlock:(id)a3;
- (void)_prepareForDevicePickerTest;
- (void)_refreshShortCuts;
- (void)_refreshTabBarVisibility;
- (void)_registerForPowerNotifications;
- (void)_schedulePendingAppDelegateIfPresent;
- (void)_scrollToTopOfSettingsAnimated:(BOOL)a3;
- (void)_setOffsetForController:(id)a3 fromObjectPair:(id)a4;
- (void)_showInitialSyncPaneIfNotAlreadyShowing;
- (void)_showTinkerSwitchFailureModalForDevice:(id)a3;
- (void)_starDevicePickerRotationTestWithOptions:(id)a3;
- (void)_startFaceGalleryScrollTestWithOptions:(id)a3;
- (void)_startTopLevelScrollTestComplex:(BOOL)a3 options:(id)a4;
- (void)_testScrollTest:(id)a3 onScrollView:(id)a4;
- (void)_tintTabBarWithViewController:(id)a3;
- (void)_updateAppStoreRowForRepair;
- (void)application:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5;
- (void)application:(id)a3 didUpdateUserActivity:(id)a4;
- (void)application:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)applicationWillTerminate:(id)a3;
- (void)cancelTinkerSwitch:(id)a3;
- (void)checkForBrokenDeviceAssertion;
- (void)checkIDSReachability;
- (void)checkIfNRRetriggerConditions;
- (void)clearBridgeSettingsTabBarItemBadge;
- (void)clearCachedNameForDevice:(id)a3;
- (void)configureStartupStateForActiveDevice;
- (void)createDisplayLayoutManager;
- (void)dealloc;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
- (void)deviceBecameActive:(id)a3;
- (void)deviceBecameInactive:(id)a3;
- (void)deviceIsSetup:(id)a3;
- (void)deviceSpecificRepairSteps:(id)a3;
- (void)deviceUnpaired:(id)a3;
- (void)didHandlePerformanceResults;
- (void)didTapOnLoadingFaceLibraryButton:(id)a3;
- (void)disagreeToTerms;
- (void)discoveredAdvertisingWatch:(id)a3;
- (void)dismissSetupFlowAnimated:(BOOL)a3 refreshTabs:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)dismissSetupFlowComplete:(BOOL)a3 animated:(BOOL)a4;
- (void)dismissUnpairingViewControllerAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)enteredCompatibilityState:(id)a3;
- (void)evaluateIfUpdatingInSetupFlowOnLaunch;
- (void)expireTaskAssertion:(id)a3;
- (void)finishedTest:(id)a3;
- (void)generateURL;
- (void)globalAlertPresentationCoordinator:(id)a3 dismissAlert:(unint64_t)a4 withCompletion:(id)a5;
- (void)globalAlertPresentationCoordinator:(id)a3 presentAlert:(unint64_t)a4 withCompletion:(id)a5;
- (void)globalAlertPresentationCoordinator:(id)a3 syncProgressDidUpdate:(double)a4;
- (void)initialPairingFailed:(id)a3;
- (void)loadSettingsController;
- (void)markGalleryTabAsVisited;
- (void)markGalleryTabAsVisitedIfOnGalleryTab;
- (void)messageSendFailed:(id)a3;
- (void)nanoRegistryStatusChanged:(id)a3;
- (void)navigateToRootObjectWithURLDictionary:(id)a3 animated:(BOOL)a4;
- (void)newerCompanionRequired;
- (void)pairingFailed:(id)a3;
- (void)performTasksOnActiveDeviceUpdate;
- (void)pingWatch;
- (void)popToRootOfSettingsSelectGeneral:(BOOL)a3 performWithoutDeferringTransitions:(BOOL)a4;
- (void)popToTopLevelSettingsAnimated:(BOOL)a3;
- (void)postIdleNotification:(id)a3;
- (void)presentDevicePicker:(BOOL)a3;
- (void)presentDevicePickerControllerWith:(BOOL)a3;
- (void)presentGetConnectedAlertIfNeededWithWifi:(BOOL)a3 withCompletion:(id)a4;
- (void)presentGreenfieldViewControllerWithUrl:(id)a3 options:(id)a4;
- (void)presentMigrationConnectionFailedAlert;
- (void)presentNewPairingFlowIfPossibleWithAnimation:(BOOL)a3 withCompletion:(id)a4;
- (void)presentSetupFlowWithMode:(unint64_t)a3 animated:(BOOL)a4;
- (void)presentUnpairingViewControllerAnimated:(BOOL)a3;
- (void)presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:(id)a3;
- (void)prewarmiCloudBackups;
- (void)processURL:(id)a3;
- (void)processURL:(id)a3 animated:(BOOL)a4 fromSearch:(BOOL)a5;
- (void)pullPairedWatchAssets;
- (void)reachability:(id)a3 device:(id)a4 connectionStatus:(unint64_t)a5;
- (void)refreshActiveWatchFromNanoRegistry;
- (void)refreshTabBar;
- (void)refreshUpdateBadge;
- (void)refreshUpdateBadgeWithTab:(id)a3;
- (void)registerForUserNotifications;
- (void)reloadAppearance:(id)a3;
- (void)remoteDidFailActivation:(unint64_t)a3 description:(id)a4 userActionable:(BOOL)a5;
- (void)remoteFinishedHealthSharingOptInWithSelection:(BOOL)a3;
- (void)removeActiveDeviceAssertionFor:(id)a3;
- (void)removeActiveDeviveAssertionIfNotActive;
- (void)reportTabState:(id)a3;
- (void)resetActivationFailureCountAndReport:(BOOL)a3;
- (void)resetFlowForCameraExpiry;
- (void)resetSettingsUIToHomeScreen;
- (void)resetSetupFlowAnimated:(BOOL)a3 forEvent:(unint64_t)a4;
- (void)resetSetupFlowInternalSettings;
- (void)resetSuspendAssertion;
- (void)retriggerNRAlertIfNeeded;
- (void)screenshotService:(id)a3 generatePDFRepresentationWithCompletion:(id)a4;
- (void)setActiveWatch:(id)a3 startedBlock:(id)a4 completionBlock:(id)a5;
- (void)setActiveWatchAssertion:(id)a3;
- (void)setCachedName:(id)a3 forDevice:(id)a4;
- (void)setDevicePickerPresented:(BOOL)a3;
- (void)setIsRestoringToKnownDevice:(BOOL)a3;
- (void)setSelectedTabBarViewController:(id)a3;
- (void)setSyncTrapUIEnabled:(BOOL)a3;
- (void)sizeCategoryDidChange:(id)a3;
- (void)splitViewControllerDidPopToRootController:(id)a3;
- (void)startScanningForNearbyDevices;
- (void)startedTest:(id)a3;
- (void)successfullyBeganUnpairingWatch;
- (void)switchToDevice:(id)a3 startedBlock:(id)a4 completionBlock:(id)a5;
- (void)tabBarController:(id)a3 didSelectViewController:(id)a4;
- (void)tappedStart;
- (void)tappedStartForMode:(unint64_t)a3 withAnimation:(BOOL)a4;
- (void)testPrep:(id)a3 options:(id)a4;
- (void)transportBecameReachable;
- (void)transportBecameUnreachable;
- (void)unpairOrResetBuddyForEvent:(unint64_t)a3;
- (void)updateActiveWatch:(id)a3;
- (void)updateActiveWatchBridgeDomainAccessor;
- (void)updateForRemoteActivity:(id)a3;
- (void)updateNRStatusForPresentingOrDismissingUnpairingUI:(unint64_t)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
- (void)versionOrCapabilitiesChanged:(id)a3;
@end

@implementation COSPreferencesAppController

- (COSPreferencesAppController)init
{
  v22.receiver = self;
  v22.super_class = COSPreferencesAppController;
  v2 = [(COSPreferencesAppController *)&v22 init];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"__SkipReachabilityChecks"];

    if (v4)
    {
      v2->_isActivated = 1;
    }

    v5 = [BKSApplicationStateMonitor alloc];
    v6 = [v5 initWithBundleIDs:&off_1002817F8 states:BKSApplicationStateAll];
    appStateMonitor = v2->_appStateMonitor;
    v2->_appStateMonitor = v6;

    v2->_activationRetryCountLimit = 1;
    if (PBIsInternalInstall())
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1000A28BC, @"_debug_forceAssetsToPull", 0, 1024);
      keyExistsAndHasValidFormat = 0;
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ActivationRetryOverride", @"com.apple.Bridge", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v10 = AppIntegerValue;
        if ((AppIntegerValue & 0x8000000000000000) == 0)
        {
          v11 = pbb_activation_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            activationRetryCountLimit = v2->_activationRetryCountLimit;
            *buf = 134218240;
            v24 = activationRetryCountLimit;
            v25 = 2048;
            v26 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Activation failure count limit overridden from %lu to %lu via default", buf, 0x16u);
          }

          v2->_activationRetryCountLimit = v10;
        }
      }
    }

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"_networkingStartNotification:" name:SSVNetworkingDidStartNotification object:0];
    [v13 addObserver:v2 selector:"_networkingStopNotification:" name:SSVNetworkingDidStopNotification object:0];
    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"deviceBecameActive:" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"deviceBecameInactive:" name:NRPairedDeviceRegistryDeviceDidBecomeInactive object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v2 selector:"versionOrCapabilitiesChanged:" name:@"COSActiveDeviceEssentialPropertiesChanged" object:0];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v2 selector:"nanoRegistryStatusChanged:" name:NRPairedDeviceRegistryStatusDidChange object:0];

    v18 = +[PBBridgeIDSReachability sharedInstance];
    [v18 addObserver:v2];

    v19 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
    [(COSPreferencesAppController *)v2 updateActiveWatch:v19];

    [(COSPreferencesAppController *)v2 resetActivationFailureCountAndReport:0];
  }

  return v2;
}

- (void)_refreshShortCuts
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109378;
    v5[1] = 362;
    v6 = 2080;
    v7 = "[COSPreferencesAppController _refreshShortCuts]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%d %s", v5, 0x12u);
  }

  v3 = +[COSShortcutController sharedController];
  v4 = [v3 shortcutItems];
  [UIApp setShortcutItems:v4];
}

- (void)startScanningForNearbyDevices
{
  v2 = sub_100005F18();
  v3 = [v2 count];

  if (!v3)
  {
    v4 = pbb_mobileasset_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Begin Scanning for Nearby Devices...", v7, 2u);
    }

    v5 = +[PPDiscoveryManager sharedDiscoveryManager];
    [v5 setSignalLimitOverride:PPDiscoveryLimitBridge];

    v6 = +[PPDiscoveryManager sharedDiscoveryManager];
    [v6 begin];
  }
}

- (void)_registerForPowerNotifications
{
  if (!self->_pmSource)
  {
    self->_systemPowerPortRef = 0;
    self->_rootDomainConnect = IORegisterForSystemPower(self, &self->_systemPowerPortRef, sub_1000AFF3C, &self->_pmNotifier);
    RunLoopSource = IONotificationPortGetRunLoopSource(self->_systemPowerPortRef);
    self->_pmSource = RunLoopSource;
    CFRetain(RunLoopSource);
    Current = CFRunLoopGetCurrent();
    pmSource = self->_pmSource;

    CFRunLoopAddSource(Current, pmSource, kCFRunLoopDefaultMode);
  }
}

- (id)_tabBarController
{
  rootViewController = self->_rootViewController;
  if (!rootViewController)
  {
    v4 = [[UITabBarController alloc] initWithNibName:0 bundle:0];
    v5 = self->_rootViewController;
    self->_rootViewController = v4;

    [(UITabBarController *)self->_rootViewController setDelegate:self];
    v6 = [(UITabBarController *)self->_rootViewController tabBar];
    sub_1000071E0(v6);

    rootViewController = self->_rootViewController;
  }

  return rootViewController;
}

- (void)loadSettingsController
{
  v3 = [COSPreferencesRootController alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"SETTINGS" value:&stru_10026E598 table:@"Localizable"];
  v6 = [(COSPreferencesRootController *)v3 initWithTitle:v5 identifier:@"com.apple.preferences.settings"];
  settingsController = self->_settingsController;
  self->_settingsController = v6;

  [(COSPreferencesRootController *)self->_settingsController setToolbarHidden:1];
  v8 = [(COSPreferencesRootController *)self->_settingsController navigationBar];
  v9 = BPSBridgeTintColor();
  [v8 setTintColor:v9];

  v10 = [UINavigationController alloc];
  v11 = [(COSPreferencesRootController *)self->_settingsController rootListController];
  v12 = [v10 initWithRootViewController:v11];

  v13 = [(UIWindow *)self->_window traitCollection];
  v14 = [UITraitCollection traitCollectionWithHorizontalSizeClass:2];
  v15 = [v13 containsTraitsInCollection:v14];

  if (v15)
  {
    v16 = [(COSPreferencesRootController *)self->_settingsController rootListController];
    v17 = [v16 generalViewController];
    v25 = v17;
    v18 = [NSArray arrayWithObjects:&v25 count:1];
    [(COSPreferencesRootController *)self->_settingsController setViewControllers:v18];
  }

  v19 = [v12 navigationBar];
  BPSApplyStyleToNavBarOptions();

  v20 = [(COSPreferencesRootController *)self->_settingsController navigationBar];
  BPSApplyStyleToNavBar();

  v21 = objc_alloc_init(PSSplitViewController);
  settingsSplitViewController = self->_settingsSplitViewController;
  self->_settingsSplitViewController = v21;

  if (v15)
  {
    v23 = self->_settingsController;
  }

  else
  {
    v23 = 0;
  }

  v24 = [NSArray arrayWithObjects:v12, v23, 0];
  [(PSSplitViewController *)self->_settingsSplitViewController setViewControllers:v24];

  [(PSSplitViewController *)self->_settingsSplitViewController setContainerNavigationController:self->_settingsController];
  [(PSSplitViewController *)self->_settingsSplitViewController setNavigationDelegate:self];
  [(PSSplitViewController *)self->_settingsSplitViewController setPreferredDisplayMode:2];
  [(PSSplitViewController *)self->_settingsSplitViewController setDelegate:self];
  objc_storeWeak(&self->_selectedTabViewController, self->_settingsSplitViewController);
  [(PSSplitViewController *)self->_settingsSplitViewController setExtendedLayoutIncludesOpaqueBars:1];
}

- (id)_viewControllers
{
  v61 = +[NSMutableArray array];
  v3 = [(COSPreferencesAppController *)self ntkCustomization];
  if ((sub_100008BAC() & 1) == 0 && !v3)
  {
    LOBYTE(v4) = 0;
    goto LABEL_30;
  }

  v5 = PBHasSetupDevice();
  if ([(COSPreferencesAppController *)self launchedToTest])
  {
    v6 = pbb_setup_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [NSNumber numberWithBool:0];
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ForceGetStartedForPPT %@", buf, 0xCu);
    }

LABEL_10:
    LODWORD(v4) = 0;
    goto LABEL_14;
  }

  if (sub_100009A24())
  {
    v6 = pbb_setup_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skipped Setup!", buf, 2u);
    }

    goto LABEL_10;
  }

  v6 = objc_opt_new();
  v8 = [v6 migratableDevices];
  v9 = [v8 count] == 0;

  v10 = pbb_setup_log();
  v4 = v9 & (v5 ^ 1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [NSNumber numberWithBool:v4];
    v12 = [NSNumber numberWithBool:v5];
    v13 = [v6 migratableDevices];
    *buf = 138412802;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2048;
    v66 = [v13 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Show Setup: %@ hasSetupCompletedDevice %@ Migratable Devices: %lu", buf, 0x20u);
  }

LABEL_14:
  if ([(COSPreferencesAppController *)self launchedToTest]&& CFPreferencesGetAppIntegerValue(@"fakePairedWatches", @"com.apple.Bridge", 0) >= 2)
  {
    v14 = [NSURL URLWithString:@"root=ActiveWatch"];
    [(COSPreferencesAppController *)self processURL:v14 animated:0 fromSearch:0];
  }

  if ((v4 & 1) == 0)
  {
    v17 = self->_settingsSplitViewController;
    if (v17)
    {
      goto LABEL_19;
    }

LABEL_21:
    v23 = pbb_bridge_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Nil myWatchViewController can't be added to tab bar, showSetup: %{BOOL}d", buf, 8u);
    }

    goto LABEL_25;
  }

  v15 = [UINavigationController alloc];
  v16 = [(COSPreferencesAppController *)self _getStartedController];
  v17 = [v15 initWithRootViewController:v16];

  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_19:
  v18 = [(PSSplitViewController *)v17 tabBarItem];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"MY_WATCH_TAB_TITLE" value:&stru_10026E598 table:@"TabBar"];
  [v18 _setInternalTitle:v20];

  v21 = [(PSSplitViewController *)v17 tabBarItem];
  v22 = [UIImage systemImageNamed:@"applewatch.side.right"];
  [v21 setImage:v22];

  [(COSPreferencesAppController *)self setMyWatchViewController:v17];
  [v61 addObject:v17];
LABEL_25:
  if (v3)
  {
    v24 = [(COSPreferencesAppController *)self bridgeUserNotificationCategories];
    v25 = [v24 mutableCopy];

    v26 = [v3 galleryViewController];
    v27 = [v26 tabBarItem];
    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"GALLERY_TAB_TITLE" value:&stru_10026E598 table:@"TabBar"];
    [v27 _setInternalTitle:v29];

    v30 = [v26 tabBarItem];
    v31 = [UIImage systemImageNamed:@"applewatch.watchface"];
    [v30 setImage:v31];

    [v61 addObject:v26];
    [(COSPreferencesAppController *)self setGalleryViewController:v26];
    v32 = [v3 userNotificationCategories];
    [v25 unionSet:v32];

    if ([v25 count])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v66 = sub_100008C1C;
      v67 = sub_100009D00;
      v68 = +[UNUserNotificationCenter currentNotificationCenter];
      v33 = *(*&buf[8] + 40);
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_100009C78;
      v62[3] = &unk_10026AD88;
      v63 = v25;
      v64 = buf;
      [v33 getNotificationCategoriesWithCompletionHandler:v62];

      _Block_object_dispose(buf, 8);
    }
  }

LABEL_30:
  v34 = objc_alloc_init(COSDiscoverListViewController);
  v35 = [[UINavigationController alloc] initWithRootViewController:v34];
  discoverNavigationController = self->_discoverNavigationController;
  self->_discoverNavigationController = v35;

  v37 = +[NSBundle mainBundle];
  v38 = [v37 localizedStringForKey:@"DISCOVER_TAB_TITLE" value:&stru_10026E598 table:@"TabBar"];

  v39 = [(UINavigationController *)self->_discoverNavigationController tabBarItem];
  [v39 setTitle:v38];

  v40 = [(UINavigationController *)self->_discoverNavigationController navigationBar];
  [v40 setPrefersLargeTitles:1];

  v41 = [(COSDiscoverListViewController *)v34 navigationItem];
  [v41 setTitle:v38];

  v42 = [UIImage systemImageNamed:@"safari.fill"];
  v43 = [(UINavigationController *)self->_discoverNavigationController tabBarItem];
  [v43 setImage:v42];

  [v61 addObject:self->_discoverNavigationController];
  if (_os_feature_enabled_impl() && !(v4 & 1 | ((_os_feature_enabled_impl() & 1) == 0)))
  {
    v44 = [(COSPreferencesAppController *)self settingsListController];
    v45 = [v44 searchSuggestionsViewController];

    if (v45)
    {
      v46 = [[UINavigationController alloc] initWithRootViewController:v45];
      searchNavigationController = self->_searchNavigationController;
      self->_searchNavigationController = v46;

      v48 = [(UINavigationController *)self->_searchNavigationController navigationBar];
      [v48 setPrefersLargeTitles:1];

      v49 = [[UITabBarItem alloc] initWithTabBarSystemItem:8 tag:4];
      [(UINavigationController *)self->_searchNavigationController setTabBarItem:v49];

      v50 = [(COSPreferencesAppController *)self settingsListController];
      v51 = [v50 spotlightSearchController];
      v52 = [v45 navigationItem];
      [v52 setSearchController:v51];

      v53 = +[NSBundle mainBundle];
      v54 = [v53 localizedStringForKey:@"SEARCH_TAB_TITLE" value:&stru_10026E598 table:@"TabBar"];
      v55 = [v45 navigationItem];
      [v55 setTitle:v54];

      [v61 addObject:self->_searchNavigationController];
    }

    else
    {
      v56 = pbb_bridge_log();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Missing search controller", buf, 2u);
      }
    }
  }

  v57 = [(COSPreferencesAppController *)self myWatchViewController];
  [(COSPreferencesAppController *)self reportTabState:v57];

  v58 = [(COSPreferencesAppController *)self myWatchViewController];
  v59 = [v58 tabBarItem];
  [(COSPreferencesAppController *)self refreshUpdateBadgeWithTab:v59];

  return v61;
}

- (BPSNTKCustomization)ntkCustomization
{
  v2 = self;
  objc_sync_enter(v2);
  ntkCustomization = v2->_ntkCustomization;
  if (ntkCustomization)
  {
    v4 = ntkCustomization;
  }

  else
  {
    objc_sync_exit(v2);

    v5 = v2;
    objc_sync_enter(v5);
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 fileExistsAtPath:@"/System/Library/NanoPreferenceBundles/Customization/NTKCustomization.bundle"];

    if (sub_100008BAC() & 1 | ((v7 & 1) == 0))
    {
      v4 = 0;
    }

    else
    {
      v8 = [NSBundle bundleWithPath:@"/System/Library/NanoPreferenceBundles/Customization/NTKCustomization.bundle"];
      [v8 principalClass];
      v4 = objc_opt_new();
      objc_storeStrong(&v2->_ntkCustomization, v4);
    }

    v2 = v5;
  }

  objc_sync_exit(v2);

  v9 = v4;

  return v9;
}

- (id)bridgeUserNotificationCategories
{
  v2 = [UNNotificationCategory categoryWithIdentifier:@"com.apple.Bridge.pairing" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:0];
  v3 = [NSSet setWithObject:v2];

  return v3;
}

+ (BOOL)hasUpdateAvailable
{
  v2 = [UIApp activeWatchBridgeDomainAccessor];
  v3 = [v2 synchronize];
  v4 = [v2 BOOLForKey:@"kBadgedForSoftwareUpdateKey"];

  return v4;
}

- (void)evaluateIfUpdatingInSetupFlowOnLaunch
{
  v3 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v4 = [v3 valueForProperty:_NRDevicePropertyCompatibilityState];
  v5 = [v4 intValue];

  v6 = +[NRPairedDeviceRegistry sharedInstance];
  v7 = [v6 status];

  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[COSPreferencesAppController evaluateIfUpdatingInSetupFlowOnLaunch]";
    v13 = 2048;
    v14 = v7;
    v15 = 1024;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Status: %lu State: %d", &v11, 0x1Cu);
  }

  if (v7 == 1 && (v5 & 0xFFFE) == 2)
  {
    self->_isUpdatingGizmoInSetupFlow = 1;
    [(COSPreferencesAppController *)self setIsActivated:1];
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[COSPreferencesAppController evaluateIfUpdatingInSetupFlowOnLaunch]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Setting activated", &v11, 0xCu);
    }
  }

  else
  {
    CFPreferencesSetAppValue(@"kIsUpdatingFromVersionInSetupFlow", 0, @"com.apple.Bridge");
    CFPreferencesAppSynchronize(@"com.apple.Bridge");
  }
}

- (id)oneTimeJumpURL
{
  v2 = [UIApp activeWatchBridgeDomainAccessor];
  v3 = [v2 synchronize];
  v4 = [v2 BOOLForKey:@"kBadgedForSoftwareUpdateJumpOnceKey"];
  if ([objc_opt_class() hasUpdateAvailable])
  {
    if ((v4 & 1) == 0)
    {
      [v2 setBool:1 forKey:@"kBadgedForSoftwareUpdateJumpOnceKey"];
      v5 = [v2 synchronize];
      v6 = [NSURL URLWithString:@"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK"];
      goto LABEL_6;
    }
  }

  else
  {
    [v2 removeObjectForKey:@"kBadgedForSoftwareUpdateJumpOnceKey"];
    v7 = [v2 synchronize];
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (BOOL)shouldShowWatchPicker
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = sub_100005F18();
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v4)
  {
    v5 = v4;
    v25 = self;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v31 = *v33;
    v30 = NRDevicePropertyIsArchived;
    v29 = NRDevicePropertyIsSetup;
    v28 = NRDevicePropertyIsAltAccount;
    obj = v3;
    v27 = NRDevicePropertyIsActive;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v33 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = [v10 valueForProperty:v30];
        v12 = [v11 BOOLValue];

        v13 = [v10 valueForProperty:v29];
        v14 = [v13 BOOLValue];

        v15 = [v10 valueForProperty:v28];
        v16 = [v15 BOOLValue];

        v17 = [v10 valueForProperty:v27];
        LOBYTE(v15) = [v17 BOOLValue];

        v8 |= v16;
        v7 |= v14 & v15 & (v12 ^ 1);
        v6 |= v12;
      }

      v5 = [obj countByEnumeratingWithState:&v32 objects:v48 count:16];
    }

    while (v5);

    if (v7)
    {
      self = v25;
      isUpdatingInRevLock = v25->_isUpdatingInRevLock;
      v19 = 1;
      goto LABEL_13;
    }

    self = v25;
  }

  else
  {

    v8 = 0;
    v6 = 0;
  }

  v19 = 0;
  isUpdatingInRevLock = (v6 | v8) & 1;
LABEL_13:
  v20 = isUpdatingInRevLock | PBisInMigrationSync();
  v21 = pbb_setupflow_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = self->_isUpdatingInRevLock;
    v23 = PBisInMigrationSync();
    *buf = 67110400;
    v37 = v8 & 1;
    v38 = 1024;
    v39 = v19;
    v40 = 1024;
    v41 = v6 & 1;
    v42 = 1024;
    v43 = v22;
    v44 = 1024;
    v45 = v23;
    v46 = 1024;
    v47 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "FoundTinker: %{BOOL}d foundClassicActivePairedWatch: %{BOOL}d foundArchived: %{BOOL}d _isUpdatingInRevLock: %{BOOL}d PBisInMigrationSync: %{BOOL}d ==> showPicker: %{BOOL}d", buf, 0x26u);
  }

  return v20;
}

- (void)pullPairedWatchAssets
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = sub_100009AB4();
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = objc_alloc_init(PBBridgeAssetsManager);
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_1000A3F68;
        v9[3] = &unk_100269800;
        v9[4] = v7;
        [v8 beginPullingAssetsForDevice:v7 completion:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)createDisplayLayoutManager
{
  v3 = +[FBSDisplayLayoutMonitorConfiguration configurationForContinuityDisplay];
  objc_initWeak(&location, self);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10000A2C8;
  v10 = &unk_10026A870;
  objc_copyWeak(&v11, &location);
  [v3 setTransitionHandler:&v7];
  monitor = self->_monitor;
  if (monitor)
  {
    [(FBSDisplayLayoutMonitor *)monitor invalidate:v7];
  }

  v5 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v3, v7, v8, v9, v10];
  v6 = self->_monitor;
  self->_monitor = v5;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)prewarmiCloudBackups
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Prewarm backups", v4, 2u);
  }

  v3 = +[COSBackupManager sharedBackupManager];
  [v3 reloadiCloudBackups];
}

- (void)registerForUserNotifications
{
  v3 = +[UNUserNotificationCenter currentNotificationCenter];
  [v3 setDelegate:self];
  [v3 requestAuthorizationWithOptions:7 completionHandler:&stru_10026A890];
}

- (void)refreshTabBar
{
  v3 = [(COSPreferencesAppController *)self rootViewController];
  v4 = [(COSPreferencesAppController *)self _viewControllers];
  [v3 setViewControllers:v4];

  v5 = [(COSPreferencesAppController *)self rootViewController];
  v6 = [v5 selectedViewController];
  [(COSPreferencesAppController *)self _tintTabBarWithViewController:v6];

  [(COSPreferencesAppController *)self _refreshTabBarVisibility];
}

- (void)_refreshTabBarVisibility
{
  v3 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v4 = [v3 valueForProperty:NRDevicePropertyIsAltAccount];
  v5 = [v4 BOOLValue];

  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[COSPreferencesAppController _refreshTabBarVisibility]";
    v15 = 1024;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: isTinker: %i", &v13, 0x12u);
  }

  v7 = [(COSPreferencesAppController *)self rootViewController];
  v8 = v7;
  if (v5)
  {
    v9 = [v7 viewControllers];
    v10 = [(COSPreferencesAppController *)self myWatchViewController];
    v11 = [v9 containsObject:v10];

    if (v11)
    {
      v12 = [(COSPreferencesAppController *)self myWatchViewController];
      [(COSPreferencesAppController *)self setSelectedTabViewController:v12];
    }

    v8 = [(COSPreferencesAppController *)self rootViewController];
    [v8 hideBarWithTransition:0];
  }

  else
  {
    [v7 showBarWithTransition:0];
  }
}

- (NRDevice)displayDevice
{
  v2 = [(COSPreferencesAppController *)self activeWatch];
  v3 = v2;
  if (!v2 || ([v2 valueForProperty:NRDevicePropertyIsPaired], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLValue"), v4, (v5 & 1) == 0))
  {
    v6 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();

    v3 = v6;
    if (!v6)
    {
      v7 = sub_100009AB4();
      v8 = +[NSDate distantPast];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v3 = 0;
        v12 = *v22;
        v13 = NRDevicePropertyLastActiveDate;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            v16 = [v15 valueForProperty:{v13, v21}];
            v17 = [v16 laterDate:v8];

            if (v17 == v16)
            {
              v18 = v16;

              v19 = v15;
              v3 = v19;
              v8 = v18;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v11);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (void)checkForBrokenDeviceAssertion
{
  activeWatchAssertion = self->_activeWatchAssertion;
  if (activeWatchAssertion)
  {
    v4 = [(NRActiveDeviceAssertion *)activeWatchAssertion isActive];
    v5 = pbb_bridge_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NanoRegistry DID NOT kill our watch assertion", v7, 2u);
      }
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NanoRegistry killed our watch assertion!", buf, 2u);
      }

      v5 = self->_activeWatchAssertion;
      self->_activeWatchAssertion = 0;
    }
  }
}

- (BOOL)isActivelyPairing
{
  v3 = [(COSPreferencesAppController *)self isInSetupFlow];
  if (v3)
  {
    setupController = self->_setupController;

    LOBYTE(v3) = [(COSSetupController *)setupController hasStartedPairing];
  }

  return v3;
}

- (void)markGalleryTabAsVisitedIfOnGalleryTab
{
  v3 = [(COSPreferencesAppController *)self rootViewController];
  v8 = [v3 viewControllers];

  v4 = [(COSPreferencesAppController *)self rootViewController];
  v5 = [v4 selectedIndex];

  if (v5 >= [v8 count])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v8 objectAtIndexedSubscript:v5];
  }

  v7 = [(COSPreferencesAppController *)self galleryViewController];

  if (v6 == v7)
  {
    [(COSPreferencesAppController *)self markGalleryTabAsVisited];
  }
}

- (void)resetSuspendAssertion
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[COSPreferencesAppController resetSuspendAssertion]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  [(NSTimer *)self->_taskCompletionTimeout invalidate];
  taskCompletionTimeout = self->_taskCompletionTimeout;
  self->_taskCompletionTimeout = 0;

  if (self->_suspendAssertion)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      suspendAssertion = self->_suspendAssertion;
      v8 = 138412290;
      v9 = suspendAssertion;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Releasing background assertion ID %@", &v8, 0xCu);
    }

    [(BKSProcessAssertion *)self->_suspendAssertion invalidate];
    v7 = self->_suspendAssertion;
    self->_suspendAssertion = 0;
  }
}

- (void)retriggerNRAlertIfNeeded
{
  launchedByNanoRegistry = self->_launchedByNanoRegistry;
  v4 = pbb_bridge_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (launchedByNanoRegistry)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skipped showing NRPairedDeviceRegistry retriggerUnpairInfoDialog", v6, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NRPairedDeviceRegistry retriggerUnpairInfoDialog dispatched", buf, 2u);
    }

    v4 = dispatch_get_global_queue(21, 0);
    dispatch_async(v4, &stru_10026AA50);
  }

  self->_launchedByNanoRegistry = 0;
}

- (void)dealloc
{
  v3 = +[PBBridgeIDSReachability sharedInstance];
  [v3 removeObserver:self];

  v4 = +[COSGlobalAlertPresentationCoordinator sharedInstance];
  [v4 removeAlertPresenterObserver:self];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = COSPreferencesAppController;
  [(COSPreferencesAppController *)&v6 dealloc];
}

- (BOOL)application:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v4 = a4;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "application:willContinueUserActivityWithType: - %@", &v7, 0xCu);
  }

  return 1;
}

- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_retainBlock(v8);
    v17 = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "application:continueUserActivity:restorationHandler: - %@; %@", &v17, 0x16u);
  }

  v11 = [(COSPreferencesAppController *)self urlForActivity:v7];
  if (v11)
  {
    v12 = pbb_bridge_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Opening URL %@ from continuity", &v17, 0xCu);
    }

    [(COSPreferencesAppController *)self application:self openURL:v11 options:&__NSDictionary0__struct];
  }

  else
  {
    v13 = [v7 activityType];
    v14 = [v13 isEqualToString:NSUserActivityTypeLiveActivity];

    if ((v14 & 1) == 0)
    {
      v15 = [(COSPreferencesRootController *)self->_settingsController popToRootViewControllerAnimated:0];
    }
  }

  return 1;
}

- (void)application:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "application:didFailToContinueUserActivityWithType: - %@; %@", &v9, 0x16u);
  }
}

- (void)application:(id)a3 didUpdateUserActivity:(id)a4
{
  v4 = a4;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "application:didUpdateUserActivity: - %@", &v6, 0xCu);
  }
}

- (void)application:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "application:performActionForShortcutItem:completionHandler: - %@", &v11, 0xCu);
  }

  v9 = +[COSShortcutController sharedController];
  v10 = [v9 issueActionForShortcut:v6];

  if (v7)
  {
    v7[2](v7, v10);
  }
}

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  v4 = a4;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "application:willFinishLaunchingWithOptions: - %@", &v7, 0xCu);
  }

  return 1;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v107 = a3;
  v108 = a4;
  self->_firstLaunch = 1;
  [(COSPreferencesAppController *)self _refreshShortCuts];
  objc_initWeak(&location, self);
  block[5] = _NSConcreteStackBlock;
  block[6] = 3221225472;
  block[7] = sub_1000A3E3C;
  block[8] = &unk_10026A828;
  objc_copyWeak(&v110, &location);
  PSSetCustomWatchCapabilityCheck();
  v6 = +[COSGlobalAlertPresentationCoordinator sharedInstance];
  [v6 addAlertPresenterObserver:self];

  if (PBIsInternalInstall())
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [NSBundle bundleWithIdentifier:@"com.apple.PBBridgeSupport"];
      v9 = [v8 objectForInfoDictionaryKey:@"PBBridgeVersion"];
      *buf = 138412290;
      *v113 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PBBridgeVersion: %@", buf, 0xCu);
    }
  }

  v10 = pbb_bridge_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v113 = v108;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "application:didFinishLaunchingWithOptions: - %@", buf, 0xCu);
  }

  [(COSPreferencesAppController *)self _prepareAppearances];
  [PSSearchEntry setSchemeNameOverride:@"bridge"];
  v118[0] = @"/System/Library/NanoPreferenceBundles/General/";
  v118[1] = @"/System/Library/NanoPreferenceBundles/Applications/";
  v118[2] = @"/System/Library/NanoPreferenceBundles/PrivacySettings/";
  v11 = [NSArray arrayWithObjects:v118 count:3];
  [PSSearchIndexOperation setPossibleBundleRoots:v11];

  [PSSearchIndexOperation setTopLevelManifestBundlePath:@"/System/Library/PrivateFrameworks/PBBridgeSupport.framework"];
  v12 = objc_alloc_init(PBBridgeCompanionController);
  bridgeController = self->_bridgeController;
  self->_bridgeController = v12;

  v14 = self->_bridgeController;
  v15 = objc_opt_new();
  [(PBBridgeCompanionController *)v14 setRemoteUIStyle:v15];

  [(PBBridgeCompanionController *)self->_bridgeController setDelegate:self];
  v16 = +[BPSBridgeAppContext shared];
  [v16 setBridgeController:self->_bridgeController];

  self->_pmSource = 0;
  [(COSPreferencesAppController *)self _registerForPowerNotifications];
  v17 = +[MCProfileConnection sharedConnection];
  [v17 addObserver:self];

  v18 = objc_opt_new();
  discoveryAssetPullRequests = self->_discoveryAssetPullRequests;
  self->_discoveryAssetPullRequests = v18;

  v20 = +[NSNotificationCenter defaultCenter];
  [v20 addObserver:self selector:"reloadAppearance:" name:UIAccessibilityDarkerSystemColorsStatusDidChangeNotification object:0];

  v21 = +[NSNotificationCenter defaultCenter];
  [v21 addObserver:self selector:"updateForRemoteActivity:" name:PBNotifyClientOfActivityNotification object:0];

  v22 = +[NSNotificationCenter defaultCenter];
  [v22 addObserver:self selector:"deviceIsSetup:" name:NRPairedDeviceRegistryDeviceIsSetupNotification object:0];

  v23 = +[NSNotificationCenter defaultCenter];
  [v23 addObserver:self selector:"deviceUnpaired:" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];

  v24 = +[NSNotificationCenter defaultCenter];
  [v24 addObserver:self selector:"pairingFailed:" name:NRPairedDeviceRegistryDeviceDidFailToPairNotification object:0];

  v25 = +[NSNotificationCenter defaultCenter];
  [v25 addObserver:self selector:"enteredCompatibilityState:" name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];

  v26 = +[NSNotificationCenter defaultCenter];
  [v26 addObserver:self selector:"initialPairingFailed:" name:@"COSDevicePairingFailed" object:0];

  v27 = +[NSNotificationCenter defaultCenter];
  [v27 addObserver:self selector:"resetSetupFlowInternalSettings" name:@"_COSInternalSettingForceSetupFlow" object:0];

  v28 = +[NSNotificationCenter defaultCenter];
  [v28 addObserver:self selector:"messageSendFailed:" name:PBBridgeMessageFailedToSend object:0];

  v29 = +[NSNotificationCenter defaultCenter];
  [v29 addObserver:self selector:"discoveredAdvertisingWatch:" name:PPDeviceWasDiscoveredNotification object:0];

  v30 = +[NSNotificationCenter defaultCenter];
  [v30 addObserver:self selector:"sizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v31 = [(COSPreferencesAppController *)self _tabBarController];
  rootViewController = self->_rootViewController;
  self->_rootViewController = v31;

  v33 = +[UIScreen mainScreen];
  [v33 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v42 = [[UIWindow alloc] initWithContentRect:{v35, v37, v39, v41}];
  window = self->_window;
  self->_window = v42;

  [(UIWindow *)self->_window setAutoresizingMask:16];
  [(UIWindow *)self->_window _accessibilitySetInterfaceStyleIntent:2];
  v44 = self->_window;
  v45 = BPSBridgeTintColor();
  [(UIWindow *)v44 setTintColor:v45];

  [(COSPreferencesAppController *)self loadSettingsController];
  v46 = +[UISlider appearance];
  v47 = BPSBridgeTintColor();
  [v46 setTintColor:v47];

  v48 = [(COSPreferencesAppController *)self rootViewController];
  v49 = [v48 viewControllers];
  v50 = [v49 count] == 0;

  if (v50)
  {
    v51 = [(COSPreferencesAppController *)self rootViewController];
    v52 = [(COSPreferencesAppController *)self _viewControllers];
    [v51 setViewControllers:v52];

    v53 = [(COSPreferencesAppController *)self rootViewController];
    v54 = [v53 selectedViewController];
    [(COSPreferencesAppController *)self _tintTabBarWithViewController:v54];
  }

  v55 = self->_window;
  v56 = [(COSPreferencesAppController *)self rootViewController];
  [(UIWindow *)v55 setRootViewController:v56];

  v57 = [NSNumber numberWithInt:480];
  v58 = [NSNumber numberWithInt:0];
  v59 = [NSDictionary dictionaryWithObjectsAndKeys:v57, @"kPreferenceTimeoutLimitKey", v58, @"kPreferencePositionTimeStampKey", @"bridge:", @"kPreferencePositionKey", 0];

  v60 = +[NSUserDefaults standardUserDefaults];
  [v60 registerDefaults:v59];
  [v60 synchronize];
  v61 = [v60 objectForKey:@"kPreferenceTimeoutLimitKey"];
  [v61 doubleValue];
  self->_timeoutLimit = v62;

  [(COSPreferencesAppController *)self evaluateIfUpdatingInSetupFlowOnLaunch];
  v63 = [v108 objectForKey:UIApplicationLaunchOptionsURLKey];
  if (v63)
  {
    goto LABEL_10;
  }

  if (self->_isUpdatingGizmoInSetupFlow)
  {
    goto LABEL_11;
  }

  v63 = [(COSPreferencesAppController *)self oneTimeJumpURL];
  if ([(COSPreferencesAppController *)self shouldShowWatchPicker])
  {
    v71 = objc_loadWeakRetained(&location);
    v72 = [NSURL URLWithString:@"root=ActiveWatch"];
    v73 = sub_10000DB38();
    if (v73)
    {
      v74 = 0;
    }

    else
    {
      v74 = sub_10000D61C();
    }

    [v71 processURL:v72 animated:!v74 fromSearch:0];

    goto LABEL_61;
  }

  if (v63)
  {
    [(COSPreferencesAppController *)self processURL:v63 animated:0 fromSearch:0];
  }

  else
  {
    if (!CFPreferencesGetAppBooleanValue(@"kShouldJumpToFaceGalleryKey", @"com.apple.Bridge", 0))
    {
      v71 = [v60 objectForKey:@"kPreferencePositionTimeStampKey"];
      v101 = +[NSDate date];
      v102 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v71 intValue]);
      [v101 timeIntervalSinceDate:v102];
      v104 = v103;

      if (v71)
      {
        v105 = v104;
        if (v105 <= 0.0 || self->_timeoutLimit <= v105)
        {
          goto LABEL_62;
        }
      }

      v106 = [v60 objectForKey:@"kPreferencePositionKey"];
      v72 = [NSURL URLWithString:v106];

      self->_processedPositionPath = 1;
      [(COSPreferencesAppController *)self processURL:v72];
LABEL_61:

LABEL_62:
      goto LABEL_10;
    }

    v100 = [(COSPreferencesAppController *)self galleryViewController];
    [(COSPreferencesAppController *)self setSelectedTabViewController:v100];

    [(COSPreferencesAppController *)self markGalleryTabAsVisited];
  }

LABEL_10:

LABEL_11:
  [(UIWindow *)self->_window makeKeyAndVisible];
  v64 = +[NRPairedDeviceRegistry sharedInstance];
  v65 = [v64 status];

  v66 = sub_100009A24();
  v67 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v68 = [v67 valueForProperty:NRDevicePropertyIsAltAccount];
  v69 = [v68 BOOLValue];

  if (v67 && (PBPairedSyncComplete() & 1) == 0)
  {
    v70 = (sub_10002EAFC() | v69) ^ 1;
  }

  else
  {
    v70 = 0;
  }

  v75 = PBisInMigrationSync();
  v76 = pbb_setupflow_log();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v113 = v75;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "isInMigrationSync - %{BOOL}d", buf, 8u);
  }

  if (v65 == 5 || ((self->_isUpdatingGizmoInSetupFlow | v70) & 1) == 0)
  {
    v77 = 0;
  }

  else
  {
    v77 = (v66 | v75) ^ 1;
  }

  v78 = pbb_setupflow_log();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    isUpdatingGizmoInSetupFlow = self->_isUpdatingGizmoInSetupFlow;
    *buf = 67109888;
    *v113 = v77 & 1;
    *&v113[4] = 1024;
    *&v113[6] = isUpdatingGizmoInSetupFlow;
    v114 = 1024;
    v115 = v70 & 1;
    v116 = 1024;
    v117 = v65 == 5;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Showing Setup (%{BOOL}d}) -- _isUpdatingGizmoInSetupFlow %{BOOL}d / setupIsInSyncTrap %{BOOL}d isUnpairing: %{BOOL}d", buf, 0x1Au);
  }

  if (v65 == 5)
  {
    [(COSPreferencesAppController *)self presentUnpairingViewControllerAnimated:1];
  }

  else if (v77)
  {
    if (v70)
    {
      v80 = 3;
    }

    else
    {
      v82 = [UIApp bridgeController];
      [v82 beginSetupTransaction];

      v80 = 1;
    }

    [(COSPreferencesAppController *)self presentSetupFlowWithMode:v80 animated:0];
  }

  else if (!self->_isUpdatingInRevLock)
  {
    if (v66)
    {
      v81 = pbb_setupflow_log();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "SkipSetupFlow default is set, Skipping Setup flow!!!", buf, 2u);
      }
    }

    [(COSPreferencesAppController *)self pullPairedWatchAssets];
  }

  v83 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  if (v83)
  {
  }

  else
  {
    v84 = sub_100009AB4();
    v85 = [v84 count] == 0;

    if (!v85)
    {
      [(COSPreferencesAppController *)self deviceBecameInactive:0];
    }
  }

  if (!(v77 & 1 | (v65 == 5)) && ((self->_isUpdatingInRevLock | v70 | v75) & 1) == 0)
  {
    v86 = +[ACXDeviceConnection sharedDeviceConnection];
    v87 = +[NRPairedDeviceRegistry sharedInstance];
    v88 = [v87 getActivePairedDevice];
    [v86 retryPendingAppInstallationsForPairedDevice:v88];
  }

  if (PBIsInternalInstall())
  {
    [PBBridgeAssetsReachabilityMonitor checkServerReachabilityWithCompletion:&stru_10026A848];
  }

  v89 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v90 = dispatch_queue_attr_make_with_qos_class(v89, QOS_CLASS_BACKGROUND, 0);

  v91 = dispatch_queue_create("com.apple.BackupPrewarm", v90);
  queue = self->_queue;
  self->_queue = v91;

  v93 = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A3F60;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(v93, block);
  [(COSPreferencesAppController *)self createDisplayLayoutManager];
  [(COSPreferencesAppController *)self registerForUserNotifications];
  if (PBIsInternalInstall())
  {
    v94 = [v107 connectedScenes];
    v95 = [v94 anyObject];

    if (v95)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v96 = [v95 screenshotService];
        [v96 setDelegate:self];
      }
    }
  }

  v97 = objc_alloc_init(COSSettingsIntentDonationHook);
  intentDonationHook = self->_intentDonationHook;
  self->_intentDonationHook = v97;

  [(COSSettingsIntentDonationHook *)self->_intentDonationHook registerHandler];
  objc_destroyWeak(&v110);
  objc_destroyWeak(&location);

  return 1;
}

- (void)applicationWillTerminate:(id)a3
{
  v4 = +[MCProfileConnection sharedConnection];
  [v4 removeObserver:self];

  v5 = [(COSPreferencesRootController *)self->_settingsController popToRootViewControllerAnimated:0];
  setupController = self->_setupController;
  if (setupController)
  {
    [(COSSetupController *)setupController completePairingMetricForAppTermination];
  }

  window = self->_window;
  self->_window = 0;

  v8 = +[NSUserDefaults standardUserDefaults];
  [v8 setObject:&stru_10026E598 forKey:@"kPreferencePositionKey"];
  [v8 synchronize];
}

- (void)applicationDidEnterBackground:(id)a3
{
  [(COSPreferencesAppController *)self checkForBrokenDeviceAssertion];
  [(COSPreferencesAppController *)self setAppDelegateOnDismissalBlock:0];
  if (([UIApp isSuspendedEventsOnly] & 1) == 0)
  {
    self->_backgrounded = 1;
  }

  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109378;
    *v23 = 767;
    *&v23[4] = 2080;
    *&v23[6] = "[COSPreferencesAppController applicationDidEnterBackground:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%d %s", &v22, 0x12u);
  }

  if (self->_isUpdatingGizmoInSetupFlow && [(COSSetupController *)self->_setupController resolvedPreconditionsForSoftwareUpdate])
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      suspendAssertion = self->_suspendAssertion;
      v22 = 136315394;
      *v23 = "[COSPreferencesAppController applicationDidEnterBackground:]";
      *&v23[8] = 2112;
      *&v23[10] = suspendAssertion;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: In software update flow? assertion ID %@", &v22, 0x16u);
    }

    [(COSPreferencesAppController *)self _refreshShortCuts];
    return;
  }

  if ([(COSPreferencesAppController *)self shouldConsiderHoldingSuspendAssertion])
  {
    [(COSPreferencesAppController *)self _extendBackgroundAssertion];
    [(COSPreferencesAppController *)self _createIdleNotificationTimer];
    if (self->_suspendAssertion)
    {
      v7 = pbb_bridge_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_suspendAssertion;
        v9 = "NO";
        syncTrapUICompleted = self->_syncTrapUICompleted;
        if (self->_syncTrapUIEnabled)
        {
          v11 = "YES";
        }

        else
        {
          v11 = "NO";
        }

        v22 = 136315906;
        *v23 = "[COSPreferencesAppController applicationDidEnterBackground:]";
        if (syncTrapUICompleted)
        {
          v9 = "YES";
        }

        *&v23[8] = 2112;
        *&v23[10] = v8;
        v24 = 2080;
        v25 = v11;
        v26 = 2080;
        v27 = v9;
        v12 = "%s: Already have background assertion %@ because _syncTrapUIEnabled:%s _syncTrapUICompleted:%s";
LABEL_29:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v12, &v22, 0x2Au);
      }
    }

    else
    {
      v14 = [[BKSProcessAssertion alloc] initWithPID:getpid() flags:1 reason:10004 name:@"Bridge-Setup-Flow" withHandler:&stru_10026A8B0];
      v15 = self->_suspendAssertion;
      self->_suspendAssertion = v14;

      v7 = pbb_bridge_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_suspendAssertion;
        v17 = "NO";
        v18 = self->_syncTrapUICompleted;
        if (self->_syncTrapUIEnabled)
        {
          v19 = "YES";
        }

        else
        {
          v19 = "NO";
        }

        v22 = 136315906;
        *v23 = "[COSPreferencesAppController applicationDidEnterBackground:]";
        if (v18)
        {
          v17 = "YES";
        }

        *&v23[8] = 2112;
        *&v23[10] = v16;
        v24 = 2080;
        v25 = v19;
        v26 = 2080;
        v27 = v17;
        v12 = "%s: Created background assertion %@  because _syncTrapUIEnabled:%s _syncTrapUICompleted:%s";
        goto LABEL_29;
      }
    }

    v20 = pbb_setupflow_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_suspendAssertion;
      v22 = 136315394;
      *v23 = "[COSPreferencesAppController applicationDidEnterBackground:]";
      *&v23[8] = 2112;
      *&v23[10] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Bridge Background Assertion: %@", &v22, 0x16u);
    }

    return;
  }

  if ([(COSPreferencesAppController *)self isActivelyPairing])
  {
    v13 = [(COSSetupController *)self->_setupController linkUpgradeMonitor];
    [v13 resetCompanionLinkPreference];
  }

  [(COSPreferencesAppController *)self generateURL];
  [(COSPreferencesAppController *)self resetSuspendAssertion];
}

- (void)applicationWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v81 = 825;
    *&v81[4] = 2080;
    *&v81[6] = "[COSPreferencesAppController applicationWillEnterForeground:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  [(COSPreferencesAppController *)self checkForBrokenDeviceAssertion];
  if (!self->_suspendAssertion && (PBHasSetupDevice() & 1) == 0 && (sub_100009A24() & 1) == 0)
  {
    v6 = [(COSSetupController *)self->_setupController pairingCompatiblity];
    v7 = [v6 runUpdateInSetup];

    if ((v7 & 1) == 0)
    {
      v14 = pbb_bridge_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Foreground Pre-Setup!", buf, 2u);
      }

      goto LABEL_67;
    }
  }

  activeWatch = self->_activeWatch;
  if (activeWatch)
  {
    v9 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();

    if (activeWatch != v9)
    {
      v10 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
      [(COSPreferencesAppController *)self updateActiveWatch:v10];

      v11 = +[NRPairedDeviceRegistry sharedInstance];
      v12 = [v11 compatibilityState];

      if (v12 != 2)
      {
        [(COSPreferencesAppController *)self popToTopLevelSettingsAnimated:0];
        goto LABEL_68;
      }

      v13 = [(COSPreferencesAppController *)self rootViewController];
      v14 = [v13 presentedViewController];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 topViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v17 = pbb_bridge_log();
        v18 = v17;
        if (isKindOfClass)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Disabling paired device list back button for update state", buf, 2u);
          }

          [v15 disableBackButton];
          goto LABEL_30;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          *buf = 138412290;
          *v81 = v32;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Unexpected topListController: %@", buf, 0xCu);
        }
      }

      else
      {
        v15 = pbb_bridge_log();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        v30 = objc_opt_class();
        v18 = NSStringFromClass(v30);
        *buf = 138412290;
        *v81 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unexpected presentedViewController: %@", buf, 0xCu);
      }

LABEL_30:
LABEL_67:

      goto LABEL_68;
    }
  }

  if (([v4 isSuspendedUnderLock] & 1) == 0 && !self->_setupController)
  {
    +[NSUserDefaults resetStandardUserDefaults];
    v14 = +[NSUserDefaults standardUserDefaults];
    v19 = [v14 objectForKey:@"kPreferencePositionKey"];
    [v14 setObject:&stru_10026E598 forKey:@"kPreferencePositionKey"];
    v20 = [v14 objectForKey:@"kPreferenceTimeoutLimitKey"];
    [v20 doubleValue];
    self->_timeoutLimit = v21;

    v22 = [v14 objectForKey:@"kPreferencePositionTimeStampKey"];
    v23 = +[NSDate date];
    v24 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v22 intValue]);
    [v23 timeIntervalSinceDate:v24];
    v26 = v25;
    timeoutLimit = self->_timeoutLimit;

    v28 = [(COSPreferencesAppController *)self oneTimeJumpURL];
    v74 = v22;
    if (v28)
    {
      v29 = 1;
      self->_loadingExternalURL = 1;
      [(COSPreferencesAppController *)self processURL:v28];
    }

    else if (v22 && v26 >= timeoutLimit)
    {
      v29 = 1;
    }

    else
    {
      v33 = [NSURL URLWithString:v19];
      v34 = [(COSPreferencesAppController *)self keyValueDictionaryForURL:v33];

      v70 = v34;
      v69 = [v34 objectForKey:@"root"];
      v68 = SFObjectAndOffsetForURLPair();
      v35 = [v68 objectForKey:@"object"];
      if (v35)
      {
        v72 = v19;
        v36 = self->_settingsController;
        v37 = [(COSPreferencesRootController *)v36 rootListController];
        v38 = [v37 specifierForID:v35];

        if (!v38)
        {
          v39 = [(COSPreferencesRootController *)v36 rootListController];
          v38 = [v39 specifierForBundle:v35];
        }

        v29 = v38 == 0;
        v28 = 0;
        v19 = v72;
      }

      else
      {
        v29 = 1;
      }
    }

    if (!self->_loadingExternalURL && !self->_processingProfileURL)
    {
      v71 = v28;
      v73 = v19;
      if (v29)
      {
        if (v26 >= timeoutLimit)
        {
          if (([(PSSplitViewController *)self->_settingsSplitViewController isCollapsed]& 1) == 0)
          {
            v40 = [(COSPreferencesRootController *)self->_settingsController rootListController];
            [v40 selectGeneralCategory];
          }

          [(COSPreferencesRootController *)self->_settingsController dismissViewControllerAnimated:0 completion:0];
          [(COSPreferencesAppController *)self popToRootOfSettingsSelectGeneral:0 performWithoutDeferringTransitions:1];
          v41 = [(COSPreferencesRootController *)self->_settingsController topViewController];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v42 = [v41 table];
            v43 = [v42 indexPathForSelectedRow];
            [v42 deselectRowAtIndexPath:v43 animated:0];
          }
        }

        v44 = [(COSPreferencesRootController *)self->_settingsController topViewController];
        v45 = v44;
        if (v26 >= timeoutLimit && [v44 conformsToProtocol:&OBJC_PROTOCOL___PSViewControllerOffsetProtocol])
        {
          v46 = [v45 table];
          [v46 setContentOffset:{0.0, 0.0}];
        }
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v47 = [(COSPreferencesRootController *)self->_settingsController viewControllers];
      v48 = [v47 countByEnumeratingWithState:&v75 objects:v79 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v76;
        do
        {
          for (i = 0; i != v49; i = i + 1)
          {
            if (*v76 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v75 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v52 shouldReloadSpecifiersOnResume])
            {
              [v52 reloadSpecifiers];
            }
          }

          v49 = [v47 countByEnumeratingWithState:&v75 objects:v79 count:16];
        }

        while (v49);
      }

      v28 = v71;
      v19 = v73;
    }

    [v14 synchronize];

    goto LABEL_67;
  }

LABEL_68:
  WeakRetained = objc_loadWeakRetained(&self->_selectedTabViewController);
  v54 = WeakRetained;
  if (WeakRetained == self->_settingsSplitViewController)
  {
    v55 = [(COSPreferencesRootController *)self->_settingsController viewControllers];
    v56 = [v55 count];

    if (!v56)
    {
      [(COSPreferencesAppController *)self startScanningForNearbyDevices];
    }
  }

  else
  {
  }

  [(COSPreferencesAppController *)self markGalleryTabAsVisitedIfOnGalleryTab];
  [(COSPreferencesAppController *)self _refreshTabBarVisibility];
  if (![(COSPreferencesAppController *)self isInSetupFlow])
  {
    v57 = +[ACXDeviceConnection sharedDeviceConnection];
    v58 = +[NRPairedDeviceRegistry sharedInstance];
    v59 = [v58 getActivePairedDevice];
    [v57 retryPendingAppInstallationsForPairedDevice:v59];
  }

  v60 = +[PSListController appearance];
  v61 = [v60 usesDarkTheme];

  if ((v61 & 1) == 0)
  {
    v62 = pbb_bridge_log();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Error: PSListController is using the wrong theme, resetting appearance!", buf, 2u);
    }

    [(COSPreferencesAppController *)self reloadAppearance:0];
  }

  v63 = sub_10000DB38();
  if (v63)
  {
    v64 = v63;
    v65 = [(COSGetStartedViewController *)self->_getStartedViewController parentViewController];
    if (v65)
    {
      v66 = v65;
      v67 = [(COSPreferencesAppController *)self isActivelyPairing];

      if ((v67 & 1) == 0)
      {
        [(COSPreferencesAppController *)self dismissSetupFlowComplete:1 animated:0];
      }
    }

    else
    {
    }
  }

  [(COSPreferencesAppController *)self createDisplayLayoutManager];
}

- (void)applicationDidBecomeActive:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 67109378;
    *v24 = 964;
    *&v24[4] = 2080;
    *&v24[6] = "[COSPreferencesAppController applicationDidBecomeActive:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%d %s", &v23, 0x12u);
  }

  [(COSPreferencesAppController *)self checkForBrokenDeviceAssertion];
  v5 = +[COSReachabilityMonitor sharedMonitor];
  [v5 startMonitoring];

  if ([(COSPreferencesAppController *)self isActivelyPairing])
  {
    [(COSPreferencesAppController *)self markGalleryTabAsVisitedIfOnGalleryTab];
  }

  else
  {
    v6 = [(COSGetStartedViewController *)self->_getStartedViewController parentViewController];

    if (!v6)
    {
      [(COSPreferencesAppController *)self pullPairedWatchAssets];
    }

    [(COSPreferencesAppController *)self markGalleryTabAsVisitedIfOnGalleryTab];
    v7 = [(COSPreferencesAppController *)self activeWatch];

    if (v7)
    {
      [(COSPreferencesAppController *)self presentGetConnectedAlertIfNeededWithWifi:1];
    }
  }

  [(COSPreferencesAppController *)self resetSuspendAssertion];
  if (self->_idleNotificationTimer)
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Canceling idle notification timer", &v23, 2u);
    }

    [(NSTimer *)self->_idleNotificationTimer invalidate];
    idleNotificationTimer = self->_idleNotificationTimer;
    self->_idleNotificationTimer = 0;
  }

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"systemDidWake:" name:@"PreferencesSystemDidWake" object:0];
  v11 = +[NRPairedDeviceRegistry sharedInstance];
  v12 = [v11 status];

  v13 = +[NRPairedDeviceRegistry sharedInstance];
  v14 = [v13 compatibilityState];

  v15 = pbb_bridge_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NRPairedDeviceRegistryStatusCodeString();
    v17 = [NSNumber numberWithUnsignedShort:v14];
    v23 = 136315650;
    *v24 = "[COSPreferencesAppController applicationDidBecomeActive:]";
    *&v24[8] = 2112;
    *&v24[10] = v16;
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s NR State %@ compatibilityState: %@", &v23, 0x20u);
  }

  [(COSPreferencesAppController *)self updateNRStatusForPresentingOrDismissingUnpairingUI:v12];
  v18 = pbb_bridge_log();
  if (os_signpost_enabled(v18))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "HealthCountryMonitorControl", "", &v23, 2u);
  }

  +[HKCountryMonitorControl checkCurrentCountry];
  v19 = pbb_bridge_log();
  if (os_signpost_enabled(v19))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "HealthCountryMonitorControl", "", &v23, 2u);
  }

  if (self->_firstLaunch)
  {
    [(COSPreferencesAppController *)self retriggerNRAlertIfNeeded];
    self->_firstLaunch = 0;
  }

  else if (self->_settingsWasResigned)
  {
    self->_settingsWasResigned = 0;
    [v10 postNotificationName:@"com.apple.PreferencesApp.willBecomeActive" object:0];
    [(COSPreferencesAppController *)self checkIfNRRetriggerConditions];
    [(COSSetupController *)self->_setupController clearIdleUserNotification];
    v20 = +[PSListController appearance];
    v21 = [v20 usesDarkTheme];

    if ((v21 & 1) == 0)
    {
      v22 = pbb_bridge_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Error: PSListController is using the wrong theme, resetting appearance!", &v23, 2u);
      }

      [(COSPreferencesAppController *)self reloadAppearance:0];
    }
  }
}

- (void)_createIdleNotificationTimer
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "idle notification timer started", v7, 2u);
  }

  [(NSTimer *)self->_idleNotificationTimer invalidate];
  v4 = [NSTimer timerWithTimeInterval:self target:"postIdleNotification:" selector:0 userInfo:0 repeats:300.0];
  idleNotificationTimer = self->_idleNotificationTimer;
  self->_idleNotificationTimer = v4;

  v6 = +[NSRunLoop currentRunLoop];
  [v6 addTimer:self->_idleNotificationTimer forMode:NSRunLoopCommonModes];
}

- (void)postIdleNotification:(id)a3
{
  v4 = a3;
  if (self->_syncTrapUIEnabled || self->_syncTrapUICompleted)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "not posting idle notification";
      v7 = buf;
LABEL_5:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "posting notification telling user to return to watch setup", v11, 2u);
    }

    setupController = self->_setupController;
    if (setupController)
    {
      [(COSSetupController *)setupController postUserNotificationForController:0];
      goto LABEL_7;
    }

    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v6 = "Trying to post idle notification, but setup controller doesn't exist, skipping";
      v7 = &v10;
      goto LABEL_5;
    }
  }

LABEL_7:
}

- (void)presentGetConnectedAlertIfNeededWithWifi:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"DisableGetConnectedAlert"];

  if (v8)
  {
    if (v6)
    {
      v6[2](v6, 1);
    }
  }

  else
  {
    +[COSReachabilityMonitor sharedMonitor];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000A5758;
    v11 = v10[3] = &unk_10026A928;
    v14 = a3;
    v12 = self;
    v13 = v6;
    v9 = v11;
    [v9 updateRadioStateWithCompletion:v10];
  }
}

- (void)presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(COSPreferencesAppController *)self rootViewController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A5F60;
  v17[3] = &unk_10026A978;
  v17[4] = self;
  v6 = v4;
  v18 = v6;
  v7 = objc_retainBlock(v17);
  v8 = [v5 presentedViewController];

  if (v8)
  {
    v9 = 0;
    do
    {
      v8 = v5;

      v5 = [v8 presentedViewController];

      v10 = [v5 presentedViewController];

      v9 = v8;
    }

    while (v10);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 presentingViewController];
      *buf = 138412546;
      v20 = v5;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dismissing  alert: %@ presented by: %@", buf, 0x16u);
    }

    v13 = [v5 presentingViewController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000A618C;
    v14[3] = &unk_100268F10;
    v16 = v7;
    v15 = v8;
    [v13 dismissViewControllerAnimated:1 completion:v14];
  }

  else
  {
    (v7[2])(v7, v5);
  }
}

- (void)checkIfNRRetriggerConditions
{
  if (self->_backgrounded && ![(COSPreferencesAppController *)self isInSetupFlow])
  {
    [(COSPreferencesAppController *)self retriggerNRAlertIfNeeded];
  }

  self->_backgrounded = 0;
}

- (id)_appSuspendStateDescription
{
  v2 = [UIApp isSuspended];
  v3 = [UIApp isSuspendedEventsOnly];
  return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s = (isSuspended %d / isSuspendedEventsOnly %d / isSuspendedUnderLock %d)", "-[COSPreferencesAppController _appSuspendStateDescription]", v2, v3, [UIApp isSuspendedUnderLock]);
}

- (void)applicationWillResignActive:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(Resign Active) End Scanning for Nearby Devices...", v9, 2u);
  }

  v5 = +[PPDiscoveryManager sharedDiscoveryManager];
  [v5 end];

  v6 = +[COSReachabilityMonitor sharedMonitor];
  [v6 stopMonitoring];

  if ([(BKSApplicationStateMonitor *)self->_appStateMonitor mostElevatedApplicationStateForPID:getpid()]== 8)
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109378;
      v9[1] = 1226;
      v10 = 2080;
      v11 = "[COSPreferencesAppController applicationWillResignActive:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%d %s", v9, 0x12u);
    }

    self->_settingsWasResigned = 1;
    self->_loadingExternalURL = 0;
    [(COSPreferencesAppController *)self _deregisterForPowerNotifications];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"com.apple.PreferencesApp.willResignActive" object:0];
  }
}

- (BOOL)_devicePickerBeingPresented
{
  v3 = [(COSPreferencesAppController *)self rootViewController];
  v4 = [v3 presentedViewController];
  if (v4)
  {
    v5 = [(COSPreferencesAppController *)self rootViewController];
    v6 = [v5 presentedViewController];
    WeakRetained = objc_loadWeakRetained(&self->_devicePickerNavigationController);
    v8 = v6 == WeakRetained;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v64 = a3;
  v67 = a4;
  v65 = a5;
  v66 = [v65 objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
  if (!self->_setupController && !self->_unpairingVC)
  {
    v14 = pbb_bridge_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v85 = v66;
      *&v85[8] = 2112;
      *v86 = v67;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Launched by %@ with URL: %@", buf, 0x16u);
    }

    if ([v66 isEqualToString:@"com.apple.sharingd"])
    {
      v63 = [v67 query];
      [v63 componentsSeparatedByString:@"&"];
      v82 = 0u;
      v83 = 0u;
      *location = 0u;
      v15 = v81 = 0u;
      v16 = [v15 countByEnumeratingWithState:location objects:buf count:16];
      if (v16)
      {
        v17 = *v81;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v81 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = [*(location[1] + i) componentsSeparatedByString:@"="];
            if ([v19 count] == 2)
            {
              v20 = [v19 firstObject];
              v21 = [v20 isEqualToString:@"action"];

              if (v21)
              {
                v22 = [v19 lastObject];

                goto LABEL_26;
              }
            }
          }

          v16 = [v15 countByEnumeratingWithState:location objects:buf count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v22 = 0;
LABEL_26:

      v26 = [v22 isEqualToString:@"StartPairing"];
      if (v26)
      {
        if (![(COSPreferencesAppController *)self _devicePickerBeingPresented])
        {
          v27 = sub_100009AB4();
          v28 = [v27 count] == 0;

          if (!v28)
          {
            v29 = pbb_bridge_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Requesting device picker for prox pairing.", buf, 2u);
            }

            objc_initWeak(buf, self);
            v74[0] = _NSConcreteStackBlock;
            v74[1] = 3221225472;
            v74[2] = sub_1000A715C;
            v74[3] = &unk_10026A9A0;
            objc_copyWeak(&v79, buf);
            v75 = v67;
            v76 = v66;
            v77 = v64;
            v78 = v65;
            [(COSPreferencesAppController *)self setAppDelegateOnDismissalBlock:v74];
            [(COSPreferencesAppController *)self presentDevicePicker];

            objc_destroyWeak(&v79);
            objc_destroyWeak(buf);

            goto LABEL_6;
          }
        }

        sub_10002ECB0();
        [PBBridgeCAReporter incrementSuccessType:18];
        [(COSPreferencesAppController *)self presentNewPairingFlowIfPossible];
        v43 = pbb_setupflow_log();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Launched to Prox Pairing", buf, 2u);
        }

        goto LABEL_60;
      }

      v30 = [v67 pathExtension];
      if ([v30 caseInsensitiveCompare:@"watchface"])
      {
        v31 = [v67 scheme];
        v32 = [v31 caseInsensitiveCompare:@"watchface"] == 0;

        if (!v32 && ![(COSPreferencesAppController *)self _isProductKitUrl:v67])
        {
          v43 = pbb_bridge_log();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v85 = v63;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Unsupported URL query: %@", buf, 0xCu);
          }

LABEL_60:

          goto LABEL_61;
        }
      }

      else
      {
      }

      [(COSPreferencesAppController *)self presentGreenfieldViewControllerWithUrl:v67 options:v65];
LABEL_61:

LABEL_62:
      v12 = 1;
      goto LABEL_7;
    }

    self->_loadingExternalURL = 1;
    v23 = [v67 scheme];
    v24 = [v23 caseInsensitiveCompare:@"bridge"] == 0;

    if (v24)
    {
      v33 = [(COSPreferencesAppController *)self myWatchViewController];
      [(COSPreferencesAppController *)self setSelectedTabBarViewController:v33];

      v34 = [v67 resourceSpecifier];
      LODWORD(v33) = [v34 hasPrefix:@"FOLLOWUP"];

      if (v33)
      {
        v35 = objc_alloc_init(COSAppleIDController);
        v36 = [[COSBuddyNavigationController alloc] initWithRootViewController:v35];
        v37 = [(COSBuddyNavigationController *)v36 navigationBar];
        BPSApplyStyleToNavBarOptions();

        v38 = [UIBarButtonItem alloc];
        v39 = +[NSBundle mainBundle];
        v40 = [v39 localizedStringForKey:@"CANCEL" value:&stru_10026E598 table:@"Localizable"];
        v41 = [v38 initWithTitle:v40 style:0 target:self action:"doneFollowUp:"];

        v42 = [(COSAppleIDController *)v35 navigationItem];
        [v42 setLeftBarButtonItem:v41];

        [(COSPreferencesRootController *)self->_settingsController presentViewController:v36 animated:1 completion:&stru_10026A9C0];
      }

      else
      {
        [(COSPreferencesAppController *)self processURL:v67];
      }

      goto LABEL_52;
    }

    v25 = [v67 pathExtension];
    if (v25)
    {
      v5 = [v67 pathExtension];
      if (![v5 caseInsensitiveCompare:@"watchface"])
      {

LABEL_49:
        v46 = pbb_bridge_log();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Presenting add watch face flow", buf, 2u);
        }

        [(COSPreferencesAppController *)self presentGreenfieldViewControllerWithUrl:v67 options:v65];
        goto LABEL_52;
      }
    }

    v44 = [v67 scheme];
    v45 = [v44 caseInsensitiveCompare:@"watchface"];

    if (v25)
    {

      if (!v45)
      {
        goto LABEL_49;
      }
    }

    else if (!v45)
    {
      goto LABEL_49;
    }

    if ([(COSPreferencesAppController *)self _isProductKitUrl:v67])
    {
      [(COSPreferencesAppController *)self presentGreenfieldViewControllerWithUrl:v67 options:v65];
LABEL_52:
      v47 = pbb_bridge_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [NSNumber numberWithBool:1];
        *buf = 138412802;
        *v85 = v67;
        *&v85[8] = 2112;
        *v86 = v48;
        *&v86[8] = 2112;
        v87[0] = v66;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "URL: %@ Will Open: %@ (from sourceApplication %@)", buf, 0x20u);
      }

      goto LABEL_62;
    }

    v49 = [v67 scheme];
    v50 = [v49 caseInsensitiveCompare:@"facegallery"] == 0;

    if (v50)
    {
      v54 = [(COSPreferencesAppController *)self galleryViewController];
      v55 = pbb_bridge_log();
      v56 = v55;
      if (v54)
      {
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Switching to face gallery tab", buf, 2u);
        }

        v57 = [(COSPreferencesAppController *)self rootViewController];
        [v57 setSelectedViewController:v54];

        [(COSPreferencesAppController *)self setSelectedTabViewController:v54];
      }

      else
      {
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Opened URL for face gallery but view controller has not been initialized yet.", buf, 2u);
        }
      }

      goto LABEL_52;
    }

    v51 = [v67 scheme];
    v52 = +[NSBundle mainBundle];
    v53 = [v52 bundleIdentifier];
    if ([v51 caseInsensitiveCompare:v53])
    {
    }

    else
    {
      v58 = +[PSOAuthAccountRedirectURLController sharedInstance];
      v59 = [v58 handleOAuthRedirectURL:v67];

      if (v59)
      {
        v60 = pbb_bridge_log();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = [v67 scheme];
          v62 = [v67 path];
          *buf = 138412546;
          *v85 = v61;
          *&v85[8] = 2112;
          *v86 = v62;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Handled OAuth Redirect url %@:%@", buf, 0x16u);
        }

        goto LABEL_70;
      }
    }

    v60 = pbb_bridge_log();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v85 = v67;
      *&v85[8] = 2112;
      *v86 = v65;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Unsupported URL Scheme: %@ / %@", buf, 0x16u);
    }

LABEL_70:

    goto LABEL_52;
  }

  objc_initWeak(location, self);
  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_setupController != 0;
    v11 = self->_unpairingVC != 0;
    *buf = 67109890;
    *v85 = v10;
    *&v85[4] = 1024;
    *&v85[6] = v11;
    *v86 = 2112;
    *&v86[2] = v67;
    LOWORD(v87[0]) = 2112;
    *(v87 + 2) = v66;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setup active: %{BOOL}d unpair active: %{BOOL}d Queueing openURL: %@ (from sourceApplication %@)", buf, 0x22u);
  }

  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_1000A7240;
  v68[3] = &unk_10026A9E8;
  v69 = v67;
  v70 = v66;
  objc_copyWeak(&v73, location);
  v71 = v64;
  v72 = v65;
  [(COSPreferencesAppController *)self setAppDelegateOnDismissalBlock:v68];

  objc_destroyWeak(&v73);
  objc_destroyWeak(location);
LABEL_6:
  v12 = 0;
LABEL_7:

  return v12;
}

- (void)_schedulePendingAppDelegateIfPresent
{
  if ([(COSPreferencesAppController *)self resetSetupInProgress]|| [(COSPreferencesAppController *)self dismissSetupInProgress]|| self->_setupController || self->_unpairingVC || ([(COSPreferencesAppController *)self appDelegateOnDismissalBlock], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v3 = [(COSPreferencesAppController *)self appDelegateOnDismissalBlock];

    if (v3)
    {
      v4 = pbb_bridge_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = self->_setupController != 0;
        v6 = self->_unpairingVC != 0;
        resetSetupInProgress = self->_resetSetupInProgress;
        dismissSetupInProgress = self->_dismissSetupInProgress;
        *buf = 67109888;
        v12 = v5;
        v13 = 1024;
        v14 = v6;
        v15 = 1024;
        v16 = resetSetupInProgress;
        v17 = 1024;
        v18 = dismissSetupInProgress;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pending url handling. setupController: %{BOOL}d, unpairingVC: %{BOOL}d resetSetupInProgress: %{BOOL}d dismissSetupInProgress: %{BOOL}d", buf, 0x1Au);
      }
    }
  }

  else
  {
    v10 = [(COSPreferencesAppController *)self appDelegateOnDismissalBlock];
    [(COSPreferencesAppController *)self setAppDelegateOnDismissalBlock:0];
    v10[2]();
  }
}

- (void)presentGreenfieldViewControllerWithUrl:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:UIApplicationOpenURLOptionsAnnotationKey];
  v9 = v8;
  if (!v8 || ([v8 objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [v7 objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
  }

  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A7644;
  v13[3] = &unk_10026AA10;
  objc_copyWeak(&v16, &location);
  v11 = v6;
  v14 = v11;
  v12 = v10;
  v15 = v12;
  [(COSPreferencesAppController *)self presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)didTapOnLoadingFaceLibraryButton:(id)a3
{
  v4 = [(COSPreferencesAppController *)self galleryViewController];
  [(COSPreferencesAppController *)self setSelectedTabBarViewController:v4];
}

- (BOOL)_isProductKitUrl:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [ProductKitCatalog isProductKitURL:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateActiveWatchBridgeDomainAccessor
{
  v3 = [(NRDevice *)self->_activeWatch valueForProperty:NRDevicePropertyPairingID];
  v4 = [(NRDevice *)self->_activeWatch valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  activeWatchBridgeDomainAccessor = self->_activeWatchBridgeDomainAccessor;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
LABEL_10:
    self->_activeWatchBridgeDomainAccessor = v7;

    goto LABEL_11;
  }

  if (!activeWatchBridgeDomainAccessor || (-[NPSDomainAccessor pairingID](activeWatchBridgeDomainAccessor, "pairingID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isEqual:v3], v8, (v9 & 1) == 0))
  {
    v10 = [NPSDomainAccessor alloc];
    v7 = [v10 initWithDomain:kBridgeDomain pairingID:v3 pairingDataStore:v4];
    activeWatchBridgeDomainAccessor = self->_activeWatchBridgeDomainAccessor;
    goto LABEL_10;
  }

LABEL_11:
  v11 = pbb_bridge_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_activeWatchBridgeDomainAccessor;
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updated Active Watch Bridge Settings Domain Accessor (%@)", &v13, 0xCu);
  }
}

- (id)_getStartedController
{
  getStartedViewController = self->_getStartedViewController;
  if (!getStartedViewController)
  {
    v4 = objc_alloc_init(COSGetStartedViewController);
    v5 = self->_getStartedViewController;
    self->_getStartedViewController = v4;

    [(COSGetStartedViewController *)self->_getStartedViewController setGetStartedDelegate:self];
    getStartedViewController = self->_getStartedViewController;
  }

  return getStartedViewController;
}

- (id)splitViewController:(id)a3 separateSecondaryViewControllerFromPrimaryViewController:(id)a4
{
  v5 = a3;
  v6 = [(COSPreferencesAppController *)self _rootControllerForSplitViewController:v5];
  v7 = [v5 containerNavigationController];

  v8 = [v7 viewControllers];
  v9 = [v8 count];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v6 rootListController];
    v12 = [v11 generalViewController];

    v15 = v12;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    [v7 setViewControllers:v13];

    v10 = v7;
  }

  return v10;
}

- (BOOL)splitViewController:(id)a3 collapseSecondaryViewController:(id)a4 ontoPrimaryViewController:(id)a5
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 viewControllers];
    v7 = [v6 count] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)splitViewControllerDidPopToRootController:(id)a3
{
  v6 = a3;
  if (([v6 isCollapsed] & 1) == 0)
  {
    v4 = [(COSPreferencesAppController *)self _rootControllerForSplitViewController:v6];
    v5 = [v4 rootListController];
    [v5 selectGeneralCategory];
  }
}

- (id)bridgeSettingsTabBarItem
{
  v2 = [(COSPreferencesAppController *)self myWatchViewController];
  v3 = [v2 tabBarItem];

  return v3;
}

- (void)refreshUpdateBadge
{
  v3 = [(COSPreferencesAppController *)self bridgeSettingsTabBarItem];
  [(COSPreferencesAppController *)self refreshUpdateBadgeWithTab:v3];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"com.apple.Bridge.badgeUpdate" object:0];
}

- (void)refreshUpdateBadgeWithTab:(id)a3
{
  v3 = a3;
  if (qword_1002BD540 != -1)
  {
    sub_10018927C();
  }

  if (+[COSPreferencesAppController hasUpdateAvailable])
  {
    v4 = objc_alloc_init(NSNumberFormatter);
    [v4 setNumberStyle:0];
    v5 = [v4 stringFromNumber:&off_100281C18];
  }

  else
  {
    v5 = 0;
  }

  [v3 setBadgeValue:v5];
  v6 = +[UNUserNotificationCenter currentNotificationCenter];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A8104;
  v7[3] = &unk_10026AA90;
  v8 = v5 != 0;
  [v6 setBadgeCount:v8 withCompletionHandler:v7];
}

- (void)clearBridgeSettingsTabBarItemBadge
{
  v2 = [(COSPreferencesAppController *)self bridgeSettingsTabBarItem];
  [v2 setBadgeValue:0];

  v4 = [UIApp activeWatchBridgeDomainAccessor];
  [v4 removeObjectForKey:@"kBadgedForSoftwareUpdateKey"];
  v3 = [v4 synchronize];
}

- (void)markGalleryTabAsVisited
{
  CFPreferencesSetAppValue(@"kShouldJumpToFaceGalleryKey", 0, @"com.apple.Bridge");

  CFPreferencesAppSynchronize(@"com.apple.Bridge");
}

- (id)urlForActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  v6 = [v5 isEqualToString:@"com.apple.nano.passbook.provisioning"];

  if (v6)
  {
    v7 = @"bridge:root=com.apple.NanoPassbookBridgeSettings%230";
LABEL_6:
    v12 = [NSURL URLWithString:v7];

    goto LABEL_11;
  }

  v8 = [v4 activityType];
  v9 = [v8 isEqualToString:CSSearchableItemActionType];

  if (v9)
  {
    v10 = [v4 userInfo];
    v11 = [v10 objectForKey:CSSearchableItemActivityIdentifier];
  }

  else
  {
    v13 = [v4 activityType];
    v14 = [v13 isEqualToString:NSUserActivityTypeBrowsingWeb];

    if (!v14)
    {
      goto LABEL_10;
    }

    v15 = [v4 webpageURL];
    v16 = [(COSPreferencesAppController *)self _isProductKitUrl:v15];

    if (!v16)
    {
      goto LABEL_10;
    }

    v10 = [v4 webpageURL];
    v11 = [v10 absoluteString];
  }

  v7 = v11;

  if (v7)
  {
    goto LABEL_6;
  }

LABEL_10:
  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)shouldConsiderHoldingSuspendAssertion
{
  v3 = [(COSSetupController *)self->_setupController linkUpgradeMonitor];
  v4 = [v3 holdingAnyCompanionLinkPreference];

  v5 = self->_syncTrapUIEnabled && v4 == 0;
  v6 = !v5 && !self->_syncTrapUICompleted;
  v7 = [UIApp bridgeController];
  v8 = [v7 setupTransactionActive];

  if ([(COSPreferencesAppController *)self isActivelyPairing])
  {
    v9 = v6 & v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = pbb_setupflow_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    syncTrapUIEnabled = self->_syncTrapUIEnabled;
    syncTrapUICompleted = self->_syncTrapUICompleted;
    v14 = 136316418;
    v15 = "[COSPreferencesAppController shouldConsiderHoldingSuspendAssertion]";
    v16 = 1024;
    v17 = v4;
    v18 = 1024;
    v19 = syncTrapUIEnabled;
    v20 = 1024;
    v21 = syncTrapUICompleted;
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: holdingAnyCompanionLinkPreference: %{BOOL}d _syncTrapUIEnabled: %{BOOL}d _syncTrapUICompleted: %{BOOL}d setupTransactionActive: %{BOOL}d assertionRequired: %{BOOL}d", &v14, 0x2Au);
  }

  return v9;
}

- (void)dismissSetupFlowComplete:(BOOL)a3 animated:(BOOL)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A863C;
  v4[3] = &unk_10026AAB8;
  v4[4] = self;
  v5 = a3;
  v6 = a4;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)expireTaskAssertion:(id)a3
{
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Releasing Bridge Background Assertion!", buf, 2u);
  }

  if (self->_suspendAssertion)
  {
    if (self->_syncTrapUICompleted || self->_syncTrapUIEnabled)
    {
      v5 = pbb_setupflow_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        syncTrapUICompleted = self->_syncTrapUICompleted;
        syncTrapUIEnabled = self->_syncTrapUIEnabled;
        *buf = 67109376;
        v23 = syncTrapUICompleted;
        v24 = 1024;
        v25 = syncTrapUIEnabled;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Background Assertion Expired. syncTrapUICompleted: %{BOOL}d syncTrapUIEnabled: %{BOOL}d", buf, 0xEu);
      }

      v8 = [(COSSetupController *)self->_setupController linkUpgradeMonitor];
      [v8 resetCompanionLinkPreference];

      goto LABEL_9;
    }

    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setup Background Assertion Expired - Reset Setup Flow!", buf, 2u);
    }

    v10 = [(NRDevice *)self->_activeWatch valueForProperty:NRDevicePropertyIsPaired];
    v11 = [v10 BOOLValue];

    if ([(COSPreferencesAppController *)self isInSetupFlow])
    {
      if (!v11)
      {
        [(COSPreferencesAppController *)self resetSetupFlowAnimated:0 forEvent:36];
        [(COSPreferencesAppController *)self dismissSetupFlowComplete:0 animated:0];
        v15 = dispatch_time(0, 100000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000A8C58;
        block[3] = &unk_1002682F0;
        block[4] = self;
        dispatch_after(v15, &_dispatch_main_q, block);
        goto LABEL_9;
      }

      v12 = PBIsEarlyPairedSyncSupportedForDevice();
      v13 = pbb_setupflow_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_syncTrapUIEnabled;
        *buf = 67109376;
        v23 = v12;
        v24 = 1024;
        v25 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setup Background Assertion Expired - supportsEarlyPairedSync %d syncTrapUIEnabled: %d", buf, 0xEu);
      }

      if (v12 && !self->_syncTrapUIEnabled)
      {
        v20[0] = @"obliterate";
        v20[1] = @"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2";
        v21[0] = &__kCFBooleanTrue;
        v21[1] = &__kCFBooleanTrue;
        v20[2] = NRUnpairOptionUnpairAbortErrorReason;
        v16 = [PBBridgeCAReporter descriptionForSuccessType:36];
        v21[2] = v16;
        v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];

        v18 = +[NRPairedDeviceRegistry sharedInstance];
        [v18 unpairWithDevice:self->_activeWatch withOptions:v17 operationHasBegun:&stru_10026AAD8];

        goto LABEL_9;
      }
    }

    [UIApp resetSetupFlowAnimated:0 forEvent:11];
LABEL_9:
    [(COSPreferencesAppController *)self resetSuspendAssertion];
  }
}

- (void)resetSettingsUIToHomeScreen
{
  [(PSSplitViewController *)self->_settingsSplitViewController containerNavigationController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A8F7C;
  v2 = v7[3] = &unk_1002682F0;
  v8 = v2;
  v3 = objc_retainBlock(v7);
  v4 = [v2 transitionCoordinator];
  if (v4)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000A8F84;
    v5[3] = &unk_10026A4C8;
    v6 = v3;
    [v4 animateAlongsideTransition:0 completion:v5];
  }

  else
  {
    (v3[2])(v3);
  }
}

- (void)resetSetupFlowAnimated:(BOOL)a3 forEvent:(unint64_t)a4
{
  if (!self->_resetSetupInProgress && !self->_dismissSetupInProgress)
  {
    v9 = a3;
    self->_resetSetupInProgress = 1;
    v10 = pbb_setupflow_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *v31 = 1858;
      *&v31[4] = 2080;
      *&v31[6] = "[COSPreferencesAppController resetSetupFlowAnimated:forEvent:]";
      v32 = 2048;
      v33 = a4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%d %s: resetSetupFlowAnimated: called with event: %lu.", buf, 0x1Cu);
    }

    if (a4 >= 0x24)
    {
      v11 = [PBBridgeCAReporter descriptionForSuccessType:a4];
      NSLog(@"%@", v11);

      [PBBridgeCAReporter incrementSuccessType:a4];
    }

    if ([(COSPreferencesAppController *)self isInSetupFlow])
    {
      v12 = [(COSSetupController *)self->_setupController scannedDevice];
      v13 = [v12 valueForProperty:NRDevicePropertyIsPaired];
      v14 = [v13 BOOLValue];

      if (([(COSPreferencesAppController *)self syncTrapUIEnabled]| v14))
      {
        v15 = pbb_setupflow_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v12 _bridgeConciseDebugDescription];
          *buf = 138412290;
          *v31 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "We were unpaired during SyncTrap, NR is tearing-down pairing with device %@", buf, 0xCu);
        }
      }

      else
      {
        v15 = [PBBridgeCAReporter descriptionForSuccessType:a4];
        if (a4 <= 0x2C && ((1 << a4) & 0x1E0000001200) != 0)
        {
          v17 = pbb_setupflow_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Marking abort reason as user requested", buf, 2u);
          }

          v18 = NRPairedDeviceRegistryAbortPairingUserRequested;
          v15 = v18;
        }

        v19 = pbb_setupflow_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v31 = v15;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Reset event: %@", buf, 0xCu);
        }

        v20 = +[NRPairedDeviceRegistry sharedInstance];
        [v20 abortPairingWithReason:v15];
      }
    }

    [(COSPreferencesAppController *)self setSyncTrapUIEnabled:0];
    self->_syncTrapUICompleted = 0;
    v21 = +[COSBackupManager sharedBackupManager];
    [v21 reset];

    [(COSPreferencesAppController *)self resetSettingsUIToHomeScreen];
    objc_initWeak(buf, self);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000A955C;
    v28[3] = &unk_100268430;
    objc_copyWeak(&v29, buf);
    v22 = objc_retainBlock(v28);
    if (self->_setupController)
    {
      v23 = pbb_setupflow_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Had SetupController", v27, 2u);
      }

      if ([(COSSetupController *)self->_setupController hasStartedPairing])
      {
        v24 = pbb_setupflow_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "SetupController had started pairing: issue finalCleanup() after animation", v27, 2u);
        }

        [(COSPreferencesAppController *)self dismissSetupFlowAnimated:v9 refreshTabs:1 withCompletionHandler:v22];
        goto LABEL_36;
      }

      v25 = pbb_setupflow_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        v26 = "SetupController had not yet started pairing: issue finalCleanup() inline";
        goto LABEL_34;
      }
    }

    else
    {
      v25 = pbb_setupflow_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        v26 = "SetupController is missing. Issue finalCleanup() inline";
LABEL_34:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, v27, 2u);
      }
    }

    (v22[2])(v22);
LABEL_36:

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
    return;
  }

  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    resetSetupInProgress = self->_resetSetupInProgress;
    dismissSetupInProgress = self->_dismissSetupInProgress;
    *buf = 136315650;
    *v31 = "[COSPreferencesAppController resetSetupFlowAnimated:forEvent:]";
    *&v31[8] = 1024;
    *&v31[10] = resetSetupInProgress;
    v32 = 1024;
    LODWORD(v33) = dismissSetupInProgress;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Skipping. resetSetupInProgress: %{BOOL}d dismissSetupInProgress: %{BOOL}d", buf, 0x18u);
  }
}

- (void)resetSetupFlowInternalSettings
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109634;
    v4[1] = 1944;
    v5 = 2080;
    v6 = "[COSPreferencesAppController resetSetupFlowInternalSettings]";
    v7 = 2112;
    v8 = @"_COSInternalSettingForceSetupFlow";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%d %s: In %@ handler", v4, 0x1Cu);
  }

  [(COSPreferencesAppController *)self resetSetupFlowAnimated:1 forEvent:49];
}

- (void)presentSetupFlowWithMode:(unint64_t)a3 animated:(BOOL)a4
{
  if ([(COSPreferencesAppController *)self isInSetupFlow])
  {
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100189290();
    }
  }

  else
  {
    v8 = [[COSSetupController alloc] initWithMode:a3];
    setupController = self->_setupController;
    self->_setupController = v8;

    v10 = +[BPSBridgeAppContext shared];
    [v10 setInWatchSetupFlow:1];

    [COSBruteForceNetworkReachabilityMonitor checkServerReachabilityWithCompletion:&stru_10026AAF8];
    objc_initWeak(&location, self);
    v11 = +[COSInternalUserStudyAssetManager URLString];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000A9C84;
    v29[3] = &unk_100268260;
    objc_copyWeak(&v30, &location);
    [COSBruteForceNetworkReachabilityMonitor checkServerReachability:v11 withCompletion:v29];

    v12 = pbb_setupflow_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_setupController;
      *buf = 138412290;
      v33 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Presenting Setup controller %@!", buf, 0xCu);
    }

    v14 = self->_rootViewController;
    if ([(COSPreferencesAppController *)self _devicePickerBeingPresented])
    {
      WeakRetained = objc_loadWeakRetained(&self->_devicePickerNavigationController);

      v16 = pbb_bridge_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updated presenting controller for Setup UI to device picker nav controller: %@", buf, 0xCu);
      }
    }

    else
    {
      WeakRetained = v14;
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000A9D5C;
    v25[3] = &unk_100268380;
    objc_copyWeak(&v27, &location);
    v17 = WeakRetained;
    v26 = v17;
    v28 = a4;
    v18 = objc_retainBlock(v25);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000A9E88;
    v21[3] = &unk_10026AB20;
    v19 = v17;
    v22 = v19;
    v24 = a4;
    v20 = v18;
    v23 = v20;
    [(COSPreferencesAppController *)self presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v21];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }
}

- (void)dismissSetupFlowAnimated:(BOOL)a3 refreshTabs:(BOOL)a4 withCompletionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  if ([(COSPreferencesAppController *)self isInSetupFlow])
  {
    if (self->_dismissSetupInProgress)
    {
      v9 = pbb_setupflow_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        v10 = "Warning: Attempting to dismiss Setup while already another call in progress. Skipping!";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
      }
    }

    else
    {
      self->_dismissSetupInProgress = 1;
      v11 = pbb_setupflow_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dismissing Setup flow.", buf, 2u);
      }

      [(COSPreferencesAppController *)self refreshActiveWatchFromNanoRegistry];
      if (v5)
      {
        [(COSPreferencesAppController *)self refreshTabBar];
      }

      v12 = [(COSSetupController *)self->_setupController navigationController];
      objc_initWeak(buf, self);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000AA250;
      v16[3] = &unk_10026AB48;
      objc_copyWeak(&v20, buf);
      v19 = v8;
      v9 = v12;
      v21 = a3;
      v17 = v9;
      v18 = self;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000AA818;
      v14[3] = &unk_10026AB70;
      v13 = objc_retainBlock(v16);
      v15 = v13;
      [(COSPreferencesAppController *)self presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v14];

      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v10 = "Warning: Attempting to dismiss Setup when not presented!";
      goto LABEL_7;
    }
  }
}

- (void)unpairOrResetBuddyForEvent:(unint64_t)a3
{
  v5 = [(NRDevice *)self->_activeWatch valueForProperty:NRDevicePropertyIsPaired];
  v6 = [v5 BOOLValue];

  if (self->_activeWatch && ((v6 & 1) != 0 || self->_isActivated))
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[COSPreferencesAppController unpairOrResetBuddyForEvent:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s  - Unpairing", buf, 0xCu);
    }

    v11[0] = @"obliterate";
    v11[1] = @"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2";
    v12[0] = &__kCFBooleanTrue;
    v12[1] = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    v9 = +[NRPairedDeviceRegistry sharedInstance];
    [v9 unpairWithDevice:self->_activeWatch withOptions:v8 operationHasBegun:&stru_10026AB90];
  }

  else
  {
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[COSPreferencesAppController unpairOrResetBuddyForEvent:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Reset Buddy!", buf, 0xCu);
    }

    [UIApp resetSetupFlowAnimated:1 forEvent:a3];
  }
}

- (void)disagreeToTerms
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1001892CC();
  }

  [(COSPreferencesAppController *)self unpairOrResetBuddyForEvent:44];
}

- (void)newerCompanionRequired
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100189308();
  }

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"NEWER_COMPANION_NEEDED_TITLE" value:&stru_10026E598 table:@"Localizable"];
  v6 = [UIAlertController alertControllerWithTitle:v5 message:0 preferredStyle:1];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000AAD8C;
  v13[3] = &unk_100268580;
  v13[4] = self;
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:v13];
  [v6 addAction:v9];

  v10 = pbb_setupflow_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Presenting 'switch during update warning' alert", v12, 2u);
  }

  v11 = [(COSPreferencesAppController *)self navigationController];
  [v11 presentViewController:v6 animated:1 completion:0];
}

- (void)didHandlePerformanceResults
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Did Handle Performance Results", v3, 2u);
  }
}

- (void)updateForRemoteActivity:(id)a3
{
  v4 = a3;
  if (self->_suspendAssertion)
  {
    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bridge Renew Background Assertion for Remote Activity?", buf, 2u);
    }

    if ([(COSPreferencesAppController *)self shouldConsiderHoldingSuspendAssertion])
    {
      v6 = pbb_setupflow_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Bridge Renew Background Assertion for Remote Activity!", v7, 2u);
      }

      [(COSPreferencesAppController *)self _extendBackgroundAssertion];
    }
  }
}

- (void)resetActivationFailureCountAndReport:(BOOL)a3
{
  if (a3 && self->_activationRetryCount)
  {
    [PBBridgeCAReporter incrementSuccessType:56];
  }

  self->_activationRetryCount = 0;
}

- (void)remoteDidFailActivation:(unint64_t)a3 description:(id)a4 userActionable:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = pbb_setupflow_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v29 = v8;
    v30 = 1024;
    LODWORD(v31[0]) = v5;
    WORD2(v31[0]) = 2048;
    *(v31 + 6) = a3;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Activation Failed! (%@) User Actionable: %d Type: %lu", buf, 0x1Cu);
  }

  activationRetryCount = self->_activationRetryCount;
  activationRetryCountLimit = self->_activationRetryCountLimit;
  v12 = pbb_activation_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (a3 == 10 || activationRetryCount >= activationRetryCountLimit)
  {
    if (v13)
    {
      v17 = self->_activationRetryCountLimit;
      *buf = 134218240;
      v29 = v17;
      v30 = 2048;
      v31[0] = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not retrying activation. Retry count %lu reason: %lu", buf, 0x16u);
    }

    v18 = 37;
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1000AB1EC;
    v25 = &unk_100268220;
    if (v5)
    {
      v18 = 50;
    }

    v26 = self;
    v27 = v18;
    v19 = objc_retainBlock(&v22);
    setupController = self->_setupController;
    if (v5)
    {
      v21 = 2;
    }

    else
    {
      if (!setupController)
      {
        (v19[2])(v19);
        goto LABEL_17;
      }

      v21 = a3;
    }

    [(COSSetupController *)setupController displayPairingFailureAlertForReason:v21 withCompletion:v19, v22, v23, v24, v25];
LABEL_17:

    goto LABEL_18;
  }

  if (v13)
  {
    v14 = self->_activationRetryCount;
    v15 = self->_activationRetryCountLimit;
    *buf = 134218240;
    v29 = v14;
    v30 = 2048;
    v31[0] = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Retrying activation since the retry count is %lu and the retry limit of %lu hasn't been reached", buf, 0x16u);
  }

  v16 = [(COSPreferencesAppController *)self bridgeController];
  [v16 tellGizmoToRetryActivation];

  [PBBridgeCAReporter incrementSuccessType:55];
  ++self->_activationRetryCount;
LABEL_18:
}

- (void)deviceIsSetup:(id)a3
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSPreferencesAppController deviceIsSetup:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [UIApp refreshUpdateBadge];
}

- (void)deviceUnpaired:(id)a3
{
  v4 = a3;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 67109634;
    *v11 = 2251;
    *&v11[4] = 2080;
    *&v11[6] = "[COSPreferencesAppController deviceUnpaired:]";
    v12 = 2112;
    v13 = NRPairedDeviceRegistryDeviceDidUnpairNotification;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%d %s: In %@ handler", &v10, 0x1Cu);
  }

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:NRPairedDeviceRegistryDevice];
  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 _bridgeConciseDebugDescription];
    v10 = 138412290;
    *v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device Unpaired! (%@)", &v10, 0xCu);
  }

  if ([(COSPreferencesAppController *)self isInSetupFlow])
  {
    [(COSPreferencesAppController *)self resetSetupFlowAnimated:1 forEvent:10];
    [(COSPreferencesAppController *)self clearBridgeSettingsTabBarItemBadge];
  }

  [(COSPreferencesAppController *)self removeActiveDeviceAssertionFor:v7];
}

- (void)messageSendFailed:(id)a3
{
  v4 = a3;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v17 = 2268;
    v18 = 2080;
    v19 = "[COSPreferencesAppController messageSendFailed:]";
    v20 = 2112;
    v21 = PBBridgeMessageFailedToSend;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%d %s: In %@ handler", buf, 0x1Cu);
  }

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:PBBridgeMessageError];
  v8 = v7;
  v9 = @"Unknown Error";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = sub_100009A74();
  v12 = pbb_setupflow_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100189344();
  }

  if (v11)
  {
    v13 = 9;
  }

  else
  {
    v13 = 0;
  }

  setupController = self->_setupController;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000AB684;
  v15[3] = &unk_1002682F0;
  v15[4] = self;
  [(COSSetupController *)setupController displayPairingFailureAlertForReason:v13 withCompletion:v15];
}

- (void)pairingFailed:(id)a3
{
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v31 = 2283;
    v32 = 2080;
    v33 = "[COSPreferencesAppController pairingFailed:]";
    v34 = 2112;
    v35 = NRPairedDeviceRegistryDeviceDidFailToPairNotification;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%d %s: In %@ handler", buf, 0x1Cu);
  }

  if ([(COSSetupController *)self->_setupController hasStartedPairing])
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:NRPairedDeviceRegistryError];
    v8 = pbb_setupflow_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001893B4();
    }

    v9 = [v7 userInfo];
    v10 = [v9 objectForKey:@"subreason"];

    CFPreferencesSetAppValue(PBBridgeLastNRFailureCode, v10, PBBridgeConnectionIdentifier);
    if (v7)
    {
      v11 = [v7 code];
      v12 = pbb_setupflow_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100189424();
      }
    }

    else
    {
      v11 = 200;
    }

    v13 = v11 == 28;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000ABA70;
    v29[3] = &unk_1002682F0;
    v29[4] = self;
    v14 = objc_retainBlock(v29);
    v15 = [v7 domain];
    if ([v15 isEqualToString:@"com.apple.nanoregistry.pairingerror"])
    {
      v16 = self;
      v17 = v11;
      v18 = v6;
      v19 = v14;
      v20 = v13;
      v21 = v10;
      v22 = v4;
      v23 = [v7 code];

      v24 = v23 == 25;
      v4 = v22;
      v10 = v21;
      v13 = v20;
      v14 = v19;
      v6 = v18;
      v11 = v17;
      self = v16;
      if (v24)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
    }

    setupController = self->_setupController;
    if (setupController)
    {
      if (v11 == 1)
      {
        v26 = [v7 userInfo];
        v27 = [v26 objectForKeyedSubscript:@"previousDeviceID"];

        [(COSSetupController *)self->_setupController displayPairingFailureWatchAlreadyPairedToCompanion:v27 completion:v14];
      }

      else
      {
        [(COSSetupController *)setupController displayPairingFailureAlertForReason:v13 withCompletion:v14];
      }
    }

    else
    {
      v28 = pbb_setupflow_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Pairing Failed: called while _setupController is nil! Resetting silently with no alert.", buf, 2u);
      }

      (v14[2])(v14);
    }

    goto LABEL_25;
  }

  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Silencing pairing failure since user isn't pairing", buf, 2u);
  }

LABEL_26:
}

- (void)initialPairingFailed:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"error"];
  v6 = v5;
  v7 = @"Unknown Error";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v4 objectForKey:@"device"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 _bridgeConciseDebugDescription];
  }

  else
  {
    v11 = @"Unknown Device";
  }

  v12 = pbb_setupflow_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v18 = v4;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v11;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Pairing Failed: %@ (%@ -- %@)", buf, 0x20u);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000ABCC8;
  v16[3] = &unk_1002682F0;
  v16[4] = self;
  v13 = objc_retainBlock(v16);
  setupController = self->_setupController;
  if (setupController)
  {
    [(COSSetupController *)setupController displayPairingFailureAlertForReason:8 withCompletion:v13];
  }

  else
  {
    v15 = pbb_setupflow_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100189498();
    }

    (v13[2])(v13);
  }
}

- (void)enteredCompatibilityState:(id)a3
{
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 67109634;
    v19 = 2358;
    v20 = 2080;
    v21 = "[COSPreferencesAppController enteredCompatibilityState:]";
    v22 = 2112;
    v23 = NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%d %s: In %@ handler", &v18, 0x1Cu);
  }

  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];
  v8 = [v6 objectForKeyedSubscript:NRPairedDeviceRegistryCompatibilityStateKey];
  v9 = [v8 unsignedIntValue];

  v10 = +[NRPairedDeviceRegistry sharedInstance];
  v11 = [v10 status];

  v12 = pbb_bridge_log();
  v13 = v9;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v7 _bridgeConciseDebugDescription];
    v18 = 67109634;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    v22 = 2048;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Entered Compatibility state: (%d) for device: (%@) with status: (%lu)", &v18, 0x1Cu);
  }

  if (v13 == 2 && v11 == 1)
  {
    self->_isUpdatingGizmoInSetupFlow = 1;
    if (![(COSPreferencesAppController *)self isInSetupFlow])
    {
      [(COSPreferencesAppController *)self presentSetupFlowWithMode:1 animated:1];
    }
  }

  else if (v13 == 3)
  {
    v16 = pbb_setupflow_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67109378;
      v19 = 2376;
      v20 = 2080;
      v21 = "[COSPreferencesAppController enteredCompatibilityState:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%d %s: Making sure we have a switch assertion", &v18, 0x12u);
    }

    v17 = +[UIApplication sharedApplication];
    [v17 setActiveWatch:0 startedBlock:0 completionBlock:0];
  }
}

- (void)removeActiveDeviceAssertionFor:(id)a3
{
  v4 = a3;
  activeWatchAssertion = self->_activeWatchAssertion;
  if (activeWatchAssertion)
  {
    v6 = [(NRActiveDeviceAssertion *)activeWatchAssertion device];
    v7 = [v6 pairingID];
    v8 = [v4 pairingID];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      v10 = pbb_bridge_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(NRActiveDeviceAssertion *)self->_activeWatchAssertion device];
        v12 = [v11 _bridgeConciseDebugDescription];
        v14 = 136315394;
        v15 = "[COSPreferencesAppController removeActiveDeviceAssertionFor:]";
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Removing active assertion for %@", &v14, 0x16u);
      }

      v13 = [(COSPreferencesAppController *)self activeWatchAssertion];
      [v13 invalidate];

      [(COSPreferencesAppController *)self setActiveWatchAssertion:0];
    }
  }
}

- (void)removeActiveDeviveAssertionIfNotActive
{
  activeWatchAssertion = self->_activeWatchAssertion;
  if (activeWatchAssertion && ([(NRActiveDeviceAssertion *)activeWatchAssertion isActive]& 1) == 0)
  {
    v4 = pbb_bridge_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NRActiveDeviceAssertion *)self->_activeWatchAssertion device];
      v6 = [v5 _bridgeConciseDebugDescription];
      v8 = 136315394;
      v9 = "[COSPreferencesAppController removeActiveDeviveAssertionIfNotActive]";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Removing inactive assertion for %@", &v8, 0x16u);
    }

    v7 = [(COSPreferencesAppController *)self activeWatchAssertion];
    [v7 invalidate];

    [(COSPreferencesAppController *)self setActiveWatchAssertion:0];
  }
}

- (id)currentSpecifierIDPath
{
  v2 = [(COSPreferencesRootController *)self->_settingsController viewControllers];
  v3 = [v2 mutableCopy];

  if ([v3 count] >= 2)
  {
    [v3 removeObjectAtIndex:0];
  }

  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AC374;
  v4 = v6[3] = &unk_10026ABB8;
  v7 = v4;
  [v3 enumerateObjectsUsingBlock:v6];

  return v4;
}

- (void)presentDevicePicker:(BOOL)a3
{
  v3 = a3;
  v5 = [NSURL URLWithString:@"root=ActiveWatch"];
  if (v3)
  {
    v7 = v5;
    v6 = [NSURL URLWithString:@"root=ActiveWatch#TinkerWatchesOnly"];

    v5 = v6;
  }

  v8 = v5;
  [(COSPreferencesAppController *)self processURL:v5 animated:1 fromSearch:0];
}

- (void)generateURL
{
  v3 = objc_alloc_init(NSMutableString);
  v41 = +[NSUserDefaults standardUserDefaults];
  v4 = [(PSSplitViewController *)self->_settingsSplitViewController containerNavigationController];
  v5 = [v4 topViewController];

  v6 = 0.0;
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___PSViewControllerOffsetProtocol])
  {
    [v5 verticalContentOffset];
    v6 = v7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 canBeShownFromSuspendedState] & 1) == 0)
  {
    v8 = [(PSSplitViewController *)self->_settingsSplitViewController containerNavigationController];
    [v8 popRecursivelyToRootController];
  }

  v40 = v5;
  v9 = [(COSPreferencesRootController *)self->_settingsController rootListController];
  v10 = [v9 categoryController];
  v11 = [v10 specifier];
  v12 = [v11 identifier];
  [v3 appendFormat:@"root=%@", v12];

  [v3 appendFormat:@"#%0.0f", *&v6];
  v13 = [(PSSplitViewController *)self->_settingsSplitViewController containerNavigationController];
  v14 = [v13 viewControllers];
  v15 = [NSArray arrayWithArray:v14];

  v42 = v3;
  if ([v15 count] >= 2)
  {
    v16 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 1, [v15 count] - 1);
    v17 = [v15 objectsAtIndexes:v16];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v15 = v17;
    v18 = [v15 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v46;
      v44 = 1;
      v43 = PSIDKey;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v45 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v15;
            v24 = [v22 specifier];
            v25 = [v24 identifier];

            v26 = [v22 specifier];
            v27 = [v26 propertyForKey:v43];

            if (!v27)
            {
              v28 = [v22 specifier];
              v29 = [v22 specifier];
              v30 = [v29 identifier];
              [v28 setProperty:v30 forKey:v43];

              v3 = v42;
            }

            if (![v22 canBeShownFromSuspendedState])
            {

              v15 = v23;
              goto LABEL_26;
            }

            v31 = 0.0;
            if ([v22 conformsToProtocol:&OBJC_PROTOCOL___PSViewControllerOffsetProtocol])
            {
              [v22 verticalContentOffset];
              v31 = v32;
            }

            if (v44)
            {
              v33 = @"&path=%@";
            }

            else
            {
              v33 = @"/%@";
            }

            [v3 appendFormat:v33, v25];
            v34 = [NSString stringWithFormat:@"#%0.0f", *&v31];
            [v3 appendString:v34];

            v44 = 0;
            v15 = v23;
          }
        }

        v19 = [v15 countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:
  }

  v35 = +[NSDate date];
  [v35 timeIntervalSince1970];
  v37 = [NSNumber numberWithInt:v36];
  [v41 setObject:v37 forKey:@"kPreferencePositionTimeStampKey"];

  v38 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v39 = [v42 stringByAddingPercentEncodingWithAllowedCharacters:v38];
  [v41 setObject:v39 forKey:@"kPreferencePositionKey"];

  [v41 synchronize];
}

- (void)presentDevicePickerControllerWith:(BOOL)a3
{
  if (self->_setupController || self->_unpairingVC)
  {
    v4 = pbb_bridge_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_setupController != 0;
      v6 = self->_unpairingVC != 0;
      *buf = 136315650;
      v28 = "[COSPreferencesAppController presentDevicePickerControllerWith:]";
      v29 = 1024;
      v30 = v5;
      v31 = 1024;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: skipping device picker presentation. _setupController: %{BOOL}d unpairingVC: %{BOOL}d", buf, 0x18u);
    }
  }

  else
  {
    v7 = a3;
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    [v9 setTinkerOnly:v7];
    [v8 setSpecifierDataSource:v9];
    [v8 setLaunchedByNanoRegistry:{-[COSPreferencesAppController launchedByNanoRegistry](self, "launchedByNanoRegistry")}];
    objc_initWeak(buf, self);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000ACD0C;
    v25[3] = &unk_100268430;
    objc_copyWeak(&v26, buf);
    v10 = objc_retainBlock(v25);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000ACDD0;
    v21[3] = &unk_10026ABE0;
    objc_copyWeak(&v24, buf);
    v4 = v8;
    v22 = v4;
    v11 = v10;
    v23 = v11;
    v12 = objc_retainBlock(v21);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000ACF10;
    v16[3] = &unk_10026AC08;
    objc_copyWeak(&v20, buf);
    v13 = v9;
    v17 = v13;
    v14 = v11;
    v18 = v14;
    v15 = v12;
    v19 = v15;
    [(COSPreferencesAppController *)self presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v24);

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }
}

- (void)navigateToRootObjectWithURLDictionary:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 objectForKey:@"root"];
  v7 = SFObjectAndOffsetForURLPair();
  v8 = [v7 objectForKey:@"object"];
  v9 = [v7 objectForKey:@"offsetItem"];
  v10 = [(COSPreferencesAppController *)self rootViewController];
  v11 = [v10 viewControllers];
  v12 = [(COSPreferencesAppController *)self myWatchViewController];
  v13 = [v11 containsObject:v12];

  if (v13)
  {
    v14 = [(COSPreferencesAppController *)self myWatchViewController];
    [(COSPreferencesAppController *)self setSelectedTabViewController:v14];
  }

  if (v8)
  {
    objc_initWeak(location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AD5E8;
    block[3] = &unk_10026ACA0;
    objc_copyWeak(&v23, location);
    v18 = v8;
    v19 = v9;
    v20 = self;
    v21 = v5;
    v24 = a4;
    v22 = v7;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
  }

  else
  {
    v15 = pbb_bridge_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "missing root object. dropping url handle request", location, 2u);
    }
  }
}

- (void)setDevicePickerPresented:(BOOL)a3
{
  if (self->_devicePickerPresented && !a3)
  {
    v5 = [(COSPreferencesAppController *)self settingsListController];
    [v5 loadSpotlightSearchControllers];
  }

  self->_devicePickerPresented = a3;
}

- (void)_activateTinkerWatchWithCSN:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NRPairedDeviceRegistry sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000AE540;
  v13[3] = &unk_10026ACC8;
  v14 = v6;
  v9 = v6;
  v10 = [v8 getAllDevicesWithArchivedAltAccountDevicesMatching:v13];

  v11 = pbb_bridge_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Matching Tinker Devices: %@", buf, 0xCu);
  }

  v12 = [v10 firstObject];
  if (v12)
  {
    [(COSPreferencesAppController *)self setActiveWatch:v12 startedBlock:0 completionBlock:v7];
  }
}

- (void)processURL:(id)a3
{
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000AE88C;
  v20[3] = &unk_100269F28;
  v20[4] = self;
  v4 = a3;
  v21 = v4;
  v5 = objc_retainBlock(v20);
  v6 = [v4 absoluteString];
  v7 = [v6 containsString:@"ManagedConfigurationList/InstallRequested"];

  if (!v7)
  {
    v9 = [v4 absoluteString];
    if ([v9 containsString:@"SOFTWARE_UPDATE_LINK&terms=YES"])
    {
      processedPositionPath = self->_processedPositionPath;

      if (!processedPositionPath)
      {
        objc_initWeak(&location, self);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1000AECF4;
        v14[3] = &unk_10026AD18;
        objc_copyWeak(&v15, &location);
        [(COSPreferencesAppController *)self presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v14];
        v8 = &v15;
        goto LABEL_3;
      }
    }

    else
    {
    }

    v11 = dispatch_time(0, 1000000000 * [(COSPreferencesAppController *)self waitToLoadBeforeProcessingURL:v4]);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AEDCC;
    block[3] = &unk_100269120;
    v13 = v5;
    dispatch_after(v11, &_dispatch_main_q, block);

    goto LABEL_9;
  }

  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000AE928;
  v16[3] = &unk_10026ACF0;
  objc_copyWeak(&v18, &location);
  v17 = v5;
  [(COSPreferencesAppController *)self presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v16];

  v8 = &v18;
LABEL_3:
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
LABEL_9:
  self->_processedPositionPath = 0;
}

- (void)processURL:(id)a3 animated:(BOOL)a4 fromSearch:(BOOL)a5
{
  v7 = a3;
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Process URL: %@", buf, 0xCu);
  }

  v9 = [(COSPreferencesAppController *)self getLaunchedByValueForURL:v7];
  v10 = v9;
  if (v9 && [v9 isEqualToString:@"NRPairedDeviceRegistryLaunchedByNanoRegistry"])
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Launched by NanoRegistry!", buf, 2u);
    }

    self->_launchedByNanoRegistry = 1;
  }

  v12 = [(COSPreferencesAppController *)self keyValueDictionaryForURL:v7];
  objc_initWeak(buf, self);
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_1000AF0C8;
  v24 = &unk_10026AD40;
  v25 = self;
  v13 = v12;
  v26 = v13;
  objc_copyWeak(&v27, buf);
  v28 = a4;
  v14 = objc_retainBlock(&v21);
  v15 = [(COSPreferencesAppController *)self rootViewController:v21];
  v16 = [v15 viewControllers];
  v17 = [(COSPreferencesAppController *)self myWatchViewController];
  v18 = [v16 containsObject:v17];

  if (v18)
  {
    v19 = [(COSPreferencesAppController *)self myWatchViewController];
    [(COSPreferencesAppController *)self setSelectedTabBarViewController:v19];
  }

  v20 = [v13 objectForKey:@"csn"];
  if ([v20 length])
  {
    [(COSPreferencesAppController *)self _activateTinkerWatchWithCSN:v20 completionBlock:v14];
  }

  else
  {
    (v14[2])(v14, 0);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

- (unint64_t)waitToLoadBeforeProcessingURL:(id)a3
{
  v3 = [a3 absoluteString];
  v4 = [v3 containsString:@"NOTIFICATIONS_ID"];

  return v4;
}

- (void)_setOffsetForController:(id)a3 fromObjectPair:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:@"offsetValue"];
  [v6 floatValue];
  v8 = v7;

  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  v9 = [v5 objectForKeyedSubscript:@"offsetItem"];

  if ([v11 conformsToProtocol:&OBJC_PROTOCOL___PSViewControllerOffsetProtocol])
  {
    if (v8 == 0.0)
    {
      if ([v9 length])
      {
        [v11 setDesiredVerticalContentOffsetItemNamed:v9];
      }
    }

    else
    {
      *&v10 = v8;
      [v11 setDesiredVerticalContentOffset:v10];
    }
  }
}

- (void)_performURLHandlingForRootListController:(id)a3 controller:(id)a4 dictionary:(id)a5 items:(id)a6 controllerNeedsPush:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 objectForKeyedSubscript:@"animate"];
  v16 = [v15 BOOLValue];

  v17 = [v13 objectForKeyedSubscript:@"fromSearch"];
  v18 = [v17 BOOLValue];

  v19 = pbb_bridge_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v12;
    v34 = 2112;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Handle controller %@ with root controller %@", buf, 0x16u);
  }

  v31 = 0;
  if ([v14 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v20 = [v14 objectAtIndexedSubscript:0];
    v21 = SFObjectAndOffsetForURLPair();

    v22 = [v21 objectForKeyedSubscript:@"object"];
    if (v22)
    {
      v23 = [v12 prepareHandlingURLForSpecifierID:v22 resourceDictionary:v13 animatePush:&v31] ^ 1;
    }

    else
    {
      v23 = 0;
    }

    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v23 = 0;
    if (!v7)
    {
LABEL_13:
      v24 = 0;
      goto LABEL_14;
    }
  }

  v24 = v31 & v23;
  if ((v31 & v23 & 1) == 0 && ((v16 ^ 1) & 1) == 0)
  {
    v24 = [v14 count] == 0;
  }

LABEL_14:
  if ((v16 & v18) == 1 && (v24 & 1) == 0 && ((sub_10002EC30() & 1) != 0 || [v14 count] >= 2))
  {
    v25 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v14 count]);
    v26 = v25;
    if (v7)
    {
      [v25 addObject:v12];
    }

    [v13 setObject:v26 forKeyedSubscript:@"controllers"];

    [UIView setAnimationsEnabled:v16];
    v27 = 0;
    if (v23)
    {
      goto LABEL_30;
    }

LABEL_27:
    v30 = pbb_bridge_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v12;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Handling URL... Controller %@ to handle %@", buf, 0x16u);
    }

    [v12 handleURL:v13 withCompletion:0];
    goto LABEL_30;
  }

  [UIView setAnimationsEnabled:v16];
  if (v7)
  {
    v28 = [v11 splitViewController];
    [v28 showInitialViewController:v12];

    v29 = pbb_bridge_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Push Controller: %@", buf, 0xCu);
    }
  }

  v27 = 1;
  if ((v23 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_30:
  +[UIView enableAnimation];
  if ((v27 & 1) == 0)
  {
    [v13 removeObjectForKey:@"controllers"];
  }
}

- (id)getLaunchedByValueForURL:(id)a3
{
  v3 = [a3 resourceSpecifier];
  v4 = [v3 componentsSeparatedByString:@"launchedBy="];

  v5 = [v4 lastObject];

  return v5;
}

- (id)keyValueDictionaryForURL:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 resourceSpecifier];
  v6 = [v5 componentsSeparatedByString:@"&"];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:{@"=", v17}];
        if ([v12 count] == 2)
        {
          v13 = [v12 objectAtIndex:1];
          v14 = [v13 stringByRemovingPercentEncoding];

          v15 = [v12 objectAtIndex:0];
          [v4 setObject:v14 forKey:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v4;
}

- (void)popToRootOfSettingsSelectGeneral:(BOOL)a3 performWithoutDeferringTransitions:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[COSPreferencesAppController popToRootOfSettingsSelectGeneral:performWithoutDeferringTransitions:]";
    v16 = 1024;
    v17 = v5;
    v18 = 1024;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: selectGeneral: %{BOOL}d performWithoutDeferring: %{BOOL}d", buf, 0x18u);
  }

  v8 = [(COSPreferencesRootController *)self->_settingsController rootListController];
  v9 = v8;
  if (v4)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000AFA28;
    v12[3] = &unk_1002682F0;
    v13 = v8;
    [UIViewController _performWithoutDeferringTransitions:v12];
    v10 = v13;
  }

  else
  {
    v10 = [v8 navigationController];
    v11 = [v10 popToRootViewControllerAnimated:0];
  }

  if (v5 && ([(PSSplitViewController *)self->_settingsSplitViewController isCollapsed]& 1) == 0)
  {
    [v9 selectGeneralCategoryForced:1];
  }
}

- (void)popToTopLevelSettingsAnimated:(BOOL)a3
{
  if ([(COSPreferencesAppController *)self safeToPopToSettingsRootController])
  {
    if ([(COSPreferencesAppController *)self _devicePickerBeingPresented])
    {
      WeakRetained = objc_loadWeakRetained(&self->_devicePickerNavigationController);
      v6 = [WeakRetained viewControllers];

      if ([v6 count])
      {
        v7 = objc_loadWeakRetained(&self->_devicePickerNavigationController);
        v8 = [v6 objectAtIndexedSubscript:0];
        v24 = v8;
        v9 = [NSArray arrayWithObjects:&v24 count:1];
        [v7 setViewControllers:v9 animated:0];
      }

      v10 = objc_loadWeakRetained(&self->_devicePickerNavigationController);
      v11 = [v10 presentedViewController];

      v12 = pbb_bridge_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          v14 = objc_loadWeakRetained(&self->_devicePickerNavigationController);
          *buf = 136315394;
          v21 = "[COSPreferencesAppController popToTopLevelSettingsAnimated:]";
          v22 = 2112;
          v23 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Dismissing up to device picker: %@", buf, 0x16u);
        }

        v12 = objc_loadWeakRetained(&self->_devicePickerNavigationController);
        [v12 dismissViewControllerAnimated:1 completion:0];
      }

      else if (v13)
      {
        *buf = 136315138;
        v21 = "[COSPreferencesAppController popToTopLevelSettingsAnimated:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Staying in device picker UI", buf, 0xCu);
      }
    }

    else
    {
      v16 = pbb_bridge_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(COSPreferencesAppController *)self rootViewController];
        *buf = 136315394;
        v21 = "[COSPreferencesAppController popToTopLevelSettingsAnimated:]";
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Dismissing up to root: %@", buf, 0x16u);
      }

      v6 = [(COSPreferencesAppController *)self rootViewController];
      [v6 dismissViewControllerAnimated:1 completion:0];
    }

    v15 = [(PSSplitViewController *)self->_settingsSplitViewController viewControllers];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000AFDE4;
    v18[3] = &unk_10026AD60;
    v19 = a3;
    [v15 enumerateObjectsWithOptions:2 usingBlock:v18];
  }

  else
  {
    v15 = pbb_bridge_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[COSPreferencesAppController popToTopLevelSettingsAnimated:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: Skipping POP", buf, 0xCu);
    }
  }
}

- (void)_scrollToTopOfSettingsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = pbb_setup_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scroll to top of Settings", v9, 2u);
  }

  v6 = [(COSPreferencesRootController *)self->_settingsController rootListController];
  v7 = [v6 table];
  v8 = [NSIndexPath indexPathForRow:0 inSection:0];
  [v7 scrollToRowAtIndexPath:v8 atScrollPosition:1 animated:v3];
}

- (void)_deregisterForPowerNotifications
{
  if (self->_pmSource)
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, self->_pmSource, kCFRunLoopDefaultMode);
    CFRelease(self->_pmSource);
    self->_pmSource = 0;
    IODeregisterForSystemPower(&self->_pmNotifier);
    IONotificationPortDestroy(self->_systemPowerPortRef);
    IOServiceClose(self->_rootDomainConnect);
    self->_rootDomainConnect = 0;
  }
}

- (void)refreshActiveWatchFromNanoRegistry
{
  v3 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  [(COSPreferencesAppController *)self updateActiveWatch:v3];
}

- (void)performTasksOnActiveDeviceUpdate
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSPreferencesAppController performTasksOnActiveDeviceUpdate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(COSPreferencesAppController *)self deviceSpecificRepairSteps:self->_activeWatch];
  [(COSPreferencesAppController *)self refreshUpdateBadge];
}

- (void)updateActiveWatch:(id)a3
{
  v5 = a3;
  activeWatch = self->_activeWatch;
  if (activeWatch != v5)
  {
    if (activeWatch)
    {
      [(NRDevice *)activeWatch removePropertyObserver:self forPropertyChanges:0];
    }

    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NRDevice *)self->_activeWatch _bridgeConciseDebugDescription];
      v9 = [(NRDevice *)v5 _bridgeConciseDebugDescription];
      *buf = 134218498;
      v18 = self;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%p) Replace Active Device (%@) with (%@)", buf, 0x20u);
    }

    objc_storeStrong(&self->_activeWatch, a3);
    v10 = +[BPSBridgeAppContext shared];
    [v10 setActiveDevice:v5];

    v11 = self->_activeWatch;
    v16[0] = NRDevicePropertySystemVersion;
    v16[1] = _NRDevicePropertyCapabilities;
    v16[2] = NRDevicePropertyName;
    v12 = [NSArray arrayWithObjects:v16 count:3];
    [(NRDevice *)v11 addPropertyObserver:self forPropertyChanges:v12];

    [(COSPreferencesAppController *)self updateActiveWatchBridgeDomainAccessor];
    [(COSPreferencesAppController *)self configureStartupStateForActiveDevice];
    v13 = +[NRPairedDeviceRegistry sharedInstance];
    v14 = [v13 status];

    if (v14 == 2)
    {
      self->_waitForActiveDeviceReady = 0;
      [(COSPreferencesAppController *)self performTasksOnActiveDeviceUpdate];
    }

    else
    {
      v15 = pbb_bridge_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v18 = self;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(%p) waiting for active device to be ready", buf, 0xCu);
      }

      self->_waitForActiveDeviceReady = 1;
    }
  }
}

- (void)configureStartupStateForActiveDevice
{
  if (self->_activeWatch)
  {
    v3 = +[NRPairedDeviceRegistry sharedInstance];
    v4 = [v3 compatibilityState];

    if (v4 == 2 || (-[COSSetupController pairingCompatiblity](self->_setupController, "pairingCompatiblity"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 runUpdateInSetup], v5, v6))
    {
      v7 = [(NRDevice *)self->_activeWatch valueForProperty:NRDevicePropertyIsSetup];
      v8 = [v7 BOOLValue];

      if (v8)
      {
        self->_isUpdatingInRevLock = 1;
        v9 = pbb_bridge_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315138;
          v17[0] = "[COSPreferencesAppController configureStartupStateForActiveDevice]";
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s - _isUpdatingInRevLock -> YES", &v16, 0xCu);
        }
      }

      else
      {
        v10 = pbb_bridge_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315138;
          v17[0] = "[COSPreferencesAppController configureStartupStateForActiveDevice]";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s - isUpdatingGizmoInSetupFlow -> YES", &v16, 0xCu);
        }

        self->_isUpdatingGizmoInSetupFlow = 1;
      }
    }

    else
    {
      v11 = [(NRDevice *)self->_activeWatch valueForProperty:NRDevicePropertyIsSetup];
      v12 = [v11 BOOLValue];

      v13 = [(NRDevice *)self->_activeWatch valueForProperty:_NRDevicePropertyStatusCode];
      if ([v13 integerValue] == 4)
      {
        self->_deviceIsBeingMigrated = 1;
      }

      if (v12)
      {
        self->_isUpdatingGizmoInSetupFlow = 0;
        self->_isUpdatingInRevLock = 0;
        if (v4 == 3)
        {
          v14 = pbb_bridge_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 67109378;
            LODWORD(v17[0]) = 3290;
            WORD2(v17[0]) = 2080;
            *(v17 + 6) = "[COSPreferencesAppController configureStartupStateForActiveDevice]";
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%d %s - Telling NR to Enter Normal Compatibility state", &v16, 0x12u);
          }

          v15 = +[NRPairedDeviceRegistry sharedInstance];
          [v15 enterCompatibilityState:4 forDevice:self->_activeWatch];
        }
      }
    }
  }

  else
  {
    self->_isUpdatingGizmoInSetupFlow = 0;
  }
}

- (void)transportBecameReachable
{
  if (self->_transportReachabilityAlert)
  {
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1001894D4();
    }

    [(UIAlertController *)self->_transportReachabilityAlert dismissViewControllerAnimated:1 completion:0];
    transportReachabilityAlert = self->_transportReachabilityAlert;
    self->_transportReachabilityAlert = 0;
  }
}

- (void)transportBecameUnreachable
{
  if (self->_transportReachabilityAlert)
  {
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100189510();
    }
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"TROUBLE_CONNECTING" value:&stru_10026E598 table:@"Localizable"];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"TROUBLE_CONNECTING_MESSAGE" value:&stru_10026E598 table:@"Localizable"];
    v8 = [UIAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"TRY_AGAIN_BUTTON" value:&stru_10026E598 table:@"Localizable"];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000B0A90;
    v19[3] = &unk_100268580;
    v19[4] = self;
    v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:v19];
    [(UIAlertController *)v8 addAction:v11];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"RESET_PAIRING_BUTTON" value:&stru_10026E598 table:@"Localizable"];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000B0B10;
    v18[3] = &unk_100268580;
    v18[4] = self;
    v14 = [UIAlertAction actionWithTitle:v13 style:2 handler:v18];
    [(UIAlertController *)v8 addAction:v14];

    v15 = [(COSSetupController *)self->_setupController navigationController];
    [v15 presentViewController:v8 animated:1 completion:0];

    transportReachabilityAlert = self->_transportReachabilityAlert;
    self->_transportReachabilityAlert = v8;
    v3 = v8;

    v17 = pbb_setupflow_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100189588();
    }
  }
}

- (void)setSelectedTabBarViewController:(id)a3
{
  obj = a3;
  v4 = [(COSPreferencesAppController *)self rootViewController];
  [v4 setSelectedViewController:obj];

  v5 = objc_storeWeak(&self->_selectedTabViewController, obj);
  [(COSPreferencesAppController *)self reportTabState:obj];
}

- (void)tabBarController:(id)a3 didSelectViewController:(id)a4
{
  v5 = a4;
  [(COSPreferencesAppController *)self _tintTabBarWithViewController:v5];
  WeakRetained = objc_loadWeakRetained(&self->_selectedTabViewController);

  settingsSplitViewController = self->_settingsSplitViewController;
  v8 = pbb_setup_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithBool:WeakRetained == v5];
    v26 = 138412290;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reselected the same tab: %@", &v26, 0xCu);
  }

  v10 = pbb_setup_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Selected Controller: %@", &v26, 0xCu);
  }

  if (WeakRetained == v5)
  {
    if (settingsSplitViewController == v5)
    {
      v13 = [(COSPreferencesRootController *)self->_settingsController rootListController];
      v14 = [v13 navigationController];
      v15 = [v14 viewControllers];
      v16 = [v15 count];

      if (v16 > 1)
      {
        if (![(COSPreferencesAppController *)self onlySatellitePairedAndInactive])
        {
          v17 = pbb_setup_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v26) = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Pop to root of Settings", &v26, 2u);
          }

          v18 = [(PSSplitViewController *)v5 view];
          [v18 setUserInteractionEnabled:0];

          [(COSPreferencesAppController *)self popToTopLevelSettingsAnimated:1];
        }
      }

      else
      {
        [(COSPreferencesAppController *)self _scrollToTopOfSettingsAnimated:1];
      }
    }

    else
    {
      v11 = [(PSSplitViewController *)v5 contentScrollView];
      [v11 adjustedContentInset];
      [v11 setContentOffset:1 animated:{0.0, -v12}];
    }
  }

  else
  {
    [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  }

  v19 = [(COSPreferencesAppController *)self galleryViewController];
  if (v19 == v5)
  {
    galleryTTRUserActivity = self->_galleryTTRUserActivity;

    if (!galleryTTRUserActivity)
    {
      v22 = [[BPSTTRMetadata alloc] initWithComponent:1];
      v24 = [BPSTapToRadarCoordinator tapToRadarUserActivityWithInitialMetadata:v22];
      v25 = self->_galleryTTRUserActivity;
      self->_galleryTTRUserActivity = v24;

      [(NSUserActivity *)self->_galleryTTRUserActivity becomeCurrent];
      goto LABEL_22;
    }
  }

  else
  {
  }

  v21 = [(COSPreferencesAppController *)self galleryViewController];
  v22 = v21;
  if (v21 == v5)
  {
LABEL_22:

    goto LABEL_23;
  }

  v23 = self->_galleryTTRUserActivity;

  if (v23)
  {
    [(NSUserActivity *)self->_galleryTTRUserActivity invalidate];
    v22 = self->_galleryTTRUserActivity;
    self->_galleryTTRUserActivity = 0;
    goto LABEL_22;
  }

LABEL_23:
  [(COSPreferencesAppController *)self reportTabState:v5];
  objc_storeWeak(&self->_selectedTabViewController, v5);
}

- (void)_tintTabBarWithViewController:(id)a3
{
  v4 = +[UIApplication sharedApplication];
  [v4 setStatusBarStyle:1];

  v6 = [(COSPreferencesAppController *)self rootViewController];
  v5 = [v6 tabBar];
  sub_1000071E0(v5);
}

- (void)_networkingStartNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B105C;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_networkingStopNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B113C;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)presentUnpairingViewControllerAnimated:(BOOL)a3
{
  if (self->_unpairingVC)
  {
    v4 = pbb_bridge_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_unpairingVC != 0;
      v6 = self->_setupController != 0;
      v7 = self->_rootViewController != 0;
      *buf = 67109632;
      *v29 = v5;
      *&v29[4] = 1024;
      *&v29[6] = v6;
      v30 = 1024;
      v31 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skipping Presenting Unpairing UI - Already showing: %{BOOL}d setupController: %{BOOL}d _rootViewController: %{BOOL}d", buf, 0x14u);
    }

    self->_pendingUnpairUIPresentation = 0;
  }

  else if (self->_setupController || !self->_rootViewController)
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Marked unpairing wait until post setup controller cleanup.", buf, 2u);
    }

    self->_pendingUnpairUIPresentation = 1;
  }

  else
  {
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Presenting Unpairing UI - Waiting for NR to be ready (Unpairing)...", buf, 2u);
    }

    v11 = objc_alloc_init(COSUnpairingViewController);
    unpairingVC = self->_unpairingVC;
    self->_unpairingVC = v11;

    self->_pendingUnpairUIPresentation = 0;
    [(COSUnpairingViewController *)self->_unpairingVC setModalInPresentation:1];
    self->_dismissUnpairUIOnPresentation = 0;
    v13 = self->_rootViewController;
    if ([(COSPreferencesAppController *)self _devicePickerBeingPresented])
    {
      WeakRetained = objc_loadWeakRetained(&self->_devicePickerNavigationController);

      v15 = pbb_bridge_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v29 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updated presenting controller for Unpair UI to device picker nav controller: %@", buf, 0xCu);
      }
    }

    else
    {
      WeakRetained = v13;
    }

    objc_initWeak(buf, self);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000B1658;
    v24[3] = &unk_100268380;
    objc_copyWeak(&v26, buf);
    v16 = WeakRetained;
    v25 = v16;
    v27 = a3;
    v17 = objc_retainBlock(v24);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000B1930;
    v20[3] = &unk_10026AB20;
    v18 = v16;
    v21 = v18;
    v23 = a3;
    v19 = v17;
    v22 = v19;
    [(COSPreferencesAppController *)self presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v20];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }
}

- (void)_performWorkAfterUnpairingVCDismissalWithCompletionBlock:(id)a3
{
  v4 = a3;
  [(COSPreferencesAppController *)self _refreshShortCuts];
  unpairingVC = self->_unpairingVC;
  self->_unpairingVC = 0;

  self->_pendingUnpairUIPresentation = 0;
  self->_dismissUnpairUIOnPresentation = 0;
  self->_pendingUnpairingVCDismissal = 0;
  [(COSPreferencesAppController *)self popToTopLevelSettingsAnimated:1];
  if ([(COSPreferencesAppController *)self _devicePickerBeingPresented])
  {
    v6 = [(COSPreferencesAppController *)self devicePickerNavigationController];
    v7 = [v6 viewControllers];

    if ([v7 count])
    {
      v8 = [(COSPreferencesAppController *)self devicePickerNavigationController];
      v9 = [v7 objectAtIndexedSubscript:0];
      v25 = v9;
      v10 = [NSArray arrayWithObjects:&v25 count:1];
      [v8 setViewControllers:v10 animated:0];
    }
  }

  v11 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v12 = v11 == 0;

  if (v12)
  {
    v13 = sub_100009AB4();
    v14 = [v13 count] == 0;

    if (v14)
    {
      v15 = [(COSPreferencesAppController *)self rootViewController];
      v16 = [v15 presentedViewController];

      if ([(COSPreferencesAppController *)self _devicePickerBeingPresented])
      {
        v17 = pbb_bridge_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v24 = "[COSPreferencesAppController _performWorkAfterUnpairingVCDismissalWithCompletionBlock:]";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s. Dismissing empty device picker after unpairUI dismissal", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v18 = [(COSPreferencesAppController *)self rootViewController];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000B1E18;
        v20[3] = &unk_100268FF0;
        objc_copyWeak(&v22, buf);
        v21 = v4;
        [v18 dismissViewControllerAnimated:v16 != 0 completion:v20];

        objc_destroyWeak(&v22);
        objc_destroyWeak(buf);
      }

      else
      {
        [(COSPreferencesAppController *)self _schedulePendingAppDelegateIfPresent];
        if (v4)
        {
          v4[2](v4);
        }
      }
    }

    else
    {
      if ([(COSPreferencesAppController *)self _devicePickerBeingPresented])
      {
        [(COSPreferencesAppController *)self _schedulePendingAppDelegateIfPresent];
        if (!v4)
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }

      v19 = pbb_bridge_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Requesting device Picker UI after dismissing Unpairing UI", buf, 2u);
      }

      [(COSPreferencesAppController *)self presentDevicePicker];
    }
  }

  else
  {
    [(COSPreferencesAppController *)self _schedulePendingAppDelegateIfPresent];
    if (v4)
    {
LABEL_7:
      v4[2](v4);
    }
  }

LABEL_22:
}

- (void)dismissUnpairingViewControllerAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  unpairingVC = self->_unpairingVC;
  if (unpairingVC && !self->_pendingUnpairingVCDismissal)
  {
    v11 = [(COSUnpairingViewController *)unpairingVC presentingViewController];

    if (v11)
    {
      self->_pendingUnpairingVCDismissal = 1;
      v12 = pbb_bridge_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_unpairingVC;
        v14 = [(COSUnpairingViewController *)v13 presentingViewController];
        *buf = 138412546;
        v23 = v13;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Dismissing Unpairing UI :%@  since NR is Ready. Presenting VC: %@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v15 = [(COSUnpairingViewController *)self->_unpairingVC presentingViewController];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000B21D4;
      v19[3] = &unk_100268FF0;
      objc_copyWeak(&v21, buf);
      v20 = v6;
      [v15 dismissViewControllerAnimated:v4 completion:v19];

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }

    else
    {
      v16 = [(COSUnpairingViewController *)self->_unpairingVC controllerBeingDismissedOrGone];
      v17 = pbb_bridge_log();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (v18)
        {
          *buf = 136315138;
          v23 = "[COSPreferencesAppController dismissUnpairingViewControllerAnimated:withCompletion:]";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s. unpairingVC dismissed under us. cleaning up.", buf, 0xCu);
        }

        [(COSPreferencesAppController *)self _performWorkAfterUnpairingVCDismissalWithCompletionBlock:v6];
      }

      else
      {
        if (v18)
        {
          *buf = 136315138;
          v23 = "[COSPreferencesAppController dismissUnpairingViewControllerAnimated:withCompletion:]";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s. Missing presenting VC", buf, 0xCu);
        }

        self->_dismissUnpairUIOnPresentation = 1;
      }
    }
  }

  else
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_unpairingVC;
      pendingUnpairingVCDismissal = self->_pendingUnpairingVCDismissal;
      *buf = 136315650;
      v23 = "[COSPreferencesAppController dismissUnpairingViewControllerAnimated:withCompletion:]";
      v24 = 2112;
      v25 = v9;
      v26 = 1024;
      v27 = pendingUnpairingVCDismissal;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Skipping: unpairingVC: %@ pendingUnpairingVCDismissal: %{BOOL}d ", buf, 0x1Cu);
    }
  }
}

- (void)updateNRStatusForPresentingOrDismissingUnpairingUI:(unint64_t)a3
{
  if (!a3 || a3 == 2)
  {
    [(COSPreferencesAppController *)self dismissUnpairingViewControllerAnimated:1];
    if (a3 == 2)
    {
      if (self->_waitForActiveDeviceReady)
      {
        self->_waitForActiveDeviceReady = 0;
        [(COSPreferencesAppController *)self performTasksOnActiveDeviceUpdate];
      }

      [(COSPreferencesAppController *)self startScanningForNearbyDevices];
    }
  }

  else if (a3 == 5)
  {

    [(COSPreferencesAppController *)self presentUnpairingViewControllerAnimated:1];
  }
}

- (void)nanoRegistryStatusChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:NRPairedDeviceRegistryStatusKey];

  v6 = [v5 unsignedIntegerValue];
  v7 = +[NRPairedDeviceRegistry sharedInstance];
  v8 = [v7 compatibilityState];

  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithUnsignedShort:v8];
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(App) NR Status Changed to %@ with CompatibilityState %@", &v11, 0x16u);
  }

  [(COSPreferencesAppController *)self updateNRStatusForPresentingOrDismissingUnpairingUI:v6];
}

- (void)_extendBackgroundAssertion
{
  v3 = pbb_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[COSPreferencesAppController _extendBackgroundAssertion]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  [(NSTimer *)self->_taskCompletionTimeout invalidate];
  v4 = [NSTimer timerWithTimeInterval:self target:"expireTaskAssertion:" selector:0 userInfo:0 repeats:600.0];
  taskCompletionTimeout = self->_taskCompletionTimeout;
  self->_taskCompletionTimeout = v4;

  v6 = +[NSRunLoop currentRunLoop];
  [v6 addTimer:self->_taskCompletionTimeout forMode:NSRunLoopCommonModes];
}

- (void)setSyncTrapUIEnabled:(BOOL)a3
{
  v3 = a3;
  if (self->_syncTrapUIEnabled && !a3)
  {
    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing suspend assertion and resetting link preference", v8, 2u);
    }

    v6 = [(COSSetupController *)self->_setupController linkUpgradeMonitor];
    [v6 resetCompanionLinkPreference];

    [(COSPreferencesAppController *)self resetSuspendAssertion];
  }

  self->_syncTrapUIEnabled = v3;
  v7 = +[BPSBridgeAppContext shared];
  [v7 setSyncTrapUIEnabled:v3];
}

- (void)resetFlowForCameraExpiry
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reset Flow For Camera Expiry", v4, 2u);
  }

  if (self->_setupController)
  {
    [(COSPreferencesAppController *)self dismissSetupFlowAnimated:1];
  }
}

- (void)tappedStart
{
  if (sub_10002E80C())
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(COSPreferencesAppController *)self tappedStartForMode:v3];
}

- (void)tappedStartForMode:(unint64_t)a3 withAnimation:(BOOL)a4
{
  v4 = a4;
  v7 = +[UIDevice currentDevice];
  [v7 setOrientation:1];

  [(COSPreferencesAppController *)self presentSetupFlowWithMode:a3 animated:v4];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B28BC;
  v13[3] = &unk_1002682F0;
  v13[4] = self;
  v8 = objc_retainBlock(v13);
  v9 = [(COSPreferencesAppController *)self navigationController];
  v10 = [v9 transitionCoordinator];

  if (v10 && ![v10 presentationStyle])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B28C8;
    v11[3] = &unk_10026A4C8;
    v12 = v8;
    [v10 animateAlongsideTransition:0 completion:v11];
  }

  else
  {
    (v8[2])(v8);
  }
}

- (void)presentMigrationConnectionFailedAlert
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B2980;
  v4[3] = &unk_10026A900;
  v5 = objc_alloc_init(COSMigrationConnectionFailed);
  v3 = v5;
  [(COSPreferencesAppController *)self presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v4];
}

- (void)presentNewPairingFlowIfPossibleWithAnimation:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B2A84;
  v9[3] = &unk_10026AE10;
  v13 = sub_100005808(0, &v15);
  v14 = a3;
  v10 = v15;
  v11 = self;
  v12 = v6;
  v7 = v6;
  v8 = v10;
  [(COSPreferencesAppController *)self presentGetConnectedAlertIfNeededWithWifi:1 withCompletion:v9];
}

- (void)pingWatch
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = qword_1002BD550;
  v9 = qword_1002BD550;
  if (!qword_1002BD550)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000B887C;
    v5[3] = &unk_1002680D0;
    v5[4] = &v6;
    sub_1000B887C(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  v4 = [v2 sharedDeviceConnection];
  [v4 playSoundOnCompanionWithCompletion:&stru_10026AE30];
}

- (void)successfullyBeganUnpairingWatch
{
  [UIApp clearBridgeSettingsTabBarItemBadge];
  [(COSPreferencesAppController *)self refreshTabBar];
  v3 = [(COSPreferencesAppController *)self _getStartedController];
  [v3 registerNRObserver];

  [(COSPreferencesAppController *)self popToTopLevelSettingsAnimated:1];
  v4 = [(COSPreferencesRootController *)self->_settingsController rootListController];
  [v4 reloadSpecifiers];
}

- (void)reloadAppearance:(id)a3
{
  [(COSPreferencesAppController *)self _prepareAppearances];
  [(COSSetupController *)self->_setupController reloadAppearance];

  [(COSPreferencesAppController *)self refreshTabBar];
}

- (void)screenshotService:(id)a3 generatePDFRepresentationWithCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Screenshot service did request PDF representation.", buf, 2u);
  }

  v8 = [v6 windowScene];

  v9 = [v8 windows];
  v10 = [v9 firstObject];

  v11 = [v10 recursiveDescription];
  v12 = dispatch_get_global_queue(25, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B34EC;
  v15[3] = &unk_100268C18;
  v16 = v11;
  v17 = v5;
  v13 = v5;
  v14 = v11;
  dispatch_async(v12, v15);
}

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    activeWatch = self->_activeWatch;
    v12 = pbb_bridge_log();
    v13 = v12;
    if (activeWatch == v8)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(NRDevice *)v8 _bridgeConciseDebugDescription];
        v19 = 138412546;
        v20 = v9;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Property (%@) Changed for device %@", &v19, 0x16u);
      }

      if (([v9 isEqualToString:NRDevicePropertySystemVersion] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", _NRDevicePropertyCapabilities))
      {
        v16 = +[NSNotificationCenter defaultCenter];
        [v16 postNotificationName:@"COSActiveDeviceEssentialPropertiesChanged" object:0];

        if (BPSDeviceHasCapabilityForString())
        {
          v17 = MGGetProductType();
          if (v17 == 4232256925 || v17 == 344862120)
          {
            [(COSPreferencesAppController *)self newerCompanionRequired];
          }
        }
      }

      else if ([v9 isEqualToString:NRDevicePropertyName])
      {
        [(COSPreferencesAppController *)self clearCachedNameForDevice:v8];
        v18 = [(COSPreferencesAppController *)self settingsListController];
        [v18 reloadAppleWatchDetails:0];
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(NRDevice *)v8 _bridgeConciseDebugDescription];
        v19 = 138412546;
        v20 = v9;
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Property (%@) Changed for inactive device %@!", &v19, 0x16u);
      }
    }
  }
}

- (void)versionOrCapabilitiesChanged:(id)a3
{
  v4 = [(COSPreferencesRootController *)self->_settingsController topViewController];
  if (![(COSPreferencesAppController *)self isInSetupFlow]&& !self->_unpairingVC)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = pbb_bridge_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pop to top level and reload.", v7, 2u);
      }

      [(COSPreferencesAppController *)self popToTopLevelSettingsAnimated:1];
    }
  }

  v6 = [(COSPreferencesRootController *)self->_settingsController rootListController];
  [v6 reloadSpecifiers];
}

- (void)deviceBecameActive:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];
  v6 = NRDevicePropertyPairingID;
  v33 = v5;
  v7 = [v5 valueForProperty:NRDevicePropertyPairingID];
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v33 _bridgeConciseDebugDescription];
    *buf = 138412290;
    v36 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device Became Active: %@", buf, 0xCu);
  }

  v10 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v11 = [v10 valueForProperty:v6];
  if (v11 | v7 && ([v7 isEqual:v11] & 1) == 0)
  {
    v12 = pbb_bridge_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v10 _bridgeConciseDebugDescription];
      *buf = 138412290;
      v36 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device from DidBecomeActive notification no longer the active one (%@). Coallescing events.", buf, 0xCu);
    }
  }

  v14 = [(COSPreferencesAppController *)self isActivelyPairing];
  v15 = v14;
  if (v14)
  {
    v16 = v7;
    v17 = [(NRDevice *)self->_activeWatch valueForProperty:NRDevicePropertyIsPaired];
    v18 = [v17 BOOLValue];

    v19 = pbb_bridge_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [(NRDevice *)self->_activeWatch _bridgeConciseDebugDescription];
      v20 = v32 = v4;
      *buf = 138412290;
      v36 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Actively Pairing. (Active Watch: %@)", buf, 0xCu);

      v4 = v32;
    }

    v7 = v16;
    if ((v18 & 1) == 0)
    {
      [(COSSetupController *)self->_setupController setScannedDevice:self->_activeWatch];
    }
  }

  v21 = [(NRDevice *)self->_activeWatch valueForProperty:v6];
  v22 = v21;
  if (v11 | v21 && ![v21 isEqual:v11])
  {
    v24 = v7;
    v25 = v4;
    [(COSPreferencesAppController *)self updateActiveWatch:v10];
    inactiveDeviceTimerSource = self->_inactiveDeviceTimerSource;
    if (inactiveDeviceTimerSource)
    {
      dispatch_source_cancel(inactiveDeviceTimerSource);
      v27 = self->_inactiveDeviceTimerSource;
      self->_inactiveDeviceTimerSource = 0;
    }

    if ((v15 & 1) == 0 && !self->_unpairingVC)
    {
      v28 = [(COSPreferencesRootController *)self->_settingsController rootListController];
      v29 = [v28 presentedViewController];

      if ([v29 isMemberOfClass:objc_opt_class()])
      {
        v30 = [v29 topViewController];
        if (([v30 isMemberOfClass:objc_opt_class()] & 1) == 0)
        {
          [(COSPreferencesAppController *)self popToTopLevelSettingsAnimated:1];
        }
      }

      v31 = [(COSPreferencesRootController *)self->_settingsController rootListController];
      [v31 reloadSpecifiers];

      [(COSPreferencesAppController *)self refreshTabBar];
    }

    [(COSPreferencesAppController *)self removeActiveDeviveAssertionIfNotActive];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B4040;
    block[3] = &unk_1002682F0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v4 = v25;
    v7 = v24;
  }

  else
  {
    v23 = pbb_bridge_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Ignoring DidBecomeActive notification: already has up to date active device.", buf, 2u);
    }
  }
}

- (void)deviceBecameInactive:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];
  v6 = NRDevicePropertyAdvertisedName;
  v7 = [v5 valueForProperty:NRDevicePropertyAdvertisedName];
  v47[0] = NRDevicePropertySystemVersion;
  v47[1] = _NRDevicePropertyCapabilities;
  v8 = [NSArray arrayWithObjects:v47 count:2];
  [v5 removePropertyObserver:self forPropertyChanges:v8];

  v9 = [(COSPreferencesAppController *)self activeWatch];
  v10 = [v9 valueForProperty:v6];
  v11 = v10;
  if (v10)
  {
    v12 = v7 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || ([v10 isEqualToString:v7] & 1) != 0)
  {
    v13 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
    if (v13)
    {
      v14 = pbb_bridge_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v13 _bridgeConciseDebugDescription];
        *buf = 138412290;
        v44 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Device became inactive, but there is an active device: %@", buf, 0xCu);
      }
    }

    else
    {
      v16 = [v5 valueForProperty:NRDevicePropertyIsArchived];
      v14 = v16;
      v38 = v4;
      if (v16)
      {
        v36 = [v16 BOOLValue];
      }

      else
      {
        v36 = 0;
      }

      v37 = v9;
      v19 = pbb_bridge_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v5 _bridgeConciseDebugDescription];
        *buf = 138412290;
        v44 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device became inactive: %@", buf, 0xCu);
      }

      [(COSPreferencesAppController *)self updateActiveWatch:0];
      v21 = [(COSPreferencesAppController *)self isActivelyPairing];
      v22 = +[NRPairedDeviceRegistry sharedInstance];
      v23 = +[NRPairedDeviceRegistry pairedDevicesSelectorBlock];
      v24 = [v22 getAllDevicesWithArchivedAltAccountDevicesMatching:v23];

      if (v21)
      {
        v4 = v38;
        if (([v24 containsObject:v5] | v36))
        {
          if (v36)
          {
            v25 = pbb_bridge_log();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = [v5 _bridgeConciseDebugDescription];
              *buf = 138412290;
              v44 = v26;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Recently inactive device is archived, no action needed: %@ ", buf, 0xCu);
            }
          }
        }

        else
        {
          v34 = pbb_bridge_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [v5 pairingID];
            *buf = 138412290;
            v44 = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Device: %@ went inactive during pairing and was not already paired, pairing has likely failed", buf, 0xCu);
          }

          [(COSPreferencesAppController *)self dismissSetupFlowAnimated:1 refreshTabs:1 withCompletionHandler:0];
        }
      }

      else
      {
        [(COSPreferencesAppController *)self _allowInteractionsWithSettingsControllers:0];
        v27 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
        inactiveDeviceTimerSource = self->_inactiveDeviceTimerSource;
        self->_inactiveDeviceTimerSource = v27;

        if (self->_inactiveDeviceTimerSource)
        {
          objc_initWeak(buf, self);
          v29 = self->_inactiveDeviceTimerSource;
          v30 = dispatch_time(0, 350000000);
          dispatch_source_set_timer(v29, v30, 0xFFFFFFFFFFFFFFFFLL, 0x2160EC0uLL);
          v31 = self->_inactiveDeviceTimerSource;
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_1000B46D4;
          handler[3] = &unk_100269DD0;
          handler[4] = self;
          objc_copyWeak(&v42, buf);
          dispatch_source_set_event_handler(v31, handler);
          v32 = self->_inactiveDeviceTimerSource;
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_1000B4980;
          v39[3] = &unk_100268430;
          objc_copyWeak(&v40, buf);
          dispatch_source_set_cancel_handler(v32, v39);
          dispatch_resume(self->_inactiveDeviceTimerSource);
          objc_destroyWeak(&v40);
          objc_destroyWeak(&v42);
          objc_destroyWeak(buf);
        }

        v33 = +[BPSTinkerSupport sharedInstance];
        [v33 resetCachedDeviceValues];

        v4 = v38;
      }

      if (![v24 count])
      {
        [(COSPreferencesAppController *)self refreshTabBar];
      }

      [(COSPreferencesAppController *)self removeActiveDeviveAssertionIfNotActive];

      v9 = v37;
    }
  }

  else
  {
    v13 = pbb_bridge_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 _bridgeConciseDebugDescription];
      v18 = [v9 _bridgeConciseDebugDescription];
      *buf = 138412546;
      v44 = v17;
      v45 = 2112;
      v46 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring device became inactive received for stale device: %@ active device: %@", buf, 0x16u);
    }
  }
}

- (void)_allowInteractionsWithSettingsControllers:(BOOL)a3
{
  v3 = a3;
  v5 = [(COSPreferencesRootController *)self->_settingsController view];
  [v5 setUserInteractionEnabled:v3];

  v6 = [(PSSplitViewController *)self->_settingsSplitViewController view];
  [v6 setUserInteractionEnabled:v3];
}

- (void)_debug_forcePullAssets
{
  v2 = objc_alloc_init(PBBridgeAssetsManager);
  [v2 beginPullingAssetsForDeviceMaterial:2 size:1 completion:0];
  [v2 beginPullingAssetsForDeviceMaterial:1 size:1 completion:0];
  [v2 beginPullingAssetsForDeviceMaterial:4 size:1 completion:0];
}

- (void)discoveredAdvertisingWatch:(id)a3
{
  v4 = a3;
  v5 = pbb_mobileasset_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(discoveredAdvertisingWatch) End Scanning for Nearby Devices...", buf, 2u);
  }

  v6 = +[PPDiscoveryManager sharedDiscoveryManager];
  [v6 end];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:PPDiscoveredDeviceAdvertisingName];
  v9 = [(NSMutableDictionary *)self->_discoveryAssetPullRequests objectForKeyedSubscript:v8];
  v10 = v9;
  if (!v7 || v9)
  {
    goto LABEL_7;
  }

  if (v8)
  {
    v10 = objc_alloc_init(PBBridgeAssetsManager);
    [(NSMutableDictionary *)self->_discoveryAssetPullRequests setObject:v10 forKeyedSubscript:v8];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B4C50;
    v11[3] = &unk_100269F28;
    v12 = v8;
    v13 = self;
    [v10 beginPullingAssetsForAdvertisingName:v12 completion:v11];

LABEL_7:
  }
}

- (void)sizeCategoryDidChange:(id)a3
{
  v5 = [(COSPreferencesRootController *)self->_settingsController topViewController];
  if (([v5 isMemberOfClass:objc_opt_class()] & 1) == 0 && !self->_unpairingVC)
  {
    [(COSPreferencesAppController *)self popToTopLevelSettingsAnimated:0];
  }

  v4 = [(COSPreferencesRootController *)self->_settingsController rootListController];
  [v4 reloadSpecifiers];
}

- (void)_startTopLevelScrollTestComplex:(BOOL)a3 options:(id)a4
{
  v4 = a3;
  v6 = [NSRunLoop mainRunLoop:a3];
  v7 = [NSDate dateWithTimeIntervalSinceNow:1.0];
  [v6 runUntilDate:v7];

  v8 = @"TopLevelFPS";
  if (v4)
  {
    v8 = @"TopLevelFPSComplex";
  }

  settingsController = self->_settingsController;
  v10 = v8;
  v12 = [(COSPreferencesRootController *)settingsController rootListController];
  v11 = [v12 table];
  [(COSPreferencesAppController *)self _testScrollTest:v10 onScrollView:v11];
}

- (void)_prepareForDevicePickerTest
{
  v3 = [NSURL URLWithString:@"root=ActiveWatch"];
  [(COSPreferencesAppController *)self processURL:v3 animated:0 fromSearch:0];

  v5 = +[NSRunLoop mainRunLoop];
  v4 = [NSDate dateWithTimeIntervalSinceNow:0.5];
  [v5 runUntilDate:v4];
}

- (void)_starDevicePickerRotationTestWithOptions:(id)a3
{
  [(COSPreferencesAppController *)self _prepareForDevicePickerTest];
  v4 = [(COSPreferencesAppController *)self rootViewController];
  v7 = [v4 presentedViewController];

  v5 = [v7 topViewController];
  v6 = [v5 table];
  [(COSPreferencesAppController *)self _testScrollTest:@"DevicePickerScrolling" onScrollView:v6];
}

- (void)_startFaceGalleryScrollTestWithOptions:(id)a3
{
  v6 = [(COSPreferencesAppController *)self galleryViewController];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(COSPreferencesAppController *)self rootViewController];
    [v4 setSelectedViewController:v6];

    [(COSPreferencesAppController *)self setSelectedTabViewController:v6];
    v5 = [(COSPreferencesAppController *)self galleryViewController];
    [v5 _performFaceGalleryScrollTestNamed:@"FaceGalleryFPS" iterations:1];
  }
}

- (void)_showInitialSyncPaneIfNotAlreadyShowing
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B51B4;
  v6[3] = &unk_1002682F0;
  v6[4] = self;
  v3 = objc_retainBlock(v6);
  if ([(COSSetupController *)self->_setupController mode]!= 3)
  {
    if (self->_unpairingVC)
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_1000B5380;
      v4[3] = &unk_100269120;
      v5 = v3;
      [(COSPreferencesAppController *)self dismissUnpairingViewControllerAnimated:1 withCompletion:v4];
    }

    else
    {
      (v3[2])(v3);
    }
  }
}

- (void)globalAlertPresentationCoordinator:(id)a3 syncProgressDidUpdate:(double)a4
{
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithDouble:a4];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "globalAlertPresentationCoordinator:syncProgressDidUpdate: (%@)", &v7, 0xCu);
  }
}

- (void)globalAlertPresentationCoordinator:(id)a3 presentAlert:(unint64_t)a4 withCompletion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B5520;
  v10[3] = &unk_10026AE58;
  v11 = a3;
  v12 = self;
  v13 = a5;
  v14 = a4;
  v8 = v13;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)globalAlertPresentationCoordinator:(id)a3 dismissAlert:(unint64_t)a4 withCompletion:(id)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B572C;
  block[3] = &unk_100268180;
  v9 = a5;
  v10 = a4;
  block[4] = self;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_testScrollTest:(id)a3 onScrollView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_time(0, 500000000);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B5930;
  v10[3] = &unk_100268358;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_after(v7, &_dispatch_main_q, v10);
}

- (void)_updateAppStoreRowForRepair
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000B5A10;
  v2[3] = &unk_10026AE80;
  v2[4] = self;
  [COSiTunesStoreAuthController repairDialogsForActiveDeviceWithCompletion:v2];
}

- (void)deviceSpecificRepairSteps:(id)a3
{
  v4 = a3;
  if ([(COSPreferencesAppController *)self isInSetupFlow])
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping device specific repair steps as we are in pairing", buf, 2u);
    }
  }

  else
  {
    v6 = [v4 valueForProperty:NRDevicePropertyIsAltAccount];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = pbb_accountsignin_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deviceSpecificRepairSteps for Satellite-Paired %@", buf, 0xCu);
      }

      v9 = +[BPSTinkerSupport sharedInstance];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000B5EF4;
      v12[3] = &unk_10026AEA8;
      v12[4] = self;
      [v9 getActiveTinkerFamilyMemberDetailsWithCompletion:v12];
    }

    else
    {
      v10 = [[NSUUID alloc] initWithUUIDString:@"1CFACCB8-FFEB-4682-A50E-16F853583912"];
      v11 = [v4 supportsCapability:v10];

      if (v11)
      {
        [(COSPreferencesAppController *)self _updateAppStoreRowForRepair];
      }
    }
  }
}

- (void)testPrep:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "testPrep: %@ options: %@", &v12, 0x16u);
  }

  byte_1002BD54C = [v6 isEqualToString:@"TopLevelFPSComplex"] != 0;
  v9 = [(COSPreferencesRootController *)self->_settingsController rootListController];
  [v9 reloadSpecifiers];

  [(COSPreferencesAppController *)self refreshTabBar];
  v10 = +[NSRunLoop mainRunLoop];
  v11 = [NSDate dateWithTimeIntervalSinceNow:1.0];
  [v10 runUntilDate:v11];
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(COSPreferencesAppController *)self testPrep:v6 options:v7];
  if ([v6 isEqualToString:@"TopLevelFPS"])
  {
    [(COSPreferencesAppController *)self _startTopLevelScrollTestComplex:0 options:v7];
  }

  else
  {
    if ([v6 isEqualToString:@"TopLevelFPSComplex"])
    {
      v8 = 1;
      [(COSPreferencesAppController *)self _startTopLevelScrollTestComplex:1 options:v7];
      goto LABEL_6;
    }

    if ([v6 isEqualToString:@"DevicePickerScrolling"])
    {
      [(COSPreferencesAppController *)self _starDevicePickerRotationTestWithOptions:v7];
    }

    else
    {
      if (![v6 isEqualToString:@"FaceGalleryFPS"])
      {
        v10.receiver = self;
        v10.super_class = COSPreferencesAppController;
        v8 = [(COSPreferencesAppController *)&v10 runTest:v6 options:v7];
        goto LABEL_6;
      }

      [(COSPreferencesAppController *)self _startFaceGalleryScrollTestWithOptions:v7];
    }
  }

  v8 = 1;
LABEL_6:

  return v8;
}

- (void)startedTest:(id)a3
{
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Started %@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = COSPreferencesAppController;
  [(COSPreferencesAppController *)&v6 startedTest:v4];
}

- (void)finishedTest:(id)a3
{
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished %@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = COSPreferencesAppController;
  [(COSPreferencesAppController *)&v6 finishedTest:v4];
}

- (void)cancelTinkerSwitch:(id)a3
{
  [(NRActiveDeviceAssertion *)self->_activeWatchAssertion invalidate];
  activeWatchAssertion = self->_activeWatchAssertion;
  self->_activeWatchAssertion = 0;
}

+ (id)getActiveDevice
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];

  v5 = [v4 firstObject];

  return v5;
}

- (void)setActiveWatch:(id)a3 startedBlock:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pbb_bridge_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 valueForProperty:NRDevicePropertyPairingID];
    v20 = 136315394;
    v21 = "[COSPreferencesAppController setActiveWatch:startedBlock:completionBlock:]";
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v20, 0x16u);
  }

  v13 = [UIApp activeWatch];
  if (!v8)
  {
    v8 = [objc_opt_class() getActiveDevice];
  }

  v14 = [v8 valueForProperty:NRDevicePropertyIsAltAccount];
  if (![v14 BOOLValue])
  {
    goto LABEL_13;
  }

  v15 = [(COSPreferencesAppController *)self activeWatchAssertion];
  v16 = [v15 device];
  v17 = v16;
  if (v16 != v8)
  {

LABEL_13:
    [(COSPreferencesAppController *)self switchToDevice:v8 startedBlock:v9 completionBlock:v10];
    goto LABEL_14;
  }

  v18 = [(COSPreferencesAppController *)self activeWatchAssertion];
  v19 = [v18 isActive];

  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

  if (v9)
  {
    v9[2](v9, 1);
  }

  if (v10)
  {
    v10[2](v10, 1);
  }

LABEL_14:
}

- (void)reachability:(id)a3 device:(id)a4 connectionStatus:(unint64_t)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B67E0;
  v7[3] = &unk_100268358;
  v8 = a4;
  v9 = self;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)checkIDSReachability
{
  v3 = [(COSPreferencesAppController *)self activeWatchAssertion];
  v4 = [v3 device];

  if (v4)
  {
    v5 = +[PBBridgeIDSReachability sharedInstance];
    v6 = [(COSPreferencesAppController *)self activeWatchAssertion];
    v7 = [v6 device];
    v8 = [v5 reachabilityForDevice:v7];

    v9 = pbb_bridge_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [NSNumber numberWithUnsignedInteger:v8];
      v11 = 136315650;
      v12 = "[COSPreferencesAppController checkIDSReachability]";
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s (Status: %@) %@", &v11, 0x20u);
    }
  }
}

- (void)_showTinkerSwitchFailureModalForDevice:(id)a3
{
  v4 = [a3 valueForProperty:NRDevicePropertyName];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"TINKER_SWITCH_TIMEOUT_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"TINKER_SWITCH_TIMEOUT_MESSAGE_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
  v9 = [NSString stringWithFormat:v8, v4];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];

  v12 = [UIAlertController alertControllerWithTitle:v6 message:v9 preferredStyle:1];
  v13 = [UIAlertAction actionWithTitle:v11 style:1 handler:0];
  [v12 addAction:v13];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B6C14;
  v15[3] = &unk_10026A900;
  v16 = v12;
  v14 = v12;
  [(COSPreferencesAppController *)self presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v15];
}

- (void)switchToDevice:(id)a3 startedBlock:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v8 = [objc_opt_class() getActiveDevice];
  }

  v11 = [v8 valueForProperty:NRDevicePropertyIsAltAccount];
  v12 = [v11 BOOLValue];

  self->_isTinkerSwitching = v12;
  if (v8)
  {
    if (v12)
    {
      v13 = [(COSPreferencesAppController *)self activeWatchAssertion];
      v14 = [v13 device];
      if (v8 == v14)
      {
        v16 = [(COSPreferencesAppController *)self activeWatchAssertion];
        v15 = [v16 isActive] ^ 1;
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v13 = [objc_opt_class() getActiveDevice];
      v15 = v8 != v13;
    }

    if (v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
    if (v9)
    {
LABEL_13:
      v9[2](v9, v15);
    }
  }

  if (v15)
  {
    v17 = +[NRPairedDeviceRegistry sharedInstance];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000B6E38;
    v18[3] = &unk_10026AEF0;
    v21 = v12;
    v18[4] = self;
    v19 = v8;
    v20 = v10;
    [v17 setActivePairedDevice:v19 withActiveDeviceAssertionHandler:v18];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 1);
  }
}

- (void)setActiveWatchAssertion:(id)a3
{
  v4 = a3;
  activeWatchAssertion = self->_activeWatchAssertion;
  if (activeWatchAssertion != v4 || v4 && ([(NRActiveDeviceAssertion *)activeWatchAssertion isActive]& 1) == 0)
  {
    if ([(NRActiveDeviceAssertion *)v4 isActive])
    {
      v6 = pbb_bridge_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting active watch assertion: %{public}@", &v12, 0xCu);
      }

      v7 = v4;
      goto LABEL_16;
    }

    v8 = pbb_bridge_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v9)
      {
        LOWORD(v12) = 0;
        v10 = "Clearing active watch assertion because it is dead";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v12, 2u);
      }
    }

    else if (v9)
    {
      LOWORD(v12) = 0;
      v10 = "Clearing active watch assertion because it is nil";
      goto LABEL_14;
    }

    v7 = 0;
LABEL_16:
    v11 = self->_activeWatchAssertion;
    self->_activeWatchAssertion = v7;

    [(COSPreferencesAppController *)self checkIDSReachability];
  }
}

- (void)remoteFinishedHealthSharingOptInWithSelection:(BOOL)a3
{
  v3 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received health sharing status on companion, opt-in value: %@", &v7, 0xCu);
  }

  [(COSSetupController *)self->_setupController gizmoDidFinishHealthSharingOptIn:v3];
}

- (BOOL)onlySatellitePairedAndInactive
{
  v2 = sub_10000DB38();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_10000D61C();
  }

  return v3;
}

- (void)setCachedName:(id)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(COSPreferencesAppController *)self cachedDeviceNames];

  if (!v8)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    [(COSPreferencesAppController *)self setCachedDeviceNames:v9];
  }

  v11 = [(COSPreferencesAppController *)self cachedDeviceNames];
  v10 = [v6 pairingID];

  [v11 setObject:v7 forKey:v10];
}

- (void)clearCachedNameForDevice:(id)a3
{
  v4 = a3;
  v5 = [(COSPreferencesAppController *)self cachedDeviceNames];
  if (v5)
  {
    v6 = v5;
    v7 = [(COSPreferencesAppController *)self cachedDeviceNames];
    v8 = [v4 pairingID];
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      v10 = pbb_bridge_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cached name for device found, clearing...", v13, 2u);
      }

      v11 = [(COSPreferencesAppController *)self cachedDeviceNames];
      v12 = [v4 pairingID];
      [v11 removeObjectForKey:v12];
    }
  }
}

- (id)cachedNameForDevice:(id)a3
{
  v4 = NRDevicePropertyName;
  v5 = a3;
  v6 = [v5 valueForProperty:v4];
  v7 = [(COSPreferencesAppController *)self cachedDeviceNames];
  v8 = [v5 pairingID];

  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding device name (%@) with cached name: %@", &v13, 0x16u);
    }

    v11 = v9;
    v6 = v11;
  }

  return v6;
}

- (id)tinkerUserName
{
  v3 = [(COSPreferencesAppController *)self setupController];

  if (v3)
  {
    v4 = [(COSPreferencesAppController *)self setupController];
    v5 = [v4 tinkerUserName];
LABEL_5:
    v12 = v5;

    goto LABEL_6;
  }

  v6 = [(COSPreferencesAppController *)self activeWatch];
  v7 = [v6 valueForProperty:NRDevicePropertyIsAltAccount];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = [NPSDomainAccessor alloc];
    v10 = kBridgeDomain;
    v11 = [(COSPreferencesAppController *)self activeWatch];
    v4 = [v9 initWithDomain:v10 pairedDevice:v11];

    v5 = [v4 objectForKey:@"kTinkerUserNameKey"];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (void)reportTabState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  if (self->_myWatchViewController == v4)
  {
    v7 = 1;
LABEL_12:
    v8 = sub_100009350();
    v9 = [v8 count];

    v10 = sub_1000093AC();
    v11 = [v10 count];

    [PBBridgeCAReporter recordTabSelection:v7 classicCount:v9 tinkerCount:v11];
    goto LABEL_13;
  }

  if (self->_galleryViewController == v4)
  {
    v7 = 2;
    goto LABEL_12;
  }

  if (self->_discoverNavigationController == v4)
  {
    v7 = 3;
    goto LABEL_12;
  }

  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unknown Tab State - Skipping CA Reporting", v12, 2u);
  }

LABEL_13:
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v16 = a4;
  v8 = a5;
  v9 = a3;
  [(COSPreferencesAppController *)self refreshUpdateBadge];
  v10 = [(COSPreferencesAppController *)self ntkCustomization];
  v11 = [v10 handleUserNotificationResponse:v16 fromNotificationCenter:v9 withCompletionHandler:v8];

  if ((v11 & 1) == 0)
  {
    v12 = [v16 notification];
    v13 = [v12 request];
    v14 = [v13 identifier];
    v15 = [v14 isEqualToString:@"com.apple.Bridge.request"];

    if (v15)
    {
      +[PBBridgeCAReporter recordUserAwarenessNotificationDuringSetupUserEngaged];
    }

    if (v8)
    {
      v8[2](v8);
    }
  }
}

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v15 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(COSPreferencesAppController *)self ntkCustomization];
  v11 = [v10 handlePresentationOfNotification:v15 fromNotificationCenter:v9 withCompletionHandler:v8];

  if ((v11 & 1) == 0)
  {
    v12 = [v15 request];
    v13 = [v12 identifier];
    v14 = [v13 isEqualToString:@"com.apple.Bridge.request"];

    if (v14)
    {
      +[PBBridgeCAReporter recordUserAwarenessNotificationDuringSetup];
    }

    if (v8)
    {
      v8[2](v8, 26);
    }
  }
}

- (void)setIsRestoringToKnownDevice:(BOOL)a3
{
  self->_isRestoringToKnownDevice = a3;
  v4 = +[BPSBridgeAppContext shared];
  [v4 updateIsRestoringToKnownDevice:self->_isRestoringToKnownDevice];
}

- (BOOL)isEitherPhoneOrActiveWatchGreenTeaDevice
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 sf_isChinaRegionCellularDevice];

  v5 = [(COSPreferencesAppController *)self activeWatch];
  v6 = [v5 valueForProperty:NRDevicePropertyGreenTeaDevice];
  v7 = [v6 BOOLValue];

  return (v4 | v7) & 1;
}

- (BOOL)safeToPopToSettingsRootController
{
  v3 = NSClassFromString(@"MCUINavigationViewController");
  isKindOfClass = v3;
  if (v3)
  {
    v5 = [(COSPreferencesAppController *)self rootViewController];
    v6 = [v5 presentedViewController];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_unpairingVC != 0;
    v9 = self->_setupController != 0;
    isUpdatingGizmoInSetupFlow = self->_isUpdatingGizmoInSetupFlow;
    v12 = 136316162;
    v13 = "[COSPreferencesAppController safeToPopToSettingsRootController]";
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    v18 = 1024;
    v19 = isUpdatingGizmoInSetupFlow;
    v20 = 1024;
    v21 = isKindOfClass & 1;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s _unpairingVC: %{BOOL}d, _setupController: %{BOOL}d, _isUpdatingGizmoInSetupFlow: %{BOOL}d, managedConfigurationFlowIsPresented: %{BOOL}d", &v12, 0x24u);
  }

  return (isKindOfClass & 1) == 0 && !self->_isUpdatingGizmoInSetupFlow && !self->_setupController && self->_unpairingVC == 0;
}

- (UIViewController)selectedTabViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedTabViewController);

  return WeakRetained;
}

- (UINavigationController)devicePickerNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_devicePickerNavigationController);

  return WeakRetained;
}

@end