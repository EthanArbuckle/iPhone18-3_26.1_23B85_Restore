@interface AMSUIAgeVerificationTask
+ (id)_dateFormatter;
+ (id)_dialogForResult:(id)a3 withBag:(id)a4 expiration:(id)a5 dateFormatter:(id)a6;
+ (id)_errorCheckWithAccount:(id)a3 bag:(id)a4;
+ (id)_promiseResultForOpeningURL:(id)a3;
- (AMSUIAgeVerificationTask)initWithAccount:(id)a3 bag:(id)a4 options:(id)a5 viewController:(id)a6;
- (NSString)pincode;
- (id)_performTaskWithVerificationResult:(id)a3;
- (id)isVerificationNeeded;
- (id)performTask;
- (void)handleAuthenticateRequest:(id)a3 completion:(id)a4;
- (void)handleDialogRequest:(id)a3 completion:(id)a4;
- (void)setPincode:(id)a3;
@end

@implementation AMSUIAgeVerificationTask

- (AMSUIAgeVerificationTask)initWithAccount:(id)a3 bag:(id)a4 options:(id)a5 viewController:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = AMSUIAgeVerificationTask;
  v15 = [(AMSTask *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, a3);
    objc_storeStrong(&v16->_bag, a4);
    objc_storeStrong(&v16->_options, a5);
    v17 = [objc_alloc(MEMORY[0x1E698C7A0]) initWithAccount:v11 bag:v12 options:v13 presentationDelegate:v16];
    task = v16->_task;
    v16->_task = v17;

    objc_storeStrong(&v16->_viewController, a6);
  }

  return v16;
}

- (id)isVerificationNeeded
{
  v2 = [(AMSUIAgeVerificationTask *)self task];
  v3 = [v2 isVerificationNeeded];

  return v3;
}

- (id)performTask
{
  v3 = objc_opt_class();
  v4 = [(AMSUIAgeVerificationTask *)self account];
  v5 = [(AMSUIAgeVerificationTask *)self bag];
  v6 = [v3 _errorCheckWithAccount:v4 bag:v5];

  if (v6)
  {
    v7 = [MEMORY[0x1E698CAD0] promiseWithError:v6];
  }

  else
  {
    v8 = [(AMSUIAgeVerificationTask *)self isVerificationNeeded];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__AMSUIAgeVerificationTask_performTask__block_invoke;
    v10[3] = &unk_1E7F242F8;
    v10[4] = self;
    v7 = [v8 thenWithBlock:v10];
  }

  return v7;
}

- (void)setPincode:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIAgeVerificationTask *)self task];
  [v5 setPincode:v4];
}

- (NSString)pincode
{
  v2 = [(AMSUIAgeVerificationTask *)self task];
  v3 = [v2 pincode];

  return v3;
}

- (id)_performTaskWithVerificationResult:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIAgeVerificationTask *)self bag];
  v6 = [v5 URLForKey:@"korAgeVerificationUrl"];

  v7 = [v6 valuePromise];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__AMSUIAgeVerificationTask__performTaskWithVerificationResult___block_invoke;
  v11[3] = &unk_1E7F24348;
  v11[4] = self;
  v12 = v4;
  v8 = v4;
  v9 = [v7 thenWithBlock:v11];

  return v9;
}

id __63__AMSUIAgeVerificationTask__performTaskWithVerificationResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v5 = [*(a1 + 32) account];
  v6 = [v5 ams_accountFlagValueForAccountFlag:*MEMORY[0x1E698C498]];

  v7 = [AMSUIAgeVerificationCore _timestampOfExpiryFrom:v6];
  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) bag];
  v12 = *(a1 + 32);
  v13 = [objc_opt_class() _dateFormatter];
  v14 = [v9 _dialogForResult:v10 withBag:v11 expiration:v7 dateFormatter:v13];

  v15 = [AMSUIAlertDialogTask alloc];
  v16 = [*(a1 + 32) viewController];
  v17 = [(AMSUIAlertDialogTask *)v15 initWithRequest:v14 presentingViewController:v16];

  v18 = [(AMSUIAlertDialogTask *)v17 present];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __63__AMSUIAgeVerificationTask__performTaskWithVerificationResult___block_invoke_2;
  v26[3] = &unk_1E7F24320;
  v27 = v14;
  v28 = *(a1 + 40);
  v19 = v4;
  v20 = *(a1 + 32);
  v29 = v19;
  v30 = v20;
  v31 = v3;
  v21 = v3;
  v22 = v14;
  [v18 addFinishBlock:v26];

  v23 = v31;
  v24 = v19;

  return v19;
}

void __63__AMSUIAgeVerificationTask__performTaskWithVerificationResult___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 selectedActionIdentifier];
  v10 = [v3 locateActionWithIdentifier:v4];

  if ([v10 style] == 2)
  {
    v5 = [AMSUIAgeVerificationCore _promiseResultForCancelWithVerificationResult:*(a1 + 40)];
    [*(a1 + 48) finishWithPromiseResult:v5];
  }

  else
  {
    v6 = [*(a1 + 56) options];
    v7 = [v6 objectForKey:@"clientFields"];
    v5 = [AMSUIAgeVerificationCore _appendClientFields:v7 asQueryParametersToURL:*(a1 + 64)];

    v8 = *(a1 + 56);
    v9 = [objc_opt_class() _promiseResultForOpeningURL:v5];
    [*(a1 + 48) finishWithPromiseResult:v9];
  }
}

+ (id)_promiseResultForOpeningURL:(id)a3
{
  v3 = MEMORY[0x1E698CAD8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x1E698CA98] openStandardURL:v4];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E698C798]);
    [v7 setSuccessType:2];
    [v5 setResult:v7];
  }

  else
  {
    v7 = AMSError();
    [v5 setError:v7];
  }

  return v5;
}

+ (id)_dialogForResult:(id)a3 withBag:(id)a4 expiration:(id)a5 dateFormatter:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [AMSUIAgeVerificationCore _titleForResult:v12 withBag:v11 bundle:0];
  v14 = [AMSUIAgeVerificationCore _messageForResult:v12 withBag:v11 expiration:v10 dateFormatter:v9 bundle:0];

  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v16 = AMSUILocalizedStringFromBundle(@"AGE_VERIFICATION_DIALOG_PROCEED_ACTION", v11, v15);

  v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v18 = AMSUILocalizedStringFromBundle(@"AGE_VERIFICATION_DIALOG_CANCEL_ACTION", v11, v17);

  v19 = [objc_alloc(MEMORY[0x1E698C8C0]) initWithTitle:v13 message:v14];
  v20 = [MEMORY[0x1E698C8B8] actionWithTitle:v16];
  [v19 addButtonAction:v20];

  v21 = [MEMORY[0x1E698C8B8] actionWithTitle:v18 style:2];
  [v19 addButtonAction:v21];

  return v19;
}

+ (id)_dateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateStyle:1];
  [v2 setTimeStyle:0];

  return v2;
}

+ (id)_errorCheckWithAccount:(id)a3 bag:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = 0;
  }

  else
  {
    v9 = *MEMORY[0x1E698C548];
    v8 = AMSCustomError();
  }

  return v8;
}

- (void)handleAuthenticateRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [AMSUIAuthenticateTask alloc];
  v9 = [(AMSUIAgeVerificationTask *)self viewController];
  v10 = [(AMSUIAuthenticateTask *)v8 initWithRequest:v7 presentingViewController:v9];

  v11 = [(AMSAuthenticateTask *)v10 performAuthentication];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__AMSUIAgeVerificationTask_handleAuthenticateRequest_completion___block_invoke;
  v13[3] = &unk_1E7F24370;
  v14 = v6;
  v12 = v6;
  [v11 addFinishBlock:v13];
}

- (void)handleDialogRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [AMSUIAlertDialogTask alloc];
  v9 = [(AMSUIAgeVerificationTask *)self viewController];
  v10 = [(AMSUIAlertDialogTask *)v8 initWithRequest:v7 presentingViewController:v9];

  v11 = [(AMSUIAlertDialogTask *)v10 present];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__AMSUIAgeVerificationTask_handleDialogRequest_completion___block_invoke;
  v13[3] = &unk_1E7F24398;
  v14 = v6;
  v12 = v6;
  [v11 addFinishBlock:v13];
}

@end