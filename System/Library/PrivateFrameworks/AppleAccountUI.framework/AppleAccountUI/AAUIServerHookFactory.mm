@interface AAUIServerHookFactory
- (id)_defaultHooks:(id)hooks;
- (id)_iCloudDataRecoveryServiceHooksFor:(id)for accountManager:(id)manager cdpContext:(id)context;
- (id)_passwordAndSecurityHooksForAccount:(id)account accountManager:(id)manager;
- (id)_personalInformationHooksForAccount:(id)account accountManager:(id)manager;
- (id)hooksFor:(unint64_t)for accountManager:(id)manager;
- (id)hooksFor:(unint64_t)for accountManager:(id)manager cdpContext:(id)context;
@end

@implementation AAUIServerHookFactory

- (id)hooksFor:(unint64_t)for accountManager:(id)manager
{
  managerCopy = manager;
  accounts = [managerCopy accounts];
  v8 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (for == 3)
  {
    v9 = [(AAUIServerHookFactory *)self _personalInformationHooksForAccount:v8 accountManager:managerCopy];
  }

  else if (for == 2)
  {
    v9 = [(AAUIServerHookFactory *)self _iCloudDataRecoveryServiceHooksFor:v8 accountManager:managerCopy cdpContext:0];
  }

  else
  {
    if (for == 1)
    {
      [(AAUIServerHookFactory *)self _passwordAndSecurityHooksForAccount:v8 accountManager:managerCopy];
    }

    else
    {
      [(AAUIServerHookFactory *)self _defaultHooks:v8];
    }
    v9 = ;
  }

  v10 = v9;

  return v10;
}

- (id)hooksFor:(unint64_t)for accountManager:(id)manager cdpContext:(id)context
{
  managerCopy = manager;
  contextCopy = context;
  accounts = [managerCopy accounts];
  v11 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (for == 2)
  {
    v12 = [(AAUIServerHookFactory *)self _iCloudDataRecoveryServiceHooksFor:v11 accountManager:managerCopy cdpContext:contextCopy];
  }

  else
  {
    if (for == 1)
    {
      [(AAUIServerHookFactory *)self _passwordAndSecurityHooksForAccount:v11 accountManager:managerCopy];
    }

    else
    {
      [(AAUIServerHookFactory *)self _defaultHooks:v11];
    }
    v12 = ;
  }

  v13 = v12;

  return v13;
}

- (id)_defaultHooks:(id)hooks
{
  v26[15] = *MEMORY[0x1E69E9840];
  hooksCopy = hooks;
  v25 = objc_opt_new();
  v26[0] = v25;
  v4 = [AAUIAuthKitAuthenticatonHook alloc];
  username = [hooksCopy username];
  aa_altDSID = [hooksCopy aa_altDSID];
  v22 = [(AAUIAuthKitAuthenticatonHook *)v4 initWithUsername:username altDSID:aa_altDSID];
  v26[1] = v22;
  v21 = objc_opt_new();
  v26[2] = v21;
  v20 = objc_opt_new();
  v26[3] = v20;
  v19 = objc_opt_new();
  v26[4] = v19;
  v18 = objc_opt_new();
  v26[5] = v18;
  v17 = objc_opt_new();
  v26[6] = v17;
  v5 = objc_opt_new();
  v26[7] = v5;
  v6 = objc_opt_new();
  v26[8] = v6;
  v7 = objc_opt_new();
  v26[9] = v7;
  v8 = objc_opt_new();
  v26[10] = v8;
  v9 = objc_opt_new();
  v26[11] = v9;
  v10 = objc_opt_new();
  v26[12] = v10;
  v11 = objc_alloc(MEMORY[0x1E698DE78]);
  aa_altDSID2 = [hooksCopy aa_altDSID];
  v13 = [v11 initWithAltDSID:aa_altDSID2];
  v26[13] = v13;
  v14 = [objc_alloc(MEMORY[0x1E698DEC0]) initWithAccount:hooksCopy];

  v26[14] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:15];

  return v15;
}

- (id)_passwordAndSecurityHooksForAccount:(id)account accountManager:(id)manager
{
  v26[5] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF70];
  managerCopy = manager;
  accountCopy = account;
  v9 = [v6 alloc];
  v10 = [(AAUIServerHookFactory *)self _defaultHooks:accountCopy];
  v11 = [v9 initWithArray:v10];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v13 = [AAUIRecoveryContactsViewFactory createViewModelWithAccountManager:managerCopy telemetryFlowID:uUIDString];
  v14 = [AAUILegacyContactsViewFactory createViewModelWithAccountManager:managerCopy];
  v15 = objc_opt_new();
  v26[0] = v15;
  v16 = [[AAUIAccountBeneficiaryManagementHook alloc] initWithAccountManager:managerCopy legacyContactsViewModel:v14];
  v26[1] = v16;
  v17 = [[AAUIAccountRecoveryManagementHook alloc] initWithAccountManager:managerCopy recoveryContactsViewModel:v13];

  v26[2] = v17;
  v18 = objc_opt_new();
  v26[3] = v18;
  v19 = [AAUIAuthKitPasswordChangeHook alloc];
  aa_altDSID = [accountCopy aa_altDSID];

  v21 = [(AAUIAuthKitPasswordChangeHook *)v19 initWithAltDSID:aa_altDSID];
  v26[4] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
  [v11 addObjectsFromArray:v22];

  v23 = [v11 copy];

  return v23;
}

- (id)_iCloudDataRecoveryServiceHooksFor:(id)for accountManager:(id)manager cdpContext:(id)context
{
  v30[4] = *MEMORY[0x1E69E9840];
  forCopy = for;
  contextCopy = context;
  v10 = MEMORY[0x1E695DF70];
  managerCopy = manager;
  v12 = [v10 alloc];
  v13 = [(AAUIServerHookFactory *)self _defaultHooks:forCopy];
  v29 = [v12 initWithArray:v13];

  telemetryFlowID = [contextCopy telemetryFlowID];
  v15 = telemetryFlowID;
  if (telemetryFlowID)
  {
    uUIDString = telemetryFlowID;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  v18 = [AAUIRecoveryContactsViewFactory createViewModelWithAccountManager:managerCopy telemetryFlowID:uUIDString];
  v19 = [[AAUICDPWalrusStatusUpdateHook alloc] initWithAppleAccount:forCopy];
  v30[0] = v19;
  v20 = [[AAUICustodianVerificationHook alloc] initWithAccountManager:managerCopy];
  v30[1] = v20;
  v21 = [AAUICDPCustodianHook alloc];
  v22 = objc_opt_new();
  v23 = [(AAUICDPCustodianHook *)v21 initWithAccountManager:managerCopy contactsProvider:v22 cdpContext:contextCopy];
  v30[2] = v23;
  v28 = forCopy;
  v24 = [[AAUIAccountRecoveryManagementHook alloc] initWithAccountManager:managerCopy recoveryContactsViewModel:v18];

  v30[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  [v29 addObjectsFromArray:v25];

  v26 = [v29 copy];

  return v26;
}

- (id)_personalInformationHooksForAccount:(id)account accountManager:(id)manager
{
  v5 = MEMORY[0x1E695DF70];
  accountCopy = account;
  v7 = [v5 alloc];
  v8 = [(AAUIServerHookFactory *)self _defaultHooks:accountCopy];
  v9 = [v7 initWithArray:v8];

  v10 = [AAUIAuthKitUpdateReachableEmailsHook alloc];
  aa_altDSID = [accountCopy aa_altDSID];
  v12 = [(AAUIAuthKitUpdateReachableEmailsHook *)v10 initWithAltDSID:aa_altDSID];
  [v9 addObject:v12];

  v13 = [AAUIAccountMigrationHook alloc];
  aa_altDSID2 = [accountCopy aa_altDSID];

  v15 = [(AAUIAccountMigrationHook *)v13 initWithAltDSID:aa_altDSID2];
  [v9 addObject:v15];

  v16 = [v9 copy];

  return v16;
}

@end