@interface SKStoreProductActivityViewController
- (SKStoreProductActivityViewController)initWithParameters:(id)a3;
- (SKStoreProductActivityViewControllerDelegate)delegate;
- (void)_addRemoteView;
- (void)_didFinishWithResult:(unint64_t)a3 error:(id)a4;
- (void)_requestRemoteViewController;
- (void)dealloc;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SKStoreProductActivityViewController

- (SKStoreProductActivityViewController)initWithParameters:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SKStoreProductActivityViewController;
  v5 = [(SKStoreProductActivityViewController *)&v19 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [[SKInvocationQueueProxy alloc] initWithProtocol:&unk_1F2A06718];
    serviceProxy = v5->_serviceProxy;
    v5->_serviceProxy = v6;

    v8 = [v4 copy];
    parameters = v5->_parameters;
    v5->_parameters = v8;

    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    v12 = [v11 componentsSeparatedByString:@"-"];
    v13 = [v12 firstObject];
    logKey = v5->_logKey;
    v5->_logKey = v13;

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

  v6 = [(_UIAsyncInvocation *)self->_cancelRequest invoke];
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
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(SKStoreProductActivityViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(SKStoreProductActivityViewController *)self _requestRemoteViewController];
  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__viewTapped_];
  v6 = [(SKStoreProductActivityViewController *)self view];
  [v6 setUserInteractionEnabled:1];

  v7 = [(SKStoreProductActivityViewController *)self view];
  [v7 addGestureRecognizer:v5];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
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
  [(SKStoreProductActivityViewController *)&v10 viewWillDisappear:v3];
  serviceProxy = self->_serviceProxy;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(SKUIServiceProductActivityViewController *)serviceProxy finishImmediately:v9];
}

- (void)_didFinishWithResult:(unint64_t)a3 error:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
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

  v10 = [(SKStoreProductActivityViewController *)self presentingViewController];
  if (v6)
  {
    v11 = MEMORY[0x1E69DC650];
    v12 = [v6 localizedDescription];
    v13 = [v11 alertControllerWithTitle:v12 message:0 preferredStyle:1];

    v14 = MEMORY[0x1E69DC648];
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"OK" value:&stru_1F29BCE20 table:0];
    v17 = [v14 actionWithTitle:v16 style:0 handler:0];
    [v13 addAction:v17];

    [v10 presentViewController:v13 animated:1 completion:0];
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
      [v22 productActivityViewController:self didFinishWithResult:a3];
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
    v5 = [(SKRemoteProductActivityViewController *)self->_remoteViewController view];
    v3 = [MEMORY[0x1E69DC888] clearColor];
    [v5 setBackgroundColor:v3];

    v4 = [(SKStoreProductActivityViewController *)self view];
    [v4 addSubview:v5];
    [v4 bounds];
    [v5 setFrame:?];
    [v5 setAutoresizingMask:18];
  }
}

- (SKStoreProductActivityViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end