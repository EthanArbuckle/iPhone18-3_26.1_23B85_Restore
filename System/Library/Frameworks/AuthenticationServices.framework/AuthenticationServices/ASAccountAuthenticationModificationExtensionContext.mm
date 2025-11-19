@interface ASAccountAuthenticationModificationExtensionContext
- (void)cancelRequest;
- (void)cancelRequestWithError:(NSError *)error;
- (void)completeChangePasswordRequestWithUpdatedCredential:(ASPasswordCredential *)updatedCredential userInfo:(NSDictionary *)userInfo;
- (void)completeUpgradeToSignInWithAppleWithUserInfo:(NSDictionary *)userInfo;
- (void)getSignInWithAppleUpgradeAuthorizationWithState:(NSString *)state nonce:(NSString *)nonce completionHandler:(void *)completionHandler;
- (void)prepareInterfaceToUpdatePasswordForServiceIdentifier:(id)a3 existingCredential:(id)a4 newPassword:(id)a5 userInfo:(id)a6 completion:(id)a7;
- (void)prepareInterfaceToUpgradeCredentialToSignInWithApple:(id)a3 serviceIdentifier:(id)a4 userInfo:(id)a5 completion:(id)a6;
- (void)updatePasswordForServiceIdentifier:(id)a3 existingCredential:(id)a4 newPassword:(id)a5 userInfo:(id)a6;
- (void)upgradeCredentialToSignInWithApple:(id)a3 serviceIdentifier:(id)a4 userInfo:(id)a5;
@end

@implementation ASAccountAuthenticationModificationExtensionContext

- (void)getSignInWithAppleUpgradeAuthorizationWithState:(NSString *)state nonce:(NSString *)nonce completionHandler:(void *)completionHandler
{
  v8 = completionHandler;
  v9 = nonce;
  v10 = state;
  v11 = [(ASAccountAuthenticationModificationExtensionContext *)self _auxiliaryConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __127__ASAccountAuthenticationModificationExtensionContext_getSignInWithAppleUpgradeAuthorizationWithState_nonce_completionHandler___block_invoke;
  v13[3] = &unk_1E7AF8540;
  v13[4] = self;
  v12 = [v11 remoteObjectProxyWithErrorHandler:v13];

  [v12 getSignInWithAppleAuthorizationWithState:v10 nonce:v9 completion:v8];
}

- (void)completeUpgradeToSignInWithAppleWithUserInfo:(NSDictionary *)userInfo
{
  v4 = userInfo;
  v5 = [(ASAccountAuthenticationModificationExtensionContext *)self _auxiliaryConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __100__ASAccountAuthenticationModificationExtensionContext_completeUpgradeToSignInWithAppleWithUserInfo___block_invoke;
  v8[3] = &unk_1E7AF8540;
  v8[4] = self;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v8];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__ASAccountAuthenticationModificationExtensionContext_completeUpgradeToSignInWithAppleWithUserInfo___block_invoke_2;
  v7[3] = &unk_1E7AF7608;
  v7[4] = self;
  [v6 prepareToCompleteUpgradeToSignInWithAppleWithUserInfo:v4 completion:v7];
}

- (void)completeChangePasswordRequestWithUpdatedCredential:(ASPasswordCredential *)updatedCredential userInfo:(NSDictionary *)userInfo
{
  v6 = userInfo;
  v7 = updatedCredential;
  v8 = [(ASAccountAuthenticationModificationExtensionContext *)self _auxiliaryConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __115__ASAccountAuthenticationModificationExtensionContext_completeChangePasswordRequestWithUpdatedCredential_userInfo___block_invoke;
  v11[3] = &unk_1E7AF8540;
  v11[4] = self;
  v9 = [v8 remoteObjectProxyWithErrorHandler:v11];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __115__ASAccountAuthenticationModificationExtensionContext_completeChangePasswordRequestWithUpdatedCredential_userInfo___block_invoke_2;
  v10[3] = &unk_1E7AF7608;
  v10[4] = self;
  [v9 prepareToCompleteRequestWithUpdatedCredential:v7 userInfo:v6 completion:v10];
}

- (void)cancelRequestWithError:(NSError *)error
{
  v4 = error;
  v5 = [(ASAccountAuthenticationModificationExtensionContext *)self _auxiliaryConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__ASAccountAuthenticationModificationExtensionContext_cancelRequestWithError___block_invoke;
  v11[3] = &unk_1E7AF8540;
  v11[4] = self;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v11];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__ASAccountAuthenticationModificationExtensionContext_cancelRequestWithError___block_invoke_2;
  v8[3] = &unk_1E7AF76A8;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v6 prepareToCancelRequestWithError:v7 completion:v8];
}

id __78__ASAccountAuthenticationModificationExtensionContext_cancelRequestWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = ASAccountAuthenticationModificationExtensionContext;
  return objc_msgSendSuper2(&v3, sel_cancelRequestWithError_, a2);
}

id __78__ASAccountAuthenticationModificationExtensionContext_cancelRequestWithError___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = ASAccountAuthenticationModificationExtensionContext;
  return objc_msgSendSuper2(&v3, sel_cancelRequestWithError_, v1);
}

- (void)upgradeCredentialToSignInWithApple:(id)a3 serviceIdentifier:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ASAccountAuthenticationModificationExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_opt_respondsToSelector())
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __117__ASAccountAuthenticationModificationExtensionContext_upgradeCredentialToSignInWithApple_serviceIdentifier_userInfo___block_invoke;
      v26[3] = &unk_1E7AF7740;
      v12 = &v27;
      v27 = v11;
      v13 = &v28;
      v28 = v9;
      v14 = &v29;
      v29 = v8;
      v15 = MEMORY[0x1E69E96A0];
      v16 = v26;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __117__ASAccountAuthenticationModificationExtensionContext_upgradeCredentialToSignInWithApple_serviceIdentifier_userInfo___block_invoke_3;
        v17[3] = &unk_1E7AF8568;
        v12 = &v18;
        v18 = v11;
        v13 = &v19;
        v19 = v9;
        v14 = &v20;
        v20 = v8;
        v21 = v10;
        dispatch_async(MEMORY[0x1E69E96A0], v17);

        goto LABEL_8;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __117__ASAccountAuthenticationModificationExtensionContext_upgradeCredentialToSignInWithApple_serviceIdentifier_userInfo___block_invoke_2;
      block[3] = &unk_1E7AF7740;
      v12 = &v23;
      v23 = v11;
      v13 = &v24;
      v24 = v9;
      v14 = &v25;
      v25 = v8;
      v15 = MEMORY[0x1E69E96A0];
      v16 = block;
    }

    dispatch_async(v15, v16);
LABEL_8:
  }
}

- (void)prepareInterfaceToUpgradeCredentialToSignInWithApple:(id)a3 serviceIdentifier:(id)a4 userInfo:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ASAccountAuthenticationModificationExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_opt_respondsToSelector())
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __146__ASAccountAuthenticationModificationExtensionContext_prepareInterfaceToUpgradeCredentialToSignInWithApple_serviceIdentifier_userInfo_completion___block_invoke;
      block[3] = &unk_1E7AF76D0;
      v23 = v14;
      v24 = v11;
      v25 = v10;
      v26 = v13;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v15 = v23;
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __146__ASAccountAuthenticationModificationExtensionContext_prepareInterfaceToUpgradeCredentialToSignInWithApple_serviceIdentifier_userInfo_completion___block_invoke_2;
      v16[3] = &unk_1E7AF7FB0;
      v17 = v14;
      v18 = v11;
      v19 = v10;
      v20 = v12;
      v21 = v13;
      dispatch_async(MEMORY[0x1E69E96A0], v16);

      v15 = v17;
    }
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v13);
  }
}

uint64_t __146__ASAccountAuthenticationModificationExtensionContext_prepareInterfaceToUpgradeCredentialToSignInWithApple_serviceIdentifier_userInfo_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareInterfaceToConvertAccountToSignInWithAppleForServiceIdentifier:*(a1 + 40) existingCredential:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

uint64_t __146__ASAccountAuthenticationModificationExtensionContext_prepareInterfaceToUpgradeCredentialToSignInWithApple_serviceIdentifier_userInfo_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) prepareInterfaceToConvertAccountToSignInWithAppleForServiceIdentifier:*(a1 + 40) existingCredential:*(a1 + 48) userInfo:*(a1 + 56)];
  v2 = *(*(a1 + 64) + 16);

  return v2();
}

- (void)updatePasswordForServiceIdentifier:(id)a3 existingCredential:(id)a4 newPassword:(id)a5 userInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ASAccountAuthenticationModificationExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __130__ASAccountAuthenticationModificationExtensionContext_updatePasswordForServiceIdentifier_existingCredential_newPassword_userInfo___block_invoke;
    block[3] = &unk_1E7AF8590;
    v16 = v14;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)prepareInterfaceToUpdatePasswordForServiceIdentifier:(id)a3 existingCredential:(id)a4 newPassword:(id)a5 userInfo:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(ASAccountAuthenticationModificationExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __159__ASAccountAuthenticationModificationExtensionContext_prepareInterfaceToUpdatePasswordForServiceIdentifier_existingCredential_newPassword_userInfo_completion___block_invoke;
    v18[3] = &unk_1E7AF85B8;
    v19 = v17;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], v18);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v16);
  }
}

uint64_t __159__ASAccountAuthenticationModificationExtensionContext_prepareInterfaceToUpdatePasswordForServiceIdentifier_existingCredential_newPassword_userInfo_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareInterfaceToChangePasswordForServiceIdentifier:*(a1 + 40) existingCredential:*(a1 + 48) newPassword:*(a1 + 56) userInfo:*(a1 + 64)];
  v2 = *(*(a1 + 72) + 16);

  return v2();
}

- (void)cancelRequest
{
  v3 = [(ASAccountAuthenticationModificationExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(ASAccountAuthenticationModificationExtensionContext *)self _auxiliaryConnection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__ASAccountAuthenticationModificationExtensionContext_cancelRequest__block_invoke;
    v15[3] = &unk_1E7AF8540;
    v15[4] = self;
    v5 = [v4 remoteObjectProxyWithErrorHandler:v15];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__ASAccountAuthenticationModificationExtensionContext_cancelRequest__block_invoke_2;
    block[3] = &unk_1E7AF76A8;
    v13 = v3;
    v14 = v5;
    v6 = v5;
    v7 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_initWeak(&location, self);
    v8 = dispatch_time(0, 10000000000);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__ASAccountAuthenticationModificationExtensionContext_cancelRequest__block_invoke_3;
    v9[3] = &unk_1E7AF75E0;
    objc_copyWeak(&v10, &location);
    dispatch_after(v8, v7, v9);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

uint64_t __68__ASAccountAuthenticationModificationExtensionContext_cancelRequest__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancelRequest];
  v2 = *(a1 + 40);

  return [v2 dismissRequestUI];
}

void __68__ASAccountAuthenticationModificationExtensionContext_cancelRequest__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASExtensionErrorDomain" code:1 userInfo:0];
    [v3 cancelRequestWithError:v2];

    WeakRetained = v3;
  }
}

@end