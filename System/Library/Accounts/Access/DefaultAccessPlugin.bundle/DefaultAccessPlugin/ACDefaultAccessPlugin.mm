@interface ACDefaultAccessPlugin
+ (BOOL)_accessAlertFormerlySupportedByAccountType:(id)a3;
+ (BOOL)supportsAccountTypeWithIdentifier:(id)a3;
+ (id)_fullAccessEntitlementForAccountType:(id)a3;
+ (id)_supportedAccountTypeIdentifiers;
- (BOOL)_shouldGrantClient:(id)a3 defaultAccessToAccountType:(id)a4;
- (BOOL)_shouldGrantClient:(id)a3 unrestrictedAccessToAccountType:(id)a4;
- (void)_presentAccessAlertforClient:(id)a3 onAccountType:(id)a4 withHandler:(id)a5;
- (void)authorizeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6;
- (void)handleAccessRequestToAccountsOfType:(id)a3 forClient:(id)a4 withOptions:(id)a5 store:(id)a6 allowUserInteraction:(BOOL)a7 completion:(id)a8;
- (void)revokeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6;
- (void)revokeAllAccessToAccountsOfType:(id)a3 store:(id)a4 withCompletion:(id)a5;
@end

@implementation ACDefaultAccessPlugin

+ (BOOL)supportsAccountTypeWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _supportedAccountTypeIdentifiers];
  v5 = [v4 containsObject:v3];

  if (v3 && (v5 & 1) == 0)
  {
    v5 = [v3 rangeOfString:@"com.apple.account.kerberos.sso." options:8] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

+ (id)_supportedAccountTypeIdentifiers
{
  v13[14] = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDB8218];
  v13[0] = *MEMORY[0x29EDB81D8];
  v13[1] = v2;
  v3 = *MEMORY[0x29EDB8230];
  v13[2] = *MEMORY[0x29EDB8270];
  v13[3] = v3;
  v4 = *MEMORY[0x29EDB81C8];
  v13[4] = *MEMORY[0x29EDB82D8];
  v13[5] = v4;
  v5 = *MEMORY[0x29EDB82B0];
  v13[6] = *MEMORY[0x29EDB81D0];
  v13[7] = v5;
  v6 = *MEMORY[0x29EDB8228];
  v13[8] = *MEMORY[0x29EDB8290];
  v13[9] = v6;
  v7 = *MEMORY[0x29EDB82A0];
  v13[10] = *MEMORY[0x29EDB82B8];
  v13[11] = v7;
  v8 = *MEMORY[0x29EDB8248];
  v13[12] = *MEMORY[0x29EDB82D0];
  v13[13] = v8;
  v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:14];
  v10 = [MEMORY[0x29EDB8E50] setWithArray:v9];

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (void)handleAccessRequestToAccountsOfType:(id)a3 forClient:(id)a4 withOptions:(id)a5 store:(id)a6 allowUserInteraction:(BOOL)a7 completion:(id)a8
{
  v47 = *MEMORY[0x29EDCA608];
  v13 = a3;
  v14 = a4;
  v38 = a5;
  v15 = a6;
  v16 = a8;
  v39 = [v13 identifier];
  v17 = [v15 authorizationManager];
  if ([v14 hasEntitlement:*MEMORY[0x29EDB83E0]])
  {
    v16[2](v16, 1, 0);
  }

  else if ([(ACDefaultAccessPlugin *)self _shouldGrantClient:v14 unrestrictedAccessToAccountType:v13])
  {
    v18 = _ACDLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_29C7F9EC0();
    }

    v16[2](v16, 1, 0);
  }

  else
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v37 = [MEMORY[0x29EDB8DB0] date];
    v19 = [(ACDefaultAccessPlugin *)self _shouldGrantClient:v14 defaultAccessToAccountType:v13];
    v20 = [objc_opt_class() _accessAlertSupportedByAccountType:v13];
    if (((v19 | v20) & 1) != 0 && ([v17 authorizationForClient:v14 accountType:v13], v21 = objc_claimAutoreleasedReturnValue(), (v22 = v21) != 0))
    {
      v23 = [v21 isGranted];
      v24 = _ACDLogSystem();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [MEMORY[0x29EDBA070] numberWithBool:v23];
        objc_claimAutoreleasedReturnValue();
        sub_29C7F9CF8();
      }

      v16[2](v16, v23, 0);
    }

    else
    {
      if (v19)
      {
        v25 = _ACDLogSystem();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          sub_29C7F9E50();
        }

        v22 = 0;
        v26 = 1;
        *(v44 + 24) = 1;
      }

      else if (v20)
      {
        v27 = _ACDLogSystem();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          sub_29C7F9DD8(v14, v27);
        }

        v28 = dispatch_semaphore_create(0);
        v40[0] = MEMORY[0x29EDCA5F8];
        v40[1] = 3221225472;
        v40[2] = sub_29C7F9410;
        v40[3] = &unk_29F324FA0;
        v42 = &v43;
        v29 = v28;
        v41 = v29;
        [(ACDefaultAccessPlugin *)self _presentAccessAlertforClient:v14 onAccountType:v13 withHandler:v40];
        dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);

        v22 = 0;
        v26 = 1;
      }

      else
      {
        if ([objc_opt_class() _accessAlertFormerlySupportedByAccountType:v13])
        {
          v30 = _ACDLogSystem();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            [v13 identifier];
            objc_claimAutoreleasedReturnValue();
            sub_29C7F9D90();
          }
        }

        else
        {
          v30 = _ACDLogSystem();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [v13 identifier];
            objc_claimAutoreleasedReturnValue();
            sub_29C7F9D40();
          }
        }

        v22 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB8300] code:7 userInfo:0];
        v26 = 0;
      }

      v31 = [objc_alloc(MEMORY[0x29EDBDFF0]) initForClient:v14];
      [v31 setIsGranted:*(v44 + 24)];
      if (v26)
      {
        v32 = [v17 setAuthorization:v31 forClient:v14 onAccountType:v13];

        v22 = v32;
      }

      v33 = [v13 identifier];
      v34 = [v14 bundleID];
      v35 = *(v44 + 24);
      [v37 timeIntervalSinceNow];
      ACDLogAccessRequest();

      (v16)[2](v16, *(v44 + 24), v22);
    }

    _Block_object_dispose(&v43, 8);
  }

  v36 = *MEMORY[0x29EDCA608];
}

- (void)authorizeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6
{
  v9 = MEMORY[0x29EDBDFF0];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v18 = [[v9 alloc] initForClient:v12];
  [v18 setIsGranted:1];
  v14 = [v11 authorizationManager];

  v15 = [v14 setAuthorization:v18 forClient:v12 onAccountType:v13];

  v16 = [v13 identifier];

  v17 = [v12 bundleID];

  [v18 isGranted];
  ACDLogAccessRequest();

  v10[2](v10, v15 == 0, v15);
}

- (void)revokeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = _ACDLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_29C7F9F30(v10, v9, v13);
  }

  v14 = [objc_alloc(MEMORY[0x29EDBDFF0]) initForClient:v10];
  [v14 setIsGranted:0];
  v15 = [v12 authorizationManager];

  v16 = [v15 setAuthorization:v14 forClient:v10 onAccountType:v9];

  v17 = [v9 identifier];
  v18 = [v10 bundleID];
  [v14 isGranted];
  ACDLogAccessRequest();

  v11[2](v11, v16 == 0, v16);
}

- (void)revokeAllAccessToAccountsOfType:(id)a3 store:(id)a4 withCompletion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = _ACDLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_29C7F9FDC(v7, v10);
  }

  v11 = [v9 authorizationManager];

  v12 = [v11 removeAllClientAuthorizationsForAccountType:v7];

  v8[2](v8, v12 == 0, v12);
}

- (BOOL)_shouldGrantClient:(id)a3 unrestrictedAccessToAccountType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() _fullAccessEntitlementForAccountType:v6];

  if (v7)
  {
    v8 = [v5 hasEntitlement:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_shouldGrantClient:(id)a3 defaultAccessToAccountType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() _defaultAccessEntitlementForAccountType:v6];

  if (v7)
  {
    v8 = [v5 hasEntitlement:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_accessAlertFormerlySupportedByAccountType:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v4 isEqual:*MEMORY[0x29EDB82B0]];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 identifier];
    v6 = [v7 isEqual:*MEMORY[0x29EDB8290]];
  }

  return v6;
}

+ (id)_fullAccessEntitlementForAccountType:(id)a3
{
  v3 = [a3 identifier];
  if ([v3 isEqual:*MEMORY[0x29EDB81D8]] & 1) != 0 || (objc_msgSend(v3, "isEqual:", *MEMORY[0x29EDB8218]) & 1) != 0 || (objc_msgSend(v3, "isEqual:", *MEMORY[0x29EDB8270]) & 1) != 0 || (objc_msgSend(v3, "isEqual:", *MEMORY[0x29EDB8230]) & 1) != 0 || (objc_msgSend(v3, "isEqual:", *MEMORY[0x29EDB82D8]) & 1) != 0 || (objc_msgSend(v3, "isEqual:", *MEMORY[0x29EDB81C8]))
  {
    v4 = MEMORY[0x29EDB83E8];
LABEL_8:
    v5 = *v4;
    goto LABEL_9;
  }

  if ([v3 isEqual:*MEMORY[0x29EDB81D0]])
  {
    v4 = MEMORY[0x29EDB83F0];
    goto LABEL_8;
  }

  if ([v3 isEqual:*MEMORY[0x29EDB8248]])
  {
    v4 = MEMORY[0x29EDB83F8];
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (void)_presentAccessAlertforClient:(id)a3 onAccountType:(id)a4 withHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v21 = [a3 localizedAppName];
  v9 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v20 = [v9 localizedStringForKey:@"ACCOUNT_ACCESS_MESSAGE" value:&stru_2A23C7778 table:@"Localizable"];

  v10 = MEMORY[0x29EDBA0F8];
  v11 = [v8 accountTypeDescription];

  v12 = [v10 stringWithFormat:v20, v21, v11];

  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = sub_29C7F9C88;
  v22[3] = &unk_29F324FC8;
  v23 = v7;
  v13 = v7;
  v14 = MEMORY[0x29ED442C0](v22);
  v15 = MEMORY[0x29EDBE008];
  v16 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"DONT_ALLOW" value:&stru_2A23C7778 table:@"Localizable"];
  v18 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"OK" value:&stru_2A23C7778 table:@"Localizable"];
  [v15 showUserNotificationWithTitle:v12 message:&stru_2A23C7778 cancelButtonTitle:v17 otherButtonTitle:v19 withCompletionBlock:v14];
}

@end