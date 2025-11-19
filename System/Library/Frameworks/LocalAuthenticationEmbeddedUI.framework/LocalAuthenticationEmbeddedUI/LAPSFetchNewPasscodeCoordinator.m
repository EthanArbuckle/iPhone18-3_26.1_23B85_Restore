@interface LAPSFetchNewPasscodeCoordinator
- (LAPSFetchNewPasscodeCoordinatorDelegate)delegate;
- (id)_footerText;
- (void)_deactivate;
- (void)_invokeHandlerWithOutput:(id)a3 error:(id)a4;
- (void)_presentNewPasscodeVCWithTransitionStyle:(int64_t)a3 errorMessage:(id)a4;
- (void)_presentVerifyPasscodeVCWithTransitionStyle:(int64_t)a3;
- (void)clear;
- (void)clearWithErrorMessage:(id)a3;
- (void)continueWithPasscode:(id)a3;
- (void)finishWithPasscode:(id)a3;
- (void)passcodeViewController:(id)a3 didCancelWithError:(id)a4;
- (void)passcodeViewController:(id)a3 didSelectPasscodeType:(id)a4;
- (void)passcodeViewController:(id)a3 didSetPasscodeRecoveryEnabled:(BOOL)a4;
- (void)passcodeViewController:(id)a3 verifyPasscode:(id)a4;
- (void)restart;
- (void)restartWithErrorMessage:(id)a3;
- (void)startWithInput:(id)a3 presentationController:(id)a4 completion:(id)a5;
@end

@implementation LAPSFetchNewPasscodeCoordinator

- (void)startWithInput:(id)a3 presentationController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  input = self->_input;
  self->_input = v8;
  v11 = v8;
  v12 = a5;

  v13 = MEMORY[0x23EE74B30](v12);
  handler = self->_handler;
  self->_handler = v13;

  v15 = [(LAPSFetchNewPasscodeCoordinatorInput *)v11 passcodeType];
  passcodeType = self->_passcodeType;
  self->_passcodeType = v15;

  self->_isPasscodeRecoveryEnabled = [(LAPSFetchNewPasscodeCoordinatorInput *)v11 isPasscodeRecoveryEnabled];
  presentationController = self->_presentationController;
  self->_presentationController = v9;

  [(LAPSFetchNewPasscodeCoordinator *)self _presentNewPasscodeVCWithTransitionStyle:1];
}

- (void)continueWithPasscode:(id)a3
{
  objc_storeStrong(&self->_passcode, a3);

  [(LAPSFetchNewPasscodeCoordinator *)self _presentVerifyPasscodeVCWithTransitionStyle:1];
}

- (void)restart
{
  [(LAPSFetchNewPasscodeCoordinator *)self clear];

  [(LAPSFetchNewPasscodeCoordinator *)self _presentNewPasscodeVCWithTransitionStyle:2];
}

- (void)restartWithErrorMessage:(id)a3
{
  v4 = a3;
  [(LAPSFetchNewPasscodeCoordinator *)self clear];
  [(LAPSFetchNewPasscodeCoordinator *)self _presentNewPasscodeVCWithTransitionStyle:2 errorMessage:v4];
}

- (void)clear
{
  passcode = self->_passcode;
  self->_passcode = 0;

  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
  [WeakRetained clear];

  v5 = objc_loadWeakRetained(&self->_passcodeVC);
  [v5 focus];

  v6 = objc_loadWeakRetained(&self->_passcodeVC);
  [v6 hideSpinner];
}

- (void)clearWithErrorMessage:(id)a3
{
  passcode = self->_passcode;
  self->_passcode = 0;
  v5 = a3;

  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
  [WeakRetained clear];

  v7 = objc_loadWeakRetained(&self->_passcodeVC);
  [v7 focus];

  v8 = objc_loadWeakRetained(&self->_passcodeVC);
  [v8 hideSpinner];

  v9 = objc_loadWeakRetained(&self->_passcodeVC);
  [v9 setErrorMessage:v5];
}

- (void)finishWithPasscode:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __54__LAPSFetchNewPasscodeCoordinator_finishWithPasscode___block_invoke;
  v10 = &unk_278A65458;
  v11 = v4;
  v12 = self;
  v5 = v4;
  v6 = __54__LAPSFetchNewPasscodeCoordinator_finishWithPasscode___block_invoke(&v7);
  [(LAPSFetchNewPasscodeCoordinator *)self _invokeHandlerWithOutput:v6, v7, v8, v9, v10];
}

LAPSFetchNewPasscodeCoordinatorOutput *__54__LAPSFetchNewPasscodeCoordinator_finishWithPasscode___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(LAPSFetchNewPasscodeCoordinatorOutput);
  [(LAPSFetchNewPasscodeCoordinatorOutput *)v2 setPasscode:*(a1 + 32)];
  [(LAPSFetchNewPasscodeCoordinatorOutput *)v2 setIsPasscodeRecoveryEnabled:*(*(a1 + 40) + 40)];

  return v2;
}

- (void)_presentNewPasscodeVCWithTransitionStyle:(int64_t)a3 errorMessage:(id)a4
{
  v6 = a4;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __89__LAPSFetchNewPasscodeCoordinator__presentNewPasscodeVCWithTransitionStyle_errorMessage___block_invoke;
  v12 = &unk_278A654D0;
  v13 = self;
  v14 = v6;
  v7 = v6;
  v8 = __89__LAPSFetchNewPasscodeCoordinator__presentNewPasscodeVCWithTransitionStyle_errorMessage___block_invoke(&v9);
  [(LAPSFetchNewPasscodeCoordinator *)self _presentViewController:v8 transitionStyle:a3, v9, v10, v11, v12, v13];
}

LAPSPasscodeViewController *__89__LAPSFetchNewPasscodeCoordinator__presentNewPasscodeVCWithTransitionStyle_errorMessage___block_invoke(uint64_t a1)
{
  v2 = [LAPSPasscodeViewController alloc];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __89__LAPSFetchNewPasscodeCoordinator__presentNewPasscodeVCWithTransitionStyle_errorMessage___block_invoke_2;
  v10 = &unk_278A654A8;
  v3 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v3;
  v4 = __89__LAPSFetchNewPasscodeCoordinator__presentNewPasscodeVCWithTransitionStyle_errorMessage___block_invoke_2(&v7);
  v5 = [(LAPSPasscodeViewControllerBase *)v2 initWithConfiguration:v4, v7, v8];

  [(LAPSPasscodeViewControllerBase *)v5 setDelegate:*(a1 + 32)];
  objc_storeWeak((*(a1 + 32) + 56), v5);

  return v5;
}

LAPSPasscodeViewControllerConfiguration *__89__LAPSFetchNewPasscodeCoordinator__presentNewPasscodeVCWithTransitionStyle_errorMessage___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(LAPSPasscodeViewControllerConfiguration);
  v3 = [*(*(a1 + 32) + 8) title];
  [(LAPSPasscodeViewControllerConfiguration *)v2 setTitle:v3];

  v4 = [*(*(a1 + 32) + 8) prompt];
  [(LAPSPasscodeViewControllerConfiguration *)v2 setPrompt:v4];

  v5 = [*(*(a1 + 32) + 8) subPrompt];
  [(LAPSPasscodeViewControllerConfiguration *)v2 setSubPrompt:v5];

  [(LAPSPasscodeViewControllerConfiguration *)v2 setErrorMessage:*(a1 + 40)];
  v6 = [*(a1 + 32) _footerText];
  [(LAPSPasscodeViewControllerConfiguration *)v2 setFooter:v6];

  [(LAPSPasscodeViewControllerConfiguration *)v2 setPasscodeType:*(*(a1 + 32) + 32)];
  v7 = [*(*(a1 + 32) + 8) nextButton];
  [(LAPSPasscodeViewControllerConfiguration *)v2 setNextButton:v7];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__LAPSFetchNewPasscodeCoordinator__presentNewPasscodeVCWithTransitionStyle_errorMessage___block_invoke_3;
  v10[3] = &unk_278A65480;
  v10[4] = *(a1 + 32);
  v8 = __89__LAPSFetchNewPasscodeCoordinator__presentNewPasscodeVCWithTransitionStyle_errorMessage___block_invoke_3(v10);
  [(LAPSPasscodeViewControllerConfiguration *)v2 setOptionsConfiguration:v8];

  return v2;
}

LAPSPasscodeOptionsViewControllerConfiguration *__89__LAPSFetchNewPasscodeCoordinator__presentNewPasscodeVCWithTransitionStyle_errorMessage___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(LAPSPasscodeOptionsViewControllerConfiguration);
  v3 = [*(*(a1 + 32) + 8) passcodeOptionsTitle];
  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setTitle:v3];

  v4 = [*(*(a1 + 32) + 8) passcodeOptionsCancelTitle];
  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setCancelTitle:v4];

  v5 = [*(*(a1 + 32) + 8) passcodeRecoveryEnabledTitle];
  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setPasscodeRecoveryEnabledTitle:v5];

  v6 = [*(*(a1 + 32) + 8) passcodeRecoveryDisabledTitle];
  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setPasscodeRecoveryDisabledTitle:v6];

  v7 = [*(*(a1 + 32) + 8) allowedPasscodeTypes];
  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setAllowedPasscodeTypes:v7];

  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setSelectedPasscodeType:*(*(a1 + 32) + 32)];
  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setIsPasscodeRecoveryEnabled:*(*(a1 + 32) + 40)];
  -[LAPSPasscodeOptionsViewControllerConfiguration setIsPasscodeRecoveryOptionVisible:](v2, "setIsPasscodeRecoveryOptionVisible:", [*(*(a1 + 32) + 8) isPasscodeRecoveryOptionVisible]);
  -[LAPSPasscodeOptionsViewControllerConfiguration setIsPasscodeRecoverySupported:](v2, "setIsPasscodeRecoverySupported:", [*(*(a1 + 32) + 8) isPasscodeRecoverySupported]);
  -[LAPSPasscodeOptionsViewControllerConfiguration setIsPasscodeRecoveryRestricted:](v2, "setIsPasscodeRecoveryRestricted:", [*(*(a1 + 32) + 8) isPasscodeRecoveryRestricted]);
  v8 = [*(*(a1 + 32) + 8) passcodeRecoveryTitle];
  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setPasscodeRecoveryTitle:v8];

  return v2;
}

- (void)_presentVerifyPasscodeVCWithTransitionStyle:(int64_t)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__LAPSFetchNewPasscodeCoordinator__presentVerifyPasscodeVCWithTransitionStyle___block_invoke;
  v6[3] = &unk_278A65520;
  v6[4] = self;
  v5 = __79__LAPSFetchNewPasscodeCoordinator__presentVerifyPasscodeVCWithTransitionStyle___block_invoke(v6);
  [(LAPSFetchNewPasscodeCoordinator *)self _presentViewController:v5 transitionStyle:a3];
}

LAPSPasscodeViewController *__79__LAPSFetchNewPasscodeCoordinator__presentVerifyPasscodeVCWithTransitionStyle___block_invoke(uint64_t a1)
{
  v2 = [LAPSPasscodeViewController alloc];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__LAPSFetchNewPasscodeCoordinator__presentVerifyPasscodeVCWithTransitionStyle___block_invoke_2;
  v6[3] = &unk_278A654F8;
  v6[4] = *(a1 + 32);
  v3 = __79__LAPSFetchNewPasscodeCoordinator__presentVerifyPasscodeVCWithTransitionStyle___block_invoke_2(v6);
  v4 = [(LAPSPasscodeViewControllerBase *)v2 initWithConfiguration:v3];

  [(LAPSPasscodeViewControllerBase *)v4 setDelegate:*(a1 + 32)];
  objc_storeWeak((*(a1 + 32) + 56), v4);

  return v4;
}

LAPSPasscodeViewControllerConfiguration *__79__LAPSFetchNewPasscodeCoordinator__presentVerifyPasscodeVCWithTransitionStyle___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(LAPSPasscodeViewControllerConfiguration);
  v3 = [*(*(a1 + 32) + 8) title];
  [(LAPSPasscodeViewControllerConfiguration *)v2 setTitle:v3];

  v4 = [*(*(a1 + 32) + 8) verifyPrompt];
  [(LAPSPasscodeViewControllerConfiguration *)v2 setPrompt:v4];

  v5 = [*(*(a1 + 32) + 8) verifySubPrompt];
  [(LAPSPasscodeViewControllerConfiguration *)v2 setSubPrompt:v5];

  [(LAPSPasscodeViewControllerConfiguration *)v2 setPasscodeType:*(*(a1 + 32) + 32)];
  v6 = [*(*(a1 + 32) + 8) verifyNextButton];
  [(LAPSPasscodeViewControllerConfiguration *)v2 setNextButton:v6];

  if (_UISolariumEnabled())
  {
    v7 = [*(a1 + 32) _footerText];
    [(LAPSPasscodeViewControllerConfiguration *)v2 setFooter:v7];
  }

  return v2;
}

- (void)_invokeHandlerWithOutput:(id)a3 error:(id)a4
{
  handler = self->_handler;
  if (handler)
  {
    v7 = a4;
    v8 = a3;
    v10 = [handler copy];
    v9 = self->_handler;
    self->_handler = 0;

    [(LAPSFetchNewPasscodeCoordinator *)self _deactivate];
    v10[2](v10, v8, v7);
  }
}

- (void)_deactivate
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
  [WeakRetained unfocus];
}

- (id)_footerText
{
  if (![(LAPSFetchNewPasscodeCoordinatorInput *)self->_input isPasscodeRecoverySupported]|| [(LAPSFetchNewPasscodeCoordinatorInput *)self->_input isPasscodeRecoveryRestricted]|| [(LAPSFetchNewPasscodeCoordinatorInput *)self->_input isPasscodeRecoveryMessageHidden])
  {
    v3 = &stru_284B7B4C0;
  }

  else
  {
    v5 = [(LAPSFetchNewPasscodeCoordinatorInput *)self->_input isPasscodeRecoveryEnabled];
    input = self->_input;
    if (v5)
    {
      [(LAPSFetchNewPasscodeCoordinatorInput *)input footerRecoveryEnabled];
    }

    else
    {
      [(LAPSFetchNewPasscodeCoordinatorInput *)input footerRecoveryDisabled];
    }
    v3 = ;
  }

  return v3;
}

- (void)passcodeViewController:(id)a3 verifyPasscode:(id)a4
{
  v13 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
  if (WeakRetained != v13)
  {
    [LAPSFetchNewPasscodeCoordinator passcodeViewController:verifyPasscode:];
  }

  passcodeType = self->_passcodeType;
  v9 = [v6 type];
  if (passcodeType != v9)
  {
    [LAPSFetchNewPasscodeCoordinator passcodeViewController:verifyPasscode:];
  }

  [v13 unfocus];
  [v13 showSpinner];
  passcode = self->_passcode;
  v11 = [(LAPSFetchNewPasscodeCoordinator *)self delegate];
  v12 = v11;
  if (passcode)
  {
    [v11 fetchNewPasscodeCoordinator:self verifyPasscode:self->_passcode matchesPasscode:v6];
  }

  else
  {
    [v11 fetchNewPasscodeCoordinator:self verifyPasscode:v6];
  }
}

- (void)passcodeViewController:(id)a3 didCancelWithError:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
  if (WeakRetained != v8)
  {
    [LAPSFetchNewPasscodeCoordinator passcodeViewController:didCancelWithError:];
  }

  [(LAPSFetchNewPasscodeCoordinator *)self _invokeHandlerWithError:v6];
}

- (void)passcodeViewController:(id)a3 didSelectPasscodeType:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
  if (WeakRetained != v9)
  {
    [LAPSFetchNewPasscodeCoordinator passcodeViewController:didSelectPasscodeType:];
  }

  passcodeType = self->_passcodeType;
  self->_passcodeType = v6;
}

- (void)passcodeViewController:(id)a3 didSetPasscodeRecoveryEnabled:(BOOL)a4
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
  if (WeakRetained != v9)
  {
    [LAPSFetchNewPasscodeCoordinator passcodeViewController:didSetPasscodeRecoveryEnabled:];
  }

  if (![(LAPSFetchNewPasscodeCoordinatorInput *)self->_input isPasscodeRecoverySupported]|| [(LAPSFetchNewPasscodeCoordinatorInput *)self->_input isPasscodeRecoveryRestricted])
  {
    [LAPSFetchNewPasscodeCoordinator passcodeViewController:didSetPasscodeRecoveryEnabled:];
  }

  input = self->_input;
  if (a4)
  {
    [(LAPSFetchNewPasscodeCoordinatorInput *)input footerRecoveryEnabled];
  }

  else
  {
    [(LAPSFetchNewPasscodeCoordinatorInput *)input footerRecoveryDisabled];
  }
  v8 = ;
  [v9 setFooter:v8];

  self->_isPasscodeRecoveryEnabled = a4;
}

- (LAPSFetchNewPasscodeCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end