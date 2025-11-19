@interface AAUIPasscodeValidateController
+ (id)stingrayControllerWithPresenter:(id)a3;
+ (id)stingrayControllerWithPresenter:(id)a3 forceInline:(BOOL)a4;
- (AAUIPasscodeValidationDelegate)delegate;
- (id)_specifierForMode:(int)a3;
- (id)passcodeValidationCompletion;
- (void)_setupNavController;
- (void)_showPasscodePromptWithMode:(int)a3;
- (void)createPasscodeStateWithCompletion:(id)a3;
- (void)dealloc;
- (void)devicePINController:(id)a3 canCancelWithCompletion:(id)a4;
- (void)devicePINController:(id)a3 didAcceptSetPIN:(id)a4;
- (void)devicePINController:(id)a3 didFailToSetPinWithError:(id)a4;
- (void)didAcceptEnteredPIN:(id)a3;
- (void)didCancelEnteringPIN;
- (void)dismissFlowWithLocalSecret:(id)a3 error:(id)a4;
- (void)setPasscodeValidationCompletion:(id)a3;
- (void)validatePasscodeStateWithCompletion:(id)a3;
- (void)validateStingrayPasscodeStateWithCompletion:(id)a3;
@end

@implementation AAUIPasscodeValidateController

+ (id)stingrayControllerWithPresenter:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [a1 stingrayControllerWithPresenter:v4 forceInline:objc_opt_isKindOfClass() & 1];

  return v5;
}

+ (id)stingrayControllerWithPresenter:(id)a3 forceInline:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "creating controller with inline forced: %@", &v15, 0xCu);
  }

  v8 = objc_alloc_init(objc_opt_class());
  v9 = [AAUICDPHelper helperWithPresenter:v5];
  v10 = *(v8 + 1);
  *(v8 + 1) = v9;

  if (v4)
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
  v12 = [MEMORY[0x1E69C5710] appearance];
  v13 = [MEMORY[0x1E69DC888] labelColor];
  [v12 setTextColor:v13];

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
  v9 = self;
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

- (void)setPasscodeValidationCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__AAUIPasscodeValidateController_setPasscodeValidationCompletion___block_invoke;
  v6[3] = &unk_1E820B780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  os_unfair_lock_lock(&self->_completionLock);
  __66__AAUIPasscodeValidateController_setPasscodeValidationCompletion___block_invoke(v6);
  os_unfair_lock_unlock(&self->_completionLock);
}

uint64_t __66__AAUIPasscodeValidateController_setPasscodeValidationCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = _Block_copy(*(a1 + 40));

  return MEMORY[0x1EEE66BB8]();
}

- (void)validateStingrayPasscodeStateWithCompletion:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
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

- (void)validatePasscodeStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Passcode validation was requested", buf, 2u);
  }

  v6 = [(AAUIPasscodeValidateController *)self passcodeValidationCompletion];

  if (v6)
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Passcode Creation/Validation in progress.", v10, 2u);
    }

    v8 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4405];
    v4[2](v4, 0, v8);
  }

  else
  {
    [(AAUIPasscodeValidateController *)self setPasscodeValidationCompletion:v4];
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

- (void)createPasscodeStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Create passcode was requested", buf, 2u);
  }

  v6 = [(AAUIPasscodeValidateController *)self passcodeValidationCompletion];

  if (v6)
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Passcode Creation/Validation in progress.", v9, 2u);
    }

    v8 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4405];
    v4[2](v4, 0, v8);
  }

  else
  {
    [(AAUIPasscodeValidateController *)self setPasscodeValidationCompletion:v4];
    [(AAUIPasscodeValidateController *)self _showPasscodePromptWithMode:0];
  }
}

- (void)_showPasscodePromptWithMode:(int)a3
{
  v3 = *&a3;
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
  v10 = [(AAUIPasscodeValidateController *)self _presentingViewController];
  [v10 presentViewController:self->_navController animated:1 completion:0];
}

- (void)_setupNavController
{
  navController = self->_navController;
  self->_navController = 0;

  v4 = objc_alloc_init(MEMORY[0x1E69C5740]);
  v5 = [(AAUIPasscodeValidateController *)self _presentingViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AAUIPasscodeValidateController *)self _presentingViewController];
    v8 = [v7 rootController];
    [v4 setRootController:v8];
  }

  v9 = self->_navController;
  self->_navController = v4;
  v10 = v4;

  [(PSSetupController *)self->_navController setModalInPresentation:1];
}

- (id)_specifierForMode:(int)a3
{
  v3 = *&a3;
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

- (void)didAcceptEnteredPIN:(id)a3
{
  v4 = a3;
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

  v7 = [objc_alloc(MEMORY[0x1E69977F8]) initWithValidatedSecret:v4 secretType:v6];

  [(AAUIPasscodeValidateController *)self dismissFlowWithLocalSecret:v7 error:0];
}

- (void)dismissFlowWithLocalSecret:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AAUICDPHelper *)self->_helper presentingViewController];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__AAUIPasscodeValidateController_dismissFlowWithLocalSecret_error___block_invoke;
  v11[3] = &unk_1E820BF58;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 dismissViewControllerAnimated:1 completion:v11];
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

- (void)devicePINController:(id)a3 didFailToSetPinWithError:(id)a4
{
  v5 = a4;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Passcode accepted, proceeding", v7, 2u);
  }

  [(AAUIPasscodeValidateController *)self dismissFlowWithLocalSecret:0 error:v5];
}

- (void)devicePINController:(id)a3 didAcceptSetPIN:(id)a4
{
  v5 = a4;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Detected passcode set accepted", buf, 2u);
  }

  if (v5)
  {
    if ([(DevicePINController *)self->_pinController simplePIN])
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    v8 = [objc_alloc(MEMORY[0x1E69977F8]) initWithValidatedSecret:v5 secretType:v7];
    [(AAUIPasscodeValidateController *)self dismissFlowWithLocalSecret:v8 error:0];
  }

  else
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Passcode was accepted, but it was not set, initiate revalidation", v10, 2u);
    }

    v8 = [(AAUIPasscodeValidateController *)self passcodeValidationCompletion];
    [(AAUIPasscodeValidateController *)self validatePasscodeStateWithCompletion:v8];
  }
}

- (void)devicePINController:(id)a3 canCancelWithCompletion:(id)a4
{
  v5 = a4;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Passcode entry cancel tapped. Check with delegate", v10, 2u);
  }

  v7 = [(AAUIPasscodeValidateController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(AAUIPasscodeValidateController *)self delegate];
    [v9 localSecretValidationCanCancelWithViewController:self->_navController completion:v5];
  }

  else
  {
    v5[2](v5, 1);
  }
}

- (AAUIPasscodeValidationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end