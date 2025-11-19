@interface SKStoreReviewViewController
- (SKStoreReviewViewController)initWithReviewRequestToken:(id)a3 scene:(id)a4;
- (void)_addRemoteView;
- (void)_didFinishWithResult:(unint64_t)a3 error:(id)a4;
- (void)_requestRemoteViewController;
- (void)dealloc;
- (void)keyboardWillShow:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SKStoreReviewViewController

- (SKStoreReviewViewController)initWithReviewRequestToken:(id)a3 scene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SKStoreReviewViewController;
  v8 = [(SKStoreReviewViewController *)&v14 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[SKInvocationQueueProxy alloc] initWithProtocol:&unk_1F2A06598];
    serviceProxy = v8->_serviceProxy;
    v8->_serviceProxy = v9;

    v11 = [v6 copy];
    reviewRequestToken = v8->_reviewRequestToken;
    v8->_reviewRequestToken = v11;

    objc_storeStrong(&v8->_scene, a4);
    [(SKStoreReviewViewController *)v8 setModalPresentationStyle:17];
    [(SKStoreReviewViewController *)v8 setModalTransitionStyle:12];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  [v4 restoreFirstResponder];

  [(SKStoreReviewViewController *)self setPresentationWindow:0];
  v5 = [(_UIAsyncInvocation *)self->_cancelRequest invoke];
  [(SKUIServiceReviewViewController *)self->_serviceProxy setInvocationTarget:0];
  [(SKRemoteReviewViewController *)self->_remoteViewController setReviewViewController:0];
  [(SKRemoteReviewViewController *)self->_remoteViewController setDelegate:0];
  v6.receiver = self;
  v6.super_class = SKStoreReviewViewController;
  [(SKStoreReviewViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SKStoreReviewViewController;
  [(SKStoreReviewViewController *)&v6 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  v4 = [MEMORY[0x1E69DC888] clearColor];
  v5 = [(SKStoreReviewViewController *)self view];
  [v5 setBackgroundColor:v4];

  [(SKStoreReviewViewController *)self _requestRemoteViewController];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = SKStoreReviewViewController;
  [(SKStoreReviewViewController *)&v7 viewWillDisappear:?];
  v5 = [(SKStoreReviewViewController *)self serviceProxy];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 finishImmediately:v6];
}

- (void)_didFinishWithResult:(unint64_t)a3 error:(id)a4
{
  v9 = a4;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = [[SKXPCConnection alloc] initWithServiceName:0x1F29BF4C0];
    v7 = SSXPCCreateMessageDictionary();
    v8 = [(SKStoreReviewViewController *)self reviewRequestToken];
    MEMORY[0x1B274B250](v7, "1", v8);

    [(SKXPCConnection *)v6 sendMessage:v7];
  }

  if (([(SKStoreReviewViewController *)self isBeingDismissed]& 1) == 0)
  {
    [(SKStoreReviewViewController *)self dismissViewControllerAnimated:0 completion:0];
  }

  [(SKStoreReviewViewController *)self setPresentationWindow:0];
}

- (void)_requestRemoteViewController
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__SKStoreReviewViewController__requestRemoteViewController__block_invoke;
  v11[3] = &unk_1E7B27A78;
  v11[4] = self;
  [(SKStoreReviewViewController *)self _beginDelayingPresentation:v11 cancellationHandler:10.0];
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __59__SKStoreReviewViewController__requestRemoteViewController__block_invoke_2;
  v7 = &unk_1E7B27AA0;
  objc_copyWeak(&v9, &location);
  v8 = self;
  v3 = [SKRemoteReviewViewController requestViewController:@"ServiceReviewViewController" fromServiceWithBundleIdentifier:@"com.apple.ios.StoreKitUIService" connectionHandler:&v4];
  [(SKStoreReviewViewController *)self setCancelRequest:v3, v4, v5, v6, v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__SKStoreReviewViewController__requestRemoteViewController__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v5)
  {
    [WeakRetained setRemoteViewController:v5];
    v9 = [v8 remoteViewController];
    [v9 setReviewViewController:v8];

    v10 = [v8 remoteViewController];
    [v10 setDelegate:v8];

    v11 = [*(*(a1 + 32) + 1016) serviceViewControllerProxy];
    v12 = [v8 serviceProxy];
    [v12 setInvocationTarget:v11];

    [v8 addChildViewController:*(*(a1 + 32) + 1016)];
    [v8 _addRemoteView];
    v13 = [v8 remoteViewController];
    [v13 didMoveToParentViewController:*(a1 + 32)];

    v14 = [v8 reviewRequestToken];
    v15 = [v14 isEqualToString:*MEMORY[0x1E69D4D88]];

    v16 = [v8 serviceProxy];
    v19 = @"SKUIServiceReviewSandboxMode";
    v17 = [MEMORY[0x1E696AD98] numberWithBool:v15];
    v20[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [v16 setupWithParameters:v18];
  }

  else
  {
    [WeakRetained _didFinishWithResult:0 error:v6];
  }

  [v8 setCancelRequest:0];
  [v8 _endDelayingPresentation];
}

- (void)_addRemoteView
{
  v3 = [(SKStoreReviewViewController *)self remoteViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [(SKStoreReviewViewController *)self isViewLoaded];

    if (v5)
    {
      v6 = [(SKStoreReviewViewController *)self remoteViewController];
      v9 = [v6 view];

      v7 = [MEMORY[0x1E69DC888] clearColor];
      [v9 setBackgroundColor:v7];

      v8 = [(SKStoreReviewViewController *)self view];
      [v8 bounds];
      [v9 setFrame:?];
      [v9 setAutoresizingMask:18];
      [v8 addSubview:v9];
    }
  }
}

- (void)keyboardWillShow:(id)a3
{
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [(SKStoreReviewViewController *)self scene];
  [v5 resignFirstResponderInScene:v4];
}

@end