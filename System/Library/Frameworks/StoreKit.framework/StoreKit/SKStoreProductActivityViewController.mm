@interface SKStoreProductActivityViewController
- (SKStoreProductActivityViewController)initWithParameters:(id)parameters;
- (SKStoreProductActivityViewControllerDelegate)delegate;
- (void)_addRemoteView;
- (void)_didFinishWithResult:(unint64_t)result error:(id)error;
- (void)_requestRemoteViewController;
- (void)dealloc;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SKStoreProductActivityViewController

- (SKStoreProductActivityViewController)initWithParameters:(id)parameters
{
  v24 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v19.receiver = self;
  v19.super_class = SKStoreProductActivityViewController;
  v5 = [(SKStoreProductActivityViewController *)&v19 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [[SKInvocationQueueProxy alloc] initWithProtocol:&unk_1F2A06718];
    serviceProxy = v5->_serviceProxy;
    v5->_serviceProxy = v6;

    v8 = [parametersCopy copy];
    parameters = v5->_parameters;
    v5->_parameters = v8;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v12 = [uUIDString componentsSeparatedByString:@"-"];
    firstObject = [v12 firstObject];
    logKey = v5->_logKey;
    v5->_logKey = firstObject;

    [(SKStoreProductActivityViewController *)v5 setModalPresentationStyle:17];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = v5->_logKey;
      *buf = 138543618;
      v21 = v15;
      v22 = 2114;
      v23 = v16;
      v17 = v15;
      _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] Start.", buf, 0x16u);
    }
  }

  return v5;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    logKey = self->_logKey;
    *buf = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = logKey;
    v5 = v3;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] Dealloc.", buf, 0x16u);
  }

  invoke = [(_UIAsyncInvocation *)self->_cancelRequest invoke];
  [(SKUIServiceProductActivityViewController *)self->_serviceProxy setInvocationTarget:0];
  [(SKRemoteProductActivityViewController *)self->_remoteViewController setProductActivityViewController:0];
  v7.receiver = self;
  v7.super_class = SKStoreProductActivityViewController;
  [(SKStoreProductActivityViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SKStoreProductActivityViewController;
  [(SKStoreProductActivityViewController *)&v8 viewDidLoad];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(SKStoreProductActivityViewController *)self view];
  [view setBackgroundColor:clearColor];

  [(SKStoreProductActivityViewController *)self _requestRemoteViewController];
  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__viewTapped_];
  view2 = [(SKStoreProductActivityViewController *)self view];
  [view2 setUserInteractionEnabled:1];

  view3 = [(SKStoreProductActivityViewController *)self view];
  [view3 addGestureRecognizer:v5];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v15 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    logKey = self->_logKey;
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = logKey;
    v7 = v5;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] Will disappear.", buf, 0x16u);
  }

  v10.receiver = self;
  v10.super_class = SKStoreProductActivityViewController;
  [(SKStoreProductActivityViewController *)&v10 viewWillDisappear:disappearCopy];
  serviceProxy = self->_serviceProxy;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:disappearCopy];
  [(SKUIServiceProductActivityViewController *)serviceProxy finishImmediately:v9];
}

- (void)_didFinishWithResult:(unint64_t)result error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    logKey = self->_logKey;
    *v23 = 138543618;
    *&v23[4] = v7;
    *&v23[12] = 2114;
    *&v23[14] = logKey;
    v9 = v7;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] Finished.", v23, 0x16u);
  }

  if (([(SKStoreProductActivityViewController *)self isBeingDismissed:*v23]& 1) == 0)
  {
    [(SKStoreProductActivityViewController *)self dismissViewControllerAnimated:0 completion:0];
  }

  presentingViewController = [(SKStoreProductActivityViewController *)self presentingViewController];
  if (errorCopy)
  {
    v11 = MEMORY[0x1E69DC650];
    localizedDescription = [errorCopy localizedDescription];
    v13 = [v11 alertControllerWithTitle:localizedDescription message:0 preferredStyle:1];

    v14 = MEMORY[0x1E69DC648];
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"OK" value:&stru_1F29BCE20 table:0];
    v17 = [v14 actionWithTitle:v16 style:0 handler:0];
    [v13 addAction:v17];

    [presentingViewController presentViewController:v13 animated:1 completion:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v19 = WeakRetained;
    v20 = objc_loadWeakRetained(&self->_delegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 productActivityViewController:self didFinishWithResult:result];
    }
  }
}

- (void)_requestRemoteViewController
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__SKStoreProductActivityViewController__requestRemoteViewController__block_invoke;
  v5[3] = &unk_1E7B27C90;
  v5[4] = self;
  v3 = [SKRemoteProductActivityViewController requestViewController:@"ServiceProductActivityViewController" fromServiceWithBundleIdentifier:@"com.apple.ios.StoreKitUIService" connectionHandler:v5];
  cancelRequest = self->_cancelRequest;
  self->_cancelRequest = v3;
}

void __68__SKStoreProductActivityViewController__requestRemoteViewController__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v11 = v6;
  if (v6)
  {
    objc_storeStrong(v7 + 126, a2);
    [*(*(a1 + 32) + 1008) setProductActivityViewController:?];
    v8 = [*(*(a1 + 32) + 1008) serviceViewControllerProxy];
    [*(*(a1 + 32) + 992) setInvocationTarget:v8];

    [*(a1 + 32) addChildViewController:*(*(a1 + 32) + 1008)];
    [*(a1 + 32) _addRemoteView];
    [*(*(a1 + 32) + 992) setupProductWithParameters:*(*(a1 + 32) + 1016)];
  }

  else
  {
    [v7 _didFinishWithResult:0 error:a3];
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 1000);
  *(v9 + 1000) = 0;
}

- (void)_addRemoteView
{
  if (self->_remoteViewController && [(SKStoreProductActivityViewController *)self isViewLoaded])
  {
    view = [(SKRemoteProductActivityViewController *)self->_remoteViewController view];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [view setBackgroundColor:clearColor];

    view2 = [(SKStoreProductActivityViewController *)self view];
    [view2 addSubview:view];
    [view2 bounds];
    [view setFrame:?];
    [view setAutoresizingMask:18];
  }
}

- (SKStoreProductActivityViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end