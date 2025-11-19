@interface _ASAccountAuthenticationModificationExtensionHostContext
- (_ASAccountAuthenticationModificationExtensionHostContextDelegate)delegate;
- (void)dismissRequestUI;
- (void)getSignInWithAppleAuthorizationWithState:(id)a3 nonce:(id)a4 completion:(id)a5;
- (void)prepareToCancelRequestWithError:(id)a3 completion:(id)a4;
- (void)prepareToCompleteRequestWithUpdatedCredential:(id)a3 userInfo:(id)a4 completion:(id)a5;
- (void)prepareToCompleteUpgradeToSignInWithAppleWithUserInfo:(id)a3 completion:(id)a4;
@end

@implementation _ASAccountAuthenticationModificationExtensionHostContext

- (void)getSignInWithAppleAuthorizationWithState:(id)a3 nonce:(id)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained getSignInWithAppleAuthorizationWithState:v12 nonce:v8 completion:v9];
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:0];
    v9[2](v9, 0, v11);
  }
}

- (void)prepareToCompleteUpgradeToSignInWithAppleWithUserInfo:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteUpgradeToSignInWithAppleRequestWithHostContext:self userInfo:v8 completion:v6];
  }

  else
  {
    v6[2](v6);
  }
}

- (void)prepareToCompleteRequestWithUpdatedCredential:(id)a3 userInfo:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteRequestWithHostContext:self updatedCredential:v11 userInfo:v8 completion:v9];
  }

  else
  {
    v9[2](v9);
  }
}

- (void)prepareToCancelRequestWithError:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCancelRequestWithHostContext:self error:v8 completion:v6];
  }

  else
  {
    v6[2](v6);
  }
}

- (void)dismissRequestUI
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained dismissRequestUI:self];
  }
}

- (_ASAccountAuthenticationModificationExtensionHostContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end