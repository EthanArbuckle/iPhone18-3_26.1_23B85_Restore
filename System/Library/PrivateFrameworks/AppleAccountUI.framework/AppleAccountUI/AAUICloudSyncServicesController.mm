@interface AAUICloudSyncServicesController
+ (id)_domainFromAddress:(id)address;
+ (id)_usernameFromAddress:(id)address;
- (AAUICloudSyncServicesController)init;
- (id)_account;
- (void)_addMailAccount:(id)account;
- (void)_presentMergeConfirmationForDataclasses:(id)dataclasses account:(id)account;
- (void)_validateMailAccount:(id)account;
- (void)accountValidator:(id)validator finishedValidationOfAccount:(id)account usedSSL:(BOOL)l;
- (void)completeEnablingCloudServicesWithCompletion:(id)completion;
- (void)setBackupEnabled:(BOOL)enabled completion:(id)completion;
- (void)setCloudServicesEnabled:(BOOL)enabled completion:(id)completion;
- (void)setDeviceLocatorEnabled:(BOOL)enabled;
- (void)verifyAccountWithAppleID:(id)d completion:(id)completion;
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
    aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
    v5 = self->_account;
    self->_account = aa_primaryAppleAccount;

    account = self->_account;
  }

  return account;
}

- (void)setCloudServicesEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  v69 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
  v7 = _AAUILogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (enabledCopy)
  {
    v48 = completionCopy;
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "User chose to use iCloud", buf, 2u);
    }

    provisionedDataclasses = [aa_primaryAppleAccount provisionedDataclasses];
    v10 = [provisionedDataclasses mutableCopy];

    enabledDataclasses = [aa_primaryAppleAccount enabledDataclasses];
    [v10 minusSet:enabledDataclasses];

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
          mEMORY[0x1E698B888] = [MEMORY[0x1E698B888] sharedManager];
          v19 = [mEMORY[0x1E698B888] canAutoEnableDataclass:v17 forAccount:aa_primaryAppleAccount];

          if (v19)
          {
            [aa_primaryAppleAccount setEnabled:1 forDataclass:v17];
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

    v24 = [(ACAccountStore *)self->_accountStore dataclassActionsForAccountSave:aa_primaryAppleAccount, v48];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    allKeys = [v24 allKeys];
    v26 = [allKeys countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v58;
      v50 = allKeys;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v58 != v28)
          {
            objc_enumerationMutation(allKeys);
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
                lastObject = [v31 lastObject];
                v36 = v34;
                v24 = v33;
                v28 = v32;
                [(NSMutableDictionary *)v36 setObject:lastObject forKey:v30];

                allKeys = v50;
              }
            }

            else
            {
              [(NSMutableArray *)self->_dataclassesRequiringMergeDecision addObject:v30];
            }
          }
        }

        v27 = [allKeys countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v27);
    }

    if ([(NSMutableArray *)self->_dataclassesRequiringMergeDecision count])
    {
      completionCopy = v49;
      if (self->_handler != v49)
      {
        v37 = [v49 copy];
        handler = self->_handler;
        self->_handler = v37;
      }

      [(AAUICloudSyncServicesController *)self _presentMergeConfirmationForDataclasses:self->_dataclassesRequiringMergeDecision account:aa_primaryAppleAccount];
    }

    else
    {
      completionCopy = v49;
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

    enabledDataclasses2 = [aa_primaryAppleAccount enabledDataclasses];
    v40 = [enabledDataclasses2 copy];

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
          [aa_primaryAppleAccount setEnabled:0 forDataclass:v46];
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

    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)_presentMergeConfirmationForDataclasses:(id)dataclasses account:(id)account
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = MEMORY[0x1E696AAE8];
  dataclassesCopy = dataclasses;
  v8 = [v6 bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BATCH_MERGE_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  v20 = [v5 stringWithFormat:v9, @"iCloud"];

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"BATCH_MERGE_FORMAT"];
  v12 = [v10 localizedStringForKey:v11 value:&stru_1F447F790 table:@"Localizable"];

  v13 = [MEMORY[0x1E69898E0] localizedTextForDataclasses:dataclassesCopy usedAtBeginningOfSentence:0];

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

- (void)setDeviceLocatorEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7 = *MEMORY[0x1E69E9840];
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = enabledCopy;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "AASetupAssistantServiceDelegate setDeviceLocatorEnabled:%d.", v6, 8u);
  }

  if (enabledCopy)
  {
    v5 = +[AAUIDeviceLocatorService sharedInstance];
    [v5 enableInContext:5];
  }
}

- (void)setBackupEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  v16[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
  v8 = aa_primaryAppleAccount;
  if (enabledCopy)
  {
    if ([aa_primaryAppleAccount aa_isPrimaryEmailVerified])
    {
      v9 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__AAUICloudSyncServicesController_setBackupEnabled_completion___block_invoke;
      block[3] = &unk_1E820B780;
      block[4] = self;
      v14 = completionCopy;
      dispatch_async(v9, block);
    }

    else
    {
      v10 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A578];
      v16[0] = @"Primary email not verified.";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [v10 aa_errorWithCode:0 userInfo:v11];
      (*(completionCopy + 2))(completionCopy, 0, v12);
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_queuedDataclassStates setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6959AD8]];
    (*(completionCopy + 2))(completionCopy, 1, 0);
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

- (void)completeEnablingCloudServicesWithCompletion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "complete enabling cloud services", buf, 2u);
  }

  _account = [(AAUICloudSyncServicesController *)self _account];
  [_account refresh];
  if ([_account aa_isPrimaryEmailVerified])
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
          [_account setEnabled:objc_msgSend(v13 forDataclass:{"BOOLValue"), v12}];
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
    v34 = completionCopy;
    [(ACAccountStore *)accountStore saveAccount:_account withDataclassActions:queuedDataclassActions completion:v33];
    v16 = v34;
  }

  else if (_account)
  {
    enabledDataclasses = [_account enabledDataclasses];
    v18 = [enabledDataclasses copy];

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
            [_account setEnabled:0 forDataclass:v24];
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
    v28 = completionCopy;
    [(ACAccountStore *)v25 saveAccount:_account withCompletionHandler:v27];
  }

  else
  {
    v26 = _AALogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      [AAUICloudSyncServicesController completeEnablingCloudServicesWithCompletion:v26];
    }

    v16 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4404];
    (*(completionCopy + 2))(completionCopy, 0, v16);
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

- (void)verifyAccountWithAppleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  _account = [(AAUICloudSyncServicesController *)self _account];
  username = [_account username];
  v10 = [username isEqualToString:dCopy];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E698B818]) initWithAccount:_account];
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
    v18 = _account;
    selfCopy = self;
    v20 = completionCopy;
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
    (*(completionCopy + 2))(completionCopy, 0, v15);
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

- (void)_validateMailAccount:(id)account
{
  accountCopy = account;
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
  [(MFAccountValidator *)self->_validator validateAccount:accountCopy useSSL:1];
}

- (void)accountValidator:(id)validator finishedValidationOfAccount:(id)account usedSSL:(BOOL)l
{
  v23 = *MEMORY[0x1E69E9840];
  validatorCopy = validator;
  accountCopy = account;
  if ([validatorCopy accountIsValid])
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
      [(AAUICloudSyncServicesController *)self _addMailAccount:accountCopy];
    }
  }

  else
  {
    error = [validatorCopy error];
    code = [error code];
    v13 = MEMORY[0x1E696ABC0];
    userInfo = [error userInfo];
    if (code == 1032)
    {
      v15 = 111;
    }

    else
    {
      v15 = 112;
    }

    v16 = [v13 aa_errorWithCode:v15 userInfo:userInfo];

    v17 = self->_handler;
    if (v17)
    {
      v17[2](v17, 0, v16);
    }

    v18 = _AAUILogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [error localizedDescription];
      v21 = 138412290;
      v22 = localizedDescription;
      _os_log_impl(&dword_1C5355000, v18, OS_LOG_TYPE_DEFAULT, "Email account verification failed: %@", &v21, 0xCu);
    }
  }

  validator = self->_validator;
  self->_validator = 0;
}

- (void)_addMailAccount:(id)account
{
  v4 = MEMORY[0x1E69B16A8];
  accountCopy = account;
  mailAccounts = [v4 mailAccounts];
  v7 = [mailAccounts arrayByAddingObject:accountCopy];

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

+ (id)_domainFromAddress:(id)address
{
  addressCopy = address;
  v4 = [addressCopy rangeOfString:@"@"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    lowercaseString = 0;
  }

  else
  {
    v6 = [addressCopy substringFromIndex:v4 + 1];
    lowercaseString = [v6 lowercaseString];
  }

  return lowercaseString;
}

+ (id)_usernameFromAddress:(id)address
{
  addressCopy = address;
  v4 = [addressCopy rangeOfString:@"+"];
  if (!v5)
  {
    v4 = [addressCopy rangeOfString:@"@"];
  }

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [addressCopy substringToIndex:v4];
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