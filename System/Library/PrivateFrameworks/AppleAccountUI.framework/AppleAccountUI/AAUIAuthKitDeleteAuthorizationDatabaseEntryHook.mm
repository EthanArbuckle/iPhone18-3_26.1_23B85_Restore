@interface AAUIAuthKitDeleteAuthorizationDatabaseEntryHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_revokeAuthorizationForClientID:(id)d completion:(id)completion;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AAUIAuthKitDeleteAuthorizationDatabaseEntryHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"database:revoke"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  clientInfo = [modelCopy clientInfo];

  v5 = [clientInfo objectForKeyedSubscript:*MEMORY[0x1E69C7058]];
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

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  v9 = [attributes objectForKeyedSubscript:@"clientID"];
  [(AAUIAuthKitDeleteAuthorizationDatabaseEntryHook *)self _revokeAuthorizationForClientID:v9 completion:completionCopy];
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  clientInfo = [model clientInfo];
  v7 = [clientInfo objectForKeyedSubscript:@"clientID"];
  [(AAUIAuthKitDeleteAuthorizationDatabaseEntryHook *)self _revokeAuthorizationForClientID:v7 completion:completionCopy];
}

- (void)_revokeAuthorizationForClientID:(id)d completion:(id)completion
{
  v5 = MEMORY[0x1E698DCC0];
  completionCopy = completion;
  dCopy = d;
  v8 = objc_alloc_init(v5);
  v11 = 0;
  v9 = [v8 revokeAuthorizationForApplicationWithClientID:dCopy error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end