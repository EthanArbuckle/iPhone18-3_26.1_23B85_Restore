@interface AMSUIEngagementTask
- (AMSUIEngagementTask)initWithRequest:(id)request bag:(id)bag presentingViewController:(id)controller;
- (AMSUIEngagementTaskDelegate)delegate;
- (AMSUIEngagementViewController)taskController;
- (BOOL)_isInitialEngagementViewController;
- (BOOL)_isRemotePresentationEnabled;
- (BOOL)_isRemoteViewService;
- (BOOL)_isWindowPresentation;
- (BOOL)engagementViewController:(id)controller handleDynamicDelegateAction:(id)action completionHandler:(id)handler;
- (CGSize)preferredContentSize;
- (id)_infoWithBuyParams:(id)params additionalInfo:(id)info;
- (id)_presentEngagementLocally;
- (id)_presentEngagementRemotely;
- (id)_presentTaskController;
- (id)_presentViewController:(id)controller dismissBlock:(id)block;
- (id)engagementViewController:(id)controller contentViewWithDictionary:(id)dictionary frame:(CGRect)frame;
- (id)presentEngagement;
- (int64_t)_modalPresentationStyle;
- (int64_t)_userInterfaceStyle;
- (void)engagementViewController:(id)controller contentViewControllerWithDictionary:(id)dictionary completionHandler:(id)handler;
- (void)engagementViewController:(id)controller didFinishWithResult:(id)result error:(id)error;
- (void)engagementViewControllerShouldDismiss:(id)dismiss;
@end

@implementation AMSUIEngagementTask

- (AMSUIEngagementTask)initWithRequest:(id)request bag:(id)bag presentingViewController:(id)controller
{
  requestCopy = request;
  bagCopy = bag;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = AMSUIEngagementTask;
  v12 = [(AMSTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bag, bag);
    objc_storeStrong(&v13->_request, request);
    objc_storeStrong(&v13->_presentingViewController, controller);
  }

  return v13;
}

- (id)presentEngagement
{
  presentingViewController = [(AMSUIEngagementTask *)self presentingViewController];

  if (presentingViewController)
  {
    if ([(AMSUIEngagementTask *)self _isRemotePresentationEnabled])
    {
      [(AMSUIEngagementTask *)self _presentEngagementRemotely];
    }

    else
    {
      [(AMSUIEngagementTask *)self _presentEngagementLocally];
    }
    v6 = ;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__AMSUIEngagementTask_presentEngagement__block_invoke;
    v8[3] = &unk_1E7F24650;
    v8[4] = self;
    [v6 addFinishBlock:v8];
  }

  else
  {
    v4 = MEMORY[0x1E698CAD0];
    v5 = AMSError();
    v6 = [v4 promiseWithError:v5];
  }

  return v6;
}

void __40__AMSUIEngagementTask_presentEngagement__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AMSUIEngagementTask_presentEngagement__block_invoke_2;
  block[3] = &unk_1E7F242D0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __40__AMSUIEngagementTask_presentEngagement__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) taskController];
  [v1 enqueueDismissedEvent];
}

- (AMSUIEngagementViewController)taskController
{
  taskController = self->_taskController;
  if (!taskController)
  {
    v4 = [AMSUIEngagementViewController alloc];
    request = [(AMSUIEngagementTask *)self request];
    v6 = [(AMSUIEngagementTask *)self bag];
    v7 = [(AMSUIEngagementViewController *)v4 initWithRequest:request bag:v6 delegate:self];
    v8 = self->_taskController;
    self->_taskController = v7;

    clientInfo = [(AMSUIEngagementTask *)self clientInfo];
    [(AMSUIEngagementViewController *)self->_taskController setClientInfo:clientInfo];

    [(AMSUIEngagementViewController *)self->_taskController setShouldSuppressDismissedEventOnDealloc:1];
    taskController = self->_taskController;
  }

  return taskController;
}

- (void)engagementViewController:(id)controller contentViewControllerWithDictionary:(id)dictionary completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  delegate = [(AMSUIEngagementTask *)self delegate];
  v12 = objc_opt_respondsToSelector();

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (v12)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543362;
      v22 = objc_opt_class();
      v16 = v22;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to request content view controller", &v21, 0xCu);
    }

    delegate2 = [(AMSUIEngagementTask *)self delegate];
    [delegate2 engagementViewController:controllerCopy contentViewControllerWithDictionary:dictionaryCopy completionHandler:handlerCopy];
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543362;
      v22 = objc_opt_class();
      v19 = v22;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Delegate does not implement contentViewControllerWithDictionary", &v21, 0xCu);
    }

    delegate2 = AMSError();
    handlerCopy[2](handlerCopy, 0, delegate2);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)engagementViewController:(id)controller contentViewWithDictionary:(id)dictionary frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  delegate = [(AMSUIEngagementTask *)self delegate];
  v12 = objc_opt_respondsToSelector();

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (v12)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543362;
      v25 = objc_opt_class();
      v16 = v25;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to request content view", &v24, 0xCu);
    }

    delegate2 = [(AMSUIEngagementTask *)self delegate];
    taskController = [(AMSUIEngagementTask *)self taskController];
    v19 = [delegate2 engagementTaskViewController:taskController contentViewWithDictionary:dictionaryCopy frame:{x, y, width, height}];
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v24 = 138543362;
      v25 = objc_opt_class();
      v21 = v25;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Delegate does not implement contentViewWithDictionary", &v24, 0xCu);
    }

    delegate2 = AMSError();
    v19 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)engagementViewController:(id)controller didFinishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  [(AMSUIEngagementTask *)self setError:error];
  v7 = resultCopy;
  if (resultCopy)
  {
    result = [(AMSUIEngagementTask *)self result];

    if (result)
    {
      carrierLinkResult = [resultCopy carrierLinkResult];
      result2 = [(AMSUIEngagementTask *)self result];
      [result2 setCarrierLinkResult:carrierLinkResult];

      purchaseResult = [resultCopy purchaseResult];
      result3 = [(AMSUIEngagementTask *)self result];
      [result3 setPurchaseResult:purchaseResult];

      result4 = [(AMSUIEngagementTask *)self result];
      userInfo = [result4 userInfo];
      v15 = userInfo;
      v16 = MEMORY[0x1E695E0F8];
      if (userInfo)
      {
        v17 = userInfo;
      }

      else
      {
        v17 = MEMORY[0x1E695E0F8];
      }

      userInfo2 = [resultCopy userInfo];
      v19 = userInfo2;
      if (userInfo2)
      {
        v20 = userInfo2;
      }

      else
      {
        v20 = v16;
      }

      v21 = [v17 ams_dictionaryByAddingEntriesFromDictionary:v20];
      result5 = [(AMSUIEngagementTask *)self result];
      [result5 setUserInfo:v21];
    }

    else
    {
      [(AMSUIEngagementTask *)self setResult:resultCopy];
    }

    v7 = resultCopy;
  }
}

- (void)engagementViewControllerShouldDismiss:(id)dismiss
{
  taskController = [(AMSUIEngagementTask *)self taskController];
  [taskController ams_dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)engagementViewController:(id)controller handleDynamicDelegateAction:(id)action completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  delegate = [(AMSUIEngagementTask *)self delegate];
  v10 = objc_opt_respondsToSelector();

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (v10)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = v14;
      identifier = [actionCopy identifier];
      *buf = 138543618;
      v37 = v14;
      v38 = 2114;
      v39 = identifier;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to handle delegate action (identifier: %{public}@)", buf, 0x16u);
    }

    delegate2 = [(AMSUIEngagementTask *)self delegate];
    taskController = [(AMSUIEngagementTask *)self taskController];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __94__AMSUIEngagementTask_engagementViewController_handleDynamicDelegateAction_completionHandler___block_invoke;
    v33[3] = &unk_1E7F246B8;
    v33[4] = self;
    v34 = actionCopy;
    v35 = handlerCopy;
    v19 = [delegate2 engagementTaskViewController:taskController handleDynamicDelegateAction:v34 completionHandler:v33];

    if (v19)
    {
      v20 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v22 = objc_opt_class();
      v23 = v22;
      identifier2 = [actionCopy identifier];
      *buf = 138543618;
      v37 = v22;
      v38 = 2114;
      v39 = identifier2;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@: Delegate does not implement handleDynamicDelegateAction (identifier: %{public}@)", buf, 0x16u);
    }

    v25 = AMSError();
    (*(handlerCopy + 2))(handlerCopy, 0, v25);
  }

  mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968]3)
  {
    mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_opt_class();
    v29 = v28;
    identifier3 = [actionCopy identifier];
    *buf = 138543618;
    v37 = v28;
    v38 = 2114;
    v39 = identifier3;
    _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: Delegate action not handled (identifier: %{public}@)", buf, 0x16u);
  }

  (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E110], 0);
  v20 = 0;
LABEL_18:

  v31 = *MEMORY[0x1E69E9840];
  return v20;
}

void __94__AMSUIEngagementTask_engagementViewController_handleDynamicDelegateAction_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (!v5)
    {
      v14 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v14)
      {
        v14 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v26 = a1[4];
      v27 = objc_opt_class();
      v28 = a1[5];
      v19 = v27;
      v20 = [v28 identifier];
      v29 = 138543618;
      v30 = v27;
      v31 = 2114;
      v32 = v20;
      v21 = "%{public}@: Delegate responded with neither an error or response (identifier: %{public}@)";
      v22 = v15;
      v23 = OS_LOG_TYPE_ERROR;
      v24 = 22;
      goto LABEL_13;
    }

LABEL_9:
    v14 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v14)
    {
      v14 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v16 = a1[4];
    v17 = objc_opt_class();
    v18 = a1[5];
    v19 = v17;
    v20 = [v18 identifier];
    v29 = 138543874;
    v30 = v17;
    v31 = 2114;
    v32 = v20;
    v33 = 2114;
    v34 = v5;
    v21 = "%{public}@: Delegate responded with a response (identifier: %{public}@, response: %{public}@)";
    v22 = v15;
    v23 = OS_LOG_TYPE_DEFAULT;
    v24 = 32;
LABEL_13:
    _os_log_impl(&dword_1BB036000, v22, v23, v21, &v29, v24);

LABEL_14:
    goto LABEL_15;
  }

  v7 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = a1[4];
    v10 = objc_opt_class();
    v11 = a1[5];
    v12 = v10;
    v13 = [v11 identifier];
    v29 = 138543874;
    v30 = v10;
    v31 = 2114;
    v32 = v6;
    v33 = 2114;
    v34 = v13;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Delegate responded with error (identifier: %{public}@, error: %{public}@)", &v29, 0x20u);
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_15:
  (*(a1[6] + 16))();

  v25 = *MEMORY[0x1E69E9840];
}

- (id)_infoWithBuyParams:(id)params additionalInfo:(id)info
{
  paramsCopy = params;
  v6 = [info mutableCopy];
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

  [v9 setObject:paramsCopy forKeyedSubscript:*MEMORY[0x1E698C540]];

  return v9;
}

- (BOOL)_isInitialEngagementViewController
{
  clientInfo = [(AMSUIEngagementTask *)self clientInfo];
  bundleIdentifier = [clientInfo bundleIdentifier];
  v5 = [bundleIdentifier containsString:@"iCloudQuota"];

  if (v5)
  {
    presentingViewController = [(AMSUIEngagementTask *)self presentingViewController];
    if (presentingViewController)
    {
      v7 = presentingViewController;
      do
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          break;
        }

        parentViewController = [v7 parentViewController];

        v7 = parentViewController;
      }

      while (parentViewController);
      v10 = isKindOfClass ^ 1;
    }

    else
    {
      v10 = 1;
    }

    return v10 & 1;
  }

  else
  {

    return [(AMSUIEngagementTask *)self isRootRemotePresentation];
  }
}

- (BOOL)_isRemotePresentationEnabled
{
  remotePresentation = [(AMSUIEngagementTask *)self remotePresentation];
  if (remotePresentation)
  {
    LOBYTE(remotePresentation) = ![(AMSUIEngagementTask *)self _isRemoteViewService];
  }

  return remotePresentation;
}

- (BOOL)_isRemoteViewService
{
  currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
  bundleIdentifier = [currentProcess bundleIdentifier];
  v4 = [&unk_1F394AB60 containsObject:bundleIdentifier];

  return v4;
}

- (BOOL)_isWindowPresentation
{
  currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
  bundleIdentifier = [currentProcess bundleIdentifier];
  v4 = [&unk_1F394AB78 containsObject:bundleIdentifier];

  return v4;
}

- (id)_presentEngagementLocally
{
  v3 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke;
  v8[3] = &unk_1E7F243C0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
  v5 = v9;
  v6 = v4;

  return v4;
}

void __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) allowMultiplePresentations] & 1) == 0 && ((objc_msgSend(*(a1 + 32), "isRunning") & 1) != 0 || objc_msgSend(*(a1 + 32), "isFinished")))
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = [*(a1 + 32) isRunning];
      v13 = [*(a1 + 32) isFinished];
      *buf = 138544130;
      v24 = v10;
      v25 = 2114;
      v26 = v11;
      v27 = 1024;
      v28 = v12;
      v29 = 1024;
      v30 = v13;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Engagement task not available. Running: %d, Finished: %d", buf, 0x22u);
    }

    v14 = *(a1 + 40);
    v15 = AMSError();
    [v14 finishWithError:v15];
  }

  else
  {
    *(*(a1 + 32) + 48) = 0;
    *(*(a1 + 32) + 49) = 1;
    v2 = [*(a1 + 32) request];
    v3 = [v2 silentlyCheckURL];

    if (v3)
    {
      v4 = [*(a1 + 32) taskController];
      v5 = [v4 requestIsSupported];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke_100;
      v21[3] = &unk_1E7F24B50;
      v6 = *(a1 + 40);
      v21[4] = *(a1 + 32);
      v22 = v6;
      [v5 addFinishBlock:v21];
    }

    else
    {
      v16 = *(a1 + 40);
      v17 = [*(a1 + 32) _presentTaskController];
      [v16 finishWithPromise:v17];
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke_103;
    v20[3] = &unk_1E7F24B78;
    v18 = *(a1 + 40);
    v20[4] = *(a1 + 32);
    [v18 addFinishBlock:v20];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke_100(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = [*(a1 + 32) request];
      v11 = [v10 URL];
      v12 = AMSLogableURL();
      v27 = 138543874;
      v28 = v8;
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = v12;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Silently failing with URL: %{public}@", &v27, 0x20u);
    }

    v13 = [v4 userInfo];
    v14 = [v13 mutableCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v19 = v16;

    v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "presented")}];
    [v19 setObject:v20 forKeyedSubscript:*MEMORY[0x1E698C550]];

    v21 = [v4 domain];
    [v4 code];
    v22 = [v4 ams_title];
    v23 = [v4 ams_message];
    v24 = [v4 ams_underlyingError];
    v25 = AMSCustomError();

    [*(a1 + 40) finishWithError:v25];
  }

  else
  {
    v17 = *(a1 + 40);
    v18 = [*(a1 + 32) _presentTaskController];
    [v17 finishWithPromise:v18];
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke_103(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke_2;
  block[3] = &unk_1E7F242D0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 49) = 0;
  *(*(a1 + 32) + 48) = 1;
  v2 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dismissing AMSUIEngagementTaskViewController", &v9, 0x16u);
  }

  v7 = [*(a1 + 32) taskController];
  [v7 ams_dismissViewControllerAnimated:1 completion:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_presentEngagementRemotely
{
  v3 = [AMSUIEngagementRemoteViewTask alloc];
  request = [(AMSUIEngagementTask *)self request];
  presentingViewController = [(AMSUIEngagementTask *)self presentingViewController];
  v6 = [(AMSUIEngagementRemoteViewTask *)v3 initWithRequest:request presentingViewController:presentingViewController];

  v7 = [(AMSUIEngagementTask *)self bag];
  [(AMSUIEngagementRemoteViewTask *)v6 setBag:v7];

  clientInfo = [(AMSUIEngagementTask *)self clientInfo];
  if (clientInfo)
  {
    [(AMSUIEngagementRemoteViewTask *)v6 setClientInfo:clientInfo];
  }

  else
  {
    currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
    [(AMSUIEngagementRemoteViewTask *)v6 setClientInfo:currentProcess];
  }

  presentEngagement = [(AMSUIEngagementRemoteViewTask *)v6 presentEngagement];

  return presentEngagement;
}

- (id)_presentTaskController
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  [(AMSUIEngagementTask *)self setPresented:1];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting AMSUIEngagementTaskViewController", buf, 0x16u);
  }

  taskController = [(AMSUIEngagementTask *)self taskController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__AMSUIEngagementTask__presentTaskController__block_invoke;
  v15[3] = &unk_1E7F243C0;
  v15[4] = self;
  v16 = v3;
  v9 = v3;
  v10 = [(AMSUIEngagementTask *)self _presentViewController:taskController dismissBlock:v15];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__AMSUIEngagementTask__presentTaskController__block_invoke_109;
  v14[3] = &unk_1E7F24BA0;
  v14[4] = self;
  v11 = [v9 catchWithBlock:v14];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __45__AMSUIEngagementTask__presentTaskController__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v18 = 138543618;
    v19 = v5;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dismiss block called", &v18, 0x16u);
  }

  if (([*(a1 + 40) isFinished] & 1) == 0)
  {
    v7 = [*(a1 + 32) error];

    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) error];
      v10 = v8;
LABEL_8:
      [v10 finishWithError:v9];
LABEL_15:

      goto LABEL_16;
    }

    v11 = [*(a1 + 32) result];

    if (v11)
    {
      v12 = *(a1 + 40);
      v9 = [*(a1 + 32) result];
      v13 = v12;
    }

    else
    {
      v14 = [*(a1 + 32) request];
      v15 = [v14 failOnDismiss];

      if (v15)
      {
        v16 = *(a1 + 40);
        v9 = AMSError();
        v10 = v16;
        goto LABEL_8;
      }

      v9 = objc_alloc_init(MEMORY[0x1E698C910]);
      v13 = *(a1 + 40);
    }

    [v13 finishWithResult:v9];
    goto LABEL_15;
  }

LABEL_16:
  v17 = *MEMORY[0x1E69E9840];
}

id __45__AMSUIEngagementTask__presentTaskController__block_invoke_109(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v8 = v7;

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "presented")}];
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E698C550]];

  v10 = [v3 domain];
  [v3 code];
  v11 = [v3 ams_title];
  v12 = [v3 ams_message];
  v13 = [v3 ams_underlyingError];

  v14 = AMSCustomError();

  v15 = [MEMORY[0x1E698CAD0] promiseWithError:v14];

  return v15;
}

- (id)_presentViewController:(id)controller dismissBlock:(id)block
{
  controllerCopy = controller;
  blockCopy = block;
  v8 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__AMSUIEngagementTask__presentViewController_dismissBlock___block_invoke;
  aBlock[3] = &unk_1E7F245E0;
  v9 = v8;
  v23 = v9;
  v10 = blockCopy;
  v24 = v10;
  v11 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__AMSUIEngagementTask__presentViewController_dismissBlock___block_invoke_2;
  v18[3] = &unk_1E7F24BE8;
  v18[4] = self;
  v19 = controllerCopy;
  v20 = v10;
  v21 = v11;
  v12 = v11;
  v13 = v10;
  v14 = controllerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v18);
  v15 = v21;
  v16 = v9;

  return v9;
}

uint64_t __59__AMSUIEngagementTask__presentViewController_dismissBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_alloc_init(MEMORY[0x1E698C910]);
  [v2 finishWithResult:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __59__AMSUIEngagementTask__presentViewController_dismissBlock___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) presentingViewController];
  v4 = [v3 ams_frontmostController];

  if (!v4)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = AMSLogKey();
      v8 = MEMORY[0x1E696AEC0];
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = v10;
      if (v7)
      {
        v1 = AMSLogKey();
        [v8 stringWithFormat:@"%@: [%@] ", v11, v1];
      }

      else
      {
        [v8 stringWithFormat:@"%@: ", v10];
      }
      v12 = ;
      *buf = 138543362;
      v34 = v12;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Presenting view controller is nil!", buf, 0xCu);
      if (v7)
      {

        v12 = v1;
      }
    }
  }

  v13 = [*(a1 + 32) request];
  v14 = [v13 isPresentationRequest];

  if (v14)
  {
    v15 = [[AMSUIEngagementWrapperViewController alloc] initWithViewController:*(a1 + 40)];
    [(AMSUIEngagementWrapperViewController *)v15 setDismissBlock:*(a1 + 48)];
    -[AMSUIEngagementWrapperViewController setModalPresentationStyle:](v15, "setModalPresentationStyle:", [*(a1 + 32) _modalPresentationStyle]);
    v16 = [(AMSUIEngagementWrapperViewController *)v15 presentationController];
    [v16 setDelegate:v15];

    v17 = [*(a1 + 32) request];
    -[AMSUIEngagementWrapperViewController setModalInPresentation:](v15, "setModalInPresentation:", [v17 suppressInteractiveModalDismissal]);

    [v4 presentViewController:v15 animated:1 completion:0];
  }

  else
  {
    v18 = [*(a1 + 32) request];
    v19 = [v18 presentationStyle];

    if (v19 == 4)
    {
      v15 = [[AMSUIEngagementCardWrapperViewController alloc] initWithViewController:*(a1 + 40)];
      v20 = [MEMORY[0x1E69C66D8] defaultConfiguration];
      [(AMSUIEngagementWrapperViewController *)v20 setSupportsDarkMode:1];
      v21 = [v4 presentProxCardFlowWithDelegate:*(a1 + 32) initialViewController:v15 configuration:v20];
      v22 = [*(a1 + 32) request];
      -[AMSUIEngagementWrapperViewController setPresentationStyle:](v15, "setPresentationStyle:", [v22 presentationStyle]);
    }

    else
    {
      v15 = [*(a1 + 32) cachedNavigationController];
      if (!v15)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:*(a1 + 40)];
        -[AMSUIEngagementWrapperViewController setModalPresentationStyle:](v15, "setModalPresentationStyle:", [*(a1 + 32) _modalPresentationStyle]);
        v23 = [*(a1 + 32) _userInterfaceStyle];
        if (v23)
        {
          [(AMSUIEngagementWrapperViewController *)v15 setOverrideUserInterfaceStyle:v23];
        }

        [*(a1 + 32) setCachedNavigationController:v15];
      }

      v20 = [[AMSUIEngagementWrapperViewController alloc] initWithViewController:v15];
      -[AMSUIEngagementWrapperViewController setModalPresentationStyle:](v20, "setModalPresentationStyle:", [*(a1 + 32) _modalPresentationStyle]);
      v24 = [*(a1 + 32) request];
      -[AMSUIEngagementWrapperViewController setModalInPresentation:](v20, "setModalInPresentation:", [v24 suppressInteractiveModalDismissal]);

      v25 = [*(a1 + 32) request];
      v26 = [v25 presentationStyle];

      if (v26 == 5)
      {
        v27 = [(AMSUIEngagementWrapperViewController *)v20 sheetPresentationController];
        v28 = [MEMORY[0x1E69DCF58] _detentWithIdentifier:@"Custom" resolutionContextBlock:&__block_literal_global_6];
        v32 = v28;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
        [v27 setDetents:v29];

        [v27 setPrefersEdgeAttachedInCompactHeight:1];
        [v27 setPrefersScrollingExpandsWhenScrolledToEdge:0];
        [v27 setPreferredCornerRadius:12.0];
      }

      [(AMSUIEngagementWrapperViewController *)v20 setDismissBlock:*(a1 + 56)];
      v30 = [(AMSUIEngagementWrapperViewController *)v15 presentationController];
      [v30 setDelegate:v20];

      [v4 presentViewController:v20 animated:1 completion:0];
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

double __59__AMSUIEngagementTask__presentViewController_dismissBlock___block_invoke_125(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _containerBounds];
  v4 = v3;
  v5 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  [v2 _fullHeightPresentedViewFrame];
  v9 = v8;
  v10 = [v2 _isEdgeAttached];
  v11 = 0.0;
  if (v10)
  {
    [v2 _containerSafeAreaInsets];
  }

  v12 = 1.1;
  if (!IsAccessibilityCategory)
  {
    v12 = 1.0;
  }

  v13 = dbl_1BB1EF200[v4 > 568.0];
  v14 = v12 * (v9 - v11);
  if ([v2 _isEdgeAttached])
  {
    v15 = v13 * v14;
  }

  else
  {
    v15 = v14;
  }

  return v15;
}

- (int64_t)_modalPresentationStyle
{
  request = [(AMSUIEngagementTask *)self request];
  presentationStyle = [request presentationStyle];

  if (presentationStyle == 3)
  {
    return 1;
  }

  else
  {
    return 2 * (presentationStyle != 2);
  }
}

- (int64_t)_userInterfaceStyle
{
  v20 = *MEMORY[0x1E69E9840];
  request = [(AMSUIEngagementTask *)self request];
  v3 = [request URL];
  fragment = [v3 fragment];

  if (fragment)
  {
    [fragment componentsSeparatedByString:@"&"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 hasPrefix:{@"userInterfaceStyle=", v15}])
          {
            v12 = [v10 substringFromIndex:{objc_msgSend(@"userInterfaceStyle=", "length")}];
            if ([v12 isEqualToString:@"light"])
            {
              v11 = 1;
            }

            else if ([v12 isEqualToString:@"dark"])
            {
              v11 = 2;
            }

            else
            {
              v11 = 0;
            }

            goto LABEL_18;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_18:
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (AMSUIEngagementTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end