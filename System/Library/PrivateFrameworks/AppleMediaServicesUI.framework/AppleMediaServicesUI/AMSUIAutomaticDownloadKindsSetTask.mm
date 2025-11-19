@interface AMSUIAutomaticDownloadKindsSetTask
- (AMSUIAutomaticDownloadKindsSetTask)initWithEnabledMediaKinds:(id)a3 account:(id)a4 bag:(id)a5 viewController:(id)a6;
- (id)perform;
- (void)handleAuthenticateRequest:(id)a3 completion:(id)a4;
- (void)handleDialogRequest:(id)a3 completion:(id)a4;
@end

@implementation AMSUIAutomaticDownloadKindsSetTask

- (AMSUIAutomaticDownloadKindsSetTask)initWithEnabledMediaKinds:(id)a3 account:(id)a4 bag:(id)a5 viewController:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = AMSUIAutomaticDownloadKindsSetTask;
  v14 = [(AMSTask *)&v18 init];
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x1E698C7D0]) initWithEnabledMediaKinds:v10 account:v11 bag:v12 presentationDelegate:v14];
    task = v14->_task;
    v14->_task = v15;

    objc_storeStrong(&v14->_viewController, a6);
  }

  return v14;
}

- (id)perform
{
  v2 = [(AMSUIAutomaticDownloadKindsSetTask *)self task];
  v3 = [v2 perform];

  return v3;
}

- (void)handleAuthenticateRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [AMSUIAuthenticateTask alloc];
  v9 = [(AMSUIAutomaticDownloadKindsSetTask *)self viewController];
  v10 = [(AMSUIAuthenticateTask *)v8 initWithRequest:v7 presentingViewController:v9];

  v11 = [(AMSAuthenticateTask *)v10 performAuthentication];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__AMSUIAutomaticDownloadKindsSetTask_handleAuthenticateRequest_completion___block_invoke;
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
  v9 = [(AMSUIAutomaticDownloadKindsSetTask *)self viewController];
  v10 = [(AMSUIAlertDialogTask *)v8 initWithRequest:v7 presentingViewController:v9];

  v11 = [(AMSUIAlertDialogTask *)v10 present];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__AMSUIAutomaticDownloadKindsSetTask_handleDialogRequest_completion___block_invoke;
  v13[3] = &unk_1E7F24398;
  v14 = v6;
  v12 = v6;
  [v11 addFinishBlock:v13];
}

@end