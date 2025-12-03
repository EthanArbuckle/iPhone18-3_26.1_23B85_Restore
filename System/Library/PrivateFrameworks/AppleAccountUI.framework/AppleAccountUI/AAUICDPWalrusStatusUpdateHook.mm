@interface AAUICDPWalrusStatusUpdateHook
- (AAUICDPWalrusStatusUpdateHook)initWithAppleAccount:(id)account;
- (id)additionalPayloadForAction:(id)action error:(id)error;
- (id)changeControllerForAction:(id)action;
- (void)postCompletionProcessingForAction:(id)action error:(id)error;
@end

@implementation AAUICDPWalrusStatusUpdateHook

- (AAUICDPWalrusStatusUpdateHook)initWithAppleAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AAUICDPWalrusStatusUpdateHook;
  v6 = [(AAUICDPWalrusStatusUpdateHook *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)changeControllerForAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"walrus:enable"])
  {
    v5 = 1;
  }

  else
  {
    if (![actionCopy isEqualToString:@"walrus:disable"])
    {
      v8 = 0;
      goto LABEL_9;
    }

    v5 = 2;
  }

  if (objc_opt_respondsToSelector())
  {
    mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
    v7 = [mEMORY[0x1E698DC80] altDSIDForAccount:self->_account];

    v8 = [MEMORY[0x1E6997870] controllerWithTargetWalrusStatus:v5 altDSID:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E6997870] controllerWithTargetWalrusStatus:v5];
  }

LABEL_9:

  return v8;
}

- (id)additionalPayloadForAction:(id)action error:(id)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v4 = 0;
  }

  else
  {
    if ([action isEqualToString:@"walrus:enable"])
    {
      v11 = @"walrusClientState";
      v12[0] = &unk_1F44C05E8;
      v5 = MEMORY[0x1E695DF20];
      v6 = v12;
      v7 = &v11;
    }

    else
    {
      v9 = @"walrusClientState";
      v10 = &unk_1F44C0600;
      v5 = MEMORY[0x1E695DF20];
      v6 = &v10;
      v7 = &v9;
    }

    v4 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:1];
  }

  return v4;
}

- (void)postCompletionProcessingForAction:(id)action error:(id)error
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = [action isEqualToString:@"walrus:disable"];
  if (!error && v6)
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Dismissing Walrus CFUs", v12, 2u);
    }

    v8 = objc_alloc_init(MEMORY[0x1E698B8C0]);
    account = self->_account;
    v10 = *MEMORY[0x1E698B7A0];
    v13[0] = *MEMORY[0x1E698B7A8];
    v13[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    [v8 dismissFollowUpsForAccount:account identifiers:v11 completion:&__block_literal_global_17];
  }
}

void __73__AAUICDPWalrusStatusUpdateHook_postCompletionProcessingForAction_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __73__AAUICDPWalrusStatusUpdateHook_postCompletionProcessingForAction_error___block_invoke_cold_1(v4, v5);
    }
  }

  if (a2)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __73__AAUICDPWalrusStatusUpdateHook_postCompletionProcessingForAction_error___block_invoke_cold_2(v6);
    }
  }
}

void __73__AAUICDPWalrusStatusUpdateHook_postCompletionProcessingForAction_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Error occurred in dismissing Walrus CFUs: %@", &v2, 0xCu);
}

@end