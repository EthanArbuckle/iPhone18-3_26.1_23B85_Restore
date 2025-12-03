@interface AMSUIDynamicViewControllerDelegateProxy
- (AMSUIDynamicViewController)dynamicViewController;
- (AMSUIDynamicViewControllerDelegate)delegate;
- (AMSUIDynamicViewControllerDelegateProxy)initWithDynamicViewController:(id)controller;
- (BOOL)dynamicViewController:(id)controller handleDelegateAction:(id)action completionHandler:(id)handler;
- (BOOL)dynamicViewControllerShouldDismiss:(id)dismiss;
- (id)dynamicViewController:(id)controller contentViewControllerWithDictionary:(id)dictionary;
- (id)dynamicViewController:(id)controller contentViewWithDictionary:(id)dictionary frame:(CGRect)frame;
- (void)dynamicViewController:(id)controller contentViewControllerWithDictionary:(id)dictionary completionHandler:(id)handler;
- (void)dynamicViewController:(id)controller didFinishCarrierLinkingWithResult:(id)result error:(id)error;
- (void)dynamicViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error;
- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error;
- (void)dynamicViewController:(id)controller didResolveWithResult:(id)result error:(id)error;
@end

@implementation AMSUIDynamicViewControllerDelegateProxy

- (AMSUIDynamicViewControllerDelegateProxy)initWithDynamicViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = AMSUIDynamicViewControllerDelegateProxy;
  v5 = [(AMSUIDynamicViewControllerDelegateProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dynamicViewController, controllerCopy);
  }

  return v6;
}

- (void)dynamicViewController:(id)controller contentViewControllerWithDictionary:(id)dictionary completionHandler:(id)handler
{
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  delegate = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    dynamicViewController = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    [delegate2 dynamicViewController:dynamicViewController contentViewControllerWithDictionary:dictionaryCopy completionHandler:handlerCopy];
  }
}

- (id)dynamicViewController:(id)controller contentViewControllerWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  delegate = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    dynamicViewController = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    v10 = [delegate2 dynamicViewController:dynamicViewController contentViewControllerWithDictionary:dictionaryCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dynamicViewController:(id)controller contentViewWithDictionary:(id)dictionary frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  dictionaryCopy = dictionary;
  delegate = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    dynamicViewController = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    v15 = [delegate2 dynamicViewController:dynamicViewController contentViewWithDictionary:dictionaryCopy frame:{x, y, width, height}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)dynamicViewController:(id)controller didFinishCarrierLinkingWithResult:(id)result error:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  delegate = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v18 = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Forwarding carrier link result to delegate", &v18, 0x16u);
    }

    delegate2 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    dynamicViewController = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    [delegate2 dynamicViewController:dynamicViewController didFinishCarrierLinkingWithResult:resultCopy error:errorCopy];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)dynamicViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  delegate = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    dynamicViewController = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    [delegate2 dynamicViewController:dynamicViewController didFinishPurchaseWithResult:resultCopy error:errorCopy];
  }
}

- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  delegate = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    dynamicViewController = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    [delegate2 dynamicViewController:dynamicViewController didFinishWithPurchaseResult:resultCopy error:errorCopy];
  }
}

- (void)dynamicViewController:(id)controller didResolveWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  delegate = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    dynamicViewController = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    [delegate2 dynamicViewController:dynamicViewController didResolveWithResult:resultCopy error:errorCopy];
  }
}

- (BOOL)dynamicViewController:(id)controller handleDelegateAction:(id)action completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  delegate = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    dynamicViewController = [(AMSUIDynamicViewControllerDelegateProxy *)self dynamicViewController];
    v13 = [delegate2 dynamicViewController:dynamicViewController handleDelegateAction:actionCopy completionHandler:handlerCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)dynamicViewControllerShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  delegate = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AMSUIDynamicViewControllerDelegateProxy *)self delegate];
    v8 = [delegate2 dynamicViewControllerShouldDismiss:dismissCopy];
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