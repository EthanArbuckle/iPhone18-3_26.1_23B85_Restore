@interface AAUITheftAndLossCoverageProvider
- (void)createTnLDisclaimerViewControllerWithConfirmActionHandler:(id)a3 cancelActionHandler:(id)a4 completion:(id)a5;
- (void)tnlDisclaimerLabelWithCompletion:(id)a3;
@end

@implementation AAUITheftAndLossCoverageProvider

- (void)createTnLDisclaimerViewControllerWithConfirmActionHandler:(id)a3 cancelActionHandler:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E699C960];
  v9 = a4;
  v10 = a3;
  v11 = [v8 alloc];
  v12 = [v11 initWithUseCase:*MEMORY[0x1E699C958] serialNumber:0];
  v13 = objc_alloc_init(MEMORY[0x1E699C968]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __125__AAUITheftAndLossCoverageProvider_createTnLDisclaimerViewControllerWithConfirmActionHandler_cancelActionHandler_completion___block_invoke;
  v15[3] = &unk_1E820B870;
  v16 = v7;
  v14 = v7;
  [v13 disclaimerViewControllerForContext:v12 confirmActionHandler:v10 cancelActionHandler:v9 completion:v15];
}

void __125__AAUITheftAndLossCoverageProvider_createTnLDisclaimerViewControllerWithConfirmActionHandler_cancelActionHandler_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __125__AAUITheftAndLossCoverageProvider_createTnLDisclaimerViewControllerWithConfirmActionHandler_cancelActionHandler_completion___block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    v8 = _AAUILogSystem();
    v7 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __125__AAUITheftAndLossCoverageProvider_createTnLDisclaimerViewControllerWithConfirmActionHandler_cancelActionHandler_completion___block_invoke_cold_2(v7);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __125__AAUITheftAndLossCoverageProvider_createTnLDisclaimerViewControllerWithConfirmActionHandler_cancelActionHandler_completion___block_invoke_cold_3(v7);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)tnlDisclaimerLabelWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E699C960]);
  v5 = [v4 initWithUseCase:*MEMORY[0x1E699C950] serialNumber:0];
  v6 = objc_alloc_init(MEMORY[0x1E699C968]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__AAUITheftAndLossCoverageProvider_tnlDisclaimerLabelWithCompletion___block_invoke;
  v8[3] = &unk_1E820B898;
  v9 = v3;
  v7 = v3;
  [v6 disclaimerLabelForContext:v5 completion:v8];
}

void __69__AAUITheftAndLossCoverageProvider_tnlDisclaimerLabelWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AAUITheftAndLossErrorDomain" code:-13001 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }
}

void __125__AAUITheftAndLossCoverageProvider_createTnLDisclaimerViewControllerWithConfirmActionHandler_cancelActionHandler_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Failed to get tnl view controller with error: %@", &v2, 0xCu);
}

@end