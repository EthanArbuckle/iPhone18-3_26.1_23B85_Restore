@interface _ASCredentialProviderExtensionConfigurationViewController
- (_ASCredentialProviderExtensionConfigurationViewControllerDelegate)delegate;
- (void)_finishWithSuccess:(BOOL)a3 completion:(id)a4;
- (void)prepareToCompleteExtensionConfigurationRequestWithHost:(id)a3 completion:(id)a4;
@end

@implementation _ASCredentialProviderExtensionConfigurationViewController

- (void)_finishWithSuccess:(BOOL)a3 completion:(id)a4
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = &__block_literal_global_3;
  }

  v7 = _Block_copy(v5);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained credentialProviderExtensionConfigurationViewControllerDidFinish:self completion:v7];
  }

  else
  {
    v7[2]();
  }
}

- (void)prepareToCompleteExtensionConfigurationRequestWithHost:(id)a3 completion:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __127___ASCredentialProviderExtensionConfigurationViewController_prepareToCompleteExtensionConfigurationRequestWithHost_completion___block_invoke;
  v7[3] = &unk_1E7AF7E28;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (_ASCredentialProviderExtensionConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end