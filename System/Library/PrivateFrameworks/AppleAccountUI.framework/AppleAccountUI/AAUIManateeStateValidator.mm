@interface AAUIManateeStateValidator
- (AAUIManateeStateValidator)initWithFlowContext:(id)context withPresentingViewController:(id)controller;
- (void)repairIfPrimaryAppleAccountIsCDP:(id)p;
- (void)verifyAndRepairManateeWithCompletion:(id)completion;
@end

@implementation AAUIManateeStateValidator

- (AAUIManateeStateValidator)initWithFlowContext:(id)context withPresentingViewController:(id)controller
{
  contextCopy = context;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = AAUIManateeStateValidator;
  v9 = [(AAUIManateeStateValidator *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presentingViewController, controller);
    objc_storeStrong(&v10->_flowContext, context);
    mEMORY[0x1E69977E0] = [MEMORY[0x1E69977E0] sharedInstance];
    contextForPrimaryAccount = [mEMORY[0x1E69977E0] contextForPrimaryAccount];
    context = v10->_context;
    v10->_context = contextForPrimaryAccount;
  }

  return v10;
}

- (void)repairIfPrimaryAppleAccountIsCDP:(id)p
{
  v4 = MEMORY[0x1E69977E0];
  pCopy = p;
  sharedInstance = [v4 sharedInstance];
  primaryAccountDSID = [sharedInstance primaryAccountDSID];

  if ([MEMORY[0x1E69977E0] isICDPEnabledForDSID:primaryAccountDSID checkWithServer:0])
  {
    [(AAUIManateeStateValidator *)self verifyAndRepairManateeWithCompletion:pCopy];
  }

  else
  {
    pCopy[2](pCopy, 1, 0);
  }
}

- (void)verifyAndRepairManateeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Attempting manatee state repair.", buf, 2u);
  }

  presentingViewController = self->_presentingViewController;
  v7 = self->_flowContext;
  [(CDPUIDeviceToDeviceEncryptionFlowContext *)v7 setPresentingViewController:presentingViewController];
  v8 = [objc_alloc(MEMORY[0x1E6997868]) initWithContext:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__AAUIManateeStateValidator_verifyAndRepairManateeWithCompletion___block_invoke;
  v10[3] = &unk_1E820C308;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 performDeviceToDeviceEncryptionStateRepairWithCompletion:v10];
}

void __66__AAUIManateeStateValidator_verifyAndRepairManateeWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 cdp_isCDPErrorWithCode:5903])
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Manatee state validation completed. Already in good-state", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

@end