@interface AAUISignInController
- (AAUICDPSignInDelegate)cdpDelegate;
- (AAUISignInController)initWithCoder:(id)coder;
- (AAUISignInController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_commonInit;
- (void)_configureSignInProperties;
- (void)_delegate_signInControllerDidSelectChildSignIn:(id)in;
- (void)_delegate_signInControllerDidSkip:(id)skip;
- (void)prepareInViewController:(id)controller completion:(id)completion;
- (void)serviceSignInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)serviceSignInController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)serviceSignInController:(id)controller didSkipWithReason:(int64_t)reason;
- (void)serviceSignInControllerDidCancel:(id)cancel;
- (void)viewDidLoad;
@end

@implementation AAUISignInController

- (AAUISignInController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = AAUISignInController;
  v4 = [(AAUISignInController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(AAUISignInController *)v4 _commonInit];
  }

  return v5;
}

- (AAUISignInController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AAUISignInController;
  v3 = [(AAUISignInController *)&v6 initWithCoder:coder];
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
  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  akURLBag = self->_akURLBag;
  self->_akURLBag = mEMORY[0x1E698DDF8];

  privacyLinkIdentifiers = self->_privacyLinkIdentifiers;
  self->_privacyLinkIdentifiers = &unk_1F44C06A8;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AAUISignInController;
  [(AAUISignInController *)&v4 viewDidLoad];
  presentationController = [(AAUISignInController *)self presentationController];
  [presentationController setDelegate:self];

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
    username = [(AAUISignInController *)self username];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setUsername:username];

    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setCanEditUsername:[(AAUISignInController *)self canEditUsername]];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setAllowSkip:[(AAUISignInController *)self allowSkip]];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setShouldShowSystemBackButton:[(AAUISignInController *)self shouldShowSystemBackButton]];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setShouldForceOperation:[(AAUISignInController *)self _shouldForceOperation]];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setOfferiCloudAMSSplitSignIn:[(AAUISignInController *)self offerSplitAccountSignIn]];
    delegate = [(AAUISignInController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(AAUISignInController *)self delegate];
      serviceContext = [delegate2 serviceContext];
      v10 = [serviceContext copy];
      [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setServiceContext:v10];
    }

    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setServiceDelegate:self];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setShouldDisableAccountCreation:[(AAUISignInController *)self shouldDisableAccountCreation]];
    serviceType = [(AAUISignInController *)self serviceType];

    if (serviceType)
    {
      serviceType2 = [(AAUISignInController *)self serviceType];
      v21[0] = serviceType2;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setServiceTypes:v13];
    }

    else
    {
      serviceType2 = [(AAUISignInController *)self serviceTypes];
      [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setServiceTypes:serviceType2];
    }

    privacyLinkIdentifiers = [(AAUISignInController *)self privacyLinkIdentifiers];
    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setPrivacyLinkIdentifiers:privacyLinkIdentifiers];

    [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setShowsChildSignIn:[(AAUISignInController *)self showsChildSignIn]];
    cdpDelegate = [(AAUISignInController *)self cdpDelegate];
    if (objc_opt_respondsToSelector())
    {
      -[AAUIServiceSignInConfiguration setIsAttemptingBackupRestore:](self->_signInConfiguration, "setIsAttemptingBackupRestore:", [cdpDelegate isAttemptingBackupRestore]);
    }

    if (objc_opt_respondsToSelector())
    {
      cdpLocalSecret = [cdpDelegate cdpLocalSecret];
      if (cdpLocalSecret)
      {
        [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setLocalSecret:cdpLocalSecret];
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
  akURLBag = [(AAUISignInController *)self akURLBag];
  [(AAUIServiceSignInController *)self->_serviceController setAkURLBag:akURLBag];
}

- (void)serviceSignInController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  delegate = [(AAUISignInController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate signInController:self didCompleteWithSuccess:successCopy error:errorCopy];
  }
}

- (void)serviceSignInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  resultsCopy = results;
  delegate = [(AAUISignInController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate signInController:self didCompleteWithOperationsResults:resultsCopy];
  }
}

- (void)serviceSignInControllerDidCancel:(id)cancel
{
  delegate = [(AAUISignInController *)self delegate];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (objc_opt_respondsToSelector())
  {
    [delegate signInControllerDidCancel:self];
  }
}

- (void)serviceSignInController:(id)controller didSkipWithReason:(int64_t)reason
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (reason == 1)
  {

    [(AAUISignInController *)self _delegate_signInControllerDidSelectChildSignIn:self];
  }

  else if (reason)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [AAUISignInController serviceSignInController:reason didSkipWithReason:v6];
    }
  }

  else
  {

    [(AAUISignInController *)self _delegate_signInControllerDidSkip:self];
  }
}

- (void)_delegate_signInControllerDidSkip:(id)skip
{
  delegate = [(AAUISignInController *)self delegate];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (objc_opt_respondsToSelector())
  {
    [delegate signInControllerDidSkip:self];
  }
}

- (void)_delegate_signInControllerDidSelectChildSignIn:(id)in
{
  delegate = [(AAUISignInController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate signInControllerDidSelectChildSignIn:self];
  }
}

- (void)prepareInViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  [(AAUISignInController *)self _configureSignInProperties];
  [(AAUIServiceSignInController *)self->_serviceController prepareInViewController:controllerCopy completion:completionCopy];
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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