@interface AAUIPasscodeValidateController
+ (id)stingrayControllerWithPresenter:(id)presenter;
+ (id)stingrayControllerWithPresenter:(id)presenter forceInline:(BOOL)inline;
- (AAUIPasscodeValidationDelegate)delegate;
- (id)_specifierForMode:(int)mode;
- (id)passcodeValidationCompletion;
- (void)_setupNavController;
- (void)_showPasscodePromptWithMode:(int)mode;
- (void)createPasscodeStateWithCompletion:(id)completion;
- (void)dealloc;
- (void)devicePINController:(id)controller canCancelWithCompletion:(id)completion;
- (void)devicePINController:(id)controller didAcceptSetPIN:(id)n;
- (void)devicePINController:(id)controller didFailToSetPinWithError:(id)error;
- (void)didAcceptEnteredPIN:(id)n;
- (void)didCancelEnteringPIN;
- (void)dismissFlowWithLocalSecret:(id)secret error:(id)error;
- (void)setPasscodeValidationCompletion:(id)completion;
- (void)validatePasscodeStateWithCompletion:(id)completion;
- (void)validateStingrayPasscodeStateWithCompletion:(id)completion;
@end

@implementation AAUIPasscodeValidateController

+ (id)stingrayControllerWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  objc_opt_class();
  v5 = [self stingrayControllerWithPresenter:presenterCopy forceInline:objc_opt_isKindOfClass() & 1];

  return v5;
}

+ (id)stingrayControllerWithPresenter:(id)presenter forceInline:(BOOL)inline
{
  inlineCopy = inline;
  v17 = *MEMORY[0x1E69E9840];
  presenterCopy = presenter;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:inlineCopy];
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "creating controller with inline forced: %@", &v15, 0xCu);
  }

  v8 = objc_alloc_init(objc_opt_class());
  v9 = [AAUICDPHelper helperWithPresenter:presenterCopy];
  v10 = *(v8 + 1);
  *(v8 + 1) = v9;

  if (inlineCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  [*(v8 + 1) setForceInline:isKindOfClass & 1];
  *(v8 + 10) = 0;
  appearance = [MEMORY[0x1E69C5710] appearance];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [appearance setTextColor:labelColor];

  return v8;
}

- (void)dealloc
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "AAUIPasscodeValidateController dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = AAUIPasscodeValidateController;
  [(AAUIPasscodeValidateController *)&v4 dealloc];
}

- (id)passcodeValidationCompletion
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__11;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __62__AAUIPasscodeValidateController_passcodeValidationCompletion__block_invoke;
  v8 = &unk_1E820D8C8;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_completionLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_completionLock);
  v4 = _Block_copy(v12[5]);
  _Block_object_dispose(&v11, 8);

  return v4;
}

uint64_t __62__AAUIPasscodeValidateController_passcodeValidationCompletion__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = _Block_copy(*(*(a1 + 32) + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (void)setPasscodeValidationCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__AAUIPasscodeValidateController_setPasscodeValidationCompletion___block_invoke;
  v6[3] = &unk_1E820B780;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  os_unfair_lock_lock(&self->_completionLock);
  __66__AAUIPasscodeValidateController_setPasscodeValidationCompletion___block_invoke(v6);
  os_unfair_lock_unlock(&self->_completionLock);
}

uint64_t __66__AAUIPasscodeValidateController_setPasscodeValidationCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = _Block_copy(*(a1 + 40));

  return MEMORY[0x1EEE66BB8]();
}

- (void)validateStingrayPasscodeStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Passcode validation was requested", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__AAUIPasscodeValidateController_validateStingrayPasscodeStateWithCompletion___block_invoke;
  v7[3] = &unk_1E820D8F0;
  v8 = completionCopy;
  v6 = completionCopy;
  [(AAUIPasscodeValidateController *)self validatePasscodeStateWithCompletion:v7];
}

uint64_t __78__AAUIPasscodeValidateController_validateStingrayPasscodeStateWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (void)validatePasscodeStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Passcode validation was requested", buf, 2u);
  }

  passcodeValidationCompletion = [(AAUIPasscodeValidateController *)self passcodeValidationCompletion];

  if (passcodeValidationCompletion)
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Passcode Creation/Validation in progress.", v10, 2u);
    }

    v8 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4405];
    completionCopy[2](completionCopy, 0, v8);
  }

  else
  {
    [(AAUIPasscodeValidateController *)self setPasscodeValidationCompletion:completionCopy];
    if ([MEMORY[0x1E69977F0] hasLocalSecret])
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }

    [(AAUIPasscodeValidateController *)self _showPasscodePromptWithMode:v9];
  }
}

- (void)createPasscodeStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Create passcode was requested", buf, 2u);
  }

  passcodeValidationCompletion = [(AAUIPasscodeValidateController *)self passcodeValidationCompletion];

  if (passcodeValidationCompletion)
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Passcode Creation/Validation in progress.", v9, 2u);
    }

    v8 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4405];
    completionCopy[2](completionCopy, 0, v8);
  }

  else
  {
    [(AAUIPasscodeValidateController *)self setPasscodeValidationCompletion:completionCopy];
    [(AAUIPasscodeValidateController *)self _showPasscodePromptWithMode:0];
  }
}

- (void)_showPasscodePromptWithMode:(int)mode
{
  v3 = *&mode;
  v12 = *MEMORY[0x1E69E9840];
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v3;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Showing passcode collection with mode: %d", v11, 8u);
  }

  [(AAUIPasscodeValidateController *)self _setupNavController];
  v6 = objc_alloc_init(AAUIDevicePINController);
  pinController = self->_pinController;
  self->_pinController = v6;

  if (!v3)
  {
    [(DevicePINController *)self->_pinController setAllowOptionsButton:1];
  }

  [(DevicePINController *)self->_pinController setShouldDismissWhenDone:0];
  v8 = self->_pinController;
  v9 = [(AAUIPasscodeValidateController *)self _specifierForMode:v3];
  [(DevicePINController *)v8 setSpecifier:v9];

  [(PSSetupController *)self->_navController showController:self->_pinController];
  _presentingViewController = [(AAUIPasscodeValidateController *)self _presentingViewController];
  [_presentingViewController presentViewController:self->_navController animated:1 completion:0];
}

- (void)_setupNavController
{
  navController = self->_navController;
  self->_navController = 0;

  v4 = objc_alloc_init(MEMORY[0x1E69C5740]);
  _presentingViewController = [(AAUIPasscodeValidateController *)self _presentingViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _presentingViewController2 = [(AAUIPasscodeValidateController *)self _presentingViewController];
    rootController = [_presentingViewController2 rootController];
    [v4 setRootController:rootController];
  }

  v9 = self->_navController;
  self->_navController = v4;
  v10 = v4;

  [(PSSetupController *)self->_navController setModalInPresentation:1];
}

- (id)_specifierForMode:(int)mode
{
  v3 = *&mode;
  v5 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:@"CDPSecretValidation" target:0 set:0 get:0 detail:0 cell:13 edit:0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 setProperty:v7 forKey:*MEMORY[0x1E69C5960]];

  [v5 setEditPaneClass:objc_opt_class()];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [v5 setProperty:v8 forKey:@"mode"];

  [v5 setProperty:self forKey:*MEMORY[0x1E69C59B0]];

  return v5;
}

- (void)didAcceptEnteredPIN:(id)n
{
  nCopy = n;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Passcode accepted, proceeding", v8, 2u);
  }

  if ([(DevicePINController *)self->_pinController simplePIN])
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  v7 = [objc_alloc(MEMORY[0x1E69977F8]) initWithValidatedSecret:nCopy secretType:v6];

  [(AAUIPasscodeValidateController *)self dismissFlowWithLocalSecret:v7 error:0];
}

- (void)dismissFlowWithLocalSecret:(id)secret error:(id)error
{
  secretCopy = secret;
  errorCopy = error;
  presentingViewController = [(AAUICDPHelper *)self->_helper presentingViewController];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__AAUIPasscodeValidateController_dismissFlowWithLocalSecret_error___block_invoke;
  v11[3] = &unk_1E820BF58;
  v11[4] = self;
  v12 = secretCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = secretCopy;
  [presentingViewController dismissViewControllerAnimated:1 completion:v11];
}

void __67__AAUIPasscodeValidateController_dismissFlowWithLocalSecret_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) passcodeValidationCompletion];

  if (v2)
  {
    v3 = [*(a1 + 32) passcodeValidationCompletion];
    v3[2](v3, *(a1 + 40), *(a1 + 48));

    v4 = *(a1 + 32);

    [v4 setPasscodeValidationCompletion:0];
  }
}

- (void)didCancelEnteringPIN
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Passcode entry cancelled, stopping the flow", v5, 2u);
  }

  v4 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-1];
  [(AAUIPasscodeValidateController *)self dismissFlowWithLocalSecret:0 error:v4];
}

- (void)devicePINController:(id)controller didFailToSetPinWithError:(id)error
{
  errorCopy = error;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Passcode accepted, proceeding", v7, 2u);
  }

  [(AAUIPasscodeValidateController *)self dismissFlowWithLocalSecret:0 error:errorCopy];
}

- (void)devicePINController:(id)controller didAcceptSetPIN:(id)n
{
  nCopy = n;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Detected passcode set accepted", buf, 2u);
  }

  if (nCopy)
  {
    if ([(DevicePINController *)self->_pinController simplePIN])
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    passcodeValidationCompletion = [objc_alloc(MEMORY[0x1E69977F8]) initWithValidatedSecret:nCopy secretType:v7];
    [(AAUIPasscodeValidateController *)self dismissFlowWithLocalSecret:passcodeValidationCompletion error:0];
  }

  else
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Passcode was accepted, but it was not set, initiate revalidation", v10, 2u);
    }

    passcodeValidationCompletion = [(AAUIPasscodeValidateController *)self passcodeValidationCompletion];
    [(AAUIPasscodeValidateController *)self validatePasscodeStateWithCompletion:passcodeValidationCompletion];
  }
}

- (void)devicePINController:(id)controller canCancelWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Passcode entry cancel tapped. Check with delegate", v10, 2u);
  }

  delegate = [(AAUIPasscodeValidateController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(AAUIPasscodeValidateController *)self delegate];
    [delegate2 localSecretValidationCanCancelWithViewController:self->_navController completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (AAUIPasscodeValidationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end