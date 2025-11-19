@interface AAUIDeviceToDeviceEncryptionHook
- (AAUIDeviceToDeviceEncryptionHook)initWithAltDSID:(id)a3 upgradeContext:(id)a4;
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_performHSAUpgradeWithAttributes:(id)a3 completion:(id)a4;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation AAUIDeviceToDeviceEncryptionHook

- (AAUIDeviceToDeviceEncryptionHook)initWithAltDSID:(id)a3 upgradeContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AAUIDeviceToDeviceEncryptionHook;
  v9 = [(AAUIDeviceToDeviceEncryptionHook *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_altDSID, a3);
    objc_storeStrong(&v10->_context, a4);
  }

  return v10;
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 clientInfo];
  [(AAUIDeviceToDeviceEncryptionHook *)self _performHSAUpgradeWithAttributes:v7 completion:v6];
}

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"cdp:upgrade"];

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

  v7 = [v6 isEqualToString:@"cdp:upgrade"];
  return v7;
}

- (void)_performHSAUpgradeWithAttributes:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v6;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Starting HSA2 upgrade with attributes %@", &v19, 0xCu);
  }

  v9 = objc_alloc(MEMORY[0x1E6997860]);
  v10 = [(AAUIDeviceToDeviceEncryptionHook *)self altDSID];
  v11 = [v9 initWithAltDSID:v10];

  [v11 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
  objc_opt_class();
  v12 = [v6 objectForKeyedSubscript:@"featureName"];
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
  v14 = [v6 objectForKeyedSubscript:@"upgradeType"];
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [v11 setDeviceToDeviceEncryptionUpgradeType:{objc_msgSend(v15, "isEqualToString:", @"2FA"}];
  v16 = [(AAUIDeviceToDeviceEncryptionHook *)self delegate];
  v17 = [v16 presentationContextForHook:self];
  [v11 setPresentingViewController:v17];

  v18 = [objc_alloc(MEMORY[0x1E6997868]) initWithContext:v11];
  [v18 performDeviceToDeviceEncryptionStateRepairWithCompletion:v7];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end