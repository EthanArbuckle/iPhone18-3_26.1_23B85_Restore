@interface AMSUIEngagementRemoteViewController
- (AMSUIEngagementTaskHostInterface)delegate;
- (AMSUIEngagementTaskRemoteInterface)remoteProxy;
- (CGSize)preferredContentSizeOverride;
- (void)engagementTaskDidFinishWithResult:(id)result error:(id)error completion:(id)completion;
- (void)preferredContentSizeDidChange:(CGSize)change;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation AMSUIEngagementRemoteViewController

- (AMSUIEngagementTaskRemoteInterface)remoteProxy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AMSUIEngagementRemoteViewController_remoteProxy__block_invoke;
  v4[3] = &unk_1E7F24410;
  v4[4] = self;
  v2 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v4];

  return v2;
}

void __50__AMSUIEngagementRemoteViewController_remoteProxy__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to retrieve remote proxy. Error: %{public}@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v8.receiver = self;
  v8.super_class = AMSUIEngagementRemoteViewController;
  [(_UIRemoteViewController *)&v8 viewServiceDidTerminateWithError:errorCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__AMSUIEngagementRemoteViewController_viewServiceDidTerminateWithError___block_invoke;
  v6[3] = &unk_1E7F243C0;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  [(AMSUIEngagementRemoteViewController *)self engagementTaskDidFinishWithResult:0 error:v5 completion:v6];
}

void __72__AMSUIEngagementRemoteViewController_viewServiceDidTerminateWithError___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = *(a1 + 40);
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] View service termination handled. Error: %{public}@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)engagementTaskDidFinishWithResult:(id)result error:(id)error completion:(id)completion
{
  resultCopy = result;
  errorCopy = error;
  completionCopy = completion;
  delegate = [(AMSUIEngagementRemoteViewController *)self delegate];
  if (delegate)
  {
    v11 = delegate;
    delegate2 = [(AMSUIEngagementRemoteViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate3 = [(AMSUIEngagementRemoteViewController *)self delegate];
      [delegate3 engagementTaskDidFinishWithResult:resultCopy error:errorCopy completion:completionCopy];
    }
  }
}

- (void)preferredContentSizeDidChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  delegate = [(AMSUIEngagementRemoteViewController *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    delegate2 = [(AMSUIEngagementRemoteViewController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate3 = [(AMSUIEngagementRemoteViewController *)self delegate];
      [delegate3 preferredContentSizeDidChange:{width, height}];
    }
  }
}

- (AMSUIEngagementTaskHostInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)preferredContentSizeOverride
{
  width = self->_preferredContentSizeOverride.width;
  height = self->_preferredContentSizeOverride.height;
  result.height = height;
  result.width = width;
  return result;
}

@end