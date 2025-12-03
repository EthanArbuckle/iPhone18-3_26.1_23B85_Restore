@interface AAUIOnboardingSplitSignInDelegate
- (AAUIOnboardingSplitSignInDelegate)initWithServiceSignInController:(id)controller;
- (void)_handleAIDAResultErrorInSignInController:(id)controller;
- (void)onboardingSignInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)onboardingSignInController:(id)controller didSkipWithReason:(int64_t)reason;
- (void)onboardingSignInControllerDidCancel:(id)cancel;
@end

@implementation AAUIOnboardingSplitSignInDelegate

- (AAUIOnboardingSplitSignInDelegate)initWithServiceSignInController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AAUIOnboardingSplitSignInDelegate;
  v6 = [(AAUIOnboardingSplitSignInDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originatingServiceSignInController, controller);
  }

  return v7;
}

- (void)onboardingSignInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  v33 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  resultsCopy = results;
  v8 = *MEMORY[0x1E698C218];
  v9 = [resultsCopy objectForKey:*MEMORY[0x1E698C218]];

  if (v9)
  {
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [resultsCopy objectForKey:v8];
      v31 = 138412290;
      v32 = v11;
      _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Split onboarding sign in for service cloud returned %@", &v31, 0xCu);
    }

    v12 = [resultsCopy objectForKey:v8];
    error = [v12 error];

    if (!error)
    {
      objc_storeStrong(&self->_semiFinalResults, results);
      v14 = [[AAUIAppleIDSignInConfigSplitAccountStore alloc] initWithNavController:controllerCopy];
      v15 = [[AAUIOnboardingSignInController alloc] initWithSetupSignInConfig:v14];
      storeSignInController = self->_storeSignInController;
      self->_storeSignInController = v15;

      [(AAUIOnboardingSignInController *)self->_storeSignInController setDelegate:self];
      authenticationController = [(AAUIServiceSignInController *)self->_originatingServiceSignInController authenticationController];
      serviceController = [(AAUIOnboardingSignInController *)self->_storeSignInController serviceController];
      signInViewController = [serviceController signInViewController];
      [signInViewController setAuthenticationController:authenticationController];

      serviceOwnersManager = [(AAUIServiceSignInController *)self->_originatingServiceSignInController serviceOwnersManager];
      serviceController2 = [(AAUIOnboardingSignInController *)self->_storeSignInController serviceController];
      [serviceController2 setServiceOwnersManager:serviceOwnersManager];

      [(AAUIOnboardingSignInController *)self->_storeSignInController start];
LABEL_12:

      goto LABEL_13;
    }

LABEL_8:
    [(AAUIOnboardingSplitSignInDelegate *)self _handleAIDAResultErrorInSignInController:controllerCopy];
    goto LABEL_13;
  }

  v22 = *MEMORY[0x1E698C238];
  v23 = [resultsCopy objectForKey:*MEMORY[0x1E698C238]];

  if (v23)
  {
    v24 = [resultsCopy objectForKey:v22];
    error2 = [v24 error];

    if (!error2)
    {
      v26 = _AAUILogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [resultsCopy objectForKey:v8];
        v31 = 138412290;
        v32 = v27;
        _os_log_impl(&dword_1C5355000, v26, OS_LOG_TYPE_DEFAULT, "Split onboarding sign in for service store returned %@", &v31, 0xCu);
      }

      v14 = [(NSDictionary *)self->_semiFinalResults mutableCopy];
      v28 = [resultsCopy objectForKey:v22];
      [(AAUIAppleIDSignInConfigSplitAccountStore *)v14 setObject:v28 forKey:v22];

      originatingServiceSignInController = self->_originatingServiceSignInController;
      v30 = [(AAUIAppleIDSignInConfigSplitAccountStore *)v14 copy];
      [(AAUIServiceSignInController *)originatingServiceSignInController controllerFinishedWithAIDAResults:v30];

      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_13:
}

- (void)_handleAIDAResultErrorInSignInController:(id)controller
{
  controllerCopy = controller;
  topViewController = [controllerCopy topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [controllerCopy popViewControllerAnimated:1];
  }
}

- (void)onboardingSignInControllerDidCancel:(id)cancel
{
  signInViewController = [(AAUIServiceSignInController *)self->_originatingServiceSignInController signInViewController];
  delegate = [signInViewController delegate];

  if (objc_opt_respondsToSelector())
  {
    signInViewController2 = [(AAUIServiceSignInController *)self->_originatingServiceSignInController signInViewController];
    [delegate signInViewControllerDidCancel:signInViewController2];
  }
}

- (void)onboardingSignInController:(id)controller didSkipWithReason:(int64_t)reason
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    reasonCopy = reason;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Split onboarding sign in skipped with reason reason %ld", &v14, 0xCu);
  }

  if (self->_storeSignInController)
  {
    v7 = objc_alloc(MEMORY[0x1E698C260]);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B7E0] code:-8014 userInfo:0];
    v9 = *MEMORY[0x1E698C238];
    v10 = [v7 initWithSuccess:0 error:v8 type:*MEMORY[0x1E698C238]];

    v11 = [(NSDictionary *)self->_semiFinalResults mutableCopy];
    [v11 setObject:v10 forKey:v9];
    originatingServiceSignInController = self->_originatingServiceSignInController;
    v13 = [v11 copy];
    [(AAUIServiceSignInController *)originatingServiceSignInController controllerFinishedWithAIDAResults:v13];
  }
}

@end