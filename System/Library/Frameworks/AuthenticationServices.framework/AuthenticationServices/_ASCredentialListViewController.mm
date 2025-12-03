@interface _ASCredentialListViewController
- (_ASCredentialListViewController)initWithExtension:(id)extension serviceIdentifiers:(id)identifiers requestParameters:(id)parameters;
- (_ASCredentialListViewControllerDelegate)delegate;
- (id)initForTextSelectingWithExtension:(id)extension serviceIdentifiers:(id)identifiers;
- (id)initOneTimeCodeCredentialListWithExtension:(id)extension serviceIdentifiers:(id)identifiers;
- (void)_finishWithCredential:(id)credential completion:(id)completion;
- (void)prepareToCompleteOneTimeCodeRequestWithHostContext:(id)context credential:(id)credential completion:(id)completion;
- (void)prepareToCompleteRequestWithHostContext:(id)context credential:(id)credential completion:(id)completion;
- (void)prepareToCompleteRequestWithHostContext:(id)context passkeyAssertionCredential:(id)credential completion:(id)completion;
- (void)prepareToCompleteSelectionRequestWithHostContext:(id)context text:(id)text completion:(id)completion;
@end

@implementation _ASCredentialListViewController

- (_ASCredentialListViewController)initWithExtension:(id)extension serviceIdentifiers:(id)identifiers requestParameters:(id)parameters
{
  extensionCopy = extension;
  identifiersCopy = identifiers;
  parametersCopy = parameters;
  v28.receiver = self;
  v28.super_class = _ASCredentialListViewController;
  v11 = [(_ASExtensionViewController *)&v28 initWithExtension:extensionCopy];
  if (v11)
  {
    objc_initWeak(&location, v11);
    v12 = [identifiersCopy copy];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __90___ASCredentialListViewController_initWithExtension_serviceIdentifiers_requestParameters___block_invoke;
    aBlock[3] = &unk_1E7AF75E0;
    objc_copyWeak(&v26, &location);
    v13 = _Block_copy(aBlock);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __90___ASCredentialListViewController_initWithExtension_serviceIdentifiers_requestParameters___block_invoke_3;
    v21[3] = &unk_1E7AF7EF0;
    v22 = parametersCopy;
    identifiersCopy = v12;
    v23 = identifiersCopy;
    v14 = v13;
    v24 = v14;
    [(_ASExtensionViewController *)v11 _beginRequestWithConnectionHandler:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __90___ASCredentialListViewController_initWithExtension_serviceIdentifiers_requestParameters___block_invoke_4;
    v19[3] = &unk_1E7AF75E0;
    objc_copyWeak(&v20, &location);
    v15 = [_ASIncomingCallObserver callObserverWithBlock:v19];
    callObserver = v11->_callObserver;
    v11->_callObserver = v15;

    v17 = v11;
    objc_destroyWeak(&v20);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (id)initOneTimeCodeCredentialListWithExtension:(id)extension serviceIdentifiers:(id)identifiers
{
  extensionCopy = extension;
  identifiersCopy = identifiers;
  v19.receiver = self;
  v19.super_class = _ASCredentialListViewController;
  v8 = [(_ASExtensionViewController *)&v19 initWithExtension:extensionCopy];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __97___ASCredentialListViewController_initOneTimeCodeCredentialListWithExtension_serviceIdentifiers___block_invoke;
    v15[3] = &unk_1E7AF7F18;
    v16 = identifiersCopy;
    objc_copyWeak(&v17, &location);
    [(_ASExtensionViewController *)v8 _beginRequestWithConnectionHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __97___ASCredentialListViewController_initOneTimeCodeCredentialListWithExtension_serviceIdentifiers___block_invoke_4;
    v13[3] = &unk_1E7AF75E0;
    objc_copyWeak(&v14, &location);
    v9 = [_ASIncomingCallObserver callObserverWithBlock:v13];
    callObserver = v8->_callObserver;
    v8->_callObserver = v9;

    v11 = v8;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v17);

    objc_destroyWeak(&location);
  }

  return v8;
}

- (id)initForTextSelectingWithExtension:(id)extension serviceIdentifiers:(id)identifiers
{
  extensionCopy = extension;
  identifiersCopy = identifiers;
  v17.receiver = self;
  v17.super_class = _ASCredentialListViewController;
  v8 = [(_ASExtensionViewController *)&v17 initWithExtension:extensionCopy];
  v9 = v8;
  if (v8)
  {
    [(_ASExtensionViewController *)v8 _beginRequestWithConnectionHandler:&__block_literal_global_7];
    objc_initWeak(&location, v9);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88___ASCredentialListViewController_initForTextSelectingWithExtension_serviceIdentifiers___block_invoke_2;
    v14[3] = &unk_1E7AF75E0;
    objc_copyWeak(&v15, &location);
    v10 = [_ASIncomingCallObserver callObserverWithBlock:v14];
    callObserver = v9->_callObserver;
    v9->_callObserver = v10;

    v12 = v9;
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)_finishWithCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_5;
  }

  v7 = _Block_copy(completionCopy);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained credentialListViewController:self didFinishWithCredential:credentialCopy completion:v7];
  }

  else
  {
    v7[2](v7);
  }
}

- (void)prepareToCompleteRequestWithHostContext:(id)context credential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97___ASCredentialListViewController_prepareToCompleteRequestWithHostContext_credential_completion___block_invoke;
  block[3] = &unk_1E7AF7790;
  block[4] = self;
  v12 = credentialCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = credentialCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)prepareToCompleteRequestWithHostContext:(id)context passkeyAssertionCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_9;
  }

  v8 = _Block_copy(completionCopy);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained credentialListViewController:self didFinishWithPasskeyAssertionCredential:credentialCopy completion:v8];
  }

  else
  {
    v8[2](v8);
  }
}

- (void)prepareToCompleteOneTimeCodeRequestWithHostContext:(id)context credential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_13;
  }

  v8 = _Block_copy(completionCopy);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained credentialListViewController:self didFinishWithOneTimeCodeCredential:credentialCopy completion:v8];
  }

  else
  {
    v8[2](v8);
  }
}

- (void)prepareToCompleteSelectionRequestWithHostContext:(id)context text:(id)text completion:(id)completion
{
  textCopy = text;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_17;
  }

  v9 = _Block_copy(completionCopy);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __100___ASCredentialListViewController_prepareToCompleteSelectionRequestWithHostContext_text_completion___block_invoke_2;
    v11[3] = &unk_1E7AF76D0;
    v12 = WeakRetained;
    selfCopy = self;
    v14 = textCopy;
    v15 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  else
  {
    v9[2](v9);
  }
}

- (_ASCredentialListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end