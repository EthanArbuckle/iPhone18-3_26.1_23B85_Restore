@interface _ASCredentialProviderExtensionHostContext
- (_ASCredentialProviderExtensionHostContextDelegate)delegate;
- (void)prepareToCancelRequestWithError:(id)a3 completion:(id)a4;
- (void)prepareToCompleteAssertionRequestWithSelectedPasskeyCredential:(id)a3 completion:(id)a4;
- (void)prepareToCompleteExtensionConfigurationRequestWithCompletion:(id)a3;
- (void)prepareToCompleteOneTimeCodeRequestWithSelectedCredential:(id)a3 completion:(id)a4;
- (void)prepareToCompleteRegistrationRequestWithSelectedPasskeyCredential:(id)a3 completion:(id)a4;
- (void)prepareToCompleteRequestWithSelectedCredential:(id)a3 completion:(id)a4;
- (void)prepareToCompleteRequestWithSelectedText:(id)a3 completion:(id)a4;
@end

@implementation _ASCredentialProviderExtensionHostContext

- (void)prepareToCompleteRequestWithSelectedCredential:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteRequestWithHostContext:self credential:v8 completion:v6];
  }

  else
  {
    v6[2](v6);
  }
}

- (void)prepareToCompleteAssertionRequestWithSelectedPasskeyCredential:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteRequestWithHostContext:self passkeyAssertionCredential:v8 completion:v6];
  }

  else
  {
    v6[2](v6);
  }
}

- (void)prepareToCompleteRegistrationRequestWithSelectedPasskeyCredential:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteRequestWithHostContext:self passkeyRegistrationCredential:v8 completion:v6];
  }

  else
  {
    v6[2](v6);
  }
}

- (void)prepareToCompleteOneTimeCodeRequestWithSelectedCredential:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteOneTimeCodeRequestWithHostContext:self credential:v8 completion:v6];
  }

  else
  {
    v6[2](v6);
  }
}

- (void)prepareToCompleteRequestWithSelectedText:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteSelectionRequestWithHostContext:self text:v8 completion:v6];
  }

  else
  {
    v6[2](v6);
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

- (void)prepareToCompleteExtensionConfigurationRequestWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareToCompleteExtensionConfigurationRequestWithHost:self completion:v4];
  }

  else
  {
    v4[2](v4);
  }
}

- (_ASCredentialProviderExtensionHostContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end