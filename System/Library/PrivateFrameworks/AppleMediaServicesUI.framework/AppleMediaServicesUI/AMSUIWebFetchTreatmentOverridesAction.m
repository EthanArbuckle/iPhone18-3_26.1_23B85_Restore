@interface AMSUIWebFetchTreatmentOverridesAction
- (id)runAction;
@end

@implementation AMSUIWebFetchTreatmentOverridesAction

- (id)runAction
{
  v22 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = AMSUIWebFetchTreatmentOverridesAction;
  v2 = [(AMSUIWebAction *)&v13 runAction];
  v3 = [MEMORY[0x1E698C890] treatmentOverrides];
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
    *buf = 138543874;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching treatment overrides (value: %{public}@)", buf, 0x20u);
  }

  v8 = MEMORY[0x1E698CAD0];
  v14 = @"treatmentOverrides";
  v15 = v3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v10 = [v8 promiseWithResult:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end