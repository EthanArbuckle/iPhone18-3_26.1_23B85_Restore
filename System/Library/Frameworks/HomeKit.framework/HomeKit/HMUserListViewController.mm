@interface HMUserListViewController
- (HMUserListViewController)initWithHome:(id)home loadHandler:(id)handler;
- (void)_configureAndAddRemoteViewController;
- (void)_finishSetupWithError:(id)error;
- (void)_presentAsTopmostViewController;
- (void)_requestRemoteViewController;
- (void)userManagementDidFinishWithError:(id)error;
- (void)userManagementDidLoad;
- (void)viewDidLoad;
@end

@implementation HMUserListViewController

- (void)_presentAsTopmostViewController
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  keyWindow = [mEMORY[0x1E69DC668] keyWindow];
  rootViewController = [keyWindow rootViewController];

  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [rootViewController presentedViewController];

      v14PresentedViewController = [presentedViewController2 presentedViewController];

      v8 = presentedViewController2;
      rootViewController = presentedViewController2;
    }

    while (v14PresentedViewController);
  }

  else
  {
    v8 = rootViewController;
  }

  v15 = v8;
  traitCollection = [v8 traitCollection];
  if ([traitCollection horizontalSizeClass] != 2)
  {

    goto LABEL_9;
  }

  traitCollection2 = [v15 traitCollection];
  if ([traitCollection2 userInterfaceIdiom] != 1)
  {
    traitCollection3 = [v15 traitCollection];
    userInterfaceIdiom = [traitCollection3 userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
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

- (void)userManagementDidFinishWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__HMUserListViewController_userManagementDidFinishWithError___block_invoke;
  v6[3] = &unk_1E754E5C0;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
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

- (void)_finishSetupWithError:(id)error
{
  errorCopy = error;
  presentingViewController = [(HMUserListViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  [(HMUserListViewController *)self _endDelayingPresentation];
  loadHandler = [(HMUserListViewController *)self loadHandler];

  if (loadHandler)
  {
    loadHandler2 = [(HMUserListViewController *)self loadHandler];
    (loadHandler2)[2](loadHandler2, errorCopy);

    [(HMUserListViewController *)self setLoadHandler:0];
  }

  completionHandler = [(HMUserListViewController *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(HMUserListViewController *)self completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);

    [(HMUserListViewController *)self setCompletionHandler:0];
  }
}

- (void)_configureAndAddRemoteViewController
{
  v27 = *MEMORY[0x1E69E9840];
  remoteViewController = [(HMUserListViewController *)self remoteViewController];
  if (remoteViewController)
  {
    v4 = remoteViewController;
    remoteViewController2 = [(HMUserListViewController *)self remoteViewController];
    parentViewController = [remoteViewController2 parentViewController];

    if (!parentViewController)
    {
      remoteViewController3 = [(HMUserListViewController *)self remoteViewController];
      [remoteViewController3 setDelegate:self];

      remoteViewController4 = [(HMUserListViewController *)self remoteViewController];
      [(HMUserListViewController *)self addChildViewController:remoteViewController4];

      remoteViewController5 = [(HMUserListViewController *)self remoteViewController];
      view = [remoteViewController5 view];

      view2 = [(HMUserListViewController *)self view];
      [view2 addSubview:view];

      view3 = [(HMUserListViewController *)self view];
      [view3 frame];
      [view setFrame:?];

      remoteViewController6 = [(HMUserListViewController *)self remoteViewController];
      [remoteViewController6 didMoveToParentViewController:self];

      remoteViewController7 = [(HMUserListViewController *)self remoteViewController];
      serviceViewControllerProxy = [remoteViewController7 serviceViewControllerProxy];

      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v19;
        v25 = 2112;
        v26 = serviceViewControllerProxy;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@serviceViewControllerProxy: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      home = [(HMUserListViewController *)selfCopy home];
      uuid = [home uuid];
      [serviceViewControllerProxy setHomeUUID:uuid];

      if ([(HMUserListViewController *)selfCopy shouldPresentWhenLoaded])
      {
        [(HMUserListViewController *)selfCopy _presentAsTopmostViewController];
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(HMUserListViewController *)self view];
  [view setBackgroundColor:clearColor];
}

- (HMUserListViewController)initWithHome:(id)home loadHandler:(id)handler
{
  homeCopy = home;
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = HMUserListViewController;
  v8 = [(HMUserListViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HMUserListViewController *)v8 setHome:homeCopy];
    [(HMUserListViewController *)v9 setLoadHandler:handlerCopy];
    [(HMUserListViewController *)v9 _requestRemoteViewController];
  }

  return v9;
}

@end