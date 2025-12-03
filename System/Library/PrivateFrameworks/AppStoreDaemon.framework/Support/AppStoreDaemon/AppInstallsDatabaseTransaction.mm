@interface AppInstallsDatabaseTransaction
- (AppInstallsDatabaseTransaction)initWithConnection:(id)connection;
@end

@implementation AppInstallsDatabaseTransaction

- (AppInstallsDatabaseTransaction)initWithConnection:(id)connection
{
  v7.receiver = self;
  v7.super_class = AppInstallsDatabaseTransaction;
  v3 = [(AppInstallsDatabaseSession *)&v7 initWithConnection:connection];
  if (v3)
  {
    v4 = objc_alloc_init(AppInstallsDatabaseChangeset);
    changeset = v3->_changeset;
    v3->_changeset = v4;
  }

  return v3;
}

@end