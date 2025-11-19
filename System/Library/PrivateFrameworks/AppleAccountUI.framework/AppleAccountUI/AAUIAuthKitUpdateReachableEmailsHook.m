@interface AAUIAuthKitUpdateReachableEmailsHook
- (AAUIAuthKitUpdateReachableEmailsHook)initWithAltDSID:(id)a3;
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_updateAccountWithReachableEmails:(id)a3 completion:(id)a4;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation AAUIAuthKitUpdateReachableEmailsHook

- (AAUIAuthKitUpdateReachableEmailsHook)initWithAltDSID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAUIAuthKitUpdateReachableEmailsHook;
  v6 = [(AAUIAuthKitUpdateReachableEmailsHook *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_altDSID, a3);
  }

  return v7;
}

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"emails:update"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 clientInfo];

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C7058]];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 isEqualToString:@"emails:update"];
  return v7;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a4;
  objc_opt_class();
  v10 = [v9 objectForKeyedSubscript:@"reachableEmails"];

  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [(AAUIAuthKitUpdateReachableEmailsHook *)self _updateAccountWithReachableEmails:v12 completion:v8];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = [v7 clientInfo];

  v9 = [v8 objectForKeyedSubscript:@"reachableEmails"];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [(AAUIAuthKitUpdateReachableEmailsHook *)self _updateAccountWithReachableEmails:v10 completion:v6];
}

- (void)_updateAccountWithReachableEmails:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x1E698DE08];
  v7 = a4;
  v8 = a3;
  v10 = objc_alloc_init(v6);
  [v10 setReachableEmails:v8];

  v9 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  [v9 updateUserInformationForAltDSID:self->_altDSID userInformation:v10 completion:v7];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end