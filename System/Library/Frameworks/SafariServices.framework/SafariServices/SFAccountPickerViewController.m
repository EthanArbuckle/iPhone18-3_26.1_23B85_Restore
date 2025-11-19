@interface SFAccountPickerViewController
- (BOOL)_usePMUI;
- (LAContext)authenticatedContext;
- (NSString)searchQuery;
- (SFAccountPickerViewController)initWithConfiguration:(id)a3 completionHandler:(id)a4;
- (SFAccountPickerViewControllerSystemAutoFillDelegate)systemAutoFillDelegate;
- (void)_callCompletionHandlerIfNeeded:(id)a3 passwordToFill:(id)a4;
- (void)_dismissWithAnimation:(BOOL)a3 accounts:(id)a4 passwordToFill:(id)a5;
- (void)_viewControllerDismissalTransitionDidEnd:(id)a3;
- (void)accountPickerTableViewController:(id)a3 fillPasswordForSavedAccount:(id)a4;
- (void)accountPickerTableViewController:(id)a3 fillUsernameForSavedAccount:(id)a4;
- (void)accountPickerTableViewController:(id)a3 fillVerificationCode:(id)a4;
- (void)accountPickerTableViewController:(id)a3 fillVerificationCodeForSavedAccount:(id)a4;
- (void)buildMenuWithBuilder:(id)a3;
- (void)setAuthenticatedContext:(id)a3;
- (void)setSearchQuery:(id)a3;
@end

@implementation SFAccountPickerViewController

- (BOOL)_usePMUI
{
  v2 = [MEMORY[0x1E695E000] pm_defaults];
  v3 = [v2 safari_BOOLForKey:*MEMORY[0x1E69C8D98] defaultValue:1];

  return v3;
}

- (SFAccountPickerViewController)initWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v68.receiver = self;
  v68.super_class = SFAccountPickerViewController;
  v9 = [(SFAccountPickerViewController *)&v68 initWithNibName:0 bundle:0];
  if (v9)
  {
    objc_initWeak(&location, v9);
    objc_storeStrong(&v9->_configuration, a3);
    v55 = v8;
    v10 = _Block_copy(v8);
    completionHandler = v9->_completionHandler;
    v9->_completionHandler = v10;

    if ([(SFAccountPickerViewController *)v9 _usePMUI])
    {
      v41 = [v7 isForFillingIndividualAccountFields];
      v12 = [v7 shouldShowAutoFillPasskeys];
      v13 = 3;
      if (!v12)
      {
        v13 = 1;
      }

      v40 = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __73__SFAccountPickerViewController_initWithConfiguration_completionHandler___block_invoke;
      aBlock[3] = &unk_1E8495B18;
      v14 = v9;
      v66 = v14;
      v52 = _Block_copy(aBlock);
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __73__SFAccountPickerViewController_initWithConfiguration_completionHandler___block_invoke_2;
      v63[3] = &unk_1E8495B40;
      objc_copyWeak(&v64, &location);
      v51 = _Block_copy(v63);
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __73__SFAccountPickerViewController_initWithConfiguration_completionHandler___block_invoke_3;
      v61[3] = &unk_1E8495B68;
      v15 = v14;
      v62 = v15;
      v50 = _Block_copy(v61);
      v39 = objc_alloc(MEMORY[0x1E69BC7C0]);
      v53 = [v7 appID];
      v49 = [v7 prompt];
      v48 = [v7 promptWhenPasskeysAreAvailable];
      v47 = [v7 serviceNameHintStrings];
      v46 = [v7 domainHintStrings];
      v45 = [MEMORY[0x1E69C8A38] sharedStore];
      v54 = +[_SFFormDataController sharedController];
      v44 = [v54 autoFillQuirksManager];
      v38 = [v7 shouldShowAutoFillPasskeys];
      v43 = [v7 currentWebFrameIdentifierForAutoFillPasskeys];
      if (v7)
      {
        [v7 connectedAppAuditToken];
      }

      else
      {
        memset(v60, 0, sizeof(v60));
      }

      v37 = [v7 isConnectedAppAWebBrowser];
      v42 = [v7 initialSearchQuery];
      v18 = [v7 savedAccountToInitiallyShowDetailsFor];
      v19 = [v7 shouldAllowAddingNewPasswords];
      v20 = [v7 addPasswordSuggestedDomain];
      v21 = [v7 addPasswordSuggestedLabel];
      v22 = [v7 bundleIDForFallbackIcon];
      v23 = [v7 savedAccountContext];
      v24 = [v7 savedAccountForHistorySection];
      LOBYTE(v36) = v19;
      LOBYTE(v35) = v37;
      LOBYTE(v34) = v38;
      LOBYTE(v33) = 1;
      v25 = [v39 initWithPersona:v41 appID:v53 credentialTypes:v40 promptString:v49 promptStringWhenPasskeysAreAvailable:v48 serviceNameHintStrings:v47 domainNameHintStrings:v46 bypassLockoutPolicy:v33 savedAccountStore:v45 autoFillQuirksManager:v44 shouldShowAutoFillPasskeys:v34 currentWebFrameIdentifierForAutoFillPasskeys:v43 connectedAppAuditToken:v60 isConnectedAppAWebBrowser:v35 initialSearchQuery:v42 savedAccountToInitiallyShowDetailsFor:v18 shouldAllowAddingNewPasswords:v36 suggestedDomainForNewAccount:v20 localizedHostAppNameForNewAccount:v21 bundleIDForFallbackIconForNewAccount:v22 authenticatedContext:0 savedAccountContext:v23 savedAccountForHistorySection:v24 didSelectHistoryItem:v50 didSelectAccountHandler:v52 didSelectTextToInsertHandler:v51];
      autoFillPocketViewController = v15->_autoFillPocketViewController;
      v15->_autoFillPocketViewController = v25;

      [(SFAccountPickerViewController *)v15 pushViewController:v15->_autoFillPocketViewController animated:0];
      [(SFAccountPickerViewController *)v15 setNavigationBarHidden:1];

      objc_destroyWeak(&v64);
    }

    else
    {
      v16 = [[_SFAccountPickerTableViewController alloc] initWithConfiguration:v7];
      accountPickerTableViewController = v9->_accountPickerTableViewController;
      v9->_accountPickerTableViewController = v16;

      [(_SFAccountPickerTableViewController *)v9->_accountPickerTableViewController setDelegate:v9];
      [(SFAccountPickerViewController *)v9 pushViewController:v9->_accountPickerTableViewController animated:0];
    }

    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __73__SFAccountPickerViewController_initWithConfiguration_completionHandler___block_invoke_4;
    v58[3] = &unk_1E848F8F0;
    objc_copyWeak(&v59, &location);
    [(SFAccountPickerViewController *)v9 _as_setApplicationBackgroundBlock:v58];
    v27 = MEMORY[0x1E695A988];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __73__SFAccountPickerViewController_initWithConfiguration_completionHandler___block_invoke_5;
    v56[3] = &unk_1E848F8F0;
    objc_copyWeak(&v57, &location);
    v28 = [v27 callObserverWithBlock:v56];
    callObserver = v9->_callObserver;
    v9->_callObserver = v28;

    v30 = [MEMORY[0x1E696AD88] defaultCenter];
    [v30 addObserver:v9 selector:sel__viewControllerDismissalTransitionDidEnd_ name:*MEMORY[0x1E69DE2C8] object:0];

    v31 = v9;
    objc_destroyWeak(&v57);
    objc_destroyWeak(&v59);
    objc_destroyWeak(&location);
    v8 = v55;
  }

  return v9;
}

void __73__SFAccountPickerViewController_initWithConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (a2)
  {
    v6 = a2;
    v3 = MEMORY[0x1E695DEC8];
    v4 = a2;
    v5 = [v3 arrayWithObjects:&v6 count:1];
    [v2 _dismissWithAnimation:1 accounts:v5 passwordToFill:{0, v6, v7}];
  }

  else
  {
    v5 = 0;
    [v2 _dismissWithAnimation:1 accounts:0 passwordToFill:0];
  }
}

void __73__SFAccountPickerViewController_initWithConfiguration_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained systemAutoFillDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 accountPickerViewController:v7 fillText:v9 forSavedAccount:v5];
    }
  }
}

void __73__SFAccountPickerViewController_initWithConfiguration_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (a2)
  {
    v9 = a2;
    v5 = MEMORY[0x1E695DEC8];
    v6 = a3;
    v7 = a2;
    v8 = [v5 arrayWithObjects:&v9 count:1];
    [v4 _dismissWithAnimation:1 accounts:v8 passwordToFill:{v6, v9, v10}];
  }

  else
  {
    v7 = a3;
    v8 = 0;
    [v4 _dismissWithAnimation:1 accounts:0 passwordToFill:v7];
  }
}

void __73__SFAccountPickerViewController_initWithConfiguration_completionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
}

void __73__SFAccountPickerViewController_initWithConfiguration_completionHandler___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
}

- (void)_callCompletionHandlerIfNeeded:(id)a3 passwordToFill:(id)a4
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, a3, a4);
    v6 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (void)_viewControllerDismissalTransitionDidEnd:(id)a3
{
  v4 = a3;
  if (!self->_isDismissingSelf)
  {
    v6 = v4;
    v5 = [(SFAccountPickerViewController *)self _sf_isPresentationControllerDismissalTransitionDidEndNotification:v4];
    v4 = v6;
    if (v5)
    {
      [(SFAccountPickerViewController *)self _callCompletionHandlerIfNeeded:0 passwordToFill:0];
      v4 = v6;
    }
  }
}

- (void)_dismissWithAnimation:(BOOL)a3 accounts:(id)a4 passwordToFill:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  self->_isDismissingSelf = 1;
  v10 = [(SFAccountPickerViewController *)self presentingViewController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__SFAccountPickerViewController__dismissWithAnimation_accounts_passwordToFill___block_invoke;
  v13[3] = &unk_1E848F6B0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [v10 dismissViewControllerAnimated:v6 completion:v13];
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFAccountPickerViewController;
  v3 = a3;
  [(SFAccountPickerViewController *)&v4 buildMenuWithBuilder:v3];
  [v3 replaceChildrenOfMenuForIdentifier:*MEMORY[0x1E69DE0C8] fromChildrenBlock:{&__block_literal_global_62, v4.receiver, v4.super_class}];
}

BOOL __54__SFAccountPickerViewController_buildMenuWithBuilder___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = (objc_opt_respondsToSelector() & 1) != 0 && [v2 action] == sel_captureTextFromCamera_;

  return v3;
}

- (void)accountPickerTableViewController:(id)a3 fillUsernameForSavedAccount:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_systemAutoFillDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerViewController:self fillUsernameForSavedAccount:v6];
  }
}

- (void)accountPickerTableViewController:(id)a3 fillPasswordForSavedAccount:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_systemAutoFillDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerViewController:self fillPasswordForSavedAccount:v6];
  }
}

- (void)accountPickerTableViewController:(id)a3 fillVerificationCodeForSavedAccount:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_systemAutoFillDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerViewController:self fillVerificationCodeForSavedAccount:v6];
  }
}

- (void)accountPickerTableViewController:(id)a3 fillVerificationCode:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_systemAutoFillDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerViewController:self fillVerificationCode:v6];
  }
}

- (LAContext)authenticatedContext
{
  v3 = [(SFAccountPickerViewController *)self _usePMUI];
  v4 = &OBJC_IVAR___SFAccountPickerViewController__accountPickerTableViewController;
  if (v3)
  {
    v4 = &OBJC_IVAR___SFAccountPickerViewController__autoFillPocketViewController;
  }

  v5 = [*(&self->super.super.super.super.isa + *v4) authenticatedContext];

  return v5;
}

- (void)setAuthenticatedContext:(id)a3
{
  v6 = a3;
  v4 = [(SFAccountPickerViewController *)self _usePMUI];
  v5 = &OBJC_IVAR___SFAccountPickerViewController__accountPickerTableViewController;
  if (v4)
  {
    v5 = &OBJC_IVAR___SFAccountPickerViewController__autoFillPocketViewController;
  }

  [*(&self->super.super.super.super.isa + *v5) setAuthenticatedContext:v6];
}

- (NSString)searchQuery
{
  v3 = [(SFAccountPickerViewController *)self _usePMUI];
  v4 = &OBJC_IVAR___SFAccountPickerViewController__accountPickerTableViewController;
  if (v3)
  {
    v4 = &OBJC_IVAR___SFAccountPickerViewController__autoFillPocketViewController;
  }

  v5 = [*(&self->super.super.super.super.isa + *v4) searchQuery];

  return v5;
}

- (void)setSearchQuery:(id)a3
{
  v6 = a3;
  v4 = [(SFAccountPickerViewController *)self _usePMUI];
  v5 = &OBJC_IVAR___SFAccountPickerViewController__accountPickerTableViewController;
  if (v4)
  {
    v5 = &OBJC_IVAR___SFAccountPickerViewController__autoFillPocketViewController;
  }

  [*(&self->super.super.super.super.isa + *v5) setSearchQuery:v6];
}

- (SFAccountPickerViewControllerSystemAutoFillDelegate)systemAutoFillDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_systemAutoFillDelegate);

  return WeakRetained;
}

@end