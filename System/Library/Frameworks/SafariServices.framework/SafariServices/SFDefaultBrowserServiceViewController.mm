@interface SFDefaultBrowserServiceViewController
- (id)_makeDefaultBrowserInformationViewController;
- (id)_makeDefaultBrowserSelectionViewController;
- (void)_commitDefaultBrowser:(id)browser browserChoiceResult:(int64_t)result defaultBrowserBundleIdentifier:(id)identifier;
- (void)_hostApplicationDidEnterBackground;
- (void)_postNotification:(id)notification;
- (void)_showConnectionErrorAlert;
- (void)_showListOfAvailableBrowsers;
- (void)_updateDefaultBrowserWithRecord:(id)record;
- (void)didChangeDefaultBrowserWithBundleIdentifier:(id)identifier browserChoiceResult:(int64_t)result;
- (void)didCommitDefaultBrowserChoice:(int64_t)choice;
- (void)prepareForDisplayWithCompletionHandler:(id)handler;
@end

@implementation SFDefaultBrowserServiceViewController

- (void)prepareForDisplayWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc(MEMORY[0x1E69DCCD8]);
  _makeDefaultBrowserInformationViewController = [(SFDefaultBrowserServiceViewController *)self _makeDefaultBrowserInformationViewController];
  v7 = [v5 initWithRootViewController:_makeDefaultBrowserInformationViewController];
  navigationController = self->_navigationController;
  self->_navigationController = v7;

  view = [(UINavigationController *)self->_navigationController view];
  view2 = [(SFDefaultBrowserServiceViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  [view setAutoresizingMask:18];
  [(SFDefaultBrowserServiceViewController *)self addChildViewController:self->_navigationController];
  view3 = [(SFDefaultBrowserServiceViewController *)self view];
  [view3 addSubview:view];

  [(UINavigationController *)self->_navigationController didMoveToParentViewController:self];
  handlerCopy[2](handlerCopy, 1);
  objc_initWeak(&location, self);
  v12 = [SFDefaultBrowserListView alloc];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __80__SFDefaultBrowserServiceViewController_prepareForDisplayWithCompletionHandler___block_invoke;
  v18 = &unk_1E8490E70;
  objc_copyWeak(&v19, &location);
  v13 = [(SFDefaultBrowserListView *)v12 initWithCompletionHandler:&v15];
  browserListView = self->_browserListView;
  self->_browserListView = v13;

  [(SFDefaultBrowserListView *)self->_browserListView setDelegate:self, v15, v16, v17, v18];
  [(SFDefaultBrowserListView *)self->_browserListView setUserCohort:self->_userCohort];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __80__SFDefaultBrowserServiceViewController_prepareForDisplayWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((a2 & 1) == 0)
  {
    v4 = WeakRetained;
    [WeakRetained _showConnectionErrorAlert];
    WeakRetained = v4;
  }
}

- (void)_hostApplicationDidEnterBackground
{
  [(SFDefaultBrowserListView *)self->_browserListView hostApplicationEnteredBackground];
  browserListView = self->_browserListView;

  [(SFDefaultBrowserListView *)browserListView setHostAppIsInBackground:1];
}

- (void)_showListOfAvailableBrowsers
{
  navigationController = self->_navigationController;
  _makeDefaultBrowserSelectionViewController = [(SFDefaultBrowserServiceViewController *)self _makeDefaultBrowserSelectionViewController];
  [(UINavigationController *)navigationController pushViewController:_makeDefaultBrowserSelectionViewController animated:1];
}

- (id)_makeDefaultBrowserInformationViewController
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = _WBSLocalizedString();
  _SFDeviceIsPad();
  v4 = _WBSLocalizedString();
  v5 = +[SFDefaultBrowserPromptController sharedController];
  hasShownBrowserChoiceScreenOnOtherDevices = [v5 hasShownBrowserChoiceScreenOnOtherDevices];

  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v8 = SFDefaultBrowserSelectionStateKey();
  if (([safari_browserDefaults integerForKey:v8] == 0) | hasShownBrowserChoiceScreenOnOtherDevices & 1)
  {
  }

  else
  {
    IsPad = _SFDeviceIsPad();

    if ((IsPad & 1) == 0)
    {
      self->_userCohort = 1;
    }
  }

  if (hasShownBrowserChoiceScreenOnOtherDevices)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v10 = getDMGetUserDataDispositionSymbolLoc_ptr;
    v31 = getDMGetUserDataDispositionSymbolLoc_ptr;
    if (!getDMGetUserDataDispositionSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v33 = __getDMGetUserDataDispositionSymbolLoc_block_invoke;
      v34 = &unk_1E848F710;
      v35 = &v28;
      __getDMGetUserDataDispositionSymbolLoc_block_invoke(&buf);
      v10 = v29[3];
    }

    _Block_object_dispose(&v28, 8);
    if (!v10)
    {
      [SFDefaultBrowserListView productDetailsUserDidInteractWithApp:interactionType:];
      __break(1u);
    }

    if ((v10(v11) & 4) != 0)
    {
      _SFDeviceIsPad();
      v12 = _WBSLocalizedString();

      self->_userCohort = 2;
      v4 = v12;
    }
  }

  if (!self->_userCohort)
  {
    self->_userCohort = 3;
  }

  v13 = WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    userCohort = self->_userCohort;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = userCohort;
    _os_log_impl(&dword_1D4644000, v13, OS_LOG_TYPE_INFO, "User cohort type: %lu", &buf, 0xCu);
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v15 = getOBWelcomeControllerClass_softClass_1;
  v31 = getOBWelcomeControllerClass_softClass_1;
  if (!getOBWelcomeControllerClass_softClass_1)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v33 = __getOBWelcomeControllerClass_block_invoke_1;
    v34 = &unk_1E848F710;
    v35 = &v28;
    __getOBWelcomeControllerClass_block_invoke_1(&buf);
    v15 = v29[3];
  }

  v16 = v15;
  _Block_object_dispose(&v28, 8);
  v17 = [v15 alloc];
  v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"network", v28}];
  v19 = [v17 initWithTitle:v3 detailText:v4 icon:v18 contentLayout:2];

  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v20 = getOBBoldTrayButtonClass_softClass_0;
  v31 = getOBBoldTrayButtonClass_softClass_0;
  if (!getOBBoldTrayButtonClass_softClass_0)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v33 = __getOBBoldTrayButtonClass_block_invoke_0;
    v34 = &unk_1E848F710;
    v35 = &v28;
    __getOBBoldTrayButtonClass_block_invoke_0(&buf);
    v20 = v29[3];
  }

  v21 = v20;
  _Block_object_dispose(&v28, 8);
  boldButton = [v20 boldButton];
  v23 = _WBSLocalizedString();
  [boldButton setTitle:v23 forState:0];

  [boldButton addTarget:self action:sel__showListOfAvailableBrowsers forControlEvents:64];
  buttonTray = [v19 buttonTray];
  [buttonTray addButton:boldButton];

  buttonTray2 = [v19 buttonTray];
  [buttonTray2 setPrivacyLinkForBundles:&unk_1F5023F68];

  view = [v19 view];
  [view setAccessibilityIdentifier:@"BrowserChoiceSheet"];

  [boldButton setAccessibilityIdentifier:@"ContinueButton"];

  return v19;
}

- (id)_makeDefaultBrowserSelectionViewController
{
  v74[4] = *MEMORY[0x1E69E9840];
  v66 = _WBSLocalizedString();
  v3 = [[SFDefaultBrowserListViewController alloc] initWithTitle:v66 detailText:0 icon:0 contentLayout:3];
  contentView = [(SFDefaultBrowserListViewController *)v3 contentView];
  [contentView addSubview:self->_browserListView];

  [(SFDefaultBrowserListView *)self->_browserListView setTranslatesAutoresizingMaskIntoConstraints:0];
  v51 = MEMORY[0x1E696ACD8];
  topAnchor = [(SFDefaultBrowserListView *)self->_browserListView topAnchor];
  contentView2 = [(SFDefaultBrowserListViewController *)v3 contentView];
  topAnchor2 = [contentView2 topAnchor];
  v62 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v74[0] = v62;
  bottomAnchor = [(SFDefaultBrowserListView *)self->_browserListView bottomAnchor];
  contentView3 = [(SFDefaultBrowserListViewController *)v3 contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v74[1] = v49;
  leadingAnchor = [(SFDefaultBrowserListView *)self->_browserListView leadingAnchor];
  contentView4 = [(SFDefaultBrowserListViewController *)v3 contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v74[2] = v7;
  trailingAnchor = [(SFDefaultBrowserListView *)self->_browserListView trailingAnchor];
  v71 = v3;
  contentView5 = [(SFDefaultBrowserListViewController *)v3 contentView];
  trailingAnchor2 = [contentView5 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v74[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
  [v51 activateConstraints:v12];

  v13 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v13 configureWithTransparentBackground];
  navigationBar = [(UINavigationController *)self->_navigationController navigationBar];
  [navigationBar setScrollEdgeAppearance:v13];
  [navigationBar setCompactAppearance:v13];
  v63 = navigationBar;
  v65 = v13;
  [navigationBar setStandardAppearance:v13];
  v15 = [SFDefaultBrowserPinnedHeaderView alloc];
  v16 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 8);
  v18 = *(MEMORY[0x1E695F058] + 16);
  v19 = *(MEMORY[0x1E695F058] + 24);
  v20 = [(SFDefaultBrowserPinnedHeaderView *)v15 initWithFrame:*MEMORY[0x1E695F058], v17, v18, v19];
  selfCopy = self;
  headerView = [(SFDefaultBrowserListView *)self->_browserListView headerView];
  lockupView = [headerView lockupView];

  if (lockupView)
  {
    [(SFDefaultBrowserPinnedHeaderView *)v20 setLockupView:lockupView];
  }

  view = [(SFDefaultBrowserListViewController *)v71 view];
  [view addSubview:v20];

  [(SFDefaultBrowserPinnedHeaderView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v61 = lockupView;
  layoutMarginsGuide = [(SFDefaultBrowserListView *)self->_browserListView layoutMarginsGuide];
  v48 = MEMORY[0x1E696ACD8];
  topAnchor3 = [(SFDefaultBrowserPinnedHeaderView *)v20 topAnchor];
  view2 = [(SFDefaultBrowserListViewController *)v71 view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide topAnchor];
  [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v27 = v26 = v20;
  v73[0] = v27;
  v70 = v26;
  leadingAnchor3 = [(SFDefaultBrowserPinnedHeaderView *)v26 leadingAnchor];
  v68 = layoutMarginsGuide;
  leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
  v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v73[1] = v30;
  trailingAnchor3 = [(SFDefaultBrowserPinnedHeaderView *)v26 trailingAnchor];
  trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
  v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v73[2] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:3];
  [v48 activateConstraints:v34];

  [(SFDefaultBrowserListView *)selfCopy->_browserListView setContainerViewController:v71];
  [(SFDefaultBrowserListView *)selfCopy->_browserListView setHeaderView:v70];
  v35 = [[SFDefaultBrowserScrollInstructionView alloc] initWithFrame:v16, v17, v18, v19];
  [(SFDefaultBrowserScrollInstructionView *)v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SFDefaultBrowserListView *)selfCopy->_browserListView setInstructionView:v35];
  view3 = [(SFDefaultBrowserListViewController *)v71 view];
  [view3 addSubview:v35];

  v53 = MEMORY[0x1E696ACD8];
  leadingAnchor5 = [(SFDefaultBrowserScrollInstructionView *)v35 leadingAnchor];
  leadingAnchor6 = [v68 leadingAnchor];
  v37 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v72[0] = v37;
  trailingAnchor5 = [(SFDefaultBrowserScrollInstructionView *)v35 trailingAnchor];
  trailingAnchor6 = [v68 trailingAnchor];
  v40 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v72[1] = v40;
  bottomAnchor3 = [(SFDefaultBrowserScrollInstructionView *)v35 bottomAnchor];
  view4 = [(SFDefaultBrowserListViewController *)v71 view];
  bottomAnchor4 = [view4 bottomAnchor];
  v44 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v72[2] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:3];
  [v53 activateConstraints:v45];

  return v71;
}

- (void)_showConnectionErrorAlert
{
  v3 = _WBSLocalizedString();
  v4 = _WBSLocalizedString();
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v3 message:v4 preferredStyle:1];
  view = [v5 view];
  [view setAccessibilityIdentifier:@"AppStoreConnectionAlert"];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69DC648];
  v8 = _WBSLocalizedString();
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __66__SFDefaultBrowserServiceViewController__showConnectionErrorAlert__block_invoke;
  v13 = &unk_1E848FFD0;
  objc_copyWeak(&v14, &location);
  v9 = [v7 actionWithTitle:v8 style:1 handler:&v10];

  [v5 addAction:{v9, v10, v11, v12, v13}];
  [(UINavigationController *)self->_navigationController presentViewController:v5 animated:1 completion:0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __66__SFDefaultBrowserServiceViewController__showConnectionErrorAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _remoteViewControllerProxy];
  [v1 serviceViewControllerFailed];
}

- (void)didCommitDefaultBrowserChoice:(int64_t)choice
{
  _remoteViewControllerProxy = [(SFDefaultBrowserServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy serviceViewControllerDidFinishWithResult:choice];
}

- (void)_postNotification:(id)notification
{
  v3 = MEMORY[0x1E6983298];
  v4 = MEMORY[0x1E696AFB0];
  notificationCopy = notification;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v9 = [v3 requestWithIdentifier:uUIDString content:notificationCopy trigger:0];

  v8 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:@"com.apple.Preferences"];
  [v8 addNotificationRequest:v9 withCompletionHandler:&__block_literal_global_71];
}

void __59__SFDefaultBrowserServiceViewController__postNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__SFDefaultBrowserServiceViewController__postNotification___block_invoke_cold_1(v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_INFO, "Successfully posted default web browser updated notification", v5, 2u);
  }
}

- (void)_updateDefaultBrowserWithRecord:(id)record
{
  recordCopy = record;
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__SFDefaultBrowserServiceViewController__updateDefaultBrowserWithRecord___block_invoke;
  v7[3] = &unk_1E8496058;
  v8 = recordCopy;
  selfCopy = self;
  v6 = recordCopy;
  [defaultWorkspace setDefaultWebBrowserToApplicationRecord:v6 completionHandler:v7];
}

void __73__SFDefaultBrowserServiceViewController__updateDefaultBrowserWithRecord___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __73__SFDefaultBrowserServiceViewController__updateDefaultBrowserWithRecord___block_invoke_cold_1(v5);
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E6983220]);
    v7 = _WBSLocalizedString();
    [v6 setTitle:v7];

    v8 = [*(a1 + 32) bundleIdentifier];
    v9 = MEMORY[0x1E696AEC0];
    v10 = _WBSLocalizedString();
    v11 = [*(a1 + 32) localizedName];
    v12 = [v9 stringWithFormat:v10, v11];
    [v6 setBody:v12];

    v13 = [MEMORY[0x1E695DFF8] URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.Settings.Apps.DefaultApps"];
    [v6 setDefaultActionURL:v13];

    v14 = [MEMORY[0x1E6963608] defaultWorkspace];
    v15 = objc_alloc_init(MEMORY[0x1E69636B8]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__SFDefaultBrowserServiceViewController__updateDefaultBrowserWithRecord___block_invoke_131;
    v17[3] = &unk_1E8496058;
    v17[4] = *(a1 + 40);
    v18 = v6;
    v16 = v6;
    [v14 openApplicationWithBundleIdentifier:v8 usingConfiguration:v15 completionHandler:v17];
  }
}

void __73__SFDefaultBrowserServiceViewController__updateDefaultBrowserWithRecord___block_invoke_131(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __73__SFDefaultBrowserServiceViewController__updateDefaultBrowserWithRecord___block_invoke_131_cold_1(v5);
    }
  }

  [*(a1 + 32) _postNotification:*(a1 + 40)];
}

- (void)didChangeDefaultBrowserWithBundleIdentifier:(id)identifier browserChoiceResult:(int64_t)result
{
  identifierCopy = identifier;
  if (result != 2)
  {
    v18 = 0;
    v7 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v18];
    v8 = v18;
    if (!v7)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SFDefaultBrowserServiceViewController didChangeDefaultBrowserWithBundleIdentifier:v13 browserChoiceResult:?];
      }

      goto LABEL_12;
    }

    bundleIdentifier = [v7 bundleIdentifier];
    if (result == 1)
    {
      v10 = +[SFDefaultBrowserPromptController sharedController];
      localizedName = [v7 localizedName];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __105__SFDefaultBrowserServiceViewController_didChangeDefaultBrowserWithBundleIdentifier_browserChoiceResult___block_invoke;
      v14[3] = &unk_1E848F660;
      v14[4] = self;
      v15 = v7;
      v17 = 1;
      v16 = bundleIdentifier;
      v12 = [v10 browserIconReplacementAlertController:v16 browserLocalizedName:localizedName completionHandler:v14];

      if (v12)
      {
        [(SFDefaultBrowserServiceViewController *)self presentViewController:v12 animated:0 completion:0];

LABEL_11:
LABEL_12:

        goto LABEL_13;
      }
    }

    [(SFDefaultBrowserServiceViewController *)self _commitDefaultBrowser:v7 browserChoiceResult:result defaultBrowserBundleIdentifier:bundleIdentifier];
    goto LABEL_11;
  }

  [(SFDefaultBrowserServiceViewController *)self didCommitDefaultBrowserChoice:2];
LABEL_13:
}

- (void)_commitDefaultBrowser:(id)browser browserChoiceResult:(int64_t)result defaultBrowserBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(SFDefaultBrowserServiceViewController *)self _updateDefaultBrowserWithRecord:browser];
  if (identifierCopy)
  {
    mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
    [mEMORY[0x1E69C8810] _sf_reportBrowserChoice:identifierCopy];
  }

  [(SFDefaultBrowserServiceViewController *)self didCommitDefaultBrowserChoice:result];
}

void __59__SFDefaultBrowserServiceViewController__postNotification___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v4, v5, "Failed to post default web browser updated notification: %{public}@", v6, v7, v8, v9, v10);
}

void __73__SFDefaultBrowserServiceViewController__updateDefaultBrowserWithRecord___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v4, v5, "Failed to set default browser app with error: %{public}@", v6, v7, v8, v9, v10);
}

void __73__SFDefaultBrowserServiceViewController__updateDefaultBrowserWithRecord___block_invoke_131_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v4, v5, "Failed to open application: %{public}@", v6, v7, v8, v9, v10);
}

- (void)didChangeDefaultBrowserWithBundleIdentifier:(void *)a1 browserChoiceResult:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v4, v5, "Failed to get app record with error: %{public}@", v6, v7, v8, v9, v10);
}

@end