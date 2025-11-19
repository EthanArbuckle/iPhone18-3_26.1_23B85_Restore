@interface AAUIOnboardingSplitSignInDelegate
- (AAUIOnboardingSplitSignInDelegate)initWithServiceSignInController:(id)a3;
- (void)_handleAIDAResultErrorInSignInController:(id)a3;
- (void)onboardingSignInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)onboardingSignInController:(id)a3 didSkipWithReason:(int64_t)a4;
- (void)onboardingSignInControllerDidCancel:(id)a3;
@end

@implementation AAUIOnboardingSplitSignInDelegate

- (AAUIOnboardingSplitSignInDelegate)initWithServiceSignInController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAUIOnboardingSplitSignInDelegate;
  v6 = [(AAUIOnboardingSplitSignInDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originatingServiceSignInController, a3);
  }

  return v7;
}

- (void)onboardingSignInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E698C218];
  v9 = [v7 objectForKey:*MEMORY[0x1E698C218]];

  if (v9)
  {
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 objectForKey:v8];
      v31 = 138412290;
      v32 = v11;
      _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Split onboarding sign in for service cloud returned %@", &v31, 0xCu);
    }

    v12 = [v7 objectForKey:v8];
    v13 = [v12 error];

    if (!v13)
    {
      objc_storeStrong(&self->_semiFinalResults, a4);
      v14 = [[AAUIAppleIDSignInConfigSplitAccountStore alloc] initWithNavController:v6];
      v15 = [[AAUIOnboardingSignInController alloc] initWithSetupSignInConfig:v14];
      storeSignInController = self->_storeSignInController;
      self->_storeSignInController = v15;

      [(AAUIOnboardingSignInController *)self->_storeSignInController setDelegate:self];
      v17 = [(AAUIServiceSignInController *)self->_originatingServiceSignInController authenticationController];
      v18 = [(AAUIOnboardingSignInController *)self->_storeSignInController serviceController];
      v19 = [v18 signInViewController];
      [v19 setAuthenticationController:v17];

      v20 = [(AAUIServiceSignInController *)self->_originatingServiceSignInController serviceOwnersManager];
      v21 = [(AAUIOnboardingSignInController *)self->_storeSignInController serviceController];
      [v21 setServiceOwnersManager:v20];

      [(AAUIOnboardingSignInController *)self->_storeSignInController start];
LABEL_12:

      goto LABEL_13;
    }

LABEL_8:
    [(AAUIOnboardingSplitSignInDelegate *)self _handleAIDAResultErrorInSignInController:v6];
    goto LABEL_13;
  }

  v22 = *MEMORY[0x1E698C238];
  v23 = [v7 objectForKey:*MEMORY[0x1E698C238]];

  if (v23)
  {
    v24 = [v7 objectForKey:v22];
    v25 = [v24 error];

    if (!v25)
    {
      v26 = _AAUILogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v7 objectForKey:v8];
        v31 = 138412290;
        v32 = v27;
        _os_log_impl(&dword_1C5355000, v26, OS_LOG_TYPE_DEFAULT, "Split onboarding sign in for service store returned %@", &v31, 0xCu);
      }

      v14 = [(NSDictionary *)self->_semiFinalResults mutableCopy];
      v28 = [v7 objectForKey:v22];
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

- (void)_handleAIDAResultErrorInSignInController:(id)a3
{
  v5 = a3;
  v3 = [v5 topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v5 popViewControllerAnimated:1];
  }
}

- (void)onboardingSignInControllerDidCancel:(id)a3
{
  v4 = [(AAUIServiceSignInController *)self->_originatingServiceSignInController signInViewController];
  v6 = [v4 delegate];

  if (objc_opt_respondsToSelector())
  {
    v5 = [(AAUIServiceSignInController *)self->_originatingServiceSignInController signInViewController];
    [v6 signInViewControllerDidCancel:v5];
  }
}

- (void)onboardingSignInController:(id)a3 didSkipWithReason:(int64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = a4;
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