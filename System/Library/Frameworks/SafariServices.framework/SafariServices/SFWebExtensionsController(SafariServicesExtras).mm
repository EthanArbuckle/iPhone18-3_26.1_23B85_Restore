@interface SFWebExtensionsController(SafariServicesExtras)
- (BOOL)_createTabWithURL:()SafariServicesExtras inWindow:;
- (id)_dialogController;
- (uint64_t)dialogController:()SafariServicesExtras presentationPolicyForDialog:;
- (void)_showPromptForExtensionDisabledBecauseItHasRequestedAdditionalPermissions:()SafariServicesExtras extensionIdentifier:;
- (void)cancelPresentedDialogIfNecessaryAndUnqueuePendingWebExtensionDialogs;
- (void)createNewTabFromBackgroundPageWithURL:()SafariServicesExtras;
- (void)dialogController:()SafariServicesExtras dismissViewController:withAdditionalAnimations:;
- (void)dialogController:()SafariServicesExtras presentViewController:withAdditionalAnimations:;
- (void)dismissDialogView:()SafariServicesExtras withAdditionalAnimations:forDialogController:;
- (void)presentDialogView:()SafariServicesExtras withAdditionalAnimations:forDialogController:;
- (void)showAccessRequestDialogForExtension:()SafariServicesExtras URLs:callingAPIName:showMoreOptionsForAlwaysAllow:includeDenyButton:responseBlock:;
- (void)showAccessRequestDialogForExtension:()SafariServicesExtras domains:callingAPIName:showMoreOptionsForAlwaysAllow:includeDenyButton:responseBlock:;
- (void)showAlwaysAllowConfirmationDialogForExtension:()SafariServicesExtras domains:includeDenyButton:responseBlock:;
- (void)showPromptForBlocklistedExtension:()SafariServicesExtras extensionName:;
- (void)showPromptForExpiredExtension:()SafariServicesExtras extensionName:;
- (void)showPromptForExtensionDisabledBecauseItDoesNotSupportThisVersionOfSafariWithMessage:()SafariServicesExtras extensionIdentifier:;
- (void)showPromptForUntrustedExtension:()SafariServicesExtras;
@end

@implementation SFWebExtensionsController(SafariServicesExtras)

- (void)cancelPresentedDialogIfNecessaryAndUnqueuePendingWebExtensionDialogs
{
  _dialogController = [self _dialogController];
  [_dialogController cancelPresentedDialogIfNeeded];

  _dialogController2 = [self _dialogController];
  [_dialogController2 presentNextDialogIfNeeded];
}

- (id)_dialogController
{
  v2 = *MEMORY[0x1E69B1C80];
  v3 = *(self + v2);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B1B08]);
    v5 = *(self + v2);
    *(self + v2) = v4;

    [*(self + v2) setViewControllerPresenter:self];
    [*(self + v2) setDialogPresenter:self];
    [*(self + v2) setDelegate:self];
    v3 = *(self + v2);
  }

  return v3;
}

- (BOOL)_createTabWithURL:()SafariServicesExtras inWindow:
{
  v6 = a3;
  v7 = a4;
  navigationIntentHandler = [self navigationIntentHandler];
  if (navigationIntentHandler)
  {
    v9 = [MEMORY[0x1E69B1C50] builderWithModifierFlags:0];
    [v9 setPrefersOpenInNewTab:1];
    [v9 setPreferredTabOrder:1];
    [v9 setPrefersRelationToSourceTab:0];
    v10 = [v9 navigationIntentWithURL:v6];
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained(&self[*MEMORY[0x1E69C98F0]]);
      v12 = [WeakRetained sfWebExtensionsController:self navigationIntentUUIDForWindow:v7];
      [v10 setSourceWindowUUID:v12];
    }

    [navigationIntentHandler dispatchNavigationIntent:v10];
  }

  return navigationIntentHandler != 0;
}

- (void)showAccessRequestDialogForExtension:()SafariServicesExtras URLs:callingAPIName:showMoreOptionsForAlwaysAllow:includeDenyButton:responseBlock:
{
  v14 = a8;
  v15 = a5;
  v16 = a3;
  v17 = [a4 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_61];
  [self showAccessRequestDialogForExtension:v16 domains:v17 callingAPIName:v15 showMoreOptionsForAlwaysAllow:a6 includeDenyButton:a7 responseBlock:v14];
}

- (void)showAccessRequestDialogForExtension:()SafariServicesExtras domains:callingAPIName:showMoreOptionsForAlwaysAllow:includeDenyButton:responseBlock:
{
  v13 = a3;
  v14 = a4;
  v15 = a8;
  if ([v14 count])
  {
    safari_sortedArrayUsingFinderLikeSorting = [v14 safari_sortedArrayUsingFinderLikeSorting];
    _dialogController = [self _dialogController];
    v18 = [MEMORY[0x1E69B1B00] webExtensionPermissionDialogWithExtension:v13 domains:safari_sortedArrayUsingFinderLikeSorting showMoreOptionsForAlwaysAllow:a6 includeDenyButton:a7 completionHandler:v15];
    [_dialogController presentDialog:v18];
  }

  else
  {
    v19 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SFWebExtensionsController(SafariServicesExtras) showAccessRequestDialogForExtension:v19 domains:? callingAPIName:? showMoreOptionsForAlwaysAllow:? includeDenyButton:? responseBlock:?];
    }
  }
}

- (void)showAlwaysAllowConfirmationDialogForExtension:()SafariServicesExtras domains:includeDenyButton:responseBlock:
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  _dialogController = [self _dialogController];
  v13 = MEMORY[0x1E69B1B00];
  safari_sortedArrayUsingFinderLikeSorting = [v11 safari_sortedArrayUsingFinderLikeSorting];

  v15 = [v13 webExtensionAlwaysAllowDialogWithExtension:v12 domains:safari_sortedArrayUsingFinderLikeSorting includeDenyButton:a5 completionHandler:v10];

  [_dialogController presentDialog:v15];
}

- (void)showPromptForExtensionDisabledBecauseItDoesNotSupportThisVersionOfSafariWithMessage:()SafariServicesExtras extensionIdentifier:
{
  v4 = a3;
  _dialogController = [self _dialogController];
  v5 = MEMORY[0x1E69B1B00];
  v6 = _WBSLocalizedString();
  v7 = [v5 genericErrorDialogWithTitle:v6 message:v4 applicationModal:1];

  [_dialogController presentDialog:v7];
}

- (void)showPromptForBlocklistedExtension:()SafariServicesExtras extensionName:
{
  v5 = a4;
  _dialogController = [self _dialogController];
  v6 = MEMORY[0x1E69B1B00];
  v7 = MEMORY[0x1E696AEC0];
  v8 = _WBSLocalizedString();
  v9 = [v7 localizedStringWithFormat:v8, v5];
  v10 = MEMORY[0x1E696AEC0];
  v11 = _WBSLocalizedString();
  v12 = [v10 localizedStringWithFormat:v11, v5];

  v13 = [v6 genericErrorDialogWithTitle:v9 message:v12 applicationModal:1];
  [_dialogController presentDialog:v13];
}

- (void)showPromptForExpiredExtension:()SafariServicesExtras extensionName:
{
  v5 = a4;
  _dialogController = [self _dialogController];
  v6 = MEMORY[0x1E69B1B00];
  v7 = MEMORY[0x1E696AEC0];
  v8 = _WBSLocalizedString();
  v9 = [v7 localizedStringWithFormat:v8, v5];

  v10 = [v6 genericErrorDialogWithTitle:v9 message:0 applicationModal:1];
  [_dialogController presentDialog:v10];
}

- (void)showPromptForUntrustedExtension:()SafariServicesExtras
{
  v2 = [self webExtensionForExtension:?];
  displayName = [v2 displayName];

  _dialogController = [self _dialogController];
  v4 = MEMORY[0x1E69B1B00];
  v5 = MEMORY[0x1E696AEC0];
  v6 = _WBSLocalizedString();
  v7 = [v5 localizedStringWithFormat:v6, displayName];
  v8 = MEMORY[0x1E696AEC0];
  v9 = _WBSLocalizedString();
  v10 = [v8 localizedStringWithFormat:v9];
  v11 = [v4 genericErrorDialogWithTitle:v7 message:v10 applicationModal:1];
  [_dialogController presentDialog:v11];
}

- (void)_showPromptForExtensionDisabledBecauseItHasRequestedAdditionalPermissions:()SafariServicesExtras extensionIdentifier:
{
  v4 = a3;
  _dialogController = [self _dialogController];
  v5 = [MEMORY[0x1E69B1B00] webExtensionDisabledBecauseItRequestsAdditionalPermissionsDialogForExtension:v4 completionHandler:&__block_literal_global_21_1];

  [_dialogController presentDialog:v5];
}

- (void)createNewTabFromBackgroundPageWithURL:()SafariServicesExtras
{
  v4 = *MEMORY[0x1E69C98F0];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self[v4]);
  v6 = [WeakRetained sfWebExtensionsControllerLastFocusedWindow:self];
  [self _createTabWithURL:v5 inWindow:v6];
}

- (void)dialogController:()SafariServicesExtras presentViewController:withAdditionalAnimations:
{
  v7 = a5;
  v8 = a4;
  viewControllerToPresentDialogsFrom = [self viewControllerToPresentDialogsFrom];
  [viewControllerToPresentDialogsFrom presentViewController:v8 animated:1 completion:0];
  [v8 _sf_animateAlongsideTransitionOrPerform:v7];
}

- (void)dialogController:()SafariServicesExtras dismissViewController:withAdditionalAnimations:
{
  v6 = a5;
  v8 = a4;
  presentingViewController = [v8 presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  [v8 _sf_animateAlongsideTransitionOrPerform:v6];
}

- (uint64_t)dialogController:()SafariServicesExtras presentationPolicyForDialog:
{
  viewControllerToPresentDialogsFrom = [self viewControllerToPresentDialogsFrom];
  v2 = viewControllerToPresentDialogsFrom == 0;

  return 2 * v2;
}

- (void)presentDialogView:()SafariServicesExtras withAdditionalAnimations:forDialogController:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  __break(0xC471u);
}

- (void)dismissDialogView:()SafariServicesExtras withAdditionalAnimations:forDialogController:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  __break(0xC471u);
}

@end