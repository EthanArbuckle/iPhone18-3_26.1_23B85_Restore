@interface AAUIServerHookFactory
- (id)_defaultHooks:(id)a3;
- (id)_iCloudDataRecoveryServiceHooksFor:(id)a3 accountManager:(id)a4 cdpContext:(id)a5;
- (id)_passwordAndSecurityHooksForAccount:(id)a3 accountManager:(id)a4;
- (id)_personalInformationHooksForAccount:(id)a3 accountManager:(id)a4;
- (id)hooksFor:(unint64_t)a3 accountManager:(id)a4;
- (id)hooksFor:(unint64_t)a3 accountManager:(id)a4 cdpContext:(id)a5;
@end

@implementation AAUIServerHookFactory

- (id)hooksFor:(unint64_t)a3 accountManager:(id)a4
{
  v6 = a4;
  v7 = [v6 accounts];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (a3 == 3)
  {
    v9 = [(AAUIServerHookFactory *)self _personalInformationHooksForAccount:v8 accountManager:v6];
  }

  else if (a3 == 2)
  {
    v9 = [(AAUIServerHookFactory *)self _iCloudDataRecoveryServiceHooksFor:v8 accountManager:v6 cdpContext:0];
  }

  else
  {
    if (a3 == 1)
    {
      [(AAUIServerHookFactory *)self _passwordAndSecurityHooksForAccount:v8 accountManager:v6];
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

- (id)hooksFor:(unint64_t)a3 accountManager:(id)a4 cdpContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 accounts];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (a3 == 2)
  {
    v12 = [(AAUIServerHookFactory *)self _iCloudDataRecoveryServiceHooksFor:v11 accountManager:v8 cdpContext:v9];
  }

  else
  {
    if (a3 == 1)
    {
      [(AAUIServerHookFactory *)self _passwordAndSecurityHooksForAccount:v11 accountManager:v8];
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

- (id)_defaultHooks:(id)a3
{
  v26[15] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v25 = objc_opt_new();
  v26[0] = v25;
  v4 = [AAUIAuthKitAuthenticatonHook alloc];
  v24 = [v3 username];
  v23 = [v3 aa_altDSID];
  v22 = [(AAUIAuthKitAuthenticatonHook *)v4 initWithUsername:v24 altDSID:v23];
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
  v12 = [v3 aa_altDSID];
  v13 = [v11 initWithAltDSID:v12];
  v26[13] = v13;
  v14 = [objc_alloc(MEMORY[0x1E698DEC0]) initWithAccount:v3];

  v26[14] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:15];

  return v15;
}

- (id)_passwordAndSecurityHooksForAccount:(id)a3 accountManager:(id)a4
{
  v26[5] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF70];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [(AAUIServerHookFactory *)self _defaultHooks:v8];
  v11 = [v9 initWithArray:v10];

  v12 = [MEMORY[0x1E696AFB0] UUID];
  v25 = [v12 UUIDString];

  v13 = [AAUIRecoveryContactsViewFactory createViewModelWithAccountManager:v7 telemetryFlowID:v25];
  v14 = [AAUILegacyContactsViewFactory createViewModelWithAccountManager:v7];
  v15 = objc_opt_new();
  v26[0] = v15;
  v16 = [[AAUIAccountBeneficiaryManagementHook alloc] initWithAccountManager:v7 legacyContactsViewModel:v14];
  v26[1] = v16;
  v17 = [[AAUIAccountRecoveryManagementHook alloc] initWithAccountManager:v7 recoveryContactsViewModel:v13];

  v26[2] = v17;
  v18 = objc_opt_new();
  v26[3] = v18;
  v19 = [AAUIAuthKitPasswordChangeHook alloc];
  v20 = [v8 aa_altDSID];

  v21 = [(AAUIAuthKitPasswordChangeHook *)v19 initWithAltDSID:v20];
  v26[4] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
  [v11 addObjectsFromArray:v22];

  v23 = [v11 copy];

  return v23;
}

- (id)_iCloudDataRecoveryServiceHooksFor:(id)a3 accountManager:(id)a4 cdpContext:(id)a5
{
  v30[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x1E695DF70];
  v11 = a4;
  v12 = [v10 alloc];
  v13 = [(AAUIServerHookFactory *)self _defaultHooks:v8];
  v29 = [v12 initWithArray:v13];

  v14 = [v9 telemetryFlowID];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [MEMORY[0x1E696AFB0] UUID];
    v16 = [v17 UUIDString];
  }

  v18 = [AAUIRecoveryContactsViewFactory createViewModelWithAccountManager:v11 telemetryFlowID:v16];
  v19 = [[AAUICDPWalrusStatusUpdateHook alloc] initWithAppleAccount:v8];
  v30[0] = v19;
  v20 = [[AAUICustodianVerificationHook alloc] initWithAccountManager:v11];
  v30[1] = v20;
  v21 = [AAUICDPCustodianHook alloc];
  v22 = objc_opt_new();
  v23 = [(AAUICDPCustodianHook *)v21 initWithAccountManager:v11 contactsProvider:v22 cdpContext:v9];
  v30[2] = v23;
  v28 = v8;
  v24 = [[AAUIAccountRecoveryManagementHook alloc] initWithAccountManager:v11 recoveryContactsViewModel:v18];

  v30[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  [v29 addObjectsFromArray:v25];

  v26 = [v29 copy];

  return v26;
}

- (id)_personalInformationHooksForAccount:(id)a3 accountManager:(id)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = [(AAUIServerHookFactory *)self _defaultHooks:v6];
  v9 = [v7 initWithArray:v8];

  v10 = [AAUIAuthKitUpdateReachableEmailsHook alloc];
  v11 = [v6 aa_altDSID];
  v12 = [(AAUIAuthKitUpdateReachableEmailsHook *)v10 initWithAltDSID:v11];
  [v9 addObject:v12];

  v13 = [AAUIAccountMigrationHook alloc];
  v14 = [v6 aa_altDSID];

  v15 = [(AAUIAccountMigrationHook *)v13 initWithAltDSID:v14];
  [v9 addObject:v15];

  v16 = [v9 copy];

  return v16;
}

@end