@interface AMSUIAutomaticDownloadKindsSetTask
- (AMSUIAutomaticDownloadKindsSetTask)initWithEnabledMediaKinds:(id)kinds account:(id)account bag:(id)bag viewController:(id)controller;
- (id)perform;
- (void)handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation AMSUIAutomaticDownloadKindsSetTask

- (AMSUIAutomaticDownloadKindsSetTask)initWithEnabledMediaKinds:(id)kinds account:(id)account bag:(id)bag viewController:(id)controller
{
  kindsCopy = kinds;
  accountCopy = account;
  bagCopy = bag;
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = AMSUIAutomaticDownloadKindsSetTask;
  v14 = [(AMSTask *)&v18 init];
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x1E698C7D0]) initWithEnabledMediaKinds:kindsCopy account:accountCopy bag:bagCopy presentationDelegate:v14];
    task = v14->_task;
    v14->_task = v15;

    objc_storeStrong(&v14->_viewController, controller);
  }

  return v14;
}

- (id)perform
{
  task = [(AMSUIAutomaticDownloadKindsSetTask *)self task];
  perform = [task perform];

  return perform;
}

- (void)handleAuthenticateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = [AMSUIAuthenticateTask alloc];
  viewController = [(AMSUIAutomaticDownloadKindsSetTask *)self viewController];
  v10 = [(AMSUIAuthenticateTask *)v8 initWithRequest:requestCopy presentingViewController:viewController];

  performAuthentication = [(AMSAuthenticateTask *)v10 performAuthentication];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__AMSUIAutomaticDownloadKindsSetTask_handleAuthenticateRequest_completion___block_invoke;
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
  viewController = [(AMSUIAutomaticDownloadKindsSetTask *)self viewController];
  v10 = [(AMSUIAlertDialogTask *)v8 initWithRequest:requestCopy presentingViewController:viewController];

  present = [(AMSUIAlertDialogTask *)v10 present];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__AMSUIAutomaticDownloadKindsSetTask_handleDialogRequest_completion___block_invoke;
  v13[3] = &unk_1E7F24398;
  v14 = completionCopy;
  v12 = completionCopy;
  [present addFinishBlock:v13];
}

@end