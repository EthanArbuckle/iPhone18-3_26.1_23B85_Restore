@interface AAUIRecoveryFactorController
- (AAUIRecoveryFactorController)initWithAccountManager:(id)a3 presentingViewController:(id)a4;
- (AAUIRecoveryFactorControllerDelegate)delegate;
- (UIViewController)presentingViewController;
- (id)_cdpHelper;
- (id)_custodianFlowController;
- (id)_stateController;
- (id)_walrusStateController;
- (void)_continueAddingRecoveryContact;
- (void)_custodianFlowControllerWithCompletion:(id)a3;
- (void)_displayCustodianAddNotAllowedAlert;
- (void)_displayRatchetGenericErrorAlert;
- (void)_handleRecoveryKeyOperationResultWithSuccess:(BOOL)a3 error:(id)a4 operationDescription:(id)a5 completion:(id)a6;
- (void)authenticateAndDeleteRecoveryKeyFromAllSystemsWithCompletion:(id)a3;
- (void)authenticateAndGenerateNewRecoveryKeyWithCompletion:(id)a3;
- (void)custodianSetupFlowControllerDidFinish:(id)a3;
- (void)custodianSetupFlowControllerRecoveryContactInviteSent;
- (void)deleteRecoveryKeyFromAllSystems:(id)a3;
- (void)generateRecoveryKeyWithCompletion:(id)a3;
- (void)setForceInlinePresentation:(BOOL)a3;
- (void)startAddingDataRecoveryService;
- (void)startAddingRecoveryContact;
- (void)validateRecoveryKeyWithCompletion:(id)a3;
@end

@implementation AAUIRecoveryFactorController

- (AAUIRecoveryFactorController)initWithAccountManager:(id)a3 presentingViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AAUIRecoveryFactorController;
  v8 = [(AAUIRecoveryFactorController *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(AAUIRecoveryFactorController *)v8 setAccountManager:v6];
    [(AAUIRecoveryFactorController *)v9 setPresentingViewController:v7];
    v10 = objc_alloc_init(MEMORY[0x1E698DD40]);
    v11 = [[AAUIDTOHelper alloc] initWithDTOController:v10];
    dtoHelper = v9->_dtoHelper;
    v9->_dtoHelper = v11;
  }

  return v9;
}

- (void)_displayCustodianAddNotAllowedAlert
{
  v4 = [(AAUIDTOHelper *)self->_dtoHelper makeCustodianAddOpNotAllowedAlert];
  v3 = [(AAUIRecoveryFactorController *)self presentingViewController];
  [v3 presentViewController:v4 animated:1 completion:0];
}

- (void)_displayRatchetGenericErrorAlert
{
  v4 = [(AAUIDTOHelper *)self->_dtoHelper makeGenericRatchetFailedAlert];
  v3 = [(AAUIRecoveryFactorController *)self presentingViewController];
  [v3 presentViewController:v4 animated:1 completion:0];
}

- (void)startAddingRecoveryContact
{
  v3 = [(AAUIRecoveryFactorController *)self accountManager];
  v4 = [v3 accounts];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v5)
  {
    dtoHelper = self->_dtoHelper;
    v7 = [v5 aa_altDSID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke;
    v9[3] = &unk_1E820C140;
    v9[4] = self;
    [(AAUIDTOHelper *)dtoHelper shouldGateUsingRatchetForAltDSID:v7 completion:v9];
  }

  else
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [AAUIRecoveryFactorController startAddingRecoveryContact];
    }
  }
}

void __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_39;
    v13[3] = &unk_1E820B8F0;
    v13[4] = *(a1 + 32);
    v11 = MEMORY[0x1E69E96A0];
    v12 = v13;
LABEL_10:
    dispatch_async(v11, v12);
    return;
  }

  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_cold_1();
  }

  if (![*(*(a1 + 32) + 40) isDTOGatingEnabled])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_2;
    block[3] = &unk_1E820B8F0;
    block[4] = *(a1 + 32);
    v11 = MEMORY[0x1E69E96A0];
    v12 = block;
    goto LABEL_10;
  }

  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_cold_2();
  }

  v5 = *(a1 + 32);
  v6 = v5[5];
  v7 = [v5 presentingViewController];
  v8 = [v6 makeRatchetContextWithPresentationContext:v7 DTOContextType:1];

  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_35;
  v15[3] = &unk_1E820C1A8;
  v15[4] = v9;
  [v10 shouldAllowOpForContext:v8 completion:v15];
}

void __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_35(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_35_cold_1(a2, v5, v6);
  }

  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_36;
    block[3] = &unk_1E820B8F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_2(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_2_cold_1();
  }

  return [*(a1 + 32) _continueAddingRecoveryContact];
}

uint64_t __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_39(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_39_cold_1();
  }

  return [*(a1 + 32) _displayCustodianAddNotAllowedAlert];
}

- (void)_continueAddingRecoveryContact
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__AAUIRecoveryFactorController__continueAddingRecoveryContact__block_invoke;
  v2[3] = &unk_1E820C2B8;
  v2[4] = self;
  [(AAUIRecoveryFactorController *)self _custodianFlowControllerWithCompletion:v2];
}

void __62__AAUIRecoveryFactorController__continueAddingRecoveryContact__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (v12 && v7)
  {
    v9 = [*(a1 + 32) telemetryFlowID];
    [v7 setTelemetryFlowID:v9];

    [v7 start];
    if ([v12 forceInlinePresentation])
    {
      goto LABEL_7;
    }

    v10 = [v7 navigationController];
    v11 = [v12 presentingViewController];
    [v11 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v10 = [v12 delegate];
    [v10 recoveryFactorController:v12 didFinishAddingRecoveryContactWithError:v8];
  }

LABEL_7:
}

- (void)authenticateAndGenerateNewRecoveryKeyWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(AAUIRecoveryFactorController *)self _stateController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AAUIRecoveryFactorController *)self _stateController];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __84__AAUIRecoveryFactorController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke;
    v10[3] = &unk_1E820C2E0;
    objc_copyWeak(&v12, &location);
    v11 = v4;
    [v7 authenticateAndGenerateNewRecoveryKeyWithCompletion:v10];

    objc_destroyWeak(&v12);
  }

  else
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAUIRecoveryFactorController authenticateAndGenerateNewRecoveryKeyWithCompletion:];
    }

    if (v4)
    {
      v9 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-3];
      (*(v4 + 2))(v4, 0, v9);
    }
  }

  objc_destroyWeak(&location);
}

void __84__AAUIRecoveryFactorController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleRecoveryKeyOperationResultWithSuccess:a2 error:v5 operationDescription:@"recovery key generation" completion:*(a1 + 32)];
}

- (void)generateRecoveryKeyWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(AAUIRecoveryFactorController *)self _stateController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__AAUIRecoveryFactorController_generateRecoveryKeyWithCompletion___block_invoke;
  v7[3] = &unk_1E820C2E0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 generateNewRecoveryKey:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __66__AAUIRecoveryFactorController_generateRecoveryKeyWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleRecoveryKeyOperationResultWithSuccess:a2 error:v5 operationDescription:@"recovery key generation" completion:*(a1 + 32)];
}

- (void)validateRecoveryKeyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69977E8] contextForPrimaryAccount];
  [v5 setType:9];
  v6 = [(AAUIRecoveryFactorController *)self _cdpHelper];
  v7 = [v6 cdpStateControllerWithContext:v5];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__AAUIRecoveryFactorController_validateRecoveryKeyWithCompletion___block_invoke;
  v9[3] = &unk_1E820C308;
  v10 = v4;
  v8 = v4;
  [v7 verifyRecoveryKey:v9];
}

void __66__AAUIRecoveryFactorController_validateRecoveryKeyWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66__AAUIRecoveryFactorController_validateRecoveryKeyWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __66__AAUIRecoveryFactorController_validateRecoveryKeyWithCompletion___block_invoke_cold_2();
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }
}

- (void)deleteRecoveryKeyFromAllSystems:(id)a3
{
  v4 = MEMORY[0x1E69977E8];
  v5 = a3;
  v8 = [v4 contextForPrimaryAccount];
  v6 = [(AAUIRecoveryFactorController *)self _cdpHelper];
  v7 = [v6 cdpStateControllerWithContext:v8];

  [v7 deleteRecoveryKey:v5];
}

- (void)authenticateAndDeleteRecoveryKeyFromAllSystemsWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(AAUIRecoveryFactorController *)self _stateController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AAUIRecoveryFactorController *)self _stateController];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __93__AAUIRecoveryFactorController_authenticateAndDeleteRecoveryKeyFromAllSystemsWithCompletion___block_invoke;
    v10[3] = &unk_1E820C2E0;
    objc_copyWeak(&v12, &location);
    v11 = v4;
    [v7 authenticateAndDeleteRecoveryKeyWithCompletion:v10];

    objc_destroyWeak(&v12);
  }

  else
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAUIRecoveryFactorController authenticateAndDeleteRecoveryKeyFromAllSystemsWithCompletion:];
    }

    if (v4)
    {
      v9 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-3];
      (*(v4 + 2))(v4, 0, v9);
    }
  }

  objc_destroyWeak(&location);
}

void __93__AAUIRecoveryFactorController_authenticateAndDeleteRecoveryKeyFromAllSystemsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleRecoveryKeyOperationResultWithSuccess:a2 error:v5 operationDescription:@"recovery key deletion" completion:*(a1 + 32)];
}

- (void)_handleRecoveryKeyOperationResultWithSuccess:(BOOL)a3 error:(id)a4 operationDescription:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (v8)
  {
    v12 = objc_alloc_init(MEMORY[0x1E698B850]);
    [v12 startHealthCheckWithCompletion:&__block_literal_global_4];
  }

  else
  {
    v12 = _AAUILogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [AAUIRecoveryFactorController _handleRecoveryKeyOperationResultWithSuccess:error:operationDescription:completion:];
    }
  }

  if (v11)
  {
    v11[2](v11, v8, v9);
  }
}

void __115__AAUIRecoveryFactorController__handleRecoveryKeyOperationResultWithSuccess_error_operationDescription_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _AAUILogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __115__AAUIRecoveryFactorController__handleRecoveryKeyOperationResultWithSuccess_error_operationDescription_completion___block_invoke_cold_1();
    }
  }
}

- (void)startAddingDataRecoveryService
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__AAUIRecoveryFactorController_startAddingDataRecoveryService__block_invoke;
  v2[3] = &unk_1E820C2B8;
  v2[4] = self;
  [(AAUIRecoveryFactorController *)self _custodianFlowControllerWithCompletion:v2];
}

void __62__AAUIRecoveryFactorController_startAddingDataRecoveryService__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && [v8 isWalrusEnabled])
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Starting to add iCDRS after verifying that walrus is enabled", v13, 2u);
    }

    v11 = [v7 presentingViewController];
    [v8 startAddingDataRecoveryService:v11];
  }

  else
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __62__AAUIRecoveryFactorController_startAddingDataRecoveryService__block_invoke_cold_1();
    }

    v11 = [v7 delegate];
    [v11 recoveryFactorController:*(a1 + 32) didFinishAddingRecoveryContactWithError:v9];
  }
}

- (void)setForceInlinePresentation:(BOOL)a3
{
  v3 = a3;
  self->_forceInlinePresentation = a3;
  v5 = [(AAUIRecoveryFactorController *)self _cdpHelper];
  [v5 setForceInline:v3];

  v6 = [(AAUIRecoveryFactorController *)self _custodianFlowController];
  [v6 setForceInlinePresentation:v3];
}

- (id)_custodianFlowController
{
  if (!self->_custodianFlowController)
  {
    v3 = [AAUICustodianSetupFlowController alloc];
    v4 = [(AAUIRecoveryFactorController *)self accountManager];
    v5 = [(AAUICustodianSetupFlowController *)v3 initWithAccountManager:v4];
    custodianFlowController = self->_custodianFlowController;
    self->_custodianFlowController = v5;

    [(AAUICustodianSetupFlowController *)self->_custodianFlowController setDelegate:self];
    if ([(AAUIRecoveryFactorController *)self forceInlinePresentation])
    {
      v7 = [(AAUIRecoveryFactorController *)self presentingViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [(AAUIRecoveryFactorController *)self presentingViewController];
        [(AAUICustodianSetupFlowController *)self->_custodianFlowController setNavigationController:v9];
      }
    }
  }

  v10 = self->_custodianFlowController;

  return v10;
}

- (void)_custodianFlowControllerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AAUIRecoveryFactorController _custodianFlowControllerWithCompletion:];
  }

  objc_initWeak(&location, self);
  v6 = [(AAUIRecoveryFactorController *)self _walrusStateController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__AAUIRecoveryFactorController__custodianFlowControllerWithCompletion___block_invoke;
  v8[3] = &unk_1E820C378;
  objc_copyWeak(&v10, &location);
  v7 = v4;
  v9 = v7;
  [v6 walrusStatusWithCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __71__AAUIRecoveryFactorController__custodianFlowControllerWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__AAUIRecoveryFactorController__custodianFlowControllerWithCompletion___block_invoke_2;
  v10[3] = &unk_1E820C350;
  v14 = a2;
  v7 = *(a1 + 32);
  v12 = WeakRetained;
  v13 = v7;
  v11 = v5;
  v8 = WeakRetained;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __71__AAUIRecoveryFactorController__custodianFlowControllerWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = [*(a1 + 40) _custodianFlowController];
    [v2 setIsWalrusEnabled:*(a1 + 56) == 1];

    v5 = a1 + 40;
    v3 = *(a1 + 40);
    v4 = *(v5 + 8);
    v7 = [v3 _custodianFlowController];
    (*(v4 + 16))(v4, v3, v7, 0);
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

- (id)_stateController
{
  stateController = self->_stateController;
  if (!stateController)
  {
    v4 = [(AAUIRecoveryFactorController *)self _cdpHelper];
    v5 = [v4 cdpStateControllerForPrimaryAccount];
    v6 = self->_stateController;
    self->_stateController = v5;

    stateController = self->_stateController;
  }

  return stateController;
}

- (id)_cdpHelper
{
  cdpHelper = self->_cdpHelper;
  if (!cdpHelper)
  {
    v4 = [(AAUIRecoveryFactorController *)self presentingViewController];
    v5 = [AAUICDPHelper helperWithPresenter:v4];
    v6 = self->_cdpHelper;
    self->_cdpHelper = v5;

    cdpHelper = self->_cdpHelper;
  }

  return cdpHelper;
}

- (id)_walrusStateController
{
  walrusStateController = self->_walrusStateController;
  if (!walrusStateController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6997808]);
    v5 = self->_walrusStateController;
    self->_walrusStateController = v4;

    walrusStateController = self->_walrusStateController;
  }

  return walrusStateController;
}

- (void)custodianSetupFlowControllerDidFinish:(id)a3
{
  if (![(AAUIRecoveryFactorController *)self forceInlinePresentation])
  {
    v4 = [(AAUIRecoveryFactorController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }

  v5 = [(AAUIRecoveryFactorController *)self delegate];
  [v5 recoveryFactorController:self didFinishAddingRecoveryContactWithError:0];
}

- (void)custodianSetupFlowControllerRecoveryContactInviteSent
{
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AAUIRecoveryFactorController custodianSetupFlowControllerRecoveryContactInviteSent];
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (AAUIRecoveryFactorControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_35_cold_1(char a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_debug_impl(&dword_1C5355000, log, OS_LOG_TYPE_DEBUG, "Ratchet auth returned with success: %d, error: %@,", v3, 0x12u);
}

- (void)authenticateAndGenerateNewRecoveryKeyWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__AAUIRecoveryFactorController_validateRecoveryKeyWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)authenticateAndDeleteRecoveryKeyFromAllSystemsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleRecoveryKeyOperationResultWithSuccess:error:operationDescription:completion:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1C5355000, v1, OS_LOG_TYPE_ERROR, "Recovery Key operation '%@' was not successful. MaybeError: %@", v2, 0x16u);
}

void __115__AAUIRecoveryFactorController__handleRecoveryKeyOperationResultWithSuccess_error_operationDescription_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __62__AAUIRecoveryFactorController_startAddingDataRecoveryService__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end