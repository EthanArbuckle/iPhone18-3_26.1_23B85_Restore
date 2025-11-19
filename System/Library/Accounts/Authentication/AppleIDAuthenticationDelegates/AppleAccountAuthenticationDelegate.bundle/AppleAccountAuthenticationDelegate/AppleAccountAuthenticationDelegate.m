void sub_1254(uint64_t a1)
{
  v2 = +[FMDFMIPManager sharedInstance];
  [v2 didReceiveLostModeExitAuthToken:*(a1 + 32)];
}

ponseParameters:(id)a3 accountStore:(id)a4 account:(id)a5 completion:(id)a6;
@end

@implementation AppleAccountAuthenticationDelegate

- (void)didReceiveAuthenticationResponseParameters:(id)a3 accountStore:(id)a4 account:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 objectForKeyedSubscript:@"status"];
  v15 = [v14 intValue];

  if (!v15)
  {
    v18 = [v10 objectForKeyedSubscript:@"dsid"];
    v20 = [v12 accountType];
    v21 = [v20 identifier];
    v22 = ACAccountTypeIdentifierAppleAccount;
    v23 = [v21 isEqualToString:ACAccountTypeIdentifierAppleAccount];

    if (v23)
    {
      v24 = _AALogSystem();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "The account that initiated the auth is an AppleAccount, set the tokens on it", buf, 2u);
      }

      v25 = v12;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v26 = [v11 accountsWithAccountTypeIdentifier:v22];
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
        v34 = self;
        v35 = v12;
        v36 = v11;
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
            v32 = [v31 aa_personID];
            v33 = [v32 isEqualToString:v18];

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
        v12 = v35;
        v11 = v36;
        self = v34;
      }

      if (!v25)
      {
        goto LABEL_5;
      }
    }

    [(AppleAccountAuthenticationDelegate *)self _updateAccount:v25 accountStore:v11 withProvisioningResponse:v10];
    v13[2](v13);

    goto LABEL_28;
  }

  v16 = [v10 objectForKeyedSubscript:@"status-message"];
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

  v13[2](v13);
LABEL_28:
}

- (void)_updateAccount:(id)a3 accountStore:(id)a4 withProvisioningResponse:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "AppleAccountAuthenticationDelegate: Updating Account tokens", buf, 2u);
  }

  v11 = [[AAProvisioningResponse alloc] initWithDictionary:v9];
  if ([v7 aa_updateTokensWithProvisioningResponse:v11])
  {
    v12 = [v7 objectID];

    if (v12)
    {
      v23 = 0;
      if (([v8 saveVerifiedAccount:v7 error:&v23] & 1) == 0)
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

  v14 = [v9 objectForKeyedSubscript:@"tokens"];
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
    v18 = [v17 needsLostModeExitAuth];

    if (v18)
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