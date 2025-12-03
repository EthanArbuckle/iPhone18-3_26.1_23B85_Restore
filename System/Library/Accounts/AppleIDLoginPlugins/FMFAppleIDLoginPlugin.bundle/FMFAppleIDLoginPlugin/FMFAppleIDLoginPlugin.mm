@interface FMFAppleIDLoginPlugin
- (id)_accountStore;
- (id)parametersForIdentityEstablishmentRequest;
@end

@implementation FMFAppleIDLoginPlugin

- (id)parametersForIdentityEstablishmentRequest
{
  _accountStore = [(FMFAppleIDLoginPlugin *)self _accountStore];
  aa_primaryAppleAccount = [_accountStore aa_primaryAppleAccount];

  if (aa_primaryAppleAccount && ([aa_primaryAppleAccount aa_fmfAccount], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"account-exists"];
    username = [aa_primaryAppleAccount username];

    if (username)
    {
      username2 = [aa_primaryAppleAccount username];
      [v6 setObject:username2 forKeyedSubscript:@"apple-id"];
    }

    aa_personID = [aa_primaryAppleAccount aa_personID];

    if (aa_personID)
    {
      aa_personID2 = [aa_primaryAppleAccount aa_personID];
      [v6 setObject:aa_personID2 forKeyedSubscript:@"dsid"];
    }

    credential = [v5 credential];
    v12 = [credential credentialItemForKey:ACFindMyFriendsTokenKey];

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