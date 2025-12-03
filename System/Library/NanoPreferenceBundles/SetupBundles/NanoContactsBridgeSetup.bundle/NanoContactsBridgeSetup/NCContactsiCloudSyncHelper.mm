@interface NCContactsiCloudSyncHelper
- (BOOL)isLocalSourceEmpty;
- (BOOL)primaryiCloudAccountCardDAVEnabled;
- (NCContactsiCloudSyncHelper)init;
- (void)setPrimaryiCloudAccountCardDAVEnabled;
@end

@implementation NCContactsiCloudSyncHelper

- (NCContactsiCloudSyncHelper)init
{
  v9.receiver = self;
  v9.super_class = NCContactsiCloudSyncHelper;
  v2 = [(NCContactsiCloudSyncHelper *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(ACAccountStore);
    v4 = objc_alloc_init(CNContactStore);
    v5 = [CNACAccountProvider providerWithStore:v3];
    v6 = [[NCCNContactsDataclassOwnerContactsImplementation alloc] initWithContactStore:v4 accountProvider:v5];
    implementation = v2->_implementation;
    v2->_implementation = v6;
  }

  return v2;
}

- (BOOL)primaryiCloudAccountCardDAVEnabled
{
  v2 = objc_opt_new();
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  v4 = aa_primaryAppleAccount;
  if (aa_primaryAppleAccount)
  {
    v5 = [aa_primaryAppleAccount isEnabledForDataclass:ACAccountDataclassContacts];
  }

  else
  {
    v6 = NCABISH_Accounts_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_DF30(v6);
    }

    v5 = 1;
  }

  v7 = NCABISH_Accounts_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[NCContactsiCloudSyncHelper primaryiCloudAccountCardDAVEnabled]";
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s - return primaryiCloudAccountCardDAVEnabled: %d", &v9, 0x12u);
  }

  return v5;
}

- (void)setPrimaryiCloudAccountCardDAVEnabled
{
  v3 = NCABISH_Accounts_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v20 = "[NCContactsiCloudSyncHelper setPrimaryiCloudAccountCardDAVEnabled]";
    v21 = 1024;
    v22 = 1;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d", buf, 0x12u);
  }

  v4 = objc_opt_new();
  aa_primaryAppleAccount = [v4 aa_primaryAppleAccount];
  v6 = aa_primaryAppleAccount;
  if (aa_primaryAppleAccount)
  {
    [aa_primaryAppleAccount setEnabled:1 forDataclass:ACAccountDataclassContacts];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_2978;
    v17[3] = &unk_1C490;
    v18 = 1;
    [v4 saveAccount:v6 withCompletionHandler:v17];
    v7 = [v6 childAccountsWithAccountTypeIdentifier:ACAccountTypeIdentifierCardDAV];
    v8 = objc_alloc_init(NCCNDataclassActionParameters);
    [(NCCNDataclassActionParameters *)v8 setAccount:v6];
    [(NCCNDataclassActionParameters *)v8 setChildAccounts:v7];
    implementation = [(NCContactsiCloudSyncHelper *)self implementation];
    [(NCCNDataclassActionParameters *)v8 setImplementation:implementation];

    isLocalSourceEmpty = [(NCContactsiCloudSyncHelper *)self isLocalSourceEmpty];
    v11 = off_1C250;
    if (!isLocalSourceEmpty)
    {
      v11 = &off_1C258;
    }

    v12 = [objc_alloc(*v11) initWithParameters:v8];
    perform = [v12 perform];
    v14 = NCABISH_Accounts_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 136447234;
      v20 = "[NCContactsiCloudSyncHelper setPrimaryiCloudAccountCardDAVEnabled]";
      v21 = 1024;
      v22 = 1;
      v23 = 1024;
      v24 = perform;
      v25 = 1024;
      v26 = isLocalSourceEmpty;
      v27 = 2114;
      v28 = v15;
      v16 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - didSucceed:%d (localSourceStartedEmpty:%d, actionHandler:%{public}@)", buf, 0x28u);
    }
  }

  else
  {
    v7 = NCABISH_Accounts_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_DFB4(v7);
    }
  }
}

- (BOOL)isLocalSourceEmpty
{
  implementation = [(NCContactsiCloudSyncHelper *)self implementation];
  isLocalContainerEmpty = [implementation isLocalContainerEmpty];

  return isLocalContainerEmpty;
}

@end