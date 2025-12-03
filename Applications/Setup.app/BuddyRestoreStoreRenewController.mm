@interface BuddyRestoreStoreRenewController
- (void)fetchAccounts:(id)accounts;
@end

@implementation BuddyRestoreStoreRenewController

- (void)fetchAccounts:(id)accounts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accounts);
  if (location[0])
  {
    backupItem = [(BuddyRestoreStoreRenewController *)selfCopy backupItem];
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_1000B9C5C;
    v8 = &unk_10032C268;
    v9 = location[0];
    [(RestorableBackupItem *)backupItem fetchAccounts:&v4];

    objc_storeStrong(&v9, 0);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  objc_storeStrong(location, 0);
}

@end