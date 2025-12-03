@interface AMSUIWebWrapperViewController
- (AMSUIWebWrapperViewController)initWithContext:(id)context account:(id)account;
- (BOOL)webViewController:(id)controller handleDelegateAction:(id)action completion:(id)completion;
- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error;
- (void)webViewController:(id)controller didResolveWithResult:(id)result error:(id)error completion:(id)completion;
- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation AMSUIWebWrapperViewController

- (AMSUIWebWrapperViewController)initWithContext:(id)context account:(id)account
{
  contextCopy = context;
  accountCopy = account;
  v9 = [contextCopy bag];
  account = accountCopy;
  if (!accountCopy)
  {
    account = [contextCopy account];
  }

  clientInfo = [contextCopy clientInfo];
  v15.receiver = self;
  v15.super_class = AMSUIWebWrapperViewController;
  v12 = [(AMSUIWebViewController *)&v15 initWithBag:v9 account:account clientInfo:clientInfo];

  if (!accountCopy)
  {
  }

  if (v12)
  {
    objc_storeStrong(&v12->_wrapperContext, context);
    v14.receiver = v12;
    v14.super_class = AMSUIWebWrapperViewController;
    [(AMSUIWebViewController *)&v14 setDelegate:v12];
  }

  return v12;
}

- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  if (resultCopy)
  {
    wrapperContext = [(AMSUIWebWrapperViewController *)self wrapperContext];
    dataProvider = [wrapperContext dataProvider];
    v10 = [dataProvider postEvent:@"BuyConfirmed" options:MEMORY[0x1E695E0F8]];
  }

  wrapperContext2 = [(AMSUIWebWrapperViewController *)self wrapperContext];
  actionDelegate = [wrapperContext2 actionDelegate];
  [actionDelegate actionDidFinishPurchaseWithResult:resultCopy error:errorCopy];
}

- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  wrapperContext = [(AMSUIWebWrapperViewController *)self wrapperContext];
  actionDelegate = [wrapperContext actionDelegate];
  v10 = [actionDelegate action:0 pauseTimeouts:1 handleDialogRequest:requestCopy];

  [v10 addFinishBlock:completionCopy];
}

- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  wrapperContext = [(AMSUIWebWrapperViewController *)self wrapperContext];
  actionDelegate = [wrapperContext actionDelegate];
  v10 = [actionDelegate action:0 pauseTimeouts:1 handleAuthenticateRequest:requestCopy];

  [v10 addFinishBlock:completionCopy];
}

- (BOOL)webViewController:(id)controller handleDelegateAction:(id)action completion:(id)completion
{
  completionCopy = completion;
  actionCopy = action;
  wrapperContext = [(AMSUIWebWrapperViewController *)self wrapperContext];
  logKey = [wrapperContext logKey];
  v11 = AMSUIWebSetSubLogKey(logKey, 0);

  v12 = [[AMSUIWebJSRequest alloc] initWithServiceName:@"RouteDelegateAction" logKey:v11];
  [(AMSUIWebJSRequest *)v12 setOptions:actionCopy];

  wrapperContext2 = [(AMSUIWebWrapperViewController *)self wrapperContext];
  dataProvider = [wrapperContext2 dataProvider];
  v15 = [dataProvider runJSRequest:v12];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__AMSUIWebWrapperViewController_webViewController_handleDelegateAction_completion___block_invoke;
  v18[3] = &unk_1E7F271C8;
  v19 = completionCopy;
  v16 = completionCopy;
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

- (void)webViewController:(id)controller didResolveWithResult:(id)result error:(id)error completion:(id)completion
{
  v19[2] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  wrapperContext = [(AMSUIWebWrapperViewController *)self wrapperContext];
  dataProvider = [wrapperContext dataProvider];
  v18[0] = @"result";
  null = resultCopy;
  if (!resultCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = @"error";
  v19[0] = null;
  v13 = AMSUIWebJSError(errorCopy);
  null2 = v13;
  if (!v13)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = null2;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16 = [dataProvider postEvent:@"RouteResolve" options:v15];

  if (!v13)
  {
  }

  if (!resultCopy)
  {
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end