@interface AAUIAuthKitDeleteAuthorizationDatabaseEntryHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_revokeAuthorizationForClientID:(id)a3 completion:(id)a4;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation AAUIAuthKitDeleteAuthorizationDatabaseEntryHook

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"database:revoke"];

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

  v7 = [v6 isEqualToString:@"database:revoke"];
  return v7;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = [a4 objectForKeyedSubscript:@"clientID"];
  [(AAUIAuthKitDeleteAuthorizationDatabaseEntryHook *)self _revokeAuthorizationForClientID:v9 completion:v8];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8 = [a3 clientInfo];
  v7 = [v8 objectForKeyedSubscript:@"clientID"];
  [(AAUIAuthKitDeleteAuthorizationDatabaseEntryHook *)self _revokeAuthorizationForClientID:v7 completion:v6];
}

- (void)_revokeAuthorizationForClientID:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x1E698DCC0];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v11 = 0;
  v9 = [v8 revokeAuthorizationForApplicationWithClientID:v7 error:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end