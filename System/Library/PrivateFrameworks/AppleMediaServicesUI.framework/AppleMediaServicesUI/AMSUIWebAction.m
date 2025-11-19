@interface AMSUIWebAction
- (AMSUIWebAction)initWithJSObject:(id)a3 context:(id)a4;
- (NSString)presentingSceneBundleIdentifier;
- (NSString)presentingSceneIdentifier;
- (id)_initWithContext:(id)a3;
- (id)presentingSceneBundleIdentifierPromise;
- (id)presentingSceneIdentifierPromise;
- (id)runAction;
@end

@implementation AMSUIWebAction

- (AMSUIWebAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSUIWebAction *)self _initWithContext:v7];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"actionEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = [[AMSUIWebMetricsEvent alloc] initWithJSObject:v10 context:v7];
      actionEvent = v8->_actionEvent;
      v8->_actionEvent = &v11->super;
    }

    v13 = [v6 objectForKeyedSubscript:@"acceptedResponseVersions"];
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
      objc_storeStrong(&v8->_acceptedResponseVersions, v14);
    }
  }

  return v8;
}

- (id)_initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSUIWebAction;
  v6 = [(AMSUIWebAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (id)runAction
{
  v3 = [(AMSUIWebAction *)self actionEvent];

  if (v3)
  {
    v4 = [(AMSUIWebAction *)self context];
    v5 = [v4 metrics];
    v6 = [(AMSUIWebAction *)self actionEvent];
    [v5 enqueueEvent:v6];
  }

  v7 = MEMORY[0x1E698CAD0];
  v8 = MEMORY[0x1E695E118];

  return [v7 promiseWithResult:v8];
}

- (NSString)presentingSceneBundleIdentifier
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(AMSUIWebAction *)self context];
  v4 = [v3 clientInfo];
  v5 = [v4 bundleIdentifier];

  v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = v10;
    if (v8)
    {
      self = AMSLogKey();
      [v9 stringWithFormat:@"%@: [%@] ", v11, self];
    }

    else
    {
      [v9 stringWithFormat:@"%@: ", v10];
    }
    v12 = ;
    v13 = AMSHashIfNeeded();
    *buf = 138543618;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Using scene bundle identifier: %{public}@", buf, 0x16u);
    if (v8)
    {

      v12 = self;
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)presentingSceneBundleIdentifierPromise
{
  v3 = objc_alloc_init(MEMORY[0x1E698CA58]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__AMSUIWebAction_presentingSceneBundleIdentifierPromise__block_invoke;
  v11[3] = &unk_1E7F243C0;
  v11[4] = self;
  v4 = v3;
  v12 = v4;
  v5 = v11;
  v6 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_5;
  block[3] = &unk_1E7F245E0;
  v14 = v6;
  v15 = v5;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v8 = v12;
  v9 = v4;

  return v4;
}

void __56__AMSUIWebAction_presentingSceneBundleIdentifierPromise__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingSceneBundleIdentifier];
  v3 = *(a1 + 40);
  v5 = v2;
  if (v2)
  {
    [MEMORY[0x1E698CAA0] optionalWithValue:v2];
  }

  else
  {
    [MEMORY[0x1E698CAA0] optionalWithNil];
  }
  v4 = ;
  [v3 finishWithResult:v4];
}

- (NSString)presentingSceneIdentifier
{
  v38 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = [(AMSUIWebAction *)self context];
  v5 = [v4 flowController];
  v6 = [v5 currentContainer];
  v7 = [v6 view];
  v8 = [v7 window];
  v9 = [v8 windowScene];
  v10 = [v9 session];
  v11 = [v10 persistentIdentifier];

  if (v11)
  {
    v12 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v12)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = AMSLogKey();
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_class();
      v31 = a2;
      if (v14)
      {
        v17 = AMSLogKey();
        v30 = NSStringFromSelector(a2);
        [v15 stringWithFormat:@"%@: [%@] %@ ", v16, v17, v30];
      }

      else
      {
        v17 = NSStringFromSelector(a2);
        [v15 stringWithFormat:@"%@: %@ ", v16, v17];
      }
      v18 = ;
      v19 = AMSHashIfNeeded();
      v5 = AMSHashIfNeeded();
      *buf = 138543874;
      v33 = v18;
      v34 = 2114;
      v35 = v19;
      v36 = 2114;
      v37 = v5;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Found scene identifier %{public}@ in %{public}@", buf, 0x20u);
      if (v14)
      {

        v18 = v30;
      }

      a2 = v31;
    }
  }

  v20 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v20)
  {
    v20 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v21 = [v20 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = AMSLogKey();
    v23 = MEMORY[0x1E696AEC0];
    v24 = objc_opt_class();
    if (v22)
    {
      v25 = AMSLogKey();
      v5 = NSStringFromSelector(a2);
      [v23 stringWithFormat:@"%@: [%@] %@ ", v24, v25, v5];
    }

    else
    {
      v25 = NSStringFromSelector(a2);
      [v23 stringWithFormat:@"%@: %@ ", v24, v25];
    }
    v26 = ;
    v27 = AMSHashIfNeeded();
    *buf = 138543618;
    v33 = v26;
    v34 = 2114;
    v35 = v27;
    _os_log_impl(&dword_1BB036000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Using scene identifier: %{public}@", buf, 0x16u);
    if (v22)
    {

      v26 = v5;
    }
  }

  v28 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)presentingSceneIdentifierPromise
{
  v3 = objc_alloc_init(MEMORY[0x1E698CA58]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__AMSUIWebAction_presentingSceneIdentifierPromise__block_invoke;
  v11[3] = &unk_1E7F243C0;
  v11[4] = self;
  v4 = v3;
  v12 = v4;
  v5 = v11;
  v6 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_5;
  block[3] = &unk_1E7F245E0;
  v14 = v6;
  v15 = v5;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v8 = v12;
  v9 = v4;

  return v4;
}

void __50__AMSUIWebAction_presentingSceneIdentifierPromise__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingSceneIdentifier];
  v3 = *(a1 + 40);
  v5 = v2;
  if (v2)
  {
    [MEMORY[0x1E698CAA0] optionalWithValue:v2];
  }

  else
  {
    [MEMORY[0x1E698CAA0] optionalWithNil];
  }
  v4 = ;
  [v3 finishWithResult:v4];
}

@end