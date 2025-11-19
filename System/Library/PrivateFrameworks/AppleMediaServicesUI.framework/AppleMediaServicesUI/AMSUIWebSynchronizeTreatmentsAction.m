@interface AMSUIWebSynchronizeTreatmentsAction
- (id)runAction;
@end

@implementation AMSUIWebSynchronizeTreatmentsAction

- (id)runAction
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = AMSUIWebSynchronizeTreatmentsAction;
  v3 = [(AMSUIWebAction *)&v16 runAction];
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Synchronizing treatments", buf, 0x16u);
  }

  v8 = [MEMORY[0x1E698CB68] defaultTreatmentStore];
  v9 = [v8 synchronizeTreatments];
  v10 = [v9 promiseAdapter];
  v11 = [v10 thenWithBlock:&__block_literal_global_34];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__AMSUIWebSynchronizeTreatmentsAction_runAction__block_invoke_2;
  v15[3] = &unk_1E7F24410;
  v15[4] = self;
  [v11 addErrorBlock:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__AMSUIWebSynchronizeTreatmentsAction_runAction__block_invoke_6;
  v14[3] = &unk_1E7F261F0;
  v14[4] = self;
  [v11 addSuccessBlock:v14];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __48__AMSUIWebSynchronizeTreatmentsAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698CAD0];
  v9 = @"success";
  v10[0] = a2;
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v2 promiseWithResult:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void __48__AMSUIWebSynchronizeTreatmentsAction_runAction__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = AMSHashIfNeeded();
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failure (error: %{public}@)", &v11, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __48__AMSUIWebSynchronizeTreatmentsAction_runAction__block_invoke_6(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Success (result: %{public}@)", &v10, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end