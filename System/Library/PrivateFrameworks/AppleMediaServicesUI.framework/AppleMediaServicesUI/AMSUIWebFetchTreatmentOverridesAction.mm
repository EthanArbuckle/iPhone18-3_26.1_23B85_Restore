@interface AMSUIWebFetchTreatmentOverridesAction
- (id)runAction;
@end

@implementation AMSUIWebFetchTreatmentOverridesAction

- (id)runAction
{
  v22 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = AMSUIWebFetchTreatmentOverridesAction;
  runAction = [(AMSUIWebAction *)&v13 runAction];
  treatmentOverrides = [MEMORY[0x1E698C890] treatmentOverrides];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543874;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = treatmentOverrides;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching treatment overrides (value: %{public}@)", buf, 0x20u);
  }

  v8 = MEMORY[0x1E698CAD0];
  v14 = @"treatmentOverrides";
  v15 = treatmentOverrides;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v10 = [v8 promiseWithResult:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end