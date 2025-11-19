@interface _ASAccountAuthenticationModificationRemoteViewController
+ (id)exportedInterface;
+ (id)requestViewControllerWithConnectionHandler:(id)a3;
- (_ASAccountAuthenticationModificationRemoteViewControllerDelegate)delegate;
- (void)dismissAccountModificationRemoteViewController;
- (void)presentAccountModificationRemoteViewController;
- (void)requestDidFailWithError:(id)a3 completion:(id)a4;
- (void)requestDidFinishWithCredential:(id)a3 userInfo:(id)a4 completion:(id)a5;
- (void)requestToUpgradeToSignInWithAppleDidFinishWithUserInfo:(id)a3 completion:(id)a4;
- (void)updateCredential:(id)a3 forServiceIdentifier:(id)a4 userInfo:(id)a5 extension:(id)a6;
- (void)upgradeCredentialToSignInWithApple:(id)a3 forServiceIdentifier:(id)a4 userInfo:(id)a5 extension:(id)a6;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation _ASAccountAuthenticationModificationRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() requestViewController:@"ASAccountAuthenticationModificationServiceViewController" fromServiceWithBundleIdentifier:@"com.apple.SafariViewService" connectionHandler:v3];

  return v4;
}

- (void)upgradeCredentialToSignInWithApple:(id)a3 forServiceIdentifier:(id)a4 userInfo:(id)a5 extension:(id)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [a6 _plugIn];
  v15 = [v13 uuid];

  v14 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v14 upgradeCredentialToSignInWithApple:v12 forServiceIdentifier:v11 userInfo:v10 extensionUUID:v15];
}

- (void)updateCredential:(id)a3 forServiceIdentifier:(id)a4 userInfo:(id)a5 extension:(id)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [a6 _plugIn];
  v15 = [v13 uuid];

  v14 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v14 updateCredential:v12 forServiceIdentifier:v11 userInfo:v10 extensionUUID:v15];
}

- (void)requestToUpgradeToSignInWithAppleDidFinishWithUserInfo:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountModificationRemoteViewControllerDidFinishUpgradeToSignInWithApple:self userInfo:v8 completion:v6];
  }

  else
  {
    v6[2](v6);
  }
}

- (void)requestDidFinishWithCredential:(id)a3 userInfo:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountModificationRemoteViewController:self didFinishWithCredential:v11 userInfo:v8 completion:v9];
  }

  else
  {
    v9[2](v9);
  }
}

- (void)requestDidFailWithError:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountModificationRemoteViewController:self requestCanceledWithError:v8 completion:v6];
  }

  else
  {
    v6[2](v6);
  }
}

- (void)presentAccountModificationRemoteViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained presentAccountModificationRemoteViewController:self];
  }
}

- (void)dismissAccountModificationRemoteViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained dismissAccountModificationRemoteViewController:self];
  }
}

+ (id)exportedInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F28FBC88];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_requestDidFinishWithCredential_userInfo_completion_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v4 forSelector:sel_requestDidFailWithError_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountModificationRemoteViewController:self viewServiceDidTerminateWithError:v5];
  }
}

- (_ASAccountAuthenticationModificationRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end