@interface SKStorePageViewController
- (SKStorePageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addRemoteView;
- (void)_didFinishWithResult:(id)a3 error:(id)a4;
- (void)_didLoadWithResult:(BOOL)a3 error:(id)a4;
- (void)_dismissProductPageViewController;
- (void)_prepareToLoadWithCompletionBlock:(id)a3;
- (void)_requestRemoteViewController;
- (void)_showProductPageWithItemIdentifier:(id)a3;
- (void)dealloc;
- (void)loadPageWithURL:(id)a3 completionBlock:(id)a4;
- (void)loadPageWithURLBagKey:(id)a3 completionBlock:(id)a4;
- (void)loadView;
@end

@implementation SKStorePageViewController

- (SKStorePageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = SKStorePageViewController;
  v4 = [(SKStorePageViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [[SKInvocationQueueProxy alloc] initWithProtocol:&unk_1F2A06778];
    serviceProxy = v4->_serviceProxy;
    v4->_serviceProxy = v5;
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(_UIAsyncInvocation *)self->_cancelRequest invoke];
  [(SKStoreProductViewController *)self->_productPageViewController setDelegate:0];
  [(SKUIServiceStorePageViewController *)self->_serviceProxy setInvocationTarget:0];
  [(SKRemoteStorePageViewController *)self->_remoteViewController setStorePageViewController:0];
  v4.receiver = self;
  v4.super_class = SKStorePageViewController;
  [(SKStorePageViewController *)&v4 dealloc];
}

- (void)loadPageWithURL:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  [(SKStorePageViewController *)self _prepareToLoadWithCompletionBlock:a4];
  [(SKUIServiceStorePageViewController *)self->_serviceProxy loadPageWithURL:v6];
}

- (void)loadPageWithURLBagKey:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  [(SKStorePageViewController *)self _prepareToLoadWithCompletionBlock:a4];
  [(SKUIServiceStorePageViewController *)self->_serviceProxy loadPageWithURLBagKey:v6];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(SKStorePageViewController *)self setView:v3];
  [(SKStorePageViewController *)self _addRemoteView];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  if (SKAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (void)_didFinishWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  -[SKStorePageViewController _didLoadWithResult:error:](self, "_didLoadWithResult:error:", [a3 BOOLValue], v6);
}

- (void)_showProductPageWithItemIdentifier:(id)a3
{
  v4 = a3;
  if (!self->_productPageViewController)
  {
    v5 = objc_alloc_init(SKStoreProductViewController);
    productPageViewController = self->_productPageViewController;
    self->_productPageViewController = v5;

    [(SKStoreProductViewController *)self->_productPageViewController setDelegate:self];
    objc_initWeak(&location, self);
    v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v4, @"id", 0}];
    v8 = self->_productPageViewController;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__SKStorePageViewController__showProductPageWithItemIdentifier___block_invoke;
    v9[3] = &unk_1E7B28D70;
    objc_copyWeak(&v10, &location);
    [(SKStoreProductViewController *)v8 loadProductWithParameters:v7 completionBlock:v9];
    [(SKStorePageViewController *)self presentViewController:self->_productPageViewController animated:1 completion:0];
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
  }
}

void __64__SKStorePageViewController__showProductPageWithItemIdentifier___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _dismissProductPageViewController];
  }
}

- (void)_addRemoteView
{
  if (self->_remoteViewController && [(SKStorePageViewController *)self isViewLoaded])
  {
    v4 = [(SKStorePageViewController *)self view];
    v3 = [(SKRemoteStorePageViewController *)self->_remoteViewController view];
    [v4 bounds];
    [v3 setFrame:?];
    [v3 setAutoresizingMask:18];
    [v4 addSubview:v3];
  }
}

- (void)_didLoadWithResult:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  v13 = v6;
  if (v4)
  {
    [(SKStorePageViewController *)self _addRemoteView];
  }

  else
  {
    v7 = v6;
    cancelRequest = self->_cancelRequest;
    if (cancelRequest)
    {
      v9 = [(_UIAsyncInvocation *)cancelRequest invoke];
      v10 = self->_cancelRequest;
      self->_cancelRequest = 0;
    }
  }

  loadBlock = self->_loadBlock;
  if (loadBlock)
  {
    (loadBlock)[2](loadBlock, v4, v13);
    v12 = self->_loadBlock;
    self->_loadBlock = 0;
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_dismissProductPageViewController
{
  [(SKStoreProductViewController *)self->_productPageViewController dismissViewControllerAnimated:1 completion:0];
  [(SKStoreProductViewController *)self->_productPageViewController setDelegate:0];
  productPageViewController = self->_productPageViewController;
  self->_productPageViewController = 0;
}

- (void)_prepareToLoadWithCompletionBlock:(id)a3
{
  v4 = a3;
  if (self->_loadBlock != v4)
  {
    v7 = v4;
    v5 = [v4 copy];
    loadBlock = self->_loadBlock;
    self->_loadBlock = v5;

    v4 = v7;
  }

  if (!self->_cancelRequest && !self->_remoteViewController)
  {
    v8 = v4;
    [(SKStorePageViewController *)self _requestRemoteViewController];
    v4 = v8;
  }
}

- (void)_requestRemoteViewController
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__SKStorePageViewController__requestRemoteViewController__block_invoke;
  v6[3] = &unk_1E7B27A78;
  v6[4] = self;
  [(SKStorePageViewController *)self _beginDelayingPresentation:v6 cancellationHandler:10.0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__SKStorePageViewController__requestRemoteViewController__block_invoke_2;
  v5[3] = &unk_1E7B27C90;
  v5[4] = self;
  v3 = [SKRemoteStorePageViewController requestViewController:@"ServiceStorePageViewController" fromServiceWithBundleIdentifier:@"com.apple.ios.StoreKitUIService" connectionHandler:v5];
  cancelRequest = self->_cancelRequest;
  self->_cancelRequest = v3;
}

uint64_t __57__SKStorePageViewController__requestRemoteViewController__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SSError();
  [v1 _didLoadWithResult:0 error:v2];

  return 0;
}

void __57__SKStorePageViewController__requestRemoteViewController__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v6 = a3;
  if (v12)
  {
    objc_storeStrong((*(a1 + 32) + 1016), a2);
    [*(*(a1 + 32) + 1016) setStorePageViewController:?];
    v7 = *(a1 + 32);
    v8 = *(v7 + 1024);
    v9 = [*(v7 + 1016) serviceViewControllerProxy];
    [v8 setInvocationTarget:v9];

    [*(a1 + 32) addChildViewController:*(*(a1 + 32) + 1016)];
    [*(a1 + 32) _addRemoteView];
  }

  else
  {
    NSLog(&cfstr_CouldNotReques.isa, v6);
    [*(a1 + 32) _didLoadWithResult:0 error:v6];
    [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  }

  [*(a1 + 32) _endDelayingPresentation];
  v10 = *(a1 + 32);
  v11 = *(v10 + 992);
  *(v10 + 992) = 0;
}

@end