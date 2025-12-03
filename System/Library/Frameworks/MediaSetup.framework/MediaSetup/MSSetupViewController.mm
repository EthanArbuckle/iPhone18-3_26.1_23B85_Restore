@interface MSSetupViewController
- (MSSetupViewController)initWithServiceAccount:(id)account testFlags:(unint64_t)flags;
- (id)createExtension;
- (id)createExtensionItemWithServiceAccount:(id)account;
- (void)_setChildViewController:(id)controller;
- (void)dealloc;
- (void)extensionHandleConnection:(id)connection viewController:(id)controller error:(id)error;
@end

@implementation MSSetupViewController

- (MSSetupViewController)initWithServiceAccount:(id)account testFlags:(unint64_t)flags
{
  v21[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v20.receiver = self;
  v20.super_class = MSSetupViewController;
  v8 = [(MSSetupViewController *)&v20 initWithNibName:0 bundle:0];
  if (v8)
  {
    NSLog(&cfstr_CreatingMsview.isa);
    objc_storeStrong(&v8->_serviceAccount, account);
    v8->_testFlags = flags;
    [(MSSetupViewController *)v8 _beginDelayingPresentation:0 cancellationHandler:3.0];
    [(MSSetupViewController *)v8 setModalPresentationStyle:2];
    createExtension = [(MSSetupViewController *)v8 createExtension];
    extension = v8->_extension;
    v8->_extension = createExtension;

    v11 = [(MSSetupViewController *)v8 createExtensionItemWithServiceAccount:v8->_serviceAccount];
    if (v11)
    {
      objc_initWeak(&location, v8);
      v12 = v8->_extension;
      v21[0] = v11;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __58__MSSetupViewController_initWithServiceAccount_testFlags___block_invoke;
      v17[3] = &unk_278AA2F90;
      objc_copyWeak(&v18, &location);
      [(NSExtension *)v12 instantiateViewControllerWithInputItems:v13 connectionHandler:v17];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    v14 = v8;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

void __58__MSSetupViewController_initWithServiceAccount_testFlags___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained extensionHandleConnection:v9 viewController:v8 error:v7];
}

- (void)dealloc
{
  if (self->_extensionRequest)
  {
    [(NSExtension *)self->_extension cancelExtensionRequestWithIdentifier:?];
  }

  v3.receiver = self;
  v3.super_class = MSSetupViewController;
  [(MSSetupViewController *)&v3 dealloc];
}

- (void)extensionHandleConnection:(id)connection viewController:(id)controller error:(id)error
{
  connectionCopy = connection;
  controllerCopy = controller;
  NSLog(&cfstr_HandlingExtens.isa);
  v10 = controllerCopy;
  [(MSSetupViewController *)self _setChildViewController:v10];
  extensionRequest = self->_extensionRequest;
  self->_extensionRequest = connectionCopy;

  [v10 setHost:self];
  [(MSSetupViewController *)self _endDelayingPresentation];
}

- (id)createExtension
{
  objc_initWeak(&location, self);
  v9 = 0;
  v2 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.mediaservicesbroker.ViewService" error:&v9];
  v3 = v9;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__MSSetupViewController_createExtension__block_invoke;
  v7[3] = &unk_278AA2FE0;
  objc_copyWeak(&v8, &location);
  [v2 setRequestCancellationBlock:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__MSSetupViewController_createExtension__block_invoke_3;
  v5[3] = &unk_278AA3008;
  objc_copyWeak(&v6, &location);
  [v2 setRequestInterruptionBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v2;
}

void __40__MSSetupViewController_createExtension__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MSSetupViewController_createExtension__block_invoke_2;
  block[3] = &unk_278AA2FB8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __40__MSSetupViewController_createExtension__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __40__MSSetupViewController_createExtension__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MSSetupViewController_createExtension__block_invoke_4;
  block[3] = &unk_278AA2FB8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __40__MSSetupViewController_createExtension__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (id)createExtensionItemWithServiceAccount:(id)account
{
  v18[3] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:account requiringSecureCoding:1 error:&v16];
  v5 = v16;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCA9D8]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    NSLog(&cfstr_CreateExtensio.isa, self->_testFlags);
    v17[0] = @"bundleID";
    v17[1] = @"mediaService";
    v11 = &stru_284C4B358;
    if (bundleIdentifier)
    {
      v11 = bundleIdentifier;
    }

    v18[0] = v11;
    v18[1] = v4;
    v17[2] = @"testUIFlags";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_testFlags];
    v18[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    [v8 setUserInfo:v13];
  }

  else
  {
    NSLog(&cfstr_NoContextDataE.isa, v5);
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_setChildViewController:(id)controller
{
  v29[4] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  view = [(_MSRemoteViewController *)self->_childViewController view];
  [view removeFromSuperview];

  [(_MSRemoteViewController *)self->_childViewController removeFromParentViewController];
  objc_storeStrong(&self->_childViewController, controller);
  childViewController = self->_childViewController;
  if (childViewController)
  {
    [(_MSRemoteViewController *)childViewController willMoveToParentViewController:self];
    view2 = [controllerCopy view];
    view3 = [(MSSetupViewController *)self view];
    [view3 frame];
    [view2 setFrame:?];

    [(MSSetupViewController *)self addChildViewController:self->_childViewController];
    view4 = [(MSSetupViewController *)self view];
    [view4 addSubview:view2];

    widthAnchor = [view2 widthAnchor];
    view5 = [(MSSetupViewController *)self view];
    widthAnchor2 = [view5 widthAnchor];
    v25 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v29[0] = v25;
    heightAnchor = [view2 heightAnchor];
    view6 = [(MSSetupViewController *)self view];
    heightAnchor2 = [view6 heightAnchor];
    v21 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v29[1] = v21;
    centerXAnchor = [view2 centerXAnchor];
    view7 = [(MSSetupViewController *)self view];
    centerXAnchor2 = [view7 centerXAnchor];
    v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v29[2] = v12;
    centerYAnchor = [view2 centerYAnchor];
    view8 = [(MSSetupViewController *)self view];
    centerYAnchor2 = [view8 centerYAnchor];
    v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v29[3] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v18];
    [(_UIRemoteViewController *)self->_childViewController didMoveToParentViewController:self];
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end