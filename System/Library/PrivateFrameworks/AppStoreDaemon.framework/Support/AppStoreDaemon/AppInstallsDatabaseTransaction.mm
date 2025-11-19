@interface AppInstallsDatabaseTransaction
- (AppInstallsDatabaseTransaction)initWithConnection:(id)a3;
@end

@implementation AppInstallsDatabaseTransaction

- (AppInstallsDatabaseTransaction)initWithConnection:(id)a3
{
  v7.receiver = self;
  v7.super_class = AppInstallsDatabaseTransaction;
  v3 = [(AppInstallsDatabaseSession *)&v7 initWithConnection:a3];
  if (v3)
  {
    v4 = objc_alloc_init(AppInstallsDatabaseChangeset);
    changeset = v3->_changeset;
    v3->_changeset = v4;
  }

  return v3;
}

@end