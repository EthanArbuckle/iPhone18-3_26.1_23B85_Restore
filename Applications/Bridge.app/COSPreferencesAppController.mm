@interface COSPreferencesAppController
+ (BOOL)hasUpdateAvailable;
+ (id)getActiveDevice;
- (BOOL)_devicePickerBeingPresented;
- (BOOL)_isProductKitUrl:(id)url;
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)application:(id)application willContinueUserActivityWithType:(id)type;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (BOOL)isActivelyPairing;
- (BOOL)isEitherPhoneOrActiveWatchGreenTeaDevice;
- (BOOL)onlySatellitePairedAndInactive;
- (BOOL)runTest:(id)test options:(id)options;
- (BOOL)safeToPopToSettingsRootController;
- (BOOL)shouldConsiderHoldingSuspendAssertion;
- (BOOL)shouldShowWatchPicker;
- (BOOL)splitViewController:(id)controller collapseSecondaryViewController:(id)viewController ontoPrimaryViewController:(id)primaryViewController;
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
- (id)cachedNameForDevice:(id)device;
- (id)currentSpecifierIDPath;
- (id)getLaunchedByValueForURL:(id)l;
- (id)keyValueDictionaryForURL:(id)l;
- (id)oneTimeJumpURL;
- (id)splitViewController:(id)controller separateSecondaryViewControllerFromPrimaryViewController:(id)viewController;
- (id)tinkerUserName;
- (id)urlForActivity:(id)activity;
- (unint64_t)waitToLoadBeforeProcessingURL:(id)l;
- (void)_activateTinkerWatchWithCSN:(id)n completionBlock:(id)block;
- (void)_allowInteractionsWithSettingsControllers:(BOOL)controllers;
- (void)_createIdleNotificationTimer;
- (void)_debug_forcePullAssets;
- (void)_deregisterForPowerNotifications;
- (void)_extendBackgroundAssertion;
- (void)_networkingStartNotification:(id)notification;
- (void)_networkingStopNotification:(id)notification;
- (void)_performURLHandlingForRootListController:(id)controller controller:(id)a4 dictionary:(id)dictionary items:(id)items controllerNeedsPush:(BOOL)push;
- (void)_performWorkAfterUnpairingVCDismissalWithCompletionBlock:(id)block;
- (void)_prepareForDevicePickerTest;
- (void)_refreshShortCuts;
- (void)_refreshTabBarVisibility;
- (void)_registerForPowerNotifications;
- (void)_schedulePendingAppDelegateIfPresent;
- (void)_scrollToTopOfSettingsAnimated:(BOOL)animated;
- (void)_setOffsetForController:(id)controller fromObjectPair:(id)pair;
- (void)_showInitialSyncPaneIfNotAlreadyShowing;
- (void)_showTinkerSwitchFailureModalForDevice:(id)device;
- (void)_starDevicePickerRotationTestWithOptions:(id)options;
- (void)_startFaceGalleryScrollTestWithOptions:(id)options;
- (void)_startTopLevelScrollTestComplex:(BOOL)complex options:(id)options;
- (void)_testScrollTest:(id)test onScrollView:(id)view;
- (void)_tintTabBarWithViewController:(id)controller;
- (void)_updateAppStoreRowForRepair;
- (void)application:(id)application didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)application:(id)application didUpdateUserActivity:(id)activity;
- (void)application:(id)application performActionForShortcutItem:(id)item completionHandler:(id)handler;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillResignActive:(id)active;
- (void)applicationWillTerminate:(id)terminate;
- (void)cancelTinkerSwitch:(id)switch;
- (void)checkForBrokenDeviceAssertion;
- (void)checkIDSReachability;
- (void)checkIfNRRetriggerConditions;
- (void)clearBridgeSettingsTabBarItemBadge;
- (void)clearCachedNameForDevice:(id)device;
- (void)configureStartupStateForActiveDevice;
- (void)createDisplayLayoutManager;
- (void)dealloc;
- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value;
- (void)deviceBecameActive:(id)active;
- (void)deviceBecameInactive:(id)inactive;
- (void)deviceIsSetup:(id)setup;
- (void)deviceSpecificRepairSteps:(id)steps;
- (void)deviceUnpaired:(id)unpaired;
- (void)didHandlePerformanceResults;
- (void)didTapOnLoadingFaceLibraryButton:(id)button;
- (void)disagreeToTerms;
- (void)discoveredAdvertisingWatch:(id)watch;
- (void)dismissSetupFlowAnimated:(BOOL)animated refreshTabs:(BOOL)tabs withCompletionHandler:(id)handler;
- (void)dismissSetupFlowComplete:(BOOL)complete animated:(BOOL)animated;
- (void)dismissUnpairingViewControllerAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)enteredCompatibilityState:(id)state;
- (void)evaluateIfUpdatingInSetupFlowOnLaunch;
- (void)expireTaskAssertion:(id)assertion;
- (void)finishedTest:(id)test;
- (void)generateURL;
- (void)globalAlertPresentationCoordinator:(id)coordinator dismissAlert:(unint64_t)alert withCompletion:(id)completion;
- (void)globalAlertPresentationCoordinator:(id)coordinator presentAlert:(unint64_t)alert withCompletion:(id)completion;
- (void)globalAlertPresentationCoordinator:(id)coordinator syncProgressDidUpdate:(double)update;
- (void)initialPairingFailed:(id)failed;
- (void)loadSettingsController;
- (void)markGalleryTabAsVisited;
- (void)markGalleryTabAsVisitedIfOnGalleryTab;
- (void)messageSendFailed:(id)failed;
- (void)nanoRegistryStatusChanged:(id)changed;
- (void)navigateToRootObjectWithURLDictionary:(id)dictionary animated:(BOOL)animated;
- (void)newerCompanionRequired;
- (void)pairingFailed:(id)failed;
- (void)performTasksOnActiveDeviceUpdate;
- (void)pingWatch;
- (void)popToRootOfSettingsSelectGeneral:(BOOL)general performWithoutDeferringTransitions:(BOOL)transitions;
- (void)popToTopLevelSettingsAnimated:(BOOL)animated;
- (void)postIdleNotification:(id)notification;
- (void)presentDevicePicker:(BOOL)picker;
- (void)presentDevicePickerControllerWith:(BOOL)with;
- (void)presentGetConnectedAlertIfNeededWithWifi:(BOOL)wifi withCompletion:(id)completion;
- (void)presentGreenfieldViewControllerWithUrl:(id)url options:(id)options;
- (void)presentMigrationConnectionFailedAlert;
- (void)presentNewPairingFlowIfPossibleWithAnimation:(BOOL)animation withCompletion:(id)completion;
- (void)presentSetupFlowWithMode:(unint64_t)mode animated:(BOOL)animated;
- (void)presentUnpairingViewControllerAnimated:(BOOL)animated;
- (void)presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:(id)completion;
- (void)prewarmiCloudBackups;
- (void)processURL:(id)l;
- (void)processURL:(id)l animated:(BOOL)animated fromSearch:(BOOL)search;
- (void)pullPairedWatchAssets;
- (void)reachability:(id)reachability device:(id)device connectionStatus:(unint64_t)status;
- (void)refreshActiveWatchFromNanoRegistry;
- (void)refreshTabBar;
- (void)refreshUpdateBadge;
- (void)refreshUpdateBadgeWithTab:(id)tab;
- (void)registerForUserNotifications;
- (void)reloadAppearance:(id)appearance;
- (void)remoteDidFailActivation:(unint64_t)activation description:(id)description userActionable:(BOOL)actionable;
- (void)remoteFinishedHealthSharingOptInWithSelection:(BOOL)selection;
- (void)removeActiveDeviceAssertionFor:(id)for;
- (void)removeActiveDeviveAssertionIfNotActive;
- (void)reportTabState:(id)state;
- (void)resetActivationFailureCountAndReport:(BOOL)report;
- (void)resetFlowForCameraExpiry;
- (void)resetSettingsUIToHomeScreen;
- (void)resetSetupFlowAnimated:(BOOL)animated forEvent:(unint64_t)event;
- (void)resetSetupFlowInternalSettings;
- (void)resetSuspendAssertion;
- (void)retriggerNRAlertIfNeeded;
- (void)screenshotService:(id)service generatePDFRepresentationWithCompletion:(id)completion;
- (void)setActiveWatch:(id)watch startedBlock:(id)block completionBlock:(id)completionBlock;
- (void)setActiveWatchAssertion:(id)assertion;
- (void)setCachedName:(id)name forDevice:(id)device;
- (void)setDevicePickerPresented:(BOOL)presented;
- (void)setIsRestoringToKnownDevice:(BOOL)device;
- (void)setSelectedTabBarViewController:(id)controller;
- (void)setSyncTrapUIEnabled:(BOOL)enabled;
- (void)sizeCategoryDidChange:(id)change;
- (void)splitViewControllerDidPopToRootController:(id)controller;
- (void)startScanningForNearbyDevices;
- (void)startedTest:(id)test;
- (void)successfullyBeganUnpairingWatch;
- (void)switchToDevice:(id)device startedBlock:(id)block completionBlock:(id)completionBlock;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
- (void)tappedStart;
- (void)tappedStartForMode:(unint64_t)mode withAnimation:(BOOL)animation;
- (void)testPrep:(id)prep options:(id)options;
- (void)transportBecameReachable;
- (void)transportBecameUnreachable;
- (void)unpairOrResetBuddyForEvent:(unint64_t)event;
- (void)updateActiveWatch:(id)watch;
- (void)updateActiveWatchBridgeDomainAccessor;
- (void)updateForRemoteActivity:(id)activity;
- (void)updateNRStatusForPresentingOrDismissingUnpairingUI:(unint64_t)i;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
- (void)versionOrCapabilitiesChanged:(id)changed;
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
  shortcutItems = [v3 shortcutItems];
  [UIApp setShortcutItems:shortcutItems];
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
    tabBar = [(UITabBarController *)self->_rootViewController tabBar];
    sub_1000071E0(tabBar);

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
  navigationBar = [(COSPreferencesRootController *)self->_settingsController navigationBar];
  v9 = BPSBridgeTintColor();
  [navigationBar setTintColor:v9];

  v10 = [UINavigationController alloc];
  rootListController = [(COSPreferencesRootController *)self->_settingsController rootListController];
  v12 = [v10 initWithRootViewController:rootListController];

  traitCollection = [(UIWindow *)self->_window traitCollection];
  v14 = [UITraitCollection traitCollectionWithHorizontalSizeClass:2];
  v15 = [traitCollection containsTraitsInCollection:v14];

  if (v15)
  {
    rootListController2 = [(COSPreferencesRootController *)self->_settingsController rootListController];
    generalViewController = [rootListController2 generalViewController];
    v25 = generalViewController;
    v18 = [NSArray arrayWithObjects:&v25 count:1];
    [(COSPreferencesRootController *)self->_settingsController setViewControllers:v18];
  }

  navigationBar2 = [v12 navigationBar];
  BPSApplyStyleToNavBarOptions();

  navigationBar3 = [(COSPreferencesRootController *)self->_settingsController navigationBar];
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
  ntkCustomization = [(COSPreferencesAppController *)self ntkCustomization];
  if ((sub_100008BAC() & 1) == 0 && !ntkCustomization)
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
  migratableDevices = [v6 migratableDevices];
  v9 = [migratableDevices count] == 0;

  v10 = pbb_setup_log();
  v4 = v9 & (v5 ^ 1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [NSNumber numberWithBool:v4];
    v12 = [NSNumber numberWithBool:v5];
    migratableDevices2 = [v6 migratableDevices];
    *buf = 138412802;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2048;
    v66 = [migratableDevices2 count];
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
  _getStartedController = [(COSPreferencesAppController *)self _getStartedController];
  v17 = [v15 initWithRootViewController:_getStartedController];

  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_19:
  tabBarItem = [(PSSplitViewController *)v17 tabBarItem];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"MY_WATCH_TAB_TITLE" value:&stru_10026E598 table:@"TabBar"];
  [tabBarItem _setInternalTitle:v20];

  tabBarItem2 = [(PSSplitViewController *)v17 tabBarItem];
  v22 = [UIImage systemImageNamed:@"applewatch.side.right"];
  [tabBarItem2 setImage:v22];

  [(COSPreferencesAppController *)self setMyWatchViewController:v17];
  [v61 addObject:v17];
LABEL_25:
  if (ntkCustomization)
  {
    bridgeUserNotificationCategories = [(COSPreferencesAppController *)self bridgeUserNotificationCategories];
    v25 = [bridgeUserNotificationCategories mutableCopy];

    galleryViewController = [ntkCustomization galleryViewController];
    tabBarItem3 = [galleryViewController tabBarItem];
    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"GALLERY_TAB_TITLE" value:&stru_10026E598 table:@"TabBar"];
    [tabBarItem3 _setInternalTitle:v29];

    tabBarItem4 = [galleryViewController tabBarItem];
    v31 = [UIImage systemImageNamed:@"applewatch.watchface"];
    [tabBarItem4 setImage:v31];

    [v61 addObject:galleryViewController];
    [(COSPreferencesAppController *)self setGalleryViewController:galleryViewController];
    userNotificationCategories = [ntkCustomization userNotificationCategories];
    [v25 unionSet:userNotificationCategories];

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

  tabBarItem5 = [(UINavigationController *)self->_discoverNavigationController tabBarItem];
  [tabBarItem5 setTitle:v38];

  navigationBar = [(UINavigationController *)self->_discoverNavigationController navigationBar];
  [navigationBar setPrefersLargeTitles:1];

  navigationItem = [(COSDiscoverListViewController *)v34 navigationItem];
  [navigationItem setTitle:v38];

  v42 = [UIImage systemImageNamed:@"safari.fill"];
  tabBarItem6 = [(UINavigationController *)self->_discoverNavigationController tabBarItem];
  [tabBarItem6 setImage:v42];

  [v61 addObject:self->_discoverNavigationController];
  if (_os_feature_enabled_impl() && !(v4 & 1 | ((_os_feature_enabled_impl() & 1) == 0)))
  {
    settingsListController = [(COSPreferencesAppController *)self settingsListController];
    searchSuggestionsViewController = [settingsListController searchSuggestionsViewController];

    if (searchSuggestionsViewController)
    {
      v46 = [[UINavigationController alloc] initWithRootViewController:searchSuggestionsViewController];
      searchNavigationController = self->_searchNavigationController;
      self->_searchNavigationController = v46;

      navigationBar2 = [(UINavigationController *)self->_searchNavigationController navigationBar];
      [navigationBar2 setPrefersLargeTitles:1];

      v49 = [[UITabBarItem alloc] initWithTabBarSystemItem:8 tag:4];
      [(UINavigationController *)self->_searchNavigationController setTabBarItem:v49];

      settingsListController2 = [(COSPreferencesAppController *)self settingsListController];
      spotlightSearchController = [settingsListController2 spotlightSearchController];
      navigationItem2 = [searchSuggestionsViewController navigationItem];
      [navigationItem2 setSearchController:spotlightSearchController];

      v53 = +[NSBundle mainBundle];
      v54 = [v53 localizedStringForKey:@"SEARCH_TAB_TITLE" value:&stru_10026E598 table:@"TabBar"];
      navigationItem3 = [searchSuggestionsViewController navigationItem];
      [navigationItem3 setTitle:v54];

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

  myWatchViewController = [(COSPreferencesAppController *)self myWatchViewController];
  [(COSPreferencesAppController *)self reportTabState:myWatchViewController];

  myWatchViewController2 = [(COSPreferencesAppController *)self myWatchViewController];
  tabBarItem7 = [myWatchViewController2 tabBarItem];
  [(COSPreferencesAppController *)self refreshUpdateBadgeWithTab:tabBarItem7];

  return v61;
}

- (BPSNTKCustomization)ntkCustomization
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ntkCustomization = selfCopy->_ntkCustomization;
  if (ntkCustomization)
  {
    v4 = ntkCustomization;
  }

  else
  {
    objc_sync_exit(selfCopy);

    v5 = selfCopy;
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
      objc_storeStrong(&selfCopy->_ntkCustomization, v4);
    }

    selfCopy = v5;
  }

  objc_sync_exit(selfCopy);

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
  activeWatchBridgeDomainAccessor = [UIApp activeWatchBridgeDomainAccessor];
  synchronize = [activeWatchBridgeDomainAccessor synchronize];
  v4 = [activeWatchBridgeDomainAccessor BOOLForKey:@"kBadgedForSoftwareUpdateKey"];

  return v4;
}

- (void)evaluateIfUpdatingInSetupFlowOnLaunch
{
  v3 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v4 = [v3 valueForProperty:_NRDevicePropertyCompatibilityState];
  intValue = [v4 intValue];

  v6 = +[NRPairedDeviceRegistry sharedInstance];
  status = [v6 status];

  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[COSPreferencesAppController evaluateIfUpdatingInSetupFlowOnLaunch]";
    v13 = 2048;
    v14 = status;
    v15 = 1024;
    v16 = intValue;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Status: %lu State: %d", &v11, 0x1Cu);
  }

  if (status == 1 && (intValue & 0xFFFE) == 2)
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
  activeWatchBridgeDomainAccessor = [UIApp activeWatchBridgeDomainAccessor];
  synchronize = [activeWatchBridgeDomainAccessor synchronize];
  v4 = [activeWatchBridgeDomainAccessor BOOLForKey:@"kBadgedForSoftwareUpdateJumpOnceKey"];
  if ([objc_opt_class() hasUpdateAvailable])
  {
    if ((v4 & 1) == 0)
    {
      [activeWatchBridgeDomainAccessor setBool:1 forKey:@"kBadgedForSoftwareUpdateJumpOnceKey"];
      synchronize2 = [activeWatchBridgeDomainAccessor synchronize];
      v6 = [NSURL URLWithString:@"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK"];
      goto LABEL_6;
    }
  }

  else
  {
    [activeWatchBridgeDomainAccessor removeObjectForKey:@"kBadgedForSoftwareUpdateJumpOnceKey"];
    synchronize3 = [activeWatchBridgeDomainAccessor synchronize];
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
    selfCopy = self;
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
        bOOLValue = [v11 BOOLValue];

        v13 = [v10 valueForProperty:v29];
        bOOLValue2 = [v13 BOOLValue];

        v15 = [v10 valueForProperty:v28];
        bOOLValue3 = [v15 BOOLValue];

        v17 = [v10 valueForProperty:v27];
        LOBYTE(v15) = [v17 BOOLValue];

        v8 |= bOOLValue3;
        v7 |= bOOLValue2 & v15 & (bOOLValue ^ 1);
        v6 |= bOOLValue;
      }

      v5 = [obj countByEnumeratingWithState:&v32 objects:v48 count:16];
    }

    while (v5);

    if (v7)
    {
      self = selfCopy;
      isUpdatingInRevLock = selfCopy->_isUpdatingInRevLock;
      v19 = 1;
      goto LABEL_13;
    }

    self = selfCopy;
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
  rootViewController = [(COSPreferencesAppController *)self rootViewController];
  _viewControllers = [(COSPreferencesAppController *)self _viewControllers];
  [rootViewController setViewControllers:_viewControllers];

  rootViewController2 = [(COSPreferencesAppController *)self rootViewController];
  selectedViewController = [rootViewController2 selectedViewController];
  [(COSPreferencesAppController *)self _tintTabBarWithViewController:selectedViewController];

  [(COSPreferencesAppController *)self _refreshTabBarVisibility];
}

- (void)_refreshTabBarVisibility
{
  v3 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v4 = [v3 valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v4 BOOLValue];

  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[COSPreferencesAppController _refreshTabBarVisibility]";
    v15 = 1024;
    v16 = bOOLValue;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: isTinker: %i", &v13, 0x12u);
  }

  rootViewController = [(COSPreferencesAppController *)self rootViewController];
  rootViewController2 = rootViewController;
  if (bOOLValue)
  {
    viewControllers = [rootViewController viewControllers];
    myWatchViewController = [(COSPreferencesAppController *)self myWatchViewController];
    v11 = [viewControllers containsObject:myWatchViewController];

    if (v11)
    {
      myWatchViewController2 = [(COSPreferencesAppController *)self myWatchViewController];
      [(COSPreferencesAppController *)self setSelectedTabViewController:myWatchViewController2];
    }

    rootViewController2 = [(COSPreferencesAppController *)self rootViewController];
    [rootViewController2 hideBarWithTransition:0];
  }

  else
  {
    [rootViewController showBarWithTransition:0];
  }
}

- (NRDevice)displayDevice
{
  activeWatch = [(COSPreferencesAppController *)self activeWatch];
  v3 = activeWatch;
  if (!activeWatch || ([activeWatch valueForProperty:NRDevicePropertyIsPaired], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLValue"), v4, (v5 & 1) == 0))
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
    isActive = [(NRActiveDeviceAssertion *)activeWatchAssertion isActive];
    v5 = pbb_bridge_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (isActive)
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
  isInSetupFlow = [(COSPreferencesAppController *)self isInSetupFlow];
  if (isInSetupFlow)
  {
    setupController = self->_setupController;

    LOBYTE(isInSetupFlow) = [(COSSetupController *)setupController hasStartedPairing];
  }

  return isInSetupFlow;
}

- (void)markGalleryTabAsVisitedIfOnGalleryTab
{
  rootViewController = [(COSPreferencesAppController *)self rootViewController];
  viewControllers = [rootViewController viewControllers];

  rootViewController2 = [(COSPreferencesAppController *)self rootViewController];
  selectedIndex = [rootViewController2 selectedIndex];

  if (selectedIndex >= [viewControllers count])
  {
    v6 = 0;
  }

  else
  {
    v6 = [viewControllers objectAtIndexedSubscript:selectedIndex];
  }

  galleryViewController = [(COSPreferencesAppController *)self galleryViewController];

  if (v6 == galleryViewController)
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

- (BOOL)application:(id)application willContinueUserActivityWithType:(id)type
{
  typeCopy = type;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = typeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "application:willContinueUserActivityWithType: - %@", &v7, 0xCu);
  }

  return 1;
}

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  activityCopy = activity;
  handlerCopy = handler;
  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_retainBlock(handlerCopy);
    v17 = 138412546;
    v18 = activityCopy;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "application:continueUserActivity:restorationHandler: - %@; %@", &v17, 0x16u);
  }

  v11 = [(COSPreferencesAppController *)self urlForActivity:activityCopy];
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
    activityType = [activityCopy activityType];
    v14 = [activityType isEqualToString:NSUserActivityTypeLiveActivity];

    if ((v14 & 1) == 0)
    {
      v15 = [(COSPreferencesRootController *)self->_settingsController popToRootViewControllerAnimated:0];
    }
  }

  return 1;
}

- (void)application:(id)application didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = typeCopy;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "application:didFailToContinueUserActivityWithType: - %@; %@", &v9, 0x16u);
  }
}

- (void)application:(id)application didUpdateUserActivity:(id)activity
{
  activityCopy = activity;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = activityCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "application:didUpdateUserActivity: - %@", &v6, 0xCu);
  }
}

- (void)application:(id)application performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = itemCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "application:performActionForShortcutItem:completionHandler: - %@", &v11, 0xCu);
  }

  v9 = +[COSShortcutController sharedController];
  v10 = [v9 issueActionForShortcut:itemCopy];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v10);
  }
}

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "application:willFinishLaunchingWithOptions: - %@", &v7, 0xCu);
  }

  return 1;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
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
    *v113 = optionsCopy;
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

  _tabBarController = [(COSPreferencesAppController *)self _tabBarController];
  rootViewController = self->_rootViewController;
  self->_rootViewController = _tabBarController;

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

  rootViewController = [(COSPreferencesAppController *)self rootViewController];
  viewControllers = [rootViewController viewControllers];
  v50 = [viewControllers count] == 0;

  if (v50)
  {
    rootViewController2 = [(COSPreferencesAppController *)self rootViewController];
    _viewControllers = [(COSPreferencesAppController *)self _viewControllers];
    [rootViewController2 setViewControllers:_viewControllers];

    rootViewController3 = [(COSPreferencesAppController *)self rootViewController];
    selectedViewController = [rootViewController3 selectedViewController];
    [(COSPreferencesAppController *)self _tintTabBarWithViewController:selectedViewController];
  }

  v55 = self->_window;
  rootViewController4 = [(COSPreferencesAppController *)self rootViewController];
  [(UIWindow *)v55 setRootViewController:rootViewController4];

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
  oneTimeJumpURL = [optionsCopy objectForKey:UIApplicationLaunchOptionsURLKey];
  if (oneTimeJumpURL)
  {
    goto LABEL_10;
  }

  if (self->_isUpdatingGizmoInSetupFlow)
  {
    goto LABEL_11;
  }

  oneTimeJumpURL = [(COSPreferencesAppController *)self oneTimeJumpURL];
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

  if (oneTimeJumpURL)
  {
    [(COSPreferencesAppController *)self processURL:oneTimeJumpURL animated:0 fromSearch:0];
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

    galleryViewController = [(COSPreferencesAppController *)self galleryViewController];
    [(COSPreferencesAppController *)self setSelectedTabViewController:galleryViewController];

    [(COSPreferencesAppController *)self markGalleryTabAsVisited];
  }

LABEL_10:

LABEL_11:
  [(UIWindow *)self->_window makeKeyAndVisible];
  v64 = +[NRPairedDeviceRegistry sharedInstance];
  status = [v64 status];

  v66 = sub_100009A24();
  v67 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v68 = [v67 valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v68 BOOLValue];

  if (v67 && (PBPairedSyncComplete() & 1) == 0)
  {
    v70 = (sub_10002EAFC() | bOOLValue) ^ 1;
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

  if (status == 5 || ((self->_isUpdatingGizmoInSetupFlow | v70) & 1) == 0)
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
    v117 = status == 5;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Showing Setup (%{BOOL}d}) -- _isUpdatingGizmoInSetupFlow %{BOOL}d / setupIsInSyncTrap %{BOOL}d isUnpairing: %{BOOL}d", buf, 0x1Au);
  }

  if (status == 5)
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
      bridgeController = [UIApp bridgeController];
      [bridgeController beginSetupTransaction];

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

  if (!(v77 & 1 | (status == 5)) && ((self->_isUpdatingInRevLock | v70 | v75) & 1) == 0)
  {
    v86 = +[ACXDeviceConnection sharedDeviceConnection];
    v87 = +[NRPairedDeviceRegistry sharedInstance];
    getActivePairedDevice = [v87 getActivePairedDevice];
    [v86 retryPendingAppInstallationsForPairedDevice:getActivePairedDevice];
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
    connectedScenes = [applicationCopy connectedScenes];
    anyObject = [connectedScenes anyObject];

    if (anyObject)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        screenshotService = [anyObject screenshotService];
        [screenshotService setDelegate:self];
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

- (void)applicationWillTerminate:(id)terminate
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

- (void)applicationDidEnterBackground:(id)background
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
    linkUpgradeMonitor = [(COSSetupController *)self->_setupController linkUpgradeMonitor];
    [linkUpgradeMonitor resetCompanionLinkPreference];
  }

  [(COSPreferencesAppController *)self generateURL];
  [(COSPreferencesAppController *)self resetSuspendAssertion];
}

- (void)applicationWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
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
    pairingCompatiblity = [(COSSetupController *)self->_setupController pairingCompatiblity];
    runUpdateInSetup = [pairingCompatiblity runUpdateInSetup];

    if ((runUpdateInSetup & 1) == 0)
    {
      presentedViewController = pbb_bridge_log();
      if (os_log_type_enabled(presentedViewController, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, presentedViewController, OS_LOG_TYPE_DEFAULT, "Foreground Pre-Setup!", buf, 2u);
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
      compatibilityState = [v11 compatibilityState];

      if (compatibilityState != 2)
      {
        [(COSPreferencesAppController *)self popToTopLevelSettingsAnimated:0];
        goto LABEL_68;
      }

      rootViewController = [(COSPreferencesAppController *)self rootViewController];
      presentedViewController = [rootViewController presentedViewController];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        topViewController = [presentedViewController topViewController];
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

          [topViewController disableBackButton];
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
        topViewController = pbb_bridge_log();
        if (!os_log_type_enabled(topViewController, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(topViewController, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        v30 = objc_opt_class();
        v18 = NSStringFromClass(v30);
        *buf = 138412290;
        *v81 = v18;
        _os_log_impl(&_mh_execute_header, topViewController, OS_LOG_TYPE_DEFAULT, "Unexpected presentedViewController: %@", buf, 0xCu);
      }

LABEL_30:
LABEL_67:

      goto LABEL_68;
    }
  }

  if (([foregroundCopy isSuspendedUnderLock] & 1) == 0 && !self->_setupController)
  {
    +[NSUserDefaults resetStandardUserDefaults];
    presentedViewController = +[NSUserDefaults standardUserDefaults];
    v19 = [presentedViewController objectForKey:@"kPreferencePositionKey"];
    [presentedViewController setObject:&stru_10026E598 forKey:@"kPreferencePositionKey"];
    v20 = [presentedViewController objectForKey:@"kPreferenceTimeoutLimitKey"];
    [v20 doubleValue];
    self->_timeoutLimit = v21;

    v22 = [presentedViewController objectForKey:@"kPreferencePositionTimeStampKey"];
    v23 = +[NSDate date];
    v24 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v22 intValue]);
    [v23 timeIntervalSinceDate:v24];
    v26 = v25;
    timeoutLimit = self->_timeoutLimit;

    oneTimeJumpURL = [(COSPreferencesAppController *)self oneTimeJumpURL];
    v74 = v22;
    if (oneTimeJumpURL)
    {
      v29 = 1;
      self->_loadingExternalURL = 1;
      [(COSPreferencesAppController *)self processURL:oneTimeJumpURL];
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
        rootListController = [(COSPreferencesRootController *)v36 rootListController];
        v38 = [rootListController specifierForID:v35];

        if (!v38)
        {
          rootListController2 = [(COSPreferencesRootController *)v36 rootListController];
          v38 = [rootListController2 specifierForBundle:v35];
        }

        v29 = v38 == 0;
        oneTimeJumpURL = 0;
        v19 = v72;
      }

      else
      {
        v29 = 1;
      }
    }

    if (!self->_loadingExternalURL && !self->_processingProfileURL)
    {
      v71 = oneTimeJumpURL;
      v73 = v19;
      if (v29)
      {
        if (v26 >= timeoutLimit)
        {
          if (([(PSSplitViewController *)self->_settingsSplitViewController isCollapsed]& 1) == 0)
          {
            rootListController3 = [(COSPreferencesRootController *)self->_settingsController rootListController];
            [rootListController3 selectGeneralCategory];
          }

          [(COSPreferencesRootController *)self->_settingsController dismissViewControllerAnimated:0 completion:0];
          [(COSPreferencesAppController *)self popToRootOfSettingsSelectGeneral:0 performWithoutDeferringTransitions:1];
          topViewController2 = [(COSPreferencesRootController *)self->_settingsController topViewController];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            table = [topViewController2 table];
            indexPathForSelectedRow = [table indexPathForSelectedRow];
            [table deselectRowAtIndexPath:indexPathForSelectedRow animated:0];
          }
        }

        topViewController3 = [(COSPreferencesRootController *)self->_settingsController topViewController];
        v45 = topViewController3;
        if (v26 >= timeoutLimit && [topViewController3 conformsToProtocol:&OBJC_PROTOCOL___PSViewControllerOffsetProtocol])
        {
          table2 = [v45 table];
          [table2 setContentOffset:{0.0, 0.0}];
        }
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      viewControllers = [(COSPreferencesRootController *)self->_settingsController viewControllers];
      v48 = [viewControllers countByEnumeratingWithState:&v75 objects:v79 count:16];
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
              objc_enumerationMutation(viewControllers);
            }

            v52 = *(*(&v75 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v52 shouldReloadSpecifiersOnResume])
            {
              [v52 reloadSpecifiers];
            }
          }

          v49 = [viewControllers countByEnumeratingWithState:&v75 objects:v79 count:16];
        }

        while (v49);
      }

      oneTimeJumpURL = v71;
      v19 = v73;
    }

    [presentedViewController synchronize];

    goto LABEL_67;
  }

LABEL_68:
  WeakRetained = objc_loadWeakRetained(&self->_selectedTabViewController);
  v54 = WeakRetained;
  if (WeakRetained == self->_settingsSplitViewController)
  {
    viewControllers2 = [(COSPreferencesRootController *)self->_settingsController viewControllers];
    v56 = [viewControllers2 count];

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
    getActivePairedDevice = [v58 getActivePairedDevice];
    [v57 retryPendingAppInstallationsForPairedDevice:getActivePairedDevice];
  }

  v60 = +[PSListController appearance];
  usesDarkTheme = [v60 usesDarkTheme];

  if ((usesDarkTheme & 1) == 0)
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
    parentViewController = [(COSGetStartedViewController *)self->_getStartedViewController parentViewController];
    if (parentViewController)
    {
      v66 = parentViewController;
      isActivelyPairing = [(COSPreferencesAppController *)self isActivelyPairing];

      if ((isActivelyPairing & 1) == 0)
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

- (void)applicationDidBecomeActive:(id)active
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
    parentViewController = [(COSGetStartedViewController *)self->_getStartedViewController parentViewController];

    if (!parentViewController)
    {
      [(COSPreferencesAppController *)self pullPairedWatchAssets];
    }

    [(COSPreferencesAppController *)self markGalleryTabAsVisitedIfOnGalleryTab];
    activeWatch = [(COSPreferencesAppController *)self activeWatch];

    if (activeWatch)
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
  status = [v11 status];

  v13 = +[NRPairedDeviceRegistry sharedInstance];
  compatibilityState = [v13 compatibilityState];

  v15 = pbb_bridge_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NRPairedDeviceRegistryStatusCodeString();
    v17 = [NSNumber numberWithUnsignedShort:compatibilityState];
    v23 = 136315650;
    *v24 = "[COSPreferencesAppController applicationDidBecomeActive:]";
    *&v24[8] = 2112;
    *&v24[10] = v16;
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s NR State %@ compatibilityState: %@", &v23, 0x20u);
  }

  [(COSPreferencesAppController *)self updateNRStatusForPresentingOrDismissingUnpairingUI:status];
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
    usesDarkTheme = [v20 usesDarkTheme];

    if ((usesDarkTheme & 1) == 0)
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

- (void)postIdleNotification:(id)notification
{
  notificationCopy = notification;
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

- (void)presentGetConnectedAlertIfNeededWithWifi:(BOOL)wifi withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"DisableGetConnectedAlert"];

  if (v8)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    +[COSReachabilityMonitor sharedMonitor];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000A5758;
    v11 = v10[3] = &unk_10026A928;
    wifiCopy = wifi;
    selfCopy = self;
    v13 = completionCopy;
    v9 = v11;
    [v9 updateRadioStateWithCompletion:v10];
  }
}

- (void)presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:(id)completion
{
  completionCopy = completion;
  rootViewController = [(COSPreferencesAppController *)self rootViewController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A5F60;
  v17[3] = &unk_10026A978;
  v17[4] = self;
  v6 = completionCopy;
  v18 = v6;
  v7 = objc_retainBlock(v17);
  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    v9 = 0;
    do
    {
      presentedViewController = rootViewController;

      rootViewController = [presentedViewController presentedViewController];

      presentedViewController2 = [rootViewController presentedViewController];

      v9 = presentedViewController;
    }

    while (presentedViewController2);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      presentingViewController = [rootViewController presentingViewController];
      *buf = 138412546;
      v20 = rootViewController;
      v21 = 2112;
      v22 = presentingViewController;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dismissing  alert: %@ presented by: %@", buf, 0x16u);
    }

    presentingViewController2 = [rootViewController presentingViewController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000A618C;
    v14[3] = &unk_100268F10;
    v16 = v7;
    v15 = presentedViewController;
    [presentingViewController2 dismissViewControllerAnimated:1 completion:v14];
  }

  else
  {
    (v7[2])(v7, rootViewController);
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
  isSuspended = [UIApp isSuspended];
  isSuspendedEventsOnly = [UIApp isSuspendedEventsOnly];
  return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s = (isSuspended %d / isSuspendedEventsOnly %d / isSuspendedUnderLock %d)", "-[COSPreferencesAppController _appSuspendStateDescription]", isSuspended, isSuspendedEventsOnly, [UIApp isSuspendedUnderLock]);
}

- (void)applicationWillResignActive:(id)active
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
  rootViewController = [(COSPreferencesAppController *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];
  if (presentedViewController)
  {
    rootViewController2 = [(COSPreferencesAppController *)self rootViewController];
    presentedViewController2 = [rootViewController2 presentedViewController];
    WeakRetained = objc_loadWeakRetained(&self->_devicePickerNavigationController);
    v8 = presentedViewController2 == WeakRetained;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  applicationCopy = application;
  lCopy = l;
  optionsCopy = options;
  v66 = [optionsCopy objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
  if (!self->_setupController && !self->_unpairingVC)
  {
    v14 = pbb_bridge_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v85 = v66;
      *&v85[8] = 2112;
      *v86 = lCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Launched by %@ with URL: %@", buf, 0x16u);
    }

    if ([v66 isEqualToString:@"com.apple.sharingd"])
    {
      query = [lCopy query];
      [query componentsSeparatedByString:@"&"];
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
              firstObject = [v19 firstObject];
              v21 = [firstObject isEqualToString:@"action"];

              if (v21)
              {
                lastObject = [v19 lastObject];

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

      lastObject = 0;
LABEL_26:

      v26 = [lastObject isEqualToString:@"StartPairing"];
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
            v75 = lCopy;
            v76 = v66;
            v77 = applicationCopy;
            v78 = optionsCopy;
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

      pathExtension = [lCopy pathExtension];
      if ([pathExtension caseInsensitiveCompare:@"watchface"])
      {
        scheme = [lCopy scheme];
        v32 = [scheme caseInsensitiveCompare:@"watchface"] == 0;

        if (!v32 && ![(COSPreferencesAppController *)self _isProductKitUrl:lCopy])
        {
          v43 = pbb_bridge_log();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v85 = query;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Unsupported URL query: %@", buf, 0xCu);
          }

LABEL_60:

          goto LABEL_61;
        }
      }

      else
      {
      }

      [(COSPreferencesAppController *)self presentGreenfieldViewControllerWithUrl:lCopy options:optionsCopy];
LABEL_61:

LABEL_62:
      v12 = 1;
      goto LABEL_7;
    }

    self->_loadingExternalURL = 1;
    scheme2 = [lCopy scheme];
    v24 = [scheme2 caseInsensitiveCompare:@"bridge"] == 0;

    if (v24)
    {
      myWatchViewController = [(COSPreferencesAppController *)self myWatchViewController];
      [(COSPreferencesAppController *)self setSelectedTabBarViewController:myWatchViewController];

      resourceSpecifier = [lCopy resourceSpecifier];
      LODWORD(myWatchViewController) = [resourceSpecifier hasPrefix:@"FOLLOWUP"];

      if (myWatchViewController)
      {
        v35 = objc_alloc_init(COSAppleIDController);
        v36 = [[COSBuddyNavigationController alloc] initWithRootViewController:v35];
        navigationBar = [(COSBuddyNavigationController *)v36 navigationBar];
        BPSApplyStyleToNavBarOptions();

        v38 = [UIBarButtonItem alloc];
        v39 = +[NSBundle mainBundle];
        v40 = [v39 localizedStringForKey:@"CANCEL" value:&stru_10026E598 table:@"Localizable"];
        v41 = [v38 initWithTitle:v40 style:0 target:self action:"doneFollowUp:"];

        navigationItem = [(COSAppleIDController *)v35 navigationItem];
        [navigationItem setLeftBarButtonItem:v41];

        [(COSPreferencesRootController *)self->_settingsController presentViewController:v36 animated:1 completion:&stru_10026A9C0];
      }

      else
      {
        [(COSPreferencesAppController *)self processURL:lCopy];
      }

      goto LABEL_52;
    }

    pathExtension2 = [lCopy pathExtension];
    if (pathExtension2)
    {
      pathExtension3 = [lCopy pathExtension];
      if (![pathExtension3 caseInsensitiveCompare:@"watchface"])
      {

LABEL_49:
        v46 = pbb_bridge_log();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Presenting add watch face flow", buf, 2u);
        }

        [(COSPreferencesAppController *)self presentGreenfieldViewControllerWithUrl:lCopy options:optionsCopy];
        goto LABEL_52;
      }
    }

    scheme3 = [lCopy scheme];
    v45 = [scheme3 caseInsensitiveCompare:@"watchface"];

    if (pathExtension2)
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

    if ([(COSPreferencesAppController *)self _isProductKitUrl:lCopy])
    {
      [(COSPreferencesAppController *)self presentGreenfieldViewControllerWithUrl:lCopy options:optionsCopy];
LABEL_52:
      v47 = pbb_bridge_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [NSNumber numberWithBool:1];
        *buf = 138412802;
        *v85 = lCopy;
        *&v85[8] = 2112;
        *v86 = v48;
        *&v86[8] = 2112;
        v87[0] = v66;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "URL: %@ Will Open: %@ (from sourceApplication %@)", buf, 0x20u);
      }

      goto LABEL_62;
    }

    scheme4 = [lCopy scheme];
    v50 = [scheme4 caseInsensitiveCompare:@"facegallery"] == 0;

    if (v50)
    {
      galleryViewController = [(COSPreferencesAppController *)self galleryViewController];
      v55 = pbb_bridge_log();
      v56 = v55;
      if (galleryViewController)
      {
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Switching to face gallery tab", buf, 2u);
        }

        rootViewController = [(COSPreferencesAppController *)self rootViewController];
        [rootViewController setSelectedViewController:galleryViewController];

        [(COSPreferencesAppController *)self setSelectedTabViewController:galleryViewController];
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

    scheme5 = [lCopy scheme];
    v52 = +[NSBundle mainBundle];
    bundleIdentifier = [v52 bundleIdentifier];
    if ([scheme5 caseInsensitiveCompare:bundleIdentifier])
    {
    }

    else
    {
      v58 = +[PSOAuthAccountRedirectURLController sharedInstance];
      v59 = [v58 handleOAuthRedirectURL:lCopy];

      if (v59)
      {
        v60 = pbb_bridge_log();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          scheme6 = [lCopy scheme];
          path = [lCopy path];
          *buf = 138412546;
          *v85 = scheme6;
          *&v85[8] = 2112;
          *v86 = path;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Handled OAuth Redirect url %@:%@", buf, 0x16u);
        }

        goto LABEL_70;
      }
    }

    v60 = pbb_bridge_log();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v85 = lCopy;
      *&v85[8] = 2112;
      *v86 = optionsCopy;
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
    *&v86[2] = lCopy;
    LOWORD(v87[0]) = 2112;
    *(v87 + 2) = v66;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setup active: %{BOOL}d unpair active: %{BOOL}d Queueing openURL: %@ (from sourceApplication %@)", buf, 0x22u);
  }

  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_1000A7240;
  v68[3] = &unk_10026A9E8;
  v69 = lCopy;
  v70 = v66;
  objc_copyWeak(&v73, location);
  v71 = applicationCopy;
  v72 = optionsCopy;
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
    appDelegateOnDismissalBlock = [(COSPreferencesAppController *)self appDelegateOnDismissalBlock];

    if (appDelegateOnDismissalBlock)
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
    appDelegateOnDismissalBlock2 = [(COSPreferencesAppController *)self appDelegateOnDismissalBlock];
    [(COSPreferencesAppController *)self setAppDelegateOnDismissalBlock:0];
    appDelegateOnDismissalBlock2[2]();
  }
}

- (void)presentGreenfieldViewControllerWithUrl:(id)url options:(id)options
{
  urlCopy = url;
  optionsCopy = options;
  v8 = [optionsCopy objectForKeyedSubscript:UIApplicationOpenURLOptionsAnnotationKey];
  v9 = v8;
  if (!v8 || ([v8 objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [optionsCopy objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
  }

  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A7644;
  v13[3] = &unk_10026AA10;
  objc_copyWeak(&v16, &location);
  v11 = urlCopy;
  v14 = v11;
  v12 = v10;
  v15 = v12;
  [(COSPreferencesAppController *)self presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)didTapOnLoadingFaceLibraryButton:(id)button
{
  galleryViewController = [(COSPreferencesAppController *)self galleryViewController];
  [(COSPreferencesAppController *)self setSelectedTabBarViewController:galleryViewController];
}

- (BOOL)_isProductKitUrl:(id)url
{
  urlCopy = url;
  if (urlCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [ProductKitCatalog isProductKitURL:urlCopy];
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

- (id)splitViewController:(id)controller separateSecondaryViewControllerFromPrimaryViewController:(id)viewController
{
  controllerCopy = controller;
  v6 = [(COSPreferencesAppController *)self _rootControllerForSplitViewController:controllerCopy];
  containerNavigationController = [controllerCopy containerNavigationController];

  viewControllers = [containerNavigationController viewControllers];
  v9 = [viewControllers count];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    rootListController = [v6 rootListController];
    generalViewController = [rootListController generalViewController];

    v15 = generalViewController;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    [containerNavigationController setViewControllers:v13];

    v10 = containerNavigationController;
  }

  return v10;
}

- (BOOL)splitViewController:(id)controller collapseSecondaryViewController:(id)viewController ontoPrimaryViewController:(id)primaryViewController
{
  viewControllerCopy = viewController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewControllers = [viewControllerCopy viewControllers];
    v7 = [viewControllers count] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)splitViewControllerDidPopToRootController:(id)controller
{
  controllerCopy = controller;
  if (([controllerCopy isCollapsed] & 1) == 0)
  {
    v4 = [(COSPreferencesAppController *)self _rootControllerForSplitViewController:controllerCopy];
    rootListController = [v4 rootListController];
    [rootListController selectGeneralCategory];
  }
}

- (id)bridgeSettingsTabBarItem
{
  myWatchViewController = [(COSPreferencesAppController *)self myWatchViewController];
  tabBarItem = [myWatchViewController tabBarItem];

  return tabBarItem;
}

- (void)refreshUpdateBadge
{
  bridgeSettingsTabBarItem = [(COSPreferencesAppController *)self bridgeSettingsTabBarItem];
  [(COSPreferencesAppController *)self refreshUpdateBadgeWithTab:bridgeSettingsTabBarItem];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"com.apple.Bridge.badgeUpdate" object:0];
}

- (void)refreshUpdateBadgeWithTab:(id)tab
{
  tabCopy = tab;
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

  [tabCopy setBadgeValue:v5];
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
  bridgeSettingsTabBarItem = [(COSPreferencesAppController *)self bridgeSettingsTabBarItem];
  [bridgeSettingsTabBarItem setBadgeValue:0];

  activeWatchBridgeDomainAccessor = [UIApp activeWatchBridgeDomainAccessor];
  [activeWatchBridgeDomainAccessor removeObjectForKey:@"kBadgedForSoftwareUpdateKey"];
  synchronize = [activeWatchBridgeDomainAccessor synchronize];
}

- (void)markGalleryTabAsVisited
{
  CFPreferencesSetAppValue(@"kShouldJumpToFaceGalleryKey", 0, @"com.apple.Bridge");

  CFPreferencesAppSynchronize(@"com.apple.Bridge");
}

- (id)urlForActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v6 = [activityType isEqualToString:@"com.apple.nano.passbook.provisioning"];

  if (v6)
  {
    v7 = @"bridge:root=com.apple.NanoPassbookBridgeSettings%230";
LABEL_6:
    v12 = [NSURL URLWithString:v7];

    goto LABEL_11;
  }

  activityType2 = [activityCopy activityType];
  v9 = [activityType2 isEqualToString:CSSearchableItemActionType];

  if (v9)
  {
    userInfo = [activityCopy userInfo];
    absoluteString = [userInfo objectForKey:CSSearchableItemActivityIdentifier];
  }

  else
  {
    activityType3 = [activityCopy activityType];
    v14 = [activityType3 isEqualToString:NSUserActivityTypeBrowsingWeb];

    if (!v14)
    {
      goto LABEL_10;
    }

    webpageURL = [activityCopy webpageURL];
    v16 = [(COSPreferencesAppController *)self _isProductKitUrl:webpageURL];

    if (!v16)
    {
      goto LABEL_10;
    }

    userInfo = [activityCopy webpageURL];
    absoluteString = [userInfo absoluteString];
  }

  v7 = absoluteString;

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
  linkUpgradeMonitor = [(COSSetupController *)self->_setupController linkUpgradeMonitor];
  holdingAnyCompanionLinkPreference = [linkUpgradeMonitor holdingAnyCompanionLinkPreference];

  v5 = self->_syncTrapUIEnabled && holdingAnyCompanionLinkPreference == 0;
  v6 = !v5 && !self->_syncTrapUICompleted;
  bridgeController = [UIApp bridgeController];
  setupTransactionActive = [bridgeController setupTransactionActive];

  if ([(COSPreferencesAppController *)self isActivelyPairing])
  {
    v9 = v6 & setupTransactionActive;
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
    v17 = holdingAnyCompanionLinkPreference;
    v18 = 1024;
    v19 = syncTrapUIEnabled;
    v20 = 1024;
    v21 = syncTrapUICompleted;
    v22 = 1024;
    v23 = setupTransactionActive;
    v24 = 1024;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: holdingAnyCompanionLinkPreference: %{BOOL}d _syncTrapUIEnabled: %{BOOL}d _syncTrapUICompleted: %{BOOL}d setupTransactionActive: %{BOOL}d assertionRequired: %{BOOL}d", &v14, 0x2Au);
  }

  return v9;
}

- (void)dismissSetupFlowComplete:(BOOL)complete animated:(BOOL)animated
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A863C;
  v4[3] = &unk_10026AAB8;
  v4[4] = self;
  completeCopy = complete;
  animatedCopy = animated;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)expireTaskAssertion:(id)assertion
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

      linkUpgradeMonitor = [(COSSetupController *)self->_setupController linkUpgradeMonitor];
      [linkUpgradeMonitor resetCompanionLinkPreference];

      goto LABEL_9;
    }

    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setup Background Assertion Expired - Reset Setup Flow!", buf, 2u);
    }

    v10 = [(NRDevice *)self->_activeWatch valueForProperty:NRDevicePropertyIsPaired];
    bOOLValue = [v10 BOOLValue];

    if ([(COSPreferencesAppController *)self isInSetupFlow])
    {
      if (!bOOLValue)
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
  transitionCoordinator = [v2 transitionCoordinator];
  if (transitionCoordinator)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000A8F84;
    v5[3] = &unk_10026A4C8;
    v6 = v3;
    [transitionCoordinator animateAlongsideTransition:0 completion:v5];
  }

  else
  {
    (v3[2])(v3);
  }
}

- (void)resetSetupFlowAnimated:(BOOL)animated forEvent:(unint64_t)event
{
  if (!self->_resetSetupInProgress && !self->_dismissSetupInProgress)
  {
    animatedCopy = animated;
    self->_resetSetupInProgress = 1;
    v10 = pbb_setupflow_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *v31 = 1858;
      *&v31[4] = 2080;
      *&v31[6] = "[COSPreferencesAppController resetSetupFlowAnimated:forEvent:]";
      v32 = 2048;
      eventCopy = event;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%d %s: resetSetupFlowAnimated: called with event: %lu.", buf, 0x1Cu);
    }

    if (event >= 0x24)
    {
      v11 = [PBBridgeCAReporter descriptionForSuccessType:event];
      NSLog(@"%@", v11);

      [PBBridgeCAReporter incrementSuccessType:event];
    }

    if ([(COSPreferencesAppController *)self isInSetupFlow])
    {
      scannedDevice = [(COSSetupController *)self->_setupController scannedDevice];
      v13 = [scannedDevice valueForProperty:NRDevicePropertyIsPaired];
      bOOLValue = [v13 BOOLValue];

      if (([(COSPreferencesAppController *)self syncTrapUIEnabled]| bOOLValue))
      {
        v15 = pbb_setupflow_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          _bridgeConciseDebugDescription = [scannedDevice _bridgeConciseDebugDescription];
          *buf = 138412290;
          *v31 = _bridgeConciseDebugDescription;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "We were unpaired during SyncTrap, NR is tearing-down pairing with device %@", buf, 0xCu);
        }
      }

      else
      {
        v15 = [PBBridgeCAReporter descriptionForSuccessType:event];
        if (event <= 0x2C && ((1 << event) & 0x1E0000001200) != 0)
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

        [(COSPreferencesAppController *)self dismissSetupFlowAnimated:animatedCopy refreshTabs:1 withCompletionHandler:v22];
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
    LODWORD(eventCopy) = dismissSetupInProgress;
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

- (void)presentSetupFlowWithMode:(unint64_t)mode animated:(BOOL)animated
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
    v8 = [[COSSetupController alloc] initWithMode:mode];
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
    animatedCopy = animated;
    v18 = objc_retainBlock(v25);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000A9E88;
    v21[3] = &unk_10026AB20;
    v19 = v17;
    v22 = v19;
    animatedCopy2 = animated;
    v20 = v18;
    v23 = v20;
    [(COSPreferencesAppController *)self presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v21];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }
}

- (void)dismissSetupFlowAnimated:(BOOL)animated refreshTabs:(BOOL)tabs withCompletionHandler:(id)handler
{
  tabsCopy = tabs;
  handlerCopy = handler;
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
      if (tabsCopy)
      {
        [(COSPreferencesAppController *)self refreshTabBar];
      }

      navigationController = [(COSSetupController *)self->_setupController navigationController];
      objc_initWeak(buf, self);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000AA250;
      v16[3] = &unk_10026AB48;
      objc_copyWeak(&v20, buf);
      v19 = handlerCopy;
      v9 = navigationController;
      animatedCopy = animated;
      v17 = v9;
      selfCopy = self;
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

- (void)unpairOrResetBuddyForEvent:(unint64_t)event
{
  v5 = [(NRDevice *)self->_activeWatch valueForProperty:NRDevicePropertyIsPaired];
  bOOLValue = [v5 BOOLValue];

  if (self->_activeWatch && ((bOOLValue & 1) != 0 || self->_isActivated))
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

    [UIApp resetSetupFlowAnimated:1 forEvent:event];
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

  navigationController = [(COSPreferencesAppController *)self navigationController];
  [navigationController presentViewController:v6 animated:1 completion:0];
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

- (void)updateForRemoteActivity:(id)activity
{
  activityCopy = activity;
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

- (void)resetActivationFailureCountAndReport:(BOOL)report
{
  if (report && self->_activationRetryCount)
  {
    [PBBridgeCAReporter incrementSuccessType:56];
  }

  self->_activationRetryCount = 0;
}

- (void)remoteDidFailActivation:(unint64_t)activation description:(id)description userActionable:(BOOL)actionable
{
  actionableCopy = actionable;
  descriptionCopy = description;
  v9 = pbb_setupflow_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v29 = descriptionCopy;
    v30 = 1024;
    LODWORD(v31[0]) = actionableCopy;
    WORD2(v31[0]) = 2048;
    *(v31 + 6) = activation;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Activation Failed! (%@) User Actionable: %d Type: %lu", buf, 0x1Cu);
  }

  activationRetryCount = self->_activationRetryCount;
  activationRetryCountLimit = self->_activationRetryCountLimit;
  v12 = pbb_activation_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (activation == 10 || activationRetryCount >= activationRetryCountLimit)
  {
    if (v13)
    {
      v17 = self->_activationRetryCountLimit;
      *buf = 134218240;
      v29 = v17;
      v30 = 2048;
      v31[0] = activation;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not retrying activation. Retry count %lu reason: %lu", buf, 0x16u);
    }

    v18 = 37;
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1000AB1EC;
    v25 = &unk_100268220;
    if (actionableCopy)
    {
      v18 = 50;
    }

    selfCopy = self;
    v27 = v18;
    v19 = objc_retainBlock(&v22);
    setupController = self->_setupController;
    if (actionableCopy)
    {
      activationCopy = 2;
    }

    else
    {
      if (!setupController)
      {
        (v19[2])(v19);
        goto LABEL_17;
      }

      activationCopy = activation;
    }

    [(COSSetupController *)setupController displayPairingFailureAlertForReason:activationCopy withCompletion:v19, v22, v23, v24, v25];
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

  bridgeController = [(COSPreferencesAppController *)self bridgeController];
  [bridgeController tellGizmoToRetryActivation];

  [PBBridgeCAReporter incrementSuccessType:55];
  ++self->_activationRetryCount;
LABEL_18:
}

- (void)deviceIsSetup:(id)setup
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

- (void)deviceUnpaired:(id)unpaired
{
  unpairedCopy = unpaired;
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

  userInfo = [unpairedCopy userInfo];

  v7 = [userInfo objectForKey:NRPairedDeviceRegistryDevice];
  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    _bridgeConciseDebugDescription = [v7 _bridgeConciseDebugDescription];
    v10 = 138412290;
    *v11 = _bridgeConciseDebugDescription;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device Unpaired! (%@)", &v10, 0xCu);
  }

  if ([(COSPreferencesAppController *)self isInSetupFlow])
  {
    [(COSPreferencesAppController *)self resetSetupFlowAnimated:1 forEvent:10];
    [(COSPreferencesAppController *)self clearBridgeSettingsTabBarItemBadge];
  }

  [(COSPreferencesAppController *)self removeActiveDeviceAssertionFor:v7];
}

- (void)messageSendFailed:(id)failed
{
  failedCopy = failed;
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

  userInfo = [failedCopy userInfo];

  v7 = [userInfo objectForKey:PBBridgeMessageError];
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

- (void)pairingFailed:(id)failed
{
  failedCopy = failed;
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
    userInfo = [failedCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:NRPairedDeviceRegistryError];
    v8 = pbb_setupflow_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001893B4();
    }

    userInfo2 = [v7 userInfo];
    v10 = [userInfo2 objectForKey:@"subreason"];

    CFPreferencesSetAppValue(PBBridgeLastNRFailureCode, v10, PBBridgeConnectionIdentifier);
    if (v7)
    {
      code = [v7 code];
      v12 = pbb_setupflow_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100189424();
      }
    }

    else
    {
      code = 200;
    }

    v13 = code == 28;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000ABA70;
    v29[3] = &unk_1002682F0;
    v29[4] = self;
    v14 = objc_retainBlock(v29);
    domain = [v7 domain];
    if ([domain isEqualToString:@"com.apple.nanoregistry.pairingerror"])
    {
      selfCopy = self;
      v17 = code;
      v18 = userInfo;
      v19 = v14;
      v20 = v13;
      v21 = v10;
      v22 = failedCopy;
      code2 = [v7 code];

      v24 = code2 == 25;
      failedCopy = v22;
      v10 = v21;
      v13 = v20;
      v14 = v19;
      userInfo = v18;
      code = v17;
      self = selfCopy;
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
      if (code == 1)
      {
        userInfo3 = [v7 userInfo];
        v27 = [userInfo3 objectForKeyedSubscript:@"previousDeviceID"];

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

  userInfo = pbb_setupflow_log();
  if (os_log_type_enabled(userInfo, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, userInfo, OS_LOG_TYPE_DEFAULT, "Silencing pairing failure since user isn't pairing", buf, 2u);
  }

LABEL_26:
}

- (void)initialPairingFailed:(id)failed
{
  userInfo = [failed userInfo];
  v5 = [userInfo objectForKey:@"error"];
  v6 = v5;
  v7 = @"Unknown Error";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [userInfo objectForKey:@"device"];
  v10 = v9;
  if (v9)
  {
    _bridgeConciseDebugDescription = [v9 _bridgeConciseDebugDescription];
  }

  else
  {
    _bridgeConciseDebugDescription = @"Unknown Device";
  }

  v12 = pbb_setupflow_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v18 = userInfo;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = _bridgeConciseDebugDescription;
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

- (void)enteredCompatibilityState:(id)state
{
  stateCopy = state;
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

  userInfo = [stateCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:NRPairedDeviceRegistryDevice];
  v8 = [userInfo objectForKeyedSubscript:NRPairedDeviceRegistryCompatibilityStateKey];
  unsignedIntValue = [v8 unsignedIntValue];

  v10 = +[NRPairedDeviceRegistry sharedInstance];
  status = [v10 status];

  v12 = pbb_bridge_log();
  v13 = unsignedIntValue;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    _bridgeConciseDebugDescription = [v7 _bridgeConciseDebugDescription];
    v18 = 67109634;
    v19 = v13;
    v20 = 2112;
    v21 = _bridgeConciseDebugDescription;
    v22 = 2048;
    v23 = status;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Entered Compatibility state: (%d) for device: (%@) with status: (%lu)", &v18, 0x1Cu);
  }

  if (v13 == 2 && status == 1)
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

- (void)removeActiveDeviceAssertionFor:(id)for
{
  forCopy = for;
  activeWatchAssertion = self->_activeWatchAssertion;
  if (activeWatchAssertion)
  {
    device = [(NRActiveDeviceAssertion *)activeWatchAssertion device];
    pairingID = [device pairingID];
    pairingID2 = [forCopy pairingID];
    v9 = [pairingID isEqual:pairingID2];

    if (v9)
    {
      v10 = pbb_bridge_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        device2 = [(NRActiveDeviceAssertion *)self->_activeWatchAssertion device];
        _bridgeConciseDebugDescription = [device2 _bridgeConciseDebugDescription];
        v14 = 136315394;
        v15 = "[COSPreferencesAppController removeActiveDeviceAssertionFor:]";
        v16 = 2112;
        v17 = _bridgeConciseDebugDescription;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Removing active assertion for %@", &v14, 0x16u);
      }

      activeWatchAssertion = [(COSPreferencesAppController *)self activeWatchAssertion];
      [activeWatchAssertion invalidate];

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
      device = [(NRActiveDeviceAssertion *)self->_activeWatchAssertion device];
      _bridgeConciseDebugDescription = [device _bridgeConciseDebugDescription];
      v8 = 136315394;
      v9 = "[COSPreferencesAppController removeActiveDeviveAssertionIfNotActive]";
      v10 = 2112;
      v11 = _bridgeConciseDebugDescription;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Removing inactive assertion for %@", &v8, 0x16u);
    }

    activeWatchAssertion = [(COSPreferencesAppController *)self activeWatchAssertion];
    [activeWatchAssertion invalidate];

    [(COSPreferencesAppController *)self setActiveWatchAssertion:0];
  }
}

- (id)currentSpecifierIDPath
{
  viewControllers = [(COSPreferencesRootController *)self->_settingsController viewControllers];
  v3 = [viewControllers mutableCopy];

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

- (void)presentDevicePicker:(BOOL)picker
{
  pickerCopy = picker;
  v5 = [NSURL URLWithString:@"root=ActiveWatch"];
  if (pickerCopy)
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
  containerNavigationController = [(PSSplitViewController *)self->_settingsSplitViewController containerNavigationController];
  topViewController = [containerNavigationController topViewController];

  v6 = 0.0;
  if ([topViewController conformsToProtocol:&OBJC_PROTOCOL___PSViewControllerOffsetProtocol])
  {
    [topViewController verticalContentOffset];
    v6 = v7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([topViewController canBeShownFromSuspendedState] & 1) == 0)
  {
    containerNavigationController2 = [(PSSplitViewController *)self->_settingsSplitViewController containerNavigationController];
    [containerNavigationController2 popRecursivelyToRootController];
  }

  v40 = topViewController;
  rootListController = [(COSPreferencesRootController *)self->_settingsController rootListController];
  categoryController = [rootListController categoryController];
  specifier = [categoryController specifier];
  identifier = [specifier identifier];
  [v3 appendFormat:@"root=%@", identifier];

  [v3 appendFormat:@"#%0.0f", *&v6];
  containerNavigationController3 = [(PSSplitViewController *)self->_settingsSplitViewController containerNavigationController];
  viewControllers = [containerNavigationController3 viewControllers];
  v15 = [NSArray arrayWithArray:viewControllers];

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
            specifier2 = [v22 specifier];
            identifier2 = [specifier2 identifier];

            specifier3 = [v22 specifier];
            v27 = [specifier3 propertyForKey:v43];

            if (!v27)
            {
              specifier4 = [v22 specifier];
              specifier5 = [v22 specifier];
              identifier3 = [specifier5 identifier];
              [specifier4 setProperty:identifier3 forKey:v43];

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

            [v3 appendFormat:v33, identifier2];
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

- (void)presentDevicePickerControllerWith:(BOOL)with
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
    withCopy = with;
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    [v9 setTinkerOnly:withCopy];
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

- (void)navigateToRootObjectWithURLDictionary:(id)dictionary animated:(BOOL)animated
{
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKey:@"root"];
  v7 = SFObjectAndOffsetForURLPair();
  v8 = [v7 objectForKey:@"object"];
  v9 = [v7 objectForKey:@"offsetItem"];
  rootViewController = [(COSPreferencesAppController *)self rootViewController];
  viewControllers = [rootViewController viewControllers];
  myWatchViewController = [(COSPreferencesAppController *)self myWatchViewController];
  v13 = [viewControllers containsObject:myWatchViewController];

  if (v13)
  {
    myWatchViewController2 = [(COSPreferencesAppController *)self myWatchViewController];
    [(COSPreferencesAppController *)self setSelectedTabViewController:myWatchViewController2];
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
    selfCopy = self;
    v21 = dictionaryCopy;
    animatedCopy = animated;
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

- (void)setDevicePickerPresented:(BOOL)presented
{
  if (self->_devicePickerPresented && !presented)
  {
    settingsListController = [(COSPreferencesAppController *)self settingsListController];
    [settingsListController loadSpotlightSearchControllers];
  }

  self->_devicePickerPresented = presented;
}

- (void)_activateTinkerWatchWithCSN:(id)n completionBlock:(id)block
{
  nCopy = n;
  blockCopy = block;
  v8 = +[NRPairedDeviceRegistry sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000AE540;
  v13[3] = &unk_10026ACC8;
  v14 = nCopy;
  v9 = nCopy;
  v10 = [v8 getAllDevicesWithArchivedAltAccountDevicesMatching:v13];

  v11 = pbb_bridge_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Matching Tinker Devices: %@", buf, 0xCu);
  }

  firstObject = [v10 firstObject];
  if (firstObject)
  {
    [(COSPreferencesAppController *)self setActiveWatch:firstObject startedBlock:0 completionBlock:blockCopy];
  }
}

- (void)processURL:(id)l
{
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000AE88C;
  v20[3] = &unk_100269F28;
  v20[4] = self;
  lCopy = l;
  v21 = lCopy;
  v5 = objc_retainBlock(v20);
  absoluteString = [lCopy absoluteString];
  v7 = [absoluteString containsString:@"ManagedConfigurationList/InstallRequested"];

  if (!v7)
  {
    absoluteString2 = [lCopy absoluteString];
    if ([absoluteString2 containsString:@"SOFTWARE_UPDATE_LINK&terms=YES"])
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

    v11 = dispatch_time(0, 1000000000 * [(COSPreferencesAppController *)self waitToLoadBeforeProcessingURL:lCopy]);
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

- (void)processURL:(id)l animated:(BOOL)animated fromSearch:(BOOL)search
{
  lCopy = l;
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = lCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Process URL: %@", buf, 0xCu);
  }

  v9 = [(COSPreferencesAppController *)self getLaunchedByValueForURL:lCopy];
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

  v12 = [(COSPreferencesAppController *)self keyValueDictionaryForURL:lCopy];
  objc_initWeak(buf, self);
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_1000AF0C8;
  v24 = &unk_10026AD40;
  selfCopy = self;
  v13 = v12;
  v26 = v13;
  objc_copyWeak(&v27, buf);
  animatedCopy = animated;
  v14 = objc_retainBlock(&v21);
  v15 = [(COSPreferencesAppController *)self rootViewController:v21];
  viewControllers = [v15 viewControllers];
  myWatchViewController = [(COSPreferencesAppController *)self myWatchViewController];
  v18 = [viewControllers containsObject:myWatchViewController];

  if (v18)
  {
    myWatchViewController2 = [(COSPreferencesAppController *)self myWatchViewController];
    [(COSPreferencesAppController *)self setSelectedTabBarViewController:myWatchViewController2];
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

- (unint64_t)waitToLoadBeforeProcessingURL:(id)l
{
  absoluteString = [l absoluteString];
  v4 = [absoluteString containsString:@"NOTIFICATIONS_ID"];

  return v4;
}

- (void)_setOffsetForController:(id)controller fromObjectPair:(id)pair
{
  controllerCopy = controller;
  pairCopy = pair;
  v6 = [pairCopy objectForKeyedSubscript:@"offsetValue"];
  [v6 floatValue];
  v8 = v7;

  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  v9 = [pairCopy objectForKeyedSubscript:@"offsetItem"];

  if ([controllerCopy conformsToProtocol:&OBJC_PROTOCOL___PSViewControllerOffsetProtocol])
  {
    if (v8 == 0.0)
    {
      if ([v9 length])
      {
        [controllerCopy setDesiredVerticalContentOffsetItemNamed:v9];
      }
    }

    else
    {
      *&v10 = v8;
      [controllerCopy setDesiredVerticalContentOffset:v10];
    }
  }
}

- (void)_performURLHandlingForRootListController:(id)controller controller:(id)a4 dictionary:(id)dictionary items:(id)items controllerNeedsPush:(BOOL)push
{
  pushCopy = push;
  controllerCopy = controller;
  v12 = a4;
  dictionaryCopy = dictionary;
  itemsCopy = items;
  v15 = [dictionaryCopy objectForKeyedSubscript:@"animate"];
  bOOLValue = [v15 BOOLValue];

  v17 = [dictionaryCopy objectForKeyedSubscript:@"fromSearch"];
  bOOLValue2 = [v17 BOOLValue];

  v19 = pbb_bridge_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v12;
    v34 = 2112;
    v35 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Handle controller %@ with root controller %@", buf, 0x16u);
  }

  v31 = 0;
  if ([itemsCopy count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v20 = [itemsCopy objectAtIndexedSubscript:0];
    v21 = SFObjectAndOffsetForURLPair();

    v22 = [v21 objectForKeyedSubscript:@"object"];
    if (v22)
    {
      v23 = [v12 prepareHandlingURLForSpecifierID:v22 resourceDictionary:dictionaryCopy animatePush:&v31] ^ 1;
    }

    else
    {
      v23 = 0;
    }

    if (!pushCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v23 = 0;
    if (!pushCopy)
    {
LABEL_13:
      v24 = 0;
      goto LABEL_14;
    }
  }

  v24 = v31 & v23;
  if ((v31 & v23 & 1) == 0 && ((bOOLValue ^ 1) & 1) == 0)
  {
    v24 = [itemsCopy count] == 0;
  }

LABEL_14:
  if ((bOOLValue & bOOLValue2) == 1 && (v24 & 1) == 0 && ((sub_10002EC30() & 1) != 0 || [itemsCopy count] >= 2))
  {
    v25 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsCopy count]);
    v26 = v25;
    if (pushCopy)
    {
      [v25 addObject:v12];
    }

    [dictionaryCopy setObject:v26 forKeyedSubscript:@"controllers"];

    [UIView setAnimationsEnabled:bOOLValue];
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
      v35 = dictionaryCopy;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Handling URL... Controller %@ to handle %@", buf, 0x16u);
    }

    [v12 handleURL:dictionaryCopy withCompletion:0];
    goto LABEL_30;
  }

  [UIView setAnimationsEnabled:bOOLValue];
  if (pushCopy)
  {
    splitViewController = [controllerCopy splitViewController];
    [splitViewController showInitialViewController:v12];

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
    [dictionaryCopy removeObjectForKey:@"controllers"];
  }
}

- (id)getLaunchedByValueForURL:(id)l
{
  resourceSpecifier = [l resourceSpecifier];
  v4 = [resourceSpecifier componentsSeparatedByString:@"launchedBy="];

  lastObject = [v4 lastObject];

  return lastObject;
}

- (id)keyValueDictionaryForURL:(id)l
{
  lCopy = l;
  v4 = +[NSMutableDictionary dictionary];
  resourceSpecifier = [lCopy resourceSpecifier];
  v6 = [resourceSpecifier componentsSeparatedByString:@"&"];

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
          stringByRemovingPercentEncoding = [v13 stringByRemovingPercentEncoding];

          v15 = [v12 objectAtIndex:0];
          [v4 setObject:stringByRemovingPercentEncoding forKey:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v4;
}

- (void)popToRootOfSettingsSelectGeneral:(BOOL)general performWithoutDeferringTransitions:(BOOL)transitions
{
  transitionsCopy = transitions;
  generalCopy = general;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[COSPreferencesAppController popToRootOfSettingsSelectGeneral:performWithoutDeferringTransitions:]";
    v16 = 1024;
    v17 = generalCopy;
    v18 = 1024;
    v19 = transitionsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: selectGeneral: %{BOOL}d performWithoutDeferring: %{BOOL}d", buf, 0x18u);
  }

  rootListController = [(COSPreferencesRootController *)self->_settingsController rootListController];
  v9 = rootListController;
  if (transitionsCopy)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000AFA28;
    v12[3] = &unk_1002682F0;
    v13 = rootListController;
    [UIViewController _performWithoutDeferringTransitions:v12];
    navigationController = v13;
  }

  else
  {
    navigationController = [rootListController navigationController];
    v11 = [navigationController popToRootViewControllerAnimated:0];
  }

  if (generalCopy && ([(PSSplitViewController *)self->_settingsSplitViewController isCollapsed]& 1) == 0)
  {
    [v9 selectGeneralCategoryForced:1];
  }
}

- (void)popToTopLevelSettingsAnimated:(BOOL)animated
{
  if ([(COSPreferencesAppController *)self safeToPopToSettingsRootController])
  {
    if ([(COSPreferencesAppController *)self _devicePickerBeingPresented])
    {
      WeakRetained = objc_loadWeakRetained(&self->_devicePickerNavigationController);
      viewControllers = [WeakRetained viewControllers];

      if ([viewControllers count])
      {
        v7 = objc_loadWeakRetained(&self->_devicePickerNavigationController);
        v8 = [viewControllers objectAtIndexedSubscript:0];
        v24 = v8;
        v9 = [NSArray arrayWithObjects:&v24 count:1];
        [v7 setViewControllers:v9 animated:0];
      }

      v10 = objc_loadWeakRetained(&self->_devicePickerNavigationController);
      presentedViewController = [v10 presentedViewController];

      v12 = pbb_bridge_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (presentedViewController)
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
        rootViewController = [(COSPreferencesAppController *)self rootViewController];
        *buf = 136315394;
        v21 = "[COSPreferencesAppController popToTopLevelSettingsAnimated:]";
        v22 = 2112;
        v23 = rootViewController;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Dismissing up to root: %@", buf, 0x16u);
      }

      viewControllers = [(COSPreferencesAppController *)self rootViewController];
      [viewControllers dismissViewControllerAnimated:1 completion:0];
    }

    viewControllers2 = [(PSSplitViewController *)self->_settingsSplitViewController viewControllers];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000AFDE4;
    v18[3] = &unk_10026AD60;
    animatedCopy = animated;
    [viewControllers2 enumerateObjectsWithOptions:2 usingBlock:v18];
  }

  else
  {
    viewControllers2 = pbb_bridge_log();
    if (os_log_type_enabled(viewControllers2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[COSPreferencesAppController popToTopLevelSettingsAnimated:]";
      _os_log_impl(&_mh_execute_header, viewControllers2, OS_LOG_TYPE_DEFAULT, "%s: Skipping POP", buf, 0xCu);
    }
  }
}

- (void)_scrollToTopOfSettingsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = pbb_setup_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scroll to top of Settings", v9, 2u);
  }

  rootListController = [(COSPreferencesRootController *)self->_settingsController rootListController];
  table = [rootListController table];
  v8 = [NSIndexPath indexPathForRow:0 inSection:0];
  [table scrollToRowAtIndexPath:v8 atScrollPosition:1 animated:animatedCopy];
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

- (void)updateActiveWatch:(id)watch
{
  watchCopy = watch;
  activeWatch = self->_activeWatch;
  if (activeWatch != watchCopy)
  {
    if (activeWatch)
    {
      [(NRDevice *)activeWatch removePropertyObserver:self forPropertyChanges:0];
    }

    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      _bridgeConciseDebugDescription = [(NRDevice *)self->_activeWatch _bridgeConciseDebugDescription];
      _bridgeConciseDebugDescription2 = [(NRDevice *)watchCopy _bridgeConciseDebugDescription];
      *buf = 134218498;
      selfCopy2 = self;
      v19 = 2112;
      v20 = _bridgeConciseDebugDescription;
      v21 = 2112;
      v22 = _bridgeConciseDebugDescription2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%p) Replace Active Device (%@) with (%@)", buf, 0x20u);
    }

    objc_storeStrong(&self->_activeWatch, watch);
    v10 = +[BPSBridgeAppContext shared];
    [v10 setActiveDevice:watchCopy];

    v11 = self->_activeWatch;
    v16[0] = NRDevicePropertySystemVersion;
    v16[1] = _NRDevicePropertyCapabilities;
    v16[2] = NRDevicePropertyName;
    v12 = [NSArray arrayWithObjects:v16 count:3];
    [(NRDevice *)v11 addPropertyObserver:self forPropertyChanges:v12];

    [(COSPreferencesAppController *)self updateActiveWatchBridgeDomainAccessor];
    [(COSPreferencesAppController *)self configureStartupStateForActiveDevice];
    v13 = +[NRPairedDeviceRegistry sharedInstance];
    status = [v13 status];

    if (status == 2)
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
        selfCopy2 = self;
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
    compatibilityState = [v3 compatibilityState];

    if (compatibilityState == 2 || (-[COSSetupController pairingCompatiblity](self->_setupController, "pairingCompatiblity"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 runUpdateInSetup], v5, v6))
    {
      v7 = [(NRDevice *)self->_activeWatch valueForProperty:NRDevicePropertyIsSetup];
      bOOLValue = [v7 BOOLValue];

      if (bOOLValue)
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
      bOOLValue2 = [v11 BOOLValue];

      v13 = [(NRDevice *)self->_activeWatch valueForProperty:_NRDevicePropertyStatusCode];
      if ([v13 integerValue] == 4)
      {
        self->_deviceIsBeingMigrated = 1;
      }

      if (bOOLValue2)
      {
        self->_isUpdatingGizmoInSetupFlow = 0;
        self->_isUpdatingInRevLock = 0;
        if (compatibilityState == 3)
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

    navigationController = [(COSSetupController *)self->_setupController navigationController];
    [navigationController presentViewController:v8 animated:1 completion:0];

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

- (void)setSelectedTabBarViewController:(id)controller
{
  obj = controller;
  rootViewController = [(COSPreferencesAppController *)self rootViewController];
  [rootViewController setSelectedViewController:obj];

  v5 = objc_storeWeak(&self->_selectedTabViewController, obj);
  [(COSPreferencesAppController *)self reportTabState:obj];
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  viewControllerCopy = viewController;
  [(COSPreferencesAppController *)self _tintTabBarWithViewController:viewControllerCopy];
  WeakRetained = objc_loadWeakRetained(&self->_selectedTabViewController);

  settingsSplitViewController = self->_settingsSplitViewController;
  v8 = pbb_setup_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    viewControllerCopy = [NSNumber numberWithBool:WeakRetained == viewControllerCopy];
    v26 = 138412290;
    v27 = viewControllerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reselected the same tab: %@", &v26, 0xCu);
  }

  v10 = pbb_setup_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = viewControllerCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Selected Controller: %@", &v26, 0xCu);
  }

  if (WeakRetained == viewControllerCopy)
  {
    if (settingsSplitViewController == viewControllerCopy)
    {
      rootListController = [(COSPreferencesRootController *)self->_settingsController rootListController];
      navigationController = [rootListController navigationController];
      viewControllers = [navigationController viewControllers];
      v16 = [viewControllers count];

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

          view = [(PSSplitViewController *)viewControllerCopy view];
          [view setUserInteractionEnabled:0];

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
      contentScrollView = [(PSSplitViewController *)viewControllerCopy contentScrollView];
      [contentScrollView adjustedContentInset];
      [contentScrollView setContentOffset:1 animated:{0.0, -v12}];
    }
  }

  else
  {
    [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  }

  galleryViewController = [(COSPreferencesAppController *)self galleryViewController];
  if (galleryViewController == viewControllerCopy)
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

  galleryViewController2 = [(COSPreferencesAppController *)self galleryViewController];
  v22 = galleryViewController2;
  if (galleryViewController2 == viewControllerCopy)
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
  [(COSPreferencesAppController *)self reportTabState:viewControllerCopy];
  objc_storeWeak(&self->_selectedTabViewController, viewControllerCopy);
}

- (void)_tintTabBarWithViewController:(id)controller
{
  v4 = +[UIApplication sharedApplication];
  [v4 setStatusBarStyle:1];

  rootViewController = [(COSPreferencesAppController *)self rootViewController];
  tabBar = [rootViewController tabBar];
  sub_1000071E0(tabBar);
}

- (void)_networkingStartNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B105C;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_networkingStopNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B113C;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)presentUnpairingViewControllerAnimated:(BOOL)animated
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
    animatedCopy = animated;
    v17 = objc_retainBlock(v24);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000B1930;
    v20[3] = &unk_10026AB20;
    v18 = v16;
    v21 = v18;
    animatedCopy2 = animated;
    v19 = v17;
    v22 = v19;
    [(COSPreferencesAppController *)self presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v20];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }
}

- (void)_performWorkAfterUnpairingVCDismissalWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(COSPreferencesAppController *)self _refreshShortCuts];
  unpairingVC = self->_unpairingVC;
  self->_unpairingVC = 0;

  self->_pendingUnpairUIPresentation = 0;
  self->_dismissUnpairUIOnPresentation = 0;
  self->_pendingUnpairingVCDismissal = 0;
  [(COSPreferencesAppController *)self popToTopLevelSettingsAnimated:1];
  if ([(COSPreferencesAppController *)self _devicePickerBeingPresented])
  {
    devicePickerNavigationController = [(COSPreferencesAppController *)self devicePickerNavigationController];
    viewControllers = [devicePickerNavigationController viewControllers];

    if ([viewControllers count])
    {
      devicePickerNavigationController2 = [(COSPreferencesAppController *)self devicePickerNavigationController];
      v9 = [viewControllers objectAtIndexedSubscript:0];
      v25 = v9;
      v10 = [NSArray arrayWithObjects:&v25 count:1];
      [devicePickerNavigationController2 setViewControllers:v10 animated:0];
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
      rootViewController = [(COSPreferencesAppController *)self rootViewController];
      presentedViewController = [rootViewController presentedViewController];

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
        rootViewController2 = [(COSPreferencesAppController *)self rootViewController];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000B1E18;
        v20[3] = &unk_100268FF0;
        objc_copyWeak(&v22, buf);
        v21 = blockCopy;
        [rootViewController2 dismissViewControllerAnimated:presentedViewController != 0 completion:v20];

        objc_destroyWeak(&v22);
        objc_destroyWeak(buf);
      }

      else
      {
        [(COSPreferencesAppController *)self _schedulePendingAppDelegateIfPresent];
        if (blockCopy)
        {
          blockCopy[2](blockCopy);
        }
      }
    }

    else
    {
      if ([(COSPreferencesAppController *)self _devicePickerBeingPresented])
      {
        [(COSPreferencesAppController *)self _schedulePendingAppDelegateIfPresent];
        if (!blockCopy)
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
    if (blockCopy)
    {
LABEL_7:
      blockCopy[2](blockCopy);
    }
  }

LABEL_22:
}

- (void)dismissUnpairingViewControllerAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  unpairingVC = self->_unpairingVC;
  if (unpairingVC && !self->_pendingUnpairingVCDismissal)
  {
    presentingViewController = [(COSUnpairingViewController *)unpairingVC presentingViewController];

    if (presentingViewController)
    {
      self->_pendingUnpairingVCDismissal = 1;
      v12 = pbb_bridge_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_unpairingVC;
        presentingViewController2 = [(COSUnpairingViewController *)v13 presentingViewController];
        *buf = 138412546;
        v23 = v13;
        v24 = 2112;
        v25 = presentingViewController2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Dismissing Unpairing UI :%@  since NR is Ready. Presenting VC: %@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      presentingViewController3 = [(COSUnpairingViewController *)self->_unpairingVC presentingViewController];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000B21D4;
      v19[3] = &unk_100268FF0;
      objc_copyWeak(&v21, buf);
      v20 = completionCopy;
      [presentingViewController3 dismissViewControllerAnimated:animatedCopy completion:v19];

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }

    else
    {
      controllerBeingDismissedOrGone = [(COSUnpairingViewController *)self->_unpairingVC controllerBeingDismissedOrGone];
      v17 = pbb_bridge_log();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (controllerBeingDismissedOrGone)
      {
        if (v18)
        {
          *buf = 136315138;
          v23 = "[COSPreferencesAppController dismissUnpairingViewControllerAnimated:withCompletion:]";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s. unpairingVC dismissed under us. cleaning up.", buf, 0xCu);
        }

        [(COSPreferencesAppController *)self _performWorkAfterUnpairingVCDismissalWithCompletionBlock:completionCopy];
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

- (void)updateNRStatusForPresentingOrDismissingUnpairingUI:(unint64_t)i
{
  if (!i || i == 2)
  {
    [(COSPreferencesAppController *)self dismissUnpairingViewControllerAnimated:1];
    if (i == 2)
    {
      if (self->_waitForActiveDeviceReady)
      {
        self->_waitForActiveDeviceReady = 0;
        [(COSPreferencesAppController *)self performTasksOnActiveDeviceUpdate];
      }

      [(COSPreferencesAppController *)self startScanningForNearbyDevices];
    }
  }

  else if (i == 5)
  {

    [(COSPreferencesAppController *)self presentUnpairingViewControllerAnimated:1];
  }
}

- (void)nanoRegistryStatusChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:NRPairedDeviceRegistryStatusKey];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  v7 = +[NRPairedDeviceRegistry sharedInstance];
  compatibilityState = [v7 compatibilityState];

  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithUnsignedShort:compatibilityState];
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(App) NR Status Changed to %@ with CompatibilityState %@", &v11, 0x16u);
  }

  [(COSPreferencesAppController *)self updateNRStatusForPresentingOrDismissingUnpairingUI:unsignedIntegerValue];
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

- (void)setSyncTrapUIEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (self->_syncTrapUIEnabled && !enabled)
  {
    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing suspend assertion and resetting link preference", v8, 2u);
    }

    linkUpgradeMonitor = [(COSSetupController *)self->_setupController linkUpgradeMonitor];
    [linkUpgradeMonitor resetCompanionLinkPreference];

    [(COSPreferencesAppController *)self resetSuspendAssertion];
  }

  self->_syncTrapUIEnabled = enabledCopy;
  v7 = +[BPSBridgeAppContext shared];
  [v7 setSyncTrapUIEnabled:enabledCopy];
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

- (void)tappedStartForMode:(unint64_t)mode withAnimation:(BOOL)animation
{
  animationCopy = animation;
  v7 = +[UIDevice currentDevice];
  [v7 setOrientation:1];

  [(COSPreferencesAppController *)self presentSetupFlowWithMode:mode animated:animationCopy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B28BC;
  v13[3] = &unk_1002682F0;
  v13[4] = self;
  v8 = objc_retainBlock(v13);
  navigationController = [(COSPreferencesAppController *)self navigationController];
  transitionCoordinator = [navigationController transitionCoordinator];

  if (transitionCoordinator && ![transitionCoordinator presentationStyle])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B28C8;
    v11[3] = &unk_10026A4C8;
    v12 = v8;
    [transitionCoordinator animateAlongsideTransition:0 completion:v11];
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

- (void)presentNewPairingFlowIfPossibleWithAnimation:(BOOL)animation withCompletion:(id)completion
{
  completionCopy = completion;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B2A84;
  v9[3] = &unk_10026AE10;
  v13 = sub_100005808(0, &v15);
  animationCopy = animation;
  v10 = v15;
  selfCopy = self;
  v12 = completionCopy;
  v7 = completionCopy;
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
  sharedDeviceConnection = [v2 sharedDeviceConnection];
  [sharedDeviceConnection playSoundOnCompanionWithCompletion:&stru_10026AE30];
}

- (void)successfullyBeganUnpairingWatch
{
  [UIApp clearBridgeSettingsTabBarItemBadge];
  [(COSPreferencesAppController *)self refreshTabBar];
  _getStartedController = [(COSPreferencesAppController *)self _getStartedController];
  [_getStartedController registerNRObserver];

  [(COSPreferencesAppController *)self popToTopLevelSettingsAnimated:1];
  rootListController = [(COSPreferencesRootController *)self->_settingsController rootListController];
  [rootListController reloadSpecifiers];
}

- (void)reloadAppearance:(id)appearance
{
  [(COSPreferencesAppController *)self _prepareAppearances];
  [(COSSetupController *)self->_setupController reloadAppearance];

  [(COSPreferencesAppController *)self refreshTabBar];
}

- (void)screenshotService:(id)service generatePDFRepresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  serviceCopy = service;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Screenshot service did request PDF representation.", buf, 2u);
  }

  windowScene = [serviceCopy windowScene];

  windows = [windowScene windows];
  firstObject = [windows firstObject];

  recursiveDescription = [firstObject recursiveDescription];
  v12 = dispatch_get_global_queue(25, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B34EC;
  v15[3] = &unk_100268C18;
  v16 = recursiveDescription;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = recursiveDescription;
  dispatch_async(v12, v15);
}

- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value
{
  deviceCopy = device;
  changeCopy = change;
  valueCopy = value;
  if (deviceCopy)
  {
    activeWatch = self->_activeWatch;
    v12 = pbb_bridge_log();
    v13 = v12;
    if (activeWatch == deviceCopy)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        _bridgeConciseDebugDescription = [(NRDevice *)deviceCopy _bridgeConciseDebugDescription];
        v19 = 138412546;
        v20 = changeCopy;
        v21 = 2112;
        v22 = _bridgeConciseDebugDescription;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Property (%@) Changed for device %@", &v19, 0x16u);
      }

      if (([changeCopy isEqualToString:NRDevicePropertySystemVersion] & 1) != 0 || objc_msgSend(changeCopy, "isEqualToString:", _NRDevicePropertyCapabilities))
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

      else if ([changeCopy isEqualToString:NRDevicePropertyName])
      {
        [(COSPreferencesAppController *)self clearCachedNameForDevice:deviceCopy];
        settingsListController = [(COSPreferencesAppController *)self settingsListController];
        [settingsListController reloadAppleWatchDetails:0];
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        _bridgeConciseDebugDescription2 = [(NRDevice *)deviceCopy _bridgeConciseDebugDescription];
        v19 = 138412546;
        v20 = changeCopy;
        v21 = 2112;
        v22 = _bridgeConciseDebugDescription2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Property (%@) Changed for inactive device %@!", &v19, 0x16u);
      }
    }
  }
}

- (void)versionOrCapabilitiesChanged:(id)changed
{
  topViewController = [(COSPreferencesRootController *)self->_settingsController topViewController];
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

  rootListController = [(COSPreferencesRootController *)self->_settingsController rootListController];
  [rootListController reloadSpecifiers];
}

- (void)deviceBecameActive:(id)active
{
  userInfo = [active userInfo];
  v5 = [userInfo objectForKeyedSubscript:NRPairedDeviceRegistryDevice];
  v6 = NRDevicePropertyPairingID;
  v33 = v5;
  v7 = [v5 valueForProperty:NRDevicePropertyPairingID];
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    _bridgeConciseDebugDescription = [v33 _bridgeConciseDebugDescription];
    *buf = 138412290;
    v36 = _bridgeConciseDebugDescription;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device Became Active: %@", buf, 0xCu);
  }

  v10 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v11 = [v10 valueForProperty:v6];
  if (v11 | v7 && ([v7 isEqual:v11] & 1) == 0)
  {
    v12 = pbb_bridge_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      _bridgeConciseDebugDescription2 = [v10 _bridgeConciseDebugDescription];
      *buf = 138412290;
      v36 = _bridgeConciseDebugDescription2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device from DidBecomeActive notification no longer the active one (%@). Coallescing events.", buf, 0xCu);
    }
  }

  isActivelyPairing = [(COSPreferencesAppController *)self isActivelyPairing];
  v15 = isActivelyPairing;
  if (isActivelyPairing)
  {
    v16 = v7;
    v17 = [(NRDevice *)self->_activeWatch valueForProperty:NRDevicePropertyIsPaired];
    bOOLValue = [v17 BOOLValue];

    v19 = pbb_bridge_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [(NRDevice *)self->_activeWatch _bridgeConciseDebugDescription];
      v20 = v32 = userInfo;
      *buf = 138412290;
      v36 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Actively Pairing. (Active Watch: %@)", buf, 0xCu);

      userInfo = v32;
    }

    v7 = v16;
    if ((bOOLValue & 1) == 0)
    {
      [(COSSetupController *)self->_setupController setScannedDevice:self->_activeWatch];
    }
  }

  v21 = [(NRDevice *)self->_activeWatch valueForProperty:v6];
  v22 = v21;
  if (v11 | v21 && ![v21 isEqual:v11])
  {
    v24 = v7;
    v25 = userInfo;
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
      rootListController = [(COSPreferencesRootController *)self->_settingsController rootListController];
      presentedViewController = [rootListController presentedViewController];

      if ([presentedViewController isMemberOfClass:objc_opt_class()])
      {
        topViewController = [presentedViewController topViewController];
        if (([topViewController isMemberOfClass:objc_opt_class()] & 1) == 0)
        {
          [(COSPreferencesAppController *)self popToTopLevelSettingsAnimated:1];
        }
      }

      rootListController2 = [(COSPreferencesRootController *)self->_settingsController rootListController];
      [rootListController2 reloadSpecifiers];

      [(COSPreferencesAppController *)self refreshTabBar];
    }

    [(COSPreferencesAppController *)self removeActiveDeviveAssertionIfNotActive];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B4040;
    block[3] = &unk_1002682F0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    userInfo = v25;
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

- (void)deviceBecameInactive:(id)inactive
{
  userInfo = [inactive userInfo];
  v5 = [userInfo objectForKeyedSubscript:NRPairedDeviceRegistryDevice];
  v6 = NRDevicePropertyAdvertisedName;
  v7 = [v5 valueForProperty:NRDevicePropertyAdvertisedName];
  v47[0] = NRDevicePropertySystemVersion;
  v47[1] = _NRDevicePropertyCapabilities;
  v8 = [NSArray arrayWithObjects:v47 count:2];
  [v5 removePropertyObserver:self forPropertyChanges:v8];

  activeWatch = [(COSPreferencesAppController *)self activeWatch];
  v10 = [activeWatch valueForProperty:v6];
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
        _bridgeConciseDebugDescription = [v13 _bridgeConciseDebugDescription];
        *buf = 138412290;
        v44 = _bridgeConciseDebugDescription;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Device became inactive, but there is an active device: %@", buf, 0xCu);
      }
    }

    else
    {
      v16 = [v5 valueForProperty:NRDevicePropertyIsArchived];
      v14 = v16;
      v38 = userInfo;
      if (v16)
      {
        bOOLValue = [v16 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v37 = activeWatch;
      v19 = pbb_bridge_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        _bridgeConciseDebugDescription2 = [v5 _bridgeConciseDebugDescription];
        *buf = 138412290;
        v44 = _bridgeConciseDebugDescription2;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device became inactive: %@", buf, 0xCu);
      }

      [(COSPreferencesAppController *)self updateActiveWatch:0];
      isActivelyPairing = [(COSPreferencesAppController *)self isActivelyPairing];
      v22 = +[NRPairedDeviceRegistry sharedInstance];
      v23 = +[NRPairedDeviceRegistry pairedDevicesSelectorBlock];
      v24 = [v22 getAllDevicesWithArchivedAltAccountDevicesMatching:v23];

      if (isActivelyPairing)
      {
        userInfo = v38;
        if (([v24 containsObject:v5] | bOOLValue))
        {
          if (bOOLValue)
          {
            v25 = pbb_bridge_log();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              _bridgeConciseDebugDescription3 = [v5 _bridgeConciseDebugDescription];
              *buf = 138412290;
              v44 = _bridgeConciseDebugDescription3;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Recently inactive device is archived, no action needed: %@ ", buf, 0xCu);
            }
          }
        }

        else
        {
          v34 = pbb_bridge_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            pairingID = [v5 pairingID];
            *buf = 138412290;
            v44 = pairingID;
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

        userInfo = v38;
      }

      if (![v24 count])
      {
        [(COSPreferencesAppController *)self refreshTabBar];
      }

      [(COSPreferencesAppController *)self removeActiveDeviveAssertionIfNotActive];

      activeWatch = v37;
    }
  }

  else
  {
    v13 = pbb_bridge_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      _bridgeConciseDebugDescription4 = [v5 _bridgeConciseDebugDescription];
      _bridgeConciseDebugDescription5 = [activeWatch _bridgeConciseDebugDescription];
      *buf = 138412546;
      v44 = _bridgeConciseDebugDescription4;
      v45 = 2112;
      v46 = _bridgeConciseDebugDescription5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring device became inactive received for stale device: %@ active device: %@", buf, 0x16u);
    }
  }
}

- (void)_allowInteractionsWithSettingsControllers:(BOOL)controllers
{
  controllersCopy = controllers;
  view = [(COSPreferencesRootController *)self->_settingsController view];
  [view setUserInteractionEnabled:controllersCopy];

  view2 = [(PSSplitViewController *)self->_settingsSplitViewController view];
  [view2 setUserInteractionEnabled:controllersCopy];
}

- (void)_debug_forcePullAssets
{
  v2 = objc_alloc_init(PBBridgeAssetsManager);
  [v2 beginPullingAssetsForDeviceMaterial:2 size:1 completion:0];
  [v2 beginPullingAssetsForDeviceMaterial:1 size:1 completion:0];
  [v2 beginPullingAssetsForDeviceMaterial:4 size:1 completion:0];
}

- (void)discoveredAdvertisingWatch:(id)watch
{
  watchCopy = watch;
  v5 = pbb_mobileasset_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(discoveredAdvertisingWatch) End Scanning for Nearby Devices...", buf, 2u);
  }

  v6 = +[PPDiscoveryManager sharedDiscoveryManager];
  [v6 end];

  userInfo = [watchCopy userInfo];

  v8 = [userInfo objectForKeyedSubscript:PPDiscoveredDeviceAdvertisingName];
  v9 = [(NSMutableDictionary *)self->_discoveryAssetPullRequests objectForKeyedSubscript:v8];
  v10 = v9;
  if (!userInfo || v9)
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
    selfCopy = self;
    [v10 beginPullingAssetsForAdvertisingName:v12 completion:v11];

LABEL_7:
  }
}

- (void)sizeCategoryDidChange:(id)change
{
  topViewController = [(COSPreferencesRootController *)self->_settingsController topViewController];
  if (([topViewController isMemberOfClass:objc_opt_class()] & 1) == 0 && !self->_unpairingVC)
  {
    [(COSPreferencesAppController *)self popToTopLevelSettingsAnimated:0];
  }

  rootListController = [(COSPreferencesRootController *)self->_settingsController rootListController];
  [rootListController reloadSpecifiers];
}

- (void)_startTopLevelScrollTestComplex:(BOOL)complex options:(id)options
{
  complexCopy = complex;
  v6 = [NSRunLoop mainRunLoop:complex];
  v7 = [NSDate dateWithTimeIntervalSinceNow:1.0];
  [v6 runUntilDate:v7];

  v8 = @"TopLevelFPS";
  if (complexCopy)
  {
    v8 = @"TopLevelFPSComplex";
  }

  settingsController = self->_settingsController;
  v10 = v8;
  rootListController = [(COSPreferencesRootController *)settingsController rootListController];
  table = [rootListController table];
  [(COSPreferencesAppController *)self _testScrollTest:v10 onScrollView:table];
}

- (void)_prepareForDevicePickerTest
{
  v3 = [NSURL URLWithString:@"root=ActiveWatch"];
  [(COSPreferencesAppController *)self processURL:v3 animated:0 fromSearch:0];

  v5 = +[NSRunLoop mainRunLoop];
  v4 = [NSDate dateWithTimeIntervalSinceNow:0.5];
  [v5 runUntilDate:v4];
}

- (void)_starDevicePickerRotationTestWithOptions:(id)options
{
  [(COSPreferencesAppController *)self _prepareForDevicePickerTest];
  rootViewController = [(COSPreferencesAppController *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];

  topViewController = [presentedViewController topViewController];
  table = [topViewController table];
  [(COSPreferencesAppController *)self _testScrollTest:@"DevicePickerScrolling" onScrollView:table];
}

- (void)_startFaceGalleryScrollTestWithOptions:(id)options
{
  galleryViewController = [(COSPreferencesAppController *)self galleryViewController];
  if (objc_opt_respondsToSelector())
  {
    rootViewController = [(COSPreferencesAppController *)self rootViewController];
    [rootViewController setSelectedViewController:galleryViewController];

    [(COSPreferencesAppController *)self setSelectedTabViewController:galleryViewController];
    galleryViewController2 = [(COSPreferencesAppController *)self galleryViewController];
    [galleryViewController2 _performFaceGalleryScrollTestNamed:@"FaceGalleryFPS" iterations:1];
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

- (void)globalAlertPresentationCoordinator:(id)coordinator syncProgressDidUpdate:(double)update
{
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithDouble:update];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "globalAlertPresentationCoordinator:syncProgressDidUpdate: (%@)", &v7, 0xCu);
  }
}

- (void)globalAlertPresentationCoordinator:(id)coordinator presentAlert:(unint64_t)alert withCompletion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B5520;
  v10[3] = &unk_10026AE58;
  coordinatorCopy = coordinator;
  selfCopy = self;
  completionCopy = completion;
  alertCopy = alert;
  v8 = completionCopy;
  v9 = coordinatorCopy;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)globalAlertPresentationCoordinator:(id)coordinator dismissAlert:(unint64_t)alert withCompletion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B572C;
  block[3] = &unk_100268180;
  completionCopy = completion;
  alertCopy = alert;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_testScrollTest:(id)test onScrollView:(id)view
{
  testCopy = test;
  viewCopy = view;
  v7 = dispatch_time(0, 500000000);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B5930;
  v10[3] = &unk_100268358;
  v11 = testCopy;
  v12 = viewCopy;
  v8 = viewCopy;
  v9 = testCopy;
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

- (void)deviceSpecificRepairSteps:(id)steps
{
  stepsCopy = steps;
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
    v6 = [stepsCopy valueForProperty:NRDevicePropertyIsAltAccount];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      v8 = pbb_accountsignin_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = stepsCopy;
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
      v11 = [stepsCopy supportsCapability:v10];

      if (v11)
      {
        [(COSPreferencesAppController *)self _updateAppStoreRowForRepair];
      }
    }
  }
}

- (void)testPrep:(id)prep options:(id)options
{
  prepCopy = prep;
  optionsCopy = options;
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = prepCopy;
    v14 = 2112;
    v15 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "testPrep: %@ options: %@", &v12, 0x16u);
  }

  byte_1002BD54C = [prepCopy isEqualToString:@"TopLevelFPSComplex"] != 0;
  rootListController = [(COSPreferencesRootController *)self->_settingsController rootListController];
  [rootListController reloadSpecifiers];

  [(COSPreferencesAppController *)self refreshTabBar];
  v10 = +[NSRunLoop mainRunLoop];
  v11 = [NSDate dateWithTimeIntervalSinceNow:1.0];
  [v10 runUntilDate:v11];
}

- (BOOL)runTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  [(COSPreferencesAppController *)self testPrep:testCopy options:optionsCopy];
  if ([testCopy isEqualToString:@"TopLevelFPS"])
  {
    [(COSPreferencesAppController *)self _startTopLevelScrollTestComplex:0 options:optionsCopy];
  }

  else
  {
    if ([testCopy isEqualToString:@"TopLevelFPSComplex"])
    {
      v8 = 1;
      [(COSPreferencesAppController *)self _startTopLevelScrollTestComplex:1 options:optionsCopy];
      goto LABEL_6;
    }

    if ([testCopy isEqualToString:@"DevicePickerScrolling"])
    {
      [(COSPreferencesAppController *)self _starDevicePickerRotationTestWithOptions:optionsCopy];
    }

    else
    {
      if (![testCopy isEqualToString:@"FaceGalleryFPS"])
      {
        v10.receiver = self;
        v10.super_class = COSPreferencesAppController;
        v8 = [(COSPreferencesAppController *)&v10 runTest:testCopy options:optionsCopy];
        goto LABEL_6;
      }

      [(COSPreferencesAppController *)self _startFaceGalleryScrollTestWithOptions:optionsCopy];
    }
  }

  v8 = 1;
LABEL_6:

  return v8;
}

- (void)startedTest:(id)test
{
  testCopy = test;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = testCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Started %@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = COSPreferencesAppController;
  [(COSPreferencesAppController *)&v6 startedTest:testCopy];
}

- (void)finishedTest:(id)test
{
  testCopy = test;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = testCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished %@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = COSPreferencesAppController;
  [(COSPreferencesAppController *)&v6 finishedTest:testCopy];
}

- (void)cancelTinkerSwitch:(id)switch
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

  firstObject = [v4 firstObject];

  return firstObject;
}

- (void)setActiveWatch:(id)watch startedBlock:(id)block completionBlock:(id)completionBlock
{
  watchCopy = watch;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v11 = pbb_bridge_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [watchCopy valueForProperty:NRDevicePropertyPairingID];
    v20 = 136315394;
    v21 = "[COSPreferencesAppController setActiveWatch:startedBlock:completionBlock:]";
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v20, 0x16u);
  }

  activeWatch = [UIApp activeWatch];
  if (!watchCopy)
  {
    watchCopy = [objc_opt_class() getActiveDevice];
  }

  v14 = [watchCopy valueForProperty:NRDevicePropertyIsAltAccount];
  if (![v14 BOOLValue])
  {
    goto LABEL_13;
  }

  activeWatchAssertion = [(COSPreferencesAppController *)self activeWatchAssertion];
  device = [activeWatchAssertion device];
  v17 = device;
  if (device != watchCopy)
  {

LABEL_13:
    [(COSPreferencesAppController *)self switchToDevice:watchCopy startedBlock:blockCopy completionBlock:completionBlockCopy];
    goto LABEL_14;
  }

  activeWatchAssertion2 = [(COSPreferencesAppController *)self activeWatchAssertion];
  isActive = [activeWatchAssertion2 isActive];

  if ((isActive & 1) == 0)
  {
    goto LABEL_13;
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, 1);
  }

  if (completionBlockCopy)
  {
    completionBlockCopy[2](completionBlockCopy, 1);
  }

LABEL_14:
}

- (void)reachability:(id)reachability device:(id)device connectionStatus:(unint64_t)status
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B67E0;
  v7[3] = &unk_100268358;
  deviceCopy = device;
  selfCopy = self;
  v6 = deviceCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)checkIDSReachability
{
  activeWatchAssertion = [(COSPreferencesAppController *)self activeWatchAssertion];
  device = [activeWatchAssertion device];

  if (device)
  {
    v5 = +[PBBridgeIDSReachability sharedInstance];
    activeWatchAssertion2 = [(COSPreferencesAppController *)self activeWatchAssertion];
    device2 = [activeWatchAssertion2 device];
    v8 = [v5 reachabilityForDevice:device2];

    v9 = pbb_bridge_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [NSNumber numberWithUnsignedInteger:v8];
      v11 = 136315650;
      v12 = "[COSPreferencesAppController checkIDSReachability]";
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = device;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s (Status: %@) %@", &v11, 0x20u);
    }
  }
}

- (void)_showTinkerSwitchFailureModalForDevice:(id)device
{
  v4 = [device valueForProperty:NRDevicePropertyName];
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

- (void)switchToDevice:(id)device startedBlock:(id)block completionBlock:(id)completionBlock
{
  deviceCopy = device;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if (!deviceCopy)
  {
    deviceCopy = [objc_opt_class() getActiveDevice];
  }

  v11 = [deviceCopy valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v11 BOOLValue];

  self->_isTinkerSwitching = bOOLValue;
  if (deviceCopy)
  {
    if (bOOLValue)
    {
      activeWatchAssertion = [(COSPreferencesAppController *)self activeWatchAssertion];
      device = [activeWatchAssertion device];
      if (deviceCopy == device)
      {
        activeWatchAssertion2 = [(COSPreferencesAppController *)self activeWatchAssertion];
        v15 = [activeWatchAssertion2 isActive] ^ 1;
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      activeWatchAssertion = [objc_opt_class() getActiveDevice];
      v15 = deviceCopy != activeWatchAssertion;
    }

    if (blockCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
    if (blockCopy)
    {
LABEL_13:
      blockCopy[2](blockCopy, v15);
    }
  }

  if (v15)
  {
    v17 = +[NRPairedDeviceRegistry sharedInstance];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000B6E38;
    v18[3] = &unk_10026AEF0;
    v21 = bOOLValue;
    v18[4] = self;
    v19 = deviceCopy;
    v20 = completionBlockCopy;
    [v17 setActivePairedDevice:v19 withActiveDeviceAssertionHandler:v18];
  }

  else if (completionBlockCopy)
  {
    (*(completionBlockCopy + 2))(completionBlockCopy, 1);
  }
}

- (void)setActiveWatchAssertion:(id)assertion
{
  assertionCopy = assertion;
  activeWatchAssertion = self->_activeWatchAssertion;
  if (activeWatchAssertion != assertionCopy || assertionCopy && ([(NRActiveDeviceAssertion *)activeWatchAssertion isActive]& 1) == 0)
  {
    if ([(NRActiveDeviceAssertion *)assertionCopy isActive])
    {
      v6 = pbb_bridge_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = assertionCopy;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting active watch assertion: %{public}@", &v12, 0xCu);
      }

      v7 = assertionCopy;
      goto LABEL_16;
    }

    v8 = pbb_bridge_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (assertionCopy)
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

- (void)remoteFinishedHealthSharingOptInWithSelection:(BOOL)selection
{
  selectionCopy = selection;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (selectionCopy)
    {
      v6 = @"YES";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received health sharing status on companion, opt-in value: %@", &v7, 0xCu);
  }

  [(COSSetupController *)self->_setupController gizmoDidFinishHealthSharingOptIn:selectionCopy];
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

- (void)setCachedName:(id)name forDevice:(id)device
{
  deviceCopy = device;
  nameCopy = name;
  cachedDeviceNames = [(COSPreferencesAppController *)self cachedDeviceNames];

  if (!cachedDeviceNames)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    [(COSPreferencesAppController *)self setCachedDeviceNames:v9];
  }

  cachedDeviceNames2 = [(COSPreferencesAppController *)self cachedDeviceNames];
  pairingID = [deviceCopy pairingID];

  [cachedDeviceNames2 setObject:nameCopy forKey:pairingID];
}

- (void)clearCachedNameForDevice:(id)device
{
  deviceCopy = device;
  cachedDeviceNames = [(COSPreferencesAppController *)self cachedDeviceNames];
  if (cachedDeviceNames)
  {
    v6 = cachedDeviceNames;
    cachedDeviceNames2 = [(COSPreferencesAppController *)self cachedDeviceNames];
    pairingID = [deviceCopy pairingID];
    v9 = [cachedDeviceNames2 objectForKey:pairingID];

    if (v9)
    {
      v10 = pbb_bridge_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cached name for device found, clearing...", v13, 2u);
      }

      cachedDeviceNames3 = [(COSPreferencesAppController *)self cachedDeviceNames];
      pairingID2 = [deviceCopy pairingID];
      [cachedDeviceNames3 removeObjectForKey:pairingID2];
    }
  }
}

- (id)cachedNameForDevice:(id)device
{
  v4 = NRDevicePropertyName;
  deviceCopy = device;
  v6 = [deviceCopy valueForProperty:v4];
  cachedDeviceNames = [(COSPreferencesAppController *)self cachedDeviceNames];
  pairingID = [deviceCopy pairingID];

  v9 = [cachedDeviceNames objectForKey:pairingID];

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
  setupController = [(COSPreferencesAppController *)self setupController];

  if (setupController)
  {
    setupController2 = [(COSPreferencesAppController *)self setupController];
    tinkerUserName = [setupController2 tinkerUserName];
LABEL_5:
    v12 = tinkerUserName;

    goto LABEL_6;
  }

  activeWatch = [(COSPreferencesAppController *)self activeWatch];
  v7 = [activeWatch valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = [NPSDomainAccessor alloc];
    v10 = kBridgeDomain;
    activeWatch2 = [(COSPreferencesAppController *)self activeWatch];
    setupController2 = [v9 initWithDomain:v10 pairedDevice:activeWatch2];

    tinkerUserName = [setupController2 objectForKey:@"kTinkerUserNameKey"];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (void)reportTabState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (!stateCopy)
  {
    goto LABEL_13;
  }

  if (self->_myWatchViewController == stateCopy)
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

  if (self->_galleryViewController == stateCopy)
  {
    v7 = 2;
    goto LABEL_12;
  }

  if (self->_discoverNavigationController == stateCopy)
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

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  centerCopy = center;
  [(COSPreferencesAppController *)self refreshUpdateBadge];
  ntkCustomization = [(COSPreferencesAppController *)self ntkCustomization];
  v11 = [ntkCustomization handleUserNotificationResponse:responseCopy fromNotificationCenter:centerCopy withCompletionHandler:handlerCopy];

  if ((v11 & 1) == 0)
  {
    notification = [responseCopy notification];
    request = [notification request];
    identifier = [request identifier];
    v15 = [identifier isEqualToString:@"com.apple.Bridge.request"];

    if (v15)
    {
      +[PBBridgeCAReporter recordUserAwarenessNotificationDuringSetupUserEngaged];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  centerCopy = center;
  ntkCustomization = [(COSPreferencesAppController *)self ntkCustomization];
  v11 = [ntkCustomization handlePresentationOfNotification:notificationCopy fromNotificationCenter:centerCopy withCompletionHandler:handlerCopy];

  if ((v11 & 1) == 0)
  {
    request = [notificationCopy request];
    identifier = [request identifier];
    v14 = [identifier isEqualToString:@"com.apple.Bridge.request"];

    if (v14)
    {
      +[PBBridgeCAReporter recordUserAwarenessNotificationDuringSetup];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 26);
    }
  }
}

- (void)setIsRestoringToKnownDevice:(BOOL)device
{
  self->_isRestoringToKnownDevice = device;
  v4 = +[BPSBridgeAppContext shared];
  [v4 updateIsRestoringToKnownDevice:self->_isRestoringToKnownDevice];
}

- (BOOL)isEitherPhoneOrActiveWatchGreenTeaDevice
{
  v3 = +[UIDevice currentDevice];
  sf_isChinaRegionCellularDevice = [v3 sf_isChinaRegionCellularDevice];

  activeWatch = [(COSPreferencesAppController *)self activeWatch];
  v6 = [activeWatch valueForProperty:NRDevicePropertyGreenTeaDevice];
  bOOLValue = [v6 BOOLValue];

  return (sf_isChinaRegionCellularDevice | bOOLValue) & 1;
}

- (BOOL)safeToPopToSettingsRootController
{
  v3 = NSClassFromString(@"MCUINavigationViewController");
  isKindOfClass = v3;
  if (v3)
  {
    rootViewController = [(COSPreferencesAppController *)self rootViewController];
    presentedViewController = [rootViewController presentedViewController];
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