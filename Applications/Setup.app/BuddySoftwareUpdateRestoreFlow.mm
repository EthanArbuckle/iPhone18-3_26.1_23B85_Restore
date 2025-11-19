@interface BuddySoftwareUpdateRestoreFlow
+ (BOOL)controllerNeedsToRunWithPendingRestoreState:(id)a3 buddyPreferences:(id)a4;
+ (id)allowedFlowItems;
- (BuddyRestoreSilentRenewController)silentRenewController;
- (BuddySoftwareUpdateRestoreFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6;
- (id)controllerFollowingControllerClass:(Class)a3 requestedNext:(Class)a4;
- (id)firstItem;
- (id)precedingItemsClasses;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)startFlowAnimated:(BOOL)a3;
@end

@implementation BuddySoftwareUpdateRestoreFlow

- (BuddySoftwareUpdateRestoreFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v15 = 0;
  objc_storeStrong(&v15, a6);
  v9 = v19;
  v19 = 0;
  v14.receiver = v9;
  v14.super_class = BuddySoftwareUpdateRestoreFlow;
  v10 = [(BuddyRestoreFlow *)&v14 initWithNavigationController:location[0] flowDelegate:v17 flowStarter:v16 dependencyInjector:v15];
  v19 = v10;
  objc_storeStrong(&v19, v10);
  if (v10)
  {
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v11 = [NSArray arrayWithObjects:v20 count:4];
    [v19 setClassList:v11];
  }

  v12 = v19;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, 0);
  return v12;
}

- (id)precedingItemsClasses
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  return [NSArray arrayWithObjects:v5 count:3, a2, self];
}

- (void)startFlowAnimated:(BOOL)a3
{
  v22 = self;
  v21 = a2;
  v20 = a3;
  v3 = [(BuddySoftwareUpdateRestoreFlow *)self seedProgramManager];
  v19 = [(BYSeedProgramManager *)v3 currentEnrollmentMetadata];

  v18 = [v19 bySeedProgramManager_valueForProgramKey];
  v17 = [v19 bySeedProgramManager_valueForAssetAudienceKey];
  location = [v19 bySeedProgramManager_valueForProgramIDKey];
  if (v18 && v17)
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
    v6 = [(BuddySoftwareUpdateRestoreFlow *)v22 settingsManager];
    [(BFFSettingsManager *)v6 setSeedEnrollmentProgramName:v18 assetAudience:v17 programID:location];
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

  v9.receiver = v22;
  v9.super_class = BuddySoftwareUpdateRestoreFlow;
  [(BuddySoftwareUpdateRestoreFlow *)&v9 startFlowAnimated:v20];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
}

- (id)firstItem
{
  v6 = self;
  location[1] = a2;
  v4.receiver = self;
  v4.super_class = BuddySoftwareUpdateRestoreFlow;
  location[0] = [(BuddyRestoreFlow *)&v4 firstItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BuddySoftwareUpdateRestoreFlow *)v6 setSilentRenewController:location[0]];
  }

  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

- (id)controllerFollowingControllerClass:(Class)a3 requestedNext:(Class)a4
{
  v10 = self;
  location[3] = a2;
  location[2] = a3;
  location[1] = a4;
  v8.receiver = self;
  v8.super_class = BuddySoftwareUpdateRestoreFlow;
  location[0] = [(BuddyRestoreFlow *)&v8 controllerFollowingControllerClass:a3 requestedNext:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(BuddySoftwareUpdateRestoreFlow *)v10 silentRenewController];
    v5 = [(BuddyRestoreSilentRenewController *)v4 renewSucceeded];
    [location[0] setForceReauthentication:(v5 ^ 1) & 1];
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

+ (BOOL)controllerNeedsToRunWithPendingRestoreState:(id)a3 buddyPreferences:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = [BuddyRestoreState loadFromPreferences:v25];
  if (v24)
  {
    v7 = +[BYDeviceConfiguration currentConfiguration];
    v19 = [v7 buildVersion];

    v8 = [v24 productBuild];
    v9 = [v8 isEqualToString:v19] ^ 1;

    if (v9)
    {
      v18 = _BYLoggingFacility();
      v17 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v10 = [v24 productBuild];
        sub_100078180(v28, v10, v19);
        _os_log_error_impl(&_mh_execute_header, v18, v17, "Expected update to %@, but currently running %@!", v28, 0x16u);
      }

      objc_storeStrong(&v18, 0);
      [BuddyRestoreState removeFromPreferences:v25];
      v27 = 0;
      v20 = 1;
    }

    else
    {
      v11 = [v24 backupUDID];
      v12 = [v24 backupUUID];
      v16 = +[RestorableBackupItem restorableBackupItemWithPendingBackupUDID:backupUUID:snapshotID:](RestorableBackupItem, "restorableBackupItemWithPendingBackupUDID:backupUUID:snapshotID:", v11, v12, [v24 snapshotID]);

      [location[0] setBackupItem:v16 updateBackupMetadata:1 prefetchAccounts:1];
      v13 = location[0];
      v14 = [v24 snapshotDate];
      [v13 setSnapshotDate:v14];

      [location[0] setUseLatestSnapshot:{objc_msgSend(v24, "useLatestSnapshot") & 1}];
      [location[0] setAllowCellularNetwork:{objc_msgSend(v24, "allowCellularNetwork") & 1}];
      v27 = v16 != 0;
      v20 = 1;
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v19, 0);
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

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(BuddyRestoreFlow *)v7 pendingRestoreState];
  v5 = [(BuddyRestoreFlow *)v7 buddyPreferences];
  v3[2](v3, [BuddySoftwareUpdateRestoreFlow controllerNeedsToRunWithPendingRestoreState:v4 buddyPreferences:v5]);

  objc_storeStrong(location, 0);
}

- (BuddyRestoreSilentRenewController)silentRenewController
{
  WeakRetained = objc_loadWeakRetained(&self->_silentRenewController);

  return WeakRetained;
}

@end