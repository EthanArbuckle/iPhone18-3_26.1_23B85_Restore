@interface AMSUIWebLoadPluginAction
- (AMSUIWebLoadPluginAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebLoadPluginAction

- (AMSUIWebLoadPluginAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = AMSUIWebLoadPluginAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v9;
  }

  return v7;
}

- (id)runAction
{
  v29 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = AMSUIWebLoadPluginAction;
  v3 = [(AMSUIWebAction *)&v22 runAction];
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
    v8 = [(AMSUIWebLoadPluginAction *)self bundleIdentifier];
    *buf = 138543874;
    v24 = v6;
    v25 = 2114;
    v26 = v7;
    v27 = 2114;
    v28 = v8;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running plugin action. Bundle identifier: %{public}@", buf, 0x20u);
  }

  v9 = [(AMSUIWebLoadPluginAction *)self bundleIdentifier];

  if (v9)
  {
    v10 = [(AMSUIWebAction *)self context];
    v11 = [v10 pluginLoader];
    v12 = [(AMSUIWebLoadPluginAction *)self bundleIdentifier];
    v13 = [v11 pluginForBundleIdentifier:v12];

    if (v13)
    {
      v14 = [(AMSUIWebAction *)self context];
      v15 = [v14 dataProvider];
      v16 = [v15 syncProperties];
      v17 = [v16 promiseAdapter];
    }

    else
    {
      v19 = MEMORY[0x1E698CAD0];
      v14 = AMSError();
      v17 = [v19 promiseWithError:v14];
    }
  }

  else
  {
    v18 = MEMORY[0x1E698CAD0];
    v13 = AMSError();
    v17 = [v18 promiseWithError:v13];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

@end