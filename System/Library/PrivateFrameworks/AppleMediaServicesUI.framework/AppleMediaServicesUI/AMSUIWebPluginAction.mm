@interface AMSUIWebPluginAction
- (AMSUIWebPluginAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebPluginAction

- (AMSUIWebPluginAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = AMSUIWebPluginAction;
  v7 = [(AMSUIWebAction *)&v18 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"actionIdentifier"];
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

    v11 = [objectCopy objectForKeyedSubscript:@"bundleIdentifier"];
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

    v14 = [objectCopy objectForKeyedSubscript:@"options"];
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
  runAction = [(AMSUIWebAction *)&v23 runAction];
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
    bundleIdentifier = [(AMSUIWebPluginAction *)self bundleIdentifier];
    actionIdentifier = [(AMSUIWebPluginAction *)self actionIdentifier];
    *buf = 138544130;
    v25 = v6;
    v26 = 2114;
    v27 = v7;
    v28 = 2114;
    v29 = bundleIdentifier;
    v30 = 2114;
    v31 = actionIdentifier;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running plugin action. Bundle identifier: %{public}@, action identifier: %{public}@", buf, 0x2Au);
  }

  actionIdentifier2 = [(AMSUIWebPluginAction *)self actionIdentifier];

  if (actionIdentifier2)
  {
    bundleIdentifier2 = [(AMSUIWebPluginAction *)self bundleIdentifier];

    if (bundleIdentifier2)
    {
      context = [(AMSUIWebAction *)self context];
      pluginLoader = [context pluginLoader];
      bundleIdentifier3 = [(AMSUIWebPluginAction *)self bundleIdentifier];
      v15 = [pluginLoader pluginForBundleIdentifier:bundleIdentifier3];

      if (v15)
      {
        actionIdentifier3 = [(AMSUIWebPluginAction *)self actionIdentifier];
        options = [(AMSUIWebPluginAction *)self options];
        v18 = [v15 runActionWithIdentifier:actionIdentifier3 options:options];
      }

      else
      {
        v20 = MEMORY[0x1E698CAD0];
        actionIdentifier3 = AMSError();
        v18 = [v20 promiseWithError:actionIdentifier3];
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