@interface _ASCredentialProviderExtensionHostContext
- (_ASCredentialProviderExtensionHostContextDelegate)delegate;
- (void)prepareToCancelRequestWithError:(id)error completion:(id)completion;
- (void)prepareToCompleteAssertionRequestWithSelectedPasskeyCredential:(id)credential completion:(id)completion;
- (void)prepareToCompleteExtensionConfigurationRequestWithCompletion:(id)completion;
- (void)prepareToCompleteOneTimeCodeRequestWithSelectedCredential:(id)credential completion:(id)completion;
- (void)prepareToCompleteRegistrationRequestWithSelectedPasskeyCredential:(id)credential completion:(id)completion;
- (void)prepareToCompleteRequestWithSelectedCredential:(id)credential completion:(id)completion;
- (void)prepareToCompleteRequestWithSelectedText:(id)text completion:(id)completion;
@end

@implementation _ASCredentialProviderExtensionHostContext

- (void)prepareToCompleteRequestWithSelectedCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteRequestWithHostContext:self credential:credentialCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)prepareToCompleteAssertionRequestWithSelectedPasskeyCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteRequestWithHostContext:self passkeyAssertionCredential:credentialCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)prepareToCompleteRegistrationRequestWithSelectedPasskeyCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteRequestWithHostContext:self passkeyRegistrationCredential:credentialCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)prepareToCompleteOneTimeCodeRequestWithSelectedCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteOneTimeCodeRequestWithHostContext:self credential:credentialCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)prepareToCompleteRequestWithSelectedText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteSelectionRequestWithHostContext:self text:textCopy completion:completionCopy];
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

- (void)prepareToCompleteExtensionConfigurationRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteExtensionConfigurationRequestWithHost:self completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (_ASCredentialProviderExtensionHostContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end