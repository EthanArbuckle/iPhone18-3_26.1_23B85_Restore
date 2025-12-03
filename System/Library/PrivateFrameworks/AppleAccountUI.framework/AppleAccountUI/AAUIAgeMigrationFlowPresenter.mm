@interface AAUIAgeMigrationFlowPresenter
- (AAFollowUpProtocol)followupController;
- (AAUIAgeMigrationFlowPresenter)initWithPendingDOB:(id)b viewController:(id)controller;
- (AKAppleIDAuthenticationController)authenticationController;
- (UIViewController)presentingViewController;
- (void)_dismissAgeMigrationCFU;
- (void)presentAgeMigrationFlowWithCompletion:(id)completion;
@end

@implementation AAUIAgeMigrationFlowPresenter

- (AAUIAgeMigrationFlowPresenter)initWithPendingDOB:(id)b viewController:(id)controller
{
  bCopy = b;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = AAUIAgeMigrationFlowPresenter;
  v9 = [(AAUIAgeMigrationFlowPresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pendingDOB, b);
    objc_storeWeak(&v10->_presentingViewController, controllerCopy);
  }

  return v10;
}

- (void)presentAgeMigrationFlowWithCompletion:(id)completion
{
  completionCopy = completion;
  pendingDOB = [(AAUIAgeMigrationFlowPresenter *)self pendingDOB];

  if (pendingDOB)
  {
    v6 = objc_alloc_init(MEMORY[0x1E698DE80]);
    v7 = objc_alloc(MEMORY[0x1E698DC88]);
    pendingDOB2 = [(AAUIAgeMigrationFlowPresenter *)self pendingDOB];
    v9 = [v7 initWithPendingDOB:pendingDOB2];

    [v6 setAccountMigrationContext:v9];
    presentingViewController = [(AAUIAgeMigrationFlowPresenter *)self presentingViewController];
    [v6 setPresentingViewController:presentingViewController];

    [v6 setAuthenticationType:2];
    authenticationController = [(AAUIAgeMigrationFlowPresenter *)self authenticationController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__AAUIAgeMigrationFlowPresenter_presentAgeMigrationFlowWithCompletion___block_invoke;
    v13[3] = &unk_1E820D630;
    v14 = completionCopy;
    [authenticationController authenticateWithContext:v6 completion:v13];
  }

  else
  {
    v12 = _AAUILogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [AAUIAgeMigrationFlowPresenter presentAgeMigrationFlowWithCompletion:v12];
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AAUIAgeMigrationErrors" code:-11002 userInfo:0];
    [(AAUIAgeMigrationFlowPresenter *)self _dismissAgeMigrationCFU];
    (*(completionCopy + 2))(completionCopy, v6);
  }
}

void __71__AAUIAgeMigrationFlowPresenter_presentAgeMigrationFlowWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _AAUILogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__AAUIAgeMigrationFlowPresenter_presentAgeMigrationFlowWithCompletion___block_invoke_cold_1(v4, v6);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "AAUIAgeMigrationFlowPresenter - Age migration succeeded.", v8, 2u);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

- (void)_dismissAgeMigrationCFU
{
  followupController = [(AAUIAgeMigrationFlowPresenter *)self followupController];
  [followupController dismissFollowUpWithIdentifier:@"com.apple.AAFollowUpIdentifier.ageMigration" completion:&__block_literal_global_19];
}

void __56__AAUIAgeMigrationFlowPresenter__dismissAgeMigrationCFU__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = _AAUILogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __56__AAUIAgeMigrationFlowPresenter__dismissAgeMigrationCFU__block_invoke_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "AAUIAgeMigrationFlowPresenter - Dismissed age migration CFU", v6, 2u);
  }
}

- (AKAppleIDAuthenticationController)authenticationController
{
  authenticationController = self->_authenticationController;
  if (authenticationController)
  {
    v3 = authenticationController;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  }

  return v3;
}

- (AAFollowUpProtocol)followupController
{
  followupController = self->_followupController;
  if (followupController)
  {
    v3 = followupController;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E698B8C0]);
  }

  return v3;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

void __71__AAUIAgeMigrationFlowPresenter_presentAgeMigrationFlowWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "AAUIAgeMigrationFlowPresenter - Age migration encountered an error: %@", &v2, 0xCu);
}

void __56__AAUIAgeMigrationFlowPresenter__dismissAgeMigrationCFU__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "AAUIAgeMigrationFlowPresenter - Dismissing age migration CFU encountered an error: %@", &v2, 0xCu);
}

@end