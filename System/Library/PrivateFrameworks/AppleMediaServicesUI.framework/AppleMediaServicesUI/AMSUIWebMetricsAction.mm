@interface AMSUIWebMetricsAction
- (AMSUIWebMetricsAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebMetricsAction

- (AMSUIWebMetricsAction)initWithJSObject:(id)a3 context:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v46.receiver = self;
  v46.super_class = AMSUIWebMetricsAction;
  v41 = a4;
  v38 = [(AMSUIWebAction *)&v46 initWithJSObject:v6 context:?];
  if (v38)
  {
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = [v6 objectForKeyedSubscript:@"events"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 countByEnumeratingWithState:&v42 objects:v53 count:16];
    v37 = v6;
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      v40 = v8;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
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
            v15 = [[AMSUIWebMetricsEvent alloc] initWithJSObject:v14 context:v41];
            v16 = v15;
            if (v15)
            {
              v17 = [(AMSUIWebMetricsEvent *)v15 account];

              if (!v17)
              {
                v18 = [v6 objectForKeyedSubscript:@"account"];
                v19 = [v41 iTunesAccountFromJSAccount:v18];
                [v16 setAccount:v19];

                v20 = [v16 account];

                if (!v20)
                {
                  v21 = [v6 objectForKeyedSubscript:@"dsid"];
                  v22 = [v41 iTunesAccountFromJSDSID:v21];
                  [v16 setAccount:v22];
                }
              }

              [(NSArray *)v39 addObject:v16];
            }

            else
            {
              v26 = [MEMORY[0x1E698C968] sharedWebUIConfig];
              if (!v26)
              {
                v26 = [MEMORY[0x1E698C968] sharedConfig];
              }

              v27 = [v26 OSLogObject];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v28 = objc_opt_class();
                v29 = AMSLogKey();
                *buf = 138543874;
                v48 = v28;
                v49 = 2114;
                v50 = v29;
                v51 = 2112;
                v52 = v13;
                _os_log_impl(&dword_1BB036000, v27, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create metrics event from definition: %@", buf, 0x20u);

                v6 = v37;
              }

              v8 = v40;
            }
          }

          else
          {
            v16 = [MEMORY[0x1E698C968] sharedWebUIConfig];
            if (!v16)
            {
              v16 = [MEMORY[0x1E698C968] sharedConfig];
            }

            v23 = [v16 OSLogObject];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = objc_opt_class();
              v25 = AMSLogKey();
              *buf = 138543874;
              v48 = v24;
              v8 = v40;
              v49 = 2114;
              v50 = v25;
              v51 = 2112;
              v52 = v13;
              _os_log_impl(&dword_1BB036000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid metrics event: %@", buf, 0x20u);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v10);
    }

    events = v38->_events;
    v38->_events = v39;
    v31 = v39;

    v32 = [v6 objectForKeyedSubscript:@"flush"];
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      v34 = [v32 BOOLValue];
    }

    else
    {
      v34 = 0;
    }

    v38->_shouldFlush = v34;

    v6 = v37;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v38;
}

- (id)runAction
{
  v24 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = AMSUIWebMetricsAction;
  v3 = [(AMSUIWebAction *)&v22 runAction];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(AMSUIWebMetricsAction *)self events];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = [(AMSUIWebAction *)self context];
        v11 = [v10 metrics];
        [v11 enqueueEvent:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  if ([(AMSUIWebMetricsAction *)self shouldFlush])
  {
    v12 = [(AMSUIWebAction *)self context];
    v13 = [v12 metrics];
    v14 = [v13 flush];
  }

  v15 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end