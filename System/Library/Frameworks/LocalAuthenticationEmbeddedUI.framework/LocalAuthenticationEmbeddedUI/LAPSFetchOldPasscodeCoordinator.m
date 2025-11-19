@interface LAPSFetchOldPasscodeCoordinator
- (LAPSFetchOldPasscodeCoordinatorDelegate)delegate;
- (void)_deactivate;
- (void)_invokeHandlerWithOutput:(id)a3 error:(id)a4;
- (void)_presentPasscodeVC;
- (void)finishWithPasscode:(id)a3;
- (void)passcodeViewController:(id)a3 verifyPasscode:(id)a4;
- (void)showPasscodeValidationError:(id)a3 completion:(id)a4;
- (void)startBackoffWithTimeout:(int64_t)a3;
- (void)startWithInput:(id)a3 presentationController:(id)a4 completion:(id)a5;
@end

@implementation LAPSFetchOldPasscodeCoordinator

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

  presentationController = self->_presentationController;
  self->_presentationController = v9;

  [(LAPSFetchOldPasscodeCoordinator *)self _presentPasscodeVC];
}

- (void)startBackoffWithTimeout:(int64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [LAPSPasscodeBackoffTimerController alloc];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__LAPSFetchOldPasscodeCoordinator_startBackoffWithTimeout___block_invoke;
  v10[3] = &unk_278A657C8;
  objc_copyWeak(&v11, &location);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__LAPSFetchOldPasscodeCoordinator_startBackoffWithTimeout___block_invoke_2;
  v8[3] = &unk_278A657F0;
  objc_copyWeak(&v9, &location);
  v6 = [(LAPSPasscodeBackoffTimerController *)v5 initWithTimeout:a3 updateHandler:v10 completionHandler:v8];
  timer = self->_timer;
  self->_timer = v6;

  [(LAPSPasscodeBackoffTimerController *)self->_timer start];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __59__LAPSFetchOldPasscodeCoordinator_startBackoffWithTimeout___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v4 = [WeakRetained delegate];
    v5 = [v4 fetchOldPasscodeCoordinator:v9 backoffMessageForTimeout:a2];

    v6 = objc_loadWeakRetained(v9 + 5);
    [v6 setHeader:v5];

    v7 = objc_loadWeakRetained(v9 + 5);
    [v7 unfocus];

    v8 = objc_loadWeakRetained(v9 + 5);
    [v8 clear];

    WeakRetained = v9;
  }
}

void __59__LAPSFetchOldPasscodeCoordinator_startBackoffWithTimeout___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 5);
    v3 = [v6[1] prompt];
    [v2 setHeader:v3];

    v4 = objc_loadWeakRetained(v6 + 5);
    [v4 clear];

    v5 = objc_loadWeakRetained(v6 + 5);
    [v5 focus];

    WeakRetained = v6;
  }
}

- (void)showPasscodeValidationError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__LAPSFetchOldPasscodeCoordinator_showPasscodeValidationError_completion___block_invoke;
  v11[3] = &unk_278A65818;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [WeakRetained shakeWithCompletion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __74__LAPSFetchOldPasscodeCoordinator_showPasscodeValidationError_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 5);
    [v3 hideSpinner];

    v4 = objc_loadWeakRetained(v7 + 5);
    [v4 clear];

    v5 = objc_loadWeakRetained(v7 + 5);
    [v5 setErrorMessage:*(a1 + 32)];

    v6 = objc_loadWeakRetained(v7 + 5);
    [v6 focus];

    (*(*(a1 + 40) + 16))();
    WeakRetained = v7;
  }
}

- (void)finishWithPasscode:(id)a3
{
  v6 = a3;
  v4 = v6;
  v5 = objc_alloc_init(LAPSFetchOldPasscodeCoordinatorOutput);
  [(LAPSFetchOldPasscodeCoordinatorOutput *)v5 setPasscode:v6];
  [(LAPSFetchOldPasscodeCoordinator *)self _invokeHandlerWithOutput:v5];
}

LAPSFetchOldPasscodeCoordinatorOutput *__54__LAPSFetchOldPasscodeCoordinator_finishWithPasscode___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(LAPSFetchOldPasscodeCoordinatorOutput);
  [(LAPSFetchOldPasscodeCoordinatorOutput *)v2 setPasscode:*(a1 + 32)];

  return v2;
}

- (void)_presentPasscodeVC
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__LAPSFetchOldPasscodeCoordinator__presentPasscodeVC__block_invoke;
  v4[3] = &unk_278A65520;
  v4[4] = self;
  v3 = __53__LAPSFetchOldPasscodeCoordinator__presentPasscodeVC__block_invoke(v4);
  [(LAPSFetchOldPasscodeCoordinator *)self _presentViewController:v3 transitionStyle:1];

  if ([(LAPSFetchOldPasscodeCoordinatorInput *)self->_input backoffTimeout]>= 1)
  {
    [(LAPSFetchOldPasscodeCoordinator *)self startBackoffWithTimeout:[(LAPSFetchOldPasscodeCoordinatorInput *)self->_input backoffTimeout]];
  }
}

LAPSPasscodeViewController *__53__LAPSFetchOldPasscodeCoordinator__presentPasscodeVC__block_invoke(uint64_t a1)
{
  v2 = [LAPSPasscodeViewController alloc];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__LAPSFetchOldPasscodeCoordinator__presentPasscodeVC__block_invoke_2;
  v6[3] = &unk_278A654F8;
  v6[4] = *(a1 + 32);
  v3 = __53__LAPSFetchOldPasscodeCoordinator__presentPasscodeVC__block_invoke_2(v6);
  v4 = [(LAPSPasscodeViewControllerBase *)v2 initWithConfiguration:v3];

  [(LAPSPasscodeViewControllerBase *)v4 setDelegate:*(a1 + 32)];
  objc_storeWeak((*(a1 + 32) + 40), v4);

  return v4;
}

LAPSPasscodeViewControllerConfiguration *__53__LAPSFetchOldPasscodeCoordinator__presentPasscodeVC__block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(LAPSPasscodeViewControllerConfiguration);
  v3 = [*(*(a1 + 32) + 8) title];
  [(LAPSPasscodeViewControllerConfiguration *)v2 setTitle:v3];

  v4 = [*(*(a1 + 32) + 8) prompt];
  [(LAPSPasscodeViewControllerConfiguration *)v2 setPrompt:v4];

  v5 = [*(*(a1 + 32) + 8) subPrompt];
  [(LAPSPasscodeViewControllerConfiguration *)v2 setSubPrompt:v5];

  v6 = [*(*(a1 + 32) + 8) nextButton];
  [(LAPSPasscodeViewControllerConfiguration *)v2 setNextButton:v6];

  v7 = [*(*(a1 + 32) + 8) passcodeType];
  [(LAPSPasscodeViewControllerConfiguration *)v2 setPasscodeType:v7];

  v8 = [*(*(a1 + 32) + 8) errorMessage];
  [(LAPSPasscodeViewControllerConfiguration *)v2 setErrorMessage:v8];

  -[LAPSPasscodeViewControllerConfiguration setShouldAvoidBecomingFirstResponderOnStart:](v2, "setShouldAvoidBecomingFirstResponderOnStart:", [*(*(a1 + 32) + 8) backoffTimeout] > 0);

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

    [(LAPSFetchOldPasscodeCoordinator *)self _deactivate];
    v10[2](v10, v8, v7);
  }
}

- (void)_deactivate
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
  [WeakRetained unfocus];
}

- (void)passcodeViewController:(id)a3 verifyPasscode:(id)a4
{
  v10 = a3;
  v6 = a4;
  [v10 unfocus];
  [v10 showSpinner];
  v7 = [(LAPSFetchOldPasscodeCoordinatorInput *)self->_input passcodeType];
  v8 = [v6 type];
  if (([v7 isEqual:v8] & 1) == 0)
  {
    [LAPSFetchOldPasscodeCoordinator passcodeViewController:verifyPasscode:];
  }

  v9 = [(LAPSFetchOldPasscodeCoordinator *)self delegate];
  [v9 fetchOldPasscodeCoordinator:self verifyPasscode:v6];
}

- (LAPSFetchOldPasscodeCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end