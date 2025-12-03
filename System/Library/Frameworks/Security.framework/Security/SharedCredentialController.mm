@interface SharedCredentialController
- (id)passwordCredential;
- (id)presentationAnchorForAuthorizationController:(id)controller;
- (void)_requestCredential;
- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization;
- (void)authorizationController:(id)controller didCompleteWithError:(id)error;
- (void)dealloc;
@end

@implementation SharedCredentialController

- (id)presentationAnchorForAuthorizationController:(id)controller
{
  if (loadUIKit_onceToken != -1)
  {
    dispatch_once(&loadUIKit_onceToken, &__block_literal_global_93);
  }

  sharedApplication = [kUIApplicationClass sharedApplication];
  keyWindow = [sharedApplication keyWindow];

  return keyWindow;
}

- (void)authorizationController:(id)controller didCompleteWithError:(id)error
{
  errorCopy = error;
  v6 = secLogObjForScope("swcagent");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_debug_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEBUG, "SWC received didCompleteWithError", v10, 2u);
  }

  passwordCredential = self->_passwordCredential;
  self->_passwordCredential = 0;

  error = self->_error;
  self->_error = errorCopy;
  v9 = errorCopy;

  self->_result = -25300;
  dispatch_semaphore_signal(self->_semaphore);
}

- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v6 = secLogObjForScope("swcagent");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_debug_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEBUG, "SWC received didCompleteWithAuthorization", v12, 2u);
  }

  credential = [authorizationCopy credential];

  if (loadAuthenticationServices_onceToken != -1)
  {
    dispatch_once(&loadAuthenticationServices_onceToken, &__block_literal_global_10636);
  }

  v8 = kASPasswordCredentialClass;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = credential;
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = -25300;
  }

  passwordCredential = self->_passwordCredential;
  self->_passwordCredential = v9;

  self->_result = v10;
  dispatch_semaphore_signal(self->_semaphore);
}

- (id)passwordCredential
{
  passwordCredential = self->_passwordCredential;
  if (!passwordCredential)
  {
    [(SharedCredentialController *)self _requestCredential];
    dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
    passwordCredential = self->_passwordCredential;
  }

  v4 = passwordCredential;

  return v4;
}

- (void)_requestCredential
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!self->_provider)
  {
    if (loadAuthenticationServices_onceToken != -1)
    {
      dispatch_once(&loadAuthenticationServices_onceToken, &__block_literal_global_10636);
    }

    v3 = objc_alloc_init(kASAuthorizationPasswordProviderClass);
    provider = self->_provider;
    self->_provider = v3;
  }

  controller = self->_controller;
  if (!controller)
  {
    if (loadAuthenticationServices_onceToken != -1)
    {
      dispatch_once(&loadAuthenticationServices_onceToken, &__block_literal_global_10636);
    }

    v6 = [kASAuthorizationControllerClass alloc];
    createRequest = [(ASAuthorizationPasswordProvider *)self->_provider createRequest];
    v15[0] = createRequest;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v9 = [v6 initWithAuthorizationRequests:v8];
    v10 = self->_controller;
    self->_controller = v9;

    controller = self->_controller;
  }

  [(ASAuthorizationController *)controller setDelegate:self];
  [(ASAuthorizationController *)self->_controller setPresentationContextProvider:self];
  v11 = dispatch_semaphore_create(0);
  semaphore = self->_semaphore;
  self->_semaphore = v11;

  self->_result = -25300;
  error = self->_error;
  self->_error = 0;

  [(ASAuthorizationController *)self->_controller performRequests];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(ASAuthorizationController *)self->_controller setDelegate:0];
  [(ASAuthorizationController *)self->_controller setPresentationContextProvider:0];
  v3.receiver = self;
  v3.super_class = SharedCredentialController;
  [(SharedCredentialController *)&v3 dealloc];
}

@end