@interface SafariSyncController
+ (void)initialize;
- (BOOL)_hasEntitlementForSensitiveOperation;
- (BOOL)_needsDatabaseFetchOperationForContainer:(id)a3;
- (BOOL)_shouldPerformMigrationAfterUpgradingBookmarksDatabaseFromSafariVersion:(id)a3;
- (BOOL)_topic:(id)a3 matchesPushTopicForContainer:(id)a4;
- (BOOL)isSyncEnabled;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SafariSyncController)init;
- (double)_retryIntervalToRegisterCloudKitSubscriptionsWithNumberOfFailedAttempts:(int64_t)a3 lastCKError:(id)a4;
- (id)_archivedDataForPerSiteSettingDictionaryInDictionary:(id)a3 inOperationGroup:(id)a4;
- (id)_createNewPerSiteCloudKitRecordWithDictionaryRepresentation:(id)a3 precomputedRecordName:(id)a4 inOperationGroup:(id)a5;
- (id)_cyclerAssistant;
- (id)_deviceClass;
- (id)_modifyExistingPerSiteCloudKitRecordWithData:(id)a3 dictionaryRepresentation:(id)a4 inOperationGroup:(id)a5;
- (id)_perSitePreferencesStore;
- (id)_pushTopicForContainer:(id)a3;
- (id)_syncManagerWithStoreOwner:(int64_t)a3;
- (id)_updatedContainerForPushTopic:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)tabSyncArbiter:(id)a3 containerUsingManatee:(BOOL)a4;
- (void)_attemptCloudExtensionsSyncForPushNotification;
- (void)_attemptCloudSettingsSyncForTrigger:(int64_t)a3 inOperationGroup:(id)a4;
- (void)_attemptCloudTabsSyncForPushNotification;
- (void)_attemptSyncAndFallBackToMigrationIfPossibleForTrigger:(int64_t)a3;
- (void)_attemptSyncForChangedZonesSharingContainer:(id)a3 trigger:(int64_t)a4;
- (void)_attemptTabGroupsSyncForManager:(id)a3 withTrigger:(int64_t)a4;
- (void)_beginFetchingUpdatedZonesInContainer:(id)a3 isRetry:(BOOL)a4 trigger:(int64_t)a5 operationGroup:(id)a6;
- (void)_beginMigrationFromDAVInOperationGroup:(id)a3;
- (void)_beginMigrationFromDAVInOperationGroupInternal:(id)a3;
- (void)_cancelBackgroundImageSaveDelayTimer;
- (void)_cancelPushNotificationSyncDelayTimer;
- (void)_checkInXPCActivityWithIdentifier:(const char *)a3 criteria:(id)a4 registerIfNeeded:(BOOL)a5 performBlock:(id)a6;
- (void)_deleteLegacySectionIdentifiersInOperationGroup:(id)a3;
- (void)_didDetectPossibleBug:(id)a3;
- (void)_didReceiveIncomingMessageWithNotification:(id)a3 pushTopic:(id)a4 subscriptionID:(id)a5;
- (void)_didRegisterCloudKitSubscriptions:(unint64_t)a3 timer:(id)a4 lastError:(id)a5 completionHandler:(id)a6;
- (void)_fetchRemoteMigrationStateWithXPCActivity:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5;
- (void)_fetchSyncedCloudTabDevicesAndCloseRequestsWithCompletionHandler:(id)a3;
- (void)_fetchUpdatedZonesInPushNotificationForContainer:(id)a3 trigger:(int64_t)a4;
- (void)_getPerSiteSettingRecordNameWithDictionaryRepresentation:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)_hierarchyCheckTimer:(id)a3;
- (void)_hierarchyCheckerDidFail;
- (void)_invalidateHierarchyCheckTimer;
- (void)_migrateFromDAVInOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)_performBookmarkSyncForTrigger:(int64_t)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)_performHiearchyCheck;
- (void)_performSettingsSyncForTrigger:(int64_t)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)_performTabGroupSyncForManager:(id)a3 withTrigger:(int64_t)a4 completionHandler:(id)a5;
- (void)_registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:(BOOL)a3 ignoreOnGoingRegistration:(BOOL)a4 resetSubscriptions:(unint64_t)a5 qualityOfService:(int64_t)a6 delay:(int64_t)a7;
- (void)_registerPeriodicRemoteMigrationStateObserverXPCActivityRegisteringIfNeeded:(BOOL)a3;
- (void)_registerRemainingCloudKitSubscriptions:(unint64_t)a3 withLastSuccessfulSubscriptions:(unint64_t)a4 inOperationGroup:(id)a5 withCompletionHandler:(id)a6;
- (void)_runTabGroupSyncUsingXPCActivityForManager:(id)a3 tigger:(int64_t)a4;
- (void)_runTabGroupsSyncForManager:(id)a3 withTrigger:(int64_t)a4 completionHandler:(id)a5;
- (void)_saveBookmarksZoneSubscriptionIfNeededInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)_saveCloudExtensionsZoneSubscriptionIfNeededInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)_saveCloudPerSiteSettingWithDictionaryRepresentation:(id)a3 inOperationGroup:(id)a4 successCompletionHandler:(id)a5;
- (void)_saveCloudPerSiteSettingsWithMacZoomPreferences:(id)a3 inOperationGroup:(id)a4 successCompletionHandler:(id)a5;
- (void)_saveCloudSettingsBatchWithDictionaryRepresentation:(id)a3 inOperationGroup:(id)a4 successCompletionHandler:(id)a5;
- (void)_saveCloudSettingsZoneSubscriptionIfNeededInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)_saveCloudTabsZoneSubscriptionIfNeededInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)_saveTabGroupsPrivateDatabaseSubscriptionIfNeededInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)_saveTabGroupsSharedDatabaseSubscriptionIfNeededInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)_scheduleHierarchyCheckTimer;
- (void)_scheduleInitialManateeCloudTabFetchRetryXPCActivityRegisteringIfNeeded:(BOOL)a3;
- (void)_sendDetectedBugNotificationIfNeeded;
- (void)_sendNotificationForSyncResult:(int64_t)a3;
- (void)_setUpSyncAgentInterfaceOnConnection:(id)a3;
- (void)_updateCloudBookmarksSyncCoordinatorAfterUserAccountChange:(int64_t)a3;
- (void)_updateCloudExtensionsSyncCoordinatorAfterUserAccountChange:(int64_t)a3;
- (void)_updateCloudSettingsSyncCoordinatorAfterUserAccountChange:(int64_t)a3;
- (void)_updateCloudTabsSyncCoordinatorAfterUserAccountChange:(int64_t)a3;
- (void)_updateTabGroupsSyncCoordinatorAfterUserAccountChange:(int64_t)a3;
- (void)_userAccountDidChange:(int64_t)a3;
- (void)_userDidUpdateBookmarkDatabase;
- (void)clearLocalDataIncludingMigrationState:(BOOL)a3 completionHandler:(id)a4;
- (void)cloudSettingSyncCoordinator:(id)a3 didDeleteRemoteRecordWithID:(id)a4;
- (void)cloudSettingSyncCoordinator:(id)a3 didReceiveRemoteCloudSettingsUpdateWithRecord:(id)a4;
- (void)cloudSettingSyncCoordinator:(id)a3 performInitialSyncDownInOperationGroup:(id)a4;
- (void)cloudSettingSyncCoordinator:(id)a3 setPageZoomSyncData:(id)a4 forRecordName:(id)a5 completionHandler:(id)a6;
- (void)cloudSettingSyncCoordinator:(id)a3 storeRemoteCloudSettingsUpdateWithRecord:(id)a4;
- (void)cloudTabGroupSyncManager:(id)a3 didFindChangesToRecordZonesWithIDs:(id)a4;
- (void)cloudTabGroupSyncManagerPCSIdentitiesDidChange:(id)a3;
- (void)cloudTabSyncArbiterDidChangeCloudKitContainer:(id)a3;
- (void)collectDiagnosticsDataWithCompletionHandler:(id)a3;
- (void)databaseLockArbiterDidAcquireDatabaseLock:(id)a3;
- (void)deleteBackgroundImageDirectory;
- (void)deleteBackgroundImageFromCloudKitWithCompletionHandler:(id)a3;
- (void)deleteCloudExtensionDevicesWithUUIDStrings:(id)a3 completionHandler:(id)a4;
- (void)deleteCloudExtensionStatesDatabaseWithCompletionHandler:(id)a3;
- (void)deleteCloudTabCloseRequestsWithUUIDStrings:(id)a3 completionHandler:(id)a4;
- (void)deleteDevicesWithUUIDStrings:(id)a3 completionHandler:(id)a4;
- (void)deletePerSiteSettingsSyncData;
- (void)deleteTabGroupEntitiesWithUUIDStrings:(id)a3 completionHandler:(id)a4;
- (void)didReceivePushNotificationWithTopic:(id)a3 userInfo:(id)a4;
- (void)fetchCloudSettingsChangesImmediately;
- (void)fetchProfileEntitiesWithCompletion:(id)a3;
- (void)fetchRemoteMigrationStateWithCompletionHandler:(id)a3;
- (void)fetchSyncedCloudTabDevicesAndCloseRequestsWithCompletionHandler:(id)a3;
- (void)fetchTabGroupEntitiesWithCompletion:(id)a3;
- (void)generateDAVServerIDsForExistingBookmarksWithCompletionHandler:(id)a3;
- (void)getCloudExtensionStatesWithCompletionHandler:(id)a3;
- (void)getCloudSettingsContainerManateeStateWithCompletionHandler:(id)a3;
- (void)getCloudTabContainerManateeStateWithCompletionHandler:(id)a3;
- (void)getCloudTabDevicesWithCompletionHandler:(id)a3;
- (void)migrateToCloudKitWithCompletionHandler:(id)a3;
- (void)observeRemoteMigrationStateForSecondaryMigration;
- (void)pcsIdentitiesDidChangeForCloudSettingSyncCoordinator:(id)a3;
- (void)registerForPushNotificationsIfNeeded;
- (void)registerMigrationXPCActivity:(BOOL)a3;
- (void)resetToDAVDatabaseWithCompletionHandler:(id)a3;
- (void)saveCloudPerSiteSettingWithDictionaryRepresentation:(id)a3 successCompletionHandler:(id)a4;
- (void)saveCloudSettingWithDictionaryRepresentation:(id)a3 successCompletionHandler:(id)a4;
- (void)saveCloudTabCloseRequestWithDictionaryRepresentation:(id)a3 closeRequestUUIDString:(id)a4 completionHandler:(id)a5;
- (void)saveExtensionDeviceWithDictionaryRepresentation:(id)a3 completionHandler:(id)a4;
- (void)saveExtensionStatesWithDictionaryRepresentation:(id)a3 forDevice:(id)a4 completionHandler:(id)a5;
- (void)saveTabsForCurrentDeviceWithDictionaryRepresentation:(id)a3 deviceUUIDString:(id)a4 completionHandler:(id)a5;
- (void)scheduleCloudBackgroundImageSaveWithURL:(id)a3 isLightAppearance:(BOOL)a4 successCompletionHandler:(id)a5;
- (void)syncDownSafariPerSiteSettingsSyncWithCompletion:(id)a3;
- (void)syncDownSafariSettingsSyncWithCompletion:(id)a3;
- (void)syncUpSafariPerSiteSettingsSyncWithCompletion:(id)a3;
- (void)syncUpSafariSettingsSyncWithCompletion:(id)a3;
- (void)triggerImmediateBackgroundImageSaveIfApplicable;
- (void)userAccountDidChange:(int64_t)a3;
- (void)userDidUpdateBookmarkDatabase;
- (void)userDidUpdateCloudTabGroupSyncManagerDatabase:(id)a3;
@end

@implementation SafariSyncController

- (BOOL)_hasEntitlementForSensitiveOperation
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.private.safari.can-use-bookmarks-sync-agent"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001B008(v5);
    }

    v4 = 0;
  }

  return v4;
}

- (void)fetchCloudSettingsChangesImmediately
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002FA0;
  block[3] = &unk_100131408;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)observeRemoteMigrationStateForSecondaryMigration
{
  xpc_transaction_begin();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017F8C;
  block[3] = &unk_100131408;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    +[NSError safari_setUpCloudKitPrivacyPreservingUserInfoProvider];
  }
}

- (SafariSyncController)init
{
  v100.receiver = self;
  v100.super_class = SafariSyncController;
  v2 = [(SafariSyncController *)&v100 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[CloudBookmarkDatabaseAccessProvider bookmarkDatabaseAccessor];
    databaseAccessor = v2->_databaseAccessor;
    v2->_databaseAccessor = v3;

    v5 = [[CloudBookmarkDatabaseLockArbiter alloc] initWithDatabaseAccessor:v2->_databaseAccessor];
    databaseLockArbiter = v2->_databaseLockArbiter;
    v2->_databaseLockArbiter = v5;

    [(CloudBookmarkDatabaseLockArbiter *)v2->_databaseLockArbiter setDelegate:v2];
    v7 = +[CKContainer safari_cloudBookmarksContainer];
    cloudBookmarksStoreContainer = v2->_cloudBookmarksStoreContainer;
    v2->_cloudBookmarksStoreContainer = v7;

    v9 = [CloudBookmarkStore alloc];
    v10 = v2->_cloudBookmarksStoreContainer;
    v11 = [CloudBookmarkStoreUserDefaultsStorage alloc];
    v12 = +[NSUserDefaults standardUserDefaults];
    v13 = [(CloudBookmarkStoreUserDefaultsStorage *)v11 initWithUserDefaults:v12 type:0];
    v14 = [(CloudBookmarkStore *)v9 initWithType:0 container:v10 localStorage:v13];
    bookmarkStore = v2->_bookmarkStore;
    v2->_bookmarkStore = v14;

    v16 = objc_alloc_init(ACAccountStore);
    accountStore = v2->_accountStore;
    v2->_accountStore = v16;

    v18 = [[CloudBookmarkSyncCoordinator alloc] initWithBookmarkStore:v2->_bookmarkStore databaseCoordinator:v2->_databaseLockArbiter accountStore:v2->_accountStore];
    bookmarkSyncCoordinator = v2->_bookmarkSyncCoordinator;
    v2->_bookmarkSyncCoordinator = v18;

    v20 = [[CloudBookmarkSyncMigrationCoordinator alloc] initWithBookmarkStore:v2->_bookmarkStore databaseCoordinator:v2->_databaseLockArbiter accountStore:v2->_accountStore];
    syncMigrationCoordinator = v2->_syncMigrationCoordinator;
    v2->_syncMigrationCoordinator = v20;

    v22 = [[CloudBookmarksMigrationCoordinator alloc] initWithBookmarkStore:v2->_bookmarkStore databaseAccessor:v2->_databaseAccessor syncMigrationCoordinator:v2->_syncMigrationCoordinator];
    migrationCoordinator = v2->_migrationCoordinator;
    v2->_migrationCoordinator = v22;

    v97[0] = _NSConcreteStackBlock;
    v97[1] = 3221225472;
    v97[2] = sub_100009384;
    v97[3] = &unk_100131368;
    v24 = v2;
    v98 = v24;
    v25 = [WBSDiagnosticStateCollector registeredStateCollectorWithLogLabel:@"Bookmarks Sync Agent State" payloadProvider:v97];
    stateCollector = v24->_stateCollector;
    v24->_stateCollector = v25;

    v27 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.SafariBookmarksSyncAgent.SafariSyncController.%@.%p._operationDispatchQueue", objc_opt_class(), v24];
    v28 = [v27 UTF8String];
    v29 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v30 = dispatch_queue_create(v28, v29);
    operationDispatchQueue = v24->_operationDispatchQueue;
    v24->_operationDispatchQueue = v30;

    v32 = objc_alloc_init(NSOperationQueue);
    operationQueue = v24->_operationQueue;
    v24->_operationQueue = v32;

    [(NSOperationQueue *)v24->_operationQueue setQualityOfService:17];
    [(NSOperationQueue *)v24->_operationQueue setUnderlyingQueue:v24->_operationDispatchQueue];
    v34 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.SafariBookmarksSyncAgent.%@.%p.operationQueue", objc_opt_class(), v24];
    [(NSOperationQueue *)v24->_operationQueue setName:v34];

    v35 = +[NSMutableSet set];
    containersCheckedForDatabaseChanges = v24->_containersCheckedForDatabaseChanges;
    v24->_containersCheckedForDatabaseChanges = v35;

    v37 = +[NSMutableDictionary dictionary];
    managerMigrationAccountHashes = v24->_managerMigrationAccountHashes;
    v24->_managerMigrationAccountHashes = v37;

    v39 = +[CKContainer safari_cloudTabsContainer];
    cloudTabsContainer = v24->_cloudTabsContainer;
    v24->_cloudTabsContainer = v39;

    v41 = [[CloudTabSyncArbiter alloc] initWithAccountStore:v2->_accountStore];
    tabSyncArbiter = v24->_tabSyncArbiter;
    v24->_tabSyncArbiter = v41;

    [(CloudTabSyncArbiter *)v24->_tabSyncArbiter setDelegate:v24];
    v43 = dispatch_queue_create("com.apple.SafariBookmarksSyncAgent.ActivityCheckInQueue", 0);
    activityCheckInQueue = v24->_activityCheckInQueue;
    v24->_activityCheckInQueue = v43;

    v45 = +[CKContainer safari_cloudSettingsContainer];
    cloudSettingsContainer = v24->_cloudSettingsContainer;
    v24->_cloudSettingsContainer = v45;

    v47 = [[CloudSettingStore alloc] initWithContainer:v24->_cloudSettingsContainer];
    settingsStore = v24->_settingsStore;
    v24->_settingsStore = v47;

    v49 = +[NSMutableDictionary dictionary];
    fetchedSettingsDictionary = v24->_fetchedSettingsDictionary;
    v24->_fetchedSettingsDictionary = v49;

    v51 = [[CloudSettingSyncCoordinator alloc] initWithSettingStore:v24->_settingsStore accountStore:v2->_accountStore];
    settingsSyncCoordinator = v24->_settingsSyncCoordinator;
    v24->_settingsSyncCoordinator = v51;

    [(CloudSettingSyncCoordinator *)v24->_settingsSyncCoordinator setDelegate:v24];
    v53 = +[CloudSettingsSyncEngineAccessProvider cloudSettingsSyncEngineAccessor];
    settingsSyncEngine = v24->_settingsSyncEngine;
    v24->_settingsSyncEngine = v53;

    v55 = dispatch_queue_create("com.apple.SafariBookmarksSyncAgent.CustomizationSyncQueue", 0);
    customizationSyncQueue = v24->_customizationSyncQueue;
    v24->_customizationSyncQueue = v55;

    v57 = +[NSUUID UUID];
    v58 = [v57 UUIDString];
    perSiteSettingsDeviceIdentifier = v24->_perSiteSettingsDeviceIdentifier;
    v24->_perSiteSettingsDeviceIdentifier = v58;

    v60 = +[NSMutableArray array];
    fetchedPerSiteSettings = v24->_fetchedPerSiteSettings;
    v24->_fetchedPerSiteSettings = v60;

    v62 = [CloudExtensionStore alloc];
    v63 = +[CKContainer safari_cloudExtensionsContainer];
    v64 = [(CloudExtensionStore *)v62 initWithContainer:v63];
    extensionStore = v24->_extensionStore;
    v24->_extensionStore = v64;

    v66 = [[CloudExtensionSyncCoordinator alloc] initWithAccountStore:v2->_accountStore cloudExtensionStore:v24->_extensionStore cloudExtensionSQLiteStore:0];
    extensionsSyncCoordinator = v24->_extensionsSyncCoordinator;
    v24->_extensionsSyncCoordinator = v66;

    v68 = objc_alloc_init(CloudScribbleFeedbackSyncCoordinator);
    scribbleFeedbackSyncCoordinator = v24->_scribbleFeedbackSyncCoordinator;
    v24->_scribbleFeedbackSyncCoordinator = v68;

    v70 = objc_alloc_init(CloudWebCompatibilityFeedbackSyncCoordinator);
    webCompatibilityFeedbackSyncCoordinator = v24->_webCompatibilityFeedbackSyncCoordinator;
    v24->_webCompatibilityFeedbackSyncCoordinator = v70;

    v72 = objc_alloc_init(AppleAccountInformationProvider);
    v73 = [WBSCloudKitContainerManateeObserver alloc];
    v74 = [(CKContainer *)v24->_cloudTabsContainer containerIdentifier];
    v75 = [v73 initWithContainerIdentifier:v74 appleAccountInformationProvider:v72];
    cloudTabsContainerManateeObserver = v24->_cloudTabsContainerManateeObserver;
    v24->_cloudTabsContainerManateeObserver = v75;

    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_100009434;
    v95[3] = &unk_1001313E0;
    objc_copyWeak(&v96, &location);
    [(WBSCloudKitContainerManateeObserver *)v24->_cloudTabsContainerManateeObserver setStateChangeObserver:v95];
    v77 = [(SafariSyncController *)v24 _syncManagerWithStoreOwner:2];
    tabGroupSyncManager = v24->_tabGroupSyncManager;
    v24->_tabGroupSyncManager = v77;

    [(SafariSyncController *)v24 registerMigrationXPCActivity:0];
    v79 = [NSXPCListener alloc];
    v80 = [v79 initWithMachServiceName:WBSSafariBookmarksSyncAgentServiceName];
    xpcListener = v24->_xpcListener;
    v24->_xpcListener = v80;

    [(NSXPCListener *)v24->_xpcListener setDelegate:v24];
    [(NSXPCListener *)v24->_xpcListener resume];
    v82 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
    [v82 setStoreOwner:2];
    v83 = [[WBTabCollection alloc] initWithConfiguration:v82 openDatabase:1];
    tabCollection = v24->_tabCollection;
    v24->_tabCollection = v83;

    [(SafariSyncController *)v24 _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:0 ignoreOnGoingRegistration:0 resetSubscriptions:63 qualityOfService:9 delay:0];
    [(SafariSyncController *)v24 _registerPeriodicRemoteMigrationStateObserverXPCActivityRegisteringIfNeeded:0];
    [(SafariSyncController *)v24 _scheduleInitialManateeCloudTabFetchRetryXPCActivityRegisteringIfNeeded:0];
    v85 = +[NSMutableSet set];
    detectedBugIDs = v24->_detectedBugIDs;
    v24->_detectedBugIDs = v85;

    v87 = +[NSNotificationCenter defaultCenter];
    [v87 addObserver:v24 selector:"_didDetectPossibleBug:" name:@"cloudBookmarkDidDetectBug" object:0];

    [(SafariSyncController *)v24 _scheduleHierarchyCheckTimer];
    v88 = v24->_cloudTabsContainerManateeObserver;
    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_100009780;
    v93[3] = &unk_100131390;
    v89 = v24;
    v94 = v89;
    [(WBSCloudKitContainerManateeObserver *)v88 determineAccountStateWithCompletion:v93];
    v90 = +[NSDistributedNotificationCenter defaultCenter];
    [v90 postNotificationName:WBSSafariBookmarksSyncAgentDidFinishLaunchingNotificationName object:0 userInfo:0];

    v91 = v89;
    objc_destroyWeak(&v96);

    objc_destroyWeak(&location);
  }

  return v2;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  tabGroupSyncManager = self->_tabGroupSyncManager;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_tabGroupSyncManager;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)didReceivePushNotificationWithTopic:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Received a push notification", buf, 2u);
  }

  v9 = [CKNotification notificationFromRemoteNotificationDictionary:v7];

  if (!v9)
  {
    v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v15 = 0;
    v12 = "Ignoring push notification because notification is nil";
    v13 = &v15;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
    goto LABEL_11;
  }

  if (![(SafariSyncController *)self isSyncEnabled])
  {
    v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v14 = 0;
    v12 = "Ignoring push notification because sync is disabled";
    v13 = &v14;
    goto LABEL_10;
  }

  v10 = [v9 subscriptionID];
  [(SafariSyncController *)self _didReceiveIncomingMessageWithNotification:v9 pushTopic:v6 subscriptionID:v10];

LABEL_11:
}

- (BOOL)isSyncEnabled
{
  v2 = [(CloudBookmarkSyncMigrationCoordinator *)self->_syncMigrationCoordinator accountPropertiesStore];
  v3 = [v2 isDataclassEnabled];

  return v3;
}

- (id)_updatedContainerForPushTopic:(id)a3
{
  v4 = a3;
  p_cloudBookmarksStoreContainer = &self->_cloudBookmarksStoreContainer;
  if ([(SafariSyncController *)self _topic:v4 matchesPushTopicForContainer:self->_cloudBookmarksStoreContainer])
  {
    goto LABEL_5;
  }

  p_cloudBookmarksStoreContainer = &self->_cloudTabsContainer;
  if ([(SafariSyncController *)self _topic:v4 matchesPushTopicForContainer:self->_cloudTabsContainer])
  {
    goto LABEL_5;
  }

  if ([(SafariSyncController *)self _topic:v4 matchesPushTopicForContainer:self->_cloudSettingsContainer])
  {
    p_cloudBookmarksStoreContainer = &self->_cloudSettingsContainer;
LABEL_5:
    v6 = *p_cloudBookmarksStoreContainer;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (BOOL)_topic:(id)a3 matchesPushTopicForContainer:(id)a4
{
  v5 = a3;
  v6 = [a4 options];
  v7 = [v6 applicationBundleIdentifierOverrideForPushTopicGeneration];

  LOBYTE(v6) = [v5 hasSuffix:v7];
  return v6;
}

- (BOOL)_needsDatabaseFetchOperationForContainer:(id)a3
{
  v4 = a3;
  v5 = [(CloudSettingStore *)self->_settingsStore container];

  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(CloudTabSyncArbiter *)self->_tabSyncArbiter container];

    if (v6 != v4 || ([(CloudTabGroupSyncManager *)self->_tabGroupSyncManager container], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == v4))
    {
      v7 = 0;
    }

    else
    {
      v9 = [(CloudBookmarkStore *)self->_bookmarkStore container];
      v7 = v9 == v4;
    }
  }

  return v7;
}

- (id)_syncManagerWithStoreOwner:(int64_t)a3
{
  v5 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
  [v5 setStoreOwner:a3];
  v6 = [[CloudTabGroupSyncManager alloc] initWithConfiguration:v5 container:self->_cloudTabsContainer accountStore:self->_accountStore];
  [(CloudTabGroupSyncManager *)v6 setDelegate:self];

  return v6;
}

- (void)registerForPushNotificationsIfNeeded
{
  xpc_transaction_begin();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009C48;
  block[3] = &unk_100131408;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)userAccountDidChange:(int64_t)a3
{
  xpc_transaction_begin();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009D14;
  v5[3] = &unk_100131430;
  v5[4] = self;
  v5[5] = a3;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)_userAccountDidChange:(int64_t)a3
{
  v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User account changed", &v13, 2u);
  }

  self->_didCheckAccountHash = 0;
  if (a3 <= 1)
  {
    [(NSMutableDictionary *)self->_managerMigrationAccountHashes removeAllObjects];
    v6 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Cleared migration tracking due to account change type: %ld", &v13, 0xCu);
    }
  }

  switch(a3)
  {
    case 2:
      v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received account Modified notification", &v13, 2u);
      }

      v11 = +[NSNotificationCenter defaultCenter];
      [v11 postNotificationName:@"cloudBookmarkAccountPropertiesDidChange" object:0];

      if ([(SafariSyncController *)self isSyncEnabled])
      {
        [(SafariSyncController *)self _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:0 qualityOfService:9 delay:5];
        break;
      }

LABEL_19:
      [(SafariSyncController *)self _cancelPushNotificationSyncDelayTimer];
      dateToForceSyncAfterPushNotification = self->_dateToForceSyncAfterPushNotification;
      self->_dateToForceSyncAfterPushNotification = 0;

      break;
    case 1:
      v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received account Deleted notification", &v13, 2u);
      }

      self->_lastSuccessfulCloudKitSubscriptions = 0;
      self->_remainingCloudKitSubscriptionsToRegister = 0;
      goto LABEL_19;
    case 0:
      v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received account Added notification", &v13, 2u);
      }

      v8 = +[NSNotificationCenter defaultCenter];
      [v8 postNotificationName:@"cloudBookmarkAccountIdentityDidChange" object:0];

      [(SafariSyncController *)self registerForPushNotificationsIfNeeded];
      break;
  }

  [(SafariSyncController *)self _updateCloudTabsSyncCoordinatorAfterUserAccountChange:a3];
  [(SafariSyncController *)self _updateCloudSettingsSyncCoordinatorAfterUserAccountChange:a3];
  [(SafariSyncController *)self _updateCloudExtensionsSyncCoordinatorAfterUserAccountChange:a3];
  [(SafariSyncController *)self _updateCloudBookmarksSyncCoordinatorAfterUserAccountChange:a3];
  [(SafariSyncController *)self _updateTabGroupsSyncCoordinatorAfterUserAccountChange:a3];
  [(SafariSyncController *)self updatePushTopicSubscriptions];
}

- (void)_updateCloudBookmarksSyncCoordinatorAfterUserAccountChange:(int64_t)a3
{
  v3 = self;
  if (a3 == 2)
  {
    v4 = 4;
LABEL_9:

    [(SafariSyncController *)self _attemptSyncAndFallBackToMigrationIfPossibleForTrigger:v4];
    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    [(CloudBookmarkStore *)self->_bookmarkStore clearCachedRecordZone];
    self = v3;
    v4 = 2;
    goto LABEL_9;
  }

  bookmarkStore = self->_bookmarkStore;

  [(CloudBookmarkStore *)bookmarkStore clearCachedRecordZone];
}

- (void)getCloudSettingsContainerManateeStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (self->_cloudSettingsContainer)
  {
    v5 = os_transaction_create();
    cloudSettingsContainer = self->_cloudSettingsContainer;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000A188;
    v9[3] = &unk_100131458;
    v10 = v5;
    v11 = v4;
    v7 = v5;
    [(CKContainer *)cloudSettingsContainer accountInfoWithCompletionHandler:v9];
  }

  else
  {
    v8 = sub_10000300C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001A9EC();
    }

    (*(v4 + 2))(v4, 0);
  }
}

- (void)userDidUpdateBookmarkDatabase
{
  xpc_transaction_begin();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A328;
  block[3] = &unk_100131408;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_userDidUpdateBookmarkDatabase
{
  if (self->_isMigrating)
  {
    v6 = v2;
    v7 = v3;
    v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Not triggering sync since migration is in progress", v5, 2u);
    }
  }

  else
  {

    [(SafariSyncController *)self _attemptSyncAndFallBackToMigrationIfPossibleForTrigger:0];
  }
}

- (void)_performBookmarkSyncForTrigger:(int64_t)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = sub_100003044(a3);
    *buf = 138543362;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "*** Starting CloudKit bookmark sync for trigger: %{public}@", buf, 0xCu);
  }

  kdebug_trace();
  [(SafariSyncController *)self _invalidateHierarchyCheckTimer];
  xpc_transaction_begin();
  self->_isSyncing = 1;
  bookmarkSyncCoordinator = self->_bookmarkSyncCoordinator;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000A594;
  v16[3] = &unk_100131480;
  v17 = v8;
  v18 = v9;
  v16[4] = self;
  v14 = v8;
  v15 = v9;
  [(CloudBookmarkSyncCoordinator *)bookmarkSyncCoordinator beginSyncingWithOperationGroupForFetching:v14 operationGroupForSaving:v14 completionHandler:v16];
}

- (void)_sendNotificationForSyncResult:(int64_t)a3
{
  v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending notification of Bookmarks sync result: %ld", buf, 0xCu);
  }

  v5 = [NSNumber numberWithInteger:a3, WBSSafariBookmarksSyncAgentSyncResultKey];
  v9 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  v7 = +[NSDistributedNotificationCenter defaultCenter];
  [v7 postNotificationName:WBSSafariBookmarksSyncAgentDidUpdateBookmarksNotificationName object:0 userInfo:v6];
}

- (void)fetchRemoteMigrationStateWithCompletionHandler:(id)a3
{
  v5 = a3;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    [(SafariSyncController *)self _fetchRemoteMigrationStateWithXPCActivity:0 qualityOfService:17 completionHandler:v5];
  }

  else
  {
    v4 = sub_10000A9A4();
    v5[2](v5, -1, 0, v4);
  }
}

- (void)_fetchRemoteMigrationStateWithXPCActivity:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Fetching remote migration state", buf, 2u);
  }

  xpc_transaction_begin();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000AB90;
  v13[3] = &unk_1001314D0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(&_dispatch_main_q, v13);
}

- (void)_beginMigrationFromDAVInOperationGroup:(id)a3
{
  v4 = a3;
  xpc_transaction_begin();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AED0;
  v6[3] = &unk_1001314F8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)_beginMigrationFromDAVInOperationGroupInternal:(id)a3
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:WBSSuppressCloudKitBookmarkMigrationForCyclerTestPreferenceKey];

  if (v5)
  {
    v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v10 = 0;
    v7 = "Asked to migrate, but bailing because migration is suppressed by the cycler";
    v8 = &v10;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    return;
  }

  if (self->_isMigrating)
  {
    v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 0;
    v7 = "Bailing out from migration since migration was already in progress";
    v8 = &v9;
    goto LABEL_7;
  }

  [(SafariSyncController *)self registerMigrationXPCActivity:1];
}

- (void)collectDiagnosticsDataWithCompletionHandler:(id)a3
{
  v5 = a3;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    v4 = [[CloudBookmarksDiagnostics alloc] initWithBookmarkStore:self->_bookmarkStore];
    [(CloudBookmarksDiagnostics *)v4 collectDiagnosticsDataWithCompletionHandler:v5];
  }

  else
  {
    v5[2](v5, 0);
  }
}

- (void)saveTabsForCurrentDeviceWithDictionaryRepresentation:(id)a3 deviceUUIDString:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    xpc_transaction_begin();
    tabSyncArbiter = self->_tabSyncArbiter;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000B270;
    v13[3] = &unk_100131520;
    v14 = v10;
    [(CloudTabSyncArbiter *)tabSyncArbiter saveTabsForCurrentDeviceWithDictionaryRepresentation:v8 deviceUUIDString:v9 completionHandler:v13];
  }

  else
  {
    v12 = sub_10000A9A4();
    (*(v10 + 2))(v10, v12);
  }
}

- (void)saveCloudTabCloseRequestWithDictionaryRepresentation:(id)a3 closeRequestUUIDString:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    xpc_transaction_begin();
    tabSyncArbiter = self->_tabSyncArbiter;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000B430;
    v13[3] = &unk_100131520;
    v14 = v10;
    [(CloudTabSyncArbiter *)tabSyncArbiter saveCloudTabCloseRequestWithDictionaryRepresentation:v8 closeRequestUUIDString:v9 completionHandler:v13];
  }

  else
  {
    v12 = sub_10000A9A4();
    (*(v10 + 2))(v10, v12);
  }
}

- (void)deleteDevicesWithUUIDStrings:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    xpc_transaction_begin();
    tabSyncArbiter = self->_tabSyncArbiter;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000B574;
    v10[3] = &unk_100131520;
    v11 = v7;
    [(CloudTabSyncArbiter *)tabSyncArbiter deleteDevicesWithUUIDStrings:v6 completionHandler:v10];
  }

  else
  {
    v9 = sub_10000A9A4();
    (*(v7 + 2))(v7, v9);
  }
}

- (void)deleteCloudTabCloseRequestsWithUUIDStrings:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    xpc_transaction_begin();
    tabSyncArbiter = self->_tabSyncArbiter;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000B6B8;
    v10[3] = &unk_100131520;
    v11 = v7;
    [(CloudTabSyncArbiter *)tabSyncArbiter deleteCloudTabCloseRequestsWithUUIDStrings:v6 completionHandler:v10];
  }

  else
  {
    v9 = sub_10000A9A4();
    (*(v7 + 2))(v7, v9);
  }
}

- (void)fetchSyncedCloudTabDevicesAndCloseRequestsWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000B7F0;
    v6[3] = &unk_100131588;
    v7 = v4;
    [(SafariSyncController *)self _fetchSyncedCloudTabDevicesAndCloseRequestsWithCompletionHandler:v6];
  }

  else
  {
    v5 = sub_10000A9A4();
    (*(v4 + 2))(v4, 0, 0, v5);
  }
}

- (void)_fetchSyncedCloudTabDevicesAndCloseRequestsWithCompletionHandler:(id)a3
{
  v4 = a3;
  xpc_transaction_begin();
  tabSyncArbiter = self->_tabSyncArbiter;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B8A0;
  v7[3] = &unk_100131588;
  v8 = v4;
  v6 = v4;
  [(CloudTabSyncArbiter *)tabSyncArbiter fetchDevicesWithCompletionHandler:v7];
}

- (void)getCloudTabDevicesWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    xpc_transaction_begin();
    tabSyncArbiter = self->_tabSyncArbiter;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000BD2C;
    v6[3] = &unk_1001315D8;
    v7 = v4;
    [(CloudTabSyncArbiter *)tabSyncArbiter getCachedDevicesWithCompletionHandler:v6];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)getCloudTabContainerManateeStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  tabSyncArbiter = self->_tabSyncArbiter;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000BFFC;
  v9[3] = &unk_100131600;
  v10 = v5;
  v11 = v4;
  v7 = v5;
  v8 = v4;
  [(CloudTabSyncArbiter *)tabSyncArbiter getCloudTabRemoteStoreWithCompletionHandler:v9];
}

- (void)saveCloudSettingWithDictionaryRepresentation:(id)a3 successCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation]&& [(SafariSyncController *)self _isDeviceToDeviceEncryptionEnabled])
  {
    xpc_transaction_begin();
    v8 = [(CloudSettingStore *)self->_settingsStore createOperationGroupWithName:@"Cloud Settings User Did Update Settings" useLargerExpectedSendSize:0];
    v9 = [CKRecord alloc];
    v10 = WBSCloudSettingRecordType;
    v11 = [CKRecordID alloc];
    v12 = [v6 objectForKeyedSubscript:WBSCloudSettingRecordName];
    v13 = sub_10000C250();
    v14 = [v11 initWithRecordName:v12 zoneID:v13];
    v15 = [v9 initWithRecordType:v10 recordID:v14];

    v16 = WBSCloudSettingValue;
    v17 = [v6 objectForKeyedSubscript:WBSCloudSettingValue];
    v18 = [v15 safari_encryptedValues];
    [v18 setObject:v17 forKeyedSubscript:v16];

    customizationSyncQueue = self->_customizationSyncQueue;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000C294;
    v22[3] = &unk_100131650;
    v22[4] = self;
    v23 = v15;
    v24 = v8;
    v25 = v7;
    v20 = v8;
    v21 = v15;
    dispatch_async(customizationSyncQueue, v22);
  }
}

- (void)saveCloudPerSiteSettingWithDictionaryRepresentation:(id)a3 successCompletionHandler:(id)a4
{
  settingsStore = self->_settingsStore;
  v7 = a4;
  v8 = a3;
  v9 = [(CloudSettingStore *)settingsStore createOperationGroupWithName:@"Cloud Settings User Did Update Per-Site Settings" useLargerExpectedSendSize:0];
  [(SafariSyncController *)self _saveCloudPerSiteSettingWithDictionaryRepresentation:v8 inOperationGroup:v9 successCompletionHandler:v7];
}

- (void)_saveCloudPerSiteSettingWithDictionaryRepresentation:(id)a3 inOperationGroup:(id)a4 successCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation]&& [(SafariSyncController *)self _isDeviceToDeviceEncryptionEnabled])
  {
    v11 = os_transaction_create();
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10000C7D4;
    v40[3] = &unk_1001316C8;
    v40[4] = self;
    v12 = v9;
    v41 = v12;
    v42 = v11;
    v43 = v10;
    v31 = v11;
    v13 = objc_retainBlock(v40);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10000C9D8;
    v37[3] = &unk_100131718;
    v37[4] = self;
    v14 = v12;
    v38 = v14;
    v15 = v13;
    v39 = v15;
    v16 = objc_retainBlock(v37);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000CB44;
    v32[3] = &unk_100131768;
    v32[4] = self;
    v17 = v8;
    v33 = v17;
    v18 = v14;
    v34 = v18;
    v19 = v15;
    v35 = v19;
    v20 = v16;
    v36 = v20;
    v30 = objc_retainBlock(v32);
    v21 = WBSCloudPerSiteSettingSyncData;
    v22 = [v17 objectForKeyedSubscript:WBSCloudPerSiteSettingSyncData];

    if (v22)
    {
      v23 = [v17 objectForKeyedSubscript:v21];
      v24 = [(SafariSyncController *)self _modifyExistingPerSiteCloudKitRecordWithData:v23 dictionaryRepresentation:v17 inOperationGroup:v18];

      if (v24)
      {
        (v19[2])(v19, v24);
      }

      else
      {
        (v20[2])(v20, v17);
      }

      v29 = v30;
    }

    else
    {
      v25 = WBSCloudPerSiteSettingDomain;
      v26 = [v17 objectForKeyedSubscript:WBSCloudPerSiteSettingDomain];

      v24 = [(SafariSyncController *)self _perSitePreferencesStore];
      v27 = [v17 objectForKeyedSubscript:WBSCloudPerSiteSettingName];
      if (v26)
      {
        v28 = [v17 objectForKeyedSubscript:v25];
        v29 = v30;
        [v24 getSyncDataForPreference:v27 domain:v28 completionHandler:v30];
      }

      else
      {
        v29 = v30;
        [v24 getSyncDataForPreference:v27 completionHandler:v30];
      }
    }
  }
}

- (void)deletePerSiteSettingsSyncData
{
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation]&& +[WBSFeatureAvailability isPerSiteSettingSyncEnabled])
  {
    v3 = [(SafariSyncController *)self _perSitePreferencesStore];
    [v3 removeAllSyncData];
  }
}

- (id)_modifyExistingPerSiteCloudKitRecordWithData:(id)a3 dictionaryRepresentation:(id)a4 inOperationGroup:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[CKRecord alloc] safari_initWithEncodedRecordData:v10];

  if (v11)
  {
    v12 = WBSCloudPerSiteSettingUseDefaultValue;
    v13 = [v8 objectForKeyedSubscript:WBSCloudPerSiteSettingUseDefaultValue];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 BOOLValue];
      v15 = [v8 objectForKeyedSubscript:v12];
      [v11 setObject:v15 forKeyedSubscript:v12];

      if (v14)
      {
        v16 = [v11 safari_encryptedValues];
        [v16 setObject:0 forKeyedSubscript:WBSCloudPerSiteSettingName];

        v17 = [v11 safari_encryptedValues];
        [v17 setObject:0 forKeyedSubscript:WBSCloudPerSiteSettingDomain];

        v18 = [v11 safari_encryptedValues];
        [v18 setObject:0 forKeyedSubscript:WBSCloudPerSiteSettingDeviceClass];

        v19 = [v11 safari_encryptedValues];
        v20 = WBSCloudPerSiteSettingValue;
        [v19 setObject:0 forKeyedSubscript:WBSCloudPerSiteSettingValue];

        [v11 setExpirationAfterTimeInterval:&off_10013C2A0];
LABEL_12:
        v34 = [v11 safari_generationForKey:v20];
        v35 = [v34 incrementedGenerationWithDeviceIdentifier:self->_perSiteSettingsDeviceIdentifier];
        [v11 safari_setGeneration:v35 forKey:v20];

        v36 = v11;
        goto LABEL_13;
      }
    }

    else
    {
      v22 = [v8 objectForKeyedSubscript:v12];
      [v11 setObject:v22 forKeyedSubscript:v12];
    }

    v23 = WBSCloudPerSiteSettingName;
    v24 = [v8 objectForKeyedSubscript:WBSCloudPerSiteSettingName];
    v25 = [v11 safari_encryptedValues];
    [v25 setObject:v24 forKeyedSubscript:v23];

    v26 = WBSCloudPerSiteSettingDomain;
    v27 = [v8 objectForKeyedSubscript:WBSCloudPerSiteSettingDomain];
    v28 = [v11 safari_encryptedValues];
    [v28 setObject:v27 forKeyedSubscript:v26];

    v29 = [(SafariSyncController *)self _deviceClass];
    v30 = [v11 safari_encryptedValues];
    [v30 setObject:v29 forKeyedSubscript:WBSCloudPerSiteSettingDeviceClass];

    v20 = WBSCloudPerSiteSettingValue;
    v31 = [v8 objectForKeyedSubscript:WBSCloudPerSiteSettingValue];
    objc_opt_class();
    LOBYTE(v28) = objc_opt_isKindOfClass();

    if (v28)
    {
      [(SafariSyncController *)self _archivedDataForPerSiteSettingDictionaryInDictionary:v8 inOperationGroup:v9];
    }

    else
    {
      [v8 objectForKeyedSubscript:v20];
    }
    v32 = ;
    v33 = [v11 safari_encryptedValues];
    [v33 setObject:v32 forKeyedSubscript:v20];

    goto LABEL_12;
  }

  v21 = sub_10000300C();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_10001ACC8(v21, v8, v9);
  }

LABEL_13:

  return v11;
}

- (id)_createNewPerSiteCloudKitRecordWithDictionaryRepresentation:(id)a3 precomputedRecordName:(id)a4 inOperationGroup:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(SafariSyncController *)self _deviceClass];
  v12 = [CKRecord alloc];
  v13 = WBSCloudPerSiteSettingRecordType;
  v14 = [CKRecordID alloc];
  v15 = sub_10000C250();
  v16 = [v14 initWithRecordName:v10 zoneID:v15];

  v17 = [v12 initWithRecordType:v13 recordID:v16];
  v18 = WBSCloudPerSiteSettingName;
  v19 = [v8 objectForKeyedSubscript:WBSCloudPerSiteSettingName];
  v20 = [v17 safari_encryptedValues];
  [v20 setObject:v19 forKeyedSubscript:v18];

  v21 = [v17 safari_encryptedValues];
  [v21 setObject:v11 forKeyedSubscript:WBSCloudPerSiteSettingDeviceClass];

  v22 = WBSCloudPerSiteSettingUseDefaultValue;
  v23 = [v8 objectForKeyedSubscript:WBSCloudPerSiteSettingUseDefaultValue];
  [v17 setObject:v23 forKeyedSubscript:v22];

  v24 = WBSCloudPerSiteSettingValue;
  v25 = [v8 objectForKeyedSubscript:WBSCloudPerSiteSettingValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SafariSyncController *)self _archivedDataForPerSiteSettingDictionaryInDictionary:v8 inOperationGroup:v9];
  }

  else
  {
    [v8 objectForKeyedSubscript:v24];
  }
  v26 = ;
  v27 = [v17 safari_encryptedValues];
  [v27 setObject:v26 forKeyedSubscript:v24];

  v28 = [[WBSCRDTGeneration alloc] initWithDeviceIdentifier:self->_perSiteSettingsDeviceIdentifier generation:1];
  [v17 safari_setGeneration:v28 forKey:v24];

  v29 = WBSCloudPerSiteSettingDomain;
  v30 = [v8 objectForKeyedSubscript:WBSCloudPerSiteSettingDomain];

  if (v30)
  {
    v31 = [v8 objectForKeyedSubscript:v29];
    v32 = [v17 safari_encryptedValues];
    [v32 setObject:v31 forKeyedSubscript:v29];
  }

  return v17;
}

- (id)_deviceClass
{
  v2 = +[WBSDevice currentDevice];
  v3 = [v2 deviceClass];

  v4 = @"UndefinedDeviceClass";
  if (v3 == 3)
  {
    v4 = @"iPad";
  }

  if (v3 == 1)
  {
    return @"iPhone";
  }

  else
  {
    return v4;
  }
}

- (void)_getPerSiteSettingRecordNameWithDictionaryRepresentation:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v16 = a4;
  v8 = a5;
  v9 = WBSCloudPerSiteSettingName;
  v10 = a3;
  v11 = [v10 objectForKeyedSubscript:v9];
  v12 = [v10 objectForKeyedSubscript:WBSCloudPerSiteSettingDomain];

  v13 = +[NSMutableArray array];
  [v13 addObject:v11];
  if ([(__CFString *)v12 length])
  {
    v14 = v12;
  }

  else
  {
    v14 = @"default";
  }

  [v13 addObject:v14];
  if (([v11 isEqualToString:WBSPerSitePreferenceNamePageZoom] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", WBSPerSitePreferenceNameRequestDesktopSite))
  {
    v15 = [(SafariSyncController *)self _deviceClass];
    [v13 addObject:v15];
  }

  [(CloudSettingStore *)self->_settingsStore generateEncryptedHashStringWithComponents:v13 inOperationGroup:v16 completionHandler:v8];
}

- (id)_archivedDataForPerSiteSettingDictionaryInDictionary:(id)a3 inOperationGroup:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKeyedSubscript:WBSCloudPerSiteSettingValue];
  v11 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v11];
  v8 = v11;

  if (v8)
  {
    v9 = sub_10000300C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001ADEC();
    }
  }

  return v7;
}

- (id)_perSitePreferencesStore
{
  if (qword_100153E48 != -1)
  {
    sub_10001AE9C();
  }

  v3 = qword_100153E40;

  return v3;
}

- (void)deleteBackgroundImageDirectory
{
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    settingsSyncEngine = self->_settingsSyncEngine;
    if (objc_opt_respondsToSelector())
    {
      v4 = self->_settingsSyncEngine;

      [(WBSSettingsSyncEngineAccess *)v4 deleteBackgroundImageDirectory];
    }
  }
}

- (void)triggerImmediateBackgroundImageSaveIfApplicable
{
  delayBeforeSavingBackgroundImageTimer = self->_delayBeforeSavingBackgroundImageTimer;
  if (delayBeforeSavingBackgroundImageTimer)
  {
    [(NSTimer *)delayBeforeSavingBackgroundImageTimer fire];
    v4 = self->_delayBeforeSavingBackgroundImageTimer;
    self->_delayBeforeSavingBackgroundImageTimer = 0;
  }
}

- (void)scheduleCloudBackgroundImageSaveWithURL:(id)a3 isLightAppearance:(BOOL)a4 successCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation]&& [(SafariSyncController *)self _isDeviceToDeviceEncryptionEnabled])
  {
    v10 = [(CloudSettingStore *)self->_settingsStore createOperationGroupWithName:@"Cloud Settings Background Image Saving" useLargerExpectedSendSize:1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000DA68;
    block[3] = &unk_1001317D8;
    block[4] = self;
    v16 = a4;
    v13 = v8;
    v14 = v10;
    v15 = v9;
    v11 = v10;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)deleteBackgroundImageFromCloudKitWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (![(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    v10 = sub_10000A9A4();
LABEL_6:
    v4[2](v4, v10);

    goto LABEL_7;
  }

  if (![(SafariSyncController *)self _isDeviceToDeviceEncryptionEnabled])
  {
    v11 = WBSCloudBookmarksErrorDomain;
    v17 = NSLocalizedFailureReasonErrorKey;
    v18 = @"Manatee is currently unavailable on the current account.";
    v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v10 = [NSError errorWithDomain:v11 code:2 userInfo:v12];

    goto LABEL_6;
  }

  v5 = [(CloudSettingStore *)self->_settingsStore createOperationGroupWithName:@"Cloud Settings Background Image Deletion" useLargerExpectedSendSize:0];
  v6 = os_transaction_create();
  customizationSyncQueue = self->_customizationSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DD98;
  block[3] = &unk_1001315B0;
  block[4] = self;
  v14 = v5;
  v15 = v6;
  v16 = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(customizationSyncQueue, block);

LABEL_7:
}

- (void)syncDownSafariSettingsSyncWithCompletion:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DF74;
  block[3] = &unk_100131408;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)syncUpSafariSettingsSyncWithCompletion:(id)a3
{
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation]&& [(SafariSyncController *)self _isDeviceToDeviceEncryptionEnabled])
  {
    v7 = [(CloudSettingStore *)self->_settingsStore createOperationGroupWithName:@"Cloud Settings Safari Settings Sync Up" useLargerExpectedSendSize:0];
    if ([(WBSSettingsSyncEngineAccess *)self->_settingsSyncEngine backgroundImageExists])
    {
      v4 = +[NSFileManager defaultManager];
      v5 = [v4 safari_startPageBackgroundImageFileURLForDefaultProfile];
      [(SafariSyncController *)self _saveCloudBackgroundImageWithURL:v5 isLightAppearance:[(WBSSettingsSyncEngineAccess *)self->_settingsSyncEngine backgroundImageAppearanceIsLight] inOperationGroup:v7 successCompletionHandler:&stru_1001317F8];
    }

    v6 = [(WBSSettingsSyncEngineAccess *)self->_settingsSyncEngine syncSettingsUpDictionary];
    [(SafariSyncController *)self _saveCloudSettingsBatchWithDictionaryRepresentation:v6 inOperationGroup:v7 successCompletionHandler:&stru_100131818];
  }
}

- (void)syncDownSafariPerSiteSettingsSyncWithCompletion:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E14C;
  block[3] = &unk_100131408;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)syncUpSafariPerSiteSettingsSyncWithCompletion:(id)a3
{
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation]&& [(SafariSyncController *)self _isDeviceToDeviceEncryptionEnabled])
  {
    v4 = [(CloudSettingStore *)self->_settingsStore createOperationGroupWithName:@"Cloud Settings Per-Site Settings Sync Up" useLargerExpectedSendSize:0];
    [(SafariSyncController *)self _saveCloudPerSiteSettingsWithMacZoomPreferences:0 inOperationGroup:v4 successCompletionHandler:&stru_100131838];
  }
}

- (void)_saveCloudPerSiteSettingsWithMacZoomPreferences:(id)a3 inOperationGroup:(id)a4 successCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = os_transaction_create();
  customizationSyncQueue = self->_customizationSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E36C;
  block[3] = &unk_1001318B0;
  v16 = v11;
  v17 = self;
  v18 = v9;
  v13 = v9;
  v14 = v11;
  objc_copyWeak(&v19, &location);
  dispatch_async(customizationSyncQueue, block);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

- (void)_saveCloudSettingsBatchWithDictionaryRepresentation:(id)a3 inOperationGroup:(id)a4 successCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = os_transaction_create();
  customizationSyncQueue = self->_customizationSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EBA8;
  block[3] = &unk_100131900;
  v18 = v11;
  v19 = self;
  v20 = v9;
  v13 = v9;
  v14 = v11;
  objc_copyWeak(&v23, &location);
  v21 = v8;
  v22 = v10;
  v15 = v10;
  v16 = v8;
  dispatch_async(customizationSyncQueue, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)saveExtensionStatesWithDictionaryRepresentation:(id)a3 forDevice:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    v11 = os_transaction_create();
    extensionsSyncCoordinator = self->_extensionsSyncCoordinator;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000F2D4;
    v15[3] = &unk_100131678;
    v16 = v11;
    v17 = v10;
    v13 = v11;
    [(CloudExtensionSyncCoordinator *)extensionsSyncCoordinator saveExtensionStatesWithDictionaryRepresentation:v8 forDevice:v9 completionHandler:v15];
  }

  else
  {
    v14 = sub_10000A9A4();
    (*(v10 + 2))(v10, v14);
  }
}

- (void)saveExtensionDeviceWithDictionaryRepresentation:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    v8 = os_transaction_create();
    extensionsSyncCoordinator = self->_extensionsSyncCoordinator;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000F49C;
    v12[3] = &unk_100131678;
    v13 = v8;
    v14 = v7;
    v10 = v8;
    [(CloudExtensionSyncCoordinator *)extensionsSyncCoordinator saveExtensionDeviceWithDictionaryRepresentation:v6 completionHandler:v12];
  }

  else
  {
    v11 = sub_10000A9A4();
    (*(v7 + 2))(v7, v11);
  }
}

- (void)getCloudExtensionStatesWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    v5 = os_transaction_create();
    extensionsSyncCoordinator = self->_extensionsSyncCoordinator;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000F658;
    v9[3] = &unk_100131928;
    v10 = v5;
    v11 = v4;
    v7 = v5;
    [(CloudExtensionSyncCoordinator *)extensionsSyncCoordinator getCloudExtensionStatesWithCompletionHandler:v9];
  }

  else
  {
    v8 = sub_10000A9A4();
    (*(v4 + 2))(v4, 0, 0, v8);
  }
}

- (void)deleteCloudExtensionDevicesWithUUIDStrings:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    v8 = os_transaction_create();
    extensionsSyncCoordinator = self->_extensionsSyncCoordinator;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000F874;
    v12[3] = &unk_100131678;
    v13 = v8;
    v14 = v7;
    v10 = v8;
    [(CloudExtensionSyncCoordinator *)extensionsSyncCoordinator deleteCloudExtensionDevicesWithUUIDStrings:v6 completionHandler:v12];
  }

  else
  {
    v11 = sub_10000A9A4();
    (*(v7 + 2))(v7, v11);
  }
}

- (void)deleteCloudExtensionStatesDatabaseWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FA18;
    block[3] = &unk_100130E50;
    block[4] = self;
    v7 = os_transaction_create();
    v8 = v4;
    v5 = v7;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v4[2](v4);
  }
}

- (void)fetchProfileEntitiesWithCompletion:(id)a3
{
  v4 = a3;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000FBB4;
    v6[3] = &unk_100131990;
    v6[4] = self;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v6);
  }

  else
  {
    v5 = sub_1000D2478();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001AF60();
    }

    (*(v4 + 2))(v4, &__NSArray0__struct);
  }
}

- (void)fetchTabGroupEntitiesWithCompletion:(id)a3
{
  v4 = a3;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000FF28;
    v5[3] = &unk_100131990;
    v5[4] = self;
    v6 = v4;
    dispatch_async(&_dispatch_main_q, v5);
  }

  else
  {
    (*(v4 + 2))(v4, &__NSArray0__struct);
  }
}

- (void)deleteTabGroupEntitiesWithUUIDStrings:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    v8 = sub_1000D2478();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      *buf = 134217984;
      v16 = [v6 count];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Beginning to delete %zu tab group entities", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001032C;
    block[3] = &unk_100131A20;
    v12 = v6;
    v13 = self;
    v14 = v7;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v10 = sub_10000A9A4();
    (*(v7 + 2))(v7, v10);
  }
}

- (void)resetToDAVDatabaseWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    xpc_transaction_begin();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100010534;
    v6[3] = &unk_100131990;
    v6[4] = self;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v6);
  }

  else
  {
    v5 = sub_10000A9A4();
    (*(v4 + 2))(v4, v5);
  }
}

- (void)clearLocalDataIncludingMigrationState:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    xpc_transaction_begin();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000106F0;
    block[3] = &unk_100131A48;
    block[4] = self;
    v10 = a3;
    v9 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v7 = sub_10000A9A4();
    (*(v6 + 2))(v6, v7);
  }
}

- (void)generateDAVServerIDsForExistingBookmarksWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    xpc_transaction_begin();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000108AC;
    v6[3] = &unk_100131990;
    v6[4] = self;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v6);
  }

  else
  {
    v5 = sub_10000A9A4();
    (*(v4 + 2))(v4, v5);
  }
}

- (void)migrateToCloudKitWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SafariSyncController *)self _hasEntitlementForSensitiveOperation])
  {
    xpc_transaction_begin();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100010A58;
    v6[3] = &unk_100131990;
    v6[4] = self;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v6);
  }

  else
  {
    v5 = sub_10000A9A4();
    (*(v4 + 2))(v4, v5);
  }
}

- (void)databaseLockArbiterDidAcquireDatabaseLock:(id)a3
{
  v4 = a3;
  if (!self->_didCheckAgentVersionOnDatabaseLock)
  {
    self->_didCheckAgentVersionOnDatabaseLock = 1;
    v5 = +[NSUserDefaults safari_cloudBookmarksDefaults];
    v6 = [v5 stringForKey:@"DebugForceMigrationFromSafariSyncControllerVersionKey"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = [v5 stringForKey:@"NewestLaunchedSafariBookmarksSyncAgentVersion"];
      v10 = v9;
      v11 = @"0.0.0";
      if (v9)
      {
        v11 = v9;
      }

      v8 = v11;
    }

    v12 = +[NSBundle mainBundle];
    v13 = [v12 safari_normalizedVersion];

    if ([@"614.4.6" compare:v8 options:64] == 1)
    {
      [(CloudBookmarkSyncCoordinator *)self->_bookmarkSyncCoordinator reorderAllBookmarksUsingSyncPosition];
    }

    if ([@"618.1.9" compare:v8 options:64] == 1)
    {
      v14 = [(CloudSettingStore *)self->_settingsStore createOperationGroupWithName:@"Cloud Settings Fix Per-Profile Per-Site Settings for 116544661" useLargerExpectedSendSize:0];
      v15 = [WBSProfilePreferenceManager alloc];
      v16 = [(SafariSyncController *)self _perSitePreferencesStore];
      v17 = [v15 initWithPerSitePreferencesStore:v16 profileProvider:0];

      [v17 profilePreference];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100010EDC;
      v24 = &unk_100131AB8;
      v26 = v25 = v17;
      v27 = self;
      v28 = v14;
      v18 = v14;
      v19 = v26;
      v20 = v17;
      [v20 getAllDomainsConfiguredForPreference:v19 usingBlock:&v21];
    }

    if ([v13 compare:v8 options:{64, v21, v22, v23, v24}] == 1)
    {
      if ([v4 localMigrationState] && -[SafariSyncController _shouldPerformMigrationAfterUpgradingBookmarksDatabaseFromSafariVersion:](self, "_shouldPerformMigrationAfterUpgradingBookmarksDatabaseFromSafariVersion:", v13))
      {
        [(WBSBookmarkDBAccess *)self->_databaseAccessor resetDeviceIdentifier];
        [v4 setLocalMigrationState:0];
      }

      -[WBSBookmarkDBAccess openDatabase:](self->_databaseAccessor, "openDatabase:", [v4 databaseRef]);
      -[WBSBookmarkDBAccess closeDatabase:shouldSave:](self->_databaseAccessor, "closeDatabase:shouldSave:", [v4 databaseRef], -[WBSBookmarkDBAccess performMaintenanceOnDatabase:afterVersion:](self->_databaseAccessor, "performMaintenanceOnDatabase:afterVersion:", objc_msgSend(v4, "databaseRef"), v8));
    }

    [v5 setObject:v13 forKey:@"NewestLaunchedSafariBookmarksSyncAgentVersion"];
  }
}

- (BOOL)_shouldPerformMigrationAfterUpgradingBookmarksDatabaseFromSafariVersion:(id)a3
{
  v3 = a3;
  if ([@"604.4" safari_isVersionStringGreaterThanVersionString:v3])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 safari_isVersionStringBetweenVersionString:@"614.1.22" andVersionString:@"614.1.25.0.2"];
  }

  return v4;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  xpcListener = self->_xpcListener;
  if (xpcListener == a3)
  {
    [(SafariSyncController *)self _setUpSyncAgentInterfaceOnConnection:a4];
  }

  return xpcListener == a3;
}

- (void)_setUpSyncAgentInterfaceOnConnection:(id)a3
{
  v4 = a3;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SafariSyncControllerConnectionHandling];
  WBSetupTabGroupSyncAgentProtocolInterface();
  [v4 setExportedInterface:v5];
  [v4 setExportedObject:self];
  [v4 resume];
}

- (void)_didReceiveIncomingMessageWithNotification:(id)a3 pushTopic:(id)a4 subscriptionID:(id)a5
{
  v7 = a3;
  v8 = [(SafariSyncController *)self _updatedContainerForPushTopic:a4];
  if (!v8)
  {
    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v25 = 138543362;
    v26 = v7;
    v11 = "Ignoring push notification %{public}@ because it does not match any known push topic";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, &v25, 0xCu);
    goto LABEL_28;
  }

  if ([(SafariSyncController *)self _needsDatabaseFetchOperationForContainer:v8])
  {
    v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v25 = 138543362;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Push notification %{public}@ comes from a container that is used by multiple sync coordinators", &v25, 0xCu);
    }

    [(SafariSyncController *)self _attemptSyncForChangedZonesSharingContainer:v8 trigger:1];
    goto LABEL_28;
  }

  v12 = [(CloudBookmarkStore *)self->_bookmarkStore container];

  if (v8 == v12)
  {
    v18 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Attempting to sync Bookmarks in response to a subscription push notification", &v25, 2u);
    }

    [(SafariSyncController *)self _attemptSyncAndFallBackToMigrationIfPossibleForTrigger:1];
  }

  else
  {
    v13 = [(CloudSettingStore *)self->_settingsStore container];

    if (v8 == v13)
    {
      v19 = [(CloudSettingStore *)self->_settingsStore createOperationGroupWithName:@"Cloud Settings Received Push Notification" useLargerExpectedSendSize:0];
      v20 = sub_10000300C();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = v20;
        v22 = [v19 safari_logDescription];
        v25 = 138543362;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Attempting to sync Cloud Settings in response to a subscription push notification with %{public}@", &v25, 0xCu);
      }

      [(SafariSyncController *)self _attemptCloudSettingsSyncForTrigger:1 inOperationGroup:v19];
    }

    else
    {
      v14 = [(CloudTabGroupSyncManager *)self->_tabGroupSyncManager container];

      if (v8 == v14)
      {
        v24 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Attempting to sync Tab Groups in response to a subscription push notification", &v25, 2u);
        }

        [(SafariSyncController *)self _attemptTabGroupsSyncForManager:self->_tabGroupSyncManager withTrigger:1];
      }

      else
      {
        v15 = [(CloudTabSyncArbiter *)self->_tabSyncArbiter container];
        if (v15)
        {
          v16 = v15;
          v17 = [(CloudTabSyncArbiter *)self->_tabSyncArbiter container];

          if (v8 != v17)
          {
            v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
            if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              goto LABEL_28;
            }

            v25 = 138543362;
            v26 = v7;
            v11 = "Ignoring push notification %{public}@ because it does not match any known subscription";
            goto LABEL_8;
          }
        }

        v23 = sub_100001B78();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Attempting to sync Cloud Tabs in response to a subscription push notification", &v25, 2u);
        }

        [(SafariSyncController *)self _attemptCloudTabsSyncForPushNotification];
      }
    }
  }

LABEL_28:
}

- (id)_pushTopicForContainer:(id)a3
{
  v3 = [a3 options];
  v4 = [v3 applicationBundleIdentifierOverrideForPushTopicGeneration];

  v5 = [@"com.apple.icloud-container." stringByAppendingString:v4];

  return v5;
}

- (void)_attemptSyncForChangedZonesSharingContainer:(id)a3 trigger:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  dateToForceSyncAfterPushNotification = self->_dateToForceSyncAfterPushNotification;
  if (!dateToForceSyncAfterPushNotification)
  {
    v8 = [NSDate dateWithTimeIntervalSinceNow:30.0];
    v9 = self->_dateToForceSyncAfterPushNotification;
    self->_dateToForceSyncAfterPushNotification = v8;

    dateToForceSyncAfterPushNotification = self->_dateToForceSyncAfterPushNotification;
  }

  [(NSDate *)dateToForceSyncAfterPushNotification timeIntervalSinceNow];
  if (v10 > 0.0 && [(NSTimer *)self->_delayBeforeSyncingAfterPushNotificationTimer isValid])
  {
    v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Reached maximum delay before forcing a sync after a push notification", buf, 2u);
    }
  }

  else
  {
    [(SafariSyncController *)self _cancelPushNotificationSyncDelayTimer];
    v12 = os_transaction_create();
    transactionForTimerToDelaySyncing = self->_transactionForTimerToDelaySyncing;
    self->_transactionForTimerToDelaySyncing = v12;

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001175C;
    v16[3] = &unk_100131AE0;
    objc_copyWeak(v18, &location);
    v17 = v6;
    v18[1] = a4;
    v14 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v16 block:5.0];
    delayBeforeSyncingAfterPushNotificationTimer = self->_delayBeforeSyncingAfterPushNotificationTimer;
    self->_delayBeforeSyncingAfterPushNotificationTimer = v14;

    objc_destroyWeak(v18);
  }

  objc_destroyWeak(&location);
}

- (void)_fetchUpdatedZonesInPushNotificationForContainer:(id)a3 trigger:(int64_t)a4
{
  v6 = a3;
  if ([(NSMutableSet *)self->_containersCheckedForDatabaseChanges containsObject:v6])
  {
    v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [v6 containerIdentifier];
      *v29 = 138543362;
      *&v29[4] = v9;
      v10 = "Ignoring attempt at checking database changes since a request is already running - container: %{public}@";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v10, v29, 0xCu);

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if ([(SafariSyncController *)self isSyncEnabled])
  {
    if (self->_didCheckAccountHash)
    {
LABEL_28:
      v27 = objc_alloc_init(CKOperationConfiguration);
      [v27 setQualityOfService:17];
      [v27 setContainer:v6];
      v28 = objc_alloc_init(CKOperationGroup);
      [v28 setName:@"Push Notification Database Changes Check"];
      [v28 setExpectedSendSize:1];
      [v28 setExpectedReceiveSize:1];
      [v28 setDefaultConfiguration:v27];
      [(SafariSyncController *)self _beginFetchingUpdatedZonesInContainer:v6 isRetry:0 trigger:a4 operationGroup:v28];

      goto LABEL_29;
    }

    self->_didCheckAccountHash = 1;
    v11 = +[NSUserDefaults standardUserDefaults];
    v12 = [(ACAccountStore *)self->_accountStore safari_primaryAppleAccount];
    v13 = [v12 safari_accountHash];

    v14 = [v11 objectForKey:@"LastSavedAccountDSIDHash"];
    if (v14)
    {
      v15 = [v13 isEqualToData:v14];
      v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Current Account Hash is the same as saved hash.", v29, 2u);
        }
      }

      else
      {
        if (v17)
        {
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Account hash has changed, reset all last database server change tokens", v29, 2u);
        }

        [v11 safari_removeObjectsForKeysWithPrefix:@"LastDatabaseServerChangeToken."];
        [v11 setObject:v13 forKey:@"LastSavedAccountDSIDHash"];
      }

      goto LABEL_27;
    }

    v19 = [v11 objectForKey:@"LastSavedAccountHash"];
    v20 = [(ACAccountStore *)self->_accountStore safari_primaryAppleAccount];
    v21 = [v20 safari_deprecatedUsernameAccountHash];
    v22 = [v19 isEqualToData:v21];

    if (v22)
    {
      v23 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        v24 = "Migrating deprecated account hash. Account has not changed.";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, v29, 2u);
      }
    }

    else
    {
      v25 = [v13 isEqualToData:0];
      v23 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      v26 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if ((v25 & 1) == 0)
      {
        if (v26)
        {
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Account hash has changed, reset all last database server change tokens.", v29, 2u);
        }

        [v11 safari_removeObjectsForKeysWithPrefix:@"LastDatabaseServerChangeToken."];
        goto LABEL_26;
      }

      if (v26)
      {
        *v29 = 0;
        v24 = "Current Account Hash is the same as saved hash.";
        goto LABEL_22;
      }
    }

LABEL_26:
    [v11 setObject:v13 forKey:{@"LastSavedAccountDSIDHash", *v29}];

LABEL_27:
    goto LABEL_28;
  }

  v18 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v8 = v18;
    v9 = [v6 containerIdentifier];
    *v29 = 138543362;
    *&v29[4] = v9;
    v10 = "Ignoring attempt at checking database changes since syncing is disabled - container: %{public}@";
    goto LABEL_12;
  }

LABEL_29:
}

- (void)_beginFetchingUpdatedZonesInContainer:(id)a3 isRetry:(BOOL)a4 trigger:(int64_t)a5 operationGroup:(id)a6
{
  v9 = a3;
  v10 = a6;
  [(NSMutableSet *)self->_containersCheckedForDatabaseChanges addObject:v9];
  v11 = [v9 containerIdentifier];
  v12 = [@"LastDatabaseServerChangeToken." stringByAppendingString:v11];

  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [v13 dataForKey:v12];

  v15 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:0];
  v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v18 = [v9 containerIdentifier];
    v19 = [v10 safari_logDescription];
    *buf = 138543874;
    *&buf[4] = v18;
    *&buf[12] = 2114;
    *&buf[14] = v15;
    *&buf[22] = 2114;
    v44 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Beginning fetch database change operation for container with identifier: %{public}@, server change token: %{public}@, %{public}@", buf, 0x20u);
  }

  v20 = [[WBSRetryableCKFetchDatabaseChangesOperation alloc] initWithOwner:self handlingQueue:self->_operationDispatchQueue];
  [v20 setLog:-[CloudTabGroupSyncCoordinator _bookmarksLog]_0()];
  [v20 setGroup:v10];
  v21 = [v9 privateCloudDatabase];
  [v20 setDatabase:v21];

  [v20 setPreviousServerChangeToken:v15];
  [v20 setFetchAllChanges:1];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v44) = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100012014;
  v38[3] = &unk_100131B08;
  v40 = buf;
  v22 = v10;
  v39 = v22;
  v41 = v42;
  v23 = objc_retainBlock(v38);
  [v20 setRecordZoneWithIDChangedBlock:v23];
  [v20 setRecordZoneWithIDWasDeletedBlock:v23];
  [v20 setRecordZoneWithIDWasPurgedBlock:v23];
  [v20 setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock:v23];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000124DC;
  v29[3] = &unk_100131B58;
  v24 = v9;
  v30 = v24;
  v25 = v22;
  v31 = v25;
  v26 = v12;
  v36 = a5;
  v32 = v26;
  v34 = buf;
  v37 = a4;
  v27 = v15;
  v33 = v27;
  v35 = v42;
  [v20 setFetchDatabaseChangesCompletionBlock:v29];
  [(NSOperationQueue *)self->_operationQueue addOperation:v20];

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(buf, 8);
}

- (void)_cancelPushNotificationSyncDelayTimer
{
  if ([(NSTimer *)self->_delayBeforeSyncingAfterPushNotificationTimer isValid])
  {
    transactionForTimerToDelaySyncing = self->_transactionForTimerToDelaySyncing;
    self->_transactionForTimerToDelaySyncing = 0;
  }

  [(NSTimer *)self->_delayBeforeSyncingAfterPushNotificationTimer invalidate];
  delayBeforeSyncingAfterPushNotificationTimer = self->_delayBeforeSyncingAfterPushNotificationTimer;
  self->_delayBeforeSyncingAfterPushNotificationTimer = 0;
}

- (void)_saveBookmarksZoneSubscriptionIfNeededInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CloudBookmarksMigrationCoordinator *)self->_migrationCoordinator migrationState]- 4 < 0xFFFFFFFFFFFFFFFDLL;
  objc_initWeak(&location, self);
  bookmarkStore = self->_bookmarkStore;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100012E90;
  v12[3] = &unk_100131BA8;
  objc_copyWeak(&v15, &location);
  v10 = v7;
  v14 = v10;
  v11 = v6;
  v13 = v11;
  [(CloudBookmarkStore *)bookmarkStore fetchBookmarksZoneSubscriptionStatusCreatingZoneIfNeeded:v8 inOperationGroup:v11 withCompletionHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_saveCloudTabsZoneSubscriptionIfNeededInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  tabSyncArbiter = self->_tabSyncArbiter;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100013250;
  v11[3] = &unk_100131BF8;
  v9 = v6;
  v12 = v9;
  objc_copyWeak(&v14, &location);
  v10 = v7;
  v13 = v10;
  [(CloudTabSyncArbiter *)tabSyncArbiter getCloudTabRemoteStoreWithCompletionHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_attemptSyncAndFallBackToMigrationIfPossibleForTrigger:(int64_t)a3
{
  if (self->_isMigrating)
  {
    v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v4 = "Ignoring request to sync/migrate because migration is in progress";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, buf, 2u);
    return;
  }

  if (self->_isSyncing)
  {
    v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v4 = "Ignoring request to sync/migrate because sync is in progress";
    goto LABEL_7;
  }

  v7 = os_transaction_create();
  activityCheckInQueue = self->_activityCheckInQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013724;
  block[3] = &unk_100131C70;
  v11 = v7;
  v12 = self;
  v13 = a3;
  v9 = v7;
  dispatch_async(activityCheckInQueue, block);
}

- (void)_attemptCloudTabsSyncForPushNotification
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Did receive Cloud Tabs update notification", buf, 2u);
  }

  v4 = os_transaction_create();
  tabSyncArbiter = self->_tabSyncArbiter;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013E3C;
  v7[3] = &unk_100131CC0;
  v8 = v4;
  v6 = v4;
  [(CloudTabSyncArbiter *)tabSyncArbiter getCloudTabRemoteStoreWithCompletionHandler:v7];
}

- (void)_updateCloudTabsSyncCoordinatorAfterUserAccountChange:(int64_t)a3
{
  if (a3 == 1)
  {
    [(CloudTabSyncArbiter *)self->_tabSyncArbiter deleteDatabaseAndSyncDataForAccountChange];
  }

  tabSyncArbiter = self->_tabSyncArbiter;

  [(CloudTabSyncArbiter *)tabSyncArbiter userAccountChanged];
}

- (void)_scheduleInitialManateeCloudTabFetchRetryXPCActivityRegisteringIfNeeded:(BOOL)a3
{
  xpc_transaction_begin();
  activityCheckInQueue = self->_activityCheckInQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100014018;
  v6[3] = &unk_100131D10;
  v6[4] = self;
  v7 = a3;
  dispatch_async(activityCheckInQueue, v6);
}

- (void)_saveCloudSettingsZoneSubscriptionIfNeededInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  settingsStore = self->_settingsStore;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000144B0;
  v11[3] = &unk_100131D38;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [(CloudSettingStore *)settingsStore fetchCloudSettingsZoneSubscriptionInOperationGroup:v9 withCompletionHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_updateCloudSettingsSyncCoordinatorAfterUserAccountChange:(int64_t)a3
{
  [(CloudSettingSyncCoordinator *)self->_settingsSyncCoordinator clearServerChangeToken];
  [(CloudSettingSyncCoordinator *)self->_settingsSyncCoordinator userAccountChanged];
  if (a3 == 2)
  {
    v5 = [(CloudSettingStore *)self->_settingsStore createOperationGroupWithName:@"Cloud Settings User Account Modified" useLargerExpectedSendSize:0];
    v9 = v5;
    v6 = self;
    v7 = 4;
LABEL_9:
    [(SafariSyncController *)v6 _attemptCloudSettingsSyncForTrigger:v7 inOperationGroup:v5];

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    [(CloudSettingSyncCoordinator *)self->_settingsSyncCoordinator setNeedsAccountHashCheck];
    [(CloudSettingStore *)self->_settingsStore clearCachedCloudSettingsRecordZone];
    v5 = [(CloudSettingStore *)self->_settingsStore createOperationGroupWithName:@"Cloud Settings User Account Added" useLargerExpectedSendSize:0];
    v9 = v5;
    v6 = self;
    v7 = 2;
    goto LABEL_9;
  }

  settingsStore = self->_settingsStore;

  [(CloudSettingStore *)settingsStore clearCachedCloudSettingsRecordZone];
}

- (void)_attemptCloudSettingsSyncForTrigger:(int64_t)a3 inOperationGroup:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_isCustomizationSyncing)
  {
    v8 = sub_10000300C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [v7 safari_logDescription];
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Ignoring request to sync because sync is in progress with %{public}@", buf, 0xCu);
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014AD8;
    block[3] = &unk_100131C70;
    block[4] = self;
    v13 = a3;
    v12 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_performSettingsSyncForTrigger:(int64_t)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[WBSFeatureAvailability isCustomizationSyncEnabled];
  v11 = sub_10000300C();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = v11;
      v14 = sub_100003044(a3);
      v15 = [v8 safari_logDescription];
      *buf = 138543618;
      v23 = v14;
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "*** Starting Cloud settings sync for trigger: %{public}@ with %{public}@", buf, 0x16u);
    }

    self->_isCustomizationSyncing = 1;
    settingsSyncCoordinator = self->_settingsSyncCoordinator;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100014D08;
    v19[3] = &unk_100131D60;
    v19[4] = self;
    v20 = v8;
    v21 = v9;
    [(CloudSettingSyncCoordinator *)settingsSyncCoordinator beginSyncingInOperationGroup:v20 completionHandler:v19];
  }

  else
  {
    if (v12)
    {
      v17 = v11;
      v18 = [v8 safari_logDescription];
      *buf = 138543362;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Safari Settings syncing is disabled. Cloud settings sync aborted with %{public}@", buf, 0xCu);
    }

    if (v9)
    {
      (*(v9 + 2))(v9, 3);
    }
  }
}

- (void)_cancelBackgroundImageSaveDelayTimer
{
  [(NSTimer *)self->_delayBeforeSavingBackgroundImageTimer invalidate];
  delayBeforeSavingBackgroundImageTimer = self->_delayBeforeSavingBackgroundImageTimer;
  self->_delayBeforeSavingBackgroundImageTimer = 0;
}

- (void)_attemptCloudExtensionsSyncForPushNotification
{
  v2 = sub_1000D23FC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Notifying Safari of extension state changes in response to a push notification", v4, 2u);
  }

  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 postNotificationName:WBSSafariBookmarksSyncAgentCloudExtensionsWereUpdatedOnServerNotificationName object:0 userInfo:0 deliverImmediately:1];
}

- (void)_saveCloudExtensionsZoneSubscriptionIfNeededInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  extensionStore = self->_extensionStore;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100015380;
  v11[3] = &unk_100131BA8;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v13 = v9;
  v10 = v6;
  v12 = v10;
  [(CloudExtensionStore *)extensionStore fetchCloudExtensionsZoneSubscriptionInOperationGroup:v10 completionHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_updateCloudExtensionsSyncCoordinatorAfterUserAccountChange:(int64_t)a3
{
  if (a3 == 1)
  {
    [(CloudExtensionSyncCoordinator *)self->_extensionsSyncCoordinator deleteDatabaseWithCompletionHandler:&stru_100131D80];
  }

  extensionsSyncCoordinator = self->_extensionsSyncCoordinator;

  [(CloudExtensionSyncCoordinator *)extensionsSyncCoordinator userAccountChanged];
}

- (void)cloudSettingSyncCoordinator:(id)a3 didReceiveRemoteCloudSettingsUpdateWithRecord:(id)a4
{
  v6 = a4;
  if ([(SafariSyncController *)self isSyncEnabled])
  {
    v5 = os_transaction_create();
    [(WBSSettingsSyncEngineAccess *)self->_settingsSyncEngine didReceiveRemoteCloudSettingsUpdateWithRecord:v6];
  }
}

- (void)cloudSettingSyncCoordinator:(id)a3 didDeleteRemoteRecordWithID:(id)a4
{
  v6 = a4;
  if ([(SafariSyncController *)self isSyncEnabled])
  {
    v5 = os_transaction_create();
    [(WBSSettingsSyncEngineAccess *)self->_settingsSyncEngine didDeleteRemoteRecordWithID:v6];
  }
}

- (void)cloudSettingSyncCoordinator:(id)a3 storeRemoteCloudSettingsUpdateWithRecord:(id)a4
{
  v18 = a4;
  if ([(SafariSyncController *)self isSyncEnabled])
  {
    if (!self->_fetchedPerSiteSettings)
    {
      v5 = +[NSMutableArray array];
      fetchedPerSiteSettings = self->_fetchedPerSiteSettings;
      self->_fetchedPerSiteSettings = v5;
    }

    if (+[WBSFeatureAvailability isPerSiteSettingSyncEnabled])
    {
      v7 = [v18 recordType];
      v8 = [v7 isEqualToString:WBSCloudPerSiteSettingRecordType];

      if (v8)
      {
        [(NSMutableArray *)self->_fetchedPerSiteSettings addObject:v18];
      }
    }

    if (+[WBSFeatureAvailability isStartPageSettingSyncEnabled])
    {
      if (!self->_fetchedSettingsDictionary)
      {
        v9 = +[NSMutableDictionary dictionary];
        fetchedSettingsDictionary = self->_fetchedSettingsDictionary;
        self->_fetchedSettingsDictionary = v9;
      }

      v11 = [v18 recordType];
      v12 = [v11 isEqualToString:WBSCloudSettingRecordType];

      if (v12)
      {
        v13 = self->_fetchedSettingsDictionary;
        v14 = [v18 recordID];
        v15 = [v14 recordName];
        [(NSMutableDictionary *)v13 setObject:v18 forKeyedSubscript:v15];
      }

      else
      {
        v16 = [v18 recordType];
        v17 = [v16 isEqualToString:WBSCloudBackgroundImageRecordType];

        if (v17)
        {
          [(NSMutableDictionary *)self->_fetchedSettingsDictionary setObject:v18 forKeyedSubscript:WBSSafariBackgroundImageKey];
        }
      }
    }
  }
}

- (void)cloudSettingSyncCoordinator:(id)a3 performInitialSyncDownInOperationGroup:(id)a4
{
  v5 = a4;
  v51 = v5;
  if (+[WBSFeatureAvailability isPerSiteSettingSyncEnabled])
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v6 = self->_fetchedPerSiteSettings;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v61;
      v10 = WBSCloudPerSiteSettingName;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v61 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v60 + 1) + 8 * i);
          v13 = [v12 safari_encryptedValues];
          v14 = [v13 objectForKeyedSubscript:v10];

          if ([WBSPerSitePreferencesSQLiteStore isPreferenceSyncable:v14])
          {
            [(SafariSyncController *)self cloudSettingSyncCoordinator:self->_settingsSyncCoordinator didReceiveRemoteCloudSettingsUpdateWithRecord:v12];
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v8);
    }

    v5 = v51;
  }

  fetchedPerSiteSettings = self->_fetchedPerSiteSettings;
  self->_fetchedPerSiteSettings = 0;

  if (+[WBSFeatureAvailability isStartPageSettingSyncEnabled])
  {
    v16 = [(WBSSettingsSyncEngineAccess *)self->_settingsSyncEngine backgroundImageExists];
    v17 = WBSSafariBackgroundImageKey;
    if (v16 && ([(NSMutableDictionary *)self->_fetchedSettingsDictionary objectForKeyedSubscript:WBSSafariBackgroundImageKey], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
    {
      v21 = +[NSFileManager defaultManager];
      v22 = [v21 safari_startPageBackgroundImageFileURLForDefaultProfile];
      [(SafariSyncController *)self _saveCloudBackgroundImageWithURL:v22 isLightAppearance:[(WBSSettingsSyncEngineAccess *)self->_settingsSyncEngine backgroundImageAppearanceIsLight] inOperationGroup:v5 successCompletionHandler:&stru_100131DA0];
    }

    else
    {
      v19 = [(NSMutableDictionary *)self->_fetchedSettingsDictionary objectForKeyedSubscript:v17];

      if (!v19)
      {
LABEL_19:
        v23 = +[NSMutableArray array];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        obj = [(WBSSettingsSyncEngineAccess *)self->_settingsSyncEngine syncSettingsUpDictionary];
        v24 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v57;
          v27 = WBSCloudSettingRecordName;
          v53 = WBSCloudSettingRecordType;
          v52 = WBSCloudSettingValue;
          do
          {
            v28 = 0;
            v54 = v25;
            do
            {
              if (*v57 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v56 + 1) + 8 * v28);
              fetchedSettingsDictionary = self->_fetchedSettingsDictionary;
              v31 = [v29 objectForKeyedSubscript:v27];
              v32 = [(NSMutableDictionary *)fetchedSettingsDictionary objectForKeyedSubscript:v31];

              if (v32)
              {
                settingsSyncCoordinator = self->_settingsSyncCoordinator;
                v34 = self->_fetchedSettingsDictionary;
                v35 = [v29 objectForKeyedSubscript:v27];
                v36 = [(NSMutableDictionary *)v34 objectForKeyedSubscript:v35];
                [(SafariSyncController *)self cloudSettingSyncCoordinator:settingsSyncCoordinator didReceiveRemoteCloudSettingsUpdateWithRecord:v36];
              }

              else
              {
                v37 = [CKRecord alloc];
                v38 = [CKRecordID alloc];
                v39 = [v29 objectForKeyedSubscript:v27];
                sub_10000C250();
                v40 = v27;
                v41 = self;
                v42 = v26;
                v44 = v43 = v23;
                v45 = [v38 initWithRecordName:v39 zoneID:v44];
                v35 = [v37 initWithRecordType:v53 recordID:v45];

                v23 = v43;
                v26 = v42;
                self = v41;
                v27 = v40;

                v25 = v54;
                v46 = [v29 objectForKeyedSubscript:v52];
                v47 = [v35 safari_encryptedValues];
                [v47 setObject:v46 forKeyedSubscript:v52];

                [v23 addObject:v35];
              }

              v28 = v28 + 1;
            }

            while (v25 != v28);
            v25 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
          }

          while (v25);
        }

        v5 = v51;
        if ([v23 count])
        {
          v48 = self->_settingsSyncCoordinator;
          v49 = [v23 copy];
          [(CloudSettingSyncCoordinator *)v48 saveRecords:v49 inOperationGroup:v51 successCompletionHandler:&stru_100131DC0];
        }

        [(SafariSyncController *)self _deleteLegacySectionIdentifiersInOperationGroup:v51];
        v50 = self->_fetchedSettingsDictionary;
        self->_fetchedSettingsDictionary = 0;

        goto LABEL_32;
      }

      v20 = self->_settingsSyncCoordinator;
      v21 = [(NSMutableDictionary *)self->_fetchedSettingsDictionary objectForKeyedSubscript:v17];
      [(SafariSyncController *)self cloudSettingSyncCoordinator:v20 didReceiveRemoteCloudSettingsUpdateWithRecord:v21];
    }

    goto LABEL_19;
  }

LABEL_32:
}

- (void)pcsIdentitiesDidChangeForCloudSettingSyncCoordinator:(id)a3
{
  if ([(SafariSyncController *)self isSyncEnabled])
  {
    v4 = [(CloudSettingStore *)self->_settingsStore createOperationGroupWithName:@"Cloud Settings PCS Identity Changed" useLargerExpectedSendSize:0];
    [(SafariSyncController *)self _attemptCloudSettingsSyncForTrigger:6 inOperationGroup:v4];
  }
}

- (void)cloudSettingSyncCoordinator:(id)a3 setPageZoomSyncData:(id)a4 forRecordName:(id)a5 completionHandler:(id)a6
{
  v12 = a4;
  v9 = a5;
  v10 = a6;
  if ([(SafariSyncController *)self isSyncEnabled])
  {
    v11 = os_transaction_create();
    [(WBSSettingsSyncEngineAccess *)self->_settingsSyncEngine setPageZoomSyncData:v12 forRecordName:v9 completionHandler:v10];
  }

  else
  {
    v10[2](v10, 0);
  }
}

- (void)_deleteLegacySectionIdentifiersInOperationGroup:(id)a3
{
  v15 = a3;
  v4 = +[NSMutableArray array];
  v21[0] = WBSLegacySafariSettingsStartPageFavoritesVisibilityKey;
  v21[1] = WBSLegacySafariSettingsStartPageFrequentlyVisitedSitesVisibilityKey;
  v21[2] = WBSLegacySafariSettingsStartPagePrivacyReportVisibilityKey;
  v21[3] = WBSLegacySafariSettingsStartPageSiriSuggestionsVisibilityKey;
  v21[4] = WBSLegacySafariSettingsStartPageCloudTabsVisibilityKey;
  v21[5] = WBSLegacySafariSettingsStartPageReadingListVisibilityKey;
  v21[6] = WBSLegacySafariSettingsStartPageHighlightsVisibilityKey;
  v21[7] = WBSLegacySafariSettingsStartPageBackgroundImageVisibilityKey;
  [NSArray arrayWithObjects:v21 count:8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_fetchedSettingsDictionary objectForKeyedSubscript:v10];

        if (v11)
        {
          v12 = [CKRecordID alloc];
          v13 = sub_10000C250();
          v14 = [v12 initWithRecordName:v10 zoneID:v13];
          [v4 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    [(CloudSettingSyncCoordinator *)self->_settingsSyncCoordinator deleteRecords:v4 inOperationGroup:v15 completionHandler:&stru_100131E00];
  }
}

- (id)tabSyncArbiter:(id)a3 containerUsingManatee:(BOOL)a4
{
  v4 = 80;
  if (a4)
  {
    v4 = 240;
  }

  return *(&self->super.isa + v4);
}

- (void)cloudTabSyncArbiterDidChangeCloudKitContainer:(id)a3
{
  v4 = sub_100001B78();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Received container change callback. Registering for a new zone subscription", buf, 2u);
  }

  xpc_transaction_begin();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016274;
  block[3] = &unk_100131408;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_migrateFromDAVInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "*** Migration to CloudKit started", v9, 2u);
  }

  kdebug_trace();
  [(CloudBookmarksMigrationCoordinator *)self->_migrationCoordinator startCoordinatingMigrationInOperationGroup:v7 completionHandler:v6];
}

- (void)_checkInXPCActivityWithIdentifier:(const char *)a3 criteria:(id)a4 registerIfNeeded:(BOOL)a5 performBlock:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = dispatch_semaphore_create(0);
  v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v26 = a3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Checking In xpc activity with identifier %{public}s", buf, 0xCu);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100016538;
  v18[3] = &unk_100131EA0;
  v22 = v11;
  v23 = a3;
  v19 = v10;
  v20 = v12;
  v24 = a5;
  v21 = self;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  xpc_activity_register(a3, XPC_ACTIVITY_CHECK_IN, v18);
  v17 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v15, v17);
}

- (double)_retryIntervalToRegisterCloudKitSubscriptionsWithNumberOfFailedAttempts:(int64_t)a3 lastCKError:(id)a4
{
  v5 = [a4 userInfo];
  v6 = [v5 objectForKeyedSubscript:CKErrorRetryAfterKey];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = 0.0;
  if (isKindOfClass)
  {
    [v6 doubleValue];
  }

  v9 = fmin(fmax(v8, 10.0) * (a3 + 1), 210.0);

  return v9;
}

- (void)_didRegisterCloudKitSubscriptions:(unint64_t)a3 timer:(id)a4 lastError:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(WBSScopeExitHandler);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100016DAC;
  v22[3] = &unk_100131408;
  v22[4] = self;
  [v13 setHandler:v22];
  dispatch_resume(v10);
  if (self->_ignoreOngoingCloudKitSubscriptionRegistrationResult)
  {
LABEL_2:
    dispatch_source_cancel(v10);
    v12[2](v12, 0, 1);
    goto LABEL_7;
  }

  self->_remainingCloudKitSubscriptionsToRegister = a3 ^ 0x3F;
  self->_lastSuccessfulCloudKitSubscriptions = a3;
  v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v15 = v14;
  if (a3 == 63)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v21[0] = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Every CloudKit subscription registration succeeded or we were already subscribed", v21, 2u);
    }

    [(SafariSyncController *)self updatePushTopicSubscriptions];
    dispatch_source_cancel(v10);
    v12[2](v12, 1, 1);
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10001B81C(&self->_remainingCloudKitSubscriptionsToRegister, v15);
    }

    if ([v11 safari_matchesErrorDomain:CKErrorDomain andCode:3])
    {
      goto LABEL_2;
    }

    v23[0] = CKErrorDomain;
    v23[1] = @"com.apple.Safari.CloudBookmarks";
    v24[0] = &off_10013C8C0;
    v24[1] = &off_10013C8D8;
    v16 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
    if ([v11 safari_matchesErrorDomainsAndCodes:v16])
    {
      dispatch_source_cancel(v10);
      v12[2](v12, 1, 1);
    }

    else
    {
      v17 = self->_numberOfFailedCloudKitSubscriptionRegistrationAttempts + 1;
      self->_numberOfFailedCloudKitSubscriptionRegistrationAttempts = v17;
      if (v17 < 7)
      {
        [SafariSyncController _retryIntervalToRegisterCloudKitSubscriptionsWithNumberOfFailedAttempts:"_retryIntervalToRegisterCloudKitSubscriptionsWithNumberOfFailedAttempts:lastCKError:" lastCKError:?];
        v19 = v18 * 1000000000.0;
        v20 = dispatch_time(0, (v18 * 1000000000.0));
        dispatch_source_set_timer(v10, v20, v19, 0x3B9ACA00uLL);
      }

      else
      {
        dispatch_source_cancel(v10);
        v12[2](v12, 1, 0);
        [(SafariSyncController *)self _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:0 qualityOfService:9 delay:18000];
      }
    }
  }

LABEL_7:
}

- (void)_registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:(BOOL)a3 ignoreOnGoingRegistration:(BOOL)a4 resetSubscriptions:(unint64_t)a5 qualityOfService:(int64_t)a6 delay:(int64_t)a7
{
  v9 = a4;
  v10 = a3;
  if (a4 || !self->_cloudKitSubscriptionRegistrationIsInProgress)
  {
    v13 = self->_remainingCloudKitSubscriptionsToRegister | a5;
    self->_lastSuccessfulCloudKitSubscriptions &= ~a5;
    self->_remainingCloudKitSubscriptionsToRegister = v13;
    v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      lastSuccessfulCloudKitSubscriptions = self->_lastSuccessfulCloudKitSubscriptions;
      v16 = v14;
      v17 = sub_100016DB8(lastSuccessfulCloudKitSubscriptions);
      v18 = sub_100016DB8(self->_remainingCloudKitSubscriptionsToRegister);
      *buf = 67110146;
      v26 = v10;
      v27 = 1024;
      v28 = v9;
      v29 = 2048;
      v30 = a7;
      v31 = 2114;
      v32 = v17;
      v33 = 2114;
      v34 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Registering for CloudKit subscriptions xpc activity. Register if needed: %d, ignore ongoing registration: %d delay: %lld, last successful registrations: %{public}@, remaining subscriptions to register: %{public}@", buf, 0x2Cu);
    }

    [(SafariSyncController *)self _retryIntervalToRegisterCloudKitSubscriptionsWithNumberOfFailedAttempts:0 lastCKError:0];
    v20 = v19;
    if (v9)
    {
      *&self->_lastSuccessfulCloudKitSubscriptions = xmmword_1000E8C20;
      self->_ignoreOngoingCloudKitSubscriptionRegistrationResult = 1;
      cloudKitSubscriptionRegistrationTimer = self->_cloudKitSubscriptionRegistrationTimer;
      if (cloudKitSubscriptionRegistrationTimer)
      {
        dispatch_source_set_timer(cloudKitSubscriptionRegistrationTimer, 0, (v19 * 1000000000.0), 0x3B9ACA00uLL);
      }
    }

    xpc_transaction_begin();
    activityCheckInQueue = self->_activityCheckInQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000170F4;
    block[3] = &unk_100131F68;
    block[4] = self;
    block[5] = a7;
    v24 = v10;
    *&block[6] = v20;
    block[7] = a6;
    dispatch_async(activityCheckInQueue, block);
  }

  else
  {
    v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "No need to register for CloudKit subscriptions because a registration is in progress", buf, 2u);
    }
  }
}

- (void)_registerRemainingCloudKitSubscriptions:(unint64_t)a3 withLastSuccessfulSubscriptions:(unint64_t)a4 inOperationGroup:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a5;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100017C64;
  v29[3] = &unk_100131F90;
  v32 = a3;
  v33 = a4;
  v11 = a6;
  v31 = v11;
  v29[4] = self;
  v12 = v10;
  v30 = v12;
  v13 = objc_retainBlock(v29);
  v14 = v13;
  if (a3)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100017E14;
    v26[3] = &unk_100131FB8;
    v28 = v13;
    v26[4] = self;
    v27 = v12;
    [(SafariSyncController *)self _saveBookmarksZoneSubscriptionIfNeededInOperationGroup:v27 withCompletionHandler:v26];

    v15 = v28;
LABEL_14:

    goto LABEL_15;
  }

  if ((a3 & 2) != 0)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100017F00;
    v24[3] = &unk_100131FE0;
    v25 = v13;
    [(SafariSyncController *)self _saveCloudTabsZoneSubscriptionIfNeededInOperationGroup:v12 withCompletionHandler:v24];
    v15 = v25;
    goto LABEL_14;
  }

  if ((a3 & 4) != 0)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100017F1C;
    v22[3] = &unk_100131FE0;
    v23 = v13;
    [(SafariSyncController *)self _saveTabGroupsPrivateDatabaseSubscriptionIfNeededInOperationGroup:v12 withCompletionHandler:v22];
    v15 = v23;
    goto LABEL_14;
  }

  if ((a3 & 8) != 0)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100017F38;
    v20[3] = &unk_100131FE0;
    v21 = v13;
    [(SafariSyncController *)self _saveTabGroupsSharedDatabaseSubscriptionIfNeededInOperationGroup:v12 withCompletionHandler:v20];
    v15 = v21;
    goto LABEL_14;
  }

  if ((a3 & 0x10) != 0)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100017F54;
    v18[3] = &unk_100131FE0;
    v19 = v13;
    [(SafariSyncController *)self _saveCloudSettingsZoneSubscriptionIfNeededInOperationGroup:v12 withCompletionHandler:v18];
    v15 = v19;
    goto LABEL_14;
  }

  if ((a3 & 0x20) != 0)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100017F70;
    v16[3] = &unk_100131FE0;
    v17 = v13;
    [(SafariSyncController *)self _saveCloudExtensionsZoneSubscriptionIfNeededInOperationGroup:v12 withCompletionHandler:v16];
    v15 = v17;
    goto LABEL_14;
  }

  (*(v11 + 2))(v11, a4, 0);
LABEL_15:
}

- (void)_registerPeriodicRemoteMigrationStateObserverXPCActivityRegisteringIfNeeded:(BOOL)a3
{
  xpc_transaction_begin();
  activityCheckInQueue = self->_activityCheckInQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100018058;
  v6[3] = &unk_100131D10;
  v6[4] = self;
  v7 = a3;
  dispatch_async(activityCheckInQueue, v6);
}

- (void)registerMigrationXPCActivity:(BOOL)a3
{
  v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Registering migration XPC activity", buf, 2u);
  }

  xpc_transaction_begin();
  activityCheckInQueue = self->_activityCheckInQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018780;
  v7[3] = &unk_100131D10;
  v7[4] = self;
  v8 = a3;
  dispatch_async(activityCheckInQueue, v7);
}

- (void)_saveTabGroupsPrivateDatabaseSubscriptionIfNeededInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  tabGroupSyncManager = self->_tabGroupSyncManager;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100018DB4;
  v11[3] = &unk_100131BA8;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v13 = v9;
  v10 = v6;
  v12 = v10;
  [(CloudTabGroupSyncManager *)tabGroupSyncManager fetchPrivateDatabaseSubscriptionStatusInOperationGroup:v10 withCompletionHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_saveTabGroupsSharedDatabaseSubscriptionIfNeededInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  tabGroupSyncManager = self->_tabGroupSyncManager;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001914C;
  v11[3] = &unk_100131BA8;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v13 = v9;
  v10 = v6;
  v12 = v10;
  [(CloudTabGroupSyncManager *)tabGroupSyncManager fetchSharedDatabaseSubscriptionStatusInOperationGroup:v10 withCompletionHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_updateTabGroupsSyncCoordinatorAfterUserAccountChange:(int64_t)a3
{
  v3 = self;
  if (a3 == 2)
  {
    tabGroupSyncManager = self->_tabGroupSyncManager;
    v5 = 4;
LABEL_9:

    [(SafariSyncController *)self _attemptTabGroupsSyncForManager:tabGroupSyncManager withTrigger:v5];
    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    [(CloudTabGroupSyncManager *)self->_tabGroupSyncManager clearCachedRecordZone];
    tabGroupSyncManager = v3->_tabGroupSyncManager;
    self = v3;
    v5 = 2;
    goto LABEL_9;
  }

  v6 = self->_tabGroupSyncManager;

  [(CloudTabGroupSyncManager *)v6 clearCachedRecordZone];
}

- (void)_runTabGroupSyncUsingXPCActivityForManager:(id)a3 tigger:(int64_t)a4
{
  v6 = a3;
  v7 = os_transaction_create();
  activityCheckInQueue = self->_activityCheckInQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100019538;
  v11[3] = &unk_1001320A8;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v15 = a4;
  v9 = v6;
  v10 = v7;
  dispatch_async(activityCheckInQueue, v11);
}

- (void)_attemptTabGroupsSyncForManager:(id)a3 withTrigger:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 1 && [v6 shouldScheduleDiscretionarySync])
  {
    v8 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Scheduling a discretionary tab groups sync", buf, 2u);
    }

    [(SafariSyncController *)self _runTabGroupSyncUsingXPCActivityForManager:v7 tigger:1];
  }

  else
  {
    v9 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Scheduling an immediate tab groups sync", buf, 2u);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100019854;
    v11[3] = &unk_1001320D0;
    v12 = os_transaction_create();
    v13 = self;
    v14 = v7;
    v15 = a4;
    v10 = v12;
    [(SafariSyncController *)self _runTabGroupsSyncForManager:v14 withTrigger:a4 completionHandler:v11];
  }
}

- (void)_runTabGroupsSyncForManager:(id)a3 withTrigger:(int64_t)a4 completionHandler:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100019994;
  v9[3] = &unk_100132120;
  v9[4] = self;
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v7 = v11;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)_performTabGroupSyncForManager:(id)a3 withTrigger:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v10 = objc_claimAutoreleasedReturnValue(), [v8 databasePath], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "fileExistsAtPath:isDirectory:", v11, 0), v11, v10, (v12 & 1) == 0))
  {
    v14 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = [v8 configuration];
      [v16 storeOwner];
      v17 = WBNSStringFromCollectionStoreOwner();
      v18 = sub_100003044(a4);
      *buf = 138543618;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Ignoring request to sync TabGroups for manager %{public}@ with trigger %{public}@ because the database does not exist yet", buf, 0x16u);
    }

    if (v9)
    {
      v9[2](v9, 6);
    }
  }

  else
  {
    v13 = sub_100003044(a4);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100019DB0;
    v19[3] = &unk_100132148;
    v21 = v9;
    v19[4] = self;
    v20 = v8;
    [v20 beginSyncingForTrigger:v13 isLocalChange:a4 != 1 completionHandler:v19];
  }
}

- (void)userDidUpdateCloudTabGroupSyncManagerDatabase:(id)a3
{
  v4 = a3;
  if ([(SafariSyncController *)self isSyncEnabled])
  {
    [(SafariSyncController *)self _attemptTabGroupsSyncForManager:v4 withTrigger:0];
  }
}

- (void)cloudTabGroupSyncManagerPCSIdentitiesDidChange:(id)a3
{
  v4 = a3;
  if ([(SafariSyncController *)self isSyncEnabled])
  {
    [(SafariSyncController *)self _attemptTabGroupsSyncForManager:v4 withTrigger:6];
  }
}

- (void)cloudTabGroupSyncManager:(id)a3 didFindChangesToRecordZonesWithIDs:(id)a4
{
  v5 = a4;
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 valueForKey:@"ckShortDescription"];
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CloudTabGroupSyncManager did find changes for zoneIDs: %{public}@", &v12, 0xCu);
  }

  v9 = +[CloudTabRemoteStore cloudTabsRecordZoneID];
  v10 = [v5 containsObject:v9];

  if (v10)
  {
    v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Attempting to sync CloudKit Tabs in response to CloudTabGroupSyncManager detecting changes in CloudTabs record zone", &v12, 2u);
    }

    [(SafariSyncController *)self _attemptCloudTabsSyncForPushNotification];
  }
}

- (id)_cyclerAssistant
{
  cyclerAssistant = self->_cyclerAssistant;
  if (!cyclerAssistant)
  {
    v4 = [[CyclerCloudBookmarksAssistant alloc] initWithBookmarkStore:self->_bookmarkStore databaseAccessor:self->_databaseAccessor migrationCoordinator:self->_migrationCoordinator];
    v5 = self->_cyclerAssistant;
    self->_cyclerAssistant = v4;

    cyclerAssistant = self->_cyclerAssistant;
  }

  return cyclerAssistant;
}

- (void)_didDetectPossibleBug:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"bugIDs"];

  v6 = [v5 count];
  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      sub_10001BC08(v7, v5);
    }

    [(NSMutableSet *)self->_detectedBugIDs addObjectsFromArray:v5];
  }

  else
  {
    if (v8)
    {
      sub_10001BCD0();
    }

    [(NSMutableSet *)self->_detectedBugIDs addObject:&stru_100137BA8];
  }
}

- (void)_sendDetectedBugNotificationIfNeeded
{
  v13 = +[NSUserDefaults safari_cloudBookmarksDefaults];
  if ([v13 BOOLForKey:WBSEnableCloudKitBookmarkDebugUtilitiesPreferenceKey])
  {
    v3 = [(NSMutableSet *)self->_detectedBugIDs count];

    if (v3)
    {
      [(NSMutableSet *)self->_detectedBugIDs removeObject:&stru_100137BA8];
      v4 = [(NSMutableSet *)self->_detectedBugIDs allObjects];
      v5 = [v4 sortedArrayUsingSelector:"localizedStandardCompare:"];

      [(NSMutableSet *)self->_detectedBugIDs removeAllObjects];
      v6 = [v5 count];
      v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        if (v8)
        {
          sub_10001BD04(v7, v5);
        }

        v9 = +[NSDistributedNotificationCenter defaultCenter];
        v10 = WBSSafariBookmarksSyncAgentDidDetectBugNotificationName;
        if (v5)
        {
          v11 = v5;
        }

        else
        {
          v11 = &__NSArray0__struct;
        }

        v14 = WBSSafariBookmarksSyncAgentBugIDsKey;
        v15 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        [v9 postNotificationName:v10 object:0 userInfo:v12];
      }

      else if (v8)
      {
        sub_10001BDA8();
      }
    }
  }

  else
  {
  }
}

- (void)_scheduleHierarchyCheckTimer
{
  v3 = +[NSUserDefaults safari_cloudBookmarksDefaults];
  v4 = [v3 BOOLForKey:@"DebugHierarchyCheckerEnabled"];

  if (v4)
  {
    v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"_hierarchyCheckTimer:" selector:0 userInfo:1 repeats:30.0];
    hierarchyCheckTimer = self->_hierarchyCheckTimer;
    self->_hierarchyCheckTimer = v5;
  }
}

- (void)_invalidateHierarchyCheckTimer
{
  [(NSTimer *)self->_hierarchyCheckTimer invalidate];
  hierarchyCheckTimer = self->_hierarchyCheckTimer;
  self->_hierarchyCheckTimer = 0;
}

- (void)_hierarchyCheckTimer:(id)a3
{
  if (self->_hierarchyCheckTimer == a3)
  {
    [(SafariSyncController *)self _performHiearchyCheck];
  }

  else
  {
    [a3 invalidate];
  }
}

- (void)_performHiearchyCheck
{
  v3 = +[NSUserDefaults safari_cloudBookmarksDefaults];
  v4 = [v3 BOOLForKey:@"DebugHierarchyCheckerEnabled"];

  if (v4)
  {
    v5 = [[CloudBookmarkDebugHierarchyChecker alloc] initWithDatabaseAccessor:self->_databaseAccessor];
    if (![(CloudBookmarkDebugHierarchyChecker *)v5 performHierarchyCheck])
    {
      [(SafariSyncController *)self _hierarchyCheckerDidFail];
    }
  }

  else
  {

    [(SafariSyncController *)self _invalidateHierarchyCheckTimer];
  }
}

- (void)_hierarchyCheckerDidFail
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_10001BDDC();
  }

  [(SafariSyncController *)self _invalidateHierarchyCheckTimer];
  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 postNotificationName:WBSSafariBookmarksSyncAgentDidDetectHierarchyIssueNotificationName object:0 userInfo:0];
}

@end