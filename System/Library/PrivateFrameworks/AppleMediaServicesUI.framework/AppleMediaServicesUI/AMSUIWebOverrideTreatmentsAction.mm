@interface AMSUIWebOverrideTreatmentsAction
- (AMSUIWebOverrideTreatmentsAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebOverrideTreatmentsAction

- (AMSUIWebOverrideTreatmentsAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = AMSUIWebOverrideTreatmentsAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"treatmentOverrides"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    treatmentOverrides = v7->_treatmentOverrides;
    v7->_treatmentOverrides = v9;
  }

  return v7;
}

- (id)runAction
{
  v23 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = AMSUIWebOverrideTreatmentsAction;
  v3 = [(AMSUIWebAction *)&v14 runAction];
  v4 = [(AMSUIWebOverrideTreatmentsAction *)self treatmentOverrides];
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543874;
    v18 = v7;
    v19 = 2114;
    v20 = v8;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Overriding treatments (value: %{public}@)", buf, 0x20u);
  }

  [MEMORY[0x1E698C890] setTreatmentOverrides:v4];
  v9 = MEMORY[0x1E698CAD0];
  v15 = @"success";
  v16 = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v11 = [v9 promiseWithResult:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end