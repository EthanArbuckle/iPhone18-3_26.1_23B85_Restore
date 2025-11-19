@interface AMSUIWebDialogAction
- (AMSUIWebDialogAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebDialogAction

- (AMSUIWebDialogAction)initWithJSObject:(id)a3 context:(id)a4
{
  v89 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v80.receiver = self;
  v80.super_class = AMSUIWebDialogAction;
  v69 = a4;
  v64 = [(AMSUIWebAction *)&v80 initWithJSObject:v6 context:?];
  if (v64)
  {
    v7 = [v6 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v6 objectForKeyedSubscript:@"message"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v62 = v6;
    v11 = [v6 objectForKeyedSubscript:@"buttons"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"preferredButtonIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"textFields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = v15;
    }

    else
    {
      v63 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"style"];
    if (objc_opt_respondsToSelector())
    {
      v17 = [v16 integerValue];
    }

    else
    {
      v17 = 1;
    }

    v18 = [v6 objectForKeyedSubscript:@"pauseTimeouts"];
    v57 = v18;
    v58 = v16;
    if (objc_opt_respondsToSelector())
    {
      v19 = [v18 BOOLValue];
    }

    else
    {
      v19 = 1;
    }

    v64->_pauseTimeouts = v19;
    v60 = v10;
    v61 = v8;
    v20 = [objc_alloc(MEMORY[0x1E698C8C0]) initWithTitle:v8 message:v10];
    v59 = v14;
    [(AMSDialogRequest *)v20 setPreferredButtonActionIdentifier:v14];
    v68 = v20;
    [(AMSDialogRequest *)v20 setStyle:v17];
    v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v12;
    v21 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
    v22 = 0x1E695D000uLL;
    if (v21)
    {
      v23 = v21;
      v24 = *v77;
      do
      {
        v25 = 0;
        v70 = v23;
        do
        {
          if (*v77 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v76 + 1) + 8 * v25);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          if (v27)
          {
            v28 = [[AMSUIWebButtonModel alloc] initWithJSObject:v27 context:v69];
            v29 = [(AMSUIWebButtonModel *)v28 createDialogAction];
            [v67 addObject:v29];
          }

          else
          {
            v28 = [MEMORY[0x1E698C968] sharedWebUIConfig];
            if (!v28)
            {
              v28 = [MEMORY[0x1E698C968] sharedConfig];
            }

            v29 = [(AMSUIWebButtonModel *)v28 OSLogObject];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = objc_opt_class();
              v31 = [(AMSUIWebAction *)v64 context];
              [v31 logKey];
              v33 = v32 = v24;
              *buf = 138543874;
              v83 = v30;
              v84 = 2114;
              v85 = v33;
              v86 = 2114;
              v87 = v26;
              _os_log_impl(&dword_1BB036000, v29, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid button object: %{public}@", buf, 0x20u);

              v24 = v32;
              v23 = v70;

              v22 = 0x1E695D000uLL;
            }
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
      }

      while (v23);
    }

    [(AMSDialogRequest *)v68 setButtonActions:v67];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v65 = v63;
    v34 = [v65 countByEnumeratingWithState:&v72 objects:v81 count:16];
    v6 = v62;
    if (v34)
    {
      v35 = v34;
      v71 = *v73;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v73 != v71)
          {
            objc_enumerationMutation(v65);
          }

          v37 = *(*(&v72 + 1) + 8 * i);
          v38 = *(v22 + 3872);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = v37;
          }

          else
          {
            v39 = 0;
          }

          if (v39)
          {
            v40 = [v62 objectForKeyedSubscript:@"placeholder"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }

            v46 = [v62 objectForKeyedSubscript:@"initialText"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v42 = v46;
            }

            else
            {
              v42 = 0;
            }

            v47 = [v62 objectForKeyedSubscript:@"keyboardType"];
            if (objc_opt_respondsToSelector())
            {
              v48 = [v62 objectForKeyedSubscript:@"keyboardType"];
              v49 = [v48 integerValue];
            }

            else
            {
              v49 = 0;
            }

            v50 = [v62 objectForKeyedSubscript:@"tag"];
            if (objc_opt_respondsToSelector())
            {
              v51 = [v62 objectForKeyedSubscript:@"tag"];
              v52 = [v51 integerValue];

              v22 = 0x1E695D000;
            }

            else
            {
              v52 = 0;
            }

            v53 = objc_alloc_init(MEMORY[0x1E698C8D0]);
            [v53 setPlaceholder:v41];
            [v53 setText:v42];
            [v53 setKeyboardType:v49];
            [v53 setTag:v52];
            [(AMSDialogRequest *)v68 addTextField:v53];
          }

          else
          {
            v41 = [MEMORY[0x1E698C968] sharedWebUIConfig];
            if (!v41)
            {
              v41 = [MEMORY[0x1E698C968] sharedConfig];
            }

            v42 = [v41 OSLogObject];
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v43 = objc_opt_class();
              v44 = [(AMSUIWebAction *)v64 context];
              v45 = [v44 logKey];
              *buf = 138543874;
              v83 = v43;
              v84 = 2114;
              v85 = v45;
              v86 = 2114;
              v87 = v37;
              _os_log_impl(&dword_1BB036000, v42, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid text field object: %{public}@", buf, 0x20u);

              v22 = 0x1E695D000;
            }
          }
        }

        v35 = [v65 countByEnumeratingWithState:&v72 objects:v81 count:16];
      }

      while (v35);
    }

    request = v64->_request;
    v64->_request = v68;
  }

  v55 = *MEMORY[0x1E69E9840];
  return v64;
}

- (id)runAction
{
  v25 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AMSUIWebDialogAction;
  v3 = [(AMSUIWebAction *)&v18 runAction];
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
    v8 = [(AMSUIWebDialogAction *)self request];
    *buf = 138543874;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running dialog: %{public}@", buf, 0x20u);
  }

  v9 = [(AMSUIWebAction *)self context];
  v10 = [v9 actionDelegate];
  v11 = [(AMSUIWebDialogAction *)self pauseTimeouts];
  v12 = [(AMSUIWebDialogAction *)self request];
  v13 = [v10 action:self pauseTimeouts:v11 handleDialogRequest:v12];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __33__AMSUIWebDialogAction_runAction__block_invoke;
  v17[3] = &unk_1E7F26000;
  v17[4] = self;
  v14 = [v13 thenWithBlock:v17];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

id __33__AMSUIWebDialogAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) request];
  v5 = [v3 selectedActionIdentifier];
  v6 = [v4 locateActionWithIdentifier:v5];

  v7 = [v6 userInfo];

  if (v7)
  {
    v8 = [v6 userInfo];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  v9 = [AMSUIWebButtonModel alloc];
  v10 = [*(a1 + 32) context];
  v11 = [(AMSUIWebButtonModel *)v9 initWithJSObject:v8 context:v10];

  v12 = [(AMSUIWebButtonModel *)v11 action];

  if (v12)
  {
    v13 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v13)
    {
      v13 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = [(AMSUIWebButtonModel *)v11 action];
      *buf = 138543874;
      v30 = v16;
      v31 = 2114;
      v32 = v17;
      v33 = 2114;
      v34 = v18;
      _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running dialog action: %{public}@", buf, 0x20u);
    }

    v19 = [(AMSUIWebButtonModel *)v11 action];
    v20 = [v19 runAction];
  }

  else
  {
    v20 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __33__AMSUIWebDialogAction_runAction__block_invoke_51;
  v26[3] = &unk_1E7F25FD8;
  v26[4] = *(a1 + 32);
  v27 = v8;
  v28 = v3;
  v21 = v3;
  v22 = v8;
  v23 = [v20 continueWithBlock:v26];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

id __33__AMSUIWebDialogAction_runAction__block_invoke_51(uint64_t a1)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) acceptedResponseVersions];
  v3 = [v2 containsObject:&unk_1F394A690];

  v4 = MEMORY[0x1E698CAD0];
  if (v3)
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v12[0] = @"selectedButton";
    v12[1] = @"textFieldValues";
    v13[0] = v6;
    v7 = [v5 textfieldValues];
    v13[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v9 = [v4 promiseWithResult:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E698CAD0] promiseWithResult:*(a1 + 40)];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end