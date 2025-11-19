@interface AAUICloudSyncServicesController
+ (id)_domainFromAddress:(id)a3;
+ (id)_usernameFromAddress:(id)a3;
- (AAUICloudSyncServicesController)init;
- (id)_account;
- (void)_addMailAccount:(id)a3;
- (void)_presentMergeConfirmationForDataclasses:(id)a3 account:(id)a4;
- (void)_validateMailAccount:(id)a3;
- (void)accountValidator:(id)a3 finishedValidationOfAccount:(id)a4 usedSSL:(BOOL)a5;
- (void)completeEnablingCloudServicesWithCompletion:(id)a3;
- (void)setBackupEnabled:(BOOL)a3 completion:(id)a4;
- (void)setCloudServicesEnabled:(BOOL)a3 completion:(id)a4;
- (void)setDeviceLocatorEnabled:(BOOL)a3;
- (void)verifyAccountWithAppleID:(id)a3 completion:(id)a4;
@end

@implementation AAUICloudSyncServicesController

- (AAUICloudSyncServicesController)init
{
  v8.receiver = self;
  v8.super_class = AAUICloudSyncServicesController;
  v2 = [(AAUICloudSyncServicesController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queuedDataclassStates = v2->_queuedDataclassStates;
    v2->_queuedDataclassStates = v5;
  }

  return v2;
}

- (id)_account
{
  account = self->_account;
  if (!account)
  {
    v4 = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
    v5 = self->_account;
    self->_account = v4;

    account = self->_account;
  }

  return account;
}

- (void)setCloudServicesEnabled:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v69 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v52 = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
  v7 = _AAUILogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v48 = v6;
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "User chose to use iCloud", buf, 2u);
    }

    v9 = [v52 provisionedDataclasses];
    v10 = [v9 mutableCopy];

    v11 = [v52 enabledDataclasses];
    [v10 minusSet:v11];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v62;
      v15 = MEMORY[0x1E695E118];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v62 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v61 + 1) + 8 * i);
          v18 = [MEMORY[0x1E698B888] sharedManager];
          v19 = [v18 canAutoEnableDataclass:v17 forAccount:v52];

          if (v19)
          {
            [v52 setEnabled:1 forDataclass:v17];
            [(NSMutableDictionary *)self->_queuedDataclassStates setObject:v15 forKeyedSubscript:v17];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
      }

      while (v13);
    }

    if (!self->_queuedDataclassActions)
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
      queuedDataclassActions = self->_queuedDataclassActions;
      self->_queuedDataclassActions = v20;
    }

    if (!self->_dataclassesRequiringMergeDecision)
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      dataclassesRequiringMergeDecision = self->_dataclassesRequiringMergeDecision;
      self->_dataclassesRequiringMergeDecision = v22;
    }

    v24 = [(ACAccountStore *)self->_accountStore dataclassActionsForAccountSave:v52, v48];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v25 = [v24 allKeys];
    v26 = [v25 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v58;
      v50 = v25;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v58 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v57 + 1) + 8 * j);
          v31 = [v24 objectForKeyedSubscript:v30];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v31 count] < 2)
            {
              if ([v31 count] == 1)
              {
                v32 = v28;
                v33 = v24;
                v34 = self->_queuedDataclassActions;
                v35 = [v31 lastObject];
                v36 = v34;
                v24 = v33;
                v28 = v32;
                [(NSMutableDictionary *)v36 setObject:v35 forKey:v30];

                v25 = v50;
              }
            }

            else
            {
              [(NSMutableArray *)self->_dataclassesRequiringMergeDecision addObject:v30];
            }
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v27);
    }

    if ([(NSMutableArray *)self->_dataclassesRequiringMergeDecision count])
    {
      v6 = v49;
      if (self->_handler != v49)
      {
        v37 = [v49 copy];
        handler = self->_handler;
        self->_handler = v37;
      }

      [(AAUICloudSyncServicesController *)self _presentMergeConfirmationForDataclasses:self->_dataclassesRequiringMergeDecision account:v52];
    }

    else
    {
      v6 = v49;
      v49[2](v49, 1, 0);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "User chose not to use iCloud", buf, 2u);
    }

    v39 = [v52 enabledDataclasses];
    v40 = [v39 copy];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v40;
    v41 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v54;
      v44 = MEMORY[0x1E695E110];
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v54 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v53 + 1) + 8 * k);
          [v52 setEnabled:0 forDataclass:v46];
          [(NSMutableDictionary *)self->_queuedDataclassStates setObject:v44 forKeyedSubscript:v46];
        }

        v42 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
      }

      while (v42);
    }

    v47 = self->_queuedDataclassActions;
    if (v47)
    {
      self->_queuedDataclassActions = 0;
    }

    v6[2](v6, 1, 0);
  }
}

- (void)_presentMergeConfirmationForDataclasses:(id)a3 account:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = MEMORY[0x1E696AAE8];
  v7 = a3;
  v8 = [v6 bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BATCH_MERGE_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  v20 = [v5 stringWithFormat:v9, @"iCloud"];

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"BATCH_MERGE_FORMAT"];
  v12 = [v10 localizedStringForKey:v11 value:&stru_1F447F790 table:@"Localizable"];

  v13 = [MEMORY[0x1E69898E0] localizedTextForDataclasses:v7 usedAtBeginningOfSentence:0];

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:v12, v13, @"iCloud"];
  v15 = MEMORY[0x1E698B9E0];
  v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"BATCH_MERGE_CANCEL_BUTTON" value:&stru_1F447F790 table:@"Localizable"];
  v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"BATCH_MERGE_OK_BUTTON" value:&stru_1F447F790 table:@"Localizable"];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __83__AAUICloudSyncServicesController__presentMergeConfirmationForDataclasses_account___block_invoke;
  v21[3] = &unk_1E820D330;
  v21[4] = self;
  [v15 showUserNotificationWithTitle:v20 message:v14 cancelButtonTitle:v17 otherButtonTitle:v19 withCompletionBlock:v21];
}

uint64_t __83__AAUICloudSyncServicesController__presentMergeConfirmationForDataclasses_account___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v4 = *(*(a1 + 32) + 32);
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      v8 = MEMORY[0x1E695E110];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(a1 + 32) + 40) setObject:v8 forKeyedSubscript:{*(*(&v17 + 1) + 8 * i), v17}];
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v4 = *(*(a1 + 32) + 32);
    v10 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v4);
          }

          v14 = *(*(&v21 + 1) + 8 * j);
          v15 = [MEMORY[0x1E6959A58] actionWithType:5];
          [*(*(a1 + 32) + 24) setObject:v15 forKey:v14];
        }

        v11 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
    }
  }

  return (*(*(*(a1 + 32) + 72) + 16))();
}

- (void)setDeviceLocatorEnabled:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x1E69E9840];
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "AASetupAssistantServiceDelegate setDeviceLocatorEnabled:%d.", v6, 8u);
  }

  if (v3)
  {
    v5 = +[AAUIDeviceLocatorService sharedInstance];
    [v5 enableInContext:5];
  }
}

- (void)setBackupEnabled:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
  v8 = v7;
  if (v4)
  {
    if ([v7 aa_isPrimaryEmailVerified])
    {
      v9 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__AAUICloudSyncServicesController_setBackupEnabled_completion___block_invoke;
      block[3] = &unk_1E820B780;
      block[4] = self;
      v14 = v6;
      dispatch_async(v9, block);
    }

    else
    {
      v10 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A578];
      v16[0] = @"Primary email not verified.";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [v10 aa_errorWithCode:0 userInfo:v11];
      (*(v6 + 2))(v6, 0, v12);
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_queuedDataclassStates setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6959AD8]];
    (*(v6 + 2))(v6, 1, 0);
  }
}

void __63__AAUICloudSyncServicesController_setBackupEnabled_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69B1968]);
  v5 = 0;
  v3 = [v2 setupBackupWithPasscode:0 error:&v5];
  v4 = v5;
  if (v3)
  {
    [*(*(a1 + 32) + 40) setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6959AD8]];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)completeEnablingCloudServicesWithCompletion:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "complete enabling cloud services", buf, 2u);
  }

  v6 = [(AAUICloudSyncServicesController *)self _account];
  [v6 refresh];
  if ([v6 aa_isPrimaryEmailVerified])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v7 = self->_queuedDataclassStates;
    v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          v13 = [(NSMutableDictionary *)self->_queuedDataclassStates objectForKeyedSubscript:v12];
          [v6 setEnabled:objc_msgSend(v13 forDataclass:{"BOOLValue"), v12}];
        }

        v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v9);
    }

    accountStore = self->_accountStore;
    queuedDataclassActions = self->_queuedDataclassActions;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __79__AAUICloudSyncServicesController_completeEnablingCloudServicesWithCompletion___block_invoke;
    v33[3] = &unk_1E820C308;
    v34 = v4;
    [(ACAccountStore *)accountStore saveAccount:v6 withDataclassActions:queuedDataclassActions completion:v33];
    v16 = v34;
  }

  else if (v6)
  {
    v17 = [v6 enabledDataclasses];
    v18 = [v17 copy];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v18;
    v19 = [v16 countByEnumeratingWithState:&v29 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      v22 = *MEMORY[0x1E6959AD8];
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v24 = *(*(&v29 + 1) + 8 * j);
          if (([v24 isEqualToString:v22] & 1) == 0)
          {
            [v6 setEnabled:0 forDataclass:v24];
          }
        }

        v20 = [v16 countByEnumeratingWithState:&v29 objects:v40 count:16];
      }

      while (v20);
    }

    v25 = self->_accountStore;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __79__AAUICloudSyncServicesController_completeEnablingCloudServicesWithCompletion___block_invoke_105;
    v27[3] = &unk_1E820C308;
    v28 = v4;
    [(ACAccountStore *)v25 saveAccount:v6 withCompletionHandler:v27];
  }

  else
  {
    v26 = _AALogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      [AAUICloudSyncServicesController completeEnablingCloudServicesWithCompletion:v26];
    }

    v16 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4404];
    (*(v4 + 2))(v4, 0, v16);
  }
}

void __79__AAUICloudSyncServicesController_completeEnablingCloudServicesWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Failed to save iCloud account:%@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __79__AAUICloudSyncServicesController_completeEnablingCloudServicesWithCompletion___block_invoke_105(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Failed to save iCloud account:%@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)verifyAccountWithAppleID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AAUICloudSyncServicesController *)self _account];
  v9 = [v8 username];
  v10 = [v9 isEqualToString:v7];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E698B818]) initWithAccount:v8];
    verifier = self->_verifier;
    self->_verifier = v11;

    [(AAAutoAccountVerifier *)self->_verifier sendVerificationEmail];
    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "Verifying iCloud primary email", buf, 2u);
    }

    v14 = self->_verifier;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__AAUICloudSyncServicesController_verifyAccountWithAppleID_completion___block_invoke;
    v17[3] = &unk_1E820C960;
    v18 = v8;
    v19 = self;
    v20 = v6;
    [(AAAutoAccountVerifier *)v14 verifyWithHandler:v17];

    v15 = v18;
  }

  else
  {
    v16 = _AAUILogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "ERROR: Trying to verify the email for an iCloud we're not familiar with. That's bad.", buf, 2u);
    }

    v15 = [MEMORY[0x1E696ABC0] aa_errorWithCode:111 userInfo:0];
    (*(v6 + 2))(v6, 0, v15);
  }
}

void __71__AAUICloudSyncServicesController_verifyAccountWithAppleID_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Primary email verified!", buf, 2u);
    }

    v8 = [*(a1 + 32) provisionedDataclasses];
    v9 = [v8 copy];

    v10 = *(a1 + 32);
    v11 = *(*(a1 + 40) + 8);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__AAUICloudSyncServicesController_verifyAccountWithAppleID_completion___block_invoke_107;
    v15[3] = &unk_1E820D358;
    v16 = v5;
    v17 = *(a1 + 32);
    v18 = v9;
    v12 = *(a1 + 48);
    v19 = *(a1 + 40);
    v20 = v12;
    v13 = v9;
    [v11 aa_updatePropertiesForAppleAccount:v10 completion:v15];
  }

  else
  {
    if (v7)
    {
      v14 = [v5 localizedDescription];
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Verification failed: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __71__AAUICloudSyncServicesController_verifyAccountWithAppleID_completion___block_invoke_107(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(a1 + 32))
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v5;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Account update failed: %@", buf, 0xCu);
    }
  }

  else
  {
    v18 = v4;
    v7 = [*(a1 + 40) provisionedDataclasses];
    v8 = [v7 mutableCopy];

    [v8 minusSet:*(a1 + 48)];
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Now that we're verified we've got some new provisioned dataclasses: %@", buf, 0xCu);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v8;
    v10 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      v13 = *MEMORY[0x1E6959AD8];
      v14 = MEMORY[0x1E695E118];
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v6);
          }

          v16 = *(*(&v19 + 1) + 8 * v15);
          v17 = [MEMORY[0x1E698B888] sharedManager];
          LODWORD(v16) = [v17 canAutoEnableDataclass:v16 forAccount:*(a1 + 40)];

          if (v16)
          {
            [*(*(a1 + 56) + 40) setObject:v14 forKeyedSubscript:v13];
          }

          ++v15;
        }

        while (v11 != v15);
        v11 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v5 = v18;
  }

  (*(*(a1 + 64) + 16))();
}

- (void)_validateMailAccount:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Verifying Email account.", v8, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x1E69B15A0]);
  validator = self->_validator;
  self->_validator = v6;

  [(MFAccountValidator *)self->_validator setDelegate:self];
  [(MFAccountValidator *)self->_validator validateAccount:v4 useSSL:1];
}

- (void)accountValidator:(id)a3 finishedValidationOfAccount:(id)a4 usedSSL:(BOOL)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 accountIsValid])
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Email account has been verified.", &v21, 2u);
    }

    if (self->_isVerifyingExistingEmailAccount)
    {
      handler = self->_handler;
      if (handler)
      {
        handler[2](handler, 1, 0);
      }
    }

    else
    {
      [(AAUICloudSyncServicesController *)self _addMailAccount:v8];
    }
  }

  else
  {
    v11 = [v7 error];
    v12 = [v11 code];
    v13 = MEMORY[0x1E696ABC0];
    v14 = [v11 userInfo];
    if (v12 == 1032)
    {
      v15 = 111;
    }

    else
    {
      v15 = 112;
    }

    v16 = [v13 aa_errorWithCode:v15 userInfo:v14];

    v17 = self->_handler;
    if (v17)
    {
      v17[2](v17, 0, v16);
    }

    v18 = _AAUILogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v11 localizedDescription];
      v21 = 138412290;
      v22 = v19;
      _os_log_impl(&dword_1C5355000, v18, OS_LOG_TYPE_DEFAULT, "Email account verification failed: %@", &v21, 0xCu);
    }
  }

  validator = self->_validator;
  self->_validator = 0;
}

- (void)_addMailAccount:(id)a3
{
  v4 = MEMORY[0x1E69B16A8];
  v5 = a3;
  v6 = [v4 mailAccounts];
  v7 = [v6 arrayByAddingObject:v5];

  [MEMORY[0x1E69B16A8] setMailAccounts:v7];
  if (self->_handler)
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "IMAP: Email account added", v9, 2u);
    }

    (*(self->_handler + 2))();
  }
}

+ (id)_domainFromAddress:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"@"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 substringFromIndex:v4 + 1];
    v5 = [v6 lowercaseString];
  }

  return v5;
}

+ (id)_usernameFromAddress:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"+"];
  if (!v5)
  {
    v4 = [v3 rangeOfString:@"@"];
  }

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 substringToIndex:v4];
  }

  return v6;
}

- (void)completeEnablingCloudServicesWithCompletion:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[AAUICloudSyncServicesController completeEnablingCloudServicesWithCompletion:]";
  _os_log_fault_impl(&dword_1C5355000, log, OS_LOG_TYPE_FAULT, "%s: attempted to completeEnablingCloudServicesWithCompletion with a nil account", &v1, 0xCu);
}

@end