@interface ACDefaultAccessPlugin
+ (BOOL)_accessAlertFormerlySupportedByAccountType:(id)type;
+ (BOOL)supportsAccountTypeWithIdentifier:(id)identifier;
+ (id)_fullAccessEntitlementForAccountType:(id)type;
+ (id)_supportedAccountTypeIdentifiers;
- (BOOL)_shouldGrantClient:(id)client defaultAccessToAccountType:(id)type;
- (BOOL)_shouldGrantClient:(id)client unrestrictedAccessToAccountType:(id)type;
- (void)_presentAccessAlertforClient:(id)client onAccountType:(id)type withHandler:(id)handler;
- (void)authorizeAccessToAccountsOfType:(id)type forClient:(id)client store:(id)store completion:(id)completion;
- (void)handleAccessRequestToAccountsOfType:(id)type forClient:(id)client withOptions:(id)options store:(id)store allowUserInteraction:(BOOL)interaction completion:(id)completion;
- (void)revokeAccessToAccountsOfType:(id)type forClient:(id)client store:(id)store completion:(id)completion;
- (void)revokeAllAccessToAccountsOfType:(id)type store:(id)store withCompletion:(id)completion;
@end

@implementation ACDefaultAccessPlugin

+ (BOOL)supportsAccountTypeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _supportedAccountTypeIdentifiers = [objc_opt_class() _supportedAccountTypeIdentifiers];
  v5 = [_supportedAccountTypeIdentifiers containsObject:identifierCopy];

  if (identifierCopy && (v5 & 1) == 0)
  {
    v5 = [identifierCopy rangeOfString:@"com.apple.account.kerberos.sso." options:8] != 0x7FFFFFFFFFFFFFFFLL;
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

- (void)handleAccessRequestToAccountsOfType:(id)type forClient:(id)client withOptions:(id)options store:(id)store allowUserInteraction:(BOOL)interaction completion:(id)completion
{
  v47 = *MEMORY[0x29EDCA608];
  typeCopy = type;
  clientCopy = client;
  optionsCopy = options;
  storeCopy = store;
  completionCopy = completion;
  identifier = [typeCopy identifier];
  authorizationManager = [storeCopy authorizationManager];
  if ([clientCopy hasEntitlement:*MEMORY[0x29EDB83E0]])
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else if ([(ACDefaultAccessPlugin *)self _shouldGrantClient:clientCopy unrestrictedAccessToAccountType:typeCopy])
  {
    v18 = _ACDLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_29C7F9EC0();
    }

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    date = [MEMORY[0x29EDB8DB0] date];
    v19 = [(ACDefaultAccessPlugin *)self _shouldGrantClient:clientCopy defaultAccessToAccountType:typeCopy];
    v20 = [objc_opt_class() _accessAlertSupportedByAccountType:typeCopy];
    if (((v19 | v20) & 1) != 0 && ([authorizationManager authorizationForClient:clientCopy accountType:typeCopy], v21 = objc_claimAutoreleasedReturnValue(), (v22 = v21) != 0))
    {
      isGranted = [v21 isGranted];
      v24 = _ACDLogSystem();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [MEMORY[0x29EDBA070] numberWithBool:isGranted];
        objc_claimAutoreleasedReturnValue();
        sub_29C7F9CF8();
      }

      completionCopy[2](completionCopy, isGranted, 0);
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
          sub_29C7F9DD8(clientCopy, v27);
        }

        v28 = dispatch_semaphore_create(0);
        v40[0] = MEMORY[0x29EDCA5F8];
        v40[1] = 3221225472;
        v40[2] = sub_29C7F9410;
        v40[3] = &unk_29F324FA0;
        v42 = &v43;
        v29 = v28;
        v41 = v29;
        [(ACDefaultAccessPlugin *)self _presentAccessAlertforClient:clientCopy onAccountType:typeCopy withHandler:v40];
        dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);

        v22 = 0;
        v26 = 1;
      }

      else
      {
        if ([objc_opt_class() _accessAlertFormerlySupportedByAccountType:typeCopy])
        {
          v30 = _ACDLogSystem();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            [typeCopy identifier];
            objc_claimAutoreleasedReturnValue();
            sub_29C7F9D90();
          }
        }

        else
        {
          v30 = _ACDLogSystem();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [typeCopy identifier];
            objc_claimAutoreleasedReturnValue();
            sub_29C7F9D40();
          }
        }

        v22 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB8300] code:7 userInfo:0];
        v26 = 0;
      }

      v31 = [objc_alloc(MEMORY[0x29EDBDFF0]) initForClient:clientCopy];
      [v31 setIsGranted:*(v44 + 24)];
      if (v26)
      {
        v32 = [authorizationManager setAuthorization:v31 forClient:clientCopy onAccountType:typeCopy];

        v22 = v32;
      }

      identifier2 = [typeCopy identifier];
      bundleID = [clientCopy bundleID];
      v35 = *(v44 + 24);
      [date timeIntervalSinceNow];
      ACDLogAccessRequest();

      (completionCopy)[2](completionCopy, *(v44 + 24), v22);
    }

    _Block_object_dispose(&v43, 8);
  }

  v36 = *MEMORY[0x29EDCA608];
}

- (void)authorizeAccessToAccountsOfType:(id)type forClient:(id)client store:(id)store completion:(id)completion
{
  v9 = MEMORY[0x29EDBDFF0];
  completionCopy = completion;
  storeCopy = store;
  clientCopy = client;
  typeCopy = type;
  v18 = [[v9 alloc] initForClient:clientCopy];
  [v18 setIsGranted:1];
  authorizationManager = [storeCopy authorizationManager];

  v15 = [authorizationManager setAuthorization:v18 forClient:clientCopy onAccountType:typeCopy];

  identifier = [typeCopy identifier];

  bundleID = [clientCopy bundleID];

  [v18 isGranted];
  ACDLogAccessRequest();

  completionCopy[2](completionCopy, v15 == 0, v15);
}

- (void)revokeAccessToAccountsOfType:(id)type forClient:(id)client store:(id)store completion:(id)completion
{
  typeCopy = type;
  clientCopy = client;
  completionCopy = completion;
  storeCopy = store;
  v13 = _ACDLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_29C7F9F30(clientCopy, typeCopy, v13);
  }

  v14 = [objc_alloc(MEMORY[0x29EDBDFF0]) initForClient:clientCopy];
  [v14 setIsGranted:0];
  authorizationManager = [storeCopy authorizationManager];

  v16 = [authorizationManager setAuthorization:v14 forClient:clientCopy onAccountType:typeCopy];

  identifier = [typeCopy identifier];
  bundleID = [clientCopy bundleID];
  [v14 isGranted];
  ACDLogAccessRequest();

  completionCopy[2](completionCopy, v16 == 0, v16);
}

- (void)revokeAllAccessToAccountsOfType:(id)type store:(id)store withCompletion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  storeCopy = store;
  v10 = _ACDLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_29C7F9FDC(typeCopy, v10);
  }

  authorizationManager = [storeCopy authorizationManager];

  v12 = [authorizationManager removeAllClientAuthorizationsForAccountType:typeCopy];

  completionCopy[2](completionCopy, v12 == 0, v12);
}

- (BOOL)_shouldGrantClient:(id)client unrestrictedAccessToAccountType:(id)type
{
  clientCopy = client;
  typeCopy = type;
  v7 = [objc_opt_class() _fullAccessEntitlementForAccountType:typeCopy];

  if (v7)
  {
    v8 = [clientCopy hasEntitlement:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_shouldGrantClient:(id)client defaultAccessToAccountType:(id)type
{
  clientCopy = client;
  typeCopy = type;
  v7 = [objc_opt_class() _defaultAccessEntitlementForAccountType:typeCopy];

  if (v7)
  {
    v8 = [clientCopy hasEntitlement:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_accessAlertFormerlySupportedByAccountType:(id)type
{
  typeCopy = type;
  identifier = [typeCopy identifier];
  v5 = [identifier isEqual:*MEMORY[0x29EDB82B0]];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    identifier2 = [typeCopy identifier];
    v6 = [identifier2 isEqual:*MEMORY[0x29EDB8290]];
  }

  return v6;
}

+ (id)_fullAccessEntitlementForAccountType:(id)type
{
  identifier = [type identifier];
  if ([identifier isEqual:*MEMORY[0x29EDB81D8]] & 1) != 0 || (objc_msgSend(identifier, "isEqual:", *MEMORY[0x29EDB8218]) & 1) != 0 || (objc_msgSend(identifier, "isEqual:", *MEMORY[0x29EDB8270]) & 1) != 0 || (objc_msgSend(identifier, "isEqual:", *MEMORY[0x29EDB8230]) & 1) != 0 || (objc_msgSend(identifier, "isEqual:", *MEMORY[0x29EDB82D8]) & 1) != 0 || (objc_msgSend(identifier, "isEqual:", *MEMORY[0x29EDB81C8]))
  {
    v4 = MEMORY[0x29EDB83E8];
LABEL_8:
    v5 = *v4;
    goto LABEL_9;
  }

  if ([identifier isEqual:*MEMORY[0x29EDB81D0]])
  {
    v4 = MEMORY[0x29EDB83F0];
    goto LABEL_8;
  }

  if ([identifier isEqual:*MEMORY[0x29EDB8248]])
  {
    v4 = MEMORY[0x29EDB83F8];
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (void)_presentAccessAlertforClient:(id)client onAccountType:(id)type withHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  localizedAppName = [client localizedAppName];
  v9 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v20 = [v9 localizedStringForKey:@"ACCOUNT_ACCESS_MESSAGE" value:&stru_2A23C7778 table:@"Localizable"];

  v10 = MEMORY[0x29EDBA0F8];
  accountTypeDescription = [typeCopy accountTypeDescription];

  v12 = [v10 stringWithFormat:v20, localizedAppName, accountTypeDescription];

  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = sub_29C7F9C88;
  v22[3] = &unk_29F324FC8;
  v23 = handlerCopy;
  v13 = handlerCopy;
  v14 = MEMORY[0x29ED442C0](v22);
  v15 = MEMORY[0x29EDBE008];
  v16 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"DONT_ALLOW" value:&stru_2A23C7778 table:@"Localizable"];
  v18 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"OK" value:&stru_2A23C7778 table:@"Localizable"];
  [v15 showUserNotificationWithTitle:v12 message:&stru_2A23C7778 cancelButtonTitle:v17 otherButtonTitle:v19 withCompletionBlock:v14];
}

@end