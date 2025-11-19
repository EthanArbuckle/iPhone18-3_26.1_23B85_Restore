@interface AMSUIWebDelegateAction
- (AMSUIWebDelegateAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)_didResolveWithResult:(id)a3 error:(id)a4;
- (id)_handleActionObject:(id)a3;
- (id)_handleResolveActionWithData:(id)a3;
- (id)_infoWithBuyParams:(id)a3 additionalInfo:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebDelegateAction

- (AMSUIWebDelegateAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = AMSUIWebDelegateAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    delegateData = v7->_delegateData;
    v7->_delegateData = v9;
  }

  return v7;
}

- (id)runAction
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = AMSUIWebDelegateAction;
  v3 = [(AMSUIWebAction *)&v17 runAction];
  v4 = [(AMSUIWebDelegateAction *)self delegateData];
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
    *buf = 138543618;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running delegate action", buf, 0x16u);
  }

  v9 = [(AMSUIWebDelegateAction *)self _handleResolveActionWithData:v4];
  if (v9 || ([(AMSUIWebDelegateAction *)self _handleActionObject:v4], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
  }

  else
  {
    v13 = MEMORY[0x1E698CAD0];
    v14 = AMSError();
    v10 = [v13 promiseWithError:v14];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __35__AMSUIWebDelegateAction_runAction__block_invoke;
  v16[3] = &unk_1E7F24410;
  v16[4] = self;
  [v10 addErrorBlock:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35__AMSUIWebDelegateAction_runAction__block_invoke_51;
  v15[3] = &unk_1E7F25F98;
  v15[4] = self;
  [v10 addSuccessBlock:v15];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __35__AMSUIWebDelegateAction_runAction__block_invoke(uint64_t a1, void *a2)
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
    v8 = [*(a1 + 32) context];
    v9 = [v8 logKey];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Delegate action failed. %{public}@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __35__AMSUIWebDelegateAction_runAction__block_invoke_51(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
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
    v8 = [*(a1 + 32) context];
    v9 = [v8 logKey];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Delegate action succeeded. %{public}@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_handleResolveActionWithData:(id)a3
{
  v58[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"action"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if ([v6 isEqualToString:@"resolve"])
  {
    v7 = [v4 objectForKeyedSubscript:@"state"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if ([v8 isEqualToString:@"success"])
    {
      v11 = [v4 objectForKeyedSubscript:@"buyParams"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v15 = MEMORY[0x1E695DFD8];
      v58[0] = @"buyParams";
      v58[1] = @"action";
      v58[2] = @"state";
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:3];
      v17 = [v15 setWithArray:v16];

      v49 = MEMORY[0x1E69E9820];
      v50 = 3221225472;
      v51 = __55__AMSUIWebDelegateAction__handleResolveActionWithData___block_invoke;
      v52 = &unk_1E7F25528;
      v53 = v17;
      v18 = v17;
      v19 = [v4 ams_filterUsingTest:&v49];
      v10 = [(AMSUIWebDelegateAction *)self _infoWithBuyParams:v12 additionalInfo:v19];

      v9 = 0;
    }

    else
    {
      if ([v8 isEqualToString:@"failed"])
      {
        v13 = [v4 objectForKeyedSubscript:@"error"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          v20 = [v14 objectForKeyedSubscript:@"code"];
          if (objc_opt_respondsToSelector())
          {
            v21 = [v14 objectForKeyedSubscript:@"code"];
            [v21 longLongValue];
          }

          v22 = [v14 objectForKeyedSubscript:@"message"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          v24 = @"Unknown Error";
          if (v23)
          {
            v24 = v23;
          }

          v25 = v24;

          v26 = [v14 objectForKeyedSubscript:@"userInfo"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v9 = AMSCustomError();
        }

        else
        {
          v9 = AMSError();
        }
      }

      else
      {
        v9 = 0;
      }

      v10 = 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v28 = [v4 objectForKeyedSubscript:@"actionName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (!(v10 | v9))
  {
    if (![v29 isEqualToString:@"interruptionResolved"])
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_53;
    }

    v30 = [v4 objectForKeyedSubscript:@"options"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = [v31 objectForKeyedSubscript:@"status"];
    if (objc_opt_respondsToSelector())
    {
      v33 = [v31 objectForKeyedSubscript:@"status"];
      v34 = [v33 longLongValue];

      if (v34)
      {
        v35 = [MEMORY[0x1E696AD98] numberWithLong:v34];
        v48 = v35;
        v9 = AMSErrorWithFormat();
        v10 = 0;
LABEL_52:

        goto LABEL_53;
      }
    }

    else
    {
    }

    v36 = [v31 objectForKeyedSubscript:@"buyParams"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v36;
    }

    else
    {
      v35 = 0;
    }

    v10 = [(AMSUIWebDelegateAction *)self _infoWithBuyParams:v35 additionalInfo:v31];
    v9 = 0;
    goto LABEL_52;
  }

LABEL_53:
  v37 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v38 = v37;
  if (v10 | v9)
  {
    if (!v37)
    {
      v38 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v43 = [v38 OSLogObject];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = objc_opt_class();
      v45 = AMSLogKey();
      *buf = 138543618;
      v55 = v44;
      v56 = 2114;
      v57 = v45;
      _os_log_impl(&dword_1BB036000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Action is a resolve action", buf, 0x16u);
    }

    v42 = [(AMSUIWebDelegateAction *)self _didResolveWithResult:v10 error:v9];
  }

  else
  {
    if (!v37)
    {
      v38 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v39 = [v38 OSLogObject];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_opt_class();
      v41 = AMSLogKey();
      *buf = 138543618;
      v55 = v40;
      v56 = 2114;
      v57 = v41;
      _os_log_impl(&dword_1BB036000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Action is not a resolve action", buf, 0x16u);
    }

    v42 = 0;
  }

  v46 = *MEMORY[0x1E69E9840];

  return v42;
}

- (id)_infoWithBuyParams:(id)a3 additionalInfo:(id)a4
{
  v5 = a3;
  v6 = [a4 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v9 = v8;

  [v9 setObject:v5 forKeyedSubscript:*MEMORY[0x1E698C540]];

  return v9;
}

- (id)_handleActionObject:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIWebAction *)self context];
  v6 = [v5 actionDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(AMSUIWebAction *)self context];
    v9 = [v8 actionDelegate];
    v10 = [v9 action:self handleActionObject:v4];
  }

  else
  {
    v11 = MEMORY[0x1E698CAD0];
    v8 = [(AMSUIWebAction *)self context];
    v9 = [v8 actionDelegate];
    v12 = AMSErrorWithFormat();
    v10 = [v11 promiseWithError:{v12, v9}];
  }

  return v10;
}

- (id)_didResolveWithResult:(id)a3 error:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [MEMORY[0x1E698CAA8] sendCUICallbackEventWithResolveData:v6];
  v8 = [(AMSUIWebAction *)self context];
  v9 = [v8 actionDelegate];
  v10 = objc_opt_respondsToSelector();

  v11 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v12 = v11;
  if (v10)
  {
    if (!v11)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      *buf = 138544130;
      v27 = v14;
      v28 = 2114;
      v29 = v15;
      v30 = 2114;
      v31 = v6;
      v32 = 2114;
      v33 = v7;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Forwarding resolve payload to delegate: Result=%{public}@ Error=%{public}@", buf, 0x2Au);
    }

    v16 = [(AMSUIWebAction *)self context];
    v17 = [v16 actionDelegate];
    v18 = [v17 action:self didResolveWithResult:v6 error:v7];
  }

  else
  {
    if (!v11)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v19 = [v12 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138543618;
      v27 = v20;
      v28 = 2114;
      v29 = v21;
      _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Delegate does not handle resolve action.", buf, 0x16u);
    }

    v22 = MEMORY[0x1E698CAD0];
    v16 = [(AMSUIWebAction *)self context];
    v17 = [v16 actionDelegate];
    v23 = AMSErrorWithFormat();
    v18 = [v22 promiseWithError:{v23, v17}];
  }

  v24 = *MEMORY[0x1E69E9840];

  return v18;
}

@end