@interface AIDAAccountNotification
- (id)_appleIDAuthenticationAccountsMatchingAppleAccount:(id)account inStore:(id)store;
- (id)_supportedServiceIDs;
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation AIDAAccountNotification

- (id)_supportedServiceIDs
{
  v7[4] = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDBF920];
  v7[0] = *MEMORY[0x29EDBF908];
  v7[1] = v2;
  v3 = *MEMORY[0x29EDBF910];
  v7[2] = *MEMORY[0x29EDBF918];
  v7[3] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:4];
  v5 = *MEMORY[0x29EDCA608];

  return v4;
}

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v53 = *MEMORY[0x29EDCA608];
  storeCopy = store;
  oldAccountCopy = oldAccount;
  v10 = _AIDALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C89B000, v10, OS_LOG_TYPE_DEFAULT, "AIDA Notification plugin running", buf, 2u);
  }

  if (type == 3)
  {
    accountType = [oldAccountCopy accountType];
    identifier = [accountType identifier];
    v13 = [identifier isEqualToString:*MEMORY[0x29EDB81D0]];

    if (v13)
    {
      v36 = storeCopy;
      v14 = _AIDALogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29C89B000, v14, OS_LOG_TYPE_DEFAULT, "An Apple ID account was deleted", buf, 2u);
      }

      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      v45 = 0u;
      _supportedServiceIDs = [(AIDAAccountNotification *)self _supportedServiceIDs];
      v16 = [_supportedServiceIDs countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v46;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v46 != v18)
            {
              objc_enumerationMutation(_supportedServiceIDs);
            }

            v20 = *(*(&v45 + 1) + 8 * i);
            v21 = _AIDALogSystem();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v51 = v20;
              _os_log_impl(&dword_29C89B000, v21, OS_LOG_TYPE_DEFAULT, "Deleting %@ service token", buf, 0xCu);
            }

            v44 = 0;
            [MEMORY[0x29EDBDFF8] removeCredentialForAccount:oldAccountCopy clientID:v20 error:&v44];
            v22 = v44;
            if (v22)
            {
              v23 = _AIDALogSystem();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v51 = v20;
                _os_log_impl(&dword_29C89B000, v23, OS_LOG_TYPE_DEFAULT, "Error: Couldn't delete %@ credentials", buf, 0xCu);
              }
            }
          }

          v17 = [_supportedServiceIDs countByEnumeratingWithState:&v45 objects:v52 count:16];
        }

        while (v17);
      }

      storeCopy = v36;
    }

    accountType2 = [oldAccountCopy accountType];
    identifier2 = [accountType2 identifier];
    v26 = [identifier2 isEqual:*MEMORY[0x29EDB81C8]];

    if (v26)
    {
      v27 = [(AIDAAccountNotification *)self _appleIDAuthenticationAccountsMatchingAppleAccount:oldAccountCopy inStore:storeCopy];
      if ([v27 count])
      {
        v37 = storeCopy;
        v28 = _AIDALogSystem();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_29C89B000, v28, OS_LOG_TYPE_DEFAULT, "iCloud account deleted, so removing all related AIDA accounts...", buf, 2u);
        }

        v29 = objc_alloc_init(MEMORY[0x29EDB83C8]);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v30 = v27;
        v31 = [v30 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v41;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v41 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v39 = *(*(&v40 + 1) + 8 * j);
              [v29 removeAccount:? withCompletionHandler:?];
            }

            v32 = [v30 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v32);
        }

        storeCopy = v37;
      }
    }
  }

  v35 = *MEMORY[0x29EDCA608];
}

- (id)_appleIDAuthenticationAccountsMatchingAppleAccount:(id)account inStore:(id)store
{
  v29 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  v20 = [storeCopy accountTypeWithAccountTypeIdentifier:*MEMORY[0x29EDB81D0]];
  v21 = storeCopy;
  v7 = [storeCopy _accountsWithAcountType:? error:?];
  v23 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        aida_alternateDSID = [v12 aida_alternateDSID];
        aida_alternateDSID2 = [accountCopy aida_alternateDSID];
        if ([aida_alternateDSID isEqualToString:aida_alternateDSID2])
        {
        }

        else
        {
          username = [v12 username];
          username2 = [accountCopy username];
          v17 = [username isEqualToString:username2];

          if (!v17)
          {
            continue;
          }
        }

        [v23 addObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x29EDCA608];

  return v23;
}

@end