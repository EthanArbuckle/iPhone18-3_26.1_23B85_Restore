@interface JSAAccount
- (BOOL)hasRecommendationsEnabled;
- (BOOL)hasiCloudDriveEnabled;
- (BOOL)isManagedAppleID;
- (BOOL)isSignedInToiCloudAccount;
- (JSAAccount)initWithDelegate:(id)a3;
- (JSAAccountDelegate)delegate;
- (NSString)accountName;
- (NSString)firstName;
- (NSString)lastName;
- (NSString)localizedName;
- (NSString)uniqueIdentifier;
- (void)signOut:(id)a3;
- (void)signOutWithCompletion:(id)a3;
@end

@implementation JSAAccount

- (JSAAccount)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = JSAAccount;
  v5 = [(JSAAccount *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (NSString)uniqueIdentifier
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 activeStoreAccount];
  v4 = [v3 ams_DSID];
  v5 = [v4 stringValue];

  return v5;
}

- (NSString)accountName
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 activeStoreAccount];
  v4 = [v3 username];

  return v4;
}

- (NSString)firstName
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 activeStoreAccount];
  v4 = [v3 ams_firstName];

  return v4;
}

- (NSString)lastName
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 activeStoreAccount];
  v4 = [v3 ams_lastName];

  return v4;
}

- (NSString)localizedName
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 activeStoreAccount];
  v4 = [v3 ams_fullName];

  return v4;
}

- (BOOL)isManagedAppleID
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 isStoreAccountManagedAppleID];

  return v3;
}

- (BOOL)isSignedInToiCloudAccount
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 isUserSignedInToiCloud];

  return v3;
}

- (BOOL)hasiCloudDriveEnabled
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 isGlobalICloudDriveSyncOptedIn];

  return v3;
}

- (BOOL)hasRecommendationsEnabled
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 hasRecommendationsEnabled];

  return v3;
}

- (void)signOut:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_FFF4;
  v5[3] = &unk_B29C0;
  v6 = a3;
  v4 = v6;
  [(JSAAccount *)self signOutWithCompletion:v5];
}

- (void)signOutWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[BUAccountsProvider sharedProvider];
  v6 = [v5 activeStoreAccount];

  if (v6)
  {
    v7 = [(JSAAccount *)self delegate];
    [v7 accountWillAttemptSignOut:self];

    v8 = [v6 bu_signOut];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10234;
    v11[3] = &unk_B29E8;
    v11[4] = self;
    v12 = v4;
    [v8 addFinishBlock:v11];
  }

  else
  {
    v9 = objc_retainBlock(v4);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 1, 0);
    }
  }
}

- (JSAAccountDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end