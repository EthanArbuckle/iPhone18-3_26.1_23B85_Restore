@interface SFPasswordPickerServiceViewController
+ (BOOL)_shouldRestoreStateForAutoFillForAppID:(id)d;
+ (void)_rememberStateForAutoFillWithSearchQuery:(id)query savedAccount:(id)account;
+ (void)_restoreStateForAutoFillToAccountPickerConfiguration:(id)configuration isForFillingIndividualAccountFields:(BOOL)fields;
- (BOOL)_isConfiguredForSystemAutoFill;
- (SFPasswordPickerServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_actionForPresentingPasswordManagerExtension:(id)extension;
- (id)_context;
- (id)authenticationMessageForContext:(id)context;
- (id)passcodePromptForContext:(id)context;
- (void)_authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:(id)context completionHandler:(id)handler;
- (void)_authenticateToViewOtherPasswordsWithCompletion:(id)completion;
- (void)_dismiss;
- (void)_fillCredential:(id)credential needsAuthentication:(BOOL)authentication;
- (void)_presentCredentialListForExtension:(id)extension;
- (void)_sendCredentialToClient:(id)client needsAuthentication:(BOOL)authentication;
- (void)_sendCredentialToClientAndDismiss:(id)dismiss providerBundleIdentifier:(id)identifier;
- (void)accountPickerViewController:(id)controller fillPasswordForSavedAccount:(id)account;
- (void)accountPickerViewController:(id)controller fillText:(id)text;
- (void)accountPickerViewController:(id)controller fillText:(id)text forSavedAccount:(id)account;
- (void)accountPickerViewController:(id)controller fillUsernameForSavedAccount:(id)account;
- (void)accountPickerViewController:(id)controller fillVerificationCode:(id)code;
- (void)accountPickerViewController:(id)controller fillVerificationCodeForSavedAccount:(id)account;
- (void)credentialAuthenticationViewController:(id)controller didFinishWithCredential:(id)credential error:(id)error completion:(id)completion;
- (void)credentialAuthenticationViewController:(id)controller didFinishWithPasskeyAssertionCredential:(id)credential error:(id)error completion:(id)completion;
- (void)credentialListViewController:(id)controller didFinishWithCredential:(id)credential completion:(id)completion;
- (void)credentialListViewController:(id)controller didFinishWithPasskeyAssertionCredential:(id)credential completion:(id)completion;
- (void)credentialListViewController:(id)controller didFinishWithText:(id)text completion:(id)completion;
- (void)setAuthenticationGracePeriod:(double)period;
- (void)setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:(id)domains;
- (void)setPageID:(id)d frameID:(id)iD credentialType:(id)type;
- (void)setRemoteAppID:(id)d;
- (void)setRemoteLocalizedAppName:(id)name;
- (void)setRemoteUnlocalizedAppName:(id)name;
- (void)setSystemAutoFillDocumentTraits:(id)traits;
- (void)setWebViewURL:(id)l;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SFPasswordPickerServiceViewController

- (id)authenticationMessageForContext:(id)context
{
  v3 = +[SFAutoFillAuthenticationUtilities customAuthenticationTitleForFillingSavedPassword];

  return v3;
}

- (id)passcodePromptForContext:(id)context
{
  v3 = +[SFAutoFillAuthenticationUtilities passcodePromptForFillingSavedAccount];

  return v3;
}

- (id)_context
{
  context = self->_context;
  if (!context)
  {
    v4 = objc_alloc_init(_SFAuthenticationContext);
    v5 = self->_context;
    self->_context = v4;

    [(_SFAuthenticationContext *)self->_context setDelegate:self];
    context = self->_context;
  }

  v6 = context;

  return v6;
}

- (SFPasswordPickerServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v18.receiver = self;
  v18.super_class = SFPasswordPickerServiceViewController;
  v4 = [(SFPasswordPickerServiceViewController *)&v18 initWithNibName:name bundle:bundle];
  if (v4)
  {
    objc_initWeak(&location, v4);
    mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
    [mEMORY[0x1E69C8DE0] addObserver:v4];

    v6 = objc_alloc_init(MEMORY[0x1E69C8818]);
    authenticationServicesAgentProxy = v4->_authenticationServicesAgentProxy;
    v4->_authenticationServicesAgentProxy = v6;

    v8 = MEMORY[0x1E695A988];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__SFPasswordPickerServiceViewController_initWithNibName_bundle___block_invoke;
    v15[3] = &unk_1E84905C0;
    objc_copyWeak(&v16, &location);
    v9 = [v8 callObserverWithBlock:v15];
    callObserver = v4->_callObserver;
    v4->_callObserver = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695A970]);
    conditionalRegistrationRequester = v4->_conditionalRegistrationRequester;
    v4->_conditionalRegistrationRequester = v11;

    v13 = v4;
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __64__SFPasswordPickerServiceViewController_initWithNibName_bundle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
  [mEMORY[0x1E69C8DE0] removeObserver:self];

  v6.receiver = self;
  v6.super_class = SFPasswordPickerServiceViewController;
  [(SFPasswordPickerServiceViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = SFPasswordPickerServiceViewController;
  [(SFPasswordPickerServiceViewController *)&v9 viewDidAppear:appear];
  view = [(SFPasswordPickerServiceViewController *)self view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  presentCredentialsHandler = self->_presentCredentialsHandler;
  if (presentCredentialsHandler)
  {
    presentCredentialsHandler[2]();
    v8 = self->_presentCredentialsHandler;
    self->_presentCredentialsHandler = 0;
  }
}

- (void)_dismiss
{
  self->_hasAuthenticationForOtherPasswords = 0;
  _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy willDismissServiceViewController];
}

- (void)_authenticateToViewOtherPasswordsWithCompletion:(id)completion
{
  v23[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_hasAuthenticationForOtherPasswords)
  {
    (completionCopy[2])(completionCopy, 1, 0);
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E696EE50]);
    v20 = 0u;
    v21 = 0u;
    [(SFPasswordPickerServiceViewController *)self _hostAuditToken];
    v18 = 0u;
    v19 = 0u;
    if (WBSAuditTokenHasEntitlement())
    {
      [v6 setTouchIDAuthenticationAllowableReuseDuration:self->_authenticationGracePeriod];
    }

    v7 = WBSAuthenticationPolicyForPasswordManager();
    v17 = 0;
    v8 = [v6 canEvaluatePolicy:v7 error:&v17];
    v9 = v17;
    v10 = v9;
    if (v8)
    {
      v22[0] = &unk_1F5023110;
      v11 = +[SFAutoFillAuthenticationUtilities passcodePromptForViewingSavedAccounts];
      v22[1] = &unk_1F5023128;
      v23[0] = v11;
      v12 = +[SFAutoFillAuthenticationUtilities customAuthenticationTitleForViewingSavedAccounts];
      v23[1] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __89__SFPasswordPickerServiceViewController__authenticateToViewOtherPasswordsWithCompletion___block_invoke;
      v14[3] = &unk_1E8492518;
      v14[4] = self;
      v16 = v5;
      v15 = v6;
      [v15 evaluatePolicy:v7 options:v13 reply:v14];
    }

    else
    {
      self->_hasAuthenticationForOtherPasswords = [v9 code] == -5;
      v5[2](v5);
    }
  }
}

void __89__SFPasswordPickerServiceViewController__authenticateToViewOtherPasswordsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(*(a1 + 32) + 1041) = v4 == 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__SFPasswordPickerServiceViewController__authenticateToViewOtherPasswordsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E84924F0;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v11 = *(a1 + 48);
  v10 = *(a1 + 40);
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __89__SFPasswordPickerServiceViewController__authenticateToViewOtherPasswordsWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __89__SFPasswordPickerServiceViewController__authenticateToViewOtherPasswordsWithCompletion___block_invoke_2_cold_1();
    }

    [*(a1 + 40) _dismiss];
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 56) + 16);

    return v4();
  }
}

- (id)_actionForPresentingPasswordManagerExtension:(id)extension
{
  extensionCopy = extension;
  objc_initWeak(&location, self);
  mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
  v6 = [mEMORY[0x1E69C8DE0] displayNameForExtension:extensionCopy];

  v7 = MEMORY[0x1E696AEC0];
  v8 = _WBSLocalizedString();
  v9 = [v7 stringWithFormat:v8, v6];

  v10 = MEMORY[0x1E69DC648];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__SFPasswordPickerServiceViewController__actionForPresentingPasswordManagerExtension___block_invoke;
  v14[3] = &unk_1E8492540;
  objc_copyWeak(&v16, &location);
  v11 = extensionCopy;
  v15 = v11;
  v12 = [v10 _actionWithTitle:v9 image:0 style:0 handler:v14 shouldDismissHandler:&__block_literal_global_28];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v12;
}

void __86__SFPasswordPickerServiceViewController__actionForPresentingPasswordManagerExtension___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _presentCredentialListForExtension:*(a1 + 32)];
}

- (void)_presentCredentialListForExtension:(id)extension
{
  v27[1] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke;
  aBlock[3] = &unk_1E8492590;
  aBlock[4] = self;
  v5 = extensionCopy;
  v26 = v5;
  v6 = _Block_copy(aBlock);
  v23 = 0u;
  v24 = 0u;
  [(SFPasswordPickerServiceViewController *)self _hostAuditToken];
  v21 = 0u;
  v22 = 0u;
  HasEntitlement = WBSAuditTokenHasEntitlement();
  v8 = HasEntitlement;
  if (HasEntitlement && (remoteAppID = self->_remoteAppID) != 0)
  {
    applicationIdentifier = remoteAppID;
  }

  else
  {
    applicationIdentifier = [(SFPasswordServiceViewController *)self applicationIdentifier];
  }

  v11 = applicationIdentifier;
  if (self->_webViewURL)
  {
    v12 = objc_alloc(MEMORY[0x1E695A920]);
    absoluteString = [(NSURL *)self->_webViewURL absoluteString];
    v14 = [v12 initWithIdentifier:absoluteString type:1];
    v27[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v6[2](v6, v15, v11);
  }

  else
  {
    v16 = MEMORY[0x1E69C8E18];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke_4;
    v17[3] = &unk_1E84925E0;
    v20 = v8;
    v17[4] = self;
    v19 = v6;
    v18 = v11;
    [v16 bestDomainForAppID:v18 completionHandler:v17];
  }
}

void __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke_2;
  aBlock[3] = &unk_1E8492568;
  v6 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v11 = v6;
  v7 = v5;
  v12 = v7;
  v8 = a3;
  v9 = _Block_copy(aBlock);
  [*(*(a1 + 32) + 1024) getPasskeyAssertionRequestParametersForApplicationIdentifier:v8 completionHandler:v9];
}

void __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 1136) isExplicitAutoFillMode])
  {
    v4 = [objc_alloc(MEMORY[0x1E695A980]) initForTextSelectingWithExtension:*(a1 + 40) serviceIdentifiers:*(a1 + 48)];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E695A980]) initWithExtension:*(a1 + 40) serviceIdentifiers:*(a1 + 48) requestParameters:v3];
  }

  v5 = v4;
  [v4 setDelegate:*(a1 + 32)];
  v6 = [*(a1 + 48) firstObject];
  if ([v6 type] == 1)
  {
    v7 = MEMORY[0x1E695DFF8];
    v8 = [v6 identifier];
    v9 = [v7 URLWithString:v8];

    v10 = [v9 host];
    v11 = *(a1 + 32);
    v12 = *(v11 + 1016);
    *(v11 + 1016) = v10;
  }

  else
  {
    v13 = [v6 identifier];
    v14 = *(a1 + 32);
    v9 = *(v14 + 1016);
    *(v14 + 1016) = v13;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke_3;
  v16[3] = &unk_1E848F9B0;
  v16[4] = *(a1 + 32);
  v17 = v5;
  v15 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v16);
}

void __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke_5;
  block[3] = &unk_1E84925B8;
  v11 = *(a1 + 56);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke_5(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 56);
LABEL_3:
    v1 = [objc_alloc(MEMORY[0x1E695A920]) initWithIdentifier:v4 type:0];
    v11[0] = v1;
    v6 = 1;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    goto LABEL_10;
  }

  if (*(a1 + 64) == 1 && (v8 = *(a1 + 40), (v9 = *(v8 + 1088)) != 0))
  {
    v10 = [MEMORY[0x1E69C8E18] bestDomainForAutoFillFromDomains:v9 appID:*(v8 + 1064)];
    v5 = *(a1 + 56);
    if (v10)
    {
      v4 = v10;
      goto LABEL_3;
    }

    v6 = 0;
    v4 = 0;
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v5 = *(a1 + 56);
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_10:
  (*(v5 + 16))(v5, v7, *(a1 + 48));
  if (v6)
  {
  }
}

- (void)_fillCredential:(id)credential needsAuthentication:(BOOL)authentication
{
  authenticationCopy = authentication;
  credentialCopy = credential;
  if ([credentialCopy isExternal])
  {
    externalCredential = [credentialCopy externalCredential];
    objc_storeStrong(&self->_credentialIdentityToFill, externalCredential);
    owningExtensionState = [externalCredential owningExtensionState];
    providerBundleID = [owningExtensionState providerBundleID];

    mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77__SFPasswordPickerServiceViewController__fillCredential_needsAuthentication___block_invoke;
    v12[3] = &unk_1E8492630;
    v11 = externalCredential;
    v13 = v11;
    selfCopy = self;
    [mEMORY[0x1E69C8DE0] getExtensionWithBundleID:providerBundleID completion:v12];
  }

  else
  {
    [(SFPasswordPickerServiceViewController *)self _sendCredentialToClient:credentialCopy needsAuthentication:authenticationCopy];
  }
}

void __77__SFPasswordPickerServiceViewController__fillCredential_needsAuthentication___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) type];
  if (v4 == 1)
  {
    v5 = [objc_alloc(MEMORY[0x1E695A940]) initWithFoundationCredentialIdentity:*(a1 + 32)];
    v12 = [objc_alloc(MEMORY[0x1E695A978]) initWithExtension:v3 credentialIdentity:v5];
    v13 = *(a1 + 40);
    v14 = *(v13 + 1000);
    *(v13 + 1000) = v12;

    [*(*(a1 + 40) + 1000) setDelegate:?];
    goto LABEL_5;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 32);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __77__SFPasswordPickerServiceViewController__fillCredential_needsAuthentication___block_invoke_2;
    v18 = &unk_1E8492608;
    v19 = *(a1 + 40);
    v20 = v3;
    v6 = _Block_copy(&v15);
    v7 = *(a1 + 40);
    v8 = v7[128];
    v9 = [v7 applicationIdentifier];
    v10 = [v5 serviceIdentifier];
    v11 = [v5 credentialID];
    [v8 getExternalPasskeyRequestForApplicationIdentifier:v9 relyingPartyIdentifier:v10 credentialID:v11 completionHandler:v6];

LABEL_5:
  }
}

void __77__SFPasswordPickerServiceViewController__fillCredential_needsAuthentication___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [objc_alloc(MEMORY[0x1E695A978]) initWithExtension:*(a1 + 40) passkeyAssertionRequest:v6];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1000);
    *(v4 + 1000) = v3;

    [*(*(a1 + 32) + 1000) setDelegate:?];
  }

  else
  {
    [*(a1 + 32) _dismiss];
  }
}

- (void)_sendCredentialToClient:(id)client needsAuthentication:(BOOL)authentication
{
  authenticationCopy = authentication;
  clientCopy = client;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke;
  aBlock[3] = &unk_1E848F9B0;
  v7 = clientCopy;
  v14 = v7;
  selfCopy = self;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (authenticationCopy)
  {
    _context = [(SFPasswordPickerServiceViewController *)self _context];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke_126;
    v11[3] = &unk_1E8492658;
    v11[4] = self;
    v12 = v9;
    [_context authenticateForClient:self userInitiated:1 completion:v11];
  }

  else
  {
    (*(v8 + 2))(v8);
  }
}

uint64_t __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) user];
    if ([v3 length])
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = v4;
    v6 = [*(a1 + 32) password];
    if ([v6 length])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = v7;
    v9 = [*(a1 + 32) site];
    if ([v9 length])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v14 = 138543874;
    v15 = v5;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v10;
    v11 = v10;
    _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_DEFAULT, "Sending credential with non-empty username: %{public}@, non-empty password: %{public}@, non-empty site: %{public}@", &v14, 0x20u);
  }

  v12 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [*(a1 + 32) user];
    objc_claimAutoreleasedReturnValue();
    [*(a1 + 32) site];
    objc_claimAutoreleasedReturnValue();
    __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke_cold_1();
  }

  return [*(a1 + 40) _sendCredentialToClientAndDismiss:*(a1 + 32) providerBundleIdentifier:*MEMORY[0x1E69C8CC0]];
}

void __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke_126(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_DEFAULT, "Successfully authenticated App AutoFill", v8, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v5 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke_126_cold_1();
    }

    [*(a1 + 32) _dismiss];
  }
}

- (void)_authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  objc_initWeak(location, self);
  v8 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController _authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:completionHandler:];
  }

  presentedViewController = [(SFPasswordPickerServiceViewController *)self presentedViewController];

  if (presentedViewController)
  {
    handlerCopy[2](handlerCopy, 1);
    goto LABEL_27;
  }

  v43 = 0u;
  v44 = 0u;
  v29 = contextCopy;
  [(SFPasswordPickerServiceViewController *)self _hostAuditToken];
  v41 = 0u;
  v42 = 0u;
  HasEntitlement = WBSAuditTokenHasEntitlement();
  v11 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController _authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:completionHandler:];
    if (!HasEntitlement)
    {
      goto LABEL_10;
    }
  }

  else if (!HasEntitlement)
  {
    goto LABEL_10;
  }

  remoteAppID = self->_remoteAppID;
  if (remoteAppID)
  {
    applicationIdentifier = remoteAppID;
    goto LABEL_11;
  }

LABEL_10:
  applicationIdentifier = [(SFPasswordServiceViewController *)self applicationIdentifier];
LABEL_11:
  v14 = applicationIdentifier;
  v28 = applicationIdentifier;
  v15 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController _authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:completionHandler:];
  }

  _isConfiguredForSystemAutoFill = [(SFPasswordPickerServiceViewController *)self _isConfiguredForSystemAutoFill];
  v17 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    if (_isConfiguredForSystemAutoFill)
    {
      goto LABEL_15;
    }

LABEL_19:
    isExplicitAutoFillMode = 0;
    goto LABEL_20;
  }

  [SFPasswordPickerServiceViewController _authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:completionHandler:];
  if (!_isConfiguredForSystemAutoFill)
  {
    goto LABEL_19;
  }

LABEL_15:
  if ([(RTIDocumentTraits *)self->_systemAutoFillDocumentTraits autofillMode]== 1)
  {
    isExplicitAutoFillMode = [(RTIDocumentTraits *)self->_systemAutoFillDocumentTraits isExplicitAutoFillMode];
  }

  else
  {
    isExplicitAutoFillMode = 1;
  }

LABEL_20:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8492868;
  v36 = handlerCopy;
  aBlock[4] = self;
  v38 = HasEntitlement;
  v19 = v14;
  v34 = v19;
  v39 = _isConfiguredForSystemAutoFill;
  v35 = contextCopy;
  v40 = isExplicitAutoFillMode;
  objc_copyWeak(&v37, location);
  v20 = _Block_copy(aBlock);
  if (HasEntitlement)
  {
    v21 = self->_externallyVerifiedAssociatedDomains;
  }

  else
  {
    v21 = 0;
  }

  v22 = MEMORY[0x1E69C8E18];
  if (v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = &stru_1F4FE9E38;
  }

  webFrameIdentifier = self->_webFrameIdentifier;
  webViewURL = self->_webViewURL;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_9;
  v30[3] = &unk_1E84928E0;
  v26 = v19;
  v31 = v26;
  v32 = v20;
  v27 = v20;
  [v22 getCredentialsForAppWithAppID:v23 frameIdentifier:webFrameIdentifier externallyVerifiedAndApprovedSharedWebCredentialDomains:v21 websiteURL:webViewURL completionHandler:v30];

  objc_destroyWeak(&v37);
  contextCopy = v29;
LABEL_27:
  objc_destroyWeak(location);
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v150 = *MEMORY[0x1E69E9840];
  v99 = a2;
  v100 = a3;
  v101 = a4;
  v7 = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
  v102 = [v7 shouldAutoFillPasswordsFromKeychain];

  v8 = [MEMORY[0x1E69C8DE0] sharedManager];
  v103 = [v8 enabledExtensions];

  if ((v102 & 1) == 0 && ![v103 count])
  {
    v25 = [v103 safari_mapObjectsUsingBlock:&__block_literal_global_131];
    v26 = [v103 count];
    if (v26 <= 1)
    {
      if (!v26)
      {
        v31 = _WBSLocalizedString();
        v32 = 0;
        v77 = 1;
LABEL_76:
        v79 = MEMORY[0x1E69DC650];
        v80 = _WBSLocalizedString();
        v81 = [v79 alertControllerWithTitle:v80 message:v31 imageNamed:@"alert-passwords" preferredStyle:1];

        if (v77)
        {
          v82 = MEMORY[0x1E69DC648];
          v83 = _WBSLocalizedString();
          v146[0] = MEMORY[0x1E69E9820];
          v146[1] = 3221225472;
          v146[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_152;
          v146[3] = &unk_1E84926A0;
          v146[4] = *(a1 + 32);
          v84 = [v82 actionWithTitle:v83 style:0 handler:v146];
          [v81 addAction:v84];

          v85 = MEMORY[0x1E69DC648];
          v86 = _WBSLocalizedString();
          v145[0] = MEMORY[0x1E69E9820];
          v145[1] = 3221225472;
          v145[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_3;
          v145[3] = &unk_1E84926A0;
          v145[4] = *(a1 + 32);
          v87 = [v85 actionWithTitle:v86 style:0 handler:v145];
          [v81 addAction:v87];
        }

        else
        {
          if (v32)
          {
            v88 = MEMORY[0x1E69DC648];
            v89 = MEMORY[0x1E696AEC0];
            v90 = _WBSLocalizedString();
            v91 = [v25 objectAtIndexedSubscript:0];
            v92 = [v89 stringWithFormat:v90, v91];
            v143[0] = MEMORY[0x1E69E9820];
            v143[1] = 3221225472;
            v143[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_4;
            v143[3] = &unk_1E84926A0;
            v144 = v103;
            v93 = [v88 actionWithTitle:v92 style:0 handler:v143];
            [v81 addAction:v93];
          }

          v94 = MEMORY[0x1E69DC648];
          v95 = _WBSLocalizedString();
          v142[0] = MEMORY[0x1E69E9820];
          v142[1] = 3221225472;
          v142[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_164;
          v142[3] = &unk_1E84926A0;
          v142[4] = *(a1 + 32);
          v96 = [v94 actionWithTitle:v95 style:0 handler:v142];
          [v81 addAction:v96];
        }

        [*(a1 + 32) presentViewController:v81 animated:1 completion:0];
        v97 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1D4644000, v97, OS_LOG_TYPE_INFO, "There is no available CPE that supports explicit AutoFill.", buf, 2u);
        }

        (*(*(a1 + 56) + 16))();

LABEL_84:
        goto LABEL_68;
      }

      if (v26 == 1)
      {
        v27 = MEMORY[0x1E696AEC0];
        v28 = _WBSLocalizedString();
        v29 = [v25 objectAtIndexedSubscript:0];
        v30 = [v25 objectAtIndexedSubscript:0];
        v31 = [v27 stringWithFormat:v28, v29, v30];
        v32 = 1;
LABEL_75:

        v77 = 0;
        goto LABEL_76;
      }

LABEL_69:
      v76 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
        __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_cold_1();
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_84;
    }

    if (v26 == 2)
    {
      v78 = MEMORY[0x1E696AEC0];
      v28 = _WBSLocalizedString();
      v29 = [v25 objectAtIndexedSubscript:0];
      v30 = [v25 objectAtIndexedSubscript:1];
      v31 = [v78 stringWithFormat:v28, v29, v30];
    }

    else
    {
      if (v26 != 3)
      {
        goto LABEL_69;
      }

      v36 = MEMORY[0x1E696AEC0];
      v28 = _WBSLocalizedString();
      v29 = [v25 objectAtIndexedSubscript:0];
      v30 = [v25 objectAtIndexedSubscript:1];
      v37 = [v25 objectAtIndexedSubscript:2];
      v31 = [v36 stringWithFormat:v28, v29, v30, v37];
    }

    v32 = 0;
    goto LABEL_75;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165;
  aBlock[3] = &unk_1E8492788;
  v139 = *(a1 + 72);
  aBlock[4] = *(a1 + 32);
  v9 = v99;
  v134 = v9;
  v135 = *(a1 + 40);
  v140 = *(a1 + 73);
  v136 = v101;
  v10 = v100;
  v137 = v10;
  v138 = *(a1 + 48);
  v98 = _Block_copy(aBlock);
  v11 = (([v103 count] != 0) & v102) == 0 && objc_msgSend(v103, "count") < 2;
  if (*(a1 + 74) == 1)
  {
    v12 = [v103 safari_filterObjectsUsingBlock:&__block_literal_global_217];
    v13 = [v12 count];

    v14 = v13 != 0;
    v11 = v13 + v102 == 1;
  }

  else
  {
    v14 = 0;
  }

  if (*(*(a1 + 32) + 1040) == 1)
  {
    if ([v103 count] != 0 && !v11)
    {
LABEL_12:
      if (*(a1 + 74) == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = MEMORY[0x1E69DC650];
      }

      else
      {
        v21 = [v9 count];
        v17 = MEMORY[0x1E69DC650];
        if (v21)
        {
          v16 = _WBSLocalizedString();
          v15 = 1;
        }

        else
        {
          v15 = 0;
          v16 = 0;
        }
      }

      v106 = [v17 alertControllerWithTitle:v16 message:0 imageNamed:@"alert-passwords" preferredStyle:_SFDeviceAlertStyle()];
      if (v15)
      {

        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        obj = v9;
        v38 = [obj countByEnumeratingWithState:&v123 objects:v149 count:16];
        if (v38)
        {
          v105 = *v124;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v124 != v105)
              {
                objc_enumerationMutation(obj);
              }

              v40 = *(*(&v123 + 1) + 8 * i);
              v41 = MEMORY[0x1E696AEC0];
              v42 = _WBSLocalizedString();
              v43 = [v40 site];
              v44 = [v41 stringWithFormat:v42, v43];

              if ([v40 isExternal])
              {
                v45 = [v40 externalCredential];
                v46 = [MEMORY[0x1E69C8E18] titleForCredentialIdentity:v45 formURL:0];

                v44 = v46;
              }

              v47 = [v40 user];
              v48 = [v40 creationDate];
              v49 = [SFCredentialDisplayData descriptionForPasswordWithUser:v47 creationDate:v48];

              v50 = v10;
              if (!v10)
              {
                v4 = [*(*(a1 + 32) + 1048) host];
                v50 = v4;
              }

              [v40 setRequestedHost:v50];
              if (!v10)
              {
              }

              v122[0] = MEMORY[0x1E69E9820];
              v122[1] = 3221225472;
              v122[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_4_228;
              v122[3] = &unk_1E84927F8;
              v122[4] = *(a1 + 32);
              v122[5] = v40;
              v51 = [SFMultipleLineAlertAction actionWithTitle:v49 detail:v44 handler:v122];
              [v106 addAction:v51];
            }

            v38 = [obj countByEnumeratingWithState:&v123 objects:v149 count:16];
          }

          while (v38);
        }
      }

      v52 = [MEMORY[0x1E695DF70] array];
      v53 = _WBSLocalizedString();
      if ([v103 count])
      {
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v54 = v103;
        v55 = [v54 countByEnumeratingWithState:&v118 objects:v148 count:16];
        if (v55)
        {
          v56 = *v119;
          do
          {
            for (j = 0; j != v55; ++j)
            {
              if (*v119 != v56)
              {
                objc_enumerationMutation(v54);
              }

              v58 = *(*(&v118 + 1) + 8 * j);
              v59 = [MEMORY[0x1E69C8DE0] sharedManager];
              v60 = [v59 extensionSupportsTextInsertion:v58];

              if (v60 & 1 | ((*(a1 + 74) & 1) == 0))
              {
                v61 = [*(a1 + 32) _actionForPresentingPasswordManagerExtension:v58];
                [v52 addObject:v61];
              }
            }

            v55 = [v54 countByEnumeratingWithState:&v118 objects:v148 count:16];
          }

          while (v55);
        }

        v62 = _WBSLocalizedString();

        v53 = v62;
      }

      if (v102)
      {
        v63 = MEMORY[0x1E69DC648];
        v116[0] = MEMORY[0x1E69E9820];
        v116[1] = 3221225472;
        v116[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_5_239;
        v116[3] = &unk_1E8492820;
        v117 = v98;
        v64 = [v63 actionWithTitle:v53 style:0 handler:v116];
        [v52 addObject:v64];
      }

      [v52 sortUsingComparator:&__block_literal_global_242];
      v115 = 0u;
      v113 = 0u;
      v114 = 0u;
      v112 = 0u;
      v65 = v52;
      v66 = [v65 countByEnumeratingWithState:&v112 objects:v147 count:16];
      if (v66)
      {
        v67 = *v113;
        do
        {
          for (k = 0; k != v66; ++k)
          {
            if (*v113 != v67)
            {
              objc_enumerationMutation(v65);
            }

            [v106 addAction:*(*(&v112 + 1) + 8 * k)];
          }

          v66 = [v65 countByEnumeratingWithState:&v112 objects:v147 count:16];
        }

        while (v66);
      }

      v69 = MEMORY[0x1E69DC648];
      v70 = _WBSLocalizedString();
      v111[0] = MEMORY[0x1E69E9820];
      v111[1] = 3221225472;
      v111[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_7;
      v111[3] = &unk_1E84926A0;
      v111[4] = *(a1 + 32);
      v71 = [v69 actionWithTitle:v70 style:1 handler:v111];
      [v106 addAction:v71];

      v108[0] = MEMORY[0x1E69E9820];
      v108[1] = 3221225472;
      v108[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_8;
      v108[3] = &unk_1E84927D0;
      objc_copyWeak(&v110, (a1 + 64));
      v72 = v106;
      v109 = v72;
      v73 = _Block_copy(v108);
      v74 = *(a1 + 32);
      v75 = *(v74 + 1120);
      *(v74 + 1120) = v73;

      (*(*(a1 + 56) + 16))();
      objc_destroyWeak(&v110);

      goto LABEL_67;
    }
  }

  else if (!v11)
  {
    goto LABEL_12;
  }

  if (*(a1 + 74) != 1)
  {
    if ([v103 count])
    {
      v127[0] = MEMORY[0x1E69E9820];
      v127[1] = 3221225472;
      v127[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_3_219;
      v127[3] = &unk_1E84927D0;
      objc_copyWeak(&v129, (a1 + 64));
      v128 = v103;
      v22 = _Block_copy(v127);
      v23 = *(a1 + 32);
      v24 = *(v23 + 1120);
      *(v23 + 1120) = v22;

      (*(*(a1 + 56) + 16))();
      objc_destroyWeak(&v129);
      goto LABEL_67;
    }

LABEL_26:
    v33 = _Block_copy(v98);
    v34 = *(a1 + 32);
    v35 = *(v34 + 1120);
    *(v34 + 1120) = v33;

    (*(*(a1 + 56) + 16))();
    goto LABEL_67;
  }

  if (!v14)
  {
    goto LABEL_26;
  }

  v130[0] = MEMORY[0x1E69E9820];
  v130[1] = 3221225472;
  v130[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_2_218;
  v130[3] = &unk_1E84927D0;
  objc_copyWeak(&v132, (a1 + 64));
  v131 = v103;
  v18 = _Block_copy(v130);
  v19 = *(a1 + 32);
  v20 = *(v19 + 1120);
  *(v19 + 1120) = v18;

  (*(*(a1 + 56) + 16))();
  objc_destroyWeak(&v132);
LABEL_67:

LABEL_68:
}

id __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [v2 sf_bundleIdentifierForContainingApp];
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];
  v6 = [v5 localizedName];

  return v6;
}

uint64_t __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_152(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_2_154;
  v2[3] = &unk_1E84906D0;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x1E695A948] openCredentialProviderAppSettingsWithCompletionHandler:v2];
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) objectAtIndexedSubscript:0];
  v2 = [v1 sf_bundleIdentifierForContainingApp];

  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v4 = objc_alloc_init(MEMORY[0x1E69636B8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_5;
  v6[3] = &unk_1E84926C8;
  v5 = v2;
  v7 = v5;
  [v3 openApplicationWithBundleIdentifier:v5 configuration:v4 completionHandler:v6];
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_5_cold_1(a1, v4);
    }
  }
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v3[48] == 1 && (v4 = v2[133]) != 0)
  {
    v83 = 0;
    v66 = [v4 safari_bundleIdentifierFromApplicationIdentifier:&v83];
    v5 = v83;
    if (!v66)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [v5 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165_cold_1();
      }
    }
  }

  else
  {
    v66 = [v2 _hostApplicationBundleIdentifier];
  }

  v7 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v66];
  v65 = [v7 localizedNameForContext:0];

  if (![v65 length])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165_cold_2();
    }
  }

  v61 = [*(*v3 + 1048) safari_originalDataAsString];
  v62 = [*(a1 + 40) safari_mapObjectsUsingBlock:&__block_literal_global_170_0];
  v67 = [MEMORY[0x1E695DF70] array];
  if (*(a1 + 80) != 1)
  {
    goto LABEL_19;
  }

  v9 = *(*v3 + 1080);
  v10 = *(*v3 + 1072);
  if (!v9)
  {
    if (v10)
    {
      goto LABEL_17;
    }

LABEL_19:
    v9 = v65;
    if (!v65)
    {
LABEL_21:
      v11 = *v3;
      goto LABEL_22;
    }

LABEL_20:
    [v67 addObject:v9];
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_17:
  [v67 addObject:*(*v3 + 1072)];
  v11 = *v3;
  v9 = *(*v3 + 1080);
  if (v9)
  {
    goto LABEL_20;
  }

LABEL_22:
  if (v11)
  {
    [v11 _hostAuditToken];
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
  }

  v12 = *(a1 + 48);
  *buf = v81;
  *&buf[16] = v82;
  if (WBSAuditTokenHasEntitlement())
  {

LABEL_27:
    v13 = 1;
LABEL_37:
    v20 = *(a1 + 48);
    v79 = 0;
    v80 = 0;
    [MEMORY[0x1E69C8990] getHintStringsForAppID:v20 appNames:v67 matchedSites:v62 urlString:v61 outServiceNameHintStrings:&v80 outDomainHintStrings:&v79];
    v63 = v80;
    v64 = v79;
    v21 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v57 = *(a1 + 32);
      v58 = *(a1 + 48);
      v59 = [v62 count];
      *buf = 134219522;
      *&buf[4] = v57;
      *&buf[12] = 2112;
      *&buf[14] = v58;
      *&buf[22] = 2112;
      *&buf[24] = v67;
      v86 = 2048;
      v87 = v59;
      v88 = 2112;
      v89 = v61;
      v90 = 2112;
      v91 = v63;
      v92 = 2112;
      v93 = v64;
      _os_log_debug_impl(&dword_1D4644000, v21, OS_LOG_TYPE_DEBUG, "Password view controller %p requested hint strings for app ID %@, appNames %@, number of matchedSites %lu, urlString %@; got service name hint strings: %@ and domain hint strings: %@", buf, 0x48u);
    }

    goto LABEL_40;
  }

  *buf = v81;
  *&buf[16] = v82;
  if (WBSAuditTokenHasEntitlement())
  {
    v84 = 0;
    v14 = [MEMORY[0x1E6963620] bundleRecordWithApplicationIdentifier:v12 error:&v84];
    v15 = v84;
    v16 = v15;
    if (v14)
    {
      v17 = [v14 entitlements];
      v18 = [v17 objectForKey:@"com.apple.developer.web-browser" ofClass:objc_opt_class()];
      v19 = [v18 BOOLValue];

      if (v19)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  if (!*(*v3 + 1048) || [*(a1 + 40) count])
  {
    v13 = 0;
    goto LABEL_37;
  }

  v56 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165_cold_3();
  }

  v13 = 0;
  v63 = 0;
  v64 = 0;
LABEL_40:
  v22 = objc_alloc_init(SFAccountPickerConfiguration);
  [(SFAccountPickerConfiguration *)v22 setMinimumNumberOfCredentialsToShowLikelyMatchesSection:10];
  [(SFAccountPickerConfiguration *)v22 setServiceNameHintStrings:v63];
  [(SFAccountPickerConfiguration *)v22 setDomainHintStrings:v64];
  if (v13)
  {
    [(SFAccountPickerConfiguration *)v22 setCurrentWebFrameIdentifierForAutoFillPasskeys:*(*v3 + 1104)];
  }

  v60 = [v67 firstObject];
  [(SFAccountPickerConfiguration *)v22 setAddPasswordSuggestedLabel:?];
  if (*(a1 + 81) == 1 && [*(*v3 + 1136) isExplicitAutoFillMode])
  {
    goto LABEL_44;
  }

  v25 = *(*v3 + 1048);
  if (v25)
  {
    v26 = [v25 safari_userVisibleString];
    v24 = [v26 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];

    v27 = MEMORY[0x1E696AEC0];
    v28 = _WBSLocalizedString();
    v29 = [v27 stringWithFormat:v28, v24];
    [(SFAccountPickerConfiguration *)v22 setPrompt:v29];

    v30 = MEMORY[0x1E696AEC0];
    v31 = _WBSLocalizedString();
    v32 = [v30 stringWithFormat:v31, v24];
    [(SFAccountPickerConfiguration *)v22 setPromptWhenPasskeysAreAvailable:v32];
  }

  else
  {
    if (![v60 length])
    {
LABEL_44:
      v23 = _WBSLocalizedString();
      [(SFAccountPickerConfiguration *)v22 setPrompt:v23];

      v24 = _WBSLocalizedString();
      [(SFAccountPickerConfiguration *)v22 setPromptWhenPasskeysAreAvailable:v24];
      goto LABEL_50;
    }

    v33 = MEMORY[0x1E696AEC0];
    v34 = _WBSLocalizedString();
    v35 = [v33 stringWithFormat:v34, v60];
    [(SFAccountPickerConfiguration *)v22 setPrompt:v35];

    v36 = MEMORY[0x1E696AEC0];
    v24 = _WBSLocalizedString();
    v31 = [v36 stringWithFormat:v24, v60];
    [(SFAccountPickerConfiguration *)v22 setPromptWhenPasskeysAreAvailable:v31];
  }

LABEL_50:
  [(SFAccountPickerConfiguration *)v22 setShouldEnableAddingNewPasswordsIfPossible:1];
  [(SFAccountPickerConfiguration *)v22 setShouldShowAutoFillPasskeys:1];
  v37 = *v3;
  v38 = v13 ^ 1;
  if (!*(*v3 + 1104))
  {
    v38 = 1;
  }

  if ((v38 & 1) != 0 || ([(SFAccountPickerConfiguration *)v22 setShouldShowPasskeysInAccountPicker:1], (v37 = *v3) != 0))
  {
    [v37 _hostAuditToken];
  }

  else
  {
    v77 = 0u;
    v78 = 0u;
  }

  *buf = v77;
  *&buf[16] = v78;
  [(SFAccountPickerConfiguration *)v22 setConnectedAppAuditToken:buf];
  v39 = [&unk_1F5023E60 containsObject:*(a1 + 48)];
  if (*(*v3 + 1048))
  {
    v40 = [*(*v3 + 1048) host];
    v41 = [*(*v3 + 1048) safari_userVisibleString];
    v42 = [v41 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];

    [(SFAccountPickerConfiguration *)v22 setAddPasswordSuggestedDomain:v42];
    v43 = *(a1 + 56);
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_207;
    v74[3] = &unk_1E8492710;
    v44 = v40;
    v75 = v44;
    v45 = v42;
    v76 = v45;
    if ([v43 safari_containsObjectPassingTest:v74])
    {
      [(SFAccountPickerConfiguration *)v22 setBundleIDForFallbackIcon:v66];
    }
  }

  else if ((v39 & 1) == 0)
  {
    [(SFAccountPickerConfiguration *)v22 setBundleIDForFallbackIcon:v66];
    if ([*(a1 + 64) length])
    {
      [(SFAccountPickerConfiguration *)v22 setAddPasswordSuggestedDomain:*(a1 + 64)];
    }
  }

  if (*(a1 + 81) == 1)
  {
    if ([*(*(a1 + 32) + 1136) autofillMode] == 1)
    {
      v46 = [*(*v3 + 1136) isExplicitAutoFillMode];
    }

    else
    {
      v46 = 1;
    }

    [(SFAccountPickerConfiguration *)v22 setIsForFillingIndividualAccountFields:v46];
    [(SFAccountPickerConfiguration *)v22 setShouldShowReceivedVerificationCodes:1];
    [(SFAccountPickerConfiguration *)v22 setWebsiteURLForReceivedVerificationCodes:*(*v3 + 1048)];
  }

  if ([objc_opt_class() _shouldRestoreStateForAutoFillForAppID:*(a1 + 48)])
  {
    [objc_opt_class() _restoreStateForAutoFillToAccountPickerConfiguration:v22 isForFillingIndividualAccountFields:{-[SFAccountPickerConfiguration isForFillingIndividualAccountFields](v22, "isForFillingIndividualAccountFields")}];
  }

  else
  {
    [objc_opt_class() _rememberStateForAutoFillWithSearchQuery:0 savedAccount:0];
  }

  [(SFAccountPickerConfiguration *)v22 setAppID:*(a1 + 48)];
  [(SFAccountPickerConfiguration *)v22 setIsConnectedAppAWebBrowser:v13];
  [(SFAccountPickerConfiguration *)v22 setSavedAccountContext:*(a1 + 72)];
  v47 = [SFAccountPickerViewController alloc];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_2_210;
  v70[3] = &unk_1E8492738;
  v48 = v22;
  v49 = *(a1 + 32);
  v71 = v48;
  v72 = v49;
  v73 = *(a1 + 64);
  v50 = [(SFAccountPickerViewController *)v47 initWithConfiguration:v48 completionHandler:v70];
  v51 = *(*v3 + 1032);
  *(*v3 + 1032) = v50;

  [*(*v3 + 1032) setModalPresentationStyle:2];
  v52 = *v3;
  v53 = [*(*v3 + 1032) presentationController];
  [v53 setDelegate:v52];

  [*(*v3 + 1032) setSystemAutoFillDelegate:?];
  v54 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165_cold_4();
  }

  v55 = *(a1 + 32);
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_212;
  v68[3] = &unk_1E8492760;
  v68[4] = v55;
  v69 = *(a1 + 48);
  [v55 _authenticateToViewOtherPasswordsWithCompletion:v68];
}

id __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_167(uint64_t a1, void *a2)
{
  v2 = [a2 site];

  return v2;
}

uint64_t __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_207(uint64_t a1, void *a2)
{
  v3 = [a2 domain];
  if ([v3 isEqualToString:*(a1 + 32)])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:*(a1 + 40)];
  }

  return v4;
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_2_210(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v35 = a3;
  if (([*(a1 + 32) isForFillingIndividualAccountFields] & 1) == 0)
  {
    v6 = [v5 firstObject];
    v7 = v6;
    if (v6)
    {
      if (v35)
      {
        v33 = v35;
      }

      else
      {
        v33 = [v6 password];
      }

      v32 = v5;
      v34 = v7;
      v9 = objc_alloc(MEMORY[0x1E69C8E10]);
      v10 = [v7 user];
      v11 = [v7 userVisibleDomain];
      v12 = [v11 safari_simplifiedSiteNameForCredentialLookup];
      v13 = [v34 creationDate];
      v14 = [v34 customTitle];
      v15 = [v34 sharedGroupName];
      v16 = *(a1 + 48);
      v17 = v16;
      if (!v16)
      {
        v17 = [*(*(a1 + 40) + 1048) host];
      }

      v18 = [v9 initWithUser:v10 password:v33 site:v12 creationDate:v13 customTitle:v14 groupName:v15 requestedHost:v17];
      if (!v16)
      {
      }

      v19 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
      v5 = v32;
      v7 = v34;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v18 user];
        if ([v31 length])
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        v21 = v20;
        v22 = [v18 password];
        if ([v22 length])
        {
          v23 = @"YES";
        }

        else
        {
          v23 = @"NO";
        }

        v24 = v23;
        v25 = [v18 site];
        if ([v25 length])
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        *buf = 138543874;
        v37 = v21;
        v38 = 2114;
        v39 = v24;
        v40 = 2114;
        v41 = v26;
        v27 = v26;
        _os_log_impl(&dword_1D4644000, v19, OS_LOG_TYPE_DEFAULT, "Sending credential with non-empty username: %{public}@, non-empty password: %{public}@, non-empty site: %{public}@", buf, 0x20u);

        v7 = v34;
      }

      v28 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [v18 user];
        objc_claimAutoreleasedReturnValue();
        [v18 site];
        objc_claimAutoreleasedReturnValue();
        __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke_cold_1();
      }

      v29 = objc_opt_class();
      v30 = [*(*(a1 + 40) + 1032) searchQuery];
      [v29 _rememberStateForAutoFillWithSearchQuery:v30 savedAccount:v7];

      [*(a1 + 40) _sendCredentialToClientAndDismiss:v18 providerBundleIdentifier:*MEMORY[0x1E69C8CC0]];
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_DEFAULT, "Not sending a credential because we didn't receive one from the password picker", buf, 2u);
      }

      [objc_opt_class() _rememberStateForAutoFillWithSearchQuery:0 savedAccount:0];
      [*(a1 + 40) _dismiss];
    }
  }
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_212(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_212_cold_1();
  }

  if (a2)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = *(*(a1 + 32) + 1032);
      v11 = 134218498;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      v15 = 2048;
      v16 = v10;
      _os_log_debug_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEBUG, "View controller %p presenting password view controller %{public}@ <%p>", &v11, 0x20u);
    }

    [*(*(a1 + 32) + 1032) setAuthenticatedContext:v5];
    [*(a1 + 32) presentViewController:*(*(a1 + 32) + 1032) animated:1 completion:0];
    objc_storeStrong(&lastUsedAppIDForAutoFill, *(a1 + 40));
  }

  else
  {
    [*(a1 + 32) _dismiss];
  }
}

uint64_t __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_214(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69C8DE0] sharedManager];
  v4 = [v3 extensionSupportsTextInsertion:v2];

  return v4;
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_2_218(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) firstObject];
  [WeakRetained _presentCredentialListForExtension:v2];
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_3_219(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) firstObject];
  [WeakRetained _presentCredentialListForExtension:v2];
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_4_228(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = +[_SFManagedFeatureObserver sharedObserver];
  [v1 _fillCredential:v2 needsAuthentication:{objc_msgSend(v3, "authenticationRequiredToAutoFill")}];
}

uint64_t __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 title];
  v6 = [v4 title];
  v7 = [v5 localizedCaseInsensitiveCompare:v6];

  return v7;
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentViewController:*(a1 + 32) animated:1 completion:0];
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69C8E18];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_10;
  v8[3] = &unk_1E84928B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v4 bestDomainAndAllApprovedDatabaseEntriesForAppID:v5 completionHandler:v8];
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_11;
  v9[3] = &unk_1E8492890;
  v13 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

- (void)_sendCredentialToClientAndDismiss:(id)dismiss providerBundleIdentifier:(id)identifier
{
  v20[4] = *MEMORY[0x1E69E9840];
  dismissCopy = dismiss;
  identifierCopy = identifier;
  applicationIdentifier = [(SFPasswordServiceViewController *)self applicationIdentifier];
  v20[0] = 0;
  v9 = [applicationIdentifier safari_bundleIdentifierFromApplicationIdentifier:v20];
  v10 = v20[0];

  if (v9)
  {
    authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
    user = [dismissCopy user];
    requestedHost = [dismissCopy requestedHost];
    [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy didFillCredentialForUsername:user forHost:requestedHost fromProviderWithBundleIdentifier:identifierCopy inAppWithBundleIdentifier:v9 externalProviderConditionalRegistrationRequester:self->_conditionalRegistrationRequester];
  }

  else
  {
    user = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(user, OS_LOG_TYPE_ERROR))
    {
      [(SFPasswordServiceViewController *)self applicationIdentifier];
      objc_claimAutoreleasedReturnValue();
      [v10 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [SFPasswordPickerServiceViewController _sendCredentialToClientAndDismiss:providerBundleIdentifier:];
    }
  }

  [(SFPasswordPickerServiceViewController *)self _hostAuditToken];
  HasEntitlement = WBSAuditTokenHasEntitlement();
  v15 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController _sendCredentialToClientAndDismiss:providerBundleIdentifier:];
  }

  if (HasEntitlement)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v16, OS_LOG_TYPE_INFO, "Dismissing password picker service view controller after sending credential directly", buf, 2u);
    }

    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy selectedCredential:dismissCopy];

    [(SFPasswordPickerServiceViewController *)self _dismiss];
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __100__SFPasswordPickerServiceViewController__sendCredentialToClientAndDismiss_providerBundleIdentifier___block_invoke;
    v18[3] = &unk_1E8490658;
    v18[4] = self;
    [MEMORY[0x1E69D9578] sendAutofillCredentialCandidate:dismissCopy completionHandler:v18];
  }
}

void __100__SFPasswordPickerServiceViewController__sendCredentialToClientAndDismiss_providerBundleIdentifier___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__SFPasswordPickerServiceViewController__sendCredentialToClientAndDismiss_providerBundleIdentifier___block_invoke_2;
  block[3] = &unk_1E8490658;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __100__SFPasswordPickerServiceViewController__sendCredentialToClientAndDismiss_providerBundleIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_INFO, "Dismissing password picker service view controller after sending credential via TextInput", v4, 2u);
  }

  return [*(a1 + 32) _dismiss];
}

- (void)setWebViewURL:(id)l
{
  lCopy = l;
  v6 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController setWebViewURL:];
  }

  scheme = [lCopy scheme];
  lowercaseString = [scheme lowercaseString];

  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{@"http", @"https", 0}];
  if ([lowercaseString length] && (objc_msgSend(v9, "containsObject:", lowercaseString) & 1) != 0)
  {
    objc_storeStrong(&self->_webViewURL, l);
  }
}

- (void)setRemoteAppID:(id)d
{
  dCopy = d;
  v5 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController setRemoteAppID:];
  }

  v6 = [dCopy copy];
  remoteAppID = self->_remoteAppID;
  self->_remoteAppID = v6;
}

- (void)setRemoteLocalizedAppName:(id)name
{
  nameCopy = name;
  v5 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController setRemoteLocalizedAppName:];
  }

  v6 = [nameCopy copy];
  remoteLocalizedAppName = self->_remoteLocalizedAppName;
  self->_remoteLocalizedAppName = v6;
}

- (void)setRemoteUnlocalizedAppName:(id)name
{
  nameCopy = name;
  v5 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController setRemoteUnlocalizedAppName:];
  }

  v6 = [nameCopy copy];
  remoteUnlocalizedAppName = self->_remoteUnlocalizedAppName;
  self->_remoteUnlocalizedAppName = v6;
}

- (void)setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:(id)domains
{
  domainsCopy = domains;
  v5 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:];
  }

  v6 = [domainsCopy copy];
  externallyVerifiedAssociatedDomains = self->_externallyVerifiedAssociatedDomains;
  self->_externallyVerifiedAssociatedDomains = v6;
}

- (void)setAuthenticationGracePeriod:(double)period
{
  v5 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController setAuthenticationGracePeriod:];
  }

  self->_authenticationGracePeriod = period;
}

- (void)setPageID:(id)d frameID:(id)iD credentialType:(id)type
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  v11 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134218754;
    selfCopy = self;
    v16 = 2112;
    v17 = dCopy;
    v18 = 2112;
    v19 = iDCopy;
    v20 = 2112;
    v21 = typeCopy;
    _os_log_debug_impl(&dword_1D4644000, v11, OS_LOG_TYPE_DEBUG, "View controller %p setPageID: %@ frameID: %@ credentialType: %@", &v14, 0x2Au);
    if (!dCopy)
    {
      goto LABEL_5;
    }
  }

  else if (!dCopy)
  {
    goto LABEL_5;
  }

  if (iDCopy)
  {
    v12 = [objc_alloc(MEMORY[0x1E69C88A0]) initWithPageID:dCopy frameID:iDCopy];
    webFrameIdentifier = self->_webFrameIdentifier;
    self->_webFrameIdentifier = v12;

    objc_storeStrong(&self->_credentialType, type);
  }

LABEL_5:
}

- (void)setSystemAutoFillDocumentTraits:(id)traits
{
  traitsCopy = traits;
  v5 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController setSystemAutoFillDocumentTraits:];
  }

  v6 = [traitsCopy copy];
  systemAutoFillDocumentTraits = self->_systemAutoFillDocumentTraits;
  self->_systemAutoFillDocumentTraits = v6;
}

- (BOOL)_isConfiguredForSystemAutoFill
{
  [(SFPasswordPickerServiceViewController *)self _hostAuditToken];
  HasEntitlement = WBSAuditTokenHasEntitlement();
  if (HasEntitlement)
  {
    LOBYTE(HasEntitlement) = self->_systemAutoFillDocumentTraits != 0;
  }

  return HasEntitlement;
}

- (void)credentialListViewController:(id)controller didFinishWithCredential:(id)credential completion:(id)completion
{
  controllerCopy = controller;
  credentialCopy = credential;
  completionCopy = completion;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __105__SFPasswordPickerServiceViewController_credentialListViewController_didFinishWithCredential_completion___block_invoke;
  v24 = &unk_1E8492908;
  v11 = completionCopy;
  v27 = v11;
  v12 = credentialCopy;
  v25 = v12;
  selfCopy = self;
  [controllerCopy dismissViewControllerAnimated:1 completion:&v21];
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x1E69C8E10]);
    user = [v12 user];
    password = [v12 password];
    date = [MEMORY[0x1E695DF00] date];
    v17 = [v13 initWithUser:user password:password site:&stru_1F4FE9E38 creationDate:date customTitle:0 groupName:0 requestedHost:{self->_hostForCredentialList, v21, v22, v23, v24}];

    extension = [controllerCopy extension];
    sf_bundleIdentifierForContainingApp = [extension sf_bundleIdentifierForContainingApp];
    [(SFPasswordPickerServiceViewController *)self _sendCredentialToClientAndDismiss:v17 providerBundleIdentifier:sf_bundleIdentifierForContainingApp];

    credentialIdentityToFill = self->_credentialIdentityToFill;
    self->_credentialIdentityToFill = 0;
  }
}

uint64_t __105__SFPasswordPickerServiceViewController_credentialListViewController_didFinishWithCredential_completion___block_invoke(void *a1)
{
  result = (*(a1[6] + 16))();
  if (!a1[4])
  {
    v3 = a1[5];

    return [v3 _dismiss];
  }

  return result;
}

- (void)credentialListViewController:(id)controller didFinishWithPasskeyAssertionCredential:(id)credential completion:(id)completion
{
  controllerCopy = controller;
  credentialCopy = credential;
  completionCopy = completion;
  authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
  applicationIdentifier = [(SFPasswordServiceViewController *)self applicationIdentifier];
  relyingParty = [credentialCopy relyingParty];
  authenticatorData = [credentialCopy authenticatorData];
  signature = [credentialCopy signature];
  userHandle = [credentialCopy userHandle];
  credentialID = [credentialCopy credentialID];
  [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy completeAssertionWithExternalPasskeyForApplicationIdentifier:applicationIdentifier relyingPartyIdentifier:relyingParty authenticatorData:authenticatorData signature:signature userHandle:userHandle credentialID:credentialID];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __121__SFPasswordPickerServiceViewController_credentialListViewController_didFinishWithPasskeyAssertionCredential_completion___block_invoke;
  v19[3] = &unk_1E84904F8;
  v17 = completionCopy;
  v19[4] = self;
  v20 = v17;
  [controllerCopy dismissViewControllerAnimated:1 completion:v19];
}

uint64_t __121__SFPasswordPickerServiceViewController_credentialListViewController_didFinishWithPasskeyAssertionCredential_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _dismiss];
}

- (void)credentialListViewController:(id)controller didFinishWithText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__SFPasswordPickerServiceViewController_credentialListViewController_didFinishWithText_completion___block_invoke;
  v14[3] = &unk_1E8492908;
  v10 = completionCopy;
  v17 = v10;
  v11 = textCopy;
  v15 = v11;
  selfCopy = self;
  [controller dismissViewControllerAnimated:1 completion:v14];
  if ([v11 length])
  {
    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy fillText:v11];
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SFPasswordPickerServiceViewController credentialListViewController:didFinishWithText:completion:];
    }
  }
}

uint64_t __99__SFPasswordPickerServiceViewController_credentialListViewController_didFinishWithText_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  result = [*(a1 + 32) length];
  if (!result)
  {
    v3 = *(a1 + 40);

    return [v3 _dismiss];
  }

  return result;
}

- (void)credentialAuthenticationViewController:(id)controller didFinishWithCredential:(id)credential error:(id)error completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  credentialCopy = credential;
  completionCopy = completion;
  externalCredentialViewController = self->_externalCredentialViewController;
  self->_externalCredentialViewController = 0;

  presentingViewController = [controllerCopy presentingViewController];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__SFPasswordPickerServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke;
  aBlock[3] = &unk_1E8492908;
  v14 = completionCopy;
  v38 = v14;
  v15 = credentialCopy;
  v36 = v15;
  selfCopy = self;
  v33 = _Block_copy(aBlock);
  [controllerCopy dismissViewControllerAnimated:1 completion:v33];
  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x1E69C8E10]);
    user = [v15 user];
    password = [v15 password];
    date = [MEMORY[0x1E695DF00] date];
    serviceIdentifier = [(SFCredentialIdentity *)self->_credentialIdentityToFill serviceIdentifier];
    v32 = [v16 initWithUser:user password:password site:&stru_1F4FE9E38 creationDate:date customTitle:0 groupName:0 requestedHost:serviceIdentifier];

    v21 = v32;
    if (presentingViewController)
    {
      authenticationRequiredToAutoFill = 0;
    }

    else
    {
      user = +[_SFManagedFeatureObserver sharedObserver];
      authenticationRequiredToAutoFill = [user authenticationRequiredToAutoFill];
    }

    [(SFPasswordPickerServiceViewController *)self _sendCredentialToClient:v32 needsAuthentication:authenticationRequiredToAutoFill];
    if (!presentingViewController)
    {
    }

    applicationIdentifier = [(SFPasswordServiceViewController *)self applicationIdentifier];
    v34 = 0;
    v31 = [applicationIdentifier safari_bundleIdentifierFromApplicationIdentifier:&v34];
    v24 = v34;

    if (v24)
    {
      user2 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
      if (os_log_type_enabled(user2, OS_LOG_TYPE_ERROR))
      {
        [v24 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165_cold_1();
      }
    }

    else
    {
      authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
      user2 = [v15 user];
      site = [(SFCredentialIdentity *)self->_credentialIdentityToFill site];
      extension = [controllerCopy extension];
      sf_bundleIdentifierForContainingApp = [extension sf_bundleIdentifierForContainingApp];
      [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy didFillCredentialForUsername:user2 forHost:site fromProviderWithBundleIdentifier:sf_bundleIdentifierForContainingApp inAppWithBundleIdentifier:v31 externalProviderConditionalRegistrationRequester:self->_conditionalRegistrationRequester];

      v21 = v32;
    }

    credentialIdentityToFill = self->_credentialIdentityToFill;
    self->_credentialIdentityToFill = 0;
  }
}

uint64_t __121__SFPasswordPickerServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke(void *a1)
{
  result = (*(a1[6] + 16))();
  if (!a1[4])
  {
    v3 = a1[5];

    return [v3 _dismiss];
  }

  return result;
}

- (void)credentialAuthenticationViewController:(id)controller didFinishWithPasskeyAssertionCredential:(id)credential error:(id)error completion:(id)completion
{
  controllerCopy = controller;
  credentialCopy = credential;
  completionCopy = completion;
  externalCredentialViewController = self->_externalCredentialViewController;
  self->_externalCredentialViewController = 0;

  authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
  applicationIdentifier = [(SFPasswordServiceViewController *)self applicationIdentifier];
  relyingParty = [credentialCopy relyingParty];
  authenticatorData = [credentialCopy authenticatorData];
  signature = [credentialCopy signature];
  userHandle = [credentialCopy userHandle];
  credentialID = [credentialCopy credentialID];
  [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy completeAssertionWithExternalPasskeyForApplicationIdentifier:applicationIdentifier relyingPartyIdentifier:relyingParty authenticatorData:authenticatorData signature:signature userHandle:userHandle credentialID:credentialID];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __137__SFPasswordPickerServiceViewController_credentialAuthenticationViewController_didFinishWithPasskeyAssertionCredential_error_completion___block_invoke;
  v21[3] = &unk_1E84904F8;
  v19 = completionCopy;
  v21[4] = self;
  v22 = v19;
  [controllerCopy dismissViewControllerAnimated:1 completion:v21];
}

uint64_t __137__SFPasswordPickerServiceViewController_credentialAuthenticationViewController_didFinishWithPasskeyAssertionCredential_error_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _dismiss];
}

- (void)accountPickerViewController:(id)controller fillUsernameForSavedAccount:(id)account
{
  controllerCopy = controller;
  accountCopy = account;
  if ([(SFPasswordPickerServiceViewController *)self _isClientEntitledToDirectlyReceiveCredentials])
  {
    v8 = objc_opt_class();
    searchQuery = [controllerCopy searchQuery];
    [v8 _rememberStateForAutoFillWithSearchQuery:searchQuery savedAccount:accountCopy];

    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    user = [accountCopy user];
    [_remoteViewControllerProxy fillUsername:user];

    [(SFPasswordPickerServiceViewController *)self _dismiss];
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SFPasswordPickerServiceViewController accountPickerViewController:fillUsernameForSavedAccount:];
    }
  }
}

- (void)accountPickerViewController:(id)controller fillPasswordForSavedAccount:(id)account
{
  controllerCopy = controller;
  accountCopy = account;
  if ([(SFPasswordPickerServiceViewController *)self _isClientEntitledToDirectlyReceiveCredentials])
  {
    v8 = objc_opt_class();
    searchQuery = [controllerCopy searchQuery];
    [v8 _rememberStateForAutoFillWithSearchQuery:searchQuery savedAccount:accountCopy];

    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    password = [accountCopy password];
    [_remoteViewControllerProxy fillPassword:password];

    [(SFPasswordPickerServiceViewController *)self _dismiss];
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SFPasswordPickerServiceViewController accountPickerViewController:fillUsernameForSavedAccount:];
    }
  }
}

- (void)accountPickerViewController:(id)controller fillVerificationCodeForSavedAccount:(id)account
{
  controllerCopy = controller;
  accountCopy = account;
  if ([(SFPasswordPickerServiceViewController *)self _isClientEntitledToDirectlyReceiveCredentials])
  {
    v8 = objc_opt_class();
    searchQuery = [controllerCopy searchQuery];
    [v8 _rememberStateForAutoFillWithSearchQuery:searchQuery savedAccount:accountCopy];

    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    currentOneTimeCode = [accountCopy currentOneTimeCode];
    [_remoteViewControllerProxy fillVerificationCode:currentOneTimeCode];

    [(SFPasswordPickerServiceViewController *)self _dismiss];
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SFPasswordPickerServiceViewController accountPickerViewController:fillUsernameForSavedAccount:];
    }
  }
}

- (void)accountPickerViewController:(id)controller fillVerificationCode:(id)code
{
  codeCopy = code;
  if ([(SFPasswordPickerServiceViewController *)self _isClientEntitledToDirectlyReceiveCredentials])
  {
    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    code = [codeCopy code];
    [_remoteViewControllerProxy fillVerificationCode:code];

    [(SFPasswordPickerServiceViewController *)self _dismiss];
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SFPasswordPickerServiceViewController accountPickerViewController:fillUsernameForSavedAccount:];
    }
  }
}

- (void)accountPickerViewController:(id)controller fillText:(id)text
{
  textCopy = text;
  if ([(SFPasswordPickerServiceViewController *)self _isClientEntitledToDirectlyReceiveCredentials])
  {
    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy fillText:textCopy];

    [(SFPasswordPickerServiceViewController *)self _dismiss];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SFPasswordPickerServiceViewController accountPickerViewController:fillUsernameForSavedAccount:];
    }
  }
}

- (void)accountPickerViewController:(id)controller fillText:(id)text forSavedAccount:(id)account
{
  controllerCopy = controller;
  textCopy = text;
  accountCopy = account;
  if ([(SFPasswordPickerServiceViewController *)self _isClientEntitledToDirectlyReceiveCredentials])
  {
    v11 = objc_opt_class();
    searchQuery = [controllerCopy searchQuery];
    [v11 _rememberStateForAutoFillWithSearchQuery:searchQuery savedAccount:accountCopy];

    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy fillText:textCopy];

    [(SFPasswordPickerServiceViewController *)self _dismiss];
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SFPasswordPickerServiceViewController accountPickerViewController:fillUsernameForSavedAccount:];
    }
  }
}

+ (BOOL)_shouldRestoreStateForAutoFillForAppID:(id)d
{
  LODWORD(v3) = [d isEqualToString:lastUsedAppIDForAutoFill];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF00] now];
    [v4 timeIntervalSinceReferenceDate];
    v6 = v5 - *&timeIntervalSinceReferenceDateOfLastAutoFill;

    if (v6 <= 120.0)
    {
      v3 = [lastSearchQueryForAutoFill length];
      LOBYTE(v3) = (v3 | lastUsedSavedAccountForAutoFill) != 0;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

+ (void)_restoreStateForAutoFillToAccountPickerConfiguration:(id)configuration isForFillingIndividualAccountFields:(BOOL)fields
{
  fieldsCopy = fields;
  configurationCopy = configuration;
  [configurationCopy setInitialSearchQuery:lastSearchQueryForAutoFill];
  if (fieldsCopy)
  {
    [configurationCopy setSavedAccountToInitiallyShowDetailsFor:lastUsedSavedAccountForAutoFill];
  }

  [self _rememberStateForAutoFillWithSearchQuery:0 savedAccount:0];
}

+ (void)_rememberStateForAutoFillWithSearchQuery:(id)query savedAccount:(id)account
{
  queryCopy = query;
  accountCopy = account;
  objc_storeStrong(&lastSearchQueryForAutoFill, query);
  objc_storeStrong(&lastUsedSavedAccountForAutoFill, account);
  v7 = [MEMORY[0x1E695DF00] now];
  [v7 timeIntervalSinceReferenceDate];
  timeIntervalSinceReferenceDateOfLastAutoFill = v8;
}

void __89__SFPasswordPickerServiceViewController__authenticateToViewOtherPasswordsWithCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_7_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, v3, v4, "Failed to get authentication for other passwords: %{public}@", v5);
}

void __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_1(v2, v3, v4, 5.8081e-34);
  _os_log_debug_impl(&dword_1D4644000, v6, OS_LOG_TYPE_DEBUG, "Sending credential with username: %{private}@, site: %{private}@", v5, 0x16u);
}

void __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke_126_cold_1()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_7_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, v3, v4, "Failed to get authentication to fill password with error: %{public}@", v5);
}

- (void)_authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Failed to open app with bundle ID %@", &v3, 0xCu);
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165_cold_1()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_7_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, v3, v4, "Failed to get application bundle identifier with error: %{public}@", v5);
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165_cold_3()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_sendCredentialToClientAndDismiss:providerBundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  *v2 = 138543618;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2114;
  *(v2 + 14) = v4;
  _os_log_error_impl(&dword_1D4644000, v6, OS_LOG_TYPE_ERROR, "Could not determine bundle identifier for app identifier %{public}@: %{public}@", v5, 0x16u);
}

- (void)_sendCredentialToClientAndDismiss:providerBundleIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)setWebViewURL:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setRemoteAppID:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setRemoteLocalizedAppName:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setRemoteUnlocalizedAppName:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setSystemAutoFillDocumentTraits:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end