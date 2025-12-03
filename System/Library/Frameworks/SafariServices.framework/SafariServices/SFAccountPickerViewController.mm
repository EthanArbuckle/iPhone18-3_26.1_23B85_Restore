@interface SFAccountPickerViewController
- (BOOL)_usePMUI;
- (LAContext)authenticatedContext;
- (NSString)searchQuery;
- (SFAccountPickerViewController)initWithConfiguration:(id)configuration completionHandler:(id)handler;
- (SFAccountPickerViewControllerSystemAutoFillDelegate)systemAutoFillDelegate;
- (void)_callCompletionHandlerIfNeeded:(id)needed passwordToFill:(id)fill;
- (void)_dismissWithAnimation:(BOOL)animation accounts:(id)accounts passwordToFill:(id)fill;
- (void)_viewControllerDismissalTransitionDidEnd:(id)end;
- (void)accountPickerTableViewController:(id)controller fillPasswordForSavedAccount:(id)account;
- (void)accountPickerTableViewController:(id)controller fillUsernameForSavedAccount:(id)account;
- (void)accountPickerTableViewController:(id)controller fillVerificationCode:(id)code;
- (void)accountPickerTableViewController:(id)controller fillVerificationCodeForSavedAccount:(id)account;
- (void)buildMenuWithBuilder:(id)builder;
- (void)setAuthenticatedContext:(id)context;
- (void)setSearchQuery:(id)query;
@end

@implementation SFAccountPickerViewController

- (BOOL)_usePMUI
{
  pm_defaults = [MEMORY[0x1E695E000] pm_defaults];
  v3 = [pm_defaults safari_BOOLForKey:*MEMORY[0x1E69C8D98] defaultValue:1];

  return v3;
}

- (SFAccountPickerViewController)initWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v68.receiver = self;
  v68.super_class = SFAccountPickerViewController;
  v9 = [(SFAccountPickerViewController *)&v68 initWithNibName:0 bundle:0];
  if (v9)
  {
    objc_initWeak(&location, v9);
    objc_storeStrong(&v9->_configuration, configuration);
    v55 = handlerCopy;
    v10 = _Block_copy(handlerCopy);
    completionHandler = v9->_completionHandler;
    v9->_completionHandler = v10;

    if ([(SFAccountPickerViewController *)v9 _usePMUI])
    {
      isForFillingIndividualAccountFields = [configurationCopy isForFillingIndividualAccountFields];
      shouldShowAutoFillPasskeys = [configurationCopy shouldShowAutoFillPasskeys];
      v13 = 3;
      if (!shouldShowAutoFillPasskeys)
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
      appID = [configurationCopy appID];
      prompt = [configurationCopy prompt];
      promptWhenPasskeysAreAvailable = [configurationCopy promptWhenPasskeysAreAvailable];
      serviceNameHintStrings = [configurationCopy serviceNameHintStrings];
      domainHintStrings = [configurationCopy domainHintStrings];
      mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
      v54 = +[_SFFormDataController sharedController];
      autoFillQuirksManager = [v54 autoFillQuirksManager];
      shouldShowAutoFillPasskeys2 = [configurationCopy shouldShowAutoFillPasskeys];
      currentWebFrameIdentifierForAutoFillPasskeys = [configurationCopy currentWebFrameIdentifierForAutoFillPasskeys];
      if (configurationCopy)
      {
        [configurationCopy connectedAppAuditToken];
      }

      else
      {
        memset(v60, 0, sizeof(v60));
      }

      isConnectedAppAWebBrowser = [configurationCopy isConnectedAppAWebBrowser];
      initialSearchQuery = [configurationCopy initialSearchQuery];
      savedAccountToInitiallyShowDetailsFor = [configurationCopy savedAccountToInitiallyShowDetailsFor];
      shouldAllowAddingNewPasswords = [configurationCopy shouldAllowAddingNewPasswords];
      addPasswordSuggestedDomain = [configurationCopy addPasswordSuggestedDomain];
      addPasswordSuggestedLabel = [configurationCopy addPasswordSuggestedLabel];
      bundleIDForFallbackIcon = [configurationCopy bundleIDForFallbackIcon];
      savedAccountContext = [configurationCopy savedAccountContext];
      savedAccountForHistorySection = [configurationCopy savedAccountForHistorySection];
      LOBYTE(v36) = shouldAllowAddingNewPasswords;
      LOBYTE(v35) = isConnectedAppAWebBrowser;
      LOBYTE(v34) = shouldShowAutoFillPasskeys2;
      LOBYTE(v33) = 1;
      v25 = [v39 initWithPersona:isForFillingIndividualAccountFields appID:appID credentialTypes:v40 promptString:prompt promptStringWhenPasskeysAreAvailable:promptWhenPasskeysAreAvailable serviceNameHintStrings:serviceNameHintStrings domainNameHintStrings:domainHintStrings bypassLockoutPolicy:v33 savedAccountStore:mEMORY[0x1E69C8A38] autoFillQuirksManager:autoFillQuirksManager shouldShowAutoFillPasskeys:v34 currentWebFrameIdentifierForAutoFillPasskeys:currentWebFrameIdentifierForAutoFillPasskeys connectedAppAuditToken:v60 isConnectedAppAWebBrowser:v35 initialSearchQuery:initialSearchQuery savedAccountToInitiallyShowDetailsFor:savedAccountToInitiallyShowDetailsFor shouldAllowAddingNewPasswords:v36 suggestedDomainForNewAccount:addPasswordSuggestedDomain localizedHostAppNameForNewAccount:addPasswordSuggestedLabel bundleIDForFallbackIconForNewAccount:bundleIDForFallbackIcon authenticatedContext:0 savedAccountContext:savedAccountContext savedAccountForHistorySection:savedAccountForHistorySection didSelectHistoryItem:v50 didSelectAccountHandler:v52 didSelectTextToInsertHandler:v51];
      autoFillPocketViewController = v15->_autoFillPocketViewController;
      v15->_autoFillPocketViewController = v25;

      [(SFAccountPickerViewController *)v15 pushViewController:v15->_autoFillPocketViewController animated:0];
      [(SFAccountPickerViewController *)v15 setNavigationBarHidden:1];

      objc_destroyWeak(&v64);
    }

    else
    {
      v16 = [[_SFAccountPickerTableViewController alloc] initWithConfiguration:configurationCopy];
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__viewControllerDismissalTransitionDidEnd_ name:*MEMORY[0x1E69DE2C8] object:0];

    v31 = v9;
    objc_destroyWeak(&v57);
    objc_destroyWeak(&v59);
    objc_destroyWeak(&location);
    handlerCopy = v55;
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

- (void)_callCompletionHandlerIfNeeded:(id)needed passwordToFill:(id)fill
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, needed, fill);
    v6 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (void)_viewControllerDismissalTransitionDidEnd:(id)end
{
  endCopy = end;
  if (!self->_isDismissingSelf)
  {
    v6 = endCopy;
    v5 = [(SFAccountPickerViewController *)self _sf_isPresentationControllerDismissalTransitionDidEndNotification:endCopy];
    endCopy = v6;
    if (v5)
    {
      [(SFAccountPickerViewController *)self _callCompletionHandlerIfNeeded:0 passwordToFill:0];
      endCopy = v6;
    }
  }
}

- (void)_dismissWithAnimation:(BOOL)animation accounts:(id)accounts passwordToFill:(id)fill
{
  animationCopy = animation;
  accountsCopy = accounts;
  fillCopy = fill;
  self->_isDismissingSelf = 1;
  presentingViewController = [(SFAccountPickerViewController *)self presentingViewController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__SFAccountPickerViewController__dismissWithAnimation_accounts_passwordToFill___block_invoke;
  v13[3] = &unk_1E848F6B0;
  v13[4] = self;
  v14 = accountsCopy;
  v15 = fillCopy;
  v11 = fillCopy;
  v12 = accountsCopy;
  [presentingViewController dismissViewControllerAnimated:animationCopy completion:v13];
}

- (void)buildMenuWithBuilder:(id)builder
{
  v4.receiver = self;
  v4.super_class = SFAccountPickerViewController;
  builderCopy = builder;
  [(SFAccountPickerViewController *)&v4 buildMenuWithBuilder:builderCopy];
  [builderCopy replaceChildrenOfMenuForIdentifier:*MEMORY[0x1E69DE0C8] fromChildrenBlock:{&__block_literal_global_62, v4.receiver, v4.super_class}];
}

BOOL __54__SFAccountPickerViewController_buildMenuWithBuilder___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = (objc_opt_respondsToSelector() & 1) != 0 && [v2 action] == sel_captureTextFromCamera_;

  return v3;
}

- (void)accountPickerTableViewController:(id)controller fillUsernameForSavedAccount:(id)account
{
  accountCopy = account;
  WeakRetained = objc_loadWeakRetained(&self->_systemAutoFillDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerViewController:self fillUsernameForSavedAccount:accountCopy];
  }
}

- (void)accountPickerTableViewController:(id)controller fillPasswordForSavedAccount:(id)account
{
  accountCopy = account;
  WeakRetained = objc_loadWeakRetained(&self->_systemAutoFillDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerViewController:self fillPasswordForSavedAccount:accountCopy];
  }
}

- (void)accountPickerTableViewController:(id)controller fillVerificationCodeForSavedAccount:(id)account
{
  accountCopy = account;
  WeakRetained = objc_loadWeakRetained(&self->_systemAutoFillDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerViewController:self fillVerificationCodeForSavedAccount:accountCopy];
  }
}

- (void)accountPickerTableViewController:(id)controller fillVerificationCode:(id)code
{
  codeCopy = code;
  WeakRetained = objc_loadWeakRetained(&self->_systemAutoFillDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerViewController:self fillVerificationCode:codeCopy];
  }
}

- (LAContext)authenticatedContext
{
  _usePMUI = [(SFAccountPickerViewController *)self _usePMUI];
  v4 = &OBJC_IVAR___SFAccountPickerViewController__accountPickerTableViewController;
  if (_usePMUI)
  {
    v4 = &OBJC_IVAR___SFAccountPickerViewController__autoFillPocketViewController;
  }

  authenticatedContext = [*(&self->super.super.super.super.isa + *v4) authenticatedContext];

  return authenticatedContext;
}

- (void)setAuthenticatedContext:(id)context
{
  contextCopy = context;
  _usePMUI = [(SFAccountPickerViewController *)self _usePMUI];
  v5 = &OBJC_IVAR___SFAccountPickerViewController__accountPickerTableViewController;
  if (_usePMUI)
  {
    v5 = &OBJC_IVAR___SFAccountPickerViewController__autoFillPocketViewController;
  }

  [*(&self->super.super.super.super.isa + *v5) setAuthenticatedContext:contextCopy];
}

- (NSString)searchQuery
{
  _usePMUI = [(SFAccountPickerViewController *)self _usePMUI];
  v4 = &OBJC_IVAR___SFAccountPickerViewController__accountPickerTableViewController;
  if (_usePMUI)
  {
    v4 = &OBJC_IVAR___SFAccountPickerViewController__autoFillPocketViewController;
  }

  searchQuery = [*(&self->super.super.super.super.isa + *v4) searchQuery];

  return searchQuery;
}

- (void)setSearchQuery:(id)query
{
  queryCopy = query;
  _usePMUI = [(SFAccountPickerViewController *)self _usePMUI];
  v5 = &OBJC_IVAR___SFAccountPickerViewController__accountPickerTableViewController;
  if (_usePMUI)
  {
    v5 = &OBJC_IVAR___SFAccountPickerViewController__autoFillPocketViewController;
  }

  [*(&self->super.super.super.super.isa + *v5) setSearchQuery:queryCopy];
}

- (SFAccountPickerViewControllerSystemAutoFillDelegate)systemAutoFillDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_systemAutoFillDelegate);

  return WeakRetained;
}

@end