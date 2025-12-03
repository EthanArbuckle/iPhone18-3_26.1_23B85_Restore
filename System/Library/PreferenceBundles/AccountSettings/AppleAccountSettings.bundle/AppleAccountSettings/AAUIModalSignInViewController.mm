@interface AAUIModalSignInViewController
- (AAUIModalSignInViewController)initWithCoder:(id)coder;
- (AAUIModalSignInViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_serviceContextWithResults:(id)results parentViewController:(id)controller;
- (id)serviceIcon;
- (void)_handleiForgotActionURL:(id)l;
- (void)didCompleteSigningInWithAccount:(id)account;
- (void)handleAuthCompletionWithResults:(id)results;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)willBeginAuthWithContext:(id)context;
@end

@implementation AAUIModalSignInViewController

- (AAUIModalSignInViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = AAUIModalSignInViewController;
  v4 = [(AAUIModalSignInViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(AAUIModalSignInViewController *)v4 setPresentedModally:1];
  }

  return v5;
}

- (AAUIModalSignInViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AAUIModalSignInViewController;
  v3 = [(AAUIModalSignInViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(AAUIModalSignInViewController *)v3 setPresentedModally:1];
  }

  return v4;
}

- (id)serviceIcon
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [UIImage imageNamed:@"iCloudDrive" inBundle:v2];

  return v3;
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  viewIfLoaded = [(AAUIModalSignInViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    v10 = [lCopy objectForKeyedSubscript:@"aaaction"];
    if ([v10 isEqual:@"resetPassword"])
    {
      [(AAUIModalSignInViewController *)self _handleiForgotActionURL:lCopy];
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }

    else
    {
      v11 = _AAUILogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v15 = v10;
        v16 = 2112;
        v17 = lCopy;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Unknown action (%@) sent to AAUIModalSignInViewController. %@", buf, 0x16u);
      }

      v12.receiver = self;
      v12.super_class = AAUIModalSignInViewController;
      [(AAUIModalSignInViewController *)&v12 handleURL:lCopy withCompletion:completionCopy];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = AAUIModalSignInViewController;
    [(AAUIModalSignInViewController *)&v13 handleURL:lCopy withCompletion:completionCopy];
  }
}

- (void)_handleiForgotActionURL:(id)l
{
  lCopy = l;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Received an iForgot redirect action. Will call to akd now...", buf, 2u);
  }

  v6 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  [v6 setNeedsCredentialRecovery:1];
  [v6 setPresentingViewController:self];
  *buf = 0;
  v10 = buf;
  v11 = 0x3032000000;
  v12 = sub_D678;
  v13 = sub_D688;
  v14 = objc_alloc_init(AKAppleIDAuthenticationController);
  v7 = *(v10 + 5);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_D690;
  v8[3] = &unk_596D0;
  v8[4] = buf;
  [v7 authenticateWithContext:v6 completion:v8];
  _Block_object_dispose(buf, 8);
}

- (void)willBeginAuthWithContext:(id)context
{
  contextCopy = context;
  v5 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v5 aa_primaryAppleAccount];

  if (!aa_primaryAppleAccount)
  {
    [contextCopy setShouldOfferSecurityUpgrade:1];
    [contextCopy setAnticipateEscrowAttempt:1];
    [contextCopy setSupportsPiggybacking:1];
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Will authenticate primary account", buf, 2u);
    }
  }

  [contextCopy setShouldUpdatePersistentServiceTokens:1];
  [contextCopy setServiceType:1];
  [contextCopy setShouldForceInteractiveAuth:1];
  v8.receiver = self;
  v8.super_class = AAUIModalSignInViewController;
  [(AAUIModalSignInViewController *)&v8 willBeginAuthWithContext:contextCopy];
}

- (void)handleAuthCompletionWithResults:(id)results
{
  resultsCopy = results;
  v14.receiver = self;
  v14.super_class = AAUIModalSignInViewController;
  [(AAUIModalSignInViewController *)&v14 handleAuthCompletionWithResults:resultsCopy];
  navigationController = [(AAUIModalSignInViewController *)self navigationController];
  v6 = [(AAUIModalSignInViewController *)self _serviceContextWithResults:resultsCopy parentViewController:navigationController];

  v7 = [AIDAServiceOwnersManager alloc];
  v8 = +[ACAccountStore defaultStore];
  v9 = [v7 initWithAccountStore:v8];

  v10 = AIDAServiceTypeCloud;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_D9B8;
  v12[3] = &unk_59720;
  v12[4] = self;
  v13 = resultsCopy;
  v11 = resultsCopy;
  [v9 signInService:v10 withContext:v6 completion:v12];
}

- (id)_serviceContextWithResults:(id)results parentViewController:(id)controller
{
  controllerCopy = controller;
  resultsCopy = results;
  v8 = objc_alloc_init(AIDAMutableServiceContext);
  [v8 setAuthenticationResults:resultsCopy];

  [v8 setViewController:controllerCopy];
  signInContexts = [v8 signInContexts];
  v10 = [signInContexts mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;

  v14 = [AAUISignInFlowControllerDelegate alloc];
  viewController = [v8 viewController];
  v16 = [v14 initWithPresentingViewController:viewController];
  flowControllerDelegate = self->_flowControllerDelegate;
  self->_flowControllerDelegate = v16;

  [v13 setObject:self->_flowControllerDelegate forKeyedSubscript:AIDAServiceTypeCloud];
  [v8 setSignInContexts:v13];
  v18 = [v8 copy];

  return v18;
}

- (void)didCompleteSigningInWithAccount:(id)account
{
  accountCopy = account;
  WeakRetained = objc_loadWeakRetained(&self->PSAppleIDSplashViewController_opaque[OBJC_IVAR___PSViewController__parentController]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [WeakRetained controller:self didFinishSettingUpAccount:accountCopy];
  }

  flowControllerDelegate = self->_flowControllerDelegate;
  self->_flowControllerDelegate = 0;
}

@end