@interface ACAccountStore(AppleAccount)
- (BOOL)aa_isUsingiCloud;
- (id)aa_accountsEnabledForDataclass:()AppleAccount;
- (id)aa_accountsForAccountClass:()AppleAccount;
- (id)aa_appleAccountWithAltDSID:()AppleAccount;
- (id)aa_appleAccountWithPersonID:()AppleAccount;
- (id)aa_appleAccountWithUsername:()AppleAccount;
- (id)aa_appleAccounts;
- (id)aa_appleAccountsWithError:()AppleAccount;
- (id)aa_authKitAccountForAltDSID:()AppleAccount;
- (id)aa_dataSeparatedAccounts;
- (id)aa_grandSlamAccountForAltDSID:()AppleAccount;
- (id)aa_grandSlamAccountForiCloudAccount:()AppleAccount;
- (id)aa_primaryAppleAccount;
- (id)aa_primaryAppleAccountWithPreloadedDataclasses;
- (id)aa_recommendedAppleIDForAccountSignInWithTypeIdentifier:()AppleAccount;
- (void)_performUpdateRequestWithAccount:()AppleAccount serverInfo:completion:;
- (void)aa_appleAccountsWithCompletion:()AppleAccount;
- (void)aa_loginAndUpdateiCloudAccount:()AppleAccount delegateParams:withCompletion:;
- (void)aa_loginAndUpdateiCloudAccount:()AppleAccount withCompletion:;
- (void)aa_primaryAppleAccountWithCompletion:()AppleAccount;
- (void)aa_registerAppleAccount:()AppleAccount withCompletion:;
- (void)aa_registerAppleAccountWithHSA:()AppleAccount completion:;
- (void)aa_updatePropertiesForAppleAccount:()AppleAccount options:serverInfo:completion:;
@end

@implementation ACAccountStore(AppleAccount)

- (id)aa_primaryAppleAccount
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69597F8];
  v1 = MEMORY[0x1E695DEC8];
  v2 = a1;
  v3 = [v1 arrayWithObjects:&v8 count:1];
  v4 = [v2 accountsWithAccountTypeIdentifiers:v3 preloadedProperties:0 error:{0, v8, v9}];

  v5 = [v4 aaf_firstObjectPassingTest:&__block_literal_global_30];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)aa_isUsingiCloud
{
  v1 = [a1 aa_primaryAppleAccount];
  v2 = v1 != 0;

  return v2;
}

- (id)aa_appleAccounts
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69597F8];
  v1 = MEMORY[0x1E695DEC8];
  v2 = a1;
  v3 = [v1 arrayWithObjects:&v7 count:1];
  v4 = [v2 accountsWithAccountTypeIdentifiers:v3 preloadedProperties:0 error:{0, v7, v8}];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)aa_primaryAppleAccountWithPreloadedDataclasses
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69599E8];
  v12[0] = *MEMORY[0x1E69599F0];
  v12[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v13[0] = *MEMORY[0x1E69597F8];
  v4 = MEMORY[0x1E695DEC8];
  v5 = a1;
  v6 = v3;
  v7 = [v4 arrayWithObjects:v13 count:1];
  v8 = [v5 accountsWithAccountTypeIdentifiers:v7 preloadedProperties:v6 error:0];

  v9 = [v8 aaf_firstObjectPassingTest:&__block_literal_global_32];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)aa_dataSeparatedAccounts
{
  v1 = [a1 aa_appleAccounts];
  v2 = [v1 aaf_filter:&__block_literal_global_3];

  return v2;
}

- (id)aa_appleAccountsWithError:()AppleAccount
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69597F8];
  v4 = MEMORY[0x1E695DEC8];
  v5 = a1;
  v6 = [v4 arrayWithObjects:&v10 count:1];
  v7 = [v5 accountsWithAccountTypeIdentifiers:v6 preloadedProperties:0 error:{a3, v10, v11}];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)aa_accountsForAccountClass:()AppleAccount
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15[0] = *MEMORY[0x1E69597F8];
  v5 = MEMORY[0x1E695DEC8];
  v6 = a1;
  v7 = [v5 arrayWithObjects:v15 count:1];
  v8 = [v6 accountsWithAccountTypeIdentifiers:v7 preloadedProperties:0 error:0];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__ACAccountStore_AppleAccount__aa_accountsForAccountClass___block_invoke;
  v13[3] = &unk_1E7C9B248;
  v14 = v4;
  v9 = v4;
  v10 = [v8 aaf_filter:v13];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)aa_appleAccountsWithCompletion:()AppleAccount
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E69597F8];
  v4 = MEMORY[0x1E695DEC8];
  v5 = a1;
  v6 = a3;
  v7 = [v4 arrayWithObjects:&v9 count:1];
  [v5 accountsWithAccountTypeIdentifiers:v7 preloadedProperties:0 completion:{v6, v9, v10}];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)aa_primaryAppleAccountWithCompletion:()AppleAccount
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__ACAccountStore_AppleAccount__aa_primaryAppleAccountWithCompletion___block_invoke;
  v10[3] = &unk_1E7C9B290;
  v11 = v4;
  v12[0] = *MEMORY[0x1E69597F8];
  v5 = MEMORY[0x1E695DEC8];
  v6 = a1;
  v7 = v4;
  v8 = [v5 arrayWithObjects:v12 count:1];
  [v6 accountsWithAccountTypeIdentifiers:v8 preloadedProperties:0 completion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

- (id)aa_appleAccountWithUsername:()AppleAccount
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v21[0] = *MEMORY[0x1E69597F8];
    v5 = MEMORY[0x1E695DEC8];
    v6 = a1;
    v7 = [v5 arrayWithObjects:v21 count:1];
    v8 = [v6 accountsWithAccountTypeIdentifiers:v7 preloadedProperties:0 error:0];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__ACAccountStore_AppleAccount__aa_appleAccountWithUsername___block_invoke;
    v19[3] = &unk_1E7C9B248;
    v20 = v4;
    v9 = [v8 aaf_firstObjectPassingTest:v19];
  }

  else
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ACAccountStore(AppleAccount) *)v8 aa_appleAccountWithUsername:v10, v11, v12, v13, v14, v15, v16];
    }

    v9 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)aa_appleAccountWithPersonID:()AppleAccount
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v21[0] = *MEMORY[0x1E69597F8];
    v5 = MEMORY[0x1E695DEC8];
    v6 = a1;
    v7 = [v5 arrayWithObjects:v21 count:1];
    v8 = [v6 accountsWithAccountTypeIdentifiers:v7 preloadedProperties:0 error:0];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__ACAccountStore_AppleAccount__aa_appleAccountWithPersonID___block_invoke;
    v19[3] = &unk_1E7C9B248;
    v20 = v4;
    v9 = [v8 aaf_firstObjectPassingTest:v19];
  }

  else
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ACAccountStore(AppleAccount) *)v8 aa_appleAccountWithPersonID:v10, v11, v12, v13, v14, v15, v16];
    }

    v9 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)aa_appleAccountWithAltDSID:()AppleAccount
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v21[0] = *MEMORY[0x1E69597F8];
    v5 = MEMORY[0x1E695DEC8];
    v6 = a1;
    v7 = [v5 arrayWithObjects:v21 count:1];
    v8 = [v6 accountsWithAccountTypeIdentifiers:v7 preloadedProperties:0 error:0];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__ACAccountStore_AppleAccount__aa_appleAccountWithAltDSID___block_invoke;
    v19[3] = &unk_1E7C9B248;
    v20 = v4;
    v9 = [v8 aaf_firstObjectPassingTest:v19];
  }

  else
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ACAccountStore(AppleAccount) *)v8 aa_appleAccountWithAltDSID:v10, v11, v12, v13, v14, v15, v16];
    }

    v9 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)aa_accountsEnabledForDataclass:()AppleAccount
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [a1 accountIdentifiersEnabledForDataclass:v4];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v23 = v4;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [a1 accountWithIdentifier:v11 error:0];
          if (v12)
          {
            [v5 addObject:v12];
          }

          else
          {
            v13 = _AALogSystem();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v29 = v11;
              _os_log_error_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch enabled account with identifier: %@", buf, 0xCu);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v8);
      v4 = v23;
    }
  }

  else
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ACAccountStore(AppleAccount) *)v6 aa_accountsEnabledForDataclass:v14, v15, v16, v17, v18, v19, v20];
    }

    v5 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)aa_recommendedAppleIDForAccountSignInWithTypeIdentifier:()AppleAccount
{
  v59[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = v4;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier %@", buf, 0xCu);
  }

  v6 = [a1 aa_appleAccounts];
  if ([v6 count] && objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69597F8]))
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier recommending nothing for an iCloud account because we already have one or more iCloud accounts.";
LABEL_14:
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if ([v6 count] != 1)
  {
    v11 = [v6 count];
    v7 = _AALogSystem();
    v12 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v11 >= 2)
    {
      if (v12)
      {
        *buf = 0;
        v8 = "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier found > 1 iCloud account. Recommending nothing.";
        goto LABEL_14;
      }

LABEL_15:

      v10 = 0;
      goto LABEL_24;
    }

    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier found zero iCloud accounts. Checking other account types...", buf, 2u);
    }

    v13 = *MEMORY[0x1E6959860];
    v59[0] = *MEMORY[0x1E69598B0];
    v59[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
    v53 = 0;
    v15 = [a1 accountsWithAccountTypeIdentifiers:v14 error:&v53];
    v16 = v53;
    if (v16)
    {
      v17 = _AALogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = v16;
        v18 = "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier recommending nothing after receiving error: %@";
        v19 = v17;
        v20 = 12;
LABEL_21:
        _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
      }
    }

    else
    {
      if ([v15 count])
      {
        v26 = [v15 count];
        v27 = _AALogSystem();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (v26 == 1)
        {
          if (v28)
          {
            *buf = 0;
            _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier found exactly one IS/GC account. Using it.", buf, 2u);
          }

          v10 = [v15 objectAtIndexedSubscript:0];
        }

        else
        {
          if (v28)
          {
            *buf = 0;
            _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier found several IS/GC accounts. Checking their usernames...", buf, 2u);
          }

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          obj = v15;
          v29 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = 0;
            v32 = *v50;
            v46 = v15;
            v47 = v14;
            v45 = 0;
LABEL_40:
            v33 = 0;
            while (1)
            {
              if (*v50 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v34 = *(*(&v49 + 1) + 8 * v33);
              v35 = [v34 username];
              v36 = v35;
              if (v31)
              {
                v37 = [v31 isEqualToString:v35];

                if ((v37 & 1) == 0)
                {
                  v43 = _AALogSystem();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1B6F6A000, v43, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier IS/GC accounts contain several usernames. Recommending nothing.", buf, 2u);
                  }

LABEL_59:
                  v15 = v46;
                  v14 = v47;
                  v16 = v45;

                  v10 = 0;
                  goto LABEL_60;
                }
              }

              else
              {
                v31 = v35;
              }

              v38 = [v34 accountType];
              v39 = [v38 identifier];
              v40 = [v4 isEqualToString:v39];

              if (v40)
              {
                v43 = _AALogSystem();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = [v34 accountType];
                  *buf = 138412290;
                  v55 = v42;
                  _os_log_impl(&dword_1B6F6A000, v43, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier can't recommend a username that already has an account of type %@. Recommending nothing.", buf, 0xCu);
                }

                goto LABEL_59;
              }

              if (v30 == ++v33)
              {
                v30 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
                v15 = v46;
                v14 = v47;
                v16 = v45;
                if (v30)
                {
                  goto LABEL_40;
                }

                goto LABEL_52;
              }
            }
          }

          v31 = 0;
LABEL_52:

          v41 = _AALogSystem();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B6F6A000, v41, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier all IS/GC usernames are identical. Using that.", buf, 2u);
          }

          v10 = [obj firstObject];
LABEL_60:
        }

        goto LABEL_23;
      }

      v17 = _AALogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier found no IS/GC accounts. Recommending nothing.";
        v19 = v17;
        v20 = 2;
        goto LABEL_21;
      }
    }

    v10 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier found exactly one iCloud account. Using it.", buf, 2u);
  }

  v10 = [v6 objectAtIndexedSubscript:0];
LABEL_24:
  v21 = _AALogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v10 username];
    *buf = 138412546;
    v55 = v22;
    v56 = 2112;
    v57 = v10;
    _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier returning appleID %@ from account %@", buf, 0x16u);
  }

  v23 = [v10 username];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)aa_updatePropertiesForAppleAccount:()AppleAccount options:serverInfo:completion:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 identifier];
  if (v14)
  {
    v15 = v14;
    v16 = [v10 aa_authToken];
    if (v16)
    {
    }

    else
    {
      v17 = [v10 aa_password];

      if (!v17)
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __97__ACAccountStore_AppleAccount__aa_updatePropertiesForAppleAccount_options_serverInfo_completion___block_invoke;
        v18[3] = &unk_1E7C9B2B8;
        v18[4] = a1;
        v19 = v10;
        v20 = v12;
        v21 = v13;
        [a1 renewCredentialsForAccount:v19 options:v11 completion:v18];

        goto LABEL_6;
      }
    }
  }

  [a1 _performUpdateRequestWithAccount:v10 serverInfo:v12 completion:v13];
LABEL_6:
}

- (void)_performUpdateRequestWithAccount:()AppleAccount serverInfo:completion:
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = _AASignpostLogSystem();
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v14 = _AASignpostLogSystem();
  v15 = v14;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v16 = [v7 accountType];
    v17 = [v16 identifier];
    *buf = 138543362;
    v31 = v17;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v11, "GetAccountSettings", " AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0xCu);
  }

  v18 = _AASignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v7 accountType];
    v20 = [v19 identifier];
    *buf = 134218242;
    v31 = v11;
    v32 = 2114;
    v33 = v20;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: GetAccountSettings  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x16u);
  }

  v21 = [[AAUpdateProvisioningRequest alloc] initWithAccount:v7];
  [(AAUpdateProvisioningRequest *)v21 setServerInfo:v9];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __87__ACAccountStore_AppleAccount___performUpdateRequestWithAccount_serverInfo_completion___block_invoke;
  v25[3] = &unk_1E7C9B308;
  v28 = v11;
  v29 = v13;
  v26 = v7;
  v27 = v8;
  v22 = v8;
  v23 = v7;
  [(AARequest *)v21 performRequestWithHandler:v25];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)aa_loginAndUpdateiCloudAccount:()AppleAccount withCompletion:
{
  v6 = a4;
  v7 = a3;
  v8 = +[AAiCloudLoginAccountRequester delegateParamsForiCloudOnly];
  [a1 aa_loginAndUpdateiCloudAccount:v7 delegateParams:v8 withCompletion:v6];
}

- (void)aa_loginAndUpdateiCloudAccount:()AppleAccount delegateParams:withCompletion:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 accountType];
  v11 = [v10 identifier];
  v12 = [v11 isEqualToString:*MEMORY[0x1E69597F8]];

  if ((v12 & 1) == 0)
  {
    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ACAccountStore(AppleAccount) aa_loginAndUpdateiCloudAccount:v7 delegateParams:v15 withCompletion:?];
    }

    v16 = MEMORY[0x1E696ABC0];
    v17 = -18;
    goto LABEL_10;
  }

  v13 = [v8 objectForKey:@"com.apple.mobileme"];

  if (!v13)
  {
    v18 = _AALogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ACAccountStore(AppleAccount) aa_loginAndUpdateiCloudAccount:v18 delegateParams:? withCompletion:?];
    }

    v16 = MEMORY[0x1E696ABC0];
    v17 = -3;
LABEL_10:
    v14 = [v16 aa_errorWithCode:v17];
    (*(v9 + 2))(v9, 0, 0, v14);
    goto LABEL_11;
  }

  v14 = objc_alloc_init(AAiCloudLoginAccountRequester);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __93__ACAccountStore_AppleAccount__aa_loginAndUpdateiCloudAccount_delegateParams_withCompletion___block_invoke;
  v19[3] = &unk_1E7C9B330;
  v21 = v9;
  v20 = v7;
  [(AAiCloudLoginAccountRequester *)v14 loginWithAccount:v20 forDelegates:v8 completion:v19];

LABEL_11:
}

- (void)aa_registerAppleAccount:()AppleAccount withCompletion:
{
  v5 = a4;
  v6 = a3;
  v7 = +[AARemoteServer sharedServer];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__ACAccountStore_AppleAccount__aa_registerAppleAccount_withCompletion___block_invoke;
  v9[3] = &unk_1E7C9B358;
  v10 = v5;
  v8 = v5;
  [v7 registerAccount:v6 withHSA:0 completion:v9];
}

- (void)aa_registerAppleAccountWithHSA:()AppleAccount completion:
{
  v5 = a4;
  v6 = a3;
  v7 = +[AARemoteServer sharedServer];
  [v7 registerAccount:v6 withHSA:1 completion:v5];
}

- (id)aa_grandSlamAccountForiCloudAccount:()AppleAccount
{
  if (a3)
  {
    v3 = [a1 aida_accountForiCloudAccount:?];
  }

  else
  {
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ACAccountStore(AppleAccount) *)v4 aa_grandSlamAccountForiCloudAccount:v5, v6, v7, v8, v9, v10, v11];
    }

    v3 = 0;
  }

  return v3;
}

- (id)aa_grandSlamAccountForAltDSID:()AppleAccount
{
  if (a3)
  {
    v3 = [a1 aida_accountForAltDSID:?];
  }

  else
  {
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ACAccountStore(AppleAccount) *)v4 aa_grandSlamAccountForAltDSID:v5, v6, v7, v8, v9, v10, v11];
    }

    v3 = 0;
  }

  return v3;
}

- (id)aa_authKitAccountForAltDSID:()AppleAccount
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v19[0] = *MEMORY[0x1E6959888];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v6 = [a1 accountsWithAccountTypeIdentifiers:v5 error:0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__ACAccountStore_AppleAccount__aa_authKitAccountForAltDSID___block_invoke;
    v17[3] = &unk_1E7C9B248;
    v18 = v4;
    v7 = [v6 aaf_firstObjectPassingTest:v17];
  }

  else
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ACAccountStore(AppleAccount) *)v5 aa_authKitAccountForAltDSID:v8, v9, v10, v11, v12, v13, v14];
    }

    v7 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)aa_appleAccountWithUsername:()AppleAccount .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a1, a3, "%s: Failing because parameter username was not provided!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)aa_appleAccountWithPersonID:()AppleAccount .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a1, a3, "%s: Failing because parameter personID was not provided!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)aa_appleAccountWithAltDSID:()AppleAccount .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a1, a3, "%s: Failing because parameter altDSID was not provided!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)aa_accountsEnabledForDataclass:()AppleAccount .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a1, a3, "%s: Failing because parameter dataclass was not provided!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)aa_loginAndUpdateiCloudAccount:()AppleAccount delegateParams:withCompletion:.cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a1 accountType];
  v4 = [v3 identifier];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Rejecting attempt to call iCloud login on non-iCloud account of type %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)aa_grandSlamAccountForiCloudAccount:()AppleAccount .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a1, a3, "%s: Failing because parameter iCloudAccount was not provided!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)aa_grandSlamAccountForAltDSID:()AppleAccount .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a1, a3, "%s: Failing because parameter altDSID was not provided!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)aa_authKitAccountForAltDSID:()AppleAccount .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a1, a3, "%s: Failing because parameter altDSID was not provided!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end