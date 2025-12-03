@interface AMSUIAgeVerificationTask
+ (id)_dateFormatter;
+ (id)_dialogForResult:(id)result withBag:(id)bag expiration:(id)expiration dateFormatter:(id)formatter;
+ (id)_errorCheckWithAccount:(id)account bag:(id)bag;
+ (id)_promiseResultForOpeningURL:(id)l;
- (AMSUIAgeVerificationTask)initWithAccount:(id)account bag:(id)bag options:(id)options viewController:(id)controller;
- (NSString)pincode;
- (id)_performTaskWithVerificationResult:(id)result;
- (id)isVerificationNeeded;
- (id)performTask;
- (void)handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)handleDialogRequest:(id)request completion:(id)completion;
- (void)setPincode:(id)pincode;
@end

@implementation AMSUIAgeVerificationTask

- (AMSUIAgeVerificationTask)initWithAccount:(id)account bag:(id)bag options:(id)options viewController:(id)controller
{
  accountCopy = account;
  bagCopy = bag;
  optionsCopy = options;
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = AMSUIAgeVerificationTask;
  v15 = [(AMSTask *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, account);
    objc_storeStrong(&v16->_bag, bag);
    objc_storeStrong(&v16->_options, options);
    v17 = [objc_alloc(MEMORY[0x1E698C7A0]) initWithAccount:accountCopy bag:bagCopy options:optionsCopy presentationDelegate:v16];
    task = v16->_task;
    v16->_task = v17;

    objc_storeStrong(&v16->_viewController, controller);
  }

  return v16;
}

- (id)isVerificationNeeded
{
  task = [(AMSUIAgeVerificationTask *)self task];
  isVerificationNeeded = [task isVerificationNeeded];

  return isVerificationNeeded;
}

- (id)performTask
{
  v3 = objc_opt_class();
  account = [(AMSUIAgeVerificationTask *)self account];
  v5 = [(AMSUIAgeVerificationTask *)self bag];
  v6 = [v3 _errorCheckWithAccount:account bag:v5];

  if (v6)
  {
    v7 = [MEMORY[0x1E698CAD0] promiseWithError:v6];
  }

  else
  {
    isVerificationNeeded = [(AMSUIAgeVerificationTask *)self isVerificationNeeded];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__AMSUIAgeVerificationTask_performTask__block_invoke;
    v10[3] = &unk_1E7F242F8;
    v10[4] = self;
    v7 = [isVerificationNeeded thenWithBlock:v10];
  }

  return v7;
}

- (void)setPincode:(id)pincode
{
  pincodeCopy = pincode;
  task = [(AMSUIAgeVerificationTask *)self task];
  [task setPincode:pincodeCopy];
}

- (NSString)pincode
{
  task = [(AMSUIAgeVerificationTask *)self task];
  pincode = [task pincode];

  return pincode;
}

- (id)_performTaskWithVerificationResult:(id)result
{
  resultCopy = result;
  v5 = [(AMSUIAgeVerificationTask *)self bag];
  v6 = [v5 URLForKey:@"korAgeVerificationUrl"];

  valuePromise = [v6 valuePromise];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__AMSUIAgeVerificationTask__performTaskWithVerificationResult___block_invoke;
  v11[3] = &unk_1E7F24348;
  v11[4] = self;
  v12 = resultCopy;
  v8 = resultCopy;
  v9 = [valuePromise thenWithBlock:v11];

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

+ (id)_promiseResultForOpeningURL:(id)l
{
  v3 = MEMORY[0x1E698CAD8];
  lCopy = l;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x1E698CA98] openStandardURL:lCopy];

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

+ (id)_dialogForResult:(id)result withBag:(id)bag expiration:(id)expiration dateFormatter:(id)formatter
{
  formatterCopy = formatter;
  expirationCopy = expiration;
  bagCopy = bag;
  resultCopy = result;
  v13 = [AMSUIAgeVerificationCore _titleForResult:resultCopy withBag:bagCopy bundle:0];
  v14 = [AMSUIAgeVerificationCore _messageForResult:resultCopy withBag:bagCopy expiration:expirationCopy dateFormatter:formatterCopy bundle:0];

  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v16 = AMSUILocalizedStringFromBundle(@"AGE_VERIFICATION_DIALOG_PROCEED_ACTION", bagCopy, v15);

  v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v18 = AMSUILocalizedStringFromBundle(@"AGE_VERIFICATION_DIALOG_CANCEL_ACTION", bagCopy, v17);

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

+ (id)_errorCheckWithAccount:(id)account bag:(id)bag
{
  accountCopy = account;
  bagCopy = bag;
  v7 = bagCopy;
  if (accountCopy && bagCopy)
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

- (void)handleAuthenticateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = [AMSUIAuthenticateTask alloc];
  viewController = [(AMSUIAgeVerificationTask *)self viewController];
  v10 = [(AMSUIAuthenticateTask *)v8 initWithRequest:requestCopy presentingViewController:viewController];

  performAuthentication = [(AMSAuthenticateTask *)v10 performAuthentication];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__AMSUIAgeVerificationTask_handleAuthenticateRequest_completion___block_invoke;
  v13[3] = &unk_1E7F24370;
  v14 = completionCopy;
  v12 = completionCopy;
  [performAuthentication addFinishBlock:v13];
}

- (void)handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = [AMSUIAlertDialogTask alloc];
  viewController = [(AMSUIAgeVerificationTask *)self viewController];
  v10 = [(AMSUIAlertDialogTask *)v8 initWithRequest:requestCopy presentingViewController:viewController];

  present = [(AMSUIAlertDialogTask *)v10 present];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__AMSUIAgeVerificationTask_handleDialogRequest_completion___block_invoke;
  v13[3] = &unk_1E7F24398;
  v14 = completionCopy;
  v12 = completionCopy;
  [present addFinishBlock:v13];
}

@end