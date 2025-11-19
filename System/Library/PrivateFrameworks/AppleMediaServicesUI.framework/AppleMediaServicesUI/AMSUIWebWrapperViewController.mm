@interface AMSUIWebWrapperViewController
- (AMSUIWebWrapperViewController)initWithContext:(id)a3 account:(id)a4;
- (BOOL)webViewController:(id)a3 handleDelegateAction:(id)a4 completion:(id)a5;
- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
- (void)webViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5 completion:(id)a6;
- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5;
- (void)webViewController:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
@end

@implementation AMSUIWebWrapperViewController

- (AMSUIWebWrapperViewController)initWithContext:(id)a3 account:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 bag];
  v10 = v8;
  if (!v8)
  {
    v10 = [v7 account];
  }

  v11 = [v7 clientInfo];
  v15.receiver = self;
  v15.super_class = AMSUIWebWrapperViewController;
  v12 = [(AMSUIWebViewController *)&v15 initWithBag:v9 account:v10 clientInfo:v11];

  if (!v8)
  {
  }

  if (v12)
  {
    objc_storeStrong(&v12->_wrapperContext, a3);
    v14.receiver = v12;
    v14.super_class = AMSUIWebWrapperViewController;
    [(AMSUIWebViewController *)&v14 setDelegate:v12];
  }

  return v12;
}

- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5
{
  v13 = a4;
  v7 = a5;
  if (v13)
  {
    v8 = [(AMSUIWebWrapperViewController *)self wrapperContext];
    v9 = [v8 dataProvider];
    v10 = [v9 postEvent:@"BuyConfirmed" options:MEMORY[0x1E695E0F8]];
  }

  v11 = [(AMSUIWebWrapperViewController *)self wrapperContext];
  v12 = [v11 actionDelegate];
  [v12 actionDidFinishPurchaseWithResult:v13 error:v7];
}

- (void)webViewController:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v11 = [(AMSUIWebWrapperViewController *)self wrapperContext];
  v9 = [v11 actionDelegate];
  v10 = [v9 action:0 pauseTimeouts:1 handleDialogRequest:v8];

  [v10 addFinishBlock:v7];
}

- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v11 = [(AMSUIWebWrapperViewController *)self wrapperContext];
  v9 = [v11 actionDelegate];
  v10 = [v9 action:0 pauseTimeouts:1 handleAuthenticateRequest:v8];

  [v10 addFinishBlock:v7];
}

- (BOOL)webViewController:(id)a3 handleDelegateAction:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(AMSUIWebWrapperViewController *)self wrapperContext];
  v10 = [v9 logKey];
  v11 = AMSUIWebSetSubLogKey(v10, 0);

  v12 = [[AMSUIWebJSRequest alloc] initWithServiceName:@"RouteDelegateAction" logKey:v11];
  [(AMSUIWebJSRequest *)v12 setOptions:v8];

  v13 = [(AMSUIWebWrapperViewController *)self wrapperContext];
  v14 = [v13 dataProvider];
  v15 = [v14 runJSRequest:v12];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__AMSUIWebWrapperViewController_webViewController_handleDelegateAction_completion___block_invoke;
  v18[3] = &unk_1E7F271C8;
  v19 = v7;
  v16 = v7;
  [v15 addFinishBlock:v18];

  return 1;
}

void __83__AMSUIWebWrapperViewController_webViewController_handleDelegateAction_completion___block_invoke(uint64_t a1, id a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = [a2 body];
    v6 = v5;
    v7 = MEMORY[0x1E695E0F8];
    if (v5)
    {
      v7 = v5;
    }

    a2 = v7;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)webViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5 completion:(id)a6
{
  v19[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(AMSUIWebWrapperViewController *)self wrapperContext];
  v11 = [v10 dataProvider];
  v18[0] = @"result";
  v12 = v8;
  if (!v8)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = @"error";
  v19[0] = v12;
  v13 = AMSUIWebJSError(v9);
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16 = [v11 postEvent:@"RouteResolve" options:v15];

  if (!v13)
  {
  }

  if (!v8)
  {
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end