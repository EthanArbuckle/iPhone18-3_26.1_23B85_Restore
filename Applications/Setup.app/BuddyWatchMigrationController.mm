@interface BuddyWatchMigrationController
+ (void)clearWatchDataForMigrationWithSettingsManager:(id)manager buddyPreferencesExcludedFromBackup:(id)backup;
+ (void)setWatchDataForMigration:(id)migration presented:(BOOL)presented settingsManager:(id)manager buddyPreferencesExcludedFromBackup:(id)backup;
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (void)controllerItemCompletedWithMigration:(BOOL)migration preRestoreData:(id)data;
- (void)performExtendedInitializationWithCompletion:(id)completion;
@end

@implementation BuddyWatchMigrationController

+ (void)setWatchDataForMigration:(id)migration presented:(BOOL)presented settingsManager:(id)manager buddyPreferencesExcludedFromBackup:(id)backup
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migration);
  presentedCopy = presented;
  v12 = 0;
  objc_storeStrong(&v12, manager);
  v11 = 0;
  objc_storeStrong(&v11, backup);
  [v12 stashWatchData:location[0]];
  v9 = v11;
  v10 = [NSNumber numberWithBool:presentedCopy];
  [v9 setObject:v10 forKey:@"WatchMigrationPresented"];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

+ (void)clearWatchDataForMigrationWithSettingsManager:(id)manager buddyPreferencesExcludedFromBackup:(id)backup
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v5 = 0;
  objc_storeStrong(&v5, backup);
  [objc_opt_class() setWatchDataForMigration:0 presented:0 settingsManager:location[0] buddyPreferencesExcludedFromBackup:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  capabilities = [(BuddyWatchMigrationController *)self capabilities];
  supportsAppleWatch = [(BYCapabilities *)capabilities supportsAppleWatch];
  v6 = 0;
  v4 = 0;
  if (supportsAppleWatch)
  {
    buddyPreferencesExcludedFromBackup = [(BuddyWatchMigrationController *)self buddyPreferencesExcludedFromBackup];
    v6 = 1;
    v4 = [(BYPreferencesController *)buddyPreferencesExcludedFromBackup BOOLForKey:@"WatchMigrationPresented"]^ 1;
  }

  v9 = v4 & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  pendingRestoreState = [(BuddyWatchMigrationController *)selfCopy pendingRestoreState];
  backupItem = [(BuddyPendingRestoreState *)pendingRestoreState backupItem];
  snapshot = [(RestorableBackupItem *)backupItem snapshot];

  deviceName = [snapshot deviceName];
  if (!deviceName)
  {
    proximitySetupController = [(BuddyWatchMigrationController *)selfCopy proximitySetupController];
    deviceName = [(ProximitySetupController *)proximitySetupController deviceName];
  }

  v6 = [[BPSWatchMigrationController alloc] initWithSourceDeviceName:deviceName];
  [(BuddyWatchMigrationController *)selfCopy setMigrationController:v6];

  v7 = selfCopy;
  migrationController = [(BuddyWatchMigrationController *)selfCopy migrationController];
  [(BPSWatchMigrationController *)migrationController setMigrationDelegate:v7];

  v9 = dispatch_get_global_queue(25, 0);
  block = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100196A94;
  v14 = &unk_10032AFD0;
  v15 = selfCopy;
  v16 = location[0];
  dispatch_async(v9, &block);

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&deviceName, 0);
  objc_storeStrong(&snapshot, 0);
  objc_storeStrong(location, 0);
}

- (void)controllerItemCompletedWithMigration:(BOOL)migration preRestoreData:(id)data
{
  selfCopy = self;
  v11 = a2;
  migrationCopy = migration;
  v9 = 0;
  objc_storeStrong(&v9, data);
  if (migrationCopy)
  {
    settingsManager = [(BuddyWatchMigrationController *)selfCopy settingsManager];
    [(BFFSettingsManager *)settingsManager stashWatchData:v9];
  }

  else
  {
    settingsManager = [(BuddyWatchMigrationController *)selfCopy settingsManager];
    [(BFFSettingsManager *)settingsManager stashWatchData:0];
  }

  paneFeatureAnalyticsManager = [(BuddyWatchMigrationController *)selfCopy paneFeatureAnalyticsManager];
  v6 = [NSNumber numberWithBool:migrationCopy];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager recordActionWithValue:v6 forFeature:10];

  buddyPreferencesExcludedFromBackup = [(BuddyWatchMigrationController *)selfCopy buddyPreferencesExcludedFromBackup];
  [(BYPreferencesController *)buddyPreferencesExcludedFromBackup setObject:&__kCFBooleanTrue forKey:@"WatchMigrationPresented"];

  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  [WeakRetained flowItemDone:selfCopy];

  objc_storeStrong(&v9, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end