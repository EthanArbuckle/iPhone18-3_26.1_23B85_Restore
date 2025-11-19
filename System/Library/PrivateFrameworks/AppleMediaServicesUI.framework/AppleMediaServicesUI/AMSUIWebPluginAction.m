@interface AMSUIWebPluginAction
- (AMSUIWebPluginAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebPluginAction

- (AMSUIWebPluginAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = AMSUIWebPluginAction;
  v7 = [(AMSUIWebAction *)&v18 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"actionIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    actionIdentifier = v7->_actionIdentifier;
    v7->_actionIdentifier = v9;

    v11 = [v6 objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v12;

    v14 = [v6 objectForKeyedSubscript:@"options"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    options = v7->_options;
    v7->_options = v15;
  }

  return v7;
}

- (id)runAction
{
  v32 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = AMSUIWebPluginAction;
  v3 = [(AMSUIWebAction *)&v23 runAction];
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
    v8 = [(AMSUIWebPluginAction *)self bundleIdentifier];
    v9 = [(AMSUIWebPluginAction *)self actionIdentifier];
    *buf = 138544130;
    v25 = v6;
    v26 = 2114;
    v27 = v7;
    v28 = 2114;
    v29 = v8;
    v30 = 2114;
    v31 = v9;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running plugin action. Bundle identifier: %{public}@, action identifier: %{public}@", buf, 0x2Au);
  }

  v10 = [(AMSUIWebPluginAction *)self actionIdentifier];

  if (v10)
  {
    v11 = [(AMSUIWebPluginAction *)self bundleIdentifier];

    if (v11)
    {
      v12 = [(AMSUIWebAction *)self context];
      v13 = [v12 pluginLoader];
      v14 = [(AMSUIWebPluginAction *)self bundleIdentifier];
      v15 = [v13 pluginForBundleIdentifier:v14];

      if (v15)
      {
        v16 = [(AMSUIWebPluginAction *)self actionIdentifier];
        v17 = [(AMSUIWebPluginAction *)self options];
        v18 = [v15 runActionWithIdentifier:v16 options:v17];
      }

      else
      {
        v20 = MEMORY[0x1E698CAD0];
        v16 = AMSError();
        v18 = [v20 promiseWithError:v16];
      }

      goto LABEL_14;
    }

    v19 = MEMORY[0x1E698CAD0];
  }

  else
  {
    v19 = MEMORY[0x1E698CAD0];
  }

  v15 = AMSError();
  v18 = [v19 promiseWithError:v15];
LABEL_14:

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

@end