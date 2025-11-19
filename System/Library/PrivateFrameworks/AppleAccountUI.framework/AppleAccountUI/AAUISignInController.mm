@interface AAUISignInController
- (AAUICDPSignInDelegate)cdpDelegate;
- (AAUISignInController)initWithCoder:(id)a3;
- (AAUISignInController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_commonInit;
- (void)_configureSignInProperties;
- (void)_delegate_signInControllerDidSelectChildSignIn:(id)a3;
- (void)_delegate_signInControllerDidSkip:(id)a3;
- (void)prepareInViewController:(id)a3 completion:(id)a4;
- (void)serviceSignInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)serviceSignInController:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5;
- (void)serviceSignInController:(id)a3 didSkipWithReason:(int64_t)a4;
- (void)serviceSignInControllerDidCancel:(id)a3;
- (void)viewDidLoad;
@end

@implementation AAUISignInController

- (AAUISignInController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = AAUISignInController;
  v4 = [(AAUISignInController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(AAUISignInController *)v4 _commonInit];
  }

  return v5;
}

- (AAUISignInController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AAUISignInController;
  v3 = [(AAUISignInController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(AAUISignInController *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  [(AAUISignInController *)self setCanEditUsername:1];
  self->_aidaOperationUIPermissions = 1;
  v3 = [MEMORY[0x1E698DDF8] sharedBag];
  akURLBag = self->_akURLBag;
  self->_akURLBag = v3;

  privacyLinkIdentifiers = self->_privacyLinkIdentifiers;
  self->_privacyLinkIdentifiers = &unk_1F44C06A8;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AAUISignInController;
  [(AAUISignInController *)&v4 viewDidLoad];
  v3 = [(AAUISignInController *)self presentationController];
  [v3 setDelegate:self];

  [(AAUISignInController *)self setModalInPresentation:1];
  [(AAUISignInController *)self _configureSignInProperties];
  [(AAUIServiceSignInController *)self->_serviceController loadViewControllerForPresentation];
}

- (void)_configureSignInProperties
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!self->_signInConfiguration)
  {
    v3 = objc_alloc_init(AAUIServiceSignInConfiguration);
    signInConfiguration = self->_signInConfiguration;
    self->_signInConfiguration = v3;

    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setAuthenticationResults:self->_authenticationResults];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setAidaOperationUIPermissions:self->_aidaOperationUIPermissions];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setNavigationController:self];
    v5 = [(AAUISignInController *)self username];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setUsername:v5];

    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setCanEditUsername:[(AAUISignInController *)self canEditUsername]];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setAllowSkip:[(AAUISignInController *)self allowSkip]];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setShouldShowSystemBackButton:[(AAUISignInController *)self shouldShowSystemBackButton]];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setShouldForceOperation:[(AAUISignInController *)self _shouldForceOperation]];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setOfferiCloudAMSSplitSignIn:[(AAUISignInController *)self offerSplitAccountSignIn]];
    v6 = [(AAUISignInController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(AAUISignInController *)self delegate];
      v9 = [v8 serviceContext];
      v10 = [v9 copy];
      [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setServiceContext:v10];
    }

    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setServiceDelegate:self];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setShouldDisableAccountCreation:[(AAUISignInController *)self shouldDisableAccountCreation]];
    v11 = [(AAUISignInController *)self serviceType];

    if (v11)
    {
      v12 = [(AAUISignInController *)self serviceType];
      v21[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setServiceTypes:v13];
    }

    else
    {
      v12 = [(AAUISignInController *)self serviceTypes];
      [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setServiceTypes:v12];
    }

    v14 = [(AAUISignInController *)self privacyLinkIdentifiers];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setPrivacyLinkIdentifiers:v14];

    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setShowsChildSignIn:[(AAUISignInController *)self showsChildSignIn]];
    v15 = [(AAUISignInController *)self cdpDelegate];
    if (objc_opt_respondsToSelector())
    {
      -[AAUIServiceSignInConfiguration setIsAttemptingBackupRestore:](self->_signInConfiguration, "setIsAttemptingBackupRestore:", [v15 isAttemptingBackupRestore]);
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = [v15 cdpLocalSecret];
      if (v16)
      {
        [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setLocalSecret:v16];
      }
    }
  }

  serviceController = self->_serviceController;
  if (serviceController)
  {
    [(AAUIServiceSignInController *)serviceController setSignInConfig:self->_signInConfiguration];
  }

  else
  {
    v18 = [[AAUIServiceSignInController alloc] initWithSignInConfiguration:self->_signInConfiguration];
    v19 = self->_serviceController;
    self->_serviceController = v18;
  }

  [(AAUIServiceSignInController *)self->_serviceController setServiceOwnersManager:self->_serviceOwnersManager];
  v20 = [(AAUISignInController *)self akURLBag];
  [(AAUIServiceSignInController *)self->_serviceController setAkURLBag:v20];
}

- (void)serviceSignInController:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v8 = a5;
  v7 = [(AAUISignInController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 signInController:self didCompleteWithSuccess:v5 error:v8];
  }
}

- (void)serviceSignInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  v6 = a4;
  v5 = [(AAUISignInController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 signInController:self didCompleteWithOperationsResults:v6];
  }
}

- (void)serviceSignInControllerDidCancel:(id)a3
{
  v4 = [(AAUISignInController *)self delegate];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (objc_opt_respondsToSelector())
  {
    [v4 signInControllerDidCancel:self];
  }
}

- (void)serviceSignInController:(id)a3 didSkipWithReason:(int64_t)a4
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (a4 == 1)
  {

    [(AAUISignInController *)self _delegate_signInControllerDidSelectChildSignIn:self];
  }

  else if (a4)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [AAUISignInController serviceSignInController:a4 didSkipWithReason:v6];
    }
  }

  else
  {

    [(AAUISignInController *)self _delegate_signInControllerDidSkip:self];
  }
}

- (void)_delegate_signInControllerDidSkip:(id)a3
{
  v4 = [(AAUISignInController *)self delegate];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (objc_opt_respondsToSelector())
  {
    [v4 signInControllerDidSkip:self];
  }
}

- (void)_delegate_signInControllerDidSelectChildSignIn:(id)a3
{
  v4 = [(AAUISignInController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 signInControllerDidSelectChildSignIn:self];
  }
}

- (void)prepareInViewController:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AAUISignInController *)self _configureSignInProperties];
  [(AAUIServiceSignInController *)self->_serviceController prepareInViewController:v7 completion:v6];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (AAUICDPSignInDelegate)cdpDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cdpDelegate);

  return WeakRetained;
}

- (void)serviceSignInController:(uint64_t)a1 didSkipWithReason:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_1C5355000, a2, OS_LOG_TYPE_FAULT, "Unhandled skip reason %@", &v4, 0xCu);
}

@end