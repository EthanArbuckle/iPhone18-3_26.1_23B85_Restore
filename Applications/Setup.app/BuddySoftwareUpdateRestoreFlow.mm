@interface BuddySoftwareUpdateRestoreFlow
+ (BOOL)controllerNeedsToRunWithPendingRestoreState:(id)state buddyPreferences:(id)preferences;
+ (id)allowedFlowItems;
- (BuddyRestoreSilentRenewController)silentRenewController;
- (BuddySoftwareUpdateRestoreFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
- (id)controllerFollowingControllerClass:(Class)class requestedNext:(Class)next;
- (id)firstItem;
- (id)precedingItemsClasses;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)startFlowAnimated:(BOOL)animated;
@end

@implementation BuddySoftwareUpdateRestoreFlow

- (BuddySoftwareUpdateRestoreFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v17 = 0;
  objc_storeStrong(&v17, delegate);
  v16 = 0;
  objc_storeStrong(&v16, starter);
  v15 = 0;
  objc_storeStrong(&v15, injector);
  v9 = selfCopy;
  selfCopy = 0;
  v14.receiver = v9;
  v14.super_class = BuddySoftwareUpdateRestoreFlow;
  v10 = [(BuddyRestoreFlow *)&v14 initWithNavigationController:location[0] flowDelegate:v17 flowStarter:v16 dependencyInjector:v15];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v11 = [NSArray arrayWithObjects:v20 count:4];
    [selfCopy setClassList:v11];
  }

  v12 = selfCopy;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

- (id)precedingItemsClasses
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  return [NSArray arrayWithObjects:v5 count:3, a2, self];
}

- (void)startFlowAnimated:(BOOL)animated
{
  selfCopy = self;
  v21 = a2;
  animatedCopy = animated;
  seedProgramManager = [(BuddySoftwareUpdateRestoreFlow *)self seedProgramManager];
  currentEnrollmentMetadata = [(BYSeedProgramManager *)seedProgramManager currentEnrollmentMetadata];

  bySeedProgramManager_valueForProgramKey = [currentEnrollmentMetadata bySeedProgramManager_valueForProgramKey];
  bySeedProgramManager_valueForAssetAudienceKey = [currentEnrollmentMetadata bySeedProgramManager_valueForAssetAudienceKey];
  location = [currentEnrollmentMetadata bySeedProgramManager_valueForProgramIDKey];
  if (bySeedProgramManager_valueForProgramKey && bySeedProgramManager_valueForAssetAudienceKey)
  {
    oslog = _BYLoggingFacility();
    v14 = 2;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v4 = oslog;
      v5 = v14;
      sub_10006AA68(buf);
      _os_log_debug_impl(&_mh_execute_header, v4, v5, "Beta Re-Enroll: Post-software update stashing enrollment info", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    settingsManager = [(BuddySoftwareUpdateRestoreFlow *)selfCopy settingsManager];
    [(BFFSettingsManager *)settingsManager setSeedEnrollmentProgramName:bySeedProgramManager_valueForProgramKey assetAudience:bySeedProgramManager_valueForAssetAudienceKey programID:location];
  }

  else
  {
    v12 = _BYLoggingFacility();
    v11 = 2;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v7 = v12;
      v8 = v11;
      sub_10006AA68(v10);
      _os_log_debug_impl(&_mh_execute_header, v7, v8, "Beta Re-Enroll: Post-software update found no seed enrollment info", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
  }

  v9.receiver = selfCopy;
  v9.super_class = BuddySoftwareUpdateRestoreFlow;
  [(BuddySoftwareUpdateRestoreFlow *)&v9 startFlowAnimated:animatedCopy];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&bySeedProgramManager_valueForAssetAudienceKey, 0);
  objc_storeStrong(&bySeedProgramManager_valueForProgramKey, 0);
  objc_storeStrong(&currentEnrollmentMetadata, 0);
}

- (id)firstItem
{
  selfCopy = self;
  location[1] = a2;
  v4.receiver = self;
  v4.super_class = BuddySoftwareUpdateRestoreFlow;
  location[0] = [(BuddyRestoreFlow *)&v4 firstItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BuddySoftwareUpdateRestoreFlow *)selfCopy setSilentRenewController:location[0]];
  }

  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

- (id)controllerFollowingControllerClass:(Class)class requestedNext:(Class)next
{
  selfCopy = self;
  location[3] = a2;
  location[2] = class;
  location[1] = next;
  v8.receiver = self;
  v8.super_class = BuddySoftwareUpdateRestoreFlow;
  location[0] = [(BuddyRestoreFlow *)&v8 controllerFollowingControllerClass:class requestedNext:next];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    silentRenewController = [(BuddySoftwareUpdateRestoreFlow *)selfCopy silentRenewController];
    renewSucceeded = [(BuddyRestoreSilentRenewController *)silentRenewController renewSucceeded];
    [location[0] setForceReauthentication:(renewSucceeded ^ 1) & 1];
  }

  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyRestoreFlowItem])
  {
    [location[0] setSoftwareUpdateDidOccur:1];
  }

  v6 = location[0];
  objc_storeStrong(location, 0);
  return v6;
}

+ (id)allowedFlowItems
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  return [NSArray arrayWithObjects:v3 count:4];
}

+ (BOOL)controllerNeedsToRunWithPendingRestoreState:(id)state buddyPreferences:(id)preferences
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  v25 = 0;
  objc_storeStrong(&v25, preferences);
  v24 = [BuddyRestoreState loadFromPreferences:v25];
  if (v24)
  {
    v7 = +[BYDeviceConfiguration currentConfiguration];
    buildVersion = [v7 buildVersion];

    productBuild = [v24 productBuild];
    v9 = [productBuild isEqualToString:buildVersion] ^ 1;

    if (v9)
    {
      v18 = _BYLoggingFacility();
      v17 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        productBuild2 = [v24 productBuild];
        sub_100078180(v28, productBuild2, buildVersion);
        _os_log_error_impl(&_mh_execute_header, v18, v17, "Expected update to %@, but currently running %@!", v28, 0x16u);
      }

      objc_storeStrong(&v18, 0);
      [BuddyRestoreState removeFromPreferences:v25];
      v27 = 0;
      v20 = 1;
    }

    else
    {
      backupUDID = [v24 backupUDID];
      backupUUID = [v24 backupUUID];
      v16 = +[RestorableBackupItem restorableBackupItemWithPendingBackupUDID:backupUUID:snapshotID:](RestorableBackupItem, "restorableBackupItemWithPendingBackupUDID:backupUUID:snapshotID:", backupUDID, backupUUID, [v24 snapshotID]);

      [location[0] setBackupItem:v16 updateBackupMetadata:1 prefetchAccounts:1];
      v13 = location[0];
      snapshotDate = [v24 snapshotDate];
      [v13 setSnapshotDate:snapshotDate];

      [location[0] setUseLatestSnapshot:{objc_msgSend(v24, "useLatestSnapshot") & 1}];
      [location[0] setAllowCellularNetwork:{objc_msgSend(v24, "allowCellularNetwork") & 1}];
      v27 = v16 != 0;
      v20 = 1;
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&buildVersion, 0);
  }

  else
  {
    oslog = _BYLoggingFacility();
    v22 = 16;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v5 = oslog;
      v6 = v22;
      sub_10006AA68(buf);
      _os_log_error_impl(&_mh_execute_header, v5, v6, "No restore state found on disk!", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [BuddyRestoreState removeFromPreferences:v25];
    v27 = 0;
    v20 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  return v27;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = location[0];
  pendingRestoreState = [(BuddyRestoreFlow *)selfCopy pendingRestoreState];
  buddyPreferences = [(BuddyRestoreFlow *)selfCopy buddyPreferences];
  v3[2](v3, [BuddySoftwareUpdateRestoreFlow controllerNeedsToRunWithPendingRestoreState:pendingRestoreState buddyPreferences:buddyPreferences]);

  objc_storeStrong(location, 0);
}

- (BuddyRestoreSilentRenewController)silentRenewController
{
  WeakRetained = objc_loadWeakRetained(&self->_silentRenewController);

  return WeakRetained;
}

@end