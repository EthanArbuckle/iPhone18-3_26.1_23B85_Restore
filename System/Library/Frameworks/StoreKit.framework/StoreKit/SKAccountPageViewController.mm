@interface SKAccountPageViewController
+ (void)isCommerceUIURL:(id)a3 completion:(id)a4;
- (BOOL)_isBridgedNavigationViewController;
- (SKAccountPageViewController)initWithAccountURL:(id)a3 forceLegacy:(BOOL)a4;
- (SKAccountPageViewController)presentingAccountPageViewController;
- (SKAccountPageViewControllerDelegate)delegate;
- (id)_URLForBagKey:(id)a3;
- (id)_overrideScheme:(id)a3;
- (id)_redeemURLFromRedeemConfigURL:(id)a3;
- (unint64_t)_indexForFirstBridgedNavigationViewController;
- (void)_addRemoteView;
- (void)_beginURLParsing:(id)a3 forceLegacy:(BOOL)a4;
- (void)_didFinishLoading;
- (void)_didPrepareWithResult:(BOOL)a3 error:(id)a4;
- (void)_dismissViewControllerWithResult:(BOOL)a3 error:(id)a4;
- (void)_financeInterruptionResolved:(BOOL)a3;
- (void)_handleLegacyViewWillAppear;
- (void)_keyboardDidChangeNotification:(id)a3;
- (void)_keyboardWillChangeNotification:(id)a3;
- (void)_overrideCreditCardPresentationWithCompletion:(id)a3;
- (void)_overrideRedeemCameraPerformAction:(int64_t)a3 withObject:(id)a4;
- (void)_overrideRedeemCameraWithCompletion:(id)a3;
- (void)_popAllBridgedNavigationViewControllers;
- (void)_popBridgedViewControllersToIndex:(unint64_t)a3;
- (void)_presentBridgedViewController;
- (void)_pushBridgedViewControllerAnimated:(BOOL)a3 options:(id)a4;
- (void)_requestRemoteViewController;
- (void)_setBridgedNavigationItemWithOptions:(id)a3;
- (void)_setupLegacyContainer;
- (void)_setupNavigationItem;
- (void)_setupNotificationCenter;
- (void)_setupPreWarmedViewController;
- (void)_setupRemoteViewController:(BOOL)a3;
- (void)_setupWebViewController;
- (void)_sk_applicationWillEnterForeground:(id)a3;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)loadWithCompletionBlock:(id)a3;
- (void)overrideRedeemOperationWithCode:(id)a3 cameraRecognized:(BOOL)a4 completion:(id)a5;
- (void)prepareWithCompletionBlock:(id)a3;
- (void)redeemCameraViewController:(id)a3 didFinishWithRedeem:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation SKAccountPageViewController

+ (void)isCommerceUIURL:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E698CB70];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = +[SKAccountPageBagProvider sharedBag];
  v10 = [v8 initWithBag:v9];

  v11 = [v10 isCommerceUIURL:v7];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__SKAccountPageViewController_isCommerceUIURL_completion___block_invoke;
  v13[3] = &unk_1E7B27B08;
  v14 = v5;
  v12 = v5;
  [v11 addFinishBlock:v13];
}

uint64_t __58__SKAccountPageViewController_isCommerceUIURL_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v9 = v5;
  if (v5)
  {
    NSLog(&cfstr_ErrorParsingTh.isa, v5);
    v6 = v9;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = (*(v7 + 16))(v7, a2);
    v6 = v9;
  }

  return MEMORY[0x1EEE66BB8](v7, v6);
}

- (SKAccountPageViewController)initWithAccountURL:(id)a3 forceLegacy:(BOOL)a4
{
  v5 = a4;
  v7 = a3;
  v16.receiver = self;
  v16.super_class = SKAccountPageViewController;
  v8 = [(SKAccountPageViewController *)&v16 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AAE8] mainBundle];
    v10 = [v9 bundleIdentifier];
    v11 = v10;
    if (!v10)
    {
      v4 = [MEMORY[0x1E696AE30] processInfo];
      v11 = [v4 processName];
    }

    objc_storeStrong(&v8->_referrer, v11);
    if (!v10)
    {
    }

    v12 = objc_alloc_init(MEMORY[0x1E698CA48]);
    connectionSetupPromise = v8->_connectionSetupPromise;
    v8->_connectionSetupPromise = v12;

    v14 = [(SKAccountPageViewController *)v8 _overrideScheme:v7];
    [(SKAccountPageViewController *)v8 _beginURLParsing:v14 forceLegacy:v5];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(_UIAsyncInvocation *)self->_cancelRequest invoke];
  [(SKRemoteAccountPageViewController *)self->_remoteViewController setAccountPageViewController:0];
  v5 = [(SKRemoteAccountPageViewController *)self->_remoteViewController disconnect];
  [(SKUIServiceAccountPageViewController *)self->_serviceProxy setInvocationTarget:0];
  v6.receiver = self;
  v6.super_class = SKAccountPageViewController;
  [(SKAccountPageViewController *)&v6 dealloc];
}

- (void)loadWithCompletionBlock:(id)a3
{
  if (self->_loadBlock)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Double load"];
  }

  else
  {
    v4 = [a3 copy];
    loadBlock = self->_loadBlock;
    self->_loadBlock = v4;
  }

  self->_isLoading = 1;
  [(SKAccountPageViewController *)self beginAppearanceTransition:1 animated:0];
  v6 = dispatch_time(0, 10000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SKAccountPageViewController_loadWithCompletionBlock___block_invoke;
  block[3] = &unk_1E7B27980;
  block[4] = self;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

- (void)prepareWithCompletionBlock:(id)a3
{
  if (self->_prepareBlock)
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D930];

    [v3 raise:v4 format:@"Double prepare"];
  }

  else
  {
    v6 = [a3 copy];
    prepareBlock = self->_prepareBlock;
    self->_prepareBlock = v6;

    MEMORY[0x1EEE66BB8](v6, prepareBlock);
  }
}

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:v3];

  [(SKAccountPageViewController *)self setView:v4];
  [(SKAccountPageViewController *)self _addRemoteView];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SKAccountPageViewController;
  [(SKAccountPageViewController *)&v3 viewDidLoad];
  [(SKAccountPageViewController *)self _setupNavigationItem];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SKAccountPageViewController;
  [(SKAccountPageViewController *)&v5 viewDidLayoutSubviews];
  serviceProxy = self->_serviceProxy;
  v4 = [(SKAccountPageViewController *)self view];
  [v4 bounds];
  [(SKUIServiceAccountPageViewController *)serviceProxy setPresentationBounds:?];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKAccountPageViewController;
  [(SKAccountPageViewController *)&v4 viewWillAppear:a3];
  if (!self->_viewHasAppeared)
  {
    if (self->_remoteViewController)
    {
      [(SKAccountPageViewController *)self _handleLegacyViewWillAppear];
    }

    self->_viewHasAppeared = 1;
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKAccountPageViewController;
  [(SKAccountPageViewController *)&v6 willMoveToParentViewController:v4];
  if (!self->_isRemoteViewControllerReady)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__SKAccountPageViewController_willMoveToParentViewController___block_invoke;
    v5[3] = &unk_1E7B27A78;
    v5[4] = self;
    [v4 _beginDelayingPresentation:v5 cancellationHandler:10.0];
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = SKAccountPageViewController;
  [(SKAccountPageViewController *)&v6 didMoveToParentViewController:?];
  if (!a3)
  {
    v5 = [(SKAccountPageViewController *)self presentingAccountPageViewController];
    if (v5)
    {
    }

    else if (!self->_financeInterruptionCalled)
    {
      [(SKAccountPageViewController *)self _financeInterruptionResolved:0];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SKAccountPageViewController;
  [(SKAccountPageViewController *)&v5 viewDidAppear:a3];
  v4 = [(SKAccountPageViewController *)self navigationController];

  if (v4)
  {
    [(SKAccountPageViewController *)self _setupPreWarmedViewController];
  }
}

- (void)_handleLegacyViewWillAppear
{
  [(SKAccountPageViewController *)self _setupRemoteViewController:0];
  if (!self->_cameraDidShow)
  {
    serviceProxy = self->_serviceProxy;
    v4 = self->_accountURL;
    [(SKUIServiceAccountPageViewController *)serviceProxy setShowAccountGlyph:[(SKAccountPageViewController *)self showAccountGlyph]];
    [(SKUIServiceAccountPageViewController *)self->_serviceProxy loadWithURL:v4];
  }

  self->_cameraDidShow = 0;
}

- (void)_setupNotificationCenter
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__sk_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  [v3 addObserver:self selector:sel__sk_applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
  [v3 addObserver:self selector:sel__keyboardDidChangeNotification_ name:*MEMORY[0x1E69DDF68] object:0];
  [v3 addObserver:self selector:sel__keyboardWillChangeNotification_ name:*MEMORY[0x1E69DE068] object:0];
}

- (void)_sk_applicationWillEnterForeground:(id)a3
{
  if ([(SKAccountPageViewController *)self isViewLoaded])
  {
    v4 = [(SKAccountPageViewController *)self view];
    v5 = [v4 window];

    if (v5)
    {
      serviceProxy = self->_serviceProxy;

      [(SKUIServiceAccountPageViewController *)serviceProxy applicationWillEnterForeground];
    }
  }
}

- (void)_keyboardDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v4 userInfo];
  v16 = [v15 valueForKey:*MEMORY[0x1E69DDF38]];
  v17 = [v16 intValue];

  v18 = [v4 userInfo];

  v19 = [v18 valueForKey:*MEMORY[0x1E69DDF40]];
  [v19 floatValue];
  v21 = v20;

  v22 = [(SKAccountPageViewController *)self view];
  v23 = [MEMORY[0x1E69DC668] sharedApplication];
  v24 = [v23 keyWindow];
  [v22 convertRect:v24 fromView:{v8, v10, v12, v14}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  serviceProxy = self->_serviceProxy;

  [(SKUIServiceAccountPageViewController *)serviceProxy keyboardDidChangeFrame:v17 animationCurve:v26 duration:v28, v30, v32, v21];
}

- (void)_keyboardWillChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v4 userInfo];
  v16 = [v15 valueForKey:*MEMORY[0x1E69DDF38]];
  v17 = [v16 intValue];

  v18 = [v4 userInfo];

  v19 = [v18 valueForKey:*MEMORY[0x1E69DDF40]];
  [v19 floatValue];
  v21 = v20;

  v22 = [(SKAccountPageViewController *)self view];
  v23 = [MEMORY[0x1E69DC668] sharedApplication];
  v24 = [v23 keyWindow];
  [v22 convertRect:v24 fromView:{v8, v10, v12, v14}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  serviceProxy = self->_serviceProxy;

  [(SKUIServiceAccountPageViewController *)serviceProxy keyboardWillChangeFrame:v17 animationCurve:v26 duration:v28, v30, v32, v21];
}

- (void)_didPrepareWithResult:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  v9 = v6;
  if (v4)
  {
    [(SKAccountPageViewController *)self _addRemoteView];
    if (self->_viewHasAppeared)
    {
      [(SKAccountPageViewController *)self _handleLegacyViewWillAppear];
    }
  }

  prepareBlock = self->_prepareBlock;
  if (prepareBlock)
  {
    (prepareBlock)[2](prepareBlock, v4, v9);
    v8 = self->_prepareBlock;
    self->_prepareBlock = 0;
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_didFinishLoading
{
  loadBlock = self->_loadBlock;
  if (loadBlock)
  {
    loadBlock[2](loadBlock, a2);
    v4 = self->_loadBlock;
    self->_loadBlock = 0;

    self->_isLoading = 0;
    [(SKAccountPageViewController *)self _addRemoteView];

    [(SKAccountPageViewController *)self endAppearanceTransition];
  }
}

- (void)_dismissViewControllerWithResult:(BOOL)a3 error:(id)a4
{
  if (self->_prepareBlock)
  {

    [(SKAccountPageViewController *)self _didPrepareWithResult:0 error:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 accountPageViewControllerDidFinish:self];
    }

    else if ([(SKAccountPageViewController *)self _isBridgedNavigationViewController])
    {

      [(SKAccountPageViewController *)self _popAllBridgedNavigationViewControllers];
    }

    else
    {

      [(SKAccountPageViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)_financeInterruptionResolved:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SKAccountPageViewController *)self presentingAccountPageViewController];

    if (v7)
    {
      v8 = [(SKAccountPageViewController *)self presentingAccountPageViewController];
      [v8 _financeInterruptionResolved:v3];
    }

    else
    {
      self->_financeInterruptionCalled = 1;
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 accountPageViewController:self financeInterruptionResolved:v3];
    }
  }
}

- (void)_overrideCreditCardPresentationWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__SKAccountPageViewController__overrideCreditCardPresentationWithCompletion___block_invoke;
  v6[3] = &unk_1E7B27B30;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __77__SKAccountPageViewController__overrideCreditCardPresentationWithCompletion___block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getSUCreditCardReaderViewControllerClass_softClass;
  v10 = getSUCreditCardReaderViewControllerClass_softClass;
  if (!getSUCreditCardReaderViewControllerClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getSUCreditCardReaderViewControllerClass_block_invoke;
    v6[3] = &unk_1E7B279A8;
    v6[4] = &v7;
    __getSUCreditCardReaderViewControllerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = objc_alloc_init(v2);
  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
  [v4 setCompletionBlock:*(a1 + 40)];
  [v5 setModalPresentationStyle:0];
  [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
  *(*(a1 + 32) + 1050) = 1;
}

- (void)_overrideRedeemCameraPerformAction:(int64_t)a3 withObject:(id)a4
{
  v6 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__SKAccountPageViewController__overrideRedeemCameraPerformAction_withObject___block_invoke;
  block[3] = &unk_1E7B27B80;
  v9 = v6;
  v10 = a3;
  block[4] = self;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __77__SKAccountPageViewController__overrideRedeemCameraPerformAction_withObject___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1 && (v2 = objc_loadWeakRetained((*(a1 + 32) + 1024)), v2, !v2))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v4 = getSURedeemCameraViewControllerClass_softClass;
    v15 = getSURedeemCameraViewControllerClass_softClass;
    if (!getSURedeemCameraViewControllerClass_softClass)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getSURedeemCameraViewControllerClass_block_invoke;
      location[3] = &unk_1E7B279A8;
      location[4] = &v12;
      __getSURedeemCameraViewControllerClass_block_invoke(location);
      v4 = v13[3];
    }

    v5 = v4;
    _Block_object_dispose(&v12, 8);
    v6 = objc_alloc_init(v4);
    objc_initWeak(location, *(a1 + 32));
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__SKAccountPageViewController__overrideRedeemCameraPerformAction_withObject___block_invoke_2;
    v9[3] = &unk_1E7B27B58;
    objc_copyWeak(&v10, location);
    [v6 setCodeHandler:v9];
    v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
    [v7 setModalPresentationStyle:0];
    [*(a1 + 32) presentViewController:v7 animated:1 completion:0];
    objc_storeWeak((*(a1 + 32) + 1024), v6);
    *(*(a1 + 32) + 1050) = 1;

    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1024));

    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained((*(a1 + 32) + 1024));
      [v8 performAction:*(a1 + 48) withObject:*(a1 + 40)];
    }
  }
}

void __77__SKAccountPageViewController__overrideRedeemCameraPerformAction_withObject___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[130] redeemCameraCodeDetected:v5];
  }
}

- (void)_overrideRedeemCameraWithCompletion:(id)a3
{
  v4 = [a3 copy];
  redeemCompletionHandler = self->redeemCompletionHandler;
  self->redeemCompletionHandler = v4;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SKAccountPageViewController__overrideRedeemCameraWithCompletion___block_invoke;
  block[3] = &unk_1E7B27980;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__SKAccountPageViewController__overrideRedeemCameraWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v3 = getSKUIClientContextClass_softClass;
  v20 = getSKUIClientContextClass_softClass;
  if (!getSKUIClientContextClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getSKUIClientContextClass_block_invoke;
    v15 = &unk_1E7B279A8;
    v16 = &v17;
    __getSKUIClientContextClass_block_invoke(&v12);
    v3 = v18[3];
  }

  v4 = v3;
  _Block_object_dispose(&v17, 8);
  v5 = [v3 defaultContext];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v6 = getSKUIRedeemConfigurationClass_softClass;
  v20 = getSKUIRedeemConfigurationClass_softClass;
  if (!getSKUIRedeemConfigurationClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getSKUIRedeemConfigurationClass_block_invoke;
    v15 = &unk_1E7B279A8;
    v16 = &v17;
    __getSKUIRedeemConfigurationClass_block_invoke(&v12);
    v6 = v18[3];
  }

  v7 = v6;
  _Block_object_dispose(&v17, 8);
  v8 = [[v6 alloc] initWithOperationQueue:v2 category:0 clientContext:v5];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v9 = getSKUIRedeemViewControllerClass_softClass;
  v20 = getSKUIRedeemViewControllerClass_softClass;
  if (!getSKUIRedeemViewControllerClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getSKUIRedeemViewControllerClass_block_invoke;
    v15 = &unk_1E7B279A8;
    v16 = &v17;
    __getSKUIRedeemViewControllerClass_block_invoke(&v12);
    v9 = v18[3];
  }

  v10 = v9;
  _Block_object_dispose(&v17, 8);
  v11 = [[v9 alloc] initWithRedeemCategory:0];
  [v11 setModalPresentationStyle:0];
  [v11 setClientContext:v5];
  [v11 setOperationQueue:v2];
  [v11 setCameraRedeemVisible:1];
  [v11 setCameraDelegate:*(a1 + 32)];
  [v11 setRedeemConfiguration:v8];
  [v11 setShouldPerformInitialOperationOnAppear:0];
  [*(a1 + 32) presentViewController:v11 animated:1 completion:0];
  *(*(a1 + 32) + 1050) = 1;
}

- (void)_setBridgedNavigationItemWithOptions:(id)a3
{
  v23 = a3;
  v4 = [v23 objectForKeyedSubscript:@"ServiceNavigationItemOptionBackButtonTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SKAccountPageViewController *)self navigationItem];
    v6 = [v5 backBarButtonItem];

    if (v6)
    {
      [v6 setTitle:v4];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E69DC708]);
      [v7 setTitle:v4];
      v8 = [(SKAccountPageViewController *)self navigationItem];
      [v8 setBackBarButtonItem:v7];
    }
  }

  v9 = [v23 objectForKeyedSubscript:@"ServiceNavigationItemOptionBackButtonHidden"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 BOOLValue];
    v11 = [(SKAccountPageViewController *)self navigationItem];
    [v11 setHidesBackButton:v10 animated:1];
  }

  v12 = [v23 objectForKeyedSubscript:@"ServiceNavigationItemOptionRightButtonTitle"];
  v13 = [v23 objectForKeyedSubscript:@"ServiceNavigationItemOptionRightButtonStyle"];
  v14 = [v23 objectForKeyedSubscript:@"ServiceNavigationItemOptionRightButtonEnabled"];
  v15 = [v14 BOOLValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v13 integerValue];
      v17 = [(SKAccountPageViewController *)self navigationItem];
      v18 = [v17 rightBarButtonItem];

      if (v18)
      {
        [v18 setTitle:v12];
        [v18 setStyle:v16];
        [v18 setEnabled:v15];
      }

      else
      {
        v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v12 style:v16 target:self action:sel__bridgedRightButtonPressed_];
        [v19 setEnabled:v15];
        v20 = [(SKAccountPageViewController *)self navigationItem];
        [v20 setRightBarButtonItem:v19];
      }
    }
  }

  v21 = [v23 objectForKeyedSubscript:@"ServiceNavigationItemOptionTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [(SKAccountPageViewController *)self navigationItem];
    [v22 setTitle:v21];
  }
}

- (void)_pushBridgedViewControllerAnimated:(BOOL)a3 options:(id)a4
{
  v6 = a4;
  v7 = [(SKAccountPageViewController *)self preWarmedViewController];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [[SKAccountPageViewController alloc] initWithAccountURL:0 forceLegacy:1];
  }

  v10 = v9;

  objc_initWeak(&location, v10);
  v11 = [(SKAccountPageViewController *)v10 connectionSetupPromise];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__SKAccountPageViewController__pushBridgedViewControllerAnimated_options___block_invoke;
  v13[3] = &unk_1E7B27BA8;
  objc_copyWeak(&v15, &location);
  v13[4] = self;
  v12 = v6;
  v14 = v12;
  v16 = a3;
  [v11 addFinishBlock:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __74__SKAccountPageViewController__pushBridgedViewControllerAnimated_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) account];
  [WeakRetained setAccount:v2];

  v3 = [*(a1 + 32) delegate];
  [WeakRetained setDelegate:v3];

  [WeakRetained setPresentingAccountPageViewController:*(a1 + 32)];
  [WeakRetained setType:1];
  [WeakRetained _setupRemoteViewController:1];
  [WeakRetained _setBridgedNavigationItemWithOptions:*(a1 + 40)];
  v4 = [*(a1 + 32) navigationController];
  [v4 pushViewController:WeakRetained animated:*(a1 + 56)];

  [*(a1 + 32) setPreWarmedViewController:0];
}

- (void)_popBridgedViewControllersToIndex:(unint64_t)a3
{
  if (a3 == -1)
  {

    [(SKAccountPageViewController *)self _popAllBridgedNavigationViewControllers];
  }

  else
  {
    v4 = [(SKAccountPageViewController *)self _indexForFirstBridgedNavigationViewController]+ a3;
    v5 = [(SKAccountPageViewController *)self navigationController];
    v6 = [v5 viewControllers];
    v7 = [v6 count];

    if (v7 > v4)
    {
      v8 = [(SKAccountPageViewController *)self navigationController];
      v9 = [v8 viewControllers];
      v12 = [v9 objectAtIndex:v4];

      v10 = [(SKAccountPageViewController *)self navigationController];
      v11 = [v10 popToViewController:v12 animated:1];
    }
  }
}

- (void)_presentBridgedViewController
{
  v3 = [(SKAccountPageViewController *)self preWarmedViewController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [[SKAccountPageViewController alloc] initWithAccountURL:0 forceLegacy:1];
  }

  v6 = v5;

  objc_initWeak(&location, v6);
  v7 = [(SKAccountPageViewController *)v6 connectionSetupPromise];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__SKAccountPageViewController__presentBridgedViewController__block_invoke;
  v8[3] = &unk_1E7B27BD0;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  [v7 addFinishBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __60__SKAccountPageViewController__presentBridgedViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) account];
  [WeakRetained setAccount:v2];

  v3 = [*(a1 + 32) delegate];
  [WeakRetained setDelegate:v3];

  [WeakRetained setPresentingAccountPageViewController:*(a1 + 32)];
  [WeakRetained setType:2];
  [WeakRetained _setupRemoteViewController:1];
  [WeakRetained setModalPresentationStyle:5];
  v4 = [WeakRetained view];
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v5];

  v6 = [WeakRetained view];
  [v6 setOpaque:0];

  [*(a1 + 32) presentModalViewController:WeakRetained withTransition:0];
  [*(a1 + 32) setPreWarmedViewController:0];
}

- (void)redeemCameraViewController:(id)a3 didFinishWithRedeem:(id)a4
{
  v8 = a3;
  redeemCompletionHandler = self->redeemCompletionHandler;
  if (redeemCompletionHandler)
  {
    redeemCompletionHandler[2](redeemCompletionHandler, a4, 0);
    v7 = self->redeemCompletionHandler;
    self->redeemCompletionHandler = 0;
  }

  [v8 dismissViewControllerAnimated:1 completion:0];
}

- (void)overrideRedeemOperationWithCode:(id)a3 cameraRecognized:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69D4938];
  v9 = a5;
  v10 = a3;
  v11 = [v8 sharedConfig];
  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_9;
  }

  LODWORD(v18) = 138543362;
  *(&v18 + 4) = objc_opt_class();
  v15 = *(&v18 + 4);
  LODWORD(v17) = 12;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v18, v17, v18}];
    free(v16);
    SSFileLog();
LABEL_9:
  }

  [(SKUIServiceAccountPageViewController *)self->_serviceProxy performRedeemOperationWithCode:v10 cameraRecognized:v5 completion:v9];
}

- (void)_beginURLParsing:(id)a3 forceLegacy:(BOOL)a4
{
  v6 = a3;
  v7 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SKAccountPageViewController__beginURLParsing_forceLegacy___block_invoke;
  block[3] = &unk_1E7B27C48;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

void __60__SKAccountPageViewController__beginURLParsing_forceLegacy___block_invoke(uint64_t a1)
{
  v27[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v26[0] = @"paymentsShipping";
  v26[1] = @"manageSubscriptions";
  v27[0] = @"paymentsAndShippingUrl";
  v27[1] = @"manageSubscriptionsUrl";
  v26[2] = @"editBilling";
  v27[2] = @"editBillingUrl";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v4 = [v2 path];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = [v2 path];
    NSLog(&cfstr_GenericConfigU.isa, v6, v5);

    v7 = *(a1 + 40);
    v8 = v5;
LABEL_3:
    v9 = [v7 _URLForBagKey:v8];
LABEL_4:
    v10 = v9;

    v2 = v10;
    goto LABEL_5;
  }

  v16 = [v2 pathComponents];
  v17 = [v16 firstObject];
  v18 = [v17 isEqual:@"account"];

  if ((v18 & 1) != 0 || !v2)
  {
    NSLog(&cfstr_AccountUrlConf.isa);
    v22 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v23 = [v22 ams_activeiTunesAccount];

    v7 = *(a1 + 40);
    if (v23)
    {
      v8 = @"modifyAccount";
    }

    else
    {
      v8 = @"signup";
    }

    goto LABEL_3;
  }

  v19 = [v2 pathComponents];
  v20 = [v19 firstObject];
  v21 = [v20 isEqual:@"redeem"];

  if (v21)
  {
    NSLog(&cfstr_RedeemUrlConfi.isa);
    v9 = [*(a1 + 40) _redeemURLFromRedeemConfigURL:v2];
    goto LABEL_4;
  }

LABEL_5:
  if (*(a1 + 48) == 1)
  {
    v11 = [MEMORY[0x1E698CAD0] promiseWithResult:&unk_1F29D51C8];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E698CB70]);
    v13 = +[SKAccountPageBagProvider sharedBag];
    v14 = [v12 initWithBag:v13];

    v11 = [v14 typeForURL:v2];
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __60__SKAccountPageViewController__beginURLParsing_forceLegacy___block_invoke_119;
  v24[3] = &unk_1E7B27C20;
  v24[4] = *(a1 + 40);
  v25 = v2;
  v15 = v2;
  [v11 addFinishBlock:v24];
}

void __60__SKAccountPageViewController__beginURLParsing_forceLegacy___block_invoke_119(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__SKAccountPageViewController__beginURLParsing_forceLegacy___block_invoke_2;
  v10[3] = &unk_1E7B27BF8;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __60__SKAccountPageViewController__beginURLParsing_forceLegacy___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 992), *(a1 + 40));
  if (*(a1 + 48))
  {
    NSLog(&cfstr_CouldDetermine.isa, *(a1 + 48));
    v2 = *(a1 + 32);

    [v2 _setupLegacyContainer];
  }

  else
  {
    v3 = [*(a1 + 56) integerValue];
    switch(v3)
    {
      case 2:
        NSLog(&cfstr_DynamicUiViewC.isa);
        break;
      case 1:
        [*(a1 + 32) _setupLegacyContainer];
        break;
      case 0:
        [*(a1 + 32) _setupWebViewController];
        break;
    }

    v4 = [*(a1 + 32) connectionSetupPromise];
    [v4 finishWithSuccess:*(a1 + 48) == 0 error:?];
  }
}

- (id)_URLForBagKey:(id)a3
{
  v3 = MEMORY[0x1E69D49F8];
  v4 = a3;
  v5 = [v3 contextWithBagType:0];
  v6 = [objc_alloc(MEMORY[0x1E69D49F0]) initWithURLBagContext:v5];
  v7 = [v6 valueForKey:v4 error:0];

  objc_opt_class();
  v8 = 0;
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  }

  return v8;
}

- (id)_redeemURLFromRedeemConfigURL:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 pathComponents];
  v6 = [v5 count];

  if (v6 < 2)
  {
    v7 = [MEMORY[0x1E696AF20] componentsWithURL:v4 resolvingAgainstBaseURL:1];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = [v7 queryItems];
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v24 = self;
      v12 = *v26;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [v14 name];
          v16 = [v15 isEqualToString:@"code"];

          if (v16)
          {
            v8 = [v14 value];
            goto LABEL_13;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v8 = 0;
LABEL_13:
      self = v24;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = [v4 pathComponents];
    v8 = [v7 objectAtIndexedSubscript:1];
  }

  v17 = [(SKAccountPageViewController *)self _URLForBagKey:@"redeemCodeLanding"];
  if (v17 && v8)
  {
    v18 = [MEMORY[0x1E696AF20] componentsWithURL:v17 resolvingAgainstBaseURL:1];
    v19 = [MEMORY[0x1E696AF60] queryItemWithName:@"code" value:v8];
    v20 = [v18 queryItems];
    v21 = [v20 arrayByAddingObject:v19];
    [v18 setQueryItems:v21];

    v22 = [v18 URL];

    v17 = v22;
  }

  return v17;
}

- (void)_setupWebViewController
{
  v11 = [getAMSUIWebViewControllerClass() createBagForSubProfile];
  v3 = [(SKAccountPageViewController *)self account];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v5 = [v6 ams_activeiTunesAccount];
  }

  v7 = [objc_alloc(getAMSUIWebViewControllerClass()) initWithBag:v11 account:v5 clientInfo:0];
  webViewController = self->_webViewController;
  self->_webViewController = v7;

  v9 = [(AMSUIWebViewController *)self->_webViewController loadURL:self->_accountURL];
  [v9 addFinishBlock:&__block_literal_global_1];
  self->_isRemoteViewControllerReady = 1;
  [(SKAccountPageViewController *)self _endDelayingPresentation];
  v10 = [(SKAccountPageViewController *)self parentViewController];
  [v10 _endDelayingPresentation];

  [(SKAccountPageViewController *)self setModalPresentationStyle:2];
  [(SKAccountPageViewController *)self setModalInPresentation:1];
  [(SKAccountPageViewController *)self _addRemoteView];
}

void __54__SKAccountPageViewController__setupWebViewController__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69D4938] sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  v11 = 138412290;
  v12 = v3;
  LODWORD(v10) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v11, v10}];
    free(v9);
    SSFileLog();
LABEL_10:
  }
}

- (void)_setupLegacyContainer
{
  v3 = [[SKInvocationQueueProxy alloc] initWithProtocol:&unk_1F2A06538];
  serviceProxy = self->_serviceProxy;
  self->_serviceProxy = v3;

  [(SKAccountPageViewController *)self _requestRemoteViewController];
  [(SKAccountPageViewController *)self setModalPresentationStyle:2];
  [(SKAccountPageViewController *)self setModalInPresentation:1];
  [(SKAccountPageViewController *)self _setupNotificationCenter];

  [(SKAccountPageViewController *)self _addRemoteView];
}

- (void)_setupNavigationItem
{
  v4 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v4 configureWithDefaultBackground];
  v3 = [(SKAccountPageViewController *)self navigationItem];
  [v3 setScrollEdgeAppearance:v4];
}

- (id)_overrideScheme:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [v3 scheme];
  if ([v6 isEqualToString:@"http"])
  {

LABEL_5:
    v9 = v3;
    goto LABEL_6;
  }

  v7 = [v3 scheme];
  v8 = [v7 isEqualToString:@"https"];

  if (v8)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E696AF20] componentsWithURL:v3 resolvingAgainstBaseURL:1];
  [v11 setScheme:@"https"];
  v9 = [v11 URL];

LABEL_6:

  return v9;
}

- (void)_popAllBridgedNavigationViewControllers
{
  v3 = [(SKAccountPageViewController *)self _indexForFirstBridgedNavigationViewController]- 1;
  v4 = [(SKAccountPageViewController *)self navigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 count];

  if (v6 > v3)
  {
    v7 = [(SKAccountPageViewController *)self navigationController];
    v8 = [v7 viewControllers];
    v11 = [v8 objectAtIndex:v3];

    v9 = [(SKAccountPageViewController *)self navigationController];
    v10 = [v9 popToViewController:v11 animated:1];
  }
}

- (unint64_t)_indexForFirstBridgedNavigationViewController
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(SKAccountPageViewController *)self navigationController];
  v4 = [v3 viewControllers];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [(SKAccountPageViewController *)self navigationController];
          v12 = [v11 viewControllers];
          v10 = [v12 indexOfObject:v9];

          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  return v10;
}

- (BOOL)_isBridgedNavigationViewController
{
  v3 = [(SKAccountPageViewController *)self navigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 count] > 1 || -[SKAccountPageViewController type](self, "type") == 1;

  return v5;
}

- (void)_addRemoteView
{
  if (!self->_isLoading)
  {
    v4 = self->_remoteViewController;
    v5 = v4;
    if (self->_webViewController)
    {
      v13 = v4;
      v6 = [(SKAccountPageViewController *)self navigationController];

      if (v6)
      {
        v7 = self->_webViewController;
      }

      else
      {
        v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_webViewController];
      }

      v8 = v7;

      [(SKAccountPageViewController *)self addChildViewController:v8];
      v9 = [(SKAccountPageViewController *)self view];
      v10 = [(AMSUIWebViewController *)v8 view];
      [v9 addSubview:v10];

      v4 = [(AMSUIWebViewController *)v8 didMoveToParentViewController:self];
      v5 = v8;
    }

    if (v5)
    {
      v14 = v5;
      v4 = [(SKAccountPageViewController *)self isViewLoaded];
      v5 = v14;
      if (v4)
      {
        v11 = [(SKAccountPageViewController *)self view];
        v12 = [(SKRemoteAccountPageViewController *)v14 view];
        [v11 bounds];
        [v12 setFrame:?];
        [v12 setAutoresizingMask:18];
        [v11 addSubview:v12];

        v5 = v14;
      }
    }

    MEMORY[0x1EEE66BB8](v4, v5);
  }
}

- (void)_setupPreWarmedViewController
{
  v3 = [(SKAccountPageViewController *)self preWarmedViewController];

  if (!v3)
  {
    v5 = [[SKAccountPageViewController alloc] initWithAccountURL:0 forceLegacy:1];
    v4 = [(SKAccountPageViewController *)self account];
    [(SKAccountPageViewController *)v5 setAccount:v4];

    [(SKAccountPageViewController *)self setPreWarmedViewController:v5];
  }
}

- (void)_setupRemoteViewController:(BOOL)a3
{
  if (!self->_isRemoteViewControllerSetup || a3)
  {
    if (self->_account)
    {
      [(SKUIServiceAccountPageViewController *)self->_serviceProxy setAccount:?];
    }

    if (self->_referrer)
    {
      [(SKUIServiceAccountPageViewController *)self->_serviceProxy setReferrer:?];
    }

    if ([(SKAccountPageViewController *)self _isBridgedNavigationViewController]|| self->_loadBlock)
    {
      [(SKUIServiceAccountPageViewController *)self->_serviceProxy setType:1];
      if ([(SKAccountPageViewController *)self type]== 1)
      {
        [(SKUIServiceAccountPageViewController *)self->_serviceProxy setLoadFromBridgedNavigation:1];
      }
    }

    else
    {
      if ([(SKAccountPageViewController *)self type]== 2)
      {
        [(SKUIServiceAccountPageViewController *)self->_serviceProxy setType:2];
        [(SKUIServiceAccountPageViewController *)self->_serviceProxy setLoadFromBridgedNavigation:0];
      }

      v5 = [(SKAccountPageViewController *)self navigationController];
      [v5 setNavigationBarHidden:1];
    }

    self->_isRemoteViewControllerSetup = 1;
  }
}

- (void)_requestRemoteViewController
{
  v3 = [MEMORY[0x1E69D4938] sharedConfig];
  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v14[0] = 0;
  LODWORD(v11) = 2;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, v14, v11}];
    free(v8);
    SSFileLog();
LABEL_10:
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__SKAccountPageViewController__requestRemoteViewController__block_invoke;
  v13[3] = &unk_1E7B27A78;
  v13[4] = self;
  [(SKAccountPageViewController *)self _beginDelayingPresentation:v13 cancellationHandler:10.0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__SKAccountPageViewController__requestRemoteViewController__block_invoke_2;
  v12[3] = &unk_1E7B27C90;
  v12[4] = self;
  v9 = [SKRemoteAccountPageViewController requestViewController:@"ServiceAccountPageViewController" fromServiceWithBundleIdentifier:@"com.apple.ios.StoreKitUIService" connectionHandler:v12];
  cancelRequest = self->_cancelRequest;
  self->_cancelRequest = v9;
}

void __59__SKAccountPageViewController__requestRemoteViewController__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v6 = a3;
  if (v13)
  {
    objc_storeStrong((*(a1 + 32) + 1032), a2);
    [*(*(a1 + 32) + 1032) setAccountPageViewController:?];
    v7 = *(a1 + 32);
    v8 = *(v7 + 1040);
    v9 = [*(v7 + 1032) serviceViewControllerProxy];
    [v8 setInvocationTarget:v9];

    [*(a1 + 32) _setupRemoteViewController:0];
    [*(a1 + 32) addChildViewController:*(*(a1 + 32) + 1032)];
  }

  else
  {
    NSLog(&cfstr_CouldNotReques.isa, v6);
    [*(a1 + 32) _didPrepareWithResult:0 error:v6];
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 1000);
  *(v10 + 1000) = 0;

  *(*(a1 + 32) + 1048) = 1;
  [*(a1 + 32) _endDelayingPresentation];
  v12 = [*(a1 + 32) parentViewController];
  [v12 _endDelayingPresentation];
}

- (SKAccountPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SKAccountPageViewController)presentingAccountPageViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingAccountPageViewController);

  return WeakRetained;
}

@end