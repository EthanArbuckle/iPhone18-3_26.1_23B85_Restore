@interface JSAAccount
- (BOOL)hasRecommendationsEnabled;
- (BOOL)hasiCloudDriveEnabled;
- (BOOL)isManagedAppleID;
- (BOOL)isSignedInToiCloudAccount;
- (JSAAccount)initWithDelegate:(id)delegate;
- (JSAAccountDelegate)delegate;
- (NSString)accountName;
- (NSString)firstName;
- (NSString)lastName;
- (NSString)localizedName;
- (NSString)uniqueIdentifier;
- (void)signOut:(id)out;
- (void)signOutWithCompletion:(id)completion;
@end

@implementation JSAAccount

- (JSAAccount)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = JSAAccount;
  v5 = [(JSAAccount *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (NSString)uniqueIdentifier
{
  v2 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v2 activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];
  stringValue = [ams_DSID stringValue];

  return stringValue;
}

- (NSString)accountName
{
  v2 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v2 activeStoreAccount];
  username = [activeStoreAccount username];

  return username;
}

- (NSString)firstName
{
  v2 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v2 activeStoreAccount];
  ams_firstName = [activeStoreAccount ams_firstName];

  return ams_firstName;
}

- (NSString)lastName
{
  v2 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v2 activeStoreAccount];
  ams_lastName = [activeStoreAccount ams_lastName];

  return ams_lastName;
}

- (NSString)localizedName
{
  v2 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v2 activeStoreAccount];
  ams_fullName = [activeStoreAccount ams_fullName];

  return ams_fullName;
}

- (BOOL)isManagedAppleID
{
  v2 = +[BUAccountsProvider sharedProvider];
  isStoreAccountManagedAppleID = [v2 isStoreAccountManagedAppleID];

  return isStoreAccountManagedAppleID;
}

- (BOOL)isSignedInToiCloudAccount
{
  v2 = +[BUAccountsProvider sharedProvider];
  isUserSignedInToiCloud = [v2 isUserSignedInToiCloud];

  return isUserSignedInToiCloud;
}

- (BOOL)hasiCloudDriveEnabled
{
  v2 = +[BUAccountsProvider sharedProvider];
  isGlobalICloudDriveSyncOptedIn = [v2 isGlobalICloudDriveSyncOptedIn];

  return isGlobalICloudDriveSyncOptedIn;
}

- (BOOL)hasRecommendationsEnabled
{
  v2 = +[BUAccountsProvider sharedProvider];
  hasRecommendationsEnabled = [v2 hasRecommendationsEnabled];

  return hasRecommendationsEnabled;
}

- (void)signOut:(id)out
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_FFF4;
  v5[3] = &unk_B29C0;
  outCopy = out;
  v4 = outCopy;
  [(JSAAccount *)self signOutWithCompletion:v5];
}

- (void)signOutWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v5 activeStoreAccount];

  if (activeStoreAccount)
  {
    delegate = [(JSAAccount *)self delegate];
    [delegate accountWillAttemptSignOut:self];

    bu_signOut = [activeStoreAccount bu_signOut];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10234;
    v11[3] = &unk_B29E8;
    v11[4] = self;
    v12 = completionCopy;
    [bu_signOut addFinishBlock:v11];
  }

  else
  {
    v9 = objc_retainBlock(completionCopy);
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