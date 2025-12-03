@interface AAUIOnboardingSignInController
- (AAUIOnboardingSignInController)initWithSetupSignInConfig:(id)config;
- (AAUIOnboardingSignInControllerDelegate)delegate;
- (void)dealloc;
- (void)serviceSignInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)serviceSignInController:(id)controller didSkipWithReason:(int64_t)reason;
- (void)serviceSignInControllerDidCancel:(id)cancel;
- (void)start;
@end

@implementation AAUIOnboardingSignInController

- (AAUIOnboardingSignInController)initWithSetupSignInConfig:(id)config
{
  configCopy = config;
  v11.receiver = self;
  v11.super_class = AAUIOnboardingSignInController;
  v5 = [(AAUIOnboardingSignInController *)&v11 init];
  if (v5)
  {
    signInConfiguration = [configCopy signInConfiguration];
    signInConfiguration = v5->_signInConfiguration;
    v5->_signInConfiguration = signInConfiguration;

    v8 = [[AAUIServiceSignInController alloc] initWithSignInConfiguration:v5->_signInConfiguration];
    serviceController = v5->_serviceController;
    v5->_serviceController = v8;
  }

  return v5;
}

- (void)start
{
  [(AAUIServiceSignInConfiguration *)self->_signInConfiguration setServiceDelegate:self];
  serviceController = self->_serviceController;

  [(AAUIServiceSignInController *)serviceController loadViewControllerForPresentation];
}

- (void)serviceSignInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  v12 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  resultsCopy = results;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(AAUIOnboardingSignInController *)self delegate];
  v9 = _AAUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = resultsCopy;
    _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "AAUIOnboardingSignInController completing with results: %@", &v10, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate onboardingSignInController:controllerCopy didCompleteWithOperationsResults:resultsCopy];
  }
}

- (void)serviceSignInControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(AAUIOnboardingSignInController *)self delegate];
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "AAUIOnboardingSignInController did cancel", v7, 2u);
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate onboardingSignInControllerDidCancel:cancelCopy];
  }
}

- (void)serviceSignInController:(id)controller didSkipWithReason:(int64_t)reason
{
  v11 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(AAUIOnboardingSignInController *)self delegate];
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    reasonCopy = reason;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "AAUIOnboardingSignInController did skip with reason %ld", &v9, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate onboardingSignInController:controllerCopy didSkipWithReason:reason];
  }
}

- (void)dealloc
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "AAUIOnboardingSignInController dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = AAUIOnboardingSignInController;
  [(AAUIOnboardingSignInController *)&v4 dealloc];
}

- (AAUIOnboardingSignInControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end