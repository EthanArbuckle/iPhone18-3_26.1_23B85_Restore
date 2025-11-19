@interface AAUIAuthKitPasswordChangeHook
- (AAUIAuthKitPasswordChangeHook)initWithAltDSID:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (id)_tableViewRowWithID:(id)a3 inObjectModel:(id)a4;
- (void)_handleChangeForObjectModel:(id)a3 completion:(id)a4;
- (void)_harvestDataFromServerHTTPResponse:(id)a3;
- (void)_updateiCloudAccountWithCompletion:(id)a3;
- (void)harvestDataFromResponse:(id)a3;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)textFieldEditingDidEnd:(id)a3;
@end

@implementation AAUIAuthKitPasswordChangeHook

- (AAUIAuthKitPasswordChangeHook)initWithAltDSID:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AAUIAuthKitPasswordChangeHook;
  v5 = [(AAUIAuthKitPasswordChangeHook *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E6959A48] defaultStore];
    v7 = [v6 aa_appleAccountWithAltDSID:v4];
    appleAccount = v5->_appleAccount;
    v5->_appleAccount = v7;
  }

  return v5;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [AAUIAuthKitPasswordChangeHook processElement:a2 attributes:v9 objectModel:? completion:?];
  }

  (*(v8 + 2))(v8, 0, 0);
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = a3;
  v4 = [v3 clientInfo];
  v5 = [v4 objectForKeyedSubscript:@"newPasswordRowId"];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 clientInfo];
    v8 = [v7 objectForKeyedSubscript:@"currentPasswordRowId"];
    if (v8)
    {
      v6 = 1;
    }

    else
    {
      objc_opt_class();
      v9 = [v3 clientInfo];
      v10 = [v9 objectForKeyedSubscript:@"passwordUpdated"];
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v6 = [v11 BOOLValue];
    }
  }

  return v6;
}

- (void)harvestDataFromResponse:(id)a3
{
  v4 = a3;
  if ([v4 statusCode] != 401)
  {
    [(AAUIAuthKitPasswordChangeHook *)self _harvestDataFromServerHTTPResponse:v4];
  }
}

- (void)textFieldEditingDidEnd:(id)a3
{
  v4 = a3;
  v5 = [(RUITableViewRow *)self->_oldPasswordRow control];

  if (v5 == v4)
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "User has entered their old password.", buf, 2u);
    }

    v10 = [v4 text];
    oldPassword = self->_oldPassword;
    self->_oldPassword = v10;
  }

  else
  {
    v6 = [(RUITableViewRow *)self->_newPasswordRow control];

    oldPassword = _AAUILogSystem();
    v8 = os_log_type_enabled(oldPassword, OS_LOG_TYPE_DEFAULT);
    if (v6 == v4)
    {
      if (v8)
      {
        *v13 = 0;
        _os_log_impl(&dword_1C5355000, oldPassword, OS_LOG_TYPE_DEFAULT, "User has entered a new password. Will not commit just yet.", v13, 2u);
      }

      v11 = [v4 text];
      oldPassword = self->_newPassword;
      self->_newPassword = v11;
    }

    else if (v8)
    {
      *v12 = 0;
      _os_log_impl(&dword_1C5355000, oldPassword, OS_LOG_TYPE_DEFAULT, "Received delegate callback from unknown textField, ignoring...", v12, 2u);
    }
  }
}

- (void)_handleChangeForObjectModel:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [v6 clientInfo];
  v9 = [v8 objectForKeyedSubscript:@"currentPasswordRowId"];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = [(AAUIAuthKitPasswordChangeHook *)self _tableViewRowWithID:v10 inObjectModel:v6];
    oldPasswordRow = self->_oldPasswordRow;
    self->_oldPasswordRow = v11;

    [(RUITableViewRow *)self->_oldPasswordRow setTextFieldChangeObserver:self];
    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_oldPasswordRow;
      v29 = 138412546;
      v30 = v14;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "Found old password row %@ for identifier %@.", &v29, 0x16u);
    }
  }

  else
  {
    v15 = _AAUILogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "Server did not provide an old password row identifier.", &v29, 2u);
    }

    v13 = self->_oldPasswordRow;
    self->_oldPasswordRow = 0;
  }

  objc_opt_class();
  v16 = [v6 clientInfo];
  v17 = [v16 objectForKeyedSubscript:@"newPasswordRowId"];
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = _AAUILogSystem();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      newPasswordRow = self->_newPasswordRow;
      v29 = 138412546;
      v30 = newPasswordRow;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_1C5355000, v19, OS_LOG_TYPE_DEFAULT, "Found new password row %@ for identifier %@.", &v29, 0x16u);
    }

    v22 = [(AAUIAuthKitPasswordChangeHook *)self _tableViewRowWithID:v18 inObjectModel:v6];
    v23 = self->_newPasswordRow;
    self->_newPasswordRow = v22;

    [(RUITableViewRow *)self->_newPasswordRow setTextFieldChangeObserver:self];
  }

  else
  {
    if (v20)
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_1C5355000, v19, OS_LOG_TYPE_DEFAULT, "Server did not provide a new password row identifier.", &v29, 2u);
    }

    v24 = self->_newPasswordRow;
    self->_newPasswordRow = 0;
  }

  objc_opt_class();
  v25 = [v6 clientInfo];
  v26 = [v25 objectForKeyedSubscript:@"passwordUpdated"];
  if (objc_opt_isKindOfClass())
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = [v27 BOOLValue];
  if (v28)
  {
    [(AAUIAuthKitPasswordChangeHook *)self _updateiCloudAccountWithCompletion:v7];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_harvestDataFromServerHTTPResponse:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138477827;
    v11 = v4;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Harvesting data from response: %{private}@", &v10, 0xCu);
  }

  v6 = [v4 allHeaderFields];
  v7 = [v6 objectForKeyedSubscript:@"X-Apple-I-Password-Updated"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Found password update singal in the HTTP response.", &v10, 2u);
    }

    [(AAUIAuthKitPasswordChangeHook *)self _updateiCloudAccountWithCompletion:0];
  }
}

- (void)_updateiCloudAccountWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AAUIAuthKitPasswordChangeHook *)self appleAccount];

  if (v5)
  {
    v6 = [(NSString *)self->_newPassword length];
    v7 = _AAUILogSystem();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Committing new password locally.", buf, 2u);
      }

      v9 = [(AAUIAuthKitPasswordChangeHook *)self appleAccount];
      [v9 _aa_setRawPassword:self->_newPassword];

      v10 = [(NSString *)self->_oldPassword length];
      v11 = _AAUILogSystem();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          *buf = 0;
          _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Setting old password on account credentials.", buf, 2u);
        }

        v11 = [(AAUIAuthKitPasswordChangeHook *)self appleAccount];
        v13 = [v11 credential];
        [v13 setCredentialItem:self->_oldPassword forKey:*MEMORY[0x1E69599B8]];
      }

      else if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Server UI flow did not provide an old password.", buf, 2u);
      }

      v15 = [MEMORY[0x1E6959A48] defaultStore];
      v16 = [(AAUIAuthKitPasswordChangeHook *)self appleAccount];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __68__AAUIAuthKitPasswordChangeHook__updateiCloudAccountWithCompletion___block_invoke;
      v17[3] = &unk_1E820DFD8;
      v18 = v4;
      [v15 renewCredentialsForAccount:v16 completion:v17];

      goto LABEL_20;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AAUIAuthKitPasswordChangeHook _updateiCloudAccountWithCompletion:v8];
    }

    if (v4)
    {
LABEL_16:
      (*(v4 + 2))(v4, 0, 0);
    }
  }

  else
  {
    v14 = _AAUILogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AAUIAccountMigrationHook _invokeShieldMigrationFlowWithPendingDOB:v14 completion:?];
    }

    if (v4)
    {
      goto LABEL_16;
    }
  }

LABEL_20:
}

void __68__AAUIAuthKitPasswordChangeHook__updateiCloudAccountWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = a2;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Result of renewing credentials to continue password change request: %ld. Error: %@", &v9, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v5)
  {
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_8:
      v8();
    }
  }

  else if (v7)
  {
    v8 = *(v7 + 16);
    goto LABEL_8;
  }
}

- (id)_tableViewRowWithID:(id)a3 inObjectModel:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = [a4 allPages];
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        if ([v11 hasTableView])
        {
          v12 = [v11 tableViewOM];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v35 = v12;
          v13 = [v12 sections];
          v31 = [v13 countByEnumeratingWithState:&v40 objects:v49 count:16];
          if (v31)
          {
            v14 = *v41;
            v33 = v13;
            v34 = v6;
            v29 = v8;
            v30 = v9;
            v28 = *v41;
            do
            {
              v15 = 0;
              do
              {
                if (*v41 != v14)
                {
                  objc_enumerationMutation(v13);
                }

                v32 = v15;
                v16 = *(*(&v40 + 1) + 8 * v15);
                v36 = 0u;
                v37 = 0u;
                v38 = 0u;
                v39 = 0u;
                v17 = [v16 rows];
                v18 = [v17 countByEnumeratingWithState:&v36 objects:v48 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v37;
                  while (2)
                  {
                    for (j = 0; j != v19; ++j)
                    {
                      if (*v37 != v20)
                      {
                        objc_enumerationMutation(v17);
                      }

                      v22 = *(*(&v36 + 1) + 8 * j);
                      v23 = [v22 attributes];
                      v24 = [v23 objectForKeyedSubscript:@"id"];
                      v25 = [v24 isEqual:v5];

                      if (v25)
                      {
                        v26 = v22;

                        v6 = v34;
                        goto LABEL_28;
                      }
                    }

                    v19 = [v17 countByEnumeratingWithState:&v36 objects:v48 count:16];
                    if (v19)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v15 = v32 + 1;
                v13 = v33;
                v6 = v34;
                v8 = v29;
                v9 = v30;
                v14 = v28;
              }

              while (v32 + 1 != v31);
              v31 = [v33 countByEnumeratingWithState:&v40 objects:v49 count:16];
            }

            while (v31);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v44 objects:v50 count:16];
      v26 = 0;
    }

    while (v8);
  }

  else
  {
    v26 = 0;
  }

LABEL_28:

  return v26;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)processElement:(NSObject *)a3 attributes:objectModel:completion:.cold.1(uint64_t a1, const char *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_fault_impl(&dword_1C5355000, a3, OS_LOG_TYPE_FAULT, "%@: %@ is not supported.", &v8, 0x16u);
}

@end