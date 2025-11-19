@interface SFExternalPasswordCredentialServiceViewController
+ (id)_exportedInterface;
- (SFExternalPasswordCredentialServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_authenticationContext;
- (void)_autoFillWithCredentialIdentity:(id)a3 pageID:(id)a4 frameID:(id)a5;
- (void)_dismiss;
- (void)_finishRequestToAutoFillCredential:(id)a3 extensionShowedUI:(BOOL)a4 error:(id)a5 completion:(id)a6;
- (void)_finishRequestToReturnCredential:(id)a3 extensionShowedUI:(BOOL)a4 error:(id)a5 completion:(id)a6;
- (void)credentialAuthenticationViewController:(id)a3 didFinishWithCredential:(id)a4 error:(id)a5 completion:(id)a6;
- (void)credentialAuthenticationViewController:(id)a3 didFinishWithOneTimeCodeCredential:(id)a4 error:(id)a5 completion:(id)a6;
- (void)credentialAuthenticationViewController:(id)a3 didFinishWithPasskeyAssertionCredential:(id)a4 error:(id)a5 completion:(id)a6;
- (void)getCredentialForCredentialIdentity:(id)a3 completion:(id)a4;
- (void)presentUIForPasswordCredentialAuthenticationViewController:(id)a3;
@end

@implementation SFExternalPasswordCredentialServiceViewController

- (void)_dismiss
{
  v3 = [MEMORY[0x1E69C8DE0] sharedManager];
  [v3 removeObserver:self];

  v4 = [(SFExternalPasswordCredentialServiceViewController *)self _remoteViewControllerProxy];
  [v4 willDismissServiceViewController];
}

- (id)_authenticationContext
{
  authenticationContext = self->_authenticationContext;
  if (!authenticationContext)
  {
    v4 = objc_alloc_init(_SFAuthenticationContext);
    v5 = self->_authenticationContext;
    self->_authenticationContext = v4;

    [(_SFAuthenticationContext *)self->_authenticationContext setDelegate:self];
    authenticationContext = self->_authenticationContext;
  }

  v6 = authenticationContext;

  return v6;
}

+ (id)_exportedInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F50A9B00];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_autoFillWithCredentialIdentity_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v3 forSelector:sel_getCredentialForCredentialIdentity_completion_ argumentIndex:0 ofReply:0];
  v4 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v4 forSelector:sel_getCredentialForCredentialIdentity_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

- (SFExternalPasswordCredentialServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v12.receiver = self;
  v12.super_class = SFExternalPasswordCredentialServiceViewController;
  v4 = [(SFExternalPasswordCredentialServiceViewController *)&v12 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69C8818]);
    authenticationServicesAgentProxy = v4->_authenticationServicesAgentProxy;
    v4->_authenticationServicesAgentProxy = v5;

    v7 = [MEMORY[0x1E69C8DE0] sharedManager];
    [v7 addObserver:v4];

    v8 = objc_alloc_init(MEMORY[0x1E695A970]);
    conditionalRegistrationRequester = v4->_conditionalRegistrationRequester;
    v4->_conditionalRegistrationRequester = v8;

    v10 = v4;
  }

  return v4;
}

- (void)_autoFillWithCredentialIdentity:(id)a3 pageID:(id)a4 frameID:(id)a5
{
  v6 = a3;
  v7 = [(SFPasswordServiceViewController *)self applicationIdentifier];
  v45 = 0;
  v8 = [v7 safari_bundleIdentifierFromApplicationIdentifier:&v45];
  v9 = v45;
  clientBundleID = self->_clientBundleID;
  self->_clientBundleID = v8;

  if (!self->_clientBundleID && (v11 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(), os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
  {
    [SFExternalPasswordCredentialServiceViewController _autoFillWithCredentialIdentity:v11 pageID:v9 frameID:?];
    if (v6)
    {
LABEL_4:
      v12 = [v6 owningExtensionState];
      v13 = [v12 providerBundleID];

      v14 = [MEMORY[0x1E69C8DE0] sharedManager];
      v15 = [v14 enabledExtensionWithContainingAppBundleID:v13];

      if (!v15)
      {
        v21 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [SFExternalPasswordCredentialServiceViewController _autoFillWithCredentialIdentity:pageID:frameID:];
        }

        [(SFExternalPasswordCredentialServiceViewController *)self _dismiss];
        goto LABEL_19;
      }

      self->_completionAction = 0;
      v16 = [v6 type];
      switch(v16)
      {
        case 4:
          v27 = objc_alloc(MEMORY[0x1E695A978]);
          v28 = objc_alloc(MEMORY[0x1E695A930]);
          v29 = [objc_alloc(MEMORY[0x1E695A928]) _initWithFoundationCredentialIdentity:v6];
          v30 = [v28 initWithCredentialIdentity:v29];
          v31 = [v27 initWithExtension:v15 oneTimeCodeCredentialRequest:v30];
          extensionController = self->_extensionController;
          self->_extensionController = v31;

          break;
        case 2:
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __100__SFExternalPasswordCredentialServiceViewController__autoFillWithCredentialIdentity_pageID_frameID___block_invoke;
          aBlock[3] = &unk_1E84934C0;
          aBlock[4] = self;
          v44 = v15;
          v42 = _Block_copy(aBlock);
          v22 = v6;
          [(SFExternalPasswordCredentialServiceViewController *)self _hostAuditToken];
          v23 = WBSApplicationIdentifierFromAuditToken();
          authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
          v25 = [v22 serviceIdentifier];
          v26 = [v22 credentialID];

          [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy getExternalPasskeyRequestForApplicationIdentifier:v23 relyingPartyIdentifier:v25 credentialID:v26 completionHandler:v42];
          goto LABEL_15;
        case 1:
          v17 = objc_alloc(MEMORY[0x1E695A978]);
          v18 = [objc_alloc(MEMORY[0x1E695A940]) initWithFoundationCredentialIdentity:v6];
          v19 = [v17 initWithExtension:v15 credentialIdentity:v18];
          v20 = self->_extensionController;
          self->_extensionController = v19;

          break;
        default:
          goto LABEL_15;
      }

      [(_ASCredentialAuthenticationViewController *)self->_extensionController setDelegate:self];
LABEL_15:
      v33 = [v6 serviceIdentifierType];
      if (v33)
      {
        if (v33 == 1)
        {
          v34 = MEMORY[0x1E695DFF8];
          v35 = [v6 serviceIdentifier];
          v36 = [v34 URLWithString:v35];
          v37 = [v36 host];
          hostForLastAutoFill = self->_hostForLastAutoFill;
          self->_hostForLastAutoFill = v37;
        }
      }

      else
      {
        v39 = [v6 serviceIdentifier];
        v40 = self->_hostForLastAutoFill;
        self->_hostForLastAutoFill = v39;
      }

LABEL_19:

      goto LABEL_24;
    }
  }

  else if (v6)
  {
    goto LABEL_4;
  }

  v41 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    [SFExternalPasswordCredentialServiceViewController _autoFillWithCredentialIdentity:pageID:frameID:];
  }

  [(SFExternalPasswordCredentialServiceViewController *)self _dismiss];
LABEL_24:
}

void __100__SFExternalPasswordCredentialServiceViewController__autoFillWithCredentialIdentity_pageID_frameID___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [objc_alloc(MEMORY[0x1E695A978]) initWithExtension:*(a1 + 40) passkeyAssertionRequest:v6];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1008);
    *(v4 + 1008) = v3;

    [*(*(a1 + 32) + 1008) setDelegate:?];
  }

  else
  {
    [*(a1 + 32) _dismiss];
  }
}

- (void)_finishRequestToAutoFillCredential:(id)a3 extensionShowedUI:(BOOL)a4 error:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __123__SFExternalPasswordCredentialServiceViewController__finishRequestToAutoFillCredential_extensionShowedUI_error_completion___block_invoke;
  aBlock[3] = &unk_1E8495628;
  v11 = v10;
  v21 = v11;
  v12 = v9;
  v20 = v12;
  v13 = _Block_copy(aBlock);
  if (a4 || (+[_SFManagedFeatureObserver sharedObserver](_SFManagedFeatureObserver, "sharedObserver"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 authenticationRequiredToAutoFill], v14, (v15 & 1) == 0))
  {
    v13[2](v13, 1);
  }

  else
  {
    v16 = [(SFExternalPasswordCredentialServiceViewController *)self _authenticationContext];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __123__SFExternalPasswordCredentialServiceViewController__finishRequestToAutoFillCredential_extensionShowedUI_error_completion___block_invoke_2;
    v17[3] = &unk_1E8491E88;
    v18 = v13;
    [v16 authenticateForClient:self userInitiated:1 completion:v17];
  }
}

void __123__SFExternalPasswordCredentialServiceViewController__finishRequestToAutoFillCredential_extensionShowedUI_error_completion___block_invoke(uint64_t a1, char a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 user];
      if ([v6 length])
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v8 = v7;
      v9 = [*(a1 + 32) password];
      if ([v9 length])
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = v10;
      *buf = 138543618;
      v19 = v8;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_DEFAULT, "Sending credential with non-empty username: %{public}@, non-empty password: %{public}@", buf, 0x16u);
    }

    v12 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __123__SFExternalPasswordCredentialServiceViewController__finishRequestToAutoFillCredential_extensionShowedUI_error_completion___block_invoke_cold_1(a1, v12);
    }

    v13 = MEMORY[0x1E69D9578];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __123__SFExternalPasswordCredentialServiceViewController__finishRequestToAutoFillCredential_extensionShowedUI_error_completion___block_invoke_68;
    v16[3] = &unk_1E84909E8;
    v14 = *(a1 + 32);
    v17 = *(a1 + 40);
    [v13 sendAutofillCredentialCandidate:v14 completionHandler:v16];
  }

  else
  {
    v15 = *(*(a1 + 40) + 16);

    v15();
  }
}

- (void)getCredentialForCredentialIdentity:(id)a3 completion:(id)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(SFExternalPasswordCredentialServiceViewController *)self _hostAuditToken];
    if (WBSAuditTokenHasEntitlement())
    {
      v8 = [v6 owningExtensionState];
      v9 = [v8 providerBundleID];

      v10 = [MEMORY[0x1E69C8DE0] sharedManager];
      v11 = [v10 enabledExtensionWithContainingAppBundleID:v9];

      if (v11)
      {
        v12 = _Block_copy(v7);
        getCredentialCompletion = self->_getCredentialCompletion;
        self->_getCredentialCompletion = v12;

        self->_completionAction = 1;
        v14 = objc_alloc(MEMORY[0x1E695A978]);
        v15 = [objc_alloc(MEMORY[0x1E695A940]) initWithFoundationCredentialIdentity:v6];
        v16 = [v14 initWithExtension:v11 credentialIdentity:v15];
        extensionController = self->_extensionController;
        self->_extensionController = v16;

        [(_ASCredentialAuthenticationViewController *)self->_extensionController setDelegate:self];
      }

      else
      {
        v23 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [SFExternalPasswordCredentialServiceViewController _autoFillWithCredentialIdentity:pageID:frameID:];
        }

        v24 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E695A8F0];
        v28 = *MEMORY[0x1E696A588];
        v29 = @"Primary credential provider extension was not found";
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v27 = [v24 errorWithDomain:v25 code:0 userInfo:v26];
        (*(v7 + 2))(v7, 0, 0, v27);

        [(SFExternalPasswordCredentialServiceViewController *)self _dismiss];
      }
    }

    else
    {
      v18 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SFExternalPasswordCredentialServiceViewController getCredentialForCredentialIdentity:completion:];
      }

      v19 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A250];
      v30 = *MEMORY[0x1E696A588];
      v31[0] = @"Calling process is not entitled";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v22 = [v19 errorWithDomain:v20 code:4099 userInfo:v21];
      (*(v7 + 2))(v7, 0, 0, v22);

      [(SFExternalPasswordCredentialServiceViewController *)self _dismiss];
    }
  }
}

- (void)_finishRequestToReturnCredential:(id)a3 extensionShowedUI:(BOOL)a4 error:(id)a5 completion:(id)a6
{
  getCredentialCompletion = self->_getCredentialCompletion;
  if (getCredentialCompletion)
  {
    v9 = a4;
    v11 = getCredentialCompletion[2];
    v12 = a6;
    v11(getCredentialCompletion, a3, !v9, a5);
  }

  else
  {
    v13 = a6;
    v14 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SFExternalPasswordCredentialServiceViewController _finishRequestToReturnCredential:extensionShowedUI:error:completion:];
    }
  }

  (*(a6 + 2))(a6);
}

- (void)presentUIForPasswordCredentialAuthenticationViewController:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __112__SFExternalPasswordCredentialServiceViewController_presentUIForPasswordCredentialAuthenticationViewController___block_invoke;
  v3[3] = &unk_1E848F810;
  v3[4] = self;
  [(SFExternalPasswordCredentialServiceViewController *)self presentViewController:a3 animated:1 completion:v3];
}

void __112__SFExternalPasswordCredentialServiceViewController_presentUIForPasswordCredentialAuthenticationViewController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 presentExternalPasswordCredentialRemoteViewController];
}

- (void)credentialAuthenticationViewController:(id)a3 didFinishWithCredential:(id)a4 error:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 presentingViewController];

  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke;
  v45[3] = &unk_1E8490798;
  v16 = v13;
  v47 = v16;
  v17 = v15;
  v46 = v17;
  v34 = v10;
  [v10 dismissViewControllerAnimated:1 completion:v45];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_2;
  aBlock[3] = &unk_1E848F548;
  v18 = v17;
  v43 = v18;
  v44 = self;
  v33 = _Block_copy(aBlock);
  if (v11)
  {
    v19 = objc_alloc(MEMORY[0x1E69C8E10]);
    [v11 user];
    v20 = v18;
    v22 = v21 = v12;
    v23 = [v11 password];
    [MEMORY[0x1E695DF00] date];
    v25 = v24 = v16;
    v26 = [v19 initWithUser:v22 password:v23 site:&stru_1F4FE9E38 creationDate:v25 customTitle:0 groupName:0 requestedHost:0];

    v16 = v24;
    v12 = v21;
    v18 = v20;
  }

  else
  {
    v26 = 0;
  }

  completionAction = self->_completionAction;
  if (completionAction == 1)
  {
    v31 = v14 != 0;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_88;
    v35[3] = &unk_1E84909E8;
    v30 = v33;
    v36 = v33;
    [(SFExternalPasswordCredentialServiceViewController *)self _finishRequestToReturnCredential:v26 extensionShowedUI:v31 error:v12 completion:v35];

LABEL_12:
    v29 = v34;
    goto LABEL_13;
  }

  if (completionAction)
  {
LABEL_11:
    v30 = v33;
    v33[2](v33);
    goto LABEL_12;
  }

  if (!v26)
  {
    v32 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v32, OS_LOG_TYPE_DEFAULT, "Did not receive any external password credential", buf, 2u);
    }

    goto LABEL_11;
  }

  v28 = v14 != 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_86;
  v37[3] = &unk_1E8495650;
  v37[4] = self;
  v38 = v11;
  v29 = v34;
  v39 = v34;
  v30 = v33;
  v40 = v33;
  [(SFExternalPasswordCredentialServiceViewController *)self _finishRequestToAutoFillCredential:v26 extensionShowedUI:v28 error:v12 completion:v37];

LABEL_13:
}

void __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_3;
  block[3] = &unk_1E848F810;
  v1 = *(a1 + 32);
  block[4] = *(a1 + 40);
  dispatch_group_notify(v1, MEMORY[0x1E69E96A0], block);
}

void __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_86(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (*(v3 + 1056))
    {
      v4 = *(v3 + 1032);
      v5 = [*(a1 + 40) user];
      v6 = *(*(a1 + 32) + 1048);
      v7 = [*(a1 + 48) extension];
      v8 = [v7 sf_bundleIdentifierForContainingApp];
      [v4 didFillCredentialForUsername:v5 forHost:v6 fromProviderWithBundleIdentifier:v8 inAppWithBundleIdentifier:*(*(a1 + 32) + 1056) externalProviderConditionalRegistrationRequester:*(*(a1 + 32) + 1040)];
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_2_87;
  block[3] = &unk_1E84909E8;
  v10 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_2_87(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_INFO, "Dismissing external password credential service view controller after sending credential", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_88(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_2_89;
  block[3] = &unk_1E84909E8;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_2_89(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_INFO, "Dismissing external password credential service view controller after returning credential", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)credentialAuthenticationViewController:(id)a3 didFinishWithPasskeyAssertionCredential:(id)a4 error:(id)a5 completion:(id)a6
{
  v20 = a6;
  extensionController = self->_extensionController;
  self->_extensionController = 0;
  v10 = a4;
  v11 = a3;

  authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
  [(SFExternalPasswordCredentialServiceViewController *)self _hostAuditToken];
  v13 = WBSApplicationIdentifierFromAuditToken();
  v14 = [v10 relyingParty];
  v15 = [v10 authenticatorData];
  v16 = [v10 signature];
  v17 = [v10 userHandle];
  v18 = [v10 credentialID];

  [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy completeAssertionWithExternalPasskeyForApplicationIdentifier:v13 relyingPartyIdentifier:v14 authenticatorData:v15 signature:v16 userHandle:v17 credentialID:v18];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __149__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithPasskeyAssertionCredential_error_completion___block_invoke;
  v21[3] = &unk_1E8490798;
  v21[4] = self;
  v22 = v20;
  v19 = v20;
  [v11 dismissViewControllerAnimated:1 completion:v21];
}

uint64_t __149__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithPasskeyAssertionCredential_error_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _dismiss];
}

- (void)credentialAuthenticationViewController:(id)a3 didFinishWithOneTimeCodeCredential:(id)a4 error:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke;
  v29[3] = &unk_1E8490798;
  v15 = v12;
  v31 = v15;
  v16 = v14;
  v30 = v16;
  [v13 dismissViewControllerAnimated:1 completion:v29];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke_2;
  aBlock[3] = &unk_1E848F548;
  v17 = v16;
  v27 = v17;
  v28 = self;
  v18 = _Block_copy(aBlock);
  if (v10 && (v19 = objc_alloc(MEMORY[0x1E69C8E10]), [v10 code], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "initWithOneTimeCode:", v20), v20, v21))
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke_90;
    v23[3] = &unk_1E848FA50;
    v24 = v18;
    [(SFExternalPasswordCredentialServiceViewController *)self _finishRequestToAutoFillCredential:v21 extensionShowedUI:1 error:v11 completion:v23];
  }

  else
  {
    v22 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v22, OS_LOG_TYPE_DEFAULT, "Did not receive any external one time code credential", buf, 2u);
    }

    v18[2](v18);
  }
}

void __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke_3;
  block[3] = &unk_1E848F810;
  v1 = *(a1 + 32);
  block[4] = *(a1 + 40);
  dispatch_group_notify(v1, MEMORY[0x1E69E96A0], block);
}

void __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke_90(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke_2_91;
  block[3] = &unk_1E84909E8;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke_2_91(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_INFO, "Dismissing external one time code credential service view controller after sending credential", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_autoFillWithCredentialIdentity:(void *)a1 pageID:(void *)a2 frameID:.cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingError];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Error getting bundle identifier from app identifier: %{public}@", &v5, 0xCu);
}

void __123__SFExternalPasswordCredentialServiceViewController__finishRequestToAutoFillCredential_extensionShowedUI_error_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 user];
  v5 = 138477827;
  v6 = v4;
  _os_log_debug_impl(&dword_1D4644000, v3, OS_LOG_TYPE_DEBUG, "Sending credential with username: %{private}@", &v5, 0xCu);
}

@end