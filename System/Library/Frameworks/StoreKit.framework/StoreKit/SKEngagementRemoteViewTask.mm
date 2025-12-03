@interface SKEngagementRemoteViewTask
- (SKEngagementRemoteViewTask)initWithRequestData:(id)data presentingViewController:(id)controller windowScene:(id)scene;
- (void)_presentViewController:(id)controller;
- (void)_unblock;
- (void)engagementTaskDidFinishWithResult:(id)result resultData:(id)data error:(id)error completion:(id)completion;
- (void)preferredContentSizeDidChange:(CGSize)change;
- (void)presentEngagement;
@end

@implementation SKEngagementRemoteViewTask

- (SKEngagementRemoteViewTask)initWithRequestData:(id)data presentingViewController:(id)controller windowScene:(id)scene
{
  dataCopy = data;
  controllerCopy = controller;
  sceneCopy = scene;
  v20.receiver = self;
  v20.super_class = SKEngagementRemoteViewTask;
  v12 = [(SKEngagementRemoteViewTask *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestData, data);
    objc_storeStrong(&v13->_viewController, controller);
    objc_storeStrong(&v13->_scene, scene);
    presentationWindow = v13->_presentationWindow;
    v13->_presentationWindow = 0;

    v15 = dispatch_group_create();
    dispatchGroup = v13->_dispatchGroup;
    v13->_dispatchGroup = v15;

    v17 = dispatch_queue_create("com.StoreKit.AMSUIEngagementRemoteViewTask", 0);
    workQueue = v13->_workQueue;
    v13->_workQueue = v17;
  }

  return v13;
}

- (void)presentEngagement
{
  workQueue = [(SKEngagementRemoteViewTask *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SKEngagementRemoteViewTask_presentEngagement__block_invoke;
  block[3] = &unk_1E7B27980;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __47__SKEngagementRemoteViewTask_presentEngagement__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = objc_opt_class();
    v3 = [*(a1 + 32) requestData];
    *buf = 138543618;
    v16 = v2;
    v17 = 2114;
    v18 = v3;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%{public}@: Presenting system engagement request. Request: %{public}@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SKEngagementRemoteViewTask_presentEngagement__block_invoke_1;
  block[3] = &unk_1E7B27980;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v4 = [*(a1 + 32) dispatchGroup];
  dispatch_group_enter(v4);

  v5 = [*(a1 + 32) dispatchGroup];
  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = [*(a1 + 32) result];
    v8 = [*(a1 + 32) error];
    *buf = 138543874;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%{public}@: Engagement task finished. Result: %{public}@, error: %{public}@", buf, 0x20u);
  }

  [*(a1 + 32) setDispatchGroup:0];
  v9 = [*(a1 + 32) completion];

  if (v9)
  {
    v10 = [*(a1 + 32) completion];
    v11 = [*(a1 + 32) result];
    v12 = [*(a1 + 32) resultData];
    v13 = [*(a1 + 32) error];
    (v10)[2](v10, v11, v12, v13);
  }
}

void __47__SKEngagementRemoteViewTask_presentEngagement__block_invoke_1(uint64_t a1)
{
  v2 = objc_alloc_init(SKRemoteEngagementPresenterViewController);
  [*(a1 + 32) setRemoteViewController:v2];

  v3 = *(a1 + 32);
  v4 = [v3 remoteViewController];
  [v4 setDelegate:v3];

  v5 = [*(a1 + 32) remoteViewController];
  v6 = [*(a1 + 32) requestData];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__SKEngagementRemoteViewTask_presentEngagement__block_invoke_2;
  v9[3] = &unk_1E7B278B0;
  v9[4] = *(a1 + 32);
  [v5 presentEngagementRequestData:v6 completion:v9];

  v7 = *(a1 + 32);
  v8 = [v7 remoteViewController];
  [v7 _presentViewController:v8];
}

uint64_t __47__SKEngagementRemoteViewTask_presentEngagement__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) setError:a2];
    v3 = *(v2 + 32);

    return [v3 _unblock];
  }

  return result;
}

- (void)engagementTaskDidFinishWithResult:(id)result resultData:(id)data error:(id)error completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  dataCopy = data;
  errorCopy = error;
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v16 = 138543874;
    v17 = objc_opt_class();
    v18 = 2114;
    v19 = resultCopy;
    v20 = 2114;
    v21 = errorCopy;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%{public}@: remote engagement task finished. Result: %{public}@, error: %{public}@", &v16, 0x20u);
  }

  [(SKEngagementRemoteViewTask *)self setResult:resultCopy];
  [(SKEngagementRemoteViewTask *)self setResultData:dataCopy];
  [(SKEngagementRemoteViewTask *)self setError:errorCopy];
  remoteViewController = [(SKEngagementRemoteViewTask *)self remoteViewController];
  [remoteViewController dismissViewControllerAnimated:1 completion:0];

  viewController = [(SKEngagementRemoteViewTask *)self viewController];
  [viewController dismissViewControllerAnimated:1 completion:0];

  [(SKEngagementRemoteViewTask *)self setPresentationWindow:0];
  completionCopy[2](completionCopy);
  [(SKEngagementRemoteViewTask *)self _unblock];
}

- (void)preferredContentSizeDidChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%{public}@: Preferred content size did change", &v7, 0xCu);
  }

  remoteViewController = [(SKEngagementRemoteViewTask *)self remoteViewController];
  [remoteViewController setPreferredContentSize:{width, height}];
}

- (void)_unblock
{
  dispatchGroup = [(SKEngagementRemoteViewTask *)self dispatchGroup];

  if (dispatchGroup)
  {
    dispatchGroup2 = [(SKEngagementRemoteViewTask *)self dispatchGroup];
    dispatch_group_leave(dispatchGroup2);
  }
}

- (void)_presentViewController:(id)controller
{
  controllerCopy = controller;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__SKEngagementRemoteViewTask__presentViewController___block_invoke;
  v6[3] = &unk_1E7B28640;
  v6[4] = self;
  v7 = controllerCopy;
  v5 = controllerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __53__SKEngagementRemoteViewTask__presentViewController___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) viewController];
  v4 = [v3 presentedViewController];

  if (v4)
  {
    do
    {
      v5 = [v3 presentedViewController];

      v6 = [v5 presentedViewController];

      v3 = v5;
    }

    while (v6);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = v3;
    if (v3)
    {
LABEL_4:
      v7 = [SKRemoteEngagementPresentationWindow alloc];
      v8 = [*(a1 + 32) scene];
      v9 = [(UIApplicationRotationFollowingWindow *)v7 initWithWindowScene:v8];

      [*(a1 + 32) setPresentationWindow:v9];
      [(SKRemoteEngagementPresentationWindow *)v9 setHidden:0];
      [(SKRemoteEngagementPresentationWindow *)v9 presentViewController:v5 animated:0 completion:&__block_literal_global_7];
      [*(a1 + 40) setModalPresentationStyle:5];
      [v5 presentViewController:*(a1 + 40) animated:0 completion:0];

      goto LABEL_8;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __53__SKEngagementRemoteViewTask__presentViewController___block_invoke_cold_1(v2);
  }

LABEL_8:
}

void __53__SKEngagementRemoteViewTask__presentViewController___block_invoke_cold_1(uint64_t *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = 138543362;
  v3 = v1;
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%{public}@: Presenting view controller is nil", &v2, 0xCu);
}

@end