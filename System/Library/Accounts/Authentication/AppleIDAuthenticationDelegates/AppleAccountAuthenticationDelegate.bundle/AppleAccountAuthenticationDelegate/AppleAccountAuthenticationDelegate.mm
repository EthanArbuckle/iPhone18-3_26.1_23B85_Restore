@interface AppleAccountAuthenticationDelegate
- (void)_updateAccount:(id)account accountStore:(id)store withProvisioningResponse:(id)response;
- (void)didReceiveAuthenticationResponseParameters:(id)parameters accountStore:(id)store account:(id)account completion:(id)completion;
@end

@implementation AppleAccountAuthenticationDelegate

- (void)didReceiveAuthenticationResponseParameters:(id)parameters accountStore:(id)store account:(id)account completion:(id)completion
{
  parametersCopy = parameters;
  storeCopy = store;
  accountCopy = account;
  completionCopy = completion;
  v14 = [parametersCopy objectForKeyedSubscript:@"status"];
  intValue = [v14 intValue];

  if (!intValue)
  {
    v18 = [parametersCopy objectForKeyedSubscript:@"dsid"];
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
    v22 = ACAccountTypeIdentifierAppleAccount;
    v23 = [identifier isEqualToString:ACAccountTypeIdentifierAppleAccount];

    if (v23)
    {
      v24 = _AALogSystem();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "The account that initiated the auth is an AppleAccount, set the tokens on it", buf, 2u);
      }

      v25 = accountCopy;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v26 = [storeCopy accountsWithAccountTypeIdentifier:v22];
      v27 = _AALogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v18;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "AppleAccountAuthenticationDelegate: Looking for account with personID: %{mask}@", buf, 0xCu);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v28 = v26;
      v25 = [v28 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v25)
      {
        selfCopy = self;
        v35 = accountCopy;
        v36 = storeCopy;
        v29 = *v38;
        while (2)
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v38 != v29)
            {
              objc_enumerationMutation(v28);
            }

            v31 = *(*(&v37 + 1) + 8 * i);
            aa_personID = [v31 aa_personID];
            v33 = [aa_personID isEqualToString:v18];

            if (v33)
            {
              v25 = v31;
              goto LABEL_25;
            }
          }

          v25 = [v28 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }

LABEL_25:
        accountCopy = v35;
        storeCopy = v36;
        self = selfCopy;
      }

      if (!v25)
      {
        goto LABEL_5;
      }
    }

    [(AppleAccountAuthenticationDelegate *)self _updateAccount:v25 accountStore:storeCopy withProvisioningResponse:parametersCopy];
    completionCopy[2](completionCopy);

    goto LABEL_28;
  }

  v16 = [parametersCopy objectForKeyedSubscript:@"status-message"];
  v17 = _AALogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v16;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "AppleAccountAuthenticationDelegate: Auth ERROR: %@", buf, 0xCu);
  }

  v18 = 0;
LABEL_5:
  v19 = _AALogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "AppleAccountAuthenticationDelegate: Couldn't find an matching AppleAccount", buf, 2u);
  }

  completionCopy[2](completionCopy);
LABEL_28:
}

- (void)_updateAccount:(id)account accountStore:(id)store withProvisioningResponse:(id)response
{
  accountCopy = account;
  storeCopy = store;
  responseCopy = response;
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "AppleAccountAuthenticationDelegate: Updating Account tokens", buf, 2u);
  }

  v11 = [[AAProvisioningResponse alloc] initWithDictionary:responseCopy];
  if ([accountCopy aa_updateTokensWithProvisioningResponse:v11])
  {
    objectID = [accountCopy objectID];

    if (objectID)
    {
      v23 = 0;
      if (([storeCopy saveVerifiedAccount:accountCopy error:&v23] & 1) == 0)
      {
        v13 = _AALogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "AAAuthenticationDelegate - Account save failed", buf, 2u);
        }
      }
    }
  }

  v14 = [responseCopy objectForKeyedSubscript:@"tokens"];
  v15 = [v14 objectForKeyedSubscript:kAAProtocolFMIPLostModeTokenKey];

  if (v15)
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "AppleAccountAuthenticationDelegate received FMIP lost-mode token.", buf, 2u);
    }

    v17 = +[FMDFMIPManager sharedInstance];
    needsLostModeExitAuth = [v17 needsLostModeExitAuth];

    if (needsLostModeExitAuth)
    {
      v19 = _AALogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Sending lost-mode token to FMDFMIPManager didReceiveLostModeExitAuthToken...", buf, 2u);
      }

      v20 = dispatch_get_global_queue(0, 0);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1254;
      v21[3] = &unk_4130;
      v22 = v15;
      dispatch_async(v20, v21);
    }
  }
}

@end