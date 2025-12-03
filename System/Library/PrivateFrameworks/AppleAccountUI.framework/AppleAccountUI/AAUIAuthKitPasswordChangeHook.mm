@interface AAUIAuthKitPasswordChangeHook
- (AAUIAuthKitPasswordChangeHook)initWithAltDSID:(id)d;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (id)_tableViewRowWithID:(id)d inObjectModel:(id)model;
- (void)_handleChangeForObjectModel:(id)model completion:(id)completion;
- (void)_harvestDataFromServerHTTPResponse:(id)response;
- (void)_updateiCloudAccountWithCompletion:(id)completion;
- (void)harvestDataFromResponse:(id)response;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)textFieldEditingDidEnd:(id)end;
@end

@implementation AAUIAuthKitPasswordChangeHook

- (AAUIAuthKitPasswordChangeHook)initWithAltDSID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = AAUIAuthKitPasswordChangeHook;
  v5 = [(AAUIAuthKitPasswordChangeHook *)&v10 init];
  if (v5)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    v7 = [defaultStore aa_appleAccountWithAltDSID:dCopy];
    appleAccount = v5->_appleAccount;
    v5->_appleAccount = v7;
  }

  return v5;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [AAUIAuthKitPasswordChangeHook processElement:a2 attributes:v9 objectModel:? completion:?];
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
}

- (BOOL)shouldMatchModel:(id)model
{
  modelCopy = model;
  clientInfo = [modelCopy clientInfo];
  v5 = [clientInfo objectForKeyedSubscript:@"newPasswordRowId"];
  if (v5)
  {
    bOOLValue = 1;
  }

  else
  {
    clientInfo2 = [modelCopy clientInfo];
    v8 = [clientInfo2 objectForKeyedSubscript:@"currentPasswordRowId"];
    if (v8)
    {
      bOOLValue = 1;
    }

    else
    {
      objc_opt_class();
      clientInfo3 = [modelCopy clientInfo];
      v10 = [clientInfo3 objectForKeyedSubscript:@"passwordUpdated"];
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      bOOLValue = [v11 BOOLValue];
    }
  }

  return bOOLValue;
}

- (void)harvestDataFromResponse:(id)response
{
  responseCopy = response;
  if ([responseCopy statusCode] != 401)
  {
    [(AAUIAuthKitPasswordChangeHook *)self _harvestDataFromServerHTTPResponse:responseCopy];
  }
}

- (void)textFieldEditingDidEnd:(id)end
{
  endCopy = end;
  control = [(RUITableViewRow *)self->_oldPasswordRow control];

  if (control == endCopy)
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "User has entered their old password.", buf, 2u);
    }

    text = [endCopy text];
    oldPassword = self->_oldPassword;
    self->_oldPassword = text;
  }

  else
  {
    control2 = [(RUITableViewRow *)self->_newPasswordRow control];

    oldPassword = _AAUILogSystem();
    v8 = os_log_type_enabled(oldPassword, OS_LOG_TYPE_DEFAULT);
    if (control2 == endCopy)
    {
      if (v8)
      {
        *v13 = 0;
        _os_log_impl(&dword_1C5355000, oldPassword, OS_LOG_TYPE_DEFAULT, "User has entered a new password. Will not commit just yet.", v13, 2u);
      }

      text2 = [endCopy text];
      oldPassword = self->_newPassword;
      self->_newPassword = text2;
    }

    else if (v8)
    {
      *v12 = 0;
      _os_log_impl(&dword_1C5355000, oldPassword, OS_LOG_TYPE_DEFAULT, "Received delegate callback from unknown textField, ignoring...", v12, 2u);
    }
  }
}

- (void)_handleChangeForObjectModel:(id)model completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  completionCopy = completion;
  objc_opt_class();
  clientInfo = [modelCopy clientInfo];
  v9 = [clientInfo objectForKeyedSubscript:@"currentPasswordRowId"];
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
    v11 = [(AAUIAuthKitPasswordChangeHook *)self _tableViewRowWithID:v10 inObjectModel:modelCopy];
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
  clientInfo2 = [modelCopy clientInfo];
  v17 = [clientInfo2 objectForKeyedSubscript:@"newPasswordRowId"];
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

    v22 = [(AAUIAuthKitPasswordChangeHook *)self _tableViewRowWithID:v18 inObjectModel:modelCopy];
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
  clientInfo3 = [modelCopy clientInfo];
  v26 = [clientInfo3 objectForKeyedSubscript:@"passwordUpdated"];
  if (objc_opt_isKindOfClass())
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  bOOLValue = [v27 BOOLValue];
  if (bOOLValue)
  {
    [(AAUIAuthKitPasswordChangeHook *)self _updateiCloudAccountWithCompletion:completionCopy];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_harvestDataFromServerHTTPResponse:(id)response
{
  v12 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138477827;
    v11 = responseCopy;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Harvesting data from response: %{private}@", &v10, 0xCu);
  }

  allHeaderFields = [responseCopy allHeaderFields];
  v7 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-I-Password-Updated"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
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

- (void)_updateiCloudAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  appleAccount = [(AAUIAuthKitPasswordChangeHook *)self appleAccount];

  if (appleAccount)
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

      appleAccount2 = [(AAUIAuthKitPasswordChangeHook *)self appleAccount];
      [appleAccount2 _aa_setRawPassword:self->_newPassword];

      v10 = [(NSString *)self->_oldPassword length];
      appleAccount3 = _AAUILogSystem();
      v12 = os_log_type_enabled(appleAccount3, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          *buf = 0;
          _os_log_impl(&dword_1C5355000, appleAccount3, OS_LOG_TYPE_DEFAULT, "Setting old password on account credentials.", buf, 2u);
        }

        appleAccount3 = [(AAUIAuthKitPasswordChangeHook *)self appleAccount];
        credential = [appleAccount3 credential];
        [credential setCredentialItem:self->_oldPassword forKey:*MEMORY[0x1E69599B8]];
      }

      else if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_1C5355000, appleAccount3, OS_LOG_TYPE_DEFAULT, "Server UI flow did not provide an old password.", buf, 2u);
      }

      defaultStore = [MEMORY[0x1E6959A48] defaultStore];
      appleAccount4 = [(AAUIAuthKitPasswordChangeHook *)self appleAccount];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __68__AAUIAuthKitPasswordChangeHook__updateiCloudAccountWithCompletion___block_invoke;
      v17[3] = &unk_1E820DFD8;
      v18 = completionCopy;
      [defaultStore renewCredentialsForAccount:appleAccount4 completion:v17];

      goto LABEL_20;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AAUIAuthKitPasswordChangeHook _updateiCloudAccountWithCompletion:v8];
    }

    if (completionCopy)
    {
LABEL_16:
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    v14 = _AAUILogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AAUIAccountMigrationHook _invokeShieldMigrationFlowWithPendingDOB:v14 completion:?];
    }

    if (completionCopy)
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

- (id)_tableViewRowWithID:(id)d inObjectModel:(id)model
{
  v51 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  allPages = [model allPages];
  v7 = [allPages countByEnumeratingWithState:&v44 objects:v50 count:16];
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
          objc_enumerationMutation(allPages);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        if ([v11 hasTableView])
        {
          tableViewOM = [v11 tableViewOM];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v35 = tableViewOM;
          sections = [tableViewOM sections];
          v31 = [sections countByEnumeratingWithState:&v40 objects:v49 count:16];
          if (v31)
          {
            v14 = *v41;
            v33 = sections;
            v34 = allPages;
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
                  objc_enumerationMutation(sections);
                }

                v32 = v15;
                v16 = *(*(&v40 + 1) + 8 * v15);
                v36 = 0u;
                v37 = 0u;
                v38 = 0u;
                v39 = 0u;
                rows = [v16 rows];
                v18 = [rows countByEnumeratingWithState:&v36 objects:v48 count:16];
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
                        objc_enumerationMutation(rows);
                      }

                      v22 = *(*(&v36 + 1) + 8 * j);
                      attributes = [v22 attributes];
                      v24 = [attributes objectForKeyedSubscript:@"id"];
                      v25 = [v24 isEqual:dCopy];

                      if (v25)
                      {
                        v26 = v22;

                        allPages = v34;
                        goto LABEL_28;
                      }
                    }

                    v19 = [rows countByEnumeratingWithState:&v36 objects:v48 count:16];
                    if (v19)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v15 = v32 + 1;
                sections = v33;
                allPages = v34;
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

      v8 = [allPages countByEnumeratingWithState:&v44 objects:v50 count:16];
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