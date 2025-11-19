@interface SFPasswordSavingRemoteViewController
+ (id)passwordServiceViewControllerName;
- (id)_accountAuthenticationModificationController;
- (id)presentationAnchorForAccountAuthenticationModificationController:(id)a3;
- (void)accountAuthenticationModificationController:(id)a3 didFailRequest:(id)a4 withError:(id)a5;
- (void)accountAuthenticationModificationController:(id)a3 didSuccessfullyCompleteRequest:(id)a4 withUserInfo:(id)a5;
- (void)performUpgradeToSignInWithAppleForCredential:(id)a3 serviceIdentifier:(id)a4;
- (void)performUpgradeToStrongPasswordForCredential:(id)a3 serviceIdentifier:(id)a4;
@end

@implementation SFPasswordSavingRemoteViewController

+ (id)passwordServiceViewControllerName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)performUpgradeToSignInWithAppleForCredential:(id)a3 serviceIdentifier:(id)a4
{
  v6 = MEMORY[0x1E695A910];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [v8 user];
  v11 = [v8 password];

  v13 = [v9 initWithUser:v10 password:v11 extension:0 serviceIdentifier:v7 userInfo:0];
  v12 = [(SFPasswordSavingRemoteViewController *)self _accountAuthenticationModificationController];
  [v12 performRequest:v13];
}

- (void)performUpgradeToStrongPasswordForCredential:(id)a3 serviceIdentifier:(id)a4
{
  v6 = MEMORY[0x1E695A918];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [v8 user];
  v11 = [v8 password];

  v13 = [v9 initWithUser:v10 password:v11 extension:0 serviceIdentifier:v7 userInfo:0];
  v12 = [(SFPasswordSavingRemoteViewController *)self _accountAuthenticationModificationController];
  [v12 performRequest:v13];
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

- (void)accountAuthenticationModificationController:(id)a3 didSuccessfullyCompleteRequest:(id)a4 withUserInfo:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [v6 serviceIdentifier];
      v10 = [v9 identifier];
      *buf = 138477827;
      v23 = v10;
      _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_INFO, "Completed Sign in with Apple upgrade for %{private}@", buf, 0xCu);
    }

    v11 = [(SFPasswordRemoteViewController *)self delegate];
    [v11 remoteViewControllerWillDismiss:self];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [MEMORY[0x1E696AAE8] mainBundle];
    v11 = [v12 objectForInfoDictionaryKey:*MEMORY[0x1E695E4F8]];

    v13 = MEMORY[0x1E69DC650];
    v14 = MEMORY[0x1E696AEC0];
    v15 = _WBSLocalizedString();
    v16 = [v14 stringWithFormat:v15, v11];
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

- (void)accountAuthenticationModificationController:(id)a3 didFailRequest:(id)a4 withError:(id)a5
{
  if ([a5 code] == 1)
  {
    v14 = [(SFPasswordRemoteViewController *)self delegate];
    [v14 remoteViewControllerWillDismiss:self];
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

- (id)presentationAnchorForAccountAuthenticationModificationController:(id)a3
{
  v3 = [(SFPasswordSavingRemoteViewController *)self view];
  v4 = [v3 window];

  return v4;
}

@end