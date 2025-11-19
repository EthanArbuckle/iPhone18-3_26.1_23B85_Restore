@interface BuddyWatchMigrationController
+ (void)clearWatchDataForMigrationWithSettingsManager:(id)a3 buddyPreferencesExcludedFromBackup:(id)a4;
+ (void)setWatchDataForMigration:(id)a3 presented:(BOOL)a4 settingsManager:(id)a5 buddyPreferencesExcludedFromBackup:(id)a6;
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (void)controllerItemCompletedWithMigration:(BOOL)a3 preRestoreData:(id)a4;
- (void)performExtendedInitializationWithCompletion:(id)a3;
@end

@implementation BuddyWatchMigrationController

+ (void)setWatchDataForMigration:(id)a3 presented:(BOOL)a4 settingsManager:(id)a5 buddyPreferencesExcludedFromBackup:(id)a6
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = a4;
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v11 = 0;
  objc_storeStrong(&v11, a6);
  [v12 stashWatchData:location[0]];
  v9 = v11;
  v10 = [NSNumber numberWithBool:v13];
  [v9 setObject:v10 forKey:@"WatchMigrationPresented"];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

+ (void)clearWatchDataForMigrationWithSettingsManager:(id)a3 buddyPreferencesExcludedFromBackup:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [objc_opt_class() setWatchDataForMigration:0 presented:0 settingsManager:location[0] buddyPreferencesExcludedFromBackup:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyWatchMigrationController *)self capabilities];
  v3 = [(BYCapabilities *)v2 supportsAppleWatch];
  v6 = 0;
  v4 = 0;
  if (v3)
  {
    v7 = [(BuddyWatchMigrationController *)self buddyPreferencesExcludedFromBackup];
    v6 = 1;
    v4 = [(BYPreferencesController *)v7 BOOLForKey:@"WatchMigrationPresented"]^ 1;
  }

  v9 = v4 & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyWatchMigrationController *)v20 pendingRestoreState];
  v4 = [(BuddyPendingRestoreState *)v3 backupItem];
  v18 = [(RestorableBackupItem *)v4 snapshot];

  v17 = [v18 deviceName];
  if (!v17)
  {
    v5 = [(BuddyWatchMigrationController *)v20 proximitySetupController];
    v17 = [(ProximitySetupController *)v5 deviceName];
  }

  v6 = [[BPSWatchMigrationController alloc] initWithSourceDeviceName:v17];
  [(BuddyWatchMigrationController *)v20 setMigrationController:v6];

  v7 = v20;
  v8 = [(BuddyWatchMigrationController *)v20 migrationController];
  [(BPSWatchMigrationController *)v8 setMigrationDelegate:v7];

  v9 = dispatch_get_global_queue(25, 0);
  block = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100196A94;
  v14 = &unk_10032AFD0;
  v15 = v20;
  v16 = location[0];
  dispatch_async(v9, &block);

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)controllerItemCompletedWithMigration:(BOOL)a3 preRestoreData:(id)a4
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  objc_storeStrong(&v9, a4);
  if (v10)
  {
    v4 = [(BuddyWatchMigrationController *)v12 settingsManager];
    [(BFFSettingsManager *)v4 stashWatchData:v9];
  }

  else
  {
    v4 = [(BuddyWatchMigrationController *)v12 settingsManager];
    [(BFFSettingsManager *)v4 stashWatchData:0];
  }

  v5 = [(BuddyWatchMigrationController *)v12 paneFeatureAnalyticsManager];
  v6 = [NSNumber numberWithBool:v10];
  [(BYPaneFeatureAnalyticsManager *)v5 recordActionWithValue:v6 forFeature:10];

  v7 = [(BuddyWatchMigrationController *)v12 buddyPreferencesExcludedFromBackup];
  [(BYPreferencesController *)v7 setObject:&__kCFBooleanTrue forKey:@"WatchMigrationPresented"];

  WeakRetained = objc_loadWeakRetained(&v12->_delegate);
  [WeakRetained flowItemDone:v12];

  objc_storeStrong(&v9, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end