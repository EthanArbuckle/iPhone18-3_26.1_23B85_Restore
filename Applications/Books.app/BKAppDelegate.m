@interface BKAppDelegate
+ (BKAppDelegate)delegate;
+ (id)anySceneController;
+ (id)currentSceneController;
+ (id)sceneControllerForViewController:(id)a3;
+ (id)sceneManager;
- (BAAnalyticsController)primaryAnalyticsController;
- (BDSLiverpoolStatusMonitor)liverpoolStatusMonitor;
- (BKAppDelegate)init;
- (BKContainerHost)containerHost;
- (BKEngagementManager)engagementManager;
- (BKLibraryManager)libraryManager;
- (BKObjectGraphHost)objectGraphHost;
- (BKReachability)networkReachability;
- (BKServiceCenter)serviceCenter;
- (BKStoreController)storeController;
- (BOOL)annotationProvider:(id)a3 acknowledgeMergingAnnotationsWithAssetVersionMismatch:(id)a4 assetID:(id)a5;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (BOOL)applicationOpenURL:(id)a3 options:(id)a4 sceneController:(id)a5;
- (BOOL)isConnectedToInternet;
- (BOOL)isStoreAllowed;
- (UIWindow)window;
- (_TtP5Books20BKStartupTaskManager_)bkStartupTaskManager;
- (id)_analyticsSessionHost;
- (id)_engagementManagerDirectory;
- (id)_primarySceneControllerAnalyticsManager;
- (id)analyticsTrackerForStoreServices:(id)a3;
- (id)contentPrivateIDForContentID:(id)a3;
- (id)contentUserIDForContentID:(id)a3;
- (id)flowControllers;
- (id)keyWindowAnalyticsTracker;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (unint64_t)bl_beginBackgroundTaskWithName:(id)a3 expirationHandler:(id)a4;
- (unint64_t)ec_beginBackgroundTaskWithName:(id)a3 expirationHandler:(id)a4;
- (void)_analyticsForceEndSessionOnViewControllers;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_applicationDidBecomeFrontmost:(id)a3;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationOpenURL:(id)a3 options:(id)a4 sceneController:(id)a5;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_applicationWillResignActive:(id)a3;
- (void)_applicationWillTerminate:(id)a3;
- (void)_beginObservingICloudRestoreStatus;
- (void)_cleanup;
- (void)_createBackgroundTaskAssertionForLaunch;
- (void)_createCoverCacheForcingEmptyPPTCache:(BOOL)a3;
- (void)_didFinishUpgradingWithOptions:(id)a3;
- (void)_dieIfUnacknowledgediCloudLogoutOcccurredWithCompletion:(id)a3;
- (void)_endObservingNotifications;
- (void)_extendedLaunchComplete:(id)a3;
- (void)_finishLaunching;
- (void)_iCloudStatusChanged;
- (void)_logIfError:(id)a3 operation:(id)a4;
- (void)_observeExtendedLaunchComplete;
- (void)_prewarmAEPluginRegistry;
- (void)_reloadLibraryForLaunch;
- (void)_reloadUbiquityDataSources;
- (void)_resumeFromBackground;
- (void)_setupUbiquity;
- (void)_setupUserEngagement;
- (void)_showMainViewControllerOrWelcomeScreen;
- (void)_showWelcomeScreenIfNeeded:(id)a3 completion:(id)a4;
- (void)_signalEnableSyncCheck;
- (void)_signalExtendedLaunchComplete;
- (void)_startLibraryReloadForLaunchWhenNeeded;
- (void)_startObservingNotifications;
- (void)_updateEnableSync;
- (void)account:(unint64_t)a3 didChangeWithReason:(unint64_t)a4;
- (void)appGlobalActionHandler:(id)a3 open:(id)a4;
- (void)application:(id)a3 didDiscardSceneSessions:(id)a4;
- (void)application:(id)a3 didReceiveRemoteNotification:(id)a4;
- (void)application:(id)a3 handleIntent:(id)a4 completionHandler:(id)a5;
- (void)applicationWillTerminate:(id)a3;
- (void)bl_endBackgroundTask:(unint64_t)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)clearReadingGoals:(id)a3;
- (void)clientDetectedPredicateChange:(id)a3;
- (void)clientDetectedPurchaseServerClientExpired:(id)a3;
- (void)clientDetectedStoreChange:(id)a3;
- (void)clientDetectedStoreChangeAndAccountChange:(id)a3;
- (void)clientRequestITunesAuthentication:(id)a3 withCompletion:(id)a4;
- (void)cloudStorageUpgradeSheetWasDismissed;
- (void)deleteCloudDataWithCompletion:(id)a3;
- (void)didMigrateBooksCollection:(id)a3;
- (void)ec_endBackgroundTask:(unint64_t)a3;
- (void)flushJetMetricsWithCompletionHandler:(id)a3;
- (void)importMigratedBooks;
- (void)initialDataSourceFetchInitiated;
- (void)libraryAssetStatusController:(id)a3 makeAccountPrimaryAndSignedIn:(id)a4 completion:(id)a5;
- (void)libraryDidReload:(id)a3;
- (void)listeningSessionWillEnd;
- (void)mergeSyncSidecar;
- (void)networkReachabilityChanged:(id)a3;
- (void)orderFrontStandardAboutPanel:(id)a3;
- (void)performActionForShortcutItem:(id)a3 sceneController:(id)a4 completionHandler:(id)a5;
- (void)playSessionDidEnd:(id)a3 playTime:(double)a4;
- (void)q_deleteLocaliCloudDataIfUserLoggedOutFromiCloud;
- (void)q_setupLibrary;
- (void)readSessionDidEnd:(id)a3 readTime:(double)a4;
- (void)registerAppIntentsDependencies;
- (void)resetAnalyticsIdentifier:(id)a3;
- (void)resetOnlineContentAccess:(id)a3;
- (void)saveStateClosing:(BOOL)a3;
- (void)seriesCoversForSeriesIdsChanged:(id)a3;
- (void)setupAEAssetFactory;
- (void)showConfigurationErrorAndQuit;
- (void)sq_kickoffFinishLaunching;
- (void)startDownloadPurchaseMonitor;
- (void)storeChangedNotification:(id)a3;
- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)a3 oldIdentity:(id)a4;
- (void)userDefaultsChanged:(id)a3;
- (void)willMarkAsset:(id)a3 finished:(BOOL)a4 finishedDate:(id)a5;
@end

@implementation BKAppDelegate

- (BKAppDelegate)init
{
  v69.receiver = self;
  v69.super_class = BKAppDelegate;
  v2 = [(BKAppDelegate *)&v69 init];
  if (v2)
  {
    kdebug_trace();
    if (!MKBDeviceUnlockedSinceBoot())
    {
      v3 = BCIMLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100793B0C();
      }

      raise(9);
    }

    [v2 _observeExtendedLaunchComplete];
    v4 = +[BUAccountsProvider sharedProvider];
    [v4 addObserver:v2 accountTypes:1];

    v5 = dispatch_workloop_create("com.apple.iBooks.workloop");
    v6 = *(v2 + 37);
    *(v2 + 37) = v5;

    v7 = [[BUCoalescingCallBlock alloc] initWithNotifyBlock:&stru_100A0ABD0 blockDescription:@"BKApp Jalisco Authentication Request"];
    v8 = *(v2 + 52);
    *(v2 + 52) = v7;

    [*(v2 + 52) setCoalescingDelay:2.0];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INTERACTIVE, 0);

    v11 = dispatch_queue_create_with_target_V2("com.apple.iBooks.workloopUserInteractiveQueue", v10, *(v2 + 37));
    v12 = *(v2 + 38);
    *(v2 + 38) = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INITIATED, 0);

    v15 = dispatch_queue_create_with_target_V2("com.apple.iBooks.workloopUserInitiateQueue", v14, *(v2 + 37));
    v16 = *(v2 + 39);
    *(v2 + 39) = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_UTILITY, 0);

    v19 = dispatch_queue_create_with_target_V2("com.apple.iBooks.workloopUtilityQueue", v18, *(v2 + 37));
    v20 = *(v2 + 40);
    *(v2 + 40) = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_attr_make_with_qos_class(v21, QOS_CLASS_BACKGROUND, 0);

    v23 = dispatch_queue_create_with_target_V2("com.apple.iBooks.workloopBackgroundQueue", v22, *(v2 + 37));
    v24 = *(v2 + 41);
    *(v2 + 41) = v23;

    setiopolicy_np(3, 0, 1);
    v25 = [BKLaunchOperationQueue alloc];
    v26 = BCSignpostPreLaunchQueue();
    v27 = [(BKLaunchOperationQueue *)v25 initWithName:@"com.apple.iBooks.preLaunch" signpostLog:v26 targetQueue:0 activate:1];
    v28 = *(v2 + 42);
    *(v2 + 42) = v27;

    [*(v2 + 42) setQosClass:25];
    v29 = [BKLaunchOperationQueue alloc];
    v30 = BCSignpostLibrarySetupQueue();
    v31 = [(BKLaunchOperationQueue *)v29 initWithName:@"com.apple.iBooks.librarySetup" signpostLog:v30 targetQueue:0 activate:1];
    v32 = *(v2 + 43);
    *(v2 + 43) = v31;

    [*(v2 + 43) setQosClass:25];
    v33 = [BKLaunchOperationQueue alloc];
    v34 = BCSignpostStartupQueue();
    v35 = [(BKLaunchOperationQueue *)v33 initWithName:@"com.apple.iBooks.startup" signpostLog:v34 targetQueue:0 activate:0];
    v36 = *(v2 + 44);
    *(v2 + 44) = v35;

    [*(v2 + 44) setQosClass:33];
    BCSetUnsafeAppDelegateReference();
    v37 = objc_alloc_init(BKAppLaunchCoordinator);
    v38 = *(v2 + 15);
    *(v2 + 15) = v37;

    v39 = BCSignpostLaunch();
    v40 = os_signpost_id_generate(v39);

    v41 = BCSignpostLaunch();
    v42 = v41;
    if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_BEGIN, v40, "Hold at launch", "", buf, 2u);
    }

    [*(v2 + 15) appLaunchCoordinatorHoldAtLaunchingAssertion];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C64E0;
    v65 = block[3] = &unk_100A04CF0;
    v43 = v2;
    v66 = v43;
    v67 = v40;
    v44 = v65;
    dispatch_async(&_dispatch_main_q, block);
    v45 = +[JSAProcessEnvironment currentEnvironment];
    [v45 setup];

    v46 = objc_alloc_init(BKBagOfflineCacheProvider);
    [BUBag setOfflineCacheProvider:v46];

    v47 = objc_alloc_init(BKTUIOfflineCacheProvider);
    [TUIOfflineCache setProvider:v47];

    v48 = [v43 workloopUserInitiatedQueue];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_1001C65C4;
    v62[3] = &unk_100A033C8;
    v49 = v43;
    v63 = v49;
    dispatch_async(v48, v62);

    v50 = [v49 workloopUserInitiatedQueue];
    dispatch_async(v50, &stru_100A0ABF0);

    v51 = [v49 workloopUserInitiatedQueue];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1001C66C4;
    v60[3] = &unk_100A033C8;
    v52 = v49;
    v61 = v52;
    dispatch_async(v51, v60);

    v53 = [v52 workloopUserInitiatedQueue];
    dispatch_async(v53, &stru_100A0AC10);

    dispatch_async(*(v2 + 40), &stru_100A0AC30);
    v54 = +[BCAnalyticsVisibilityPresentationNotifier sharedInstance];
    v55 = objc_alloc_init(BKAppImportCoordinator);
    v56 = v52[24];
    v52[24] = v55;

    v57 = [[BKAppSceneManager alloc] initWithLaunchCoordinator:*(v2 + 15) importCoordinator:v52[24]];
    v58 = v52[6];
    v52[6] = v57;

    v52[54] = 0;
    kdebug_trace();
    [BLLockFile setBackgroundTaskDelegate:v52];
    [BMManagerConfiguration setBackgroundTaskDelegate:v52];
    [v52 _finishLaunching];
  }

  return v2;
}

- (void)_observeExtendedLaunchComplete
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_extendedLaunchComplete:" name:BSUIFeedInitialContentReadyNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_extendedLaunchComplete:" name:BSUIFeedViewControllerDidDisappearNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  v6 = +[BKRootBarCoordinator didSwitchRootBarItemNotification];
  [v5 addObserver:self selector:"_extendedLaunchComplete:" name:v6 object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  v7 = +[BKRootBarCoordinator rootViewControllerDidDisappearNotification];
  [v8 addObserver:self selector:"_extendedLaunchComplete:" name:v7 object:0];
}

- (void)_setupUbiquity
{
  v3 = [BDSICloudIdentityTokenTracker alloc];
  v4 = +[BDSApplication applicationDocumentsDirectory];
  v5 = [NSURL fileURLWithPath:v4 isDirectory:1];
  v6 = [v3 initWithContainerURL:v5 trackingLiverpool:0];
  iCloudIdentityTokenTracker = self->_iCloudIdentityTokenTracker;
  self->_iCloudIdentityTokenTracker = v6;

  v8 = objc_alloc_init(IMUbiquityStatusMonitor);
  ubiquityStatusMonitor = self->_ubiquityStatusMonitor;
  self->_ubiquityStatusMonitor = v8;

  [(IMUbiquityStatusMonitor *)self->_ubiquityStatusMonitor registerCoordinatingObserver:self];
  v10 = [(BKAppDelegate *)self liverpoolStatusMonitor];
  [v10 registerCoordinatingObserver:self];

  v11 = [BKUbiquityOptInController alloc];
  v12 = self->_ubiquityStatusMonitor;
  v13 = [(BKAppDelegate *)self liverpoolStatusMonitor];
  v14 = [(BKUbiquityOptInController *)v11 initWithStatusMonitor:v12 liverpoolStatusMonitor:v13];
  ubiquityOptInController = self->_ubiquityOptInController;
  self->_ubiquityOptInController = v14;

  v16 = +[BDSLiverpoolStatusMonitor makeOSStateHandler];
  [(BKAppDelegate *)self setSyncUserDefaultsStateHandler:v16];

  v17 = [(IMUbiquityStatusMonitor *)self->_ubiquityStatusMonitor makeOSStateHandler];
  [(BKAppDelegate *)self setUbiquityStatusMonitorStateHandler:v17];
}

- (void)_finishLaunching
{
  v3 = [(BKAppDelegate *)self workloopUtilityQueue];
  dispatch_async(v3, &stru_100A0AC98);

  kdebug_trace();
  kdebug_trace();
  [(BKAppDelegate *)self _setupUbiquity];
  kdebug_trace();
  v4 = +[BCLayerRenderer sharedInstance];
  v5 = [(BKAppDelegate *)self preLaunchQueue];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100006C00;
  v36[3] = &unk_100A033C8;
  v36[4] = self;
  [v5 addOperationWithBlock:v36];

  v6 = [(BKAppDelegate *)self preLaunchQueue];
  [v6 addOperationWithBlock:&stru_100A0ACB8];

  v7 = [(BKAppDelegate *)self preLaunchQueue];
  [v7 addOperationWithBlock:&stru_100A0ACD8];

  v8 = [(BKAppDelegate *)self preLaunchQueue];
  [v8 addOperationWithBlock:&stru_100A0ACF8];

  v9 = [(BKAppDelegate *)self preLaunchQueue];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100012208;
  v35[3] = &unk_100A033C8;
  v35[4] = self;
  [v9 addOperationWithBlock:v35];

  v10 = [(BKAppDelegate *)self preLaunchQueue];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100009274;
  v34[3] = &unk_100A033C8;
  v34[4] = self;
  [v10 addOperationWithBlock:v34];

  v11 = [(BKAppDelegate *)self workloopUserInitiatedQueue];
  dispatch_async(v11, &stru_100A0AD18);

  v12 = [(BKAppDelegate *)self preLaunchQueue];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100012CF4;
  v33[3] = &unk_100A033C8;
  v33[4] = self;
  [v12 addOperationWithBlock:v33];

  v13 = [(BKAppDelegate *)self preLaunchQueue];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100012E5C;
  v32[3] = &unk_100A033C8;
  v32[4] = self;
  [v13 addOperationWithBlock:v32];

  v14 = [(BKAppDelegate *)self preLaunchQueue];
  [v14 addOperationWithBlock:&stru_100A0AD38];

  v15 = [(BKAppDelegate *)self preLaunchQueue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100013E70;
  v31[3] = &unk_100A033C8;
  v31[4] = self;
  [v15 addOperationWithBlock:v31];

  v16 = [(BKAppDelegate *)self preLaunchQueue];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100013FC0;
  v30[3] = &unk_100A033C8;
  v30[4] = self;
  [v16 addOperationWithBlock:v30];

  v17 = [(BKAppDelegate *)self preLaunchQueue];
  [v17 addOperationWithBlock:&stru_100A0AD58];

  v18 = [(BKAppDelegate *)self preLaunchQueue];
  [v18 addOperationWithBlock:&stru_100A0AD78];

  v19 = [(BKAppDelegate *)self preLaunchQueue];
  [v19 addOperationWithBlock:&stru_100A0AD98];

  v20 = [(BKAppDelegate *)self preLaunchQueue];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100018890;
  v29[3] = &unk_100A033C8;
  v29[4] = self;
  [v20 addOperationWithBlock:v29];

  v21 = [(BKAppDelegate *)self preLaunchQueue];
  [v21 addOperationWithBlock:&stru_100A0ADD8];

  v22 = [BUNetworkMonitor alloc];
  v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v24 = dispatch_queue_create("com.apple.iBooks.networkMonitoringQueue", v23);
  v25 = [v22 initWithQueue:v24];
  [(BKAppDelegate *)self setNetworkMonitor:v25];

  v26 = +[BCSyncUserDefaults makeOSStateHandler];
  [(BKAppDelegate *)self setBcSyncUserDefaultsStateHandler:v26];

  v27 = [(BKAppDelegate *)self preLaunchQueue];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001C76E8;
  v28[3] = &unk_100A033C8;
  v28[4] = self;
  [v27 addOperationWithBlock:v28];

  kdebug_trace();
}

- (BDSLiverpoolStatusMonitor)liverpoolStatusMonitor
{
  if (qword_100AF7838 != -1)
  {
    sub_1000061A0();
  }

  v3 = qword_100AF7840;

  return v3;
}

- (_TtP5Books20BKStartupTaskManager_)bkStartupTaskManager
{
  v2 = self;
  v3 = [(BKAppDelegate *)v2 containerHost];
  sub_1000076D8(v6);

  sub_10000E3E8(v6, v6[3]);
  sub_100798D64();
  result = sub_100798CC4();
  if (result)
  {
    v5 = result;

    sub_1000074E0(v6);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BKContainerHost)containerHost
{
  swift_beginAccess();
  v3 = self;
  v4 = objc_getAssociatedObject(v3, &unk_100B23078);
  result = swift_endAccess();
  if (v4)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
    sub_1000076D4(&v7, &v8);
    type metadata accessor for ContainerHost();
    swift_dynamicCast();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)q_deleteLocaliCloudDataIfUserLoggedOutFromiCloud
{
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "q_deleteLocaliCloudDataIfUserLoggedOutFromiCloudWithCompletion:", buf, 2u);
  }

  v4 = [(BKAppDelegate *)self iCloudIdentityTokenTracker];
  [v4 fetchCurrentToken];
  if ([v4 didUnacknowledgediCloudLogoutOccur])
  {
    v5 = BDSCloudKitLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User logged out from iCloud.  Deleting local copies of cloud data.", buf, 2u);
    }

    v6 = dispatch_semaphore_create(0);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001D13B4;
    v9[3] = &unk_100A034F8;
    v10 = v4;
    v11 = v6;
    v7 = v6;
    [(BKAppDelegate *)self deleteCloudDataWithCompletion:v9];
    v8 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v7, v8);
  }

  else
  {
    [v4 acknowledgeiCloudIdentity];
  }
}

- (void)registerAppIntentsDependencies
{
  v2 = self;
  BKAppDelegate.registerAppIntentsDependencies()();
}

- (void)_createBackgroundTaskAssertionForLaunch
{
  v3 = +[BCBackgroundTaskAssertion sharedAssertion];
  [v3 claimAssertionForIdentifier:@"kAppLaunchBackgroundTaskIdentifier" description:@"Launch in progress"];

  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_1001CCEB4;
  v8[4] = sub_1001CCEE0;
  v9 = &stru_100A0B138;
  v4 = [(BKAppDelegate *)self appLaunchCoordinator];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CD3AC;
  v7[3] = &unk_100A0B160;
  v7[4] = v8;
  [v4 appLaunchCoordinatorOnConditionMask:32 blockID:@"releaseLaunchAssertion launched" performBlock:v7];

  v5 = [(BKAppDelegate *)self appLaunchCoordinator];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001CD424;
  v6[3] = &unk_100A0B160;
  v6[4] = v8;
  [v5 appLaunchCoordinatorOnConditionMask:0x2000 blockID:@"releaseLaunchAssertion libraryDidFinish" performBlock:v6];

  _Block_object_dispose(v8, 8);
}

- (void)q_setupLibrary
{
  v3 = [(BKAppDelegate *)self librarySetupQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001402C;
  v4[3] = &unk_100A033C8;
  v4[4] = self;
  [v3 addOperationWithBlock:v4];
}

+ (BKAppDelegate)delegate
{
  objc_opt_class();
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  v4 = BUDynamicCast();

  return v4;
}

+ (id)sceneManager
{
  v2 = +[BKAppDelegate delegate];
  v3 = [v2 sceneManager];

  return v3;
}

- (UIWindow)window
{
  v3 = [(BKAppDelegate *)self sceneManager];
  v4 = [v3 currentSceneController];

  if (v4)
  {
    v5 = [(BKAppDelegate *)self sceneManager];
    v6 = [v5 currentSceneController];
    v7 = [v6 bk_window];
  }

  else
  {
    v8 = sub_1000122C0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10079404C();
    }

    v7 = 0;
  }

  return v7;
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

- (BAAnalyticsController)primaryAnalyticsController
{
  v2 = [(BKAppDelegate *)self _primarySceneControllerAnalyticsManager];
  v3 = [v2 analyticsController];

  return v3;
}

- (id)_primarySceneControllerAnalyticsManager
{
  objc_opt_class();
  v3 = [(BKAppDelegate *)self sceneManager];
  v4 = [v3 primarySceneController];
  v5 = BUDynamicCast();

  v6 = [v5 analyticsManager];

  return v6;
}

- (void)orderFrontStandardAboutPanel:(id)a3
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001C69A0;
  v11[3] = &unk_100A0AC58;
  v11[4] = self;
  v3 = objc_retainBlock(v11);
  v4 = objc_alloc_init(NSMutableAttributedString);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Acknowledgments" value:&stru_100A30A68 table:0];

  v7 = (v3[2])(v3, v6, @"Acknowledgments.pdf");
  [v4 appendAttributedString:v7];

  v8 = +[BCAppKitBundleLoader appKitBundleClass];
  v9 = [v8 aboutPanelOptionCreditsKey];
  v12 = v9;
  v13 = v4;
  v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  [v8 orderFrontStandardAboutPanelWithOptions:v10];
}

- (void)_cleanup
{
  [(BKAppDelegate *)self _endObservingNotifications];
  v3 = +[UIApplication sharedApplication];
  [NSObject cancelPreviousPerformRequestsWithTarget:v3];

  networkReachability = self->_networkReachability;
  if (networkReachability)
  {
    [(BKReachability *)networkReachability stopNotifier];
  }

  sharedAnnotationProvider = self->_sharedAnnotationProvider;
  self->_sharedAnnotationProvider = 0;
}

- (id)flowControllers
{
  v2 = [(BKAppDelegate *)self sceneManager];
  v3 = BUProtocolCast();
  v4 = [v3 flowControllers];

  return v4;
}

- (BOOL)applicationOpenURL:(id)a3 options:(id)a4 sceneController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v11 = BCSceneLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v10 scene];
    v13 = [v12 session];
    v14 = [v13 persistentIdentifier];
    *buf = 138412802;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "applicationOpenURL: url=%@, options=%@, withSceneID=%@", buf, 0x20u);
  }

  [(BKAppDelegate *)self setSuppressOpenLastBook:1];
  objc_initWeak(buf, self);
  v15 = [(BKAppDelegate *)self appLaunchCoordinator];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001C6EB0;
  v20[3] = &unk_100A03C50;
  objc_copyWeak(&v24, buf);
  v16 = v8;
  v21 = v16;
  v17 = v9;
  v22 = v17;
  v18 = v10;
  v23 = v18;
  [v15 appLaunchCoordinatorPerformWhenLaunched:@"app openURL" block:v20];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);

  return 1;
}

- (void)_applicationOpenURL:(id)a3 options:(id)a4 sceneController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [(BKAppDelegate *)self sceneManager];
    v12 = [v13 currentSceneController];
  }

  v52 = [v12 newShowURLTransaction];
  objc_opt_class();
  v14 = [v9 objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
  v15 = BUDynamicCast();

  v50 = [v9 objectForKeyedSubscript:UIApplicationOpenURLOptionsAnnotationKey];
  v53 = self;
  val = [(BKAppDelegate *)self _primarySceneControllerAnalyticsManager];
  [val analyticsSetReferralURL:v8 app:v15];
  v51 = v15;
  if ([v15 isEqualToString:@"com.apple.iBooks.BooksWidget"])
  {
    v47 = v8;
    v16 = [v8 query];
    v17 = [NSURL bu_dictionaryForQueryString:v16 unescapedValues:0];

    objc_opt_class();
    v18 = [v17 objectForKeyedSubscript:@"widgetFamily"];
    v19 = BUDynamicCast();
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = &stru_100A30A68;
    }

    v48 = v21;

    objc_opt_class();
    v22 = [v17 objectForKeyedSubscript:@"widgetKind"];
    v23 = BUDynamicCast();
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = &stru_100A30A68;
    }

    v26 = v25;

    objc_opt_class();
    v27 = [v17 objectForKeyedSubscript:@"hasAssets"];
    v28 = BUDynamicCast();
    v29 = [v28 BOOLValue];

    objc_opt_class();
    v30 = [v17 objectForKeyedSubscript:@"isStreakExposed"];
    v31 = BUDynamicCast();
    v32 = [v31 BOOLValue];

    v33 = [[BAWidgetData alloc] initWithWidgetFamily:v48 displayMode:v26 isContentExposed:v29 isStreakExposed:v32];
    objc_initWeak(&location, val);
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1001C7444;
    v55[3] = &unk_100A070B8;
    objc_copyWeak(&v57, &location);
    v34 = v33;
    v56 = v34;
    [val setEvaluateAfterSessionStart:v55];

    objc_destroyWeak(&v57);
    objc_destroyWeak(&location);

    v8 = v47;
  }

  v35 = [v9 objectForKeyedSubscript:@"BKApplicationOpenURLOptionsOpenAfterImportKey"];
  v36 = v35;
  if (v35)
  {
    v37 = [v35 BOOLValue];
  }

  else
  {
    v37 = 1;
  }

  v49 = v11;
  v38 = [v9 objectForKeyedSubscript:@"BKApplicationImportInPlaceKey"];
  v39 = v38;
  if (v38)
  {
    v40 = [v38 BOOLValue];
  }

  else
  {
    v40 = 0;
  }

  v41 = v8;
  v42 = [v9 objectForKeyedSubscript:@"BKApplicationShowLibraryAllCollectionKey"];
  v43 = v42;
  if (v42)
  {
    v44 = [v42 BOOLValue];
  }

  else
  {
    v44 = 0;
  }

  v45 = [(BKAppDelegate *)v53 sceneManager];
  BYTE2(v46) = 1;
  BYTE1(v46) = v44;
  LOBYTE(v46) = v40;
  [v45 handleApplicationURL:v41 sourceApplication:v51 annotation:v50 likelyUserInitiated:0 canImport:1 openAfterImport:v37 importInPlace:v46 showLibraryAllCollection:v52 switchToLibrary:0 transaction:? completion:?];
}

- (void)_signalEnableSyncCheck
{
  v2 = [(BKAppDelegate *)self coalescedUpdateEnableSync];
  [v2 signalWithCompletion:&stru_100A0AC78];
}

- (void)_updateEnableSync
{
  +[BCSyncUserDefaults syncDefaultsWithTCC];
  v3 = [(BKAppDelegate *)self liverpoolStatusMonitor];
  v4 = [v3 isCloudKitEnabled];

  if (v4)
  {
    v5 = +[BCSyncUserDefaults isCollectionSyncOptedIn];
    v6 = +[BCSyncUserDefaults isReadingNowSyncOptedIn];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = +[BCCloudKitController sharedInstance];
  [v7 setEnableCloudSync:v5 serviceMode:0];

  v8 = +[BCCloudAssetManager sharedManager];
  [v8 setEnableCloudSync:v5 enableReadingNowSync:v6];

  v9 = +[BCReadingStatisticsSyncManager sharedInstance];
  [v9 setEnableCloudSync:v5];

  v10 = +[BCCloudCollectionsManager sharedManager];
  [v10 setEnableCloudSync:v5];

  v11 = +[BDSCloudGlobalMetadataManager sharedManager];
  [v11 setEnableCloudSync:v5];

  v12 = +[BDSSecureManager sharedManager];
  [v12 setEnableCloudSync:v5];

  v13 = [(BKAppDelegate *)self libraryManager];
  v14 = [v13 assetDetailsManager];
  [v14 setEnableReadingNowSync:v6];

  v16 = [(BKAppDelegate *)self serviceCenter];
  v15 = [v16 readingActivityService];
  [v15 setEnableCloudSync:v4];
}

- (id)_engagementManagerDirectory
{
  v2 = +[BUAppGroup books];
  v3 = [v2 containerURL];
  v4 = [v3 URLByAppendingPathComponent:@"EngagementCollector" isDirectory:1];

  return v4;
}

- (void)_setupUserEngagement
{
  v7 = [(BKAppDelegate *)self _engagementManagerDirectory];
  v3 = [[BMManagerConfiguration alloc] initWithDirectory:v7 shouldRunUpdatesOnSchedule:0 shouldPurgeOutdatedData:1];
  v4 = [BKEngagementManager alloc];
  v5 = +[BCRCDataContainer defaultContainer];
  v6 = [(BKEngagementManager *)v4 initWithConfiguration:v3 configurationContainer:v5];
  [(BKAppDelegate *)self setEngagementManager:v6];
}

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [BKContainerHost alloc];
  v9 = [(BKAppDelegate *)self appLaunchCoordinator];
  v10 = [(BKContainerHost *)v8 initWithLaunchCoordinator:v9];
  [(BKAppDelegate *)self setContainerHost:v10];

  v11 = [BKAppLifecycleObserver alloc];
  v12 = [(BKAppDelegate *)self appLaunchCoordinator];
  v13 = [(BKAppLifecycleObserver *)v11 initWithCoordinator:v12];

  [(BKAppDelegate *)self setAppLifecycleObserver:v13];
  objc_initWeak(location, self);
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1001C820C;
  v41[3] = &unk_100A070B8;
  objc_copyWeak(&v43, location);
  v14 = v6;
  v42 = v14;
  [(BKAppLifecycleObserver *)v13 setOnWillEnterForeground:v41];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1001C825C;
  v38[3] = &unk_100A070B8;
  objc_copyWeak(&v40, location);
  v15 = v14;
  v39 = v15;
  [(BKAppLifecycleObserver *)v13 setOnDidEnterBackground:v38];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1001C82AC;
  v35[3] = &unk_100A070B8;
  objc_copyWeak(&v37, location);
  v16 = v15;
  v36 = v16;
  [(BKAppLifecycleObserver *)v13 setOnWillResignActive:v35];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1001C82FC;
  v32[3] = &unk_100A070B8;
  objc_copyWeak(&v34, location);
  v17 = v16;
  v33 = v17;
  [(BKAppLifecycleObserver *)v13 setOnDidBecomeActive:v32];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1001C834C;
  v29[3] = &unk_100A070B8;
  objc_copyWeak(&v31, location);
  v18 = v17;
  v30 = v18;
  [(BKAppLifecycleObserver *)v13 setOnWillResignFrontmost:v29];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1001C839C;
  v26[3] = &unk_100A070B8;
  objc_copyWeak(&v28, location);
  v19 = v18;
  v27 = v19;
  [(BKAppLifecycleObserver *)v13 setOnDidBecomeFrontmost:v26];
  if ([v19 launchedToTest] && objc_msgSend(v19, "shouldRecordExtendedLaunchTime"))
  {
    [v19 observeExtendedLaunchTestCompletion];
  }

  v20 = [(BKAppDelegate *)self preLaunchQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001C83EC;
  v24[3] = &unk_100A033C8;
  v21 = v19;
  v25 = v21;
  [v20 addOperationWithBlock:v24];

  v22 = [(BKAppDelegate *)self bkStartupTaskManager];
  [v22 startAllTasksInPhase:0];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v31);

  objc_destroyWeak(&v34);
  objc_destroyWeak(&v37);

  objc_destroyWeak(&v40);
  objc_destroyWeak(&v43);
  objc_destroyWeak(location);

  return 1;
}

- (void)_prewarmAEPluginRegistry
{
  objc_initWeak(&location, self->_appLaunchCoordinator);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C85BC;
  v8[3] = &unk_100A03FB8;
  objc_copyWeak(&v9, &location);
  v2 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v8 block:5.0];
  v3 = +[AEPluginRegistry sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001C861C;
  v5[3] = &unk_100A070B8;
  objc_copyWeak(&v7, &location);
  v4 = v2;
  v6 = v4;
  [v3 prewarmSharedResourcesWithCompletion:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)sq_kickoffFinishLaunching
{
  kdebug_trace();
  v3 = [(BKAppDelegate *)self preLaunchQueue];
  [v3 waitUntilAllOperationsAreFinished];

  kdebug_trace();
  preLaunchQueue = self->_preLaunchQueue;
  self->_preLaunchQueue = 0;

  kdebug_trace();
  v5 = [(BKAppDelegate *)self librarySetupQueue];
  [v5 waitUntilAllOperationsAreFinished];

  kdebug_trace();
  librarySetupQueue = self->_librarySetupQueue;
  self->_librarySetupQueue = 0;

  kdebug_trace();
  v7 = [(BKAppDelegate *)self ubiquityOptInController];
  [v7 finalizeSetup];

  v8 = +[BKCloudQuotaUIServices sharedInstance];
  [v8 addObserver:self];

  +[BCSyncUserDefaults syncDefaultsWithTCC];
  kdebug_trace();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C899C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  kdebug_trace();
  v9 = +[BSUIStoreServices sharedInstance];
  [v9 setDelegate:self];
  [(BKAppDelegate *)self startDownloadPurchaseMonitor];
  v10 = [(BKAppDelegate *)self libraryManager];
  v11 = [v10 assetDetailsManager];
  v12 = +[BCAnnotationSyncManager sharedInstance];
  [v12 setDelegate:v11];

  kdebug_trace();
  objc_initWeak(&location, self);
  v13 = [(BKAppDelegate *)self appLaunchCoordinator];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001C8AFC;
  v14[3] = &unk_100A03B10;
  objc_copyWeak(&v15, &location);
  [v13 appLaunchCoordinatorOnConditionMask:512 blockID:@"clearWidgetImageCacheIfNeeded" performBlock:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = +[BKReadingActivityService includePDFsDefaultsKey];
  v92 = v9;
  v93 = &__kCFBooleanFalse;
  v10 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
  [v8 registerDefaults:v10];

  [(BKAppDelegate *)self enableMetricsInspectorOnDebugMode];
  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = +[BKReadingActivityService readingGoalsUserDefaultsKey];
  v13 = [v11 objectForKey:v12];

  v14 = +[BUAppGroup books];
  v15 = [v14 userDefaults];
  v16 = +[BKReadingActivityService readingGoalsUserDefaultsKey];
  v90 = v16;
  v17 = &__kCFBooleanTrue;
  if (v13)
  {
    v17 = v13;
  }

  v91 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
  [v15 registerDefaults:v18];

  if (v13)
  {
    v19 = +[NSUserDefaults standardUserDefaults];
    v20 = +[BKReadingActivityService readingGoalsUserDefaultsKey];
    [v19 removeObjectForKey:v20];
  }

  v21 = +[NSUserDefaults standardUserDefaults];
  v22 = [v21 objectForKey:@"BKIncludeBookStoreResultsInSearch"];

  if (!v22)
  {
    objc_opt_class();
    v23 = +[NSUserDefaults standardUserDefaults];
    v24 = [v23 objectForKey:@"BKExcludeBookStoreResultsInSearch"];
    v25 = BUDynamicCast();

    v26 = +[NSUserDefaults standardUserDefaults];
    v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v25 BOOLValue] ^ 1);
    [v26 setObject:v27 forKey:@"BKIncludeBookStoreResultsInSearch"];

    v28 = +[NSUserDefaults standardUserDefaults];
    [v28 removeObjectForKey:@"BKExcludeBookStoreResultsInSearch"];
  }

  v29 = +[NSUserDefaults standardUserDefaults];
  [v29 removeObjectForKey:@"BKLibraryClearICloudMergeDataOnRestart"];

  v30 = +[NSUserDefaults standardUserDefaults];
  [v30 removeObjectForKey:@"REI.EnableCellularFontDownload"];

  v31 = +[NSUserDefaults standardUserDefaults];
  [v31 removeObjectForKey:@"BKCumulus.LastDsid"];

  v32 = +[NSUserDefaults standardUserDefaults];
  [v32 removeObjectForKey:@"BKCumulus.LastDsidText"];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v33 = +[UIColor systemBlueColor];
    v34 = [UIView appearanceWhenContainedIn:objc_opt_class(), 0];
    [v34 setTintColor:v33];
  }

  [v6 setMinimumBackgroundFetchInterval:3600.0];
  [INPreferences requestSiriAuthorization:&stru_100A0AF10];
  v35 = sub_1000122C0();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Registering Link actions", buf, 2u);
  }

  [(BKAppDelegate *)self registerAppIntentsDependencies];
  [(BKAppDelegate *)self _createBackgroundTaskAssertionForLaunch];
  [(BKAppDelegate *)self setLaunchOptions:v7];
  v36 = BCIMLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v89 = v7;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Books launching with launchOptions=%{private}@", buf, 0xCu);
  }

  v37 = [(BKAppDelegate *)self startupQueue];
  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = sub_1001C98D8;
  v87[3] = &unk_100A033C8;
  v87[4] = self;
  [v37 addOperationWithBlock:v87];

  v38 = [(BKAppDelegate *)self startupQueue];
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_1001C9A20;
  v86[3] = &unk_100A033C8;
  v86[4] = self;
  [v38 addOperationWithBlock:v86];

  v39 = [(BKAppDelegate *)self startupQueue];
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_1001C9AF4;
  v85[3] = &unk_100A033C8;
  v85[4] = self;
  [v39 addOperationWithBlock:v85];

  v40 = [(BKAppDelegate *)self startupQueue];
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_1001C9B60;
  v84[3] = &unk_100A033C8;
  v84[4] = self;
  [v40 addOperationWithBlock:v84];

  v41 = [(BKAppDelegate *)self startupQueue];
  [v41 addOperationWithBlock:&stru_100A0AF30];

  v42 = [(BKAppDelegate *)self startupQueue];
  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_1001C9C40;
  v83[3] = &unk_100A033C8;
  v83[4] = self;
  [v42 addOperationWithBlock:v83];

  v43 = [(BKAppDelegate *)self startupQueue];
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_1001C9CD4;
  v82[3] = &unk_100A033C8;
  v82[4] = self;
  [v43 addOperationWithBlock:v82];

  v44 = [(BKAppDelegate *)self startupQueue];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_1001C9D40;
  v81[3] = &unk_100A033C8;
  v81[4] = self;
  [v44 addOperationWithBlock:v81];

  v45 = [(BKAppDelegate *)self startupQueue];
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_1001C9DBC;
  v80[3] = &unk_100A033C8;
  v80[4] = self;
  [v45 addOperationWithBlock:v80];

  v46 = [(BKAppDelegate *)self startupQueue];
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_1001C9EC0;
  v79[3] = &unk_100A033C8;
  v79[4] = self;
  [v46 addOperationWithBlock:v79];

  v47 = [(BKAppDelegate *)self startupQueue];
  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_1001C9F3C;
  v78[3] = &unk_100A033C8;
  v78[4] = self;
  [v47 addOperationWithBlock:v78];

  v48 = [(BKAppDelegate *)self startupQueue];
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_1001C9FB8;
  v77[3] = &unk_100A033C8;
  v77[4] = self;
  [v48 addOperationWithBlock:v77];

  v49 = [(BKAppDelegate *)self startupQueue];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_1001CA068;
  v75[3] = &unk_100A03440;
  v75[4] = self;
  v76 = v7;
  v50 = v7;
  [v49 addOperationWithBlock:v75];

  v51 = [(BKAppDelegate *)self startupQueue];
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_1001CA15C;
  v74[3] = &unk_100A033C8;
  v74[4] = self;
  [v51 addOperationWithBlock:v74];

  v52 = [(BKAppDelegate *)self startupQueue];
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_1001CA1FC;
  v73[3] = &unk_100A033C8;
  v73[4] = self;
  [v52 addOperationWithBlock:v73];

  dispatch_async(&_dispatch_main_q, &stru_100A0AF50);
  [v6 registerForRemoteNotifications];
  v53 = +[BAAppManager sharedManager];
  [v53 startAppSessionWithApplicationGroupIdentifier:BUBooksGroupContainerIdentifier enableUploads:1];

  v54 = [(BKAppDelegate *)self appLaunchCoordinator];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_1001CA240;
  v71[3] = &unk_100A03E30;
  v71[4] = self;
  v72 = v6;
  v55 = v6;
  [v54 appLaunchCoordinatorOnConditionMask:512 blockID:@"actionHandler initialization" performBlock:v71];

  v56 = [BKMenuController alloc];
  v57 = [(BKAppDelegate *)self appLaunchCoordinator];
  v58 = [(BKAppDelegate *)self sceneManager];
  v59 = [(BKMenuController *)v56 initWithAppLaunchCoordinator:v57 sceneManager:v58];
  menuController = self->_menuController;
  self->_menuController = v59;

  v61 = [(BKAppDelegate *)self appLaunchCoordinator];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_1001CA38C;
  v70[3] = &unk_100A038D0;
  v70[4] = self;
  [v61 appLaunchCoordinatorOnConditionMask:512 blockID:@"audioBookController initialization" performBlock:v70];

  v62 = [(BKAppDelegate *)self appLaunchCoordinator];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1001CA5F0;
  v69[3] = &unk_100A038D0;
  v69[4] = self;
  [v62 appLaunchCoordinatorOnConditionMask:512 blockID:@"jsaBridge startEviction" performBlock:v69];

  v63 = [(BKAppDelegate *)self appLaunchCoordinator];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_1001CA6C4;
  v68[3] = &unk_100A038D0;
  v68[4] = self;
  [v63 appLaunchCoordinatorOnConditionMask:512 blockID:@"SnapshotManager cleanup" performBlock:v68];

  v64 = [(BKAppDelegate *)self appLaunchCoordinator];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1001CA6CC;
  v67[3] = &unk_100A038D0;
  v67[4] = self;
  [v64 appLaunchCoordinatorOnConditionMask:512 blockID:@"Start after-launching tasks" performBlock:v67];

  v65 = [(BKAppDelegate *)self bkStartupTaskManager];
  [v65 startAllTasksInPhase:1];

  kdebug_trace();
  return 1;
}

- (void)_createCoverCacheForcingEmptyPPTCache:(BOOL)a3
{
  if (a3)
  {
    v16 = objc_opt_new();
  }

  else
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

    v7 = dispatch_queue_create_with_target_V2("com.apple.coverWorkQHigh", v4, 0);
    v8 = dispatch_queue_create_with_target_V2("com.apple.coverWorkQLow", v6, 0);
    v9 = dispatch_queue_create_with_target_V2("com.apple.coverTaskQ_high", v4, 0);
    v10 = dispatch_queue_create_with_target_V2("com.apple.coverTaskQ_low", v6, 0);
    v11 = objc_opt_new();
    v12 = +[BKSeriesCoverManager sharedInstance];
    v13 = [BCCacheManager defaultClassDefinitionsWithProtocolHandler:v11 stackDecomposer:v12];

    v14 = [BCCacheManager alloc];
    v15 = [(BKAppDelegate *)self libraryManager];
    v16 = [v14 initWithClassDefinitions:v13 highPriorityGeneralQueue:v7 lowPriorityGeneralQueue:v8 highPriorityTargetQueue:v9 backgroundTargetQueue:v10 delegate:v15];
  }

  [BCCacheManager setDefaultCacheManager:v16];
}

- (void)application:(id)a3 handleIntent:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = BooksSiriLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Handling Siri Intent: %@", &buf, 0xCu);
  }

  if (qword_100AF7850 != -1)
  {
    sub_100793D08();
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = sub_1000274EC;
  v31 = sub_1000276A0;
  v32 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001CAC80;
  v25[3] = &unk_100A0B008;
  p_buf = &buf;
  v25[4] = self;
  v12 = v10;
  v26 = v12;
  v13 = objc_retainBlock(v25);
  objc_opt_class();
  v14 = BUDynamicCast();
  v15 = [v14 mediaItems];
  v16 = [v15 lastObject];

  v17 = [(BKAppDelegate *)self appLaunchCoordinator];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001CB240;
  v20[3] = &unk_100A0B058;
  v18 = v16;
  v21 = v18;
  v24 = &buf;
  v19 = v13;
  v22 = self;
  v23 = v19;
  [v17 appLaunchCoordinatorPerformWhenLaunched:@"tryToShowAudiobook" block:v20];

  _Block_object_dispose(&buf, 8);
}

- (void)performActionForShortcutItem:(id)a3 sceneController:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = BCSceneLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v9 scene];
    v13 = [v12 session];
    v14 = [v13 persistentIdentifier];
    *buf = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Performing shortcut: shortcutItem=%@, withSceneID=%@", buf, 0x16u);
  }

  kdebug_trace();
  v15 = [(BKAppDelegate *)self primaryAnalyticsController];
  [v15 setLaunchedFromShortcutItem];

  v16 = [(BKAppDelegate *)self appLaunchCoordinator];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001CB81C;
  v19[3] = &unk_100A05218;
  v19[4] = self;
  v20 = v8;
  v21 = v10;
  v17 = v10;
  v18 = v8;
  [v16 appLaunchCoordinatorOnConditionMask:6 blockID:@"performActionForShortcutItem" performBlock:v19];
}

- (void)application:(id)a3 didDiscardSceneSessions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKAppDelegate *)self sceneManager];
  [v8 application:v7 didDiscardSceneSessions:v6];
}

- (void)_reloadLibraryForLaunch
{
  v3 = [(BKAppDelegate *)self libraryManager];
  [v3 initializeMostRecentPurchaseDateCacheIfNeeded];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001CC150;
  v5[3] = &unk_100A03440;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [v4 reloadWithCompletion:v5];
}

- (void)_startLibraryReloadForLaunchWhenNeeded
{
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_1001CCEB4;
  v19[4] = sub_1001CCEE0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001CCEE8;
  v18[3] = &unk_100A033C8;
  v18[4] = self;
  v20 = objc_retainBlock(v18);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = [(BKAppDelegate *)self appLaunchCoordinator];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001CCEF0;
  v13[3] = &unk_100A0B118;
  v13[4] = &v14;
  v13[5] = v19;
  [v3 appLaunchCoordinatorOnConditionMask:512 blockID:@"_startLibraryReloadForLaunchWhenNeeded extended reloadLibrary" performBlock:v13];

  v4 = [(BKAppDelegate *)self appLaunchCoordinator];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001CD064;
  v12[3] = &unk_100A0B118;
  v12[4] = &v14;
  v12[5] = v19;
  [v4 appLaunchCoordinatorOnConditionMask:256 blockID:@"_startLibraryReloadForLaunchWhenNeeded carPlay reloadLibrary" performBlock:v12];

  v5 = sub_1000122C0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[UIApplication sharedApplication];
    v7 = [v6 applicationState];
    *buf = 134217984;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Library Reload: Initial applicationState: %ld", buf, 0xCu);
  }

  v8 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CD134;
  block[3] = &unk_100A055C0;
  block[4] = &v14;
  block[5] = v19;
  dispatch_after(v8, &_dispatch_main_q, block);
  if ((v15[3] & 1) == 0)
  {
    v9 = dispatch_time(0, 5000000000);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001CD2AC;
    v10[3] = &unk_100A04BD8;
    v10[4] = self;
    v10[5] = &v14;
    v10[6] = v19;
    dispatch_after(v9, &_dispatch_main_q, v10);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v19, 8);
}

- (void)_didFinishUpgradingWithOptions:(id)a3
{
  v4 = +[BKSeriesCoverManager sharedInstance];
  [v4 addSeriesCoverObserver:self];

  v5 = +[BKSeriesCoverManager sharedInstance];
  [v5 prewarm];

  +[BKPDFModernBookViewController setupModernPDF];
  objc_opt_class();
  v6 = [(BKAppDelegate *)self mainLibrary];
  v7 = BUDynamicCast();

  v8 = [BKLibraryAssetIsNewManager alloc];
  v9 = [(BKAppDelegate *)self sharedAnnotationProvider];
  v10 = [(BKAppDelegate *)self workloopBackgroundQueue];
  v11 = [(BKLibraryAssetIsNewManager *)v8 initWithLibraryManager:v7 annotationProvider:v9 queue:v10];
  [(BKAppDelegate *)self setLibraryAssetIsNewManager:v11];

  v12 = [(BKAppDelegate *)self libraryAssetIsNewManager];
  [v12 setDelegate:self];

  [(BKAppDelegate *)self _startLibraryReloadForLaunchWhenNeeded];
  v13 = +[NSUserDefaults standardUserDefaults];
  LOBYTE(v9) = [v13 BOOLForKey:@"BKTestEPubLayout"];

  v14 = +[NSUserDefaults standardUserDefaults];
  v15 = [v14 BOOLForKey:@"BKTestEPubPowerConsumption"];

  if ((v9 & 1) != 0 || v15)
  {
    dispatch_async(&_dispatch_main_q, &stru_100A0B180);
  }

  v16 = +[BKLastOpenBookManager sharedInstance];
  [v16 prewarmAppState];

  [(BKAppDelegate *)self _showMainViewControllerOrWelcomeScreen];
  v17 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CD704;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_after(v17, &_dispatch_main_q, block);
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(BKAppDelegate *)self appAccountActionHandler];
  v8 = [v7 canPerformAction:a3 withSender:v6];

  if (v8)
  {
    v9 = [(BKAppDelegate *)self appAccountActionHandler];
  }

  else
  {
    v10 = [(BKAppDelegate *)self appGlobalActionHandler];
    v11 = [v10 canPerformAction:a3 withSender:v6];

    if (v11)
    {
      v9 = [(BKAppDelegate *)self appGlobalActionHandler];
    }

    else
    {
      v12 = [(BKAppDelegate *)self appInternalActionHandler];
      v13 = [v12 canPerformAction:a3 withSender:v6];

      if (v13)
      {
        v9 = [(BKAppDelegate *)self appInternalActionHandler];
      }

      else
      {
        v14 = [(BKAppDelegate *)self audiobookController];
        v15 = [v14 canPerformAction:a3 withSender:v6];

        if (v15)
        {
          v9 = [(BKAppDelegate *)self audiobookController];
        }

        else
        {
          v18.receiver = self;
          v18.super_class = BKAppDelegate;
          v9 = [(BKAppDelegate *)&v18 targetForAction:a3 withSender:v6];
        }
      }
    }
  }

  v16 = v9;

  return v16;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v8 = a3;
  v4 = [v8 system];
  v5 = +[UIMenuSystem mainSystem];

  if (v4 == v5)
  {
    v6 = [(BKAppDelegate *)self menuController];
    [v6 buildWithBuilder:v8];

    if (+[JSADevice isInternalBuild])
    {
      v7 = [(BKAppDelegate *)self menuController];
      [v7 buildInternalWithBuilder:v8];
    }
  }
}

- (void)_showMainViewControllerOrWelcomeScreen
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001CDABC;
  v5[3] = &unk_100A035D0;
  objc_copyWeak(&v6, &location);
  v2 = objc_retainBlock(v5);
  if (v2)
  {
    if (+[NSThread isMainThread])
    {
      (v2[2])(v2);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001CDC30;
      block[3] = &unk_100A03920;
      v4 = v2;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_showWelcomeScreenIfNeeded:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001CDDE0;
  v13[3] = &unk_100A074A8;
  objc_copyWeak(&v16, &location);
  v8 = v6;
  v14 = v8;
  v9 = v7;
  v15 = v9;
  v10 = objc_retainBlock(v13);
  if (v10)
  {
    if (+[NSThread isMainThread])
    {
      (v10[2])(v10);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001CDF80;
      block[3] = &unk_100A03920;
      v12 = v10;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_reloadUbiquityDataSources
{
  v3 = +[BKLibraryManager defaultManager];
  v4 = [(BKAppDelegate *)self ubiquityiOSDataSource];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001CE044;
  v5[3] = &unk_100A033C8;
  v5[4] = self;
  [v3 reloadDataSource:v4 completion:v5];
}

- (void)_resumeFromBackground
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001CE0F8;
  v2[3] = &unk_100A033C8;
  v2[4] = self;
  [(BKAppDelegate *)self _dieIfUnacknowledgediCloudLogoutOcccurredWithCompletion:v2];
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v4 = +[BKUserActivityManager sharedInstance];
  [v4 willEnterForeground];

  +[JSAApplication willEnterForeground];
  [(BKAppDelegate *)self _resumeFromBackground];
  v5 = +[BCBookReadingTimeTracker sharedInstance];
  [v5 scrubRecents];
}

- (void)_applicationDidEnterBackground:(id)a3
{
  +[IMSleepManager didEnterBackground];
  v4 = +[BKUserActivityManager sharedInstance];
  [v4 didEnterBackground];

  +[JSAApplication didEnterBackground];
  v5 = +[BKLastOpenBookManager sharedInstance];
  [v5 saveCurrentBookState];

  [(BKAppDelegate *)self setAnalyticsApplicationState:0];
  v6 = [(BKAppDelegate *)self sceneManager];
  [v6 analyticsVisibilityDidDisappear];

  v7 = [(BKAppDelegate *)self finishedAssetManager];
  [(BKAppDelegate *)self finishedAssetRemovalThreshold];
  [v7 removeFinishedDownloadsWithThreshhold:?];

  v8 = +[BCBackgroundTaskAssertion sharedAssertion];
  [v8 claimAssertionForIdentifier:@"kBackgroundAppIdentifier" description:@"Backgrounding in progress"];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001CE494;
  v9[3] = &unk_100A03440;
  v9[4] = self;
  v10 = @"kBackgroundAppIdentifier";
  dispatch_async(&_dispatch_main_q, v9);
  +[BKApplicationShortcutController performUpdate];
}

- (void)_applicationDidBecomeActive:(id)a3
{
  v4 = sub_1000122C0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_applicationDidBecomeActive", v11, 2u);
  }

  v5 = +[BCBackgroundTaskAssertion sharedAssertion];
  [v5 releaseAssertionForIdentifier:@"kApplicationInactiveIdentifier"];

  +[JSAApplication didBecomeActive];
  v6 = [(BKAppDelegate *)self sceneManager];
  v7 = [v6 appStoreReviewManager];
  [v7 applicationDidForeground];

  v8 = +[BCCloudKitController sharedInstance];
  [v8 applicationDidBecomeActive];

  if ([(BKAppDelegate *)self analyticsApplicationState]== 1)
  {
    v9 = [(BKAppDelegate *)self sceneManager];
    [v9 analyticsVisibilityDidDisappear];
  }

  [(BKAppDelegate *)self setAnalyticsApplicationState:2];
  v10 = [(BKAppDelegate *)self sceneManager];
  [v10 analyticsVisibilityUpdate];
}

- (void)_applicationDidBecomeFrontmost:(id)a3
{
  v4 = _os_activity_create(&_mh_execute_header, "BKAppLaunchJaliscoUpdate", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CE700;
  block[3] = &unk_100A033C8;
  block[4] = self;
  os_activity_apply(v4, block);
  v5 = [(BKAppDelegate *)self menuController];
  [v5 updateKeyWindow];
}

- (void)_applicationWillResignActive:(id)a3
{
  v4 = sub_1000122C0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_applicationWillResignActive", v8, 2u);
  }

  v5 = +[BCBackgroundTaskAssertion sharedAssertion];
  [v5 claimAssertionForIdentifier:@"kApplicationInactiveIdentifier" description:@"Application will resign active"];

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 removeObjectForKey:@"BKGenerateOfflineCache"];

  [(BKAppDelegate *)self setAnalyticsApplicationState:1];
  v7 = [(BKAppDelegate *)self sceneManager];
  [v7 analyticsVisibilityWillDisappear];

  +[JSAApplication willResignActive];
  [(BKAppDelegate *)self flushJetMetricsWithCompletionHandler:&stru_100A0B1E0];
}

- (void)applicationWillTerminate:(id)a3
{
  v4 = a3;
  v5 = +[NSDate now];
  [(BKAppDelegate *)self setAnalyticsTimeoutStart:v5];

  v6 = [(BKAppDelegate *)self appLaunchCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001CEA78;
  v8[3] = &unk_100A03E30;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 appLaunchCoordinatorOnConditionMask:1 blockID:@"applicationWillTerminate" performBlock:v8];
}

- (void)_applicationWillTerminate:(id)a3
{
  [(BKAppDelegate *)self _analyticsForceEndSessionOnViewControllers];
  +[JSAApplication willTerminate];
  [(BKAppDelegate *)self flushJetMetricsWithCompletionHandler:&stru_100A0B200];
  [(BKAppDelegate *)self saveStateClosing:1];
  [(BKAppDelegate *)self _cleanup];
  v4 = +[NSDate now];
  v5 = [(BKAppDelegate *)self analyticsTimeoutStart];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  if (2.0 - v7 >= 0.0)
  {
    v8 = 2.0 - v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [(BKAppDelegate *)self sceneManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001CECA8;
  v11[3] = &unk_100A0B220;
  *&v11[4] = v8;
  [v9 enumerateSceneController:v11 includeHidden:1];

  v10 = +[BAAppManager sharedManager];
  [v10 appSessionDidTerminate];
}

- (void)_extendedLaunchComplete:(id)a3
{
  v4 = a3;
  v5 = sub_1000122C0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received %@. Marking extended launch as complete.", buf, 0xCu);
  }

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = BSUIFeedInitialContentReadyNotification;
  [v7 removeObserver:self name:BSUIFeedInitialContentReadyNotification object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self name:BSUIFeedViewControllerDidDisappearNotification object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  v11 = +[BKRootBarCoordinator didSwitchRootBarItemNotification];
  [v10 removeObserver:self name:v11 object:0];

  v12 = +[NSNotificationCenter defaultCenter];
  v13 = +[BKRootBarCoordinator rootViewControllerDidDisappearNotification];
  [v12 removeObserver:self name:v13 object:0];

  v14 = [v4 name];
  LODWORD(v8) = [v14 isEqualToString:v8];

  if (v8)
  {
    [(BKAppDelegate *)self _signalExtendedLaunchComplete];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001CEFA4;
    block[3] = &unk_100A033C8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_signalExtendedLaunchComplete
{
  if (![(BKAppLaunchCoordinator *)self->_appLaunchCoordinator appLaunchCoordinatorIsConditionSatisfied:9])
  {
    appLaunchCoordinator = self->_appLaunchCoordinator;

    [(BKAppLaunchCoordinator *)appLaunchCoordinator signalConditionSatisfied:9];
  }
}

- (void)clearReadingGoals:(id)a3
{
  v4 = [(BKAppDelegate *)self serviceCenter];
  v3 = [v4 readingActivityService];
  [v3 clearData];
}

- (void)resetOnlineContentAccess:(id)a3
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:1 forKey:BEDocumentExternalLoadApprovalCacheDefaultsClearKey];
}

- (void)resetAnalyticsIdentifier:(id)a3
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:1 forKey:kBAResetAnalyticsUserID];
}

- (void)willMarkAsset:(id)a3 finished:(BOOL)a4 finishedDate:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v11 = [(BKAppDelegate *)self serviceCenter];
  v10 = [v11 readingActivityService];
  [v10 willMarkAsset:v9 finished:v5 finishedDate:v8];
}

- (BOOL)isStoreAllowed
{
  v2 = +[BURestrictionsProvider sharedInstance];
  v3 = [v2 isBookStoreAllowed];

  return v3;
}

- (void)initialDataSourceFetchInitiated
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CF318;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didMigrateBooksCollection:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001CF3C8;
  v4[3] = &unk_100A03440;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)libraryDidReload:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CF5DC;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_iCloudStatusChanged
{
  state64 = 0;
  notify_get_state(self->_iCloudRestoreToken, &state64);
  v3 = state64 - 1 < 2;
  if (self->_restoringFromICloud != v3)
  {
    self->_restoringFromICloud = v3;
  }
}

- (void)_beginObservingICloudRestoreStatus
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001CF74C;
  handler[3] = &unk_100A0B248;
  handler[4] = self;
  notify_register_dispatch([kMBManagerRestoreStateChangedNotification UTF8String], &self->_iCloudRestoreToken, &_dispatch_main_q, handler);
  [(BKAppDelegate *)self _iCloudStatusChanged];
}

- (BKReachability)networkReachability
{
  networkReachability = self->_networkReachability;
  if (!networkReachability)
  {
    v4 = +[BKReachability reachabilityForInternetConnection];
    v5 = self->_networkReachability;
    self->_networkReachability = v4;

    networkReachability = self->_networkReachability;
  }

  return networkReachability;
}

- (BOOL)isConnectedToInternet
{
  v2 = [(BKAppDelegate *)self networkReachability];
  if ([v2 currentReachabilityStatus])
  {
    v3 = [v2 connectionRequired] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_startObservingNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (DarwinNotifyCenter)
  {
    v4 = DarwinNotifyCenter;
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1001CFAF0, @"com.apple.sync.books.began", 0, CFNotificationSuspensionBehaviorDrop);
    CFNotificationCenterAddObserver(v4, 0, sub_1001CFB64, @"com.apple.sync.books.finished", 0, CFNotificationSuspensionBehaviorDrop);
    CFNotificationCenterAddObserver(v4, 0, sub_1001CFBD8, @"MCManagedBooksChanged", 0, CFNotificationSuspensionBehaviorDrop);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"storeChangedNotification:" name:kAEStoreEnabledChangedNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"userDefaultsChanged:" name:NSUserDefaultsDidChangeNotification object:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CFC4C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  [(BKAppDelegate *)self _beginObservingICloudRestoreStatus];
  out_token = -1;
  v7 = [@"com.apple.tcc.access.changed" UTF8String];
  workloopUserInitiatedQueue = self->_workloopUserInitiatedQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001CFCD0;
  handler[3] = &unk_100A0B248;
  handler[4] = self;
  if (notify_register_dispatch(v7, &out_token, workloopUserInitiatedQueue, handler))
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = out_token;
  }

  [(BKAppDelegate *)self setTccNotifyToken:v9];
  if (+[NSThread isMainThread])
  {
    v10 = +[BKAudiobookPlayerMuxingObserver sharedInstance];
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001CFD6C;
    v12[3] = &unk_100A03920;
    v13 = &stru_100A0B268;
    dispatch_async(&_dispatch_main_q, v12);
  }

  v11 = [(BKAppDelegate *)self networkMonitor];
  [v11 start];
}

- (void)_endObservingNotifications
{
  if ([(BKAppDelegate *)self tccNotifyToken]!= -1)
  {
    notify_cancel([(BKAppDelegate *)self tccNotifyToken]);
  }

  [(BKAppDelegate *)self _endObservingICloudRestoreStatus];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [(BKAppDelegate *)self networkReachability];
  [v4 stopNotifier];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (DarwinNotifyCenter)
  {
    v6 = DarwinNotifyCenter;
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.sync.books.began", 0);
    CFNotificationCenterRemoveObserver(v6, self, @"com.apple.sync.books.finished", 0);
    CFNotificationCenterRemoveObserver(v6, self, @"MCManagedBooksChanged", 0);
  }

  v7 = +[BUAccountsProvider sharedProvider];
  [v7 removeObserver:self accountTypes:1];

  v8 = [(BKAppDelegate *)self networkMonitor];
  [v8 stop];
}

- (void)storeChangedNotification:(id)a3
{
  v3 = [(BKAppDelegate *)self storeController];
  [v3 refreshUpdateCountAsync];
}

- (void)setupAEAssetFactory
{
  v3 = +[AEBookProtocolCacheItemProvider sharedInstance];
  v4 = +[BEProtocolCache sharedInstance];
  [v4 setItemProvider:v3];

  v5 = +[BKLibraryManager defaultManager];
  [AEAssetEngine setLibraryMgr:v5];

  v23 = objc_opt_new();
  if (objc_opt_respondsToSelector())
  {
    v6 = [(BKAppDelegate *)self sharedAnnotationProvider];
    [v23 setSharedAnnotationProvider:v6];
  }

  v7 = +[BKLibraryManager defaultManager];
  v8 = BUProtocolCast();
  [v23 setSharedBookCoverResetter:v8];

  v9 = [REEpubPlugin alloc];
  v10 = [(BKAppDelegate *)self storeController];
  v11 = [(BKAppDelegate *)self engagementManager];
  v12 = [(REEpubPlugin *)v9 initWithStoreController:v10 engagementManager:v11];

  if (objc_opt_respondsToSelector())
  {
    v13 = [(BKAppDelegate *)self sharedAnnotationProvider];
    [(REEpubPlugin *)v12 setSharedAnnotationProvider:v13];
  }

  v14 = objc_opt_new();
  if (objc_opt_respondsToSelector())
  {
    v15 = [(BKAppDelegate *)self sharedAnnotationProvider];
    [v14 setSharedAnnotationProvider:v15];
  }

  v16 = objc_opt_new();
  if (objc_opt_respondsToSelector())
  {
    v17 = [(BKAppDelegate *)self sharedAnnotationProvider];
    [v16 setSharedAnnotationProvider:v17];
  }

  if (qword_100AF7858 != -1)
  {
    sub_100794004();
  }

  v18 = +[AEPluginRegistry sharedInstance];
  [v18 registerAssetEnginePlugin:v23];
  [v18 registerAssetEnginePlugin:v12];
  [v18 registerAssetEnginePlugin:v14];
  [v18 registerAssetEnginePlugin:v16];
  if ((isARMv6() & 1) == 0)
  {
    v19 = NSClassFromString(@"THApplePubAssetPluginProvider");
    if (v19)
    {
      v20 = [(objc_class *)v19 sharedPlugin];
      v21 = v20;
      if (v20 && [v20 conformsToProtocol:&OBJC_PROTOCOL___AEPlugin])
      {
        if (objc_opt_respondsToSelector())
        {
          v22 = [(BKAppDelegate *)self sharedAnnotationProvider];
          [v21 setSharedAnnotationProvider:v22];
        }

        [v18 registerAssetEnginePlugin:v21];
      }
    }
  }

  SetBookFormatByExtensionCB();
}

- (BKStoreController)storeController
{
  storeController = self->_storeController;
  if (!storeController)
  {
    BCReportAssertionFailureWithMessage();
    storeController = self->_storeController;
  }

  return storeController;
}

- (void)showConfigurationErrorAndQuit
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Configuration Error" value:&stru_100A30A68 table:0];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"There is a problem with the configuration of your %@.\nPlease restore with iTunes or redownload Apple Books." value:&stru_100A30A68 table:0];
  v6 = +[UIDevice currentDevice];
  v7 = [v6 localizedModel];
  v8 = [NSString stringWithFormat:v5, v7];
  v15 = [UIAlertController alertControllerWithTitle:v3 message:v8 preferredStyle:1];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Quit" value:&stru_100A30A68 table:0];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:&stru_100A0B2A8];
  [v15 addAction:v11];

  v12 = [(BKAppDelegate *)self sceneManager];
  v13 = [v12 currentSceneController];
  [v13 presentViewController:v15 animated:1 completion:0];
}

- (void)application:(id)a3 didReceiveRemoteNotification:(id)a4
{
  v5 = a4;
  v6 = [(BKAppDelegate *)self appLaunchCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D052C;
  v8[3] = &unk_100A038D0;
  v9 = v5;
  v7 = v5;
  [v6 appLaunchCoordinatorOnConditionMask:1 blockID:@"handleRemoteNotification" performBlock:v8];
}

- (void)userDefaultsChanged:(id)a3
{
  workloopUserInitiatedQueue = self->_workloopUserInitiatedQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D06B4;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(workloopUserInitiatedQueue, block);
}

- (void)networkReachabilityChanged:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 currentReachabilityStatus] && (objc_msgSend(v4, "connectionRequired") & 1) == 0)
  {
    v5 = sub_1000122C0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(BKAppDelegate *)self liverpoolStatusMonitor];
      v7 = [v6 isCloudKitEnabled];
      v8 = "NO";
      if (v7)
      {
        v8 = "YES";
      }

      v11 = 136315138;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Network now reachable.  Is user opted in: %s", &v11, 0xCu);
    }

    v9 = [(BKAppDelegate *)self ubiquityStatusMonitor];
    v10 = [v9 isICloudDriveEnabled];

    if (v10)
    {
      [(BKAppDelegate *)self _reloadUbiquityDataSources];
    }
  }
}

- (void)mergeSyncSidecar
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D0A14;
  block[3] = &unk_100A033C8;
  block[4] = self;
  if (qword_100AF7860 != -1)
  {
    dispatch_once(&qword_100AF7860, block);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = UIBackgroundTaskInvalid;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D0B0C;
  v12[3] = &unk_100A03CF0;
  v12[4] = &v13;
  v3 = objc_retainBlock(v12);
  v4 = +[UIApplication sharedApplication];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001D0B88;
  v10[3] = &unk_100A03920;
  v5 = v3;
  v11 = v5;
  v6 = [v4 beginBackgroundTaskWithName:@"BKAppDelegate merge" expirationHandler:v10];
  v14[3] = v6;

  v7 = [BKDatabaseBackupFileManager alloc];
  v8 = [(BKAppDelegate *)self sharedAnnotationProvider];
  v9 = [(BKDatabaseBackupFileManager *)v7 initWithLibraryManager:0 annotationProvider:v8];

  [(BKDatabaseBackupFileManager *)v9 mergeSyncSidecarWithCompletionBlock:v5];
  _Block_object_dispose(&v13, 8);
}

- (void)importMigratedBooks
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D0C20;
  block[3] = &unk_100A033C8;
  block[4] = self;
  if (qword_100AF7868 != -1)
  {
    dispatch_once(&qword_100AF7868, block);
  }
}

- (BOOL)annotationProvider:(id)a3 acknowledgeMergingAnnotationsWithAssetVersionMismatch:(id)a4 assetID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v11 = +[BKLibraryManager defaultManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D0E20;
  v16[3] = &unk_100A0B2F8;
  v16[4] = self;
  v12 = v10;
  v17 = v12;
  v20 = &v21;
  v13 = v8;
  v18 = v13;
  v14 = v9;
  v19 = v14;
  [v11 performBackgroundReadOnlyBlockAndWait:v16];

  LOBYTE(v11) = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return v11;
}

- (void)libraryAssetStatusController:(id)a3 makeAccountPrimaryAndSignedIn:(id)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 1, 0);
    v5 = v6;
  }
}

- (void)cloudStorageUpgradeSheetWasDismissed
{
  v3 = [(BKAppDelegate *)self ubiquityStatusMonitor];
  v4 = [v3 isICloudDriveEnabled];

  if (v4)
  {

    [(BKAppDelegate *)self _reloadUbiquityDataSources];
  }
}

- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)a3 oldIdentity:(id)a4
{
  v5 = BDSCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BKAppDelegate: ubiquityStatusChangedToAvailableWithNewIdentity:", buf, 2u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001D11B0;
  v6[3] = &unk_100A033C8;
  v6[4] = self;
  [(BKAppDelegate *)self _dieIfUnacknowledgediCloudLogoutOcccurredWithCompletion:v6];
}

- (void)_dieIfUnacknowledgediCloudLogoutOcccurredWithCompletion:(id)a3
{
  v4 = a3;
  v5 = BDSCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_dieIfUnacknowledgediCloudLogoutOcccurredWithCompletion:", buf, 2u);
  }

  v6 = [(BKAppDelegate *)self iCloudIdentityTokenTracker];
  [v6 fetchCurrentToken];
  if ([v6 didUnacknowledgediCloudLogoutOccur])
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User logged out of iCloud.  Signalling to prevent a crash", v10, 2u);
    }

    raise(9);
  }

  else
  {
    v8 = [(BKAppDelegate *)self iCloudIdentityTokenTracker];
    [v8 acknowledgeiCloudIdentity];
  }

  v9 = objc_retainBlock(v4);

  if (v9)
  {
    v9[2](v9);
  }
}

- (void)saveStateClosing:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKAppDelegate *)self sceneManager];
  [v5 saveStateClosing:v3];

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 synchronize];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = UIBackgroundTaskInvalid;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001D17E4;
  v21[3] = &unk_100A03CF0;
  v21[4] = &v22;
  v7 = objc_retainBlock(v21);
  v8 = +[UIApplication sharedApplication];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001D1860;
  v19[3] = &unk_100A03920;
  v9 = v7;
  v20 = v9;
  v10 = [v8 beginBackgroundTaskWithName:@"BKAppDelegate SaveState" expirationHandler:v19];
  v23[3] = v10;

  v11 = [(BKAppDelegate *)self libraryManager];
  if (v11)
  {
    v12 = [(BKAppDelegate *)self sharedAnnotationProvider];
    v13 = [(BKAppDelegate *)self workloopUtilityQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D1870;
    block[3] = &unk_100A049A0;
    v16 = v11;
    v17 = v12;
    v18 = v9;
    v14 = v12;
    dispatch_async(v13, block);
  }

  else
  {
    v14 = sub_1000122C0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100794018();
    }
  }

  _Block_object_dispose(&v22, 8);
}

- (void)seriesCoversForSeriesIdsChanged:(id)a3
{
  v3 = a3;
  v4 = +[BCCacheManager defaultCacheManager];
  [v4 incrementVersionForIdentifiers:v3];
}

+ (id)currentSceneController
{
  v2 = +[BKAppDelegate sceneManager];
  v3 = [v2 currentSceneController];

  return v3;
}

+ (id)anySceneController
{
  v2 = +[BKAppDelegate sceneManager];
  v3 = [v2 anySceneController];

  return v3;
}

+ (id)sceneControllerForViewController:(id)a3
{
  v3 = a3;
  v4 = +[BKAppDelegate sceneManager];
  v5 = [v4 sceneControllerForViewController:v3];

  return v5;
}

- (void)clientDetectedStoreChangeAndAccountChange:(id)a3
{
  v4 = a3;
  v5 = sub_1000122C0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BKAppDelegate clientDetectedStoreChangeAndAccountChange:%@", buf, 0xCu);
  }

  v6 = +[BKLibraryManager defaultManager];
  [v6 performNamed:@"resetJaliscoStatus" workerQueueBlock:&stru_100A0B338];

  v7 = _os_activity_create(&_mh_execute_header, "BKAppAccountSignOut", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D1BC8;
  v9[3] = &unk_100A03440;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  os_activity_apply(v7, v9);
}

- (void)clientDetectedStoreChange:(id)a3
{
  v3 = a3;
  v4 = sub_1000122C0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BKAppDelegate clientDetectedStoreChange:%@", buf, 0xCu);
  }

  v5 = +[BKLibraryManager defaultManager];
  [v5 performNamed:@"resetJaliscoStatus" workerQueueBlock:&stru_100A0B378];

  v6 = _os_activity_create(&_mh_execute_header, "BKAppAccountSignIn", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D20CC;
  block[3] = &unk_100A033C8;
  v9 = v3;
  v7 = v3;
  os_activity_apply(v6, block);
}

- (void)clientDetectedPredicateChange:(id)a3
{
  v3 = a3;
  v4 = +[BKLibraryDataSourceJaliscoDAAPClientProxy sharedproxy];
  [v4 clientDetectedPredicateChange:v3];
}

- (void)clientDetectedPurchaseServerClientExpired:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D22CC;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)clientRequestITunesAuthentication:(id)a3 withCompletion:(id)a4
{
  v4 = a4;
  v5 = +[BKAuthenticationAlertRequest sharedRequester];
  [v5 requestAuthenticationPolitely:1 completion:v4];
}

- (void)_logIfError:(id)a3 operation:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = sub_1000122C0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100794080(v6, v5, v7);
    }
  }
}

- (void)deleteCloudDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.iBooks.BKAppDelegate.CloudDataDeletion", v5);

  v7 = dispatch_group_create();
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_1000274EC;
  v32[4] = sub_1000276A0;
  v33 = 0;
  v8 = [(BKAppDelegate *)self _engagementManagerDirectory];
  [BKEngagementManager destroyPersistentStorageInDirectory:v8];

  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v34[2] = objc_opt_class();
  v34[3] = objc_opt_class();
  v34[4] = objc_opt_class();
  v34[5] = objc_opt_class();
  v9 = [NSArray arrayWithObjects:v34 count:6];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001D28B8;
  v27[3] = &unk_100A0B410;
  v10 = v7;
  v28 = v10;
  v11 = v6;
  v29 = v11;
  v30 = self;
  v31 = v32;
  [v9 enumerateObjectsUsingBlock:v27];

  v12 = +[NSMutableArray array];
  v13 = [(BKAppDelegate *)self serviceCenter];
  v14 = [(BKAppDelegate *)self serviceCenter];
  v15 = v14 == 0;

  if (!v15)
  {
    [v12 addObject:v13];
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001D2B20;
  v22[3] = &unk_100A0B488;
  v16 = v10;
  v23 = v16;
  v17 = v11;
  v24 = v17;
  v25 = self;
  v26 = v32;
  [v12 enumerateObjectsUsingBlock:v22];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D2D80;
  block[3] = &unk_100A0B4B0;
  v20 = v4;
  v21 = v32;
  v18 = v4;
  dispatch_group_notify(v16, v17, block);

  _Block_object_dispose(v32, 8);
}

- (void)account:(unint64_t)a3 didChangeWithReason:(unint64_t)a4
{
  v19 = [(BKAppDelegate *)self currentLocalAccountIdentifier];
  v7 = +[BUAccountsProvider sharedProvider];
  v8 = [v7 localStoreAccount];
  v9 = [v8 identifier];

  LOBYTE(v10) = v19 | v9;
  if (v19 | v9)
  {
    v10 = [v19 isEqual:v9] ^ 1;
  }

  v11 = ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 100) | v10;
  if (a4 == 100 || a4 == 102)
  {
    v12 = [(BKAppDelegate *)self libraryManager];
    [v12 updateMostRecentPurchaseDateCacheFromLibrary];
    goto LABEL_8;
  }

  if (a4 == 101)
  {
    v12 = [(BKAppDelegate *)self libraryManager];
    [v12 clearMostRecentPurchaseDateCache];
LABEL_8:
  }

  if (v11)
  {
    v13 = [(BKAppDelegate *)self sceneManager];
    v14 = [v13 welcomeScreenManager];

    if (!v14)
    {
      if (a4)
      {
        v15 = objc_alloc_init(BKWelcomeGDPRItem);
        [(BKAppDelegate *)self _showWelcomeScreenIfNeeded:v15 completion:&stru_100A0B4D0];
      }

      [(BKAppDelegate *)self setCurrentLocalAccountIdentifier:v9];
    }
  }

  v16 = +[BAEventReporter sharedReporter];
  v17 = [(BKAppDelegate *)self primaryAnalyticsController];
  v18 = [v17 applicationTracker];
  [v16 emitAccountDidChangeEventWithTracker:v18 type:a3 reason:a4];
}

- (id)analyticsTrackerForStoreServices:(id)a3
{
  v3 = [(BKAppDelegate *)self primaryAnalyticsController];
  v4 = [v3 applicationTracker];

  return v4;
}

- (id)_analyticsSessionHost
{
  objc_opt_class();
  v3 = [(BKAppDelegate *)self sceneManager];
  v4 = [v3 primarySceneController];
  v5 = BUDynamicCast();
  v6 = [v5 analyticsSessionHost];

  return v6;
}

- (id)keyWindowAnalyticsTracker
{
  objc_opt_class();
  v3 = [(BKAppDelegate *)self sceneManager];
  v4 = [v3 currentSceneController];
  v5 = BUDynamicCast();

  v6 = [(BKAppDelegate *)self sceneManager];
  v7 = [v6 primarySceneController];

  if (v5 == v7)
  {
    v8 = [v5 rootBarCoordinator];
    [v8 hostingViewController];
  }

  else
  {
    v8 = [v5 bk_window];
    [v8 rootViewController];
  }
  v9 = ;

  v10 = [v9 ba_deepestVisibleChildViewControllerIncludePresented:1];
  v11 = [v10 ba_effectiveAnalyticsTracker];

  return v11;
}

- (void)listeningSessionWillEnd
{
  v2 = [(BKAppDelegate *)self _analyticsSessionHost];
  [v2 listeningSessionWillEnd];
}

- (void)readSessionDidEnd:(id)a3 readTime:(double)a4
{
  v6 = a3;
  v7 = [(BKAppDelegate *)self _analyticsSessionHost];
  [v7 readSessionDidEnd:v6 readTime:a4];
}

- (void)playSessionDidEnd:(id)a3 playTime:(double)a4
{
  v6 = a3;
  v7 = [(BKAppDelegate *)self _analyticsSessionHost];
  [v7 playSessionDidEnd:v6 playTime:a4];
}

- (id)contentPrivateIDForContentID:(id)a3
{
  v4 = a3;
  v5 = [(BKAppDelegate *)self _analyticsSessionHost];
  v6 = [v5 contentPrivateIDForContentID:v4];

  return v6;
}

- (id)contentUserIDForContentID:(id)a3
{
  v4 = a3;
  v5 = [(BKAppDelegate *)self _analyticsSessionHost];
  v6 = [v5 contentUserIDForContentID:v4];

  return v6;
}

- (void)_analyticsForceEndSessionOnViewControllers
{
  v2 = [(BKAppDelegate *)self sceneManager];
  [v2 analyticsForceEndSession];
}

- (unint64_t)bl_beginBackgroundTaskWithName:(id)a3 expirationHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[UIApplication sharedApplication];
  v8 = [v7 beginBackgroundTaskWithName:v6 expirationHandler:v5];

  return v8;
}

- (void)bl_endBackgroundTask:(unint64_t)a3
{
  v4 = +[UIApplication sharedApplication];
  [v4 endBackgroundTask:a3];
}

- (unint64_t)ec_beginBackgroundTaskWithName:(id)a3 expirationHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[UIApplication sharedApplication];
  v8 = [v7 beginBackgroundTaskWithName:v6 expirationHandler:v5];

  return v8;
}

- (void)ec_endBackgroundTask:(unint64_t)a3
{
  v4 = +[UIApplication sharedApplication];
  [v4 endBackgroundTask:a3];
}

- (void)appGlobalActionHandler:(id)a3 open:(id)a4
{
  v4 = sub_1007969B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796974();
  v8 = [objc_opt_self() sharedApplication];
  sub_100796944(v9);
  v11 = v10;
  sub_1001ED2F8(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10023D404(&qword_100AE01C0, type metadata accessor for OpenExternalURLOptionsKey);
  isa = sub_1007A2024().super.isa;

  [v8 openURL:v11 options:isa completionHandler:0];

  (*(v5 + 8))(v7, v4);
}

- (BKEngagementManager)engagementManager
{
  v2 = self;
  v3 = BKAppDelegate.engagementManager.getter();

  return v3;
}

- (BKObjectGraphHost)objectGraphHost
{
  v2 = self;
  v3 = BKAppDelegate.objectGraphHost.getter();

  return v3;
}

- (BKServiceCenter)serviceCenter
{
  v2 = self;
  v3 = BKAppDelegate.serviceCenter.getter();

  return v3;
}

- (void)flushJetMetricsWithCompletionHandler:(id)a3
{
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1007A2744();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10081C0E8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10081C0F0;
  v12[5] = v11;
  v13 = self;
  sub_10069E794(0, 0, v7, &unk_1008344D0, v12);
}

- (void)startDownloadPurchaseMonitor
{
  v2 = self;
  BKAppDelegate.startDownloadPurchaseMonitor()();
}

@end