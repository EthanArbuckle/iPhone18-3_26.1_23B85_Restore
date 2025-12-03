@interface _ASAccountAuthenticationModificationRemoteViewController
+ (id)exportedInterface;
+ (id)requestViewControllerWithConnectionHandler:(id)handler;
- (_ASAccountAuthenticationModificationRemoteViewControllerDelegate)delegate;
- (void)dismissAccountModificationRemoteViewController;
- (void)presentAccountModificationRemoteViewController;
- (void)requestDidFailWithError:(id)error completion:(id)completion;
- (void)requestDidFinishWithCredential:(id)credential userInfo:(id)info completion:(id)completion;
- (void)requestToUpgradeToSignInWithAppleDidFinishWithUserInfo:(id)info completion:(id)completion;
- (void)updateCredential:(id)credential forServiceIdentifier:(id)identifier userInfo:(id)info extension:(id)extension;
- (void)upgradeCredentialToSignInWithApple:(id)apple forServiceIdentifier:(id)identifier userInfo:(id)info extension:(id)extension;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation _ASAccountAuthenticationModificationRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"ASAccountAuthenticationModificationServiceViewController" fromServiceWithBundleIdentifier:@"com.apple.SafariViewService" connectionHandler:handlerCopy];

  return v4;
}

- (void)upgradeCredentialToSignInWithApple:(id)apple forServiceIdentifier:(id)identifier userInfo:(id)info extension:(id)extension
{
  infoCopy = info;
  identifierCopy = identifier;
  appleCopy = apple;
  _plugIn = [extension _plugIn];
  uuid = [_plugIn uuid];

  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy upgradeCredentialToSignInWithApple:appleCopy forServiceIdentifier:identifierCopy userInfo:infoCopy extensionUUID:uuid];
}

- (void)updateCredential:(id)credential forServiceIdentifier:(id)identifier userInfo:(id)info extension:(id)extension
{
  infoCopy = info;
  identifierCopy = identifier;
  credentialCopy = credential;
  _plugIn = [extension _plugIn];
  uuid = [_plugIn uuid];

  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy updateCredential:credentialCopy forServiceIdentifier:identifierCopy userInfo:infoCopy extensionUUID:uuid];
}

- (void)requestToUpgradeToSignInWithAppleDidFinishWithUserInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountModificationRemoteViewControllerDidFinishUpgradeToSignInWithApple:self userInfo:infoCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)requestDidFinishWithCredential:(id)credential userInfo:(id)info completion:(id)completion
{
  credentialCopy = credential;
  infoCopy = info;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountModificationRemoteViewController:self didFinishWithCredential:credentialCopy userInfo:infoCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)requestDidFailWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountModificationRemoteViewController:self requestCanceledWithError:errorCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy);
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

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountModificationRemoteViewController:self viewServiceDidTerminateWithError:errorCopy];
  }
}

- (_ASAccountAuthenticationModificationRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end