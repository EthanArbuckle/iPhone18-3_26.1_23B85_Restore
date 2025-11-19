@interface AMSPaymentAuthorizationDialogTask
- (AMSPaymentAuthorizationDialogTask)initWithRequest:(id)a3 bag:(id)a4;
- (id)perform;
@end

@implementation AMSPaymentAuthorizationDialogTask

- (AMSPaymentAuthorizationDialogTask)initWithRequest:(id)a3 bag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSPaymentAuthorizationDialogTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bag, a4);
    objc_storeStrong(&v10->_request, a3);
  }

  return v10;
}

- (id)perform
{
  objc_initWeak(&location, self);
  v2 = [AMSMutableLazyPromise alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__AMSPaymentAuthorizationDialogTask_perform__block_invoke;
  v5[3] = &unk_1E73B6990;
  objc_copyWeak(&v6, &location);
  v3 = [(AMSMutableLazyPromise *)v2 initWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __44__AMSPaymentAuthorizationDialogTask_perform__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_alloc_init(AMSAuthenticateOptions);
  [(AMSAuthenticateOptions *)v5 setAllowServerDialogs:1];
  [(AMSAuthenticateOptions *)v5 setAuthenticationType:2];
  [(AMSAuthenticateOptions *)v5 setCanMakeAccountActive:0];
  v6 = AMSLogKey();
  [(AMSAuthenticateOptions *)v5 setLogKey:v6];

  [(AMSAuthenticateOptions *)v5 setDebugReason:@"[Payment Authorization]"];
  v7 = [AMSAuthenticateTask alloc];
  v8 = [WeakRetained request];
  v9 = [v8 account];
  v10 = [(AMSAuthenticateTask *)v7 initWithAccount:v9 options:v5];

  v11 = [(AMSAuthenticateTask *)v10 performAuthentication];
  v22 = 0;
  v12 = [v11 resultWithError:&v22];
  v13 = v22;

  if (v12)
  {
    v14 = [v12 authenticationResults];
    v15 = [v14 valueForKey:*MEMORY[0x1E698DB98]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    [WeakRetained setIdmsToken:v16];
    v17 = [v12 authenticationResults];
    v18 = [v17 valueForKey:*MEMORY[0x1E698DBC8]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    [WeakRetained setPasswordEquivalentToken:v19];
    v20 = objc_alloc_init(AMSPaymentAuthorizationDialogResult);
    v21 = [WeakRetained passwordEquivalentToken];
    [(AMSPaymentSheetResult *)v20 setPasswordEquivalentToken:v21];

    [v3 finishWithResult:v20];
  }

  else
  {
    if (!v13)
    {
      v13 = AMSError(0, @"Payment Authorization", @"Unknown Error", 0);
    }

    [v3 finishWithError:v13];
  }
}

@end