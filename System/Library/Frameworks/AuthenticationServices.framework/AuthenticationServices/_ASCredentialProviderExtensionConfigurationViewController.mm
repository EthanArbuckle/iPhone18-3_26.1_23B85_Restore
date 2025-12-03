@interface _ASCredentialProviderExtensionConfigurationViewController
- (_ASCredentialProviderExtensionConfigurationViewControllerDelegate)delegate;
- (void)_finishWithSuccess:(BOOL)success completion:(id)completion;
- (void)prepareToCompleteExtensionConfigurationRequestWithHost:(id)host completion:(id)completion;
@end

@implementation _ASCredentialProviderExtensionConfigurationViewController

- (void)_finishWithSuccess:(BOOL)success completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_3;
  }

  v7 = _Block_copy(completionCopy);
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

- (void)prepareToCompleteExtensionConfigurationRequestWithHost:(id)host completion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __127___ASCredentialProviderExtensionConfigurationViewController_prepareToCompleteExtensionConfigurationRequestWithHost_completion___block_invoke;
  v7[3] = &unk_1E7AF7E28;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (_ASCredentialProviderExtensionConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end