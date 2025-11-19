@interface ASAccountAuthenticationModificationServiceViewController
+ (id)_exportedInterface;
- (BOOL)_ensureHostHasAccountModificationEntitlement;
- (BOOL)_isKeychainSyncEnabled;
- (void)_deleteExistingKeychainCredentialIfPossibleWithCompletionHandler:(id)a3;
- (void)_findExtensionSupportingUpgrade:(id)a3 withCompletionHandler:(id)a4;
- (void)_updateCredential:(id)a3 forServiceIdentifier:(id)a4 userInfo:(id)a5 extension:(id)a6;
- (void)_updateKeychainWithNewCredential:(id)a3;
- (void)_upgradeCredentialToSignInWithApple:(id)a3 forServiceIdentifier:(id)a4 userInfo:(id)a5 extension:(id)a6;
- (void)accountModificationHostViewController:(id)a3 didFinishWithCredential:(id)a4 userInfo:(id)a5 completion:(id)a6;
- (void)accountModificationHostViewController:(id)a3 requestCanceledWithError:(id)a4 completion:(id)a5;
- (void)accountModificationHostViewControllerDidCompleteUpgradeToSignInWithApple:(id)a3 userInfo:(id)a4 completion:(id)a5;
- (void)dismissUIForAccountModificationHostViewController:(id)a3;
- (void)presentUIForAccountModificationHostViewController:(id)a3;
- (void)updateCredential:(id)a3 forServiceIdentifier:(id)a4 userInfo:(id)a5 extensionUUID:(id)a6;
- (void)upgradeCredentialToSignInWithApple:(id)a3 forServiceIdentifier:(id)a4 userInfo:(id)a5 extensionUUID:(id)a6;
@end

@implementation ASAccountAuthenticationModificationServiceViewController

- (void)upgradeCredentialToSignInWithApple:(id)a3 forServiceIdentifier:(id)a4 userInfo:(id)a5 extensionUUID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  self->_isPerformingAppInitiatedUpgrade = v14 == 0;
  objc_storeStrong(&self->_existingCredential, a3);
  objc_storeStrong(&self->_serviceIdentifierForUpgrade, a4);
  if (v14)
  {
    if ([(ASAccountAuthenticationModificationServiceViewController *)self _ensureHostHasAccountModificationEntitlement])
    {
      objc_initWeak(&location, self);
      v15 = MEMORY[0x1E696ABD0];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __139__ASAccountAuthenticationModificationServiceViewController_upgradeCredentialToSignInWithApple_forServiceIdentifier_userInfo_extensionUUID___block_invoke;
      v21[3] = &unk_1E7AF8688;
      v21[4] = self;
      objc_copyWeak(&v25, &location);
      v22 = v11;
      v23 = v12;
      v24 = v13;
      [v15 extensionWithUUID:v14 completion:v21];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v16 = *MEMORY[0x1E69C8E40];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __139__ASAccountAuthenticationModificationServiceViewController_upgradeCredentialToSignInWithApple_forServiceIdentifier_userInfo_extensionUUID___block_invoke_4;
    v17[3] = &unk_1E7AF86B0;
    v17[4] = self;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    [(ASAccountAuthenticationModificationServiceViewController *)self _findExtensionSupportingUpgrade:v16 withCompletionHandler:v17];
  }
}

void __139__ASAccountAuthenticationModificationServiceViewController_upgradeCredentialToSignInWithApple_forServiceIdentifier_userInfo_extensionUUID___block_invoke(id *a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 extensionPointIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69C8E30]), v7, (v8 & 1) != 0))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __139__ASAccountAuthenticationModificationServiceViewController_upgradeCredentialToSignInWithApple_forServiceIdentifier_userInfo_extensionUUID___block_invoke_3;
    v15[3] = &unk_1E7AF8660;
    objc_copyWeak(&v20, a1 + 8);
    v16 = a1[5];
    v17 = a1[6];
    v18 = a1[7];
    v19 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v15);

    objc_destroyWeak(&v20);
  }

  else
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A2B8];
      v21 = *MEMORY[0x1E696A588];
      v22[0] = @"Did not find a valid extension for request.";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v9 = [v10 errorWithDomain:v11 code:0x7FFFFFFFFFFFFFFFLL userInfo:v12];
    }

    v13 = [a1[4] _remoteViewControllerProxy];
    [v13 requestDidFailWithError:v9 completion:&__block_literal_global_14];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __139__ASAccountAuthenticationModificationServiceViewController_upgradeCredentialToSignInWithApple_forServiceIdentifier_userInfo_extensionUUID___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _upgradeCredentialToSignInWithApple:*(a1 + 32) forServiceIdentifier:*(a1 + 40) userInfo:*(a1 + 48) extension:*(a1 + 56)];
}

void __139__ASAccountAuthenticationModificationServiceViewController_upgradeCredentialToSignInWithApple_forServiceIdentifier_userInfo_extensionUUID___block_invoke_4(void *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  if (a2)
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    [v3 _upgradeCredentialToSignInWithApple:v4 forServiceIdentifier:v5 userInfo:v6 extension:a2];
  }

  else
  {
    v7 = [v3 _remoteViewControllerProxy];
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"Did not find Account Authentication Modification extension.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v8 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v9];
    [v7 requestDidFailWithError:v10 completion:&__block_literal_global_12_0];

    v11 = *MEMORY[0x1E69E9840];
  }
}

- (void)_upgradeCredentialToSignInWithApple:(id)a3 forServiceIdentifier:(id)a4 userInfo:(id)a5 extension:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v15 = a3;
  v13 = [[_ASAccountAuthenticationModificationHostViewController alloc] initWithExtension:v10 serviceIdentifier:v12];

  accountModificationHostViewController = self->_accountModificationHostViewController;
  self->_accountModificationHostViewController = v13;

  [(_ASAccountAuthenticationModificationHostViewController *)self->_accountModificationHostViewController setDelegate:self];
  [(_ASAccountAuthenticationModificationHostViewController *)self->_accountModificationHostViewController upgradeCredentialToSignInWithApple:v15 userInfo:v11];
}

- (void)updateCredential:(id)a3 forServiceIdentifier:(id)a4 userInfo:(id)a5 extensionUUID:(id)a6
{
  v33[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  self->_isPerformingAppInitiatedUpgrade = v14 == 0;
  objc_storeStrong(&self->_existingCredential, a3);
  objc_storeStrong(&self->_serviceIdentifierForUpgrade, a4);
  if (v14)
  {
    if ([(ASAccountAuthenticationModificationServiceViewController *)self _ensureHostHasAccountModificationEntitlement])
    {
      objc_initWeak(&location, self);
      v15 = MEMORY[0x1E696ABD0];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __121__ASAccountAuthenticationModificationServiceViewController_updateCredential_forServiceIdentifier_userInfo_extensionUUID___block_invoke;
      v26[3] = &unk_1E7AF8688;
      v26[4] = self;
      objc_copyWeak(&v30, &location);
      v27 = v11;
      v28 = v12;
      v29 = v13;
      [v15 extensionWithUUID:v14 completion:v26];

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    if (![(ASAccountAuthenticationModificationServiceViewController *)self _isKeychainSyncEnabled])
    {
      v16 = MEMORY[0x1E696ABC0];
      v32 = @"ASExtensionLocalizedFailureReasonErrorKey";
      v33[0] = @"iCloud Keychain must be enabled to perform strong password upgrades.";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v18 = [v16 errorWithDomain:*MEMORY[0x1E696A2B8] code:0 userInfo:v17];

      v19 = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
      [v19 requestDidFailWithError:v18 completion:&__block_literal_global_21];
    }

    v20 = *MEMORY[0x1E69C8E38];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __121__ASAccountAuthenticationModificationServiceViewController_updateCredential_forServiceIdentifier_userInfo_extensionUUID___block_invoke_5;
    v22[3] = &unk_1E7AF86B0;
    v22[4] = self;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    [(ASAccountAuthenticationModificationServiceViewController *)self _findExtensionSupportingUpgrade:v20 withCompletionHandler:v22];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __121__ASAccountAuthenticationModificationServiceViewController_updateCredential_forServiceIdentifier_userInfo_extensionUUID___block_invoke(id *a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 extensionPointIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69C8E30]), v7, (v8 & 1) != 0))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __121__ASAccountAuthenticationModificationServiceViewController_updateCredential_forServiceIdentifier_userInfo_extensionUUID___block_invoke_3;
    v15[3] = &unk_1E7AF8660;
    objc_copyWeak(&v20, a1 + 8);
    v16 = a1[5];
    v17 = a1[6];
    v18 = a1[7];
    v19 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v15);

    objc_destroyWeak(&v20);
  }

  else
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A2B8];
      v21 = *MEMORY[0x1E696A588];
      v22[0] = @"Did not find a valid extension for request.";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v9 = [v10 errorWithDomain:v11 code:0x7FFFFFFFFFFFFFFFLL userInfo:v12];
    }

    v13 = [a1[4] _remoteViewControllerProxy];
    [v13 requestDidFailWithError:v9 completion:&__block_literal_global_16_0];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __121__ASAccountAuthenticationModificationServiceViewController_updateCredential_forServiceIdentifier_userInfo_extensionUUID___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _updateCredential:*(a1 + 32) forServiceIdentifier:*(a1 + 40) userInfo:*(a1 + 48) extension:*(a1 + 56)];
}

void __121__ASAccountAuthenticationModificationServiceViewController_updateCredential_forServiceIdentifier_userInfo_extensionUUID___block_invoke_5(void *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  if (a2)
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    [v3 _updateCredential:v4 forServiceIdentifier:v5 userInfo:v6 extension:a2];
  }

  else
  {
    v7 = [v3 _remoteViewControllerProxy];
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"Did not find Account Authentication Modification extension.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v8 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v9];
    [v7 requestDidFailWithError:v10 completion:&__block_literal_global_23];

    v11 = *MEMORY[0x1E69E9840];
  }
}

- (void)_updateCredential:(id)a3 forServiceIdentifier:(id)a4 userInfo:(id)a5 extension:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 attributes];
  v21 = [v14 safari_stringForKey:*MEMORY[0x1E69C8E48]];

  if (v21)
  {
    v15 = [MEMORY[0x1E69C8998] parsePasswordRules:v21 error:0];
    v16 = [MEMORY[0x1E69C8970] requirementsForPasswordRuleSet:v15 respectingMinLength:0 maxLength:0];
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_alloc(MEMORY[0x1E69C8970]) initWithPasswordRequirementsByDomain:0];
  v18 = [v17 generatedPasswordMatchingRequirements:v16];
  v19 = [[_ASAccountAuthenticationModificationHostViewController alloc] initWithExtension:v10 serviceIdentifier:v12];

  accountModificationHostViewController = self->_accountModificationHostViewController;
  self->_accountModificationHostViewController = v19;

  [(_ASAccountAuthenticationModificationHostViewController *)self->_accountModificationHostViewController setDelegate:self];
  [(_ASAccountAuthenticationModificationHostViewController *)self->_accountModificationHostViewController updateCredential:v13 withNewPassword:v18 userInfo:v11];
}

- (void)_findExtensionSupportingUpgrade:(id)a3 withCompletionHandler:(id)a4
{
  v44[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E6963620];
  [(ASAccountAuthenticationModificationServiceViewController *)self _hostAuditToken];
  v37 = 0;
  v9 = [v8 bundleRecordForAuditToken:v38 error:&v37];
  v10 = v37;
  v11 = [v9 URL];
  v12 = [v11 path];

  if (v10)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ASAccountAuthenticationModificationServiceViewController _findExtensionSupportingUpgrade:v13 withCompletionHandler:v10];
    }

    v7[2](v7, 0);
  }

  else
  {
    v14 = *MEMORY[0x1E69C8E30];
    v15 = *MEMORY[0x1E696A2B0];
    v43[0] = *MEMORY[0x1E696A2F8];
    v43[1] = v15;
    v44[0] = v14;
    v44[1] = v12;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
    v36 = 0;
    v17 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v16 error:&v36];
    v18 = v36;
    v19 = [v17 firstObject];

    if (v19)
    {
      v20 = [v19 attributes];
      v21 = [v20 safari_BOOLForKey:v6];

      v22 = v7[2];
      if (v21)
      {
        v22(v7, v19);
      }

      else
      {
        v22(v7, 0);
        v26 = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
        v32 = MEMORY[0x1E696ABC0];
        v35 = v18;
        v39 = *MEMORY[0x1E696A588];
        v27 = MEMORY[0x1E696AEC0];
        v33 = [v19 identifier];
        v28 = [v27 stringWithFormat:@"Discovered extension %@ does not support strong password upgrades.", v33];
        v40 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v30 = [v32 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v29];
        [v26 requestDidFailWithError:v30 completion:&__block_literal_global_34];

        v18 = v35;
      }
    }

    else
    {
      v7[2](v7, 0);
      v34 = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
      v23 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A588];
      v42 = @"Did not find Account Authentication Modification extension.";
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v25 = [v23 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v24];
      [v34 requestDidFailWithError:v25 completion:&__block_literal_global_28];
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (BOOL)_ensureHostHasAccountModificationEntitlement
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(ASAccountAuthenticationModificationServiceViewController *)self _hostAuditToken];
  v3 = *MEMORY[0x1E69C8E50];
  HasEntitlement = WBSAuditTokenHasEntitlement();
  if ((HasEntitlement & 1) == 0)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ASAccountAuthenticationModificationServiceViewController *)v5 _ensureHostHasAccountModificationEntitlement];
    }

    v6 = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v13 = *MEMORY[0x1E696A588];
    v14[0] = @"Calling process is not entitled";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [v7 errorWithDomain:v8 code:4099 userInfo:v9];
    [v6 requestDidFailWithError:v10 completion:&__block_literal_global_39];
  }

  v11 = *MEMORY[0x1E69E9840];
  return HasEntitlement;
}

- (void)_deleteExistingKeychainCredentialIfPossibleWithCompletionHandler:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v4 = [(ASCredentialServiceIdentifier *)self->_serviceIdentifierForUpgrade identifier];
  v22 = [v4 safari_highLevelDomainFromHost];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [MEMORY[0x1E69C8A38] sharedStore];
  v6 = [v5 savedAccountsWithPasswords];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = [(ASPasswordCredential *)self->_existingCredential user];
        v13 = [v11 user];
        if ([v12 isEqualToString:v13])
        {
          v14 = [v11 highLevelDomain];
          v15 = [v22 isEqualToString:v14];

          if (v15)
          {
            v17 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [ASAccountAuthenticationModificationServiceViewController _deleteExistingKeychainCredentialIfPossibleWithCompletionHandler:v17];
            }

            v19 = [MEMORY[0x1E69C8A38] sharedStore];
            v16 = v21;
            [v19 removeCredentialTypes:1 forSavedAccount:v11 completionHandler:v21];

            goto LABEL_16;
          }
        }

        else
        {
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = v21;
  (*(v21 + 2))(v21);
LABEL_16:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_updateKeychainWithNewCredential:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v4 = [(ASCredentialServiceIdentifier *)self->_serviceIdentifierForUpgrade identifier];
  v33 = [v4 safari_highLevelDomainFromHost];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [MEMORY[0x1E69C8A38] sharedStore];
  v6 = [v5 savedAccountsWithPasswords];

  v7 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    v10 = &OBJC_IVAR____ASExtensionViewController__allowRequestingUIFromNonUIRequest;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = [*(&self->super.super.super.isa + v10[38]) user];
        v14 = [v12 user];
        if ([v13 isEqualToString:v14])
        {
          v32 = v12;
          [v12 highLevelDomain];
          v15 = v8;
          v16 = v9;
          v17 = self;
          v18 = v10;
          v20 = v19 = v6;
          v21 = [v33 isEqualToString:v20];

          v6 = v19;
          v10 = v18;
          self = v17;
          v9 = v16;
          v8 = v15;

          if (v21)
          {
            v25 = [MEMORY[0x1E69C8A38] sharedStore];
            v26 = v31;
            v27 = [v31 user];
            v28 = [v31 password];
            [v25 changeSavedAccount:v32 toUser:v27 password:v28];
            v29 = v33;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v8);
  }

  v22 = objc_alloc(MEMORY[0x1E696AF50]);
  v23 = [(ASCredentialServiceIdentifier *)self->_serviceIdentifierForUpgrade identifier];
  v6 = [v22 initWithHost:v23 port:0 protocol:&stru_1F28DE020 realm:0 authenticationMethod:*MEMORY[0x1E696A950]];

  v25 = [MEMORY[0x1E69C8A38] sharedStore];
  v26 = v31;
  v27 = [v31 user];
  v28 = [v31 password];
  v29 = v33;
  v24 = [v25 saveUser:v27 password:v28 forProtectionSpace:v6 highLevelDomain:v33 groupID:&stru_1F28DE020];
LABEL_13:

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isKeychainSyncEnabled
{
  v2 = [MEMORY[0x1E69C88B8] sharedMonitor];
  v3 = [v2 isKeychainSyncEnabled];

  return v3;
}

- (void)accountModificationHostViewControllerDidCompleteUpgradeToSignInWithApple:(id)a3 userInfo:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = dispatch_group_create();
  v10 = v9;
  if (self->_isPerformingAppInitiatedUpgrade)
  {
    dispatch_group_enter(v9);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __153__ASAccountAuthenticationModificationServiceViewController_accountModificationHostViewControllerDidCompleteUpgradeToSignInWithApple_userInfo_completion___block_invoke;
    v15[3] = &unk_1E7AF7608;
    v16 = v10;
    [(ASAccountAuthenticationModificationServiceViewController *)self _deleteExistingKeychainCredentialIfPossibleWithCompletionHandler:v15];
  }

  dispatch_group_enter(v10);
  v11 = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __153__ASAccountAuthenticationModificationServiceViewController_accountModificationHostViewControllerDidCompleteUpgradeToSignInWithApple_userInfo_completion___block_invoke_2;
  v13[3] = &unk_1E7AF7608;
  v14 = v10;
  v12 = v10;
  [v11 requestToUpgradeToSignInWithAppleDidFinishWithUserInfo:v8 completion:v13];

  dispatch_group_notify(v12, MEMORY[0x1E69E96A0], v7);
}

- (void)accountModificationHostViewController:(id)a3 didFinishWithCredential:(id)a4 userInfo:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  [(ASAccountAuthenticationModificationServiceViewController *)self _updateKeychainWithNewCredential:v11];
  v12 = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
  [v12 requestDidFinishWithCredential:v11 userInfo:v10 completion:v9];
}

- (void)presentUIForAccountModificationHostViewController:(id)a3
{
  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_accountModificationHostViewController];
  [(ASAccountAuthenticationModificationServiceViewController *)self addChildViewController:v7];
  v4 = [(ASAccountAuthenticationModificationServiceViewController *)self view];
  v5 = [v7 view];
  [v4 addSubview:v5];
  [v4 bounds];
  [v5 setFrame:?];
  [v5 setAutoresizingMask:18];
  [v7 didMoveToParentViewController:self];
  v6 = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
  [v6 presentAccountModificationRemoteViewController];
}

- (void)dismissUIForAccountModificationHostViewController:(id)a3
{
  v3 = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
  [v3 dismissAccountModificationRemoteViewController];
}

- (void)accountModificationHostViewController:(id)a3 requestCanceledWithError:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
  [v9 requestDidFailWithError:v8 completion:v7];
}

+ (id)_exportedInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2904FC8];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_updateCredential_forServiceIdentifier_userInfo_extensionUUID_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v4 forSelector:sel_updateCredential_forServiceIdentifier_userInfo_extensionUUID_ argumentIndex:1 ofReply:0];

  v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v5 forSelector:sel_updateCredential_forServiceIdentifier_userInfo_extensionUUID_ argumentIndex:3 ofReply:0];

  v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v6 forSelector:sel_upgradeCredentialToSignInWithApple_forServiceIdentifier_userInfo_extensionUUID_ argumentIndex:0 ofReply:0];

  v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v7 forSelector:sel_upgradeCredentialToSignInWithApple_forServiceIdentifier_userInfo_extensionUUID_ argumentIndex:1 ofReply:0];

  v8 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v8 forSelector:sel_upgradeCredentialToSignInWithApple_forServiceIdentifier_userInfo_extensionUUID_ argumentIndex:3 ofReply:0];

  return v2;
}

- (void)_findExtensionSupportingUpgrade:(void *)a1 withCompletionHandler:(void *)a2 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1B1C8D000, v3, OS_LOG_TYPE_ERROR, "Failed to get bundle record for host application due to error: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end