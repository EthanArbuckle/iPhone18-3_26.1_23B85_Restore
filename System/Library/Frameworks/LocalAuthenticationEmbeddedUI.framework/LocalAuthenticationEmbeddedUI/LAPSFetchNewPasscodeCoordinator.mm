@interface LAPSFetchNewPasscodeCoordinator
- (LAPSFetchNewPasscodeCoordinatorDelegate)delegate;
- (id)_footerText;
- (void)_deactivate;
- (void)_invokeHandlerWithOutput:(id)output error:(id)error;
- (void)_presentNewPasscodeVCWithTransitionStyle:(int64_t)style errorMessage:(id)message;
- (void)_presentVerifyPasscodeVCWithTransitionStyle:(int64_t)style;
- (void)clear;
- (void)clearWithErrorMessage:(id)message;
- (void)continueWithPasscode:(id)passcode;
- (void)finishWithPasscode:(id)passcode;
- (void)passcodeViewController:(id)controller didCancelWithError:(id)error;
- (void)passcodeViewController:(id)controller didSelectPasscodeType:(id)type;
- (void)passcodeViewController:(id)controller didSetPasscodeRecoveryEnabled:(BOOL)enabled;
- (void)passcodeViewController:(id)controller verifyPasscode:(id)passcode;
- (void)restart;
- (void)restartWithErrorMessage:(id)message;
- (void)startWithInput:(id)input presentationController:(id)controller completion:(id)completion;
@end

@implementation LAPSFetchNewPasscodeCoordinator

- (void)startWithInput:(id)input presentationController:(id)controller completion:(id)completion
{
  inputCopy = input;
  controllerCopy = controller;
  input = self->_input;
  self->_input = inputCopy;
  v11 = inputCopy;
  completionCopy = completion;

  v13 = MEMORY[0x23EE74B30](completionCopy);
  handler = self->_handler;
  self->_handler = v13;

  passcodeType = [(LAPSFetchNewPasscodeCoordinatorInput *)v11 passcodeType];
  passcodeType = self->_passcodeType;
  self->_passcodeType = passcodeType;

  self->_isPasscodeRecoveryEnabled = [(LAPSFetchNewPasscodeCoordinatorInput *)v11 isPasscodeRecoveryEnabled];
  presentationController = self->_presentationController;
  self->_presentationController = controllerCopy;

  [(LAPSFetchNewPasscodeCoordinator *)self _presentNewPasscodeVCWithTransitionStyle:1];
}

- (void)continueWithPasscode:(id)passcode
{
  objc_storeStrong(&self->_passcode, passcode);

  [(LAPSFetchNewPasscodeCoordinator *)self _presentVerifyPasscodeVCWithTransitionStyle:1];
}

- (void)restart
{
  [(LAPSFetchNewPasscodeCoordinator *)self clear];

  [(LAPSFetchNewPasscodeCoordinator *)self _presentNewPasscodeVCWithTransitionStyle:2];
}

- (void)restartWithErrorMessage:(id)message
{
  messageCopy = message;
  [(LAPSFetchNewPasscodeCoordinator *)self clear];
  [(LAPSFetchNewPasscodeCoordinator *)self _presentNewPasscodeVCWithTransitionStyle:2 errorMessage:messageCopy];
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

- (void)clearWithErrorMessage:(id)message
{
  passcode = self->_passcode;
  self->_passcode = 0;
  messageCopy = message;

  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
  [WeakRetained clear];

  v7 = objc_loadWeakRetained(&self->_passcodeVC);
  [v7 focus];

  v8 = objc_loadWeakRetained(&self->_passcodeVC);
  [v8 hideSpinner];

  v9 = objc_loadWeakRetained(&self->_passcodeVC);
  [v9 setErrorMessage:messageCopy];
}

- (void)finishWithPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __54__LAPSFetchNewPasscodeCoordinator_finishWithPasscode___block_invoke;
  v10 = &unk_278A65458;
  v11 = passcodeCopy;
  selfCopy = self;
  v5 = passcodeCopy;
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

- (void)_presentNewPasscodeVCWithTransitionStyle:(int64_t)style errorMessage:(id)message
{
  messageCopy = message;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __89__LAPSFetchNewPasscodeCoordinator__presentNewPasscodeVCWithTransitionStyle_errorMessage___block_invoke;
  v12 = &unk_278A654D0;
  selfCopy = self;
  v14 = messageCopy;
  v7 = messageCopy;
  v8 = __89__LAPSFetchNewPasscodeCoordinator__presentNewPasscodeVCWithTransitionStyle_errorMessage___block_invoke(&v9);
  [(LAPSFetchNewPasscodeCoordinator *)self _presentViewController:v8 transitionStyle:style, v9, v10, v11, v12, selfCopy];
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

- (void)_presentVerifyPasscodeVCWithTransitionStyle:(int64_t)style
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__LAPSFetchNewPasscodeCoordinator__presentVerifyPasscodeVCWithTransitionStyle___block_invoke;
  v6[3] = &unk_278A65520;
  v6[4] = self;
  v5 = __79__LAPSFetchNewPasscodeCoordinator__presentVerifyPasscodeVCWithTransitionStyle___block_invoke(v6);
  [(LAPSFetchNewPasscodeCoordinator *)self _presentViewController:v5 transitionStyle:style];
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

- (void)_invokeHandlerWithOutput:(id)output error:(id)error
{
  handler = self->_handler;
  if (handler)
  {
    errorCopy = error;
    outputCopy = output;
    v10 = [handler copy];
    v9 = self->_handler;
    self->_handler = 0;

    [(LAPSFetchNewPasscodeCoordinator *)self _deactivate];
    v10[2](v10, outputCopy, errorCopy);
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
    isPasscodeRecoveryEnabled = [(LAPSFetchNewPasscodeCoordinatorInput *)self->_input isPasscodeRecoveryEnabled];
    input = self->_input;
    if (isPasscodeRecoveryEnabled)
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

- (void)passcodeViewController:(id)controller verifyPasscode:(id)passcode
{
  controllerCopy = controller;
  passcodeCopy = passcode;
  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
  if (WeakRetained != controllerCopy)
  {
    [LAPSFetchNewPasscodeCoordinator passcodeViewController:verifyPasscode:];
  }

  passcodeType = self->_passcodeType;
  type = [passcodeCopy type];
  if (passcodeType != type)
  {
    [LAPSFetchNewPasscodeCoordinator passcodeViewController:verifyPasscode:];
  }

  [controllerCopy unfocus];
  [controllerCopy showSpinner];
  passcode = self->_passcode;
  delegate = [(LAPSFetchNewPasscodeCoordinator *)self delegate];
  v12 = delegate;
  if (passcode)
  {
    [delegate fetchNewPasscodeCoordinator:self verifyPasscode:self->_passcode matchesPasscode:passcodeCopy];
  }

  else
  {
    [delegate fetchNewPasscodeCoordinator:self verifyPasscode:passcodeCopy];
  }
}

- (void)passcodeViewController:(id)controller didCancelWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
  if (WeakRetained != controllerCopy)
  {
    [LAPSFetchNewPasscodeCoordinator passcodeViewController:didCancelWithError:];
  }

  [(LAPSFetchNewPasscodeCoordinator *)self _invokeHandlerWithError:errorCopy];
}

- (void)passcodeViewController:(id)controller didSelectPasscodeType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
  if (WeakRetained != controllerCopy)
  {
    [LAPSFetchNewPasscodeCoordinator passcodeViewController:didSelectPasscodeType:];
  }

  passcodeType = self->_passcodeType;
  self->_passcodeType = typeCopy;
}

- (void)passcodeViewController:(id)controller didSetPasscodeRecoveryEnabled:(BOOL)enabled
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
  if (WeakRetained != controllerCopy)
  {
    [LAPSFetchNewPasscodeCoordinator passcodeViewController:didSetPasscodeRecoveryEnabled:];
  }

  if (![(LAPSFetchNewPasscodeCoordinatorInput *)self->_input isPasscodeRecoverySupported]|| [(LAPSFetchNewPasscodeCoordinatorInput *)self->_input isPasscodeRecoveryRestricted])
  {
    [LAPSFetchNewPasscodeCoordinator passcodeViewController:didSetPasscodeRecoveryEnabled:];
  }

  input = self->_input;
  if (enabled)
  {
    [(LAPSFetchNewPasscodeCoordinatorInput *)input footerRecoveryEnabled];
  }

  else
  {
    [(LAPSFetchNewPasscodeCoordinatorInput *)input footerRecoveryDisabled];
  }
  v8 = ;
  [controllerCopy setFooter:v8];

  self->_isPasscodeRecoveryEnabled = enabled;
}

- (LAPSFetchNewPasscodeCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end