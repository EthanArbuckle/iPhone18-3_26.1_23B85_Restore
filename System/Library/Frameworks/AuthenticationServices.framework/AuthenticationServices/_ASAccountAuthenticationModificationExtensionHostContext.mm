@interface _ASAccountAuthenticationModificationExtensionHostContext
- (_ASAccountAuthenticationModificationExtensionHostContextDelegate)delegate;
- (void)dismissRequestUI;
- (void)getSignInWithAppleAuthorizationWithState:(id)state nonce:(id)nonce completion:(id)completion;
- (void)prepareToCancelRequestWithError:(id)error completion:(id)completion;
- (void)prepareToCompleteRequestWithUpdatedCredential:(id)credential userInfo:(id)info completion:(id)completion;
- (void)prepareToCompleteUpgradeToSignInWithAppleWithUserInfo:(id)info completion:(id)completion;
@end

@implementation _ASAccountAuthenticationModificationExtensionHostContext

- (void)getSignInWithAppleAuthorizationWithState:(id)state nonce:(id)nonce completion:(id)completion
{
  stateCopy = state;
  nonceCopy = nonce;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained getSignInWithAppleAuthorizationWithState:stateCopy nonce:nonceCopy completion:completionCopy];
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:0];
    completionCopy[2](completionCopy, 0, v11);
  }
}

- (void)prepareToCompleteUpgradeToSignInWithAppleWithUserInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteUpgradeToSignInWithAppleRequestWithHostContext:self userInfo:infoCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)prepareToCompleteRequestWithUpdatedCredential:(id)credential userInfo:(id)info completion:(id)completion
{
  credentialCopy = credential;
  infoCopy = info;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteRequestWithHostContext:self updatedCredential:credentialCopy userInfo:infoCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)prepareToCancelRequestWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCancelRequestWithHostContext:self error:errorCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy);
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