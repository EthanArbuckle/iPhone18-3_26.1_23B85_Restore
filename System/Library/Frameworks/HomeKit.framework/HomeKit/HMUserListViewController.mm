@interface HMUserListViewController
- (HMUserListViewController)initWithHome:(id)a3 loadHandler:(id)a4;
- (void)_configureAndAddRemoteViewController;
- (void)_finishSetupWithError:(id)a3;
- (void)_presentAsTopmostViewController;
- (void)_requestRemoteViewController;
- (void)userManagementDidFinishWithError:(id)a3;
- (void)userManagementDidLoad;
- (void)viewDidLoad;
@end

@implementation HMUserListViewController

- (void)_presentAsTopmostViewController
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 keyWindow];
  v5 = [v4 rootViewController];

  v6 = [v5 presentedViewController];

  if (v6)
  {
    do
    {
      v14 = [v5 presentedViewController];

      v7 = [v14 presentedViewController];

      v8 = v14;
      v5 = v14;
    }

    while (v7);
  }

  else
  {
    v8 = v5;
  }

  v15 = v8;
  v9 = [v8 traitCollection];
  if ([v9 horizontalSizeClass] != 2)
  {

    goto LABEL_9;
  }

  v10 = [v15 traitCollection];
  if ([v10 userInterfaceIdiom] != 1)
  {
    v12 = [v15 traitCollection];
    v13 = [v12 userInterfaceIdiom];

    if (v13 == 5)
    {
      goto LABEL_11;
    }

LABEL_9:
    v11 = 5;
    goto LABEL_12;
  }

LABEL_11:
  v11 = 2;
LABEL_12:
  [(HMUserListViewController *)self setModalPresentationStyle:v11];
  [v15 presentViewController:self animated:1 completion:0];
}

- (void)userManagementDidFinishWithError:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__HMUserListViewController_userManagementDidFinishWithError___block_invoke;
  v6[3] = &unk_1E754E5C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)userManagementDidLoad
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__HMUserListViewController_userManagementDidLoad__block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __49__HMUserListViewController_userManagementDidLoad__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) loadHandler];
    v3[2](v3, 0);

    [*(a1 + 32) setLoadHandler:0];
  }

  v4 = *(a1 + 32);

  return [v4 _endDelayingPresentation];
}

- (void)_finishSetupWithError:(id)a3
{
  v9 = a3;
  v4 = [(HMUserListViewController *)self presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  [(HMUserListViewController *)self _endDelayingPresentation];
  v5 = [(HMUserListViewController *)self loadHandler];

  if (v5)
  {
    v6 = [(HMUserListViewController *)self loadHandler];
    (v6)[2](v6, v9);

    [(HMUserListViewController *)self setLoadHandler:0];
  }

  v7 = [(HMUserListViewController *)self completionHandler];

  if (v7)
  {
    v8 = [(HMUserListViewController *)self completionHandler];
    (v8)[2](v8, v9);

    [(HMUserListViewController *)self setCompletionHandler:0];
  }
}

- (void)_configureAndAddRemoteViewController
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(HMUserListViewController *)self remoteViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [(HMUserListViewController *)self remoteViewController];
    v6 = [v5 parentViewController];

    if (!v6)
    {
      v7 = [(HMUserListViewController *)self remoteViewController];
      [v7 setDelegate:self];

      v8 = [(HMUserListViewController *)self remoteViewController];
      [(HMUserListViewController *)self addChildViewController:v8];

      v9 = [(HMUserListViewController *)self remoteViewController];
      v10 = [v9 view];

      v11 = [(HMUserListViewController *)self view];
      [v11 addSubview:v10];

      v12 = [(HMUserListViewController *)self view];
      [v12 frame];
      [v10 setFrame:?];

      v13 = [(HMUserListViewController *)self remoteViewController];
      [v13 didMoveToParentViewController:self];

      v14 = [(HMUserListViewController *)self remoteViewController];
      v15 = [v14 serviceViewControllerProxy];

      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v19;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@serviceViewControllerProxy: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [(HMUserListViewController *)v17 home];
      v21 = [v20 uuid];
      [v15 setHomeUUID:v21];

      if ([(HMUserListViewController *)v17 shouldPresentWhenLoaded])
      {
        [(HMUserListViewController *)v17 _presentAsTopmostViewController];
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_requestRemoteViewController
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__HMUserListViewController__requestRemoteViewController__block_invoke;
  v5[3] = &unk_1E754E188;
  v5[4] = self;
  [(HMUserListViewController *)self _beginDelayingPresentation:v5 cancellationHandler:15.0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__HMUserListViewController__requestRemoteViewController__block_invoke_2;
  v4[3] = &unk_1E754E1B0;
  v4[4] = self;
  v3 = [HMUserListRemoteViewController requestViewControllerWithConnectionHandler:v4];
  [(HMUserListViewController *)self setCancelServiceInvocation:v3];
}

uint64_t __56__HMUserListViewController__requestRemoteViewController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:8 userInfo:0];
    [*(a1 + 32) _finishSetupWithError:v3];
  }

  return 0;
}

void __56__HMUserListViewController__requestRemoteViewController__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [*(a1 + 32) setRemoteViewController:v5];
    [*(a1 + 32) _configureAndAddRemoteViewController];
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v7 errorWithDomain:@"HMErrorDomain" code:1005 userInfo:v8];

    [*(a1 + 32) _finishSetupWithError:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HMUserListViewController;
  [(HMUserListViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(HMUserListViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (HMUserListViewController)initWithHome:(id)a3 loadHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMUserListViewController;
  v8 = [(HMUserListViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HMUserListViewController *)v8 setHome:v6];
    [(HMUserListViewController *)v9 setLoadHandler:v7];
    [(HMUserListViewController *)v9 _requestRemoteViewController];
  }

  return v9;
}

@end