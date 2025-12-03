@interface AAUIDeviceToDeviceEncryptionHook
- (AAUIDeviceToDeviceEncryptionHook)initWithAltDSID:(id)d upgradeContext:(id)context;
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_performHSAUpgradeWithAttributes:(id)attributes completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AAUIDeviceToDeviceEncryptionHook

- (AAUIDeviceToDeviceEncryptionHook)initWithAltDSID:(id)d upgradeContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = AAUIDeviceToDeviceEncryptionHook;
  v9 = [(AAUIDeviceToDeviceEncryptionHook *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_altDSID, d);
    objc_storeStrong(&v10->_context, context);
  }

  return v10;
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  clientInfo = [model clientInfo];
  [(AAUIDeviceToDeviceEncryptionHook *)self _performHSAUpgradeWithAttributes:clientInfo completion:completionCopy];
}

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"cdp:upgrade"];

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

  v7 = [v6 isEqualToString:@"cdp:upgrade"];
  return v7;
}

- (void)_performHSAUpgradeWithAttributes:(id)attributes completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  completionCopy = completion;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = attributesCopy;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Starting HSA2 upgrade with attributes %@", &v19, 0xCu);
  }

  v9 = objc_alloc(MEMORY[0x1E6997860]);
  altDSID = [(AAUIDeviceToDeviceEncryptionHook *)self altDSID];
  v11 = [v9 initWithAltDSID:altDSID];

  [v11 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
  objc_opt_class();
  v12 = [attributesCopy objectForKeyedSubscript:@"featureName"];
  v13 = 0;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  if (v13)
  {
    [v11 setFeatureName:v13];
  }

  objc_opt_class();
  v14 = [attributesCopy objectForKeyedSubscript:@"upgradeType"];
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [v11 setDeviceToDeviceEncryptionUpgradeType:{objc_msgSend(v15, "isEqualToString:", @"2FA"}];
  delegate = [(AAUIDeviceToDeviceEncryptionHook *)self delegate];
  v17 = [delegate presentationContextForHook:self];
  [v11 setPresentingViewController:v17];

  v18 = [objc_alloc(MEMORY[0x1E6997868]) initWithContext:v11];
  [v18 performDeviceToDeviceEncryptionStateRepairWithCompletion:completionCopy];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end