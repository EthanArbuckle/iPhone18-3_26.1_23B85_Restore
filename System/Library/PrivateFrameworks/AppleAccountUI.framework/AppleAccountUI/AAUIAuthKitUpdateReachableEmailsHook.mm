@interface AAUIAuthKitUpdateReachableEmailsHook
- (AAUIAuthKitUpdateReachableEmailsHook)initWithAltDSID:(id)d;
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_updateAccountWithReachableEmails:(id)emails completion:(id)completion;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AAUIAuthKitUpdateReachableEmailsHook

- (AAUIAuthKitUpdateReachableEmailsHook)initWithAltDSID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = AAUIAuthKitUpdateReachableEmailsHook;
  v6 = [(AAUIAuthKitUpdateReachableEmailsHook *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_altDSID, d);
  }

  return v7;
}

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"emails:update"];

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

  v7 = [v6 isEqualToString:@"emails:update"];
  return v7;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  attributesCopy = attributes;
  objc_opt_class();
  v10 = [attributesCopy objectForKeyedSubscript:@"reachableEmails"];

  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [(AAUIAuthKitUpdateReachableEmailsHook *)self _updateAccountWithReachableEmails:v12 completion:completionCopy];
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  objc_opt_class();
  clientInfo = [modelCopy clientInfo];

  v9 = [clientInfo objectForKeyedSubscript:@"reachableEmails"];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [(AAUIAuthKitUpdateReachableEmailsHook *)self _updateAccountWithReachableEmails:v10 completion:completionCopy];
}

- (void)_updateAccountWithReachableEmails:(id)emails completion:(id)completion
{
  v6 = MEMORY[0x1E698DE08];
  completionCopy = completion;
  emailsCopy = emails;
  v10 = objc_alloc_init(v6);
  [v10 setReachableEmails:emailsCopy];

  v9 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  [v9 updateUserInformationForAltDSID:self->_altDSID userInformation:v10 completion:completionCopy];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end