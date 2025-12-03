@interface SKRemoteEngagementPresenterViewController
- (SKEngagementPresenterProtocol)delegate;
- (SKRemoteEngagementPresenterViewController)init;
- (void)_addRemoteView;
- (void)_loadRemoteViewController;
- (void)presentEngagementRequestData:(id)data completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation SKRemoteEngagementPresenterViewController

- (SKRemoteEngagementPresenterViewController)init
{
  v8.receiver = self;
  v8.super_class = SKRemoteEngagementPresenterViewController;
  v2 = [(SKRemoteEngagementPresenterViewController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    remoteViewControllerSemaphore = v2->_remoteViewControllerSemaphore;
    v2->_remoteViewControllerSemaphore = v3;

    v5 = dispatch_queue_create("SKRemoteEngagementPresenterViewController engagement presentation queue", 0);
    engagementPresentationQueue = v2->_engagementPresentationQueue;
    v2->_engagementPresentationQueue = v5;
  }

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SKRemoteEngagementPresenterViewController;
  [(SKRemoteEngagementPresenterViewController *)&v3 viewDidLoad];
  [(SKRemoteEngagementPresenterViewController *)self _loadRemoteViewController];
}

- (void)presentEngagementRequestData:(id)data completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = dataCopy;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Present engagement request: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  engagementPresentationQueue = self->_engagementPresentationQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__SKRemoteEngagementPresenterViewController_presentEngagementRequestData_completion___block_invoke;
  v11[3] = &unk_1E7B27DF8;
  objc_copyWeak(&v14, buf);
  v12 = dataCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = dataCopy;
  v10 = completionCopy;
  dispatch_async(engagementPresentationQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __85__SKRemoteEngagementPresenterViewController_presentEngagementRequestData_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained remoteViewControllerSemaphore];
  v4 = dispatch_time(0, 60000000000);
  v5 = dispatch_semaphore_wait(v3, v4);

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __85__SKRemoteEngagementPresenterViewController_presentEngagementRequestData_completion___block_invoke_cold_1();
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKErrorDomain" code:0 userInfo:0];
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, v6);
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__SKRemoteEngagementPresenterViewController_presentEngagementRequestData_completion___block_invoke_3;
    block[3] = &unk_1E7B27DD0;
    block[4] = *(a1 + 32);
    v10 = *(a1 + 48);
    v9 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __85__SKRemoteEngagementPresenterViewController_presentEngagementRequestData_completion___block_invoke_3(uint64_t a1)
{
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = __Block_byref_object_copy_;
  v17[3] = __Block_byref_object_dispose_;
  v18 = 0;
  v2 = [*(a1 + 32) remoteViewController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__SKRemoteEngagementPresenterViewController_presentEngagementRequestData_completion___block_invoke_4;
  v15[3] = &unk_1E7B27D80;
  v15[4] = &v16;
  v3 = [v2 serviceViewControllerProxyWithErrorHandler:v15];

  if (*(v17[0] + 40))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __85__SKRemoteEngagementPresenterViewController_presentEngagementRequestData_completion___block_invoke_3_cold_1(v17, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, *(v17[0] + 40));
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__SKRemoteEngagementPresenterViewController_presentEngagementRequestData_completion___block_invoke_6;
    v13[3] = &unk_1E7B27DA8;
    v12 = *(a1 + 40);
    v14 = *(a1 + 48);
    [v3 presentEngagementRequestData:v12 completion:v13];
  }

  _Block_object_dispose(&v16, 8);
}

void __85__SKRemoteEngagementPresenterViewController_presentEngagementRequestData_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __85__SKRemoteEngagementPresenterViewController_presentEngagementRequestData_completion___block_invoke_4_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void __85__SKRemoteEngagementPresenterViewController_presentEngagementRequestData_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __85__SKRemoteEngagementPresenterViewController_presentEngagementRequestData_completion___block_invoke_6_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Finished presenting engagement request with view service", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__SKRemoteEngagementPresenterViewController_presentEngagementRequestData_completion___block_invoke_7;
  v13[3] = &unk_1E7B27B30;
  v11 = *(a1 + 32);
  v14 = v3;
  v15 = v11;
  v12 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

- (void)_loadRemoteViewController
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__SKRemoteEngagementPresenterViewController__loadRemoteViewController__block_invoke;
  v4[3] = &unk_1E7B27AA0;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  v3 = [SKRemoteEngagementRemoteViewController requestViewController:@"ServiceRemoteEngagementViewController" fromServiceWithBundleIdentifier:@"com.apple.ios.StoreKitUIService" connectionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __70__SKRemoteEngagementPresenterViewController__loadRemoteViewController__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v12)
  {
    [WeakRetained setRemoteViewController:v12];
    v8 = [*(a1 + 32) delegate];
    v9 = [v7 remoteViewController];
    [v9 setDelegate:v8];

    [v7 addChildViewController:*(*(a1 + 32) + 1000)];
    [v7 _addRemoteView];
  }

  else
  {
    NSLog(&cfstr_CouldNotReques.isa, v5);
    [v7 dismissViewControllerAnimated:1 completion:0];
    v10 = [v7 delegate];
    [v10 engagementTaskDidFinishWithResult:0 resultData:0 error:v5 completion:&__block_literal_global_3];
  }

  v11 = [v7 remoteViewControllerSemaphore];
  dispatch_semaphore_signal(v11);
}

- (void)_addRemoteView
{
  if (self->_remoteViewController && [(SKRemoteEngagementPresenterViewController *)self isViewLoaded])
  {
    view = [(SKRemoteEngagementPresenterViewController *)self view];
    view2 = [(SKRemoteEngagementRemoteViewController *)self->_remoteViewController view];
    [view bounds];
    [view2 setFrame:?];
    [view2 setAutoresizingMask:18];
    [view addSubview:view2];
  }
}

- (SKEngagementPresenterProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end