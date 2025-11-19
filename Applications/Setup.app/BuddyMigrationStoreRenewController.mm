@interface BuddyMigrationStoreRenewController
- (id)_localizedExtraStoresSignInTextKeyForStoreContentMap:(id)a3;
- (void)fetchAccounts:(id)a3;
- (void)performExtendedInitializationWithCompletion:(id)a3;
@end

@implementation BuddyMigrationStoreRenewController

- (void)fetchAccounts:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v3 = location[0];
    v4 = [(BuddyMigrationStoreRenewController *)v9 preflightInformation];
    v5 = [(MBDeviceTransferPreflight *)v4 appleIDs];
    v6 = [(BuddyMigrationStoreRenewController *)v9 preflightInformation];
    v7 = [(MBDeviceTransferPreflight *)v6 activeAppleID];
    v3[2](v3, v5, v7);
  }

  objc_storeStrong(location, 0);
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyStoreRenewController *)v13 miscState];
  v4 = [(BuddyMiscState *)v3 migrationManager];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001B8428;
  v9 = &unk_10032E520;
  v10 = v13;
  v11 = location[0];
  [(BuddyTargetDeviceMigrationManager *)v4 waitForPreflight:&v5];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)_localizedExtraStoresSignInTextKeyForStoreContentMap:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6.receiver = v9;
  v6.super_class = BuddyMigrationStoreRenewController;
  v3 = [(BuddyStoreRenewController *)&v6 _localizedExtraStoresSignInTextKeyForStoreContentMap:location[0]];
  v7 = [v3 mutableCopy];

  [v7 appendString:@"_MIGRATION"];
  v4 = v7;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v4;
}

@end