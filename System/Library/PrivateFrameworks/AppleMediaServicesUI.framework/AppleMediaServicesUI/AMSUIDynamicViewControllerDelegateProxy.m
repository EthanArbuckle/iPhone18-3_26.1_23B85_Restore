@interface AMSUIDynamicViewControllerDelegateProxy
- (AMSUIDynamicViewController)dynamicViewController;
- (AMSUIDynamicViewControllerDelegate)delegate;
- (AMSUIDynamicViewControllerDelegateProxy)initWithDynamicViewController:(id)a3;
- (BOOL)dynamicViewController:(id)a3 handleDelegateAction:(id)a4 completionHandler:(id)a5;
- (BOOL)dynamicViewControllerShouldDismiss:(id)a3;
- (id)dynamicViewController:(id)a3 contentViewControllerWithDictionary:(id)a4;
- (id)dynamicViewController:(id)a3 contentViewWithDictionary:(id)a4 frame:(CGRect)a5;
- (void)dynamicViewController:(id)a3 contentViewControllerWithDictionary:(id)a4 completionHandler:(id)a5;
- (void)dynamicViewController:(id)a3 didFinishCarrierLinkingWithResult:(id)a4 error:(id)a5;
- (void)dynamicViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5;
- (void)dynamicViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5;
@end

@implementation AMSUIDynamicViewControllerDelegateProxy

- (AMSUIDynamicViewControllerDelegateProxy)initWithDynamicViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AMSUIDynamicViewControllerDelegateProxy;
  v5 = [(AMSUIDynamicViewControllerDelegateProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dynamicViewController, v4);
  }

  return v6;
}

- (void)dynamicViewController:(id)a3 contentViewControllerWithDictionary:(id)a4 completionHandler:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    v11 = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    [v10 dynamicViewController:v11 contentViewControllerWithDictionary:v12 completionHandler:v7];
  }
}

- (id)dynamicViewController:(id)a3 contentViewControllerWithDictionary:(id)a4
{
  v5 = a4;
  v6 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    v9 = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    v10 = [v8 dynamicViewController:v9 contentViewControllerWithDictionary:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dynamicViewController:(id)a3 contentViewWithDictionary:(id)a4 frame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  v11 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    v14 = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    v15 = [v13 dynamicViewController:v14 contentViewWithDictionary:v10 frame:{x, y, width, height}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)dynamicViewController:(id)a3 didFinishCarrierLinkingWithResult:(id)a4 error:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v11)
    {
      v11 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v18 = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Forwarding carrier link result to delegate", &v18, 0x16u);
    }

    v15 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    v16 = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    [v15 dynamicViewController:v16 didFinishCarrierLinkingWithResult:v7 error:v8];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)dynamicViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    v11 = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    [v10 dynamicViewController:v11 didFinishPurchaseWithResult:v12 error:v7];
  }
}

- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    v11 = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    [v10 dynamicViewController:v11 didFinishWithPurchaseResult:v12 error:v7];
  }
}

- (void)dynamicViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    v11 = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    [v10 dynamicViewController:v11 didResolveWithResult:v12 error:v7];
  }
}

- (BOOL)dynamicViewController:(id)a3 handleDelegateAction:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    v12 = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    v13 = [v11 dynamicViewController:v12 handleDelegateAction:v7 completionHandler:v8];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)dynamicViewControllerShouldDismiss:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    v8 = [v7 dynamicViewControllerShouldDismiss:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (AMSUIDynamicViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AMSUIDynamicViewController)dynamicViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_dynamicViewController);

  return WeakRetained;
}

@end