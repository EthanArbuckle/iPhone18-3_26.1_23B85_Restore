@interface CloudBookmarkAccountPropertiesStore
- (ACAccount)account;
- (BOOL)isDatabaseOpen;
- (BOOL)isDataclassEnabled;
- (BOOL)updateAccountHashIfNeeded;
- (CloudBookmarkAccountPropertiesStore)initWithAccountStore:(id)store;
- (CloudBookmarkAccountPropertiesStore)initWithAccountStore:(id)store databaseCoordinator:(id)coordinator;
- (id)accountHash;
- (id)deprecatedUsernameAccountHash;
- (void)_setNeedsAccountHashCheck;
- (void)_setNeedsAccountPropertiesUpdate;
- (void)setAccountHash:(id)hash;
- (void)setNeedsDataclassEnabledCheck;
@end

@implementation CloudBookmarkAccountPropertiesStore

- (CloudBookmarkAccountPropertiesStore)initWithAccountStore:(id)store databaseCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v8 = [(CloudBookmarkAccountPropertiesStore *)self initWithAccountStore:store];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_databaseCoordinator, coordinator);
    v10 = v9;
  }

  return v9;
}

- (CloudBookmarkAccountPropertiesStore)initWithAccountStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = CloudBookmarkAccountPropertiesStore;
  v6 = [(CloudBookmarkAccountPropertiesStore *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, store);
    *&v7->_needsDataclassEnabledCheck = 257;
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v7 selector:"_setNeedsAccountPropertiesUpdate" name:@"cloudBookmarkAccountIdentityDidChange" object:0];
    [v8 addObserver:v7 selector:"_setNeedsAccountPropertiesUpdate" name:@"cloudBookmarkAccountPropertiesDidChange" object:0];
    v9 = v7;
  }

  return v7;
}

- (ACAccount)account
{
  safari_primaryAppleAccount = [(ACAccountStore *)self->_accountStore safari_primaryAppleAccount];
  [safari_primaryAppleAccount refresh];

  return safari_primaryAppleAccount;
}

- (BOOL)isDataclassEnabled
{
  if (self->_needsDataclassEnabledCheck)
  {
    account = [(CloudBookmarkAccountPropertiesStore *)self account];
    self->_dataclassEnabled = [account isEnabledForDataclass:kAccountDataclassBookmarks];

    self->_needsDataclassEnabledCheck = 0;
  }

  return self->_dataclassEnabled;
}

- (BOOL)isDatabaseOpen
{
  databaseRef = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef];
  if (databaseRef)
  {
    databaseCoordinator = self->_databaseCoordinator;

    LOBYTE(databaseRef) = [(CloudBookmarkDatabaseCoordinating *)databaseCoordinator isDatabaseOpen];
  }

  return databaseRef;
}

- (id)deprecatedUsernameAccountHash
{
  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  v4 = [databaseAccessor copyUsernameAccountHashWithDatabase:{-[CloudBookmarkDatabaseCoordinating databaseRef](self->_databaseCoordinator, "databaseRef")}];

  return v4;
}

- (id)accountHash
{
  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  v4 = [databaseAccessor copyAccountHashWithDatabase:{-[CloudBookmarkDatabaseCoordinating databaseRef](self->_databaseCoordinator, "databaseRef")}];

  return v4;
}

- (void)setAccountHash:(id)hash
{
  databaseCoordinator = self->_databaseCoordinator;
  hashCopy = hash;
  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)databaseCoordinator databaseAccessor];
  [databaseAccessor setAccountHash:hashCopy database:{-[CloudBookmarkDatabaseCoordinating databaseRef](self->_databaseCoordinator, "databaseRef")}];
}

- (BOOL)updateAccountHashIfNeeded
{
  if (self->_needsAccountHashCheck)
  {
    v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Checking account hash", buf, 2u);
    }

    account = [(CloudBookmarkAccountPropertiesStore *)self account];
    safari_accountHash = [account safari_accountHash];

    accountHash = [(CloudBookmarkAccountPropertiesStore *)self accountHash];
    v7 = accountHash;
    if (accountHash)
    {
      v8 = [accountHash isEqualToData:safari_accountHash];
      v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      v10 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Account hash matches", v22, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_10002E004(v10);
        }

        [(CloudBookmarkAccountPropertiesStore *)self setAccountHash:safari_accountHash];
      }

      self->_needsAccountHashCheck = 0;
      goto LABEL_25;
    }

    deprecatedUsernameAccountHash = [(CloudBookmarkAccountPropertiesStore *)self deprecatedUsernameAccountHash];
    v13 = [deprecatedUsernameAccountHash isEqualToData:safari_accountHash];
    account2 = [(CloudBookmarkAccountPropertiesStore *)self account];
    safari_deprecatedUsernameAccountHash = [account2 safari_deprecatedUsernameAccountHash];
    v16 = [deprecatedUsernameAccountHash isEqualToData:safari_deprecatedUsernameAccountHash];

    v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v18)
      {
        v25 = 0;
        v19 = "Account hash matches. Migration was done in previous Safari version.";
        v20 = &v25;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, v20, 2u);
      }
    }

    else
    {
      if (!v16)
      {
        if (v18)
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Storing new account hash. Account has changed.", v23, 2u);
        }

        v8 = 0;
        goto LABEL_24;
      }

      if (v18)
      {
        *v24 = 0;
        v19 = "Migrating deprecated account hash.";
        v20 = v24;
        goto LABEL_19;
      }
    }

    v8 = 1;
LABEL_24:
    [(CloudBookmarkAccountPropertiesStore *)self setAccountHash:safari_accountHash];
    self->_needsAccountHashCheck = 0;

LABEL_25:
    v11 = v8 ^ 1;

    return v11;
  }

  return 0;
}

- (void)setNeedsDataclassEnabledCheck
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Needs dataclass enabled check", v4, 2u);
  }

  self->_needsDataclassEnabledCheck = 1;
}

- (void)_setNeedsAccountHashCheck
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Needs account hash check", v4, 2u);
  }

  self->_needsAccountHashCheck = 1;
}

- (void)_setNeedsAccountPropertiesUpdate
{
  [(CloudBookmarkAccountPropertiesStore *)self _setNeedsAccountHashCheck];

  [(CloudBookmarkAccountPropertiesStore *)self setNeedsDataclassEnabledCheck];
}

@end