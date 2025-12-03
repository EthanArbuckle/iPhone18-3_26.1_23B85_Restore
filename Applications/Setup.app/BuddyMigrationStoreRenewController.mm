@interface BuddyMigrationStoreRenewController
- (id)_localizedExtraStoresSignInTextKeyForStoreContentMap:(id)map;
- (void)fetchAccounts:(id)accounts;
- (void)performExtendedInitializationWithCompletion:(id)completion;
@end

@implementation BuddyMigrationStoreRenewController

- (void)fetchAccounts:(id)accounts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accounts);
  if (location[0])
  {
    v3 = location[0];
    preflightInformation = [(BuddyMigrationStoreRenewController *)selfCopy preflightInformation];
    appleIDs = [(MBDeviceTransferPreflight *)preflightInformation appleIDs];
    preflightInformation2 = [(BuddyMigrationStoreRenewController *)selfCopy preflightInformation];
    activeAppleID = [(MBDeviceTransferPreflight *)preflightInformation2 activeAppleID];
    v3[2](v3, appleIDs, activeAppleID);
  }

  objc_storeStrong(location, 0);
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  miscState = [(BuddyStoreRenewController *)selfCopy miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001B8428;
  v9 = &unk_10032E520;
  v10 = selfCopy;
  v11 = location[0];
  [(BuddyTargetDeviceMigrationManager *)migrationManager waitForPreflight:&v5];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)_localizedExtraStoresSignInTextKeyForStoreContentMap:(id)map
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, map);
  v6.receiver = selfCopy;
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