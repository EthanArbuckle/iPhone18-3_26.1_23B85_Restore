@interface MSSetupViewController
- (MSSetupViewController)initWithServiceAccount:(id)a3 testFlags:(unint64_t)a4;
- (id)createExtension;
- (id)createExtensionItemWithServiceAccount:(id)a3;
- (void)_setChildViewController:(id)a3;
- (void)dealloc;
- (void)extensionHandleConnection:(id)a3 viewController:(id)a4 error:(id)a5;
@end

@implementation MSSetupViewController

- (MSSetupViewController)initWithServiceAccount:(id)a3 testFlags:(unint64_t)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v20.receiver = self;
  v20.super_class = MSSetupViewController;
  v8 = [(MSSetupViewController *)&v20 initWithNibName:0 bundle:0];
  if (v8)
  {
    NSLog(&cfstr_CreatingMsview.isa);
    objc_storeStrong(&v8->_serviceAccount, a3);
    v8->_testFlags = a4;
    [(MSSetupViewController *)v8 _beginDelayingPresentation:0 cancellationHandler:3.0];
    [(MSSetupViewController *)v8 setModalPresentationStyle:2];
    v9 = [(MSSetupViewController *)v8 createExtension];
    extension = v8->_extension;
    v8->_extension = v9;

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

- (void)extensionHandleConnection:(id)a3 viewController:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  NSLog(&cfstr_HandlingExtens.isa);
  v10 = v8;
  [(MSSetupViewController *)self _setChildViewController:v10];
  extensionRequest = self->_extensionRequest;
  self->_extensionRequest = v7;

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

- (id)createExtensionItemWithServiceAccount:(id)a3
{
  v18[3] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v16];
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
    v9 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [v9 bundleIdentifier];

    NSLog(&cfstr_CreateExtensio.isa, self->_testFlags);
    v17[0] = @"bundleID";
    v17[1] = @"mediaService";
    v11 = &stru_284C4B358;
    if (v10)
    {
      v11 = v10;
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

- (void)_setChildViewController:(id)a3
{
  v29[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(_MSRemoteViewController *)self->_childViewController view];
  [v6 removeFromSuperview];

  [(_MSRemoteViewController *)self->_childViewController removeFromParentViewController];
  objc_storeStrong(&self->_childViewController, a3);
  childViewController = self->_childViewController;
  if (childViewController)
  {
    [(_MSRemoteViewController *)childViewController willMoveToParentViewController:self];
    v8 = [v5 view];
    v9 = [(MSSetupViewController *)self view];
    [v9 frame];
    [v8 setFrame:?];

    [(MSSetupViewController *)self addChildViewController:self->_childViewController];
    v10 = [(MSSetupViewController *)self view];
    [v10 addSubview:v8];

    v27 = [v8 widthAnchor];
    v28 = [(MSSetupViewController *)self view];
    v26 = [v28 widthAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v29[0] = v25;
    v23 = [v8 heightAnchor];
    v24 = [(MSSetupViewController *)self view];
    v22 = [v24 heightAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v29[1] = v21;
    v19 = [v8 centerXAnchor];
    v20 = [(MSSetupViewController *)self view];
    v11 = [v20 centerXAnchor];
    v12 = [v19 constraintEqualToAnchor:v11];
    v29[2] = v12;
    v13 = [v8 centerYAnchor];
    v14 = [(MSSetupViewController *)self view];
    v15 = [v14 centerYAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v29[3] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v18];
    [(_UIRemoteViewController *)self->_childViewController didMoveToParentViewController:self];
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end