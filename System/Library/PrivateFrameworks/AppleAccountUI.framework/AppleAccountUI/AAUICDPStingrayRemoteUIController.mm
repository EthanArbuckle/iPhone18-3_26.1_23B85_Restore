@interface AAUICDPStingrayRemoteUIController
- (AAUICDPStingrayRemoteUIController)initWithRemoteUIController:(id)a3 appleAccount:(id)a4 hooks:(id)a5;
- (void)attachAllHandlersWithTelemetryFlowID:(id)a3;
- (void)attachAuthHandler:(id)a3;
- (void)attachBiometricRatchetHandler:(id)a3;
- (void)attachDTOBiometryHandler:(id)a3;
- (void)attachPasscodeHandler:(id)a3;
- (void)attachRecoveryKeyHandler:(id)a3;
- (void)attachRepairHandler:(id)a3;
@end

@implementation AAUICDPStingrayRemoteUIController

- (AAUICDPStingrayRemoteUIController)initWithRemoteUIController:(id)a3 appleAccount:(id)a4 hooks:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AAUICDPStingrayRemoteUIController *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, a4);
    v13 = [objc_alloc(MEMORY[0x1E69C7030]) initWithRemoteUIController:v8 hooks:v10];
    serverHookHandler = v12->_serverHookHandler;
    v12->_serverHookHandler = v13;

    v15 = objc_opt_new();
    accountManagerHelper = v12->_accountManagerHelper;
    v12->_accountManagerHelper = v15;

    v17 = [(AAUIAccountManagerHelper *)v12->_accountManagerHelper accountManager];
    accountManager = v12->_accountManager;
    v12->_accountManager = v17;

    +[RemoteUICustomComponentFactory registerRemoteUISwiftViews];
  }

  return v12;
}

- (void)attachAllHandlersWithTelemetryFlowID:(id)a3
{
  v42[14] = *MEMORY[0x1E69E9840];
  v33 = a3;
  v28 = objc_opt_new();
  v42[0] = v28;
  v4 = [AAUIAuthKitAuthenticatonHook alloc];
  v36 = self;
  v35 = [(ACAccount *)self->_account username];
  v34 = [(ACAccount *)self->_account aa_altDSID];
  v29 = [(AAUIAuthKitAuthenticatonHook *)v4 initWithUsername:v35 altDSID:v34];
  v42[1] = v29;
  v30 = objc_opt_new();
  v42[2] = v30;
  v31 = objc_opt_new();
  v42[3] = v31;
  v32 = objc_opt_new();
  v42[4] = v32;
  v5 = objc_opt_new();
  v42[5] = v5;
  v6 = objc_opt_new();
  v42[6] = v6;
  v7 = objc_opt_new();
  v42[7] = v7;
  v8 = objc_opt_new();
  v42[8] = v8;
  v9 = [[AAUICustodianStartSessionHook alloc] initWithTelemetryFlowID:v33];
  v42[9] = v9;
  v10 = [[AAUICustodianStartApprovalHook alloc] initWithTelemetryFlowID:v33];
  v42[10] = v10;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v11 = getFALaunchScreenTimeSetupHookClass_softClass;
  v41 = getFALaunchScreenTimeSetupHookClass_softClass;
  if (!getFALaunchScreenTimeSetupHookClass_softClass)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __getFALaunchScreenTimeSetupHookClass_block_invoke;
    v37[3] = &unk_1E820BE08;
    v37[4] = &v38;
    __getFALaunchScreenTimeSetupHookClass_block_invoke(v37);
    v11 = v39[3];
  }

  v12 = v11;
  _Block_object_dispose(&v38, 8);
  v13 = objc_opt_new();
  v42[11] = v13;
  v14 = objc_opt_new();
  v42[12] = v14;
  v15 = [objc_alloc(MEMORY[0x1E698DEC0]) initWithAccount:v36->_account];
  v42[13] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:14];

  v17 = objc_alloc(MEMORY[0x1E698DE78]);
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [v16 mutableCopy];
    v20 = objc_alloc(MEMORY[0x1E698DE78]);
    v21 = [(ACAccount *)v36->_account aa_altDSID];
    v22 = [v20 initWithAltDSID:v21];
    [v19 addObject:v22];

    v23 = [v19 copy];
    v16 = v23;
  }

  v24 = [v16 mutableCopy];
  v25 = objc_opt_new();
  v26 = [v25 hooksFor:2 accountManager:v36->_accountManager];
  [v24 addObjectsFromArray:v26];
  v27 = [v24 copy];

  [(RUIServerHookHandler *)v36->_serverHookHandler setServerHooks:v27];
}

- (void)attachRecoveryKeyHandler:(id)a3
{
  v4 = [(RUIServerHookHandler *)self->_serverHookHandler serverHooks];
  v6 = [v4 mutableCopy];

  v5 = objc_opt_new();
  [v6 addObject:v5];

  [(RUIServerHookHandler *)self->_serverHookHandler setServerHooks:v6];
}

- (void)attachPasscodeHandler:(id)a3
{
  v4 = [(RUIServerHookHandler *)self->_serverHookHandler serverHooks];
  v6 = [v4 mutableCopy];

  v5 = objc_opt_new();
  [v6 addObject:v5];

  [(RUIServerHookHandler *)self->_serverHookHandler setServerHooks:v6];
}

- (void)attachRepairHandler:(id)a3
{
  v4 = [(RUIServerHookHandler *)self->_serverHookHandler serverHooks];
  v6 = [v4 mutableCopy];

  v5 = objc_opt_new();
  [v6 addObject:v5];

  [(RUIServerHookHandler *)self->_serverHookHandler setServerHooks:v6];
}

- (void)attachBiometricRatchetHandler:(id)a3
{
  v4 = [(RUIServerHookHandler *)self->_serverHookHandler serverHooks];
  v6 = [v4 mutableCopy];

  v5 = objc_opt_new();
  [v6 addObject:v5];

  [(RUIServerHookHandler *)self->_serverHookHandler setServerHooks:v6];
}

- (void)attachDTOBiometryHandler:(id)a3
{
  v4 = [(RUIServerHookHandler *)self->_serverHookHandler serverHooks];
  v6 = [v4 mutableCopy];

  v5 = objc_opt_new();
  [v6 addObject:v5];

  [(RUIServerHookHandler *)self->_serverHookHandler setServerHooks:v6];
}

- (void)attachAuthHandler:(id)a3
{
  v4 = [(RUIServerHookHandler *)self->_serverHookHandler serverHooks];
  v6 = [v4 mutableCopy];

  v5 = objc_opt_new();
  [v6 addObject:v5];

  [(RUIServerHookHandler *)self->_serverHookHandler setServerHooks:v6];
}

@end