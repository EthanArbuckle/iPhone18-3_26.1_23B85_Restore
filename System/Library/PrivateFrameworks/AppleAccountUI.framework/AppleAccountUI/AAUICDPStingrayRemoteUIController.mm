@interface AAUICDPStingrayRemoteUIController
- (AAUICDPStingrayRemoteUIController)initWithRemoteUIController:(id)controller appleAccount:(id)account hooks:(id)hooks;
- (void)attachAllHandlersWithTelemetryFlowID:(id)d;
- (void)attachAuthHandler:(id)handler;
- (void)attachBiometricRatchetHandler:(id)handler;
- (void)attachDTOBiometryHandler:(id)handler;
- (void)attachPasscodeHandler:(id)handler;
- (void)attachRecoveryKeyHandler:(id)handler;
- (void)attachRepairHandler:(id)handler;
@end

@implementation AAUICDPStingrayRemoteUIController

- (AAUICDPStingrayRemoteUIController)initWithRemoteUIController:(id)controller appleAccount:(id)account hooks:(id)hooks
{
  controllerCopy = controller;
  accountCopy = account;
  hooksCopy = hooks;
  v11 = [(AAUICDPStingrayRemoteUIController *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, account);
    v13 = [objc_alloc(MEMORY[0x1E69C7030]) initWithRemoteUIController:controllerCopy hooks:hooksCopy];
    serverHookHandler = v12->_serverHookHandler;
    v12->_serverHookHandler = v13;

    v15 = objc_opt_new();
    accountManagerHelper = v12->_accountManagerHelper;
    v12->_accountManagerHelper = v15;

    accountManager = [(AAUIAccountManagerHelper *)v12->_accountManagerHelper accountManager];
    accountManager = v12->_accountManager;
    v12->_accountManager = accountManager;

    +[RemoteUICustomComponentFactory registerRemoteUISwiftViews];
  }

  return v12;
}

- (void)attachAllHandlersWithTelemetryFlowID:(id)d
{
  v42[14] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v28 = objc_opt_new();
  v42[0] = v28;
  v4 = [AAUIAuthKitAuthenticatonHook alloc];
  selfCopy = self;
  username = [(ACAccount *)self->_account username];
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  v29 = [(AAUIAuthKitAuthenticatonHook *)v4 initWithUsername:username altDSID:aa_altDSID];
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
  v9 = [[AAUICustodianStartSessionHook alloc] initWithTelemetryFlowID:dCopy];
  v42[9] = v9;
  v10 = [[AAUICustodianStartApprovalHook alloc] initWithTelemetryFlowID:dCopy];
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
  v15 = [objc_alloc(MEMORY[0x1E698DEC0]) initWithAccount:selfCopy->_account];
  v42[13] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:14];

  v17 = objc_alloc(MEMORY[0x1E698DE78]);
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [v16 mutableCopy];
    v20 = objc_alloc(MEMORY[0x1E698DE78]);
    aa_altDSID2 = [(ACAccount *)selfCopy->_account aa_altDSID];
    v22 = [v20 initWithAltDSID:aa_altDSID2];
    [v19 addObject:v22];

    v23 = [v19 copy];
    v16 = v23;
  }

  v24 = [v16 mutableCopy];
  v25 = objc_opt_new();
  v26 = [v25 hooksFor:2 accountManager:selfCopy->_accountManager];
  [v24 addObjectsFromArray:v26];
  v27 = [v24 copy];

  [(RUIServerHookHandler *)selfCopy->_serverHookHandler setServerHooks:v27];
}

- (void)attachRecoveryKeyHandler:(id)handler
{
  serverHooks = [(RUIServerHookHandler *)self->_serverHookHandler serverHooks];
  v6 = [serverHooks mutableCopy];

  v5 = objc_opt_new();
  [v6 addObject:v5];

  [(RUIServerHookHandler *)self->_serverHookHandler setServerHooks:v6];
}

- (void)attachPasscodeHandler:(id)handler
{
  serverHooks = [(RUIServerHookHandler *)self->_serverHookHandler serverHooks];
  v6 = [serverHooks mutableCopy];

  v5 = objc_opt_new();
  [v6 addObject:v5];

  [(RUIServerHookHandler *)self->_serverHookHandler setServerHooks:v6];
}

- (void)attachRepairHandler:(id)handler
{
  serverHooks = [(RUIServerHookHandler *)self->_serverHookHandler serverHooks];
  v6 = [serverHooks mutableCopy];

  v5 = objc_opt_new();
  [v6 addObject:v5];

  [(RUIServerHookHandler *)self->_serverHookHandler setServerHooks:v6];
}

- (void)attachBiometricRatchetHandler:(id)handler
{
  serverHooks = [(RUIServerHookHandler *)self->_serverHookHandler serverHooks];
  v6 = [serverHooks mutableCopy];

  v5 = objc_opt_new();
  [v6 addObject:v5];

  [(RUIServerHookHandler *)self->_serverHookHandler setServerHooks:v6];
}

- (void)attachDTOBiometryHandler:(id)handler
{
  serverHooks = [(RUIServerHookHandler *)self->_serverHookHandler serverHooks];
  v6 = [serverHooks mutableCopy];

  v5 = objc_opt_new();
  [v6 addObject:v5];

  [(RUIServerHookHandler *)self->_serverHookHandler setServerHooks:v6];
}

- (void)attachAuthHandler:(id)handler
{
  serverHooks = [(RUIServerHookHandler *)self->_serverHookHandler serverHooks];
  v6 = [serverHooks mutableCopy];

  v5 = objc_opt_new();
  [v6 addObject:v5];

  [(RUIServerHookHandler *)self->_serverHookHandler setServerHooks:v6];
}

@end