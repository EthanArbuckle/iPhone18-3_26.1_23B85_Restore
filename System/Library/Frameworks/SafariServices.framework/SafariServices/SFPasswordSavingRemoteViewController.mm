@interface SFPasswordSavingRemoteViewController
+ (id)passwordServiceViewControllerName;
- (id)_accountAuthenticationModificationController;
- (id)presentationAnchorForAccountAuthenticationModificationController:(id)controller;
- (void)accountAuthenticationModificationController:(id)controller didFailRequest:(id)request withError:(id)error;
- (void)accountAuthenticationModificationController:(id)controller didSuccessfullyCompleteRequest:(id)request withUserInfo:(id)info;
- (void)performUpgradeToSignInWithAppleForCredential:(id)credential serviceIdentifier:(id)identifier;
- (void)performUpgradeToStrongPasswordForCredential:(id)credential serviceIdentifier:(id)identifier;
@end

@implementation SFPasswordSavingRemoteViewController

+ (id)passwordServiceViewControllerName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)performUpgradeToSignInWithAppleForCredential:(id)credential serviceIdentifier:(id)identifier
{
  v6 = MEMORY[0x1E695A910];
  identifierCopy = identifier;
  credentialCopy = credential;
  v9 = [v6 alloc];
  user = [credentialCopy user];
  password = [credentialCopy password];

  v13 = [v9 initWithUser:user password:password extension:0 serviceIdentifier:identifierCopy userInfo:0];
  _accountAuthenticationModificationController = [(SFPasswordSavingRemoteViewController *)self _accountAuthenticationModificationController];
  [_accountAuthenticationModificationController performRequest:v13];
}

- (void)performUpgradeToStrongPasswordForCredential:(id)credential serviceIdentifier:(id)identifier
{
  v6 = MEMORY[0x1E695A918];
  identifierCopy = identifier;
  credentialCopy = credential;
  v9 = [v6 alloc];
  user = [credentialCopy user];
  password = [credentialCopy password];

  v13 = [v9 initWithUser:user password:password extension:0 serviceIdentifier:identifierCopy userInfo:0];
  _accountAuthenticationModificationController = [(SFPasswordSavingRemoteViewController *)self _accountAuthenticationModificationController];
  [_accountAuthenticationModificationController performRequest:v13];
}

- (id)_accountAuthenticationModificationController
{
  accountAuthenticationModificationController = self->_accountAuthenticationModificationController;
  if (!accountAuthenticationModificationController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695A908]);
    v5 = self->_accountAuthenticationModificationController;
    self->_accountAuthenticationModificationController = v4;

    [(ASAccountAuthenticationModificationController *)self->_accountAuthenticationModificationController setDelegate:self];
    [(ASAccountAuthenticationModificationController *)self->_accountAuthenticationModificationController setPresentationContextProvider:self];
    accountAuthenticationModificationController = self->_accountAuthenticationModificationController;
  }

  return accountAuthenticationModificationController;
}

- (void)accountAuthenticationModificationController:(id)controller didSuccessfullyCompleteRequest:(id)request withUserInfo:(id)info
{
  v24 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      serviceIdentifier = [requestCopy serviceIdentifier];
      identifier = [serviceIdentifier identifier];
      *buf = 138477827;
      v23 = identifier;
      _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_INFO, "Completed Sign in with Apple upgrade for %{private}@", buf, 0xCu);
    }

    delegate = [(SFPasswordRemoteViewController *)self delegate];
    [delegate remoteViewControllerWillDismiss:self];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    delegate = [mainBundle objectForInfoDictionaryKey:*MEMORY[0x1E695E4F8]];

    v13 = MEMORY[0x1E69DC650];
    v14 = MEMORY[0x1E696AEC0];
    v15 = _WBSLocalizedString();
    v16 = [v14 stringWithFormat:v15, delegate];
    v17 = [v13 alertControllerWithTitle:0 message:v16 preferredStyle:1];

    v18 = MEMORY[0x1E69DC648];
    v19 = _WBSLocalizedString();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __128__SFPasswordSavingRemoteViewController_accountAuthenticationModificationController_didSuccessfullyCompleteRequest_withUserInfo___block_invoke;
    v21[3] = &unk_1E848FBF8;
    v21[4] = self;
    v20 = [v18 actionWithTitle:v19 style:0 handler:v21];
    [v17 addAction:v20];

    [(SFPasswordSavingRemoteViewController *)self presentViewController:v17 animated:1 completion:0];
LABEL_7:
  }
}

void __128__SFPasswordSavingRemoteViewController_accountAuthenticationModificationController_didSuccessfullyCompleteRequest_withUserInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteViewControllerWillDismiss:*(a1 + 32)];
}

- (void)accountAuthenticationModificationController:(id)controller didFailRequest:(id)request withError:(id)error
{
  if ([error code] == 1)
  {
    delegate = [(SFPasswordRemoteViewController *)self delegate];
    [delegate remoteViewControllerWillDismiss:self];
  }

  else
  {
    v6 = MEMORY[0x1E69DC650];
    v7 = MEMORY[0x1E696AEC0];
    v8 = _WBSLocalizedString();
    v9 = [v7 stringWithFormat:v8];
    v10 = [v6 alertControllerWithTitle:0 message:v9 preferredStyle:1];

    v11 = MEMORY[0x1E69DC648];
    v12 = _WBSLocalizedString();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __109__SFPasswordSavingRemoteViewController_accountAuthenticationModificationController_didFailRequest_withError___block_invoke;
    v15[3] = &unk_1E848FBF8;
    v15[4] = self;
    v13 = [v11 actionWithTitle:v12 style:0 handler:v15];
    [v10 addAction:v13];

    [(SFPasswordSavingRemoteViewController *)self presentViewController:v10 animated:1 completion:0];
  }
}

void __109__SFPasswordSavingRemoteViewController_accountAuthenticationModificationController_didFailRequest_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteViewControllerWillDismiss:*(a1 + 32)];
}

- (id)presentationAnchorForAccountAuthenticationModificationController:(id)controller
{
  view = [(SFPasswordSavingRemoteViewController *)self view];
  window = [view window];

  return window;
}

@end