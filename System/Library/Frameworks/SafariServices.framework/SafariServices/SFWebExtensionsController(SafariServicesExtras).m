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
  v2 = [a1 _dialogController];
  [v2 cancelPresentedDialogIfNeeded];

  v3 = [a1 _dialogController];
  [v3 presentNextDialogIfNeeded];
}

- (id)_dialogController
{
  v2 = *MEMORY[0x1E69B1C80];
  v3 = *(a1 + v2);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B1B08]);
    v5 = *(a1 + v2);
    *(a1 + v2) = v4;

    [*(a1 + v2) setViewControllerPresenter:a1];
    [*(a1 + v2) setDialogPresenter:a1];
    [*(a1 + v2) setDelegate:a1];
    v3 = *(a1 + v2);
  }

  return v3;
}

- (BOOL)_createTabWithURL:()SafariServicesExtras inWindow:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 navigationIntentHandler];
  if (v8)
  {
    v9 = [MEMORY[0x1E69B1C50] builderWithModifierFlags:0];
    [v9 setPrefersOpenInNewTab:1];
    [v9 setPreferredTabOrder:1];
    [v9 setPrefersRelationToSourceTab:0];
    v10 = [v9 navigationIntentWithURL:v6];
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained(&a1[*MEMORY[0x1E69C98F0]]);
      v12 = [WeakRetained sfWebExtensionsController:a1 navigationIntentUUIDForWindow:v7];
      [v10 setSourceWindowUUID:v12];
    }

    [v8 dispatchNavigationIntent:v10];
  }

  return v8 != 0;
}

- (void)showAccessRequestDialogForExtension:()SafariServicesExtras URLs:callingAPIName:showMoreOptionsForAlwaysAllow:includeDenyButton:responseBlock:
{
  v14 = a8;
  v15 = a5;
  v16 = a3;
  v17 = [a4 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_61];
  [a1 showAccessRequestDialogForExtension:v16 domains:v17 callingAPIName:v15 showMoreOptionsForAlwaysAllow:a6 includeDenyButton:a7 responseBlock:v14];
}

- (void)showAccessRequestDialogForExtension:()SafariServicesExtras domains:callingAPIName:showMoreOptionsForAlwaysAllow:includeDenyButton:responseBlock:
{
  v13 = a3;
  v14 = a4;
  v15 = a8;
  if ([v14 count])
  {
    v16 = [v14 safari_sortedArrayUsingFinderLikeSorting];
    v17 = [a1 _dialogController];
    v18 = [MEMORY[0x1E69B1B00] webExtensionPermissionDialogWithExtension:v13 domains:v16 showMoreOptionsForAlwaysAllow:a6 includeDenyButton:a7 completionHandler:v15];
    [v17 presentDialog:v18];
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
  v16 = [a1 _dialogController];
  v13 = MEMORY[0x1E69B1B00];
  v14 = [v11 safari_sortedArrayUsingFinderLikeSorting];

  v15 = [v13 webExtensionAlwaysAllowDialogWithExtension:v12 domains:v14 includeDenyButton:a5 completionHandler:v10];

  [v16 presentDialog:v15];
}

- (void)showPromptForExtensionDisabledBecauseItDoesNotSupportThisVersionOfSafariWithMessage:()SafariServicesExtras extensionIdentifier:
{
  v4 = a3;
  v8 = [a1 _dialogController];
  v5 = MEMORY[0x1E69B1B00];
  v6 = _WBSLocalizedString();
  v7 = [v5 genericErrorDialogWithTitle:v6 message:v4 applicationModal:1];

  [v8 presentDialog:v7];
}

- (void)showPromptForBlocklistedExtension:()SafariServicesExtras extensionName:
{
  v5 = a4;
  v14 = [a1 _dialogController];
  v6 = MEMORY[0x1E69B1B00];
  v7 = MEMORY[0x1E696AEC0];
  v8 = _WBSLocalizedString();
  v9 = [v7 localizedStringWithFormat:v8, v5];
  v10 = MEMORY[0x1E696AEC0];
  v11 = _WBSLocalizedString();
  v12 = [v10 localizedStringWithFormat:v11, v5];

  v13 = [v6 genericErrorDialogWithTitle:v9 message:v12 applicationModal:1];
  [v14 presentDialog:v13];
}

- (void)showPromptForExpiredExtension:()SafariServicesExtras extensionName:
{
  v5 = a4;
  v11 = [a1 _dialogController];
  v6 = MEMORY[0x1E69B1B00];
  v7 = MEMORY[0x1E696AEC0];
  v8 = _WBSLocalizedString();
  v9 = [v7 localizedStringWithFormat:v8, v5];

  v10 = [v6 genericErrorDialogWithTitle:v9 message:0 applicationModal:1];
  [v11 presentDialog:v10];
}

- (void)showPromptForUntrustedExtension:()SafariServicesExtras
{
  v2 = [a1 webExtensionForExtension:?];
  v12 = [v2 displayName];

  v3 = [a1 _dialogController];
  v4 = MEMORY[0x1E69B1B00];
  v5 = MEMORY[0x1E696AEC0];
  v6 = _WBSLocalizedString();
  v7 = [v5 localizedStringWithFormat:v6, v12];
  v8 = MEMORY[0x1E696AEC0];
  v9 = _WBSLocalizedString();
  v10 = [v8 localizedStringWithFormat:v9];
  v11 = [v4 genericErrorDialogWithTitle:v7 message:v10 applicationModal:1];
  [v3 presentDialog:v11];
}

- (void)_showPromptForExtensionDisabledBecauseItHasRequestedAdditionalPermissions:()SafariServicesExtras extensionIdentifier:
{
  v4 = a3;
  v6 = [a1 _dialogController];
  v5 = [MEMORY[0x1E69B1B00] webExtensionDisabledBecauseItRequestsAdditionalPermissionsDialogForExtension:v4 completionHandler:&__block_literal_global_21_1];

  [v6 presentDialog:v5];
}

- (void)createNewTabFromBackgroundPageWithURL:()SafariServicesExtras
{
  v4 = *MEMORY[0x1E69C98F0];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&a1[v4]);
  v6 = [WeakRetained sfWebExtensionsControllerLastFocusedWindow:a1];
  [a1 _createTabWithURL:v5 inWindow:v6];
}

- (void)dialogController:()SafariServicesExtras presentViewController:withAdditionalAnimations:
{
  v7 = a5;
  v8 = a4;
  v9 = [a1 viewControllerToPresentDialogsFrom];
  [v9 presentViewController:v8 animated:1 completion:0];
  [v8 _sf_animateAlongsideTransitionOrPerform:v7];
}

- (void)dialogController:()SafariServicesExtras dismissViewController:withAdditionalAnimations:
{
  v6 = a5;
  v8 = a4;
  v7 = [v8 presentingViewController];
  [v7 dismissViewControllerAnimated:1 completion:0];

  [v8 _sf_animateAlongsideTransitionOrPerform:v6];
}

- (uint64_t)dialogController:()SafariServicesExtras presentationPolicyForDialog:
{
  v1 = [a1 viewControllerToPresentDialogsFrom];
  v2 = v1 == 0;

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