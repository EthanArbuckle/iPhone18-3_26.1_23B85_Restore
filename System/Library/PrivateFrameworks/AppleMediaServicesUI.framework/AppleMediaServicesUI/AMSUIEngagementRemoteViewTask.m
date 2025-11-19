@interface AMSUIEngagementRemoteViewTask
- (AMSUIEngagementRemoteViewTask)initWithRequest:(id)a3 presentingViewController:(id)a4;
- (CGSize)preferredContentSize;
- (id)_snapshotBagDataPromise;
- (id)presentEngagement;
- (void)_presentViewController:(id)a3;
- (void)_unblock;
- (void)engagementTaskDidFinishWithResult:(id)a3 error:(id)a4 completion:(id)a5;
- (void)preferredContentSizeDidChange:(CGSize)a3;
@end

@implementation AMSUIEngagementRemoteViewTask

- (AMSUIEngagementRemoteViewTask)initWithRequest:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AMSUIEngagementRemoteViewTask;
  v9 = [(AMSTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_viewController, a4);
    v10->_preferredContentSize = *MEMORY[0x1E695F060];
    v11 = dispatch_group_create();
    dispatchGroup = v10->_dispatchGroup;
    v10->_dispatchGroup = v11;
  }

  return v10;
}

- (id)presentEngagement
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AMSUIEngagementRemoteViewTask_presentEngagement__block_invoke;
  v4[3] = &unk_1E7F24B00;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithBlock:v4];

  return v2;
}

id __50__AMSUIEngagementRemoteViewTask_presentEngagement__block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = [*(a1 + 32) request];
    v9 = [v8 logKey];
    v10 = [*(a1 + 32) request];
    *buf = 138543874;
    v50 = v7;
    v51 = 2114;
    v52 = v9;
    v53 = 2114;
    v54 = v10;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting system engagement request. Request: %{public}@", buf, 0x20u);
  }

  v11 = [*(a1 + 32) bag];

  if (v11)
  {
    v12 = [*(a1 + 32) _snapshotBagDataPromise];
    v48 = 0;
    v11 = [v12 resultWithError:&v48];
    v13 = v48;

    if (v13)
    {
      v14 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v14)
      {
        v14 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        v17 = objc_opt_class();
        v18 = [*(a1 + 32) request];
        v19 = [v18 logKey];
        *buf = 138543874;
        v50 = v17;
        v51 = 2114;
        v52 = v19;
        v53 = 2114;
        v54 = v13;
        _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to snapshot bag. Error: %{public}@", buf, 0x20u);
      }
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__AMSUIEngagementRemoteViewTask_presentEngagement__block_invoke_4;
  aBlock[3] = &unk_1E7F24AB0;
  aBlock[4] = *(a1 + 32);
  v20 = v11;
  v47 = v20;
  v21 = _Block_copy(aBlock);
  v45 = 0;
  v22 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:@"com.apple.AppleMediaServicesUI.EngagementViewExtension" error:&v45];
  v23 = v45;
  if (v23)
  {
    [*(a1 + 32) setError:v23];
    [*(a1 + 32) _unblock];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__AMSUIEngagementRemoteViewTask_presentEngagement__block_invoke_4;
    block[3] = &unk_1E7F245E0;
    v43 = v22;
    v44 = v21;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v24 = [*(a1 + 32) dispatchGroup];
  dispatch_group_enter(v24);

  v25 = [*(a1 + 32) dispatchGroup];
  dispatch_group_wait(v25, 0xFFFFFFFFFFFFFFFFLL);

  v26 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v26)
  {
    v26 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v27 = [v26 OSLogObject];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(a1 + 32);
    v29 = objc_opt_class();
    v30 = [*(a1 + 32) request];
    [v30 logKey];
    v40 = a2;
    v31 = v41 = v20;
    [*(a1 + 32) result];
    v32 = v39 = v21;
    [*(a1 + 32) error];
    v33 = v23;
    v35 = v34 = v22;
    *buf = 138544130;
    v50 = v29;
    v51 = 2114;
    v52 = v31;
    v53 = 2114;
    v54 = v32;
    v55 = 2114;
    v56 = v35;
    _os_log_impl(&dword_1BB036000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Engagement task finished. Result: %{public}@, error: %{public}@", buf, 0x2Au);

    v22 = v34;
    v23 = v33;

    v21 = v39;
    a2 = v40;
    v20 = v41;
  }

  [*(a1 + 32) setDispatchGroup:0];
  if (a2)
  {
    *a2 = [*(a1 + 32) error];
  }

  v36 = [*(a1 + 32) result];

  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

void __50__AMSUIEngagementRemoteViewTask_presentEngagement__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__AMSUIEngagementRemoteViewTask_presentEngagement__block_invoke_2;
  v14[3] = &unk_1E7F24A88;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v15 = v5;
  v16 = v7;
  v17 = v6;
  v18 = v8;
  v9 = v14;
  v10 = v6;
  v11 = v5;
  v12 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_2;
  block[3] = &unk_1E7F245E0;
  v20 = v12;
  v21 = v9;
  v13 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __50__AMSUIEngagementRemoteViewTask_presentEngagement__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    [v3 setDelegate:*(a1 + 40)];
    v4 = [v3 remoteProxy];
    v5 = [*(a1 + 40) request];
    v6 = *(a1 + 56);
    v7 = [*(a1 + 40) clientInfo];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__AMSUIEngagementRemoteViewTask_presentEngagement__block_invoke_3;
    v12[3] = &unk_1E7F24410;
    v12[4] = *(a1 + 40);
    [v4 presentEngagementRequest:v5 bagData:v6 clientInfo:v7 completion:v12];

    [*(a1 + 40) _presentViewController:v3];
  }

  else
  {
    if (*(a1 + 48))
    {
      v9 = *(a1 + 40);
      v8 = (a1 + 40);
      [v9 setError:?];
    }

    else
    {
      v10 = AMSError();
      v11 = *(a1 + 40);
      v8 = (a1 + 40);
      [v11 setError:v10];
    }

    [*v8 _unblock];
  }
}

uint64_t __50__AMSUIEngagementRemoteViewTask_presentEngagement__block_invoke_3(uint64_t result, uint64_t a2)
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

void __50__AMSUIEngagementRemoteViewTask_presentEngagement__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x1E69DD678];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AMSUIEngagementRemoteViewTask_presentEngagement__block_invoke_5;
  v4[3] = &unk_1E7F24AD8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v1 instantiateWithExtension:v2 completion:v4];
}

- (void)engagementTaskDidFinishWithResult:(id)a3 error:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x1E698C968];
  v11 = a5;
  v12 = [v10 sharedConfig];
  if (!v12)
  {
    v12 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = [(AMSUIEngagementRemoteViewTask *)self request];
    v16 = [v15 logKey];
    v24 = 138544130;
    v25 = v14;
    v26 = 2114;
    v27 = v16;
    v28 = 2114;
    v29 = v8;
    v30 = 2114;
    v31 = v9;
    _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] remote engagement task finished. Result: %{public}@, error: %{public}@", &v24, 0x2Au);
  }

  [(AMSUIEngagementRemoteViewTask *)self setResult:v8];
  [(AMSUIEngagementRemoteViewTask *)self setError:v9];
  v17 = [(AMSUIEngagementRemoteViewTask *)self presentedViewController];
  [v17 dismissViewControllerAnimated:1 completion:0];

  v18 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v18)
  {
    v18 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v19 = [v18 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = [(AMSUIEngagementRemoteViewTask *)self request];
    v22 = [v21 logKey];
    v24 = 138543618;
    v25 = v20;
    v26 = 2114;
    v27 = v22;
    _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] remote engagement task finished. Cleaning up vc references", &v24, 0x16u);
  }

  [(AMSUIEngagementRemoteViewTask *)self setPresentedViewController:0];
  [(AMSUIEngagementRemoteViewTask *)self setViewController:0];
  v11[2](v11);

  [(AMSUIEngagementRemoteViewTask *)self _unblock];
  v23 = *MEMORY[0x1E69E9840];
}

- (void)preferredContentSizeDidChange:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v20 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = [(AMSUIEngagementRemoteViewTask *)self request];
    v10 = [v9 logKey];
    v21.width = width;
    v21.height = height;
    v11 = AMSStringFromSize(v21);
    v14 = 138543874;
    v15 = v8;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Preferred content size did change. Size: %{public}@", &v14, 0x20u);
  }

  v12 = [(AMSUIEngagementRemoteViewTask *)self presentedViewController];
  [v12 setPreferredContentSize:{width, height}];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_snapshotBagDataPromise
{
  v3 = [(AMSUIEngagementRemoteViewTask *)self bag];

  v4 = MEMORY[0x1E698CAD0];
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    v6 = [(AMSUIEngagementRemoteViewTask *)self bag];
    v7 = [v5 completionHandlerAdapter];
    [v6 createSnapshotWithCompletion:v7];

    [v5 thenWithBlock:&__block_literal_global_5];
  }

  else
  {
    v5 = AMSError();
    [v4 promiseWithError:v5];
  }
  v8 = ;

  return v8;
}

- (void)_unblock
{
  v3 = [(AMSUIEngagementRemoteViewTask *)self dispatchGroup];

  if (v3)
  {
    v4 = [(AMSUIEngagementRemoteViewTask *)self dispatchGroup];
    dispatch_group_leave(v4);
  }
}

- (void)_presentViewController:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__AMSUIEngagementRemoteViewTask__presentViewController___block_invoke;
  v6[3] = &unk_1E7F243C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __56__AMSUIEngagementRemoteViewTask__presentViewController___block_invoke(uint64_t a1)
{
  v1 = a1;
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) viewController];
  v3 = [v2 ams_frontmostController];

  if (v3)
  {
    [*(v1 + 32) setPresentedViewController:*(v1 + 40)];
    [*(v1 + 40) setModalPresentationStyle:5];
    [v3 presentViewController:*(v1 + 40) animated:0 completion:0];
  }

  else
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v4)
    {
      v4 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = AMSLogKey();
      v7 = MEMORY[0x1E696AEC0];
      v8 = *(v1 + 32);
      v9 = objc_opt_class();
      v10 = v9;
      if (v6)
      {
        v1 = AMSLogKey();
        [v7 stringWithFormat:@"%@: [%@] ", v10, v1];
      }

      else
      {
        [v7 stringWithFormat:@"%@: ", v9];
      }
      v11 = ;
      *buf = 138543362;
      v14 = v11;
      _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Presenting view controller is nil!", buf, 0xCu);
      if (v6)
      {

        v11 = v1;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end