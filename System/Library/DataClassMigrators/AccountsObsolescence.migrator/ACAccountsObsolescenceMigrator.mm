@interface ACAccountsObsolescenceMigrator
- (BOOL)performMigration;
- (void)removeObsoleteAccountsFromStore:(id)store;
@end

@implementation ACAccountsObsolescenceMigrator

- (BOOL)performMigration
{
  v3 = objc_opt_new();
  [(ACAccountsObsolescenceMigrator *)self removeObsoleteAccountsFromStore:v3];

  return 1;
}

- (void)removeObsoleteAccountsFromStore:(id)store
{
  storeCopy = store;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_B84;
  v5[3] = &unk_4068;
  v6 = dispatch_semaphore_create(0);
  v4 = v6;
  [storeCopy removeObsoleteAccounts:v5];

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

@end