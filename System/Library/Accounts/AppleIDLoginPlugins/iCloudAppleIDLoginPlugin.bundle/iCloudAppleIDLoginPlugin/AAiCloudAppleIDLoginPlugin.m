@interface AAiCloudAppleIDLoginPlugin
- (id)_accountStore;
- (id)_descriptionFromEmailAddress:(id)a3;
- (id)parametersForIdentityEstablishmentRequest;
- (id)parametersForLoginRequest;
- (void)_addAccountWithServerResponse:(id)a3 password:(id)a4 emailAddress:(id)a5;
- (void)_updateAccount:(id)a3 withProvisioningResponse:(id)a4 emailAddress:(id)a5;
- (void)handleLoginResponse:(id)a3 completion:(id)a4;
@end

@implementation AAiCloudAppleIDLoginPlugin

- (id)parametersForLoginRequest
{
  v2 = +[FMDFMIPManager sharedInstance];
  if ([v2 needsLostModeExitAuth])
  {
    v3 = &off_43C8;
  }

  else
  {
    v3 = &__NSDictionary0__struct;
  }

  return v3;
}

- (id)parametersForIdentityEstablishmentRequest
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(AAiCloudAppleIDLoginPlugin *)self _accountStore];
  v5 = [v4 aa_primaryAppleAccount];

  if (v5)
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"account-exists"];
    v6 = [v5 username];

    if (v6)
    {
      v7 = [v5 username];
      [v3 setObject:v7 forKeyedSubscript:@"appleId"];
    }

    v8 = [v5 aa_personID];

    if (v8)
    {
      v9 = [v5 aa_personID];
      [v3 setObject:v9 forKeyedSubscript:@"dsid"];
    }

    v10 = [v5 aa_password];

    if (v10)
    {
      v11 = [v5 aa_password];
      [v3 setObject:v11 forKeyedSubscript:@"password"];
    }
  }

  else
  {
    [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"account-exists"];
  }

  return v3;
}

- (void)handleLoginResponse:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    kdebug_trace();
    v8 = [v6 objectForKeyedSubscript:@"password"];
    v36 = [v6 objectForKeyedSubscript:@"appleIDEnteredByUser"];
    v9 = [v6 objectForKeyedSubscript:@"status"];
    v10 = [v9 intValue];

    v34 = self;
    if (v10)
    {
      v11 = [v6 objectForKeyedSubscript:@"status-message"];
      v12 = 0;
      v35 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v18 = [[AAProvisioningResponse alloc] initWithDictionary:v6];
      if (v18)
      {
        v35 = v18;
        v13 = [v18 personID];
        v19 = [(AAiCloudAppleIDLoginPlugin *)self _accountStore];
        v20 = [v19 aa_appleAccounts];

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v21 = v20;
        v11 = [v21 countByEnumeratingWithState:&v39 objects:v46 count:16];
        if (v11)
        {
          v33 = v8;
          v22 = *v40;
          while (2)
          {
            for (i = 0; i != v11; i = (i + 1))
            {
              if (*v40 != v22)
              {
                objc_enumerationMutation(v21);
              }

              v24 = *(*(&v39 + 1) + 8 * i);
              v25 = [v24 aa_personID];
              v26 = [v25 isEqualToString:v13];

              if (v26)
              {
                v27 = [(AAiCloudAppleIDLoginPlugin *)v34 _accountStore];
                v28 = [v27 aa_primaryAppleAccount];

                if (!v28)
                {
                  [v24 aa_setPrimaryAccount:1];
                }

                v12 = v24;
                v15 = 0;
                v14 = 1;
                v11 = @"The account already exists.";
                goto LABEL_22;
              }
            }

            v11 = [v21 countByEnumeratingWithState:&v39 objects:v46 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }

          v12 = 0;
          v14 = 0;
          v15 = 1;
LABEL_22:
          v8 = v33;
        }

        else
        {
          v12 = 0;
          v14 = 0;
          v15 = 1;
        }

        v16 = v36;

LABEL_26:
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_12C4;
        v37[3] = &unk_41A8;
        v38 = v7;
        v29 = objc_retainBlock(v37);
        if (v15)
        {
          v30 = v35;
          [(AAiCloudAppleIDLoginPlugin *)v34 _addAccountWithServerResponse:v35 password:v8 emailAddress:v16];
        }

        else
        {
          if (!v14)
          {
            v44 = NSLocalizedDescriptionKey;
            v45 = v11;
            v31 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            v32 = [NSError errorWithDomain:@"com.apple.appleaccount" code:0 userInfo:v31];
            (v29[2])(v29, 0, v32);

            v30 = v35;
            goto LABEL_32;
          }

          [v12 aa_setPassword:v8];
          v30 = v35;
          [(AAiCloudAppleIDLoginPlugin *)v34 _updateAccount:v12 withProvisioningResponse:v35 emailAddress:v16];
        }

        (v29[2])(v29, 1, 0);
LABEL_32:

        goto LABEL_33;
      }

      v12 = 0;
      v35 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v11 = @"Communications error with setup server.";
    }

    v16 = v36;
    goto LABEL_26;
  }

  v17 = _AALogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "ERROR: The server response parameters being passed in is empty - will not run iCloud account setup", buf, 2u);
  }

  (*(v7 + 2))(v7, 0, 0);
LABEL_33:
}

- (void)_addAccountWithServerResponse:(id)a3 password:(id)a4 emailAddress:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 appleID];
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Adding account with server response", buf, 2u);
  }

  if (v9)
  {
    v11 = [(AAiCloudAppleIDLoginPlugin *)self _descriptionFromEmailAddress:v9];
    v12 = [ACAccount alloc];
    v13 = [(AAiCloudAppleIDLoginPlugin *)self _accountStore];
    v14 = [v13 aa_appleAccountType];
    v15 = [v12 initWithAccountType:v14];

    [v15 setUsername:v9];
    [v15 aa_setPassword:v8];
    [v15 setAccountDescription:v11];
    v16 = [v7 iCloudAuthToken];
    [v15 aa_setAuthToken:v16];

    v17 = [(AAiCloudAppleIDLoginPlugin *)self _accountStore];
    v18 = [v17 aa_primaryAppleAccount];

    if (!v18)
    {
      [v15 aa_setPrimaryAccount:1];
    }

    [v15 aa_updateWithProvisioningResponse:v7];
    v19 = dispatch_semaphore_create(0);
    v20 = _AALogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Saving account: %@", buf, 0xCu);
    }

    v21 = [(AAiCloudAppleIDLoginPlugin *)self _accountStore];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_15F4;
    v23[3] = &unk_41D0;
    v24 = v19;
    v22 = v19;
    [v21 saveAccount:v15 withCompletionHandler:v23];

    dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)_updateAccount:(id)a3 withProvisioningResponse:(id)a4 emailAddress:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Updating account with server response", buf, 2u);
  }

  v10 = [v8 provisionedDataclasses];
  v11 = [v7 provisionedDataclasses];
  v12 = [NSMutableSet setWithArray:v10];
  [v12 minusSet:v11];
  v13 = [v8 fmipLostModeToken];
  if (v13)
  {
    v14 = +[FMDFMIPManager sharedInstance];
    v15 = [v14 needsLostModeExitAuth];

    if (v15)
    {
      v16 = _AALogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Sending lost mode token to FMIP", buf, 2u);
      }

      v17 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_19C4;
      block[3] = &unk_41F8;
      v25 = v13;
      dispatch_async(v17, block);
    }
  }

  [v7 aa_updateWithProvisioningResponse:v8];
  v18 = dispatch_semaphore_create(0);
  v19 = _AALogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v7;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Updating existing account: %@", buf, 0xCu);
  }

  v20 = [(AAiCloudAppleIDLoginPlugin *)self _accountStore];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1A1C;
  v22[3] = &unk_41D0;
  v23 = v18;
  v21 = v18;
  [v20 saveAccount:v7 withCompletionHandler:v22];

  dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)_descriptionFromEmailAddress:(id)a3
{
  v4 = a3;
  v5 = [(AAiCloudAppleIDLoginPlugin *)self _accountStore];
  v6 = @"iCloud";
  v7 = [v5 hasAccountWithDescription:@"iCloud"];

  if (v7)
  {
    v6 = v4;
  }

  return v6;
}

- (id)_accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = +[ACAccountStore defaultStore];
    v5 = self->_accountStore;
    self->_accountStore = v4;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

@end