@interface ASAccountAuthenticationModificationServiceViewController
+ (id)_exportedInterface;
- (BOOL)_ensureHostHasAccountModificationEntitlement;
- (BOOL)_isKeychainSyncEnabled;
- (void)_deleteExistingKeychainCredentialIfPossibleWithCompletionHandler:(id)handler;
- (void)_findExtensionSupportingUpgrade:(id)upgrade withCompletionHandler:(id)handler;
- (void)_updateCredential:(id)credential forServiceIdentifier:(id)identifier userInfo:(id)info extension:(id)extension;
- (void)_updateKeychainWithNewCredential:(id)credential;
- (void)_upgradeCredentialToSignInWithApple:(id)apple forServiceIdentifier:(id)identifier userInfo:(id)info extension:(id)extension;
- (void)accountModificationHostViewController:(id)controller didFinishWithCredential:(id)credential userInfo:(id)info completion:(id)completion;
- (void)accountModificationHostViewController:(id)controller requestCanceledWithError:(id)error completion:(id)completion;
- (void)accountModificationHostViewControllerDidCompleteUpgradeToSignInWithApple:(id)apple userInfo:(id)info completion:(id)completion;
- (void)dismissUIForAccountModificationHostViewController:(id)controller;
- (void)presentUIForAccountModificationHostViewController:(id)controller;
- (void)updateCredential:(id)credential forServiceIdentifier:(id)identifier userInfo:(id)info extensionUUID:(id)d;
- (void)upgradeCredentialToSignInWithApple:(id)apple forServiceIdentifier:(id)identifier userInfo:(id)info extensionUUID:(id)d;
@end

@implementation ASAccountAuthenticationModificationServiceViewController

- (void)upgradeCredentialToSignInWithApple:(id)apple forServiceIdentifier:(id)identifier userInfo:(id)info extensionUUID:(id)d
{
  appleCopy = apple;
  identifierCopy = identifier;
  infoCopy = info;
  dCopy = d;
  self->_isPerformingAppInitiatedUpgrade = dCopy == 0;
  objc_storeStrong(&self->_existingCredential, apple);
  objc_storeStrong(&self->_serviceIdentifierForUpgrade, identifier);
  if (dCopy)
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
      v22 = appleCopy;
      v23 = identifierCopy;
      v24 = infoCopy;
      [v15 extensionWithUUID:dCopy completion:v21];

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
    v18 = appleCopy;
    v19 = identifierCopy;
    v20 = infoCopy;
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

- (void)_upgradeCredentialToSignInWithApple:(id)apple forServiceIdentifier:(id)identifier userInfo:(id)info extension:(id)extension
{
  extensionCopy = extension;
  infoCopy = info;
  identifierCopy = identifier;
  appleCopy = apple;
  v13 = [[_ASAccountAuthenticationModificationHostViewController alloc] initWithExtension:extensionCopy serviceIdentifier:identifierCopy];

  accountModificationHostViewController = self->_accountModificationHostViewController;
  self->_accountModificationHostViewController = v13;

  [(_ASAccountAuthenticationModificationHostViewController *)self->_accountModificationHostViewController setDelegate:self];
  [(_ASAccountAuthenticationModificationHostViewController *)self->_accountModificationHostViewController upgradeCredentialToSignInWithApple:appleCopy userInfo:infoCopy];
}

- (void)updateCredential:(id)credential forServiceIdentifier:(id)identifier userInfo:(id)info extensionUUID:(id)d
{
  v33[1] = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  identifierCopy = identifier;
  infoCopy = info;
  dCopy = d;
  self->_isPerformingAppInitiatedUpgrade = dCopy == 0;
  objc_storeStrong(&self->_existingCredential, credential);
  objc_storeStrong(&self->_serviceIdentifierForUpgrade, identifier);
  if (dCopy)
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
      v27 = credentialCopy;
      v28 = identifierCopy;
      v29 = infoCopy;
      [v15 extensionWithUUID:dCopy completion:v26];

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

      _remoteViewControllerProxy = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
      [_remoteViewControllerProxy requestDidFailWithError:v18 completion:&__block_literal_global_21];
    }

    v20 = *MEMORY[0x1E69C8E38];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __121__ASAccountAuthenticationModificationServiceViewController_updateCredential_forServiceIdentifier_userInfo_extensionUUID___block_invoke_5;
    v22[3] = &unk_1E7AF86B0;
    v22[4] = self;
    v23 = credentialCopy;
    v24 = identifierCopy;
    v25 = infoCopy;
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

- (void)_updateCredential:(id)credential forServiceIdentifier:(id)identifier userInfo:(id)info extension:(id)extension
{
  extensionCopy = extension;
  infoCopy = info;
  identifierCopy = identifier;
  credentialCopy = credential;
  attributes = [extensionCopy attributes];
  v21 = [attributes safari_stringForKey:*MEMORY[0x1E69C8E48]];

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
  v19 = [[_ASAccountAuthenticationModificationHostViewController alloc] initWithExtension:extensionCopy serviceIdentifier:identifierCopy];

  accountModificationHostViewController = self->_accountModificationHostViewController;
  self->_accountModificationHostViewController = v19;

  [(_ASAccountAuthenticationModificationHostViewController *)self->_accountModificationHostViewController setDelegate:self];
  [(_ASAccountAuthenticationModificationHostViewController *)self->_accountModificationHostViewController updateCredential:credentialCopy withNewPassword:v18 userInfo:infoCopy];
}

- (void)_findExtensionSupportingUpgrade:(id)upgrade withCompletionHandler:(id)handler
{
  v44[2] = *MEMORY[0x1E69E9840];
  upgradeCopy = upgrade;
  handlerCopy = handler;
  v8 = MEMORY[0x1E6963620];
  [(ASAccountAuthenticationModificationServiceViewController *)self _hostAuditToken];
  v37 = 0;
  v9 = [v8 bundleRecordForAuditToken:v38 error:&v37];
  v10 = v37;
  v11 = [v9 URL];
  path = [v11 path];

  if (v10)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ASAccountAuthenticationModificationServiceViewController _findExtensionSupportingUpgrade:v13 withCompletionHandler:v10];
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v14 = *MEMORY[0x1E69C8E30];
    v15 = *MEMORY[0x1E696A2B0];
    v43[0] = *MEMORY[0x1E696A2F8];
    v43[1] = v15;
    v44[0] = v14;
    v44[1] = path;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
    v36 = 0;
    v17 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v16 error:&v36];
    v18 = v36;
    firstObject = [v17 firstObject];

    if (firstObject)
    {
      attributes = [firstObject attributes];
      v21 = [attributes safari_BOOLForKey:upgradeCopy];

      v22 = handlerCopy[2];
      if (v21)
      {
        v22(handlerCopy, firstObject);
      }

      else
      {
        v22(handlerCopy, 0);
        _remoteViewControllerProxy = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
        v32 = MEMORY[0x1E696ABC0];
        v35 = v18;
        v39 = *MEMORY[0x1E696A588];
        v27 = MEMORY[0x1E696AEC0];
        identifier = [firstObject identifier];
        v28 = [v27 stringWithFormat:@"Discovered extension %@ does not support strong password upgrades.", identifier];
        v40 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v30 = [v32 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v29];
        [_remoteViewControllerProxy requestDidFailWithError:v30 completion:&__block_literal_global_34];

        v18 = v35;
      }
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
      _remoteViewControllerProxy2 = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
      v23 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A588];
      v42 = @"Did not find Account Authentication Modification extension.";
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v25 = [v23 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v24];
      [_remoteViewControllerProxy2 requestDidFailWithError:v25 completion:&__block_literal_global_28];
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

    _remoteViewControllerProxy = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v13 = *MEMORY[0x1E696A588];
    v14[0] = @"Calling process is not entitled";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [v7 errorWithDomain:v8 code:4099 userInfo:v9];
    [_remoteViewControllerProxy requestDidFailWithError:v10 completion:&__block_literal_global_39];
  }

  v11 = *MEMORY[0x1E69E9840];
  return HasEntitlement;
}

- (void)_deleteExistingKeychainCredentialIfPossibleWithCompletionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  identifier = [(ASCredentialServiceIdentifier *)self->_serviceIdentifierForUpgrade identifier];
  safari_highLevelDomainFromHost = [identifier safari_highLevelDomainFromHost];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  savedAccountsWithPasswords = [mEMORY[0x1E69C8A38] savedAccountsWithPasswords];

  obj = savedAccountsWithPasswords;
  v7 = [savedAccountsWithPasswords countByEnumeratingWithState:&v24 objects:v28 count:16];
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
        user = [(ASPasswordCredential *)self->_existingCredential user];
        user2 = [v11 user];
        if ([user isEqualToString:user2])
        {
          highLevelDomain = [v11 highLevelDomain];
          v15 = [safari_highLevelDomainFromHost isEqualToString:highLevelDomain];

          if (v15)
          {
            v17 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [ASAccountAuthenticationModificationServiceViewController _deleteExistingKeychainCredentialIfPossibleWithCompletionHandler:v17];
            }

            mEMORY[0x1E69C8A38]2 = [MEMORY[0x1E69C8A38] sharedStore];
            v16 = handlerCopy;
            [mEMORY[0x1E69C8A38]2 removeCredentialTypes:1 forSavedAccount:v11 completionHandler:handlerCopy];

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

  v16 = handlerCopy;
  (*(handlerCopy + 2))(handlerCopy);
LABEL_16:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_updateKeychainWithNewCredential:(id)credential
{
  v39 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  identifier = [(ASCredentialServiceIdentifier *)self->_serviceIdentifierForUpgrade identifier];
  safari_highLevelDomainFromHost = [identifier safari_highLevelDomainFromHost];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  savedAccountsWithPasswords = [mEMORY[0x1E69C8A38] savedAccountsWithPasswords];

  v7 = [savedAccountsWithPasswords countByEnumeratingWithState:&v34 objects:v38 count:16];
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
          objc_enumerationMutation(savedAccountsWithPasswords);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        user = [*(&self->super.super.super.isa + v10[38]) user];
        user2 = [v12 user];
        if ([user isEqualToString:user2])
        {
          v32 = v12;
          [v12 highLevelDomain];
          v15 = v8;
          v16 = v9;
          selfCopy = self;
          v18 = v10;
          v20 = v19 = savedAccountsWithPasswords;
          v21 = [safari_highLevelDomainFromHost isEqualToString:v20];

          savedAccountsWithPasswords = v19;
          v10 = v18;
          self = selfCopy;
          v9 = v16;
          v8 = v15;

          if (v21)
          {
            mEMORY[0x1E69C8A38]2 = [MEMORY[0x1E69C8A38] sharedStore];
            v26 = credentialCopy;
            user3 = [credentialCopy user];
            password = [credentialCopy password];
            [mEMORY[0x1E69C8A38]2 changeSavedAccount:v32 toUser:user3 password:password];
            v29 = safari_highLevelDomainFromHost;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v8 = [savedAccountsWithPasswords countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v8);
  }

  v22 = objc_alloc(MEMORY[0x1E696AF50]);
  identifier2 = [(ASCredentialServiceIdentifier *)self->_serviceIdentifierForUpgrade identifier];
  savedAccountsWithPasswords = [v22 initWithHost:identifier2 port:0 protocol:&stru_1F28DE020 realm:0 authenticationMethod:*MEMORY[0x1E696A950]];

  mEMORY[0x1E69C8A38]2 = [MEMORY[0x1E69C8A38] sharedStore];
  v26 = credentialCopy;
  user3 = [credentialCopy user];
  password = [credentialCopy password];
  v29 = safari_highLevelDomainFromHost;
  v24 = [mEMORY[0x1E69C8A38]2 saveUser:user3 password:password forProtectionSpace:savedAccountsWithPasswords highLevelDomain:safari_highLevelDomainFromHost groupID:&stru_1F28DE020];
LABEL_13:

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isKeychainSyncEnabled
{
  mEMORY[0x1E69C88B8] = [MEMORY[0x1E69C88B8] sharedMonitor];
  isKeychainSyncEnabled = [mEMORY[0x1E69C88B8] isKeychainSyncEnabled];

  return isKeychainSyncEnabled;
}

- (void)accountModificationHostViewControllerDidCompleteUpgradeToSignInWithApple:(id)apple userInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
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
  _remoteViewControllerProxy = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __153__ASAccountAuthenticationModificationServiceViewController_accountModificationHostViewControllerDidCompleteUpgradeToSignInWithApple_userInfo_completion___block_invoke_2;
  v13[3] = &unk_1E7AF7608;
  v14 = v10;
  v12 = v10;
  [_remoteViewControllerProxy requestToUpgradeToSignInWithAppleDidFinishWithUserInfo:infoCopy completion:v13];

  dispatch_group_notify(v12, MEMORY[0x1E69E96A0], completionCopy);
}

- (void)accountModificationHostViewController:(id)controller didFinishWithCredential:(id)credential userInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  credentialCopy = credential;
  [(ASAccountAuthenticationModificationServiceViewController *)self _updateKeychainWithNewCredential:credentialCopy];
  _remoteViewControllerProxy = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy requestDidFinishWithCredential:credentialCopy userInfo:infoCopy completion:completionCopy];
}

- (void)presentUIForAccountModificationHostViewController:(id)controller
{
  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_accountModificationHostViewController];
  [(ASAccountAuthenticationModificationServiceViewController *)self addChildViewController:v7];
  view = [(ASAccountAuthenticationModificationServiceViewController *)self view];
  view2 = [v7 view];
  [view addSubview:view2];
  [view bounds];
  [view2 setFrame:?];
  [view2 setAutoresizingMask:18];
  [v7 didMoveToParentViewController:self];
  _remoteViewControllerProxy = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy presentAccountModificationRemoteViewController];
}

- (void)dismissUIForAccountModificationHostViewController:(id)controller
{
  _remoteViewControllerProxy = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismissAccountModificationRemoteViewController];
}

- (void)accountModificationHostViewController:(id)controller requestCanceledWithError:(id)error completion:(id)completion
{
  completionCopy = completion;
  errorCopy = error;
  _remoteViewControllerProxy = [(ASAccountAuthenticationModificationServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy requestDidFailWithError:errorCopy completion:completionCopy];
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