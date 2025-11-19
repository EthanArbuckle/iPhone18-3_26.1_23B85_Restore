@interface FMFAppleIDLoginPlugin
- (id)_accountStore;
- (id)parametersForIdentityEstablishmentRequest;
@end

@implementation FMFAppleIDLoginPlugin

- (id)parametersForIdentityEstablishmentRequest
{
  v2 = [(FMFAppleIDLoginPlugin *)self _accountStore];
  v3 = [v2 aa_primaryAppleAccount];

  if (v3 && ([v3 aa_fmfAccount], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"account-exists"];
    v7 = [v3 username];

    if (v7)
    {
      v8 = [v3 username];
      [v6 setObject:v8 forKeyedSubscript:@"apple-id"];
    }

    v9 = [v3 aa_personID];

    if (v9)
    {
      v10 = [v3 aa_personID];
      [v6 setObject:v10 forKeyedSubscript:@"dsid"];
    }

    v11 = [v5 credential];
    v12 = [v11 credentialItemForKey:ACFindMyFriendsTokenKey];

    if (v12)
    {
      [v6 setObject:v12 forKeyedSubscript:@"auth-token"];
    }
  }

  else
  {
    v6 = &off_4150;
  }

  return v6;
}

- (id)_accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = +[ACAccountStore defaultStore];
    v5 = self->_accountStore;
    self->_accountStore = v4;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

@end