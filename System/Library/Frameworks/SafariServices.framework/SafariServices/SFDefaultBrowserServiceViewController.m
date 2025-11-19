@interface SFDefaultBrowserServiceViewController
- (id)_makeDefaultBrowserInformationViewController;
- (id)_makeDefaultBrowserSelectionViewController;
- (void)_commitDefaultBrowser:(id)a3 browserChoiceResult:(int64_t)a4 defaultBrowserBundleIdentifier:(id)a5;
- (void)_hostApplicationDidEnterBackground;
- (void)_postNotification:(id)a3;
- (void)_showConnectionErrorAlert;
- (void)_showListOfAvailableBrowsers;
- (void)_updateDefaultBrowserWithRecord:(id)a3;
- (void)didChangeDefaultBrowserWithBundleIdentifier:(id)a3 browserChoiceResult:(int64_t)a4;
- (void)didCommitDefaultBrowserChoice:(int64_t)a3;
- (void)prepareForDisplayWithCompletionHandler:(id)a3;
@end

@implementation SFDefaultBrowserServiceViewController

- (void)prepareForDisplayWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69DCCD8]);
  v6 = [(SFDefaultBrowserServiceViewController *)self _makeDefaultBrowserInformationViewController];
  v7 = [v5 initWithRootViewController:v6];
  navigationController = self->_navigationController;
  self->_navigationController = v7;

  v9 = [(UINavigationController *)self->_navigationController view];
  v10 = [(SFDefaultBrowserServiceViewController *)self view];
  [v10 bounds];
  [v9 setFrame:?];

  [v9 setAutoresizingMask:18];
  [(SFDefaultBrowserServiceViewController *)self addChildViewController:self->_navigationController];
  v11 = [(SFDefaultBrowserServiceViewController *)self view];
  [v11 addSubview:v9];

  [(UINavigationController *)self->_navigationController didMoveToParentViewController:self];
  v4[2](v4, 1);
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
  v3 = [(SFDefaultBrowserServiceViewController *)self _makeDefaultBrowserSelectionViewController];
  [(UINavigationController *)navigationController pushViewController:v3 animated:1];
}

- (id)_makeDefaultBrowserInformationViewController
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = _WBSLocalizedString();
  _SFDeviceIsPad();
  v4 = _WBSLocalizedString();
  v5 = +[SFDefaultBrowserPromptController sharedController];
  v6 = [v5 hasShownBrowserChoiceScreenOnOtherDevices];

  v7 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v8 = SFDefaultBrowserSelectionStateKey();
  if (([v7 integerForKey:v8] == 0) | v6 & 1)
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

  if (v6)
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
  v22 = [v20 boldButton];
  v23 = _WBSLocalizedString();
  [v22 setTitle:v23 forState:0];

  [v22 addTarget:self action:sel__showListOfAvailableBrowsers forControlEvents:64];
  v24 = [v19 buttonTray];
  [v24 addButton:v22];

  v25 = [v19 buttonTray];
  [v25 setPrivacyLinkForBundles:&unk_1F5023F68];

  v26 = [v19 view];
  [v26 setAccessibilityIdentifier:@"BrowserChoiceSheet"];

  [v22 setAccessibilityIdentifier:@"ContinueButton"];

  return v19;
}

- (id)_makeDefaultBrowserSelectionViewController
{
  v74[4] = *MEMORY[0x1E69E9840];
  v66 = _WBSLocalizedString();
  v3 = [[SFDefaultBrowserListViewController alloc] initWithTitle:v66 detailText:0 icon:0 contentLayout:3];
  v4 = [(SFDefaultBrowserListViewController *)v3 contentView];
  [v4 addSubview:self->_browserListView];

  [(SFDefaultBrowserListView *)self->_browserListView setTranslatesAutoresizingMaskIntoConstraints:0];
  v51 = MEMORY[0x1E696ACD8];
  v67 = [(SFDefaultBrowserListView *)self->_browserListView topAnchor];
  v69 = [(SFDefaultBrowserListViewController *)v3 contentView];
  v64 = [v69 topAnchor];
  v62 = [v67 constraintEqualToAnchor:v64];
  v74[0] = v62;
  v57 = [(SFDefaultBrowserListView *)self->_browserListView bottomAnchor];
  v60 = [(SFDefaultBrowserListViewController *)v3 contentView];
  v54 = [v60 bottomAnchor];
  v49 = [v57 constraintEqualToAnchor:v54];
  v74[1] = v49;
  v47 = [(SFDefaultBrowserListView *)self->_browserListView leadingAnchor];
  v5 = [(SFDefaultBrowserListViewController *)v3 contentView];
  v6 = [v5 leadingAnchor];
  v7 = [v47 constraintEqualToAnchor:v6];
  v74[2] = v7;
  v8 = [(SFDefaultBrowserListView *)self->_browserListView trailingAnchor];
  v71 = v3;
  v9 = [(SFDefaultBrowserListViewController *)v3 contentView];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v74[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
  [v51 activateConstraints:v12];

  v13 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v13 configureWithTransparentBackground];
  v14 = [(UINavigationController *)self->_navigationController navigationBar];
  [v14 setScrollEdgeAppearance:v13];
  [v14 setCompactAppearance:v13];
  v63 = v14;
  v65 = v13;
  [v14 setStandardAppearance:v13];
  v15 = [SFDefaultBrowserPinnedHeaderView alloc];
  v16 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 8);
  v18 = *(MEMORY[0x1E695F058] + 16);
  v19 = *(MEMORY[0x1E695F058] + 24);
  v20 = [(SFDefaultBrowserPinnedHeaderView *)v15 initWithFrame:*MEMORY[0x1E695F058], v17, v18, v19];
  v21 = self;
  v22 = [(SFDefaultBrowserListView *)self->_browserListView headerView];
  v23 = [v22 lockupView];

  if (v23)
  {
    [(SFDefaultBrowserPinnedHeaderView *)v20 setLockupView:v23];
  }

  v24 = [(SFDefaultBrowserListViewController *)v71 view];
  [v24 addSubview:v20];

  [(SFDefaultBrowserPinnedHeaderView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v61 = v23;
  v25 = [(SFDefaultBrowserListView *)self->_browserListView layoutMarginsGuide];
  v48 = MEMORY[0x1E696ACD8];
  v55 = [(SFDefaultBrowserPinnedHeaderView *)v20 topAnchor];
  v58 = [(SFDefaultBrowserListViewController *)v71 view];
  v52 = [v58 safeAreaLayoutGuide];
  v50 = [v52 topAnchor];
  [v55 constraintEqualToAnchor:v50];
  v27 = v26 = v20;
  v73[0] = v27;
  v70 = v26;
  v28 = [(SFDefaultBrowserPinnedHeaderView *)v26 leadingAnchor];
  v68 = v25;
  v29 = [v25 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v73[1] = v30;
  v31 = [(SFDefaultBrowserPinnedHeaderView *)v26 trailingAnchor];
  v32 = [v25 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  v73[2] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:3];
  [v48 activateConstraints:v34];

  [(SFDefaultBrowserListView *)v21->_browserListView setContainerViewController:v71];
  [(SFDefaultBrowserListView *)v21->_browserListView setHeaderView:v70];
  v35 = [[SFDefaultBrowserScrollInstructionView alloc] initWithFrame:v16, v17, v18, v19];
  [(SFDefaultBrowserScrollInstructionView *)v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SFDefaultBrowserListView *)v21->_browserListView setInstructionView:v35];
  v36 = [(SFDefaultBrowserListViewController *)v71 view];
  [v36 addSubview:v35];

  v53 = MEMORY[0x1E696ACD8];
  v59 = [(SFDefaultBrowserScrollInstructionView *)v35 leadingAnchor];
  v56 = [v68 leadingAnchor];
  v37 = [v59 constraintEqualToAnchor:v56];
  v72[0] = v37;
  v38 = [(SFDefaultBrowserScrollInstructionView *)v35 trailingAnchor];
  v39 = [v68 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  v72[1] = v40;
  v41 = [(SFDefaultBrowserScrollInstructionView *)v35 bottomAnchor];
  v42 = [(SFDefaultBrowserListViewController *)v71 view];
  v43 = [v42 bottomAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];
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
  v6 = [v5 view];
  [v6 setAccessibilityIdentifier:@"AppStoreConnectionAlert"];

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

- (void)didCommitDefaultBrowserChoice:(int64_t)a3
{
  v4 = [(SFDefaultBrowserServiceViewController *)self _remoteViewControllerProxy];
  [v4 serviceViewControllerDidFinishWithResult:a3];
}

- (void)_postNotification:(id)a3
{
  v3 = MEMORY[0x1E6983298];
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v9 = [v3 requestWithIdentifier:v7 content:v5 trigger:0];

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

- (void)_updateDefaultBrowserWithRecord:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E6963608] defaultWorkspace];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__SFDefaultBrowserServiceViewController__updateDefaultBrowserWithRecord___block_invoke;
  v7[3] = &unk_1E8496058;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 setDefaultWebBrowserToApplicationRecord:v6 completionHandler:v7];
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

- (void)didChangeDefaultBrowserWithBundleIdentifier:(id)a3 browserChoiceResult:(int64_t)a4
{
  v6 = a3;
  if (a4 != 2)
  {
    v18 = 0;
    v7 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v18];
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

    v9 = [v7 bundleIdentifier];
    if (a4 == 1)
    {
      v10 = +[SFDefaultBrowserPromptController sharedController];
      v11 = [v7 localizedName];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __105__SFDefaultBrowserServiceViewController_didChangeDefaultBrowserWithBundleIdentifier_browserChoiceResult___block_invoke;
      v14[3] = &unk_1E848F660;
      v14[4] = self;
      v15 = v7;
      v17 = 1;
      v16 = v9;
      v12 = [v10 browserIconReplacementAlertController:v16 browserLocalizedName:v11 completionHandler:v14];

      if (v12)
      {
        [(SFDefaultBrowserServiceViewController *)self presentViewController:v12 animated:0 completion:0];

LABEL_11:
LABEL_12:

        goto LABEL_13;
      }
    }

    [(SFDefaultBrowserServiceViewController *)self _commitDefaultBrowser:v7 browserChoiceResult:a4 defaultBrowserBundleIdentifier:v9];
    goto LABEL_11;
  }

  [(SFDefaultBrowserServiceViewController *)self didCommitDefaultBrowserChoice:2];
LABEL_13:
}

- (void)_commitDefaultBrowser:(id)a3 browserChoiceResult:(int64_t)a4 defaultBrowserBundleIdentifier:(id)a5
{
  v9 = a5;
  [(SFDefaultBrowserServiceViewController *)self _updateDefaultBrowserWithRecord:a3];
  if (v9)
  {
    v8 = [MEMORY[0x1E69C8810] sharedLogger];
    [v8 _sf_reportBrowserChoice:v9];
  }

  [(SFDefaultBrowserServiceViewController *)self didCommitDefaultBrowserChoice:a4];
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