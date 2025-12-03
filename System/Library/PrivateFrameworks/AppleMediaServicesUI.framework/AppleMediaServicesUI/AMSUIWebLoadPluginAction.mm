@interface AMSUIWebLoadPluginAction
- (AMSUIWebLoadPluginAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebLoadPluginAction

- (AMSUIWebLoadPluginAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = AMSUIWebLoadPluginAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"bundleIdentifier"];
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
  runAction = [(AMSUIWebAction *)&v22 runAction];
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
    bundleIdentifier = [(AMSUIWebLoadPluginAction *)self bundleIdentifier];
    *buf = 138543874;
    v24 = v6;
    v25 = 2114;
    v26 = v7;
    v27 = 2114;
    v28 = bundleIdentifier;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running plugin action. Bundle identifier: %{public}@", buf, 0x20u);
  }

  bundleIdentifier2 = [(AMSUIWebLoadPluginAction *)self bundleIdentifier];

  if (bundleIdentifier2)
  {
    context = [(AMSUIWebAction *)self context];
    pluginLoader = [context pluginLoader];
    bundleIdentifier3 = [(AMSUIWebLoadPluginAction *)self bundleIdentifier];
    v13 = [pluginLoader pluginForBundleIdentifier:bundleIdentifier3];

    if (v13)
    {
      context2 = [(AMSUIWebAction *)self context];
      dataProvider = [context2 dataProvider];
      syncProperties = [dataProvider syncProperties];
      promiseAdapter = [syncProperties promiseAdapter];
    }

    else
    {
      v19 = MEMORY[0x1E698CAD0];
      context2 = AMSError();
      promiseAdapter = [v19 promiseWithError:context2];
    }
  }

  else
  {
    v18 = MEMORY[0x1E698CAD0];
    v13 = AMSError();
    promiseAdapter = [v18 promiseWithError:v13];
  }

  v20 = *MEMORY[0x1E69E9840];

  return promiseAdapter;
}

@end