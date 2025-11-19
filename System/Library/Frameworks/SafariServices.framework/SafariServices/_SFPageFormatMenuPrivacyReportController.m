@interface _SFPageFormatMenuPrivacyReportController
- (BOOL)_presentPromptToTurnOnTrackingProtection;
- (_SFPageFormatMenuItemControllerDelegate)delegate;
- (_SFPageFormatMenuPrivacyReportController)initWithDocument:(id)a3;
- (_SFSettingsAlertItem)alertItem;
- (void)_dismissPromptIfTrackerProtectionEnabled;
- (void)_initializeManagedProfileConnection;
- (void)_presentPrivacyReport;
- (void)dealloc;
@end

@implementation _SFPageFormatMenuPrivacyReportController

- (_SFPageFormatMenuPrivacyReportController)initWithDocument:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _SFPageFormatMenuPrivacyReportController;
  v6 = [(_SFPageFormatMenuPrivacyReportController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_document, a3);
    v8 = v7;
  }

  return v7;
}

- (void)dealloc
{
  v3 = objc_opt_respondsToSelector();
  profileConnection = self->_profileConnection;
  if (v3)
  {
    [(MCProfileConnection *)profileConnection unregisterObserver:self];
  }

  else
  {
    [(MCProfileConnection *)profileConnection removeObserver:self];
  }

  v5.receiver = self;
  v5.super_class = _SFPageFormatMenuPrivacyReportController;
  [(_SFPageFormatMenuPrivacyReportController *)&v5 dealloc];
}

- (_SFSettingsAlertItem)alertItem
{
  v3 = _WBSLocalizedString();
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"shield.lefthalf.fill"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __53___SFPageFormatMenuPrivacyReportController_alertItem__block_invoke;
  v20[3] = &unk_1E848F9D8;
  v20[4] = self;
  v6 = [_SFSettingsAlertItem buttonWithTitle:v3 textStyle:v4 icon:v5 action:28 handler:v20];

  [v6 setAccessibilityIdentifier:@"ShowPrivacyReport"];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(_SFBrowserDocument *)self->_document trackerInfo];
    v8 = +[SFBrowserDocumentTrackerInfo trackingPreventionEnabled];
    v9 = [MEMORY[0x1E69C9808] sharedManager];
    v10 = [v9 isPrivacyProxyOnForEitherTier];

    if (v8 || (v10) && v8)
    {
      [v6 setSubtitle:@" "];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __53___SFPageFormatMenuPrivacyReportController_alertItem__block_invoke_2;
      v17[3] = &unk_1E848F548;
      v18 = v7;
      v12 = v6;
      v19 = v12;
      [v18 updateKnownTrackingThirdPartiesWithCompletionHandler:v17];
      v13 = v12;
    }

    else
    {
      v14 = _WBSLocalizedString();
      [v6 setSubtitle:v14];

      v15 = v6;
    }
  }

  else
  {
    v11 = v6;
  }

  return v6;
}

- (BOOL)_presentPromptToTurnOnTrackingProtection
{
  v3 = [(_SFPageFormatMenuPrivacyReportController *)self delegate];
  v4 = [v3 viewControllerForPresentationForItemController:self];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84___SFPageFormatMenuPrivacyReportController__presentPromptToTurnOnTrackingProtection__block_invoke;
  v13[3] = &unk_1E848FA00;
  v5 = v4;
  v14 = v5;
  v6 = [SFPrivacyReportOnboardingController onboardingViewControllerWithCompletionHandler:v13];
  if (v6)
  {
    objc_storeWeak(&self->_enableTrackerProtectionViewController, v6);
    v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __84___SFPageFormatMenuPrivacyReportController__presentPromptToTurnOnTrackingProtection__block_invoke_2;
    v10[3] = &unk_1E848F548;
    v11 = v5;
    v12 = v7;
    v8 = v7;
    [v11 dismissViewControllerAnimated:1 completion:v10];
  }

  return v6 != 0;
}

- (void)_presentPrivacyReport
{
  v3 = [SFPrivacyReportViewController alloc];
  v4 = [(_SFBrowserDocument *)self->_document webView];
  v5 = [(SFPrivacyReportViewController *)v3 initWithWebView:v4];

  [(SFPrivacyReportViewController *)v5 setWebsiteDetailShouldSeparateBlockedTrackers:[(_SFBrowserDocument *)self->_document privacyReportShouldSeparateBlockedTrackers]];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v6 = [(_SFBrowserDocument *)self->_document allBrowserHistories];
    [(SFPrivacyReportViewController *)v5 setHistories:v6];

    v7 = [(_SFBrowserDocument *)self->_document allBrowserProfileIdentifiers];
    [(SFPrivacyReportViewController *)v5 setProfileIdentifiers:v7];
  }

  v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  [v8 setModalPresentationStyle:1];
  v9 = [(_SFPageFormatMenuPrivacyReportController *)self delegate];
  v10 = [v9 viewControllerForPresentationForItemController:self];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65___SFPageFormatMenuPrivacyReportController__presentPrivacyReport__block_invoke;
  v13[3] = &unk_1E848F548;
  v14 = v10;
  v15 = v8;
  v11 = v8;
  v12 = v10;
  [v12 dismissViewControllerAnimated:1 completion:v13];
}

- (void)_initializeManagedProfileConnection
{
  v3 = [MEMORY[0x1E69ADFB8] sharedConnection];
  profileConnection = self->_profileConnection;
  self->_profileConnection = v3;

  v5 = objc_opt_respondsToSelector();
  v6 = self->_profileConnection;
  if (v5)
  {

    [(MCProfileConnection *)v6 registerObserver:self];
  }

  else
  {

    [(MCProfileConnection *)v6 addObserver:self];
  }
}

- (void)_dismissPromptIfTrackerProtectionEnabled
{
  if (+[SFBrowserDocumentTrackerInfo trackingPreventionEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_enableTrackerProtectionViewController);
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }
}

- (_SFPageFormatMenuItemControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end