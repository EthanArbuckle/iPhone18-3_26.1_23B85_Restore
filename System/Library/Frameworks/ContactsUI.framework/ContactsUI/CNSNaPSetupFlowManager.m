@interface CNSNaPSetupFlowManager
+ (id)descriptorForRequiredKeys;
+ (id)log;
- (BOOL)multiplePhoneNumbersTiedToAppleID;
- (BOOL)shouldShowItemEditorForContactImage:(id)a3;
- (CNContactImageStore)contactImageStore;
- (CNPresenterDelegate)presenterDelegate;
- (CNSNaPSetupFlowManager)initWithBaseViewController:(id)a3 contactStore:(id)a4 mode:(int64_t)a5 presenterDelegate:(id)a6;
- (CNSNaPSetupFlowManagerDelegate)delegate;
- (id)contactPosterFromWallpaper:(id)a3;
- (id)posterEditOptionsNavigationControllerForContact:(id)a3;
- (id)posterOnboardingWelcomeNavigationControllerForContact:(id)a3 hasOptionToSkip:(BOOL)a4 hasExistingNickname:(BOOL)a5;
- (id)posterPreviewControllerWithPosterConfiguration:(id)a3 providerItem:(id)a4 mode:(int64_t)a5;
- (id)providerItemForRecentAvatar:(id)a3 inView:(id)a4;
- (id)recentAvatarFromPendingVisualIdentity;
- (id)recentPosterFromPendingVisualIdentity;
- (id)sharingSettingsViewControllerForOnboarding;
- (id)wallpaperGalleryNavigationController;
- (id)wallpaperGalleryNavigationControllerForMode:(int64_t)a3;
- (int64_t)defaultModalPresentationStyle;
- (unint64_t)recentAvatarsCountForContactIdentifier:(id)a3;
- (void)avatarEditingDidFinishWithProviderItem:(id)a3 fromViewController:(id)a4;
- (void)avatarPreviewViewController:(id)a3 didFinishWithContactImage:(id)a4;
- (void)avatarPreviewViewControllerDidSelectCustomizeLater:(id)a3;
- (void)cleanupTemporaryPosterArchiveDataIfNeededFromURL:(id)a3 fileManager:(id)a4;
- (void)cleanupTemporaryPosterConfigurationsFromURL:(id)a3 fileManager:(id)a4;
- (void)cleanupTemporaryPosterData;
- (void)dealloc;
- (void)dismissNavigationController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)dismissOnboardingIfNeeded;
- (void)dismissPosterEditingFlow;
- (void)dismissViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)editAvatar:(id)a3 inView:(id)a4;
- (void)finishFlowAndSaveAsRecent:(BOOL)a3;
- (void)imagePickerController:(id)a3 didFinishWithProviderItem:(id)a4;
- (void)linkCurrentImageToCurrentPoster;
- (void)notifyDelegateOfUpdatesAndDismissIfNeeded;
- (void)posterEditOptionsViewController:(id)a3 didEditPosterWithContext:(id)a4;
- (void)posterEditOptionsViewController:(id)a3 didLoadCurrentAvatar:(id)a4 poster:(id)a5 backedByRecents:(BOOL)a6;
- (void)posterEditOptionsViewController:(id)a3 didSelectAvatar:(id)a4 poster:(id)a5;
- (void)posterEditOptionsViewController:(id)a3 didSelectEditAvatarWithContext:(id)a4;
- (void)posterEditOptionsViewControllerDidCancel:(id)a3;
- (void)posterEditOptionsViewControllerDidDeleteCurrentPosterPair:(id)a3;
- (void)posterEditOptionsViewControllerDidSelectCreateNew:(id)a3;
- (void)posterOnboardingViewControllerDidDidTapCancel:(id)a3;
- (void)posterOnboardingViewControllerDidTapContinue:(id)a3;
- (void)posterPreviewViewController:(id)a3 didFinishWithPosterConfiguration:(id)a4;
- (void)posterPreviewViewControllerDidSelectCustomizeLater:(id)a3;
- (void)posterPreviewViewControllerDidSelectUseDifferentPoster:(id)a3;
- (void)presentCreateNewAvatarViewControllerFromViewController:(id)a3;
- (void)presentNavigationController:(id)a3;
- (void)previewPendingPoster:(id)a3;
- (void)pushNextStepWithViewController:(id)a3;
- (void)resetEditingState;
- (void)saveCurrentVisualIdentityIfNeeded;
- (void)saveRecentAvatar:(id)a3 withPairedPoster:(id)a4 ignoreExisting:(BOOL)a5;
- (void)saveRecentPoster:(id)a3;
- (void)saveRecentVisualIdentity;
- (void)setGalleryNavigationController:(id)a3;
- (void)sharingEditAvatarFlowManager:(id)a3 didFinishWithProviderItem:(id)a4 fromViewController:(id)a5;
- (void)sharingEditAvatarFlowManagerDidCancel:(id)a3;
- (void)sharingSettingsViewController:(id)a3 didSelectSharingAudience:(unint64_t)a4;
- (void)sharingSettingsViewController:(id)a3 didUpdateSharingState:(BOOL)a4;
- (void)sharingSettingsViewController:(id)a3 didUpdateWithSharingResult:(id)a4;
- (void)startContactCardFlowForContact:(id)a3 isEditing:(BOOL)a4;
- (void)startEditFlowWithSNaPContact:(id)a3;
- (void)startOnboardingFlowWithNicknameContact:(id)a3 meContact:(id)a4;
- (void)submitAndResetFlowReporter;
- (void)suggestionsGalleryViewController:(id)a3 didFinishWithPosterConfiguration:(id)a4 name:(id)a5;
- (void)suggestionsGalleryViewController:(id)a3 didSelectAvatarSourceType:(int64_t)a4 name:(id)a5;
- (void)suggestionsGalleryViewController:(id)a3 didSelectSuggestedAvatar:(id)a4 name:(id)a5;
- (void)suggestionsGalleryViewControllerDidCancel:(id)a3;
- (void)suggestionsGalleryViewControllerDidSelectCustomizeLater:(id)a3;
- (void)updateEditingContact:(id)a3 watchWallpaperImageDataForConfiguration:(id)a4 completion:(id)a5;
- (void)updateEditingContactWithVisualIdentity:(id)a3;
- (void)updateEditingContextWithPendingPoster:(id)a3;
- (void)updateEditingStateForAction:(int64_t)a3;
- (void)updateEditingStateForRevertedAction:(int64_t)a3 dismissingSetupFlow:(BOOL)a4;
- (void)updatePendingVisualIdentityWithAvatar:(id)a3 contactPoster:(id)a4 viewController:(id)a5;
- (void)updatePendingVisualIdentityWithAvatar:(id)a3 pendingPosterEdit:(id)a4 viewController:(id)a5;
- (void)updatePendingVisualIdentityWithWallpaper:(id)a3;
- (void)validateAndUpdateAvatarDataForVisualIdentity:(id)a3;
- (void)viewControllerDidSelectCustomizePosterLater:(id)a3;
- (void)writeToDefaultsPosterSkippedIfNeeded;
@end

@implementation CNSNaPSetupFlowManager

- (CNPresenterDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);

  return WeakRetained;
}

- (CNSNaPSetupFlowManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)multiplePhoneNumbersTiedToAppleID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getIMNicknameControllerClass_softClass_10751;
  v9 = getIMNicknameControllerClass_softClass_10751;
  if (!getIMNicknameControllerClass_softClass_10751)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getIMNicknameControllerClass_block_invoke_10752;
    v5[3] = &unk_1E74E7518;
    v5[4] = &v6;
    __getIMNicknameControllerClass_block_invoke_10752(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return [v2 multiplePhoneNumbersTiedToAppleID];
}

- (void)cleanupTemporaryPosterConfigurationsFromURL:(id)a3 fileManager:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 URLByAppendingPathComponent:@"PosterConfigurations"];
  v7 = [v6 path];
  v8 = [v5 fileExistsAtPath:v7];

  if (v8)
  {
    v13 = 0;
    v9 = [v5 removeItemAtURL:v6 error:&v13];
    v10 = v13;
    if ((v9 & 1) == 0)
    {
      v11 = CNUILogPosters();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v10 localizedDescription];
        *buf = 138412290;
        v15 = v12;
        _os_log_error_impl(&dword_199A75000, v11, OS_LOG_TYPE_ERROR, "Failed to clean up poster configurations from temporary directory, %@", buf, 0xCu);
      }
    }
  }
}

- (void)cleanupTemporaryPosterArchiveDataIfNeededFromURL:(id)a3 fileManager:(id)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  if (([v7 BOOLForKey:@"CNPostersHasPerformedTemporaryArchiveCleanup"] & 1) == 0)
  {
    v20 = v7;
    v32[0] = *MEMORY[0x1E695DC30];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v21 = v5;
    v9 = [v6 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v8 options:0 error:0];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [v15 pathExtension];
          if (([v16 isEqualToString:@"apa"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"zapa"))
          {
            v22 = 0;
            v17 = [v6 removeItemAtURL:v15 error:&v22];
            v18 = v22;
            if ((v17 & 1) == 0)
            {
              v19 = CNUILogPosters();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v28 = v16;
                v29 = 2112;
                v30 = v18;
                _os_log_error_impl(&dword_199A75000, v19, OS_LOG_TYPE_ERROR, "Failed to clean up %@ type file from temporary directory, %@", buf, 0x16u);
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v12);
    }

    v7 = v20;
    [v20 setBool:1 forKey:@"CNPostersHasPerformedTemporaryArchiveCleanup"];

    v5 = v21;
  }
}

- (void)cleanupTemporaryPosterData
{
  v3 = [MEMORY[0x1E6996820] defaultProvider];
  v4 = [v3 backgroundScheduler];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__CNSNaPSetupFlowManager_cleanupTemporaryPosterData__block_invoke;
  v5[3] = &unk_1E74E6A88;
  v5[4] = self;
  [v4 performBlock:v5];
}

void __52__CNSNaPSetupFlowManager_cleanupTemporaryPosterData__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = NSTemporaryDirectory();
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
  [*(a1 + 32) cleanupTemporaryPosterArchiveDataIfNeededFromURL:v3 fileManager:v4];
  [*(a1 + 32) cleanupTemporaryPosterConfigurationsFromURL:v3 fileManager:v4];
}

- (void)resetEditingState
{
  [(CNSNaPSetupFlowManager *)self setEditingState:0];

  [(CNSNaPSetupFlowManager *)self setAvatarPosterEditingContext:0];
}

- (void)updateEditingStateForRevertedAction:(int64_t)a3 dismissingSetupFlow:(BOOL)a4
{
  v4 = a4;
  [(CNSNaPSetupFlowManager *)self setEditingState:[CNMeCardSharingSettingsEditingStateMachine stateAfterRevertingAction:a3 onState:[(CNSNaPSetupFlowManager *)self editingState]]];
  if (v4)
  {

    [(CNSNaPSetupFlowManager *)self setAvatarPosterEditingContext:0];
  }
}

- (void)updateEditingStateForAction:(int64_t)a3
{
  v4 = [CNMeCardSharingSettingsEditingStateMachine stateAfterPerformingAction:a3 onState:[(CNSNaPSetupFlowManager *)self editingState]];

  [(CNSNaPSetupFlowManager *)self setEditingState:v4];
}

- (id)providerItemForRecentAvatar:(id)a3 inView:(id)a4
{
  v6 = a3;
  v7 = [a4 effectiveUserInterfaceLayoutDirection] == 1;
  v8 = [CNPhotoPickerRecentsProvider alloc];
  v9 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  v10 = [(CNPhotoPickerRecentsProvider *)v8 initWithVisualIdentity:v9];

  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v11 scale];
  v13 = v12;
  v14 = [(CNSNaPSetupFlowManager *)self providerItemRenderingQueue];
  v15 = [(CNSNaPSetupFlowManager *)self providerItemCallbackQueue];
  v16 = [(CNPhotoPickerRecentsProvider *)v10 providerItemForContactImage:v6 size:v7 scale:v14 RTL:v15 renderingQueue:1 callbackQueue:250.0 fallbackToDefaultItem:250.0, v13];

  return v16;
}

- (void)saveRecentPoster:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CE00]);
    v6 = MEMORY[0x1E695CDD8];
    v7 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    v8 = [v7 identifier];
    v9 = [v6 requestToCreatePoster:v4 forContactIdentifier:v8];

    v14 = 0;
    [v5 performCreateRequest:v9 error:&v14];
    v10 = v14;
    if (v10)
    {
      v11 = [objc_opt_class() log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
        v13 = [v12 identifier];
        *buf = 138412290;
        v16 = v13;
        _os_log_impl(&dword_199A75000, v11, OS_LOG_TYPE_INFO, "Failed to save item to recent poster store for contact identifier <%@>", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_INFO, "Contact poster is nil, not saving to recents", buf, 2u);
    }
  }
}

- (void)saveRecentAvatar:(id)a3 withPairedPoster:(id)a4 ignoreExisting:(BOOL)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    if (a5)
    {
      v10 = 0;
    }

    else
    {
      v12 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
      v10 = [v12 existingAvatar];
    }

    [v8 setPairedPoster:v9];
    v13 = [(CNSNaPSetupFlowManager *)self contactImageStore];
    v14 = [(CNSNaPSetupFlowManager *)self editingContact];
    v15 = [v14 identifier];

    if (v10)
    {
      v16 = MEMORY[0x1E695CD98];
      v17 = [v10 identifier];
      v18 = [v16 requestToDeleteImageForIdentifier:v17];

      v26 = 0;
      LOBYTE(v17) = [v13 performDeleteRequest:v18 error:&v26];
      v19 = v26;
      if ((v17 & 1) == 0)
      {
        v20 = [objc_opt_class() log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_199A75000, v20, OS_LOG_TYPE_ERROR, "Failed to delete existing edited item", buf, 2u);
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v21 = [MEMORY[0x1E695CD90] requestToCreateRecentImage:v8 forContactIdentifier:v15];
    v25 = v19;
    v22 = [v13 performCreateRequest:v21 error:&v25];
    v23 = v25;

    if ((v22 & 1) == 0)
    {
      v24 = [objc_opt_class() log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v15;
        _os_log_impl(&dword_199A75000, v24, OS_LOG_TYPE_INFO, "Failed to save item to recent image store for contact identifier <%@>", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = [objc_opt_class() log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v11, OS_LOG_TYPE_INFO, "Contact image is nil, saving poster without any paired avatar", buf, 2u);
    }

    [(CNSNaPSetupFlowManager *)self saveRecentPoster:v9];
  }
}

- (id)contactPosterFromWallpaper:(id)a3
{
  v3 = a3;
  v4 = [v3 posterArchiveData];
  if (v4)
  {
    v5 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:v4 error:0];
    v6 = [v5 serverUUID];
    v7 = [v6 UUIDString];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v11 = [MEMORY[0x1E696AFB0] UUID];
      v9 = [v11 UUIDString];
    }

    v12 = objc_alloc(MEMORY[0x1E695CDD0]);
    v13 = [MEMORY[0x1E695DF00] now];
    v10 = [v12 initWithIdentifier:v9 posterData:v4 lastUsedDate:v13];

    [v10 setContentIsSensitive:{objc_msgSend(v3, "contentIsSensitive")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)recentPosterFromPendingVisualIdentity
{
  v3 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  v4 = [v3 wallpaper];
  v5 = [(CNSNaPSetupFlowManager *)self contactPosterFromWallpaper:v4];

  return v5;
}

- (id)recentAvatarFromPendingVisualIdentity
{
  v3 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
  v4 = [v3 updatedAvatar];

  if (!v4)
  {
    v5 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    v6 = [v5 imageData];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x1E695CD88]);
      v8 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
      [v8 cropRect];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [MEMORY[0x1E695DF00] now];
      v4 = [v7 initWithImageData:v6 cropRect:v17 lastUsedDate:{v10, v12, v14, v16}];

      v18 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
      [v4 setSource:{objc_msgSend(v18, "contactImageSource")}];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)linkCurrentImageToCurrentPoster
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNSNaPSetupFlowManager *)self currentContactImage];

  if (v3)
  {
    v4 = [(CNSNaPSetupFlowManager *)self currentContactImage];
    v5 = [v4 encodingType];

    v6 = [(CNSNaPSetupFlowManager *)self currentContactPoster];

    if (v6)
    {
      v7 = [(CNSNaPSetupFlowManager *)self currentContactPoster];
      v8 = [v7 pairedImage];

      if (!v8)
      {
        v9 = [(CNSNaPSetupFlowManager *)self editingContact];
        v10 = [v9 identifier];

        if (v10)
        {
          v11 = MEMORY[0x1E695CDF8];
          v19[0] = v10;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
          v13 = [v11 currentPostersRequestForContactIdentifiers:v12];

          v14 = objc_alloc_init(MEMORY[0x1E695CE00]);
          v15 = [v14 performFetchRequest:v13 error:0];
          v16 = [v15 firstObject];
        }

        else
        {
          v16 = 0;
        }

        v17 = [(CNSNaPSetupFlowManager *)self currentContactImage];
        [(CNSNaPSetupFlowManager *)self saveRecentAvatar:v17 withPairedPoster:v16 ignoreExisting:1];
      }
    }

    else if (v5 != 1)
    {
      v18 = [(CNSNaPSetupFlowManager *)self currentContactImage];
      [CNSNaPSetupFlowManager saveRecentAvatar:"saveRecentAvatar:withPairedPoster:ignoreExisting:" withPairedPoster:? ignoreExisting:?];
    }
  }
}

- (void)saveRecentVisualIdentity
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:22];

  if ((v5 & 1) == 0)
  {
    v7 = [(CNSNaPSetupFlowManager *)self recentAvatarFromPendingVisualIdentity];
    v6 = [(CNSNaPSetupFlowManager *)self recentPosterFromPendingVisualIdentity];
    [(CNSNaPSetupFlowManager *)self saveRecentAvatar:v7 withPairedPoster:v6 ignoreExisting:0];
  }
}

- (void)saveCurrentVisualIdentityIfNeeded
{
  v3 = [(CNSNaPSetupFlowManager *)self currentContactImage];
  if (v3)
  {
  }

  else
  {
    v4 = [(CNSNaPSetupFlowManager *)self currentContactPoster];

    if (!v4)
    {
      return;
    }
  }

  v5 = MEMORY[0x1E695CF98];
  v6 = [(CNSNaPSetupFlowManager *)self currentContactPoster];
  v7 = [(CNSNaPSetupFlowManager *)self editingContact];
  LODWORD(v5) = [v5 shouldSaveCurrentPoster:v6 toRecentsForContact:v7];

  if (v5)
  {
    v8 = [MEMORY[0x1E69966E8] currentEnvironment];
    v9 = [v8 featureFlags];
    v10 = [v9 isFeatureEnabled:22];

    if (v10)
    {

      [(CNSNaPSetupFlowManager *)self linkCurrentImageToCurrentPoster];
    }

    else
    {
      v12 = [(CNSNaPSetupFlowManager *)self currentContactImage];
      v11 = [(CNSNaPSetupFlowManager *)self currentContactPoster];
      [(CNSNaPSetupFlowManager *)self saveRecentAvatar:v12 withPairedPoster:v11 ignoreExisting:1];
    }
  }
}

- (unint64_t)recentAvatarsCountForContactIdentifier:(id)a3
{
  v4 = MEMORY[0x1E695CFB0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(CNSNaPSetupFlowManager *)self contactStore];
  v8 = [v6 initWithContactStore:v7];

  v9 = [v8 recentImagesForContactWithIdentifier:v5];

  v10 = [(CNSNaPSetupFlowManager *)self contactImageStore];
  v11 = [v10 countForFetchRequest:v9 error:0];

  return v11;
}

- (CNContactImageStore)contactImageStore
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __43__CNSNaPSetupFlowManager_contactImageStore__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1120);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695CDA8]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 1120);
    *(v4 + 1120) = v3;

    v2 = *(*(a1 + 32) + 1120);
  }

  return v2;
}

- (void)imagePickerController:(id)a3 didFinishWithProviderItem:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CNSNaPSetupFlowManager_imagePickerController_didFinishWithProviderItem___block_invoke;
  v8[3] = &unk_1E74E77C0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 dismissViewControllerAnimated:1 completion:v8];
}

void __74__CNSNaPSetupFlowManager_imagePickerController_didFinishWithProviderItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) posterEditOptionsNavigationController];
  v3 = [*(a1 + 32) avatarEditFlowManager];
  [v3 setBaseNavigationController:v2];

  v4 = [*(a1 + 32) avatarEditFlowManager];
  [v4 presentAvatarEditorViewControllerForProviderItem:*(a1 + 40)];
}

- (void)presentCreateNewAvatarViewControllerFromViewController:(id)a3
{
  v4 = a3;
  v5 = [CNSNaPSuggestionsGalleryViewController alloc];
  v6 = [(CNSNaPSetupFlowManager *)self editingContact];
  v7 = [(CNSNaPSuggestionsGalleryViewController *)v5 initWithMode:0 contact:v6 isEditingSNaP:[(CNSNaPSetupFlowManager *)self isEditingContactCard]^ 1 isOnboarding:[(CNSNaPSetupFlowManager *)self isOnboarding]];

  [(CNSNaPSuggestionsGalleryViewController *)v7 setDelegate:self];
  v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
  [v8 setModalPresentationStyle:{-[CNSNaPSetupFlowManager defaultModalPresentationStyle](self, "defaultModalPresentationStyle")}];
  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v10 = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
    }

    v9 = v12;
  }

  v13 = [v9 presentedViewController];

  if (v13)
  {
    v14 = [v9 presentedViewController];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __81__CNSNaPSetupFlowManager_presentCreateNewAvatarViewControllerFromViewController___block_invoke;
    v19 = &unk_1E74E77C0;
    v20 = v9;
    v21 = v8;
    [v14 dismissViewControllerAnimated:1 completion:&v16];
  }

  else
  {
    [v9 presentViewController:v8 animated:1 completion:0];
  }

  v15 = [(CNSNaPSetupFlowManager *)self avatarEditFlowManager:v16];
  [v15 setBaseNavigationController:v8];
}

- (void)avatarPreviewViewControllerDidSelectCustomizeLater:(id)a3
{
  v4 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
  if (v4 && (v5 = v4, v6 = [(CNSNaPSetupFlowManager *)self editingState], v5, v6))
  {
    [(PosterEditFlowReporter *)self->_editFlowReporter didSkipAvatar];
    v7 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
    v8 = [v7 isEditingExisting];

    if (v8)
    {
      v9 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
      v10 = [v9 existingAvatar];
      v11 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
      [v11 setUpdatedAvatar:v10];
    }

    else
    {
      v13 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
      [v13 clearImage];

      v9 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
      [v9 setUpdatedAvatar:0];
    }

    [(CNSNaPSetupFlowManager *)self finishFlow];
  }

  else
  {
    v12 = CNUILogPosters();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEFAULT, "Attempted to skip with empty editing state and context", v14, 2u);
    }
  }
}

- (void)avatarPreviewViewController:(id)a3 didFinishWithContactImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CNSNaPSetupFlowManager *)self updateEditingStateForAction:0];
  v8 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [v8 clearImage];

  v9 = [MEMORY[0x1E695CD58] imageTypeStringIdentifierForImageSource:{objc_msgSend(v7, "source")}];
  v10 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [v10 setImageType:v9];

  if ([v7 source] == 3)
  {
    v11 = [CNPhotoPickerAnimojiProviderItem alloc];
    v12 = [v7 imageData];
    [v7 cropRect];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [v7 variant];
    v22 = [CNPhotoPickerVariantsManager colorVariantWithColorNamed:v21];
    v23 = [(CNPhotoPickerAnimojiProviderItem *)v11 initWithOriginalImageData:v12 cropRect:v22 backgroundColorVariant:v14, v16, v18, v20];

    v24 = MEMORY[0x1E695CF08];
    v25 = [v7 sourceIdentifier];
    v26 = [v24 avatarRecordForIdentifier:v25];

    [(CNPhotoPickerAnimojiProviderItem *)v23 setAvatarRecord:v26];
    v27 = [CNPhotoPickerRecentsProvider poseConfigurationFromContactImage:v7];
    [(CNPhotoPickerAnimojiProviderItem *)v23 setPoseConfiguration:v27];

    [(CNPhotoPickerAnimojiProviderItem *)v23 generateAllImageDatasIfNeeded];
    v28 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [(CNPhotoPickerAnimojiProviderItem *)v23 updateVisualIdentity:v28];
  }

  else
  {
    v29 = [v7 imageData];
    v30 = [v7 variant];
    v31 = [CNPhotoPickerProviderItem generateImageDataWithData:v29 filterName:v30];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = [v7 imageData];
    }

    v23 = v33;

    v34 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [v34 setImageData:v23];

    [v7 cropRect];
    v35 = [CNPhotoPickerProviderItem generateThumbnailImageDataWithData:v23 cropRect:?];
    v36 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [v36 setThumbnailImageData:v35];

    [v7 cropRect];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v26 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [v26 setCropRect:{v38, v40, v42, v44}];
  }

  v45 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
  [v45 setUpdatedAvatar:v7];

  [(PosterEditFlowReporter *)self->_editFlowReporter didModifyAvatar];
  if (-[CNSNaPSetupFlowManager editingState](self, "editingState") == 1 && ([MEMORY[0x1E69DC938] currentDevice], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "userInterfaceIdiom"), v46, (v47 & 0xFFFFFFFFFFFFFFFBLL) != 1))
  {
    v50 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
    v51 = [v50 existingPoster];
    v52 = [v51 posterData];
    v53 = v52;
    if (v52)
    {
      v54 = v52;
    }

    else
    {
      v55 = [(CNSNaPSetupFlowManager *)self editingContact];
      v56 = [v55 wallpaper];
      v54 = [v56 posterArchiveData];
    }

    if (v54)
    {
      v57 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:v54 error:0];
    }

    else
    {
      v57 = 0;
    }

    v58 = [(CNSNaPSetupFlowManager *)self posterPreviewControllerWithPosterConfiguration:v57 providerItem:0 mode:[(CNSNaPSetupFlowManager *)self mode]];
    v59 = [v6 navigationController];
    [v59 pushViewController:v58 animated:1];
  }

  else
  {
    v48 = [MEMORY[0x1E69DC938] currentDevice];
    v49 = [v48 userInterfaceIdiom];

    if ((v49 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __80__CNSNaPSetupFlowManager_avatarPreviewViewController_didFinishWithContactImage___block_invoke;
      v60[3] = &unk_1E74E6A88;
      v60[4] = self;
      [v6 dismissViewControllerAnimated:1 completion:v60];
    }

    else
    {
      [(CNSNaPSetupFlowManager *)self finishFlow];
    }
  }
}

- (void)posterOnboardingViewControllerDidDidTapCancel:(id)a3
{
  editFlowReporter = self->_editFlowReporter;
  v5 = a3;
  [(PosterEditFlowReporter *)editFlowReporter didCancelFromOnboardingWelcome];
  [(CNSNaPSetupFlowManager *)self submitAndResetFlowReporter];
  [(CNPRUISPosterSnapshotController *)self->_snapshotController releaseKeepActiveAssertionForReason:@"CNMeCardSharingEditPosterAvatarFlowManager"];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)posterOnboardingViewControllerDidTapContinue:(id)a3
{
  v7 = a3;
  if ([(CNSNaPSetupFlowManager *)self isOnboarding])
  {
    v4 = [(CNSNaPSetupFlowManager *)self wallpaperGalleryNavigationController];
    [(CNSNaPSetupFlowManager *)self setGalleryNavigationController:v4];

    v5 = [(CNSNaPSetupFlowManager *)self onboardingWelcomeNavigationController];
    v6 = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
    [v5 presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)sharingEditAvatarFlowManagerDidCancel:(id)a3
{
  [(PosterEditFlowReporter *)self->_editFlowReporter didCancelFromAvatarEditor];

  [(CNSNaPSetupFlowManager *)self updateEditingStateForRevertedAction:0 dismissingSetupFlow:0];
}

- (void)avatarEditingDidFinishWithProviderItem:(id)a3 fromViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 contactImageForMetadataStore];
  v9 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
  [v9 setUpdatedAvatar:v8];

  v10 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [v6 updateVisualIdentity:v10];

  v11 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [(CNSNaPSetupFlowManager *)self updateEditingContactWithVisualIdentity:v11];

  [(CNSNaPSetupFlowManager *)self updateEditingStateForAction:0];
  if ([(CNSNaPSetupFlowManager *)self editingState]== 1)
  {
    [(PosterEditFlowReporter *)self->_editFlowReporter didModifyAvatar];
    v12 = [MEMORY[0x1E69DC938] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      if ([(CNSNaPSetupFlowManager *)self isCreatingNewAvatar])
      {
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __84__CNSNaPSetupFlowManager_avatarEditingDidFinishWithProviderItem_fromViewController___block_invoke;
        v40[3] = &unk_1E74E6A88;
        v40[4] = self;
        [(CNSNaPSetupFlowManager *)self dismissViewController:v7 animated:1 completion:v40];
      }

      else if ([(CNSNaPSetupFlowManager *)self isOnboarding]|| [(CNSNaPSetupFlowManager *)self isEditingContactCard])
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __84__CNSNaPSetupFlowManager_avatarEditingDidFinishWithProviderItem_fromViewController___block_invoke_2;
        v39[3] = &unk_1E74E6A88;
        v39[4] = self;
        [v7 dismissViewControllerAnimated:1 completion:v39];
      }

      else
      {
        [(CNSNaPSetupFlowManager *)self finishFlow];
      }
    }

    else
    {
      if ([v6 imageType] == 4 || objc_msgSend(v6, "imageType") == 1 && (v28 = *MEMORY[0x1E6996568], objc_msgSend(v6, "assetIdentifier"), v29 = objc_claimAutoreleasedReturnValue(), LODWORD(v28) = (*(v28 + 16))(v28, v29), v29, v28))
      {
        v19 = [CNSNaPSuggestionsGalleryViewController alloc];
        v20 = [(CNSNaPSetupFlowManager *)self editingContact];
        v21 = [(CNSNaPSetupFlowManager *)self isEditingContactCard];
        v22 = [(CNSNaPSetupFlowManager *)self isOnboarding];
        v23 = [v6 assetIdentifier];
        v24 = [(CNSNaPSuggestionsGalleryViewController *)v19 initWithMode:1 contact:v20 isEditingSNaP:!v21 isOnboarding:v22 photoLibraryAssetID:v23];

        [(CNSNaPSuggestionsGalleryViewController *)v24 setDelegate:self];
      }

      else
      {
        v30 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
        v31 = [v30 existingPoster];
        v32 = [v31 posterData];
        v33 = v32;
        if (v32)
        {
          v34 = v32;
        }

        else
        {
          v35 = [(CNSNaPSetupFlowManager *)self editingContact];
          v36 = [v35 wallpaper];
          v34 = [v36 posterArchiveData];
        }

        if (v34)
        {
          v37 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:v34 error:0];
        }

        else
        {
          v37 = 0;
        }

        v24 = [(CNSNaPSetupFlowManager *)self posterPreviewControllerWithPosterConfiguration:v37 providerItem:v6 mode:[(CNSNaPSetupFlowManager *)self mode]];
      }

      v38 = [v7 navigationController];
      [v38 pushViewController:v24 animated:1];
    }
  }

  else
  {
    objc_opt_class();
    v14 = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
    v15 = [v14 topViewController];
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17)
    {
      [v17 updateWithProviderItem:v6];
      v18 = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
      [v18 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      [(PosterEditFlowReporter *)self->_editFlowReporter didModifyAvatar];
      v25 = [MEMORY[0x1E695CD58] stringIdentifierForImageType:{objc_msgSend(v6, "imageType")}];
      [(CNVisualIdentity *)self->_pendingVisualIdentity setImageType:v25];

      v26 = [v6 imageData];
      [(CNVisualIdentity *)self->_pendingVisualIdentity setImageData:v26];

      [v6 cropRect];
      [(CNVisualIdentity *)self->_pendingVisualIdentity setCropRect:?];
      if ([(CNSNaPSetupFlowManager *)self isEditingContactCard])
      {
        v27 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
        [v27 dismissViewControllerAnimated:1 completion:0];
      }

      [(CNSNaPSetupFlowManager *)self finishFlow];
    }
  }
}

- (void)sharingEditAvatarFlowManager:(id)a3 didFinishWithProviderItem:(id)a4 fromViewController:(id)a5
{
  v7 = a5;
  v8 = a4;
  [(CNSNaPSetupFlowManager *)self updateEditingStateForAction:0];
  [(CNSNaPSetupFlowManager *)self avatarEditingDidFinishWithProviderItem:v8 fromViewController:v7];
}

- (void)suggestionsGalleryViewControllerDidSelectCustomizeLater:(id)a3
{
  [(CNSNaPSetupFlowManager *)self viewControllerDidSelectCustomizePosterLater:a3];

  [(CNSNaPSetupFlowManager *)self writeToDefaultsPosterSkippedIfNeeded];
}

- (void)suggestionsGalleryViewControllerDidCancel:(id)a3
{
  v9 = a3;
  if ([(CNSNaPSetupFlowManager *)self isOnboarding])
  {
    [(PosterEditFlowReporter *)self->_editFlowReporter didCancelFromOnboardingNew];
  }

  else
  {
    v4 = [v9 mode];
    editFlowReporter = self->_editFlowReporter;
    if (v4)
    {
      [(PosterEditFlowReporter *)editFlowReporter didCancelFromPosterEditor];
    }

    else
    {
      [(PosterEditFlowReporter *)editFlowReporter didCancelFromAvatarEditor];
    }
  }

  v6 = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
  v7 = [v6 viewControllers];
  v8 = [v7 firstObject];

  if (v8 == v9)
  {
    [(CNSNaPSetupFlowManager *)self dismissViewController:v9 animated:1 completion:0];
  }

  else
  {
    [v9 dismissViewControllerAnimated:1 completion:0];
  }

  -[CNSNaPSetupFlowManager updateEditingStateForRevertedAction:dismissingSetupFlow:](self, "updateEditingStateForRevertedAction:dismissingSetupFlow:", [v9 mode] != 0, v8 == v9);
}

- (void)suggestionsGalleryViewController:(id)a3 didFinishWithPosterConfiguration:(id)a4 name:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(CNSNaPSetupFlowManager *)self updateEditingStateForAction:1];
  v11 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  v12 = [v8 given];
  v13 = [v8 family];

  [v11 updateContactWithGivenName:v12 familyName:v13];
  if (![(CNSNaPSetupFlowManager *)self isEditingContactCard])
  {
    v14 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [(CNSNaPSetupFlowManager *)self updateEditingContactWithVisualIdentity:v14];
  }

  v16 = -[CNSNaPSetupFlowManager posterPreviewControllerWithPosterConfiguration:providerItem:mode:](self, "posterPreviewControllerWithPosterConfiguration:providerItem:mode:", v9, 0, [v10 mode]);

  v15 = [v10 navigationController];

  [v15 pushViewController:v16 animated:1];
}

- (void)suggestionsGalleryViewController:(id)a3 didSelectSuggestedAvatar:(id)a4 name:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  v12 = [v8 given];
  v13 = [v8 family];

  [v11 updateContactWithGivenName:v12 familyName:v13];
  v14 = [CNPhotoPickerRecentsProvider alloc];
  v15 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  v24 = [(CNPhotoPickerRecentsProvider *)v14 initWithVisualIdentity:v15];

  v16 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v16 scale];
  v18 = v17;
  v19 = [v10 view];
  v20 = [v19 effectiveUserInterfaceLayoutDirection] == 1;
  v21 = [(CNSNaPSetupFlowManager *)self providerItemRenderingQueue];
  v22 = [(CNSNaPSetupFlowManager *)self providerItemCallbackQueue];
  v23 = [(CNPhotoPickerRecentsProvider *)v24 providerItemForContactImage:v9 size:v20 scale:v21 RTL:v22 renderingQueue:1 callbackQueue:250.0 fallbackToDefaultItem:250.0, v18];

  [(CNSNaPSetupFlowManager *)self avatarEditingDidFinishWithProviderItem:v23 fromViewController:v10];
}

- (void)suggestionsGalleryViewController:(id)a3 didSelectAvatarSourceType:(int64_t)a4 name:(id)a5
{
  v17 = a3;
  v8 = a5;
  v9 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  v10 = [v8 given];
  v11 = [v8 family];

  [v9 updateContactWithGivenName:v10 familyName:v11];
  v12 = [(CNSNaPSetupFlowManager *)self mode];
  if (v12 != [v17 mode])
  {
    v13 = [v17 navigationController];
    v14 = [(CNSNaPSetupFlowManager *)self avatarEditFlowManager];
    [v14 setBaseNavigationController:v13];
  }

  v15 = [(CNSNaPSetupFlowManager *)self avatarEditFlowManager];
  v16 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [v15 presentEditorForAvatarSourceType:a4 visualIdentity:v16 fromGalleryViewController:v17];
}

- (void)sharingSettingsViewController:(id)a3 didSelectSharingAudience:(unint64_t)a4
{
  v6 = [(CNSNaPSetupFlowManager *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNSNaPSetupFlowManager *)self delegate];
    [v8 onboardingFromFlowManager:self didSelectSharingAudience:a4];
  }
}

- (void)sharingSettingsViewController:(id)a3 didUpdateSharingState:(BOOL)a4
{
  v4 = a4;
  v6 = [(CNSNaPSetupFlowManager *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNSNaPSetupFlowManager *)self delegate];
    [v8 onboardingFromFlowManager:self didUpdateSharingState:v4];
  }
}

- (void)sharingSettingsViewController:(id)a3 didUpdateWithSharingResult:(id)a4
{
  v9 = a4;
  v5 = [(CNSNaPSetupFlowManager *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CNSNaPSetupFlowManager *)self delegate];
    [v7 onboardingFromFlowManager:self didUpdateWithSharingResult:v9];

    v8 = [(CNSNaPSetupFlowManager *)self onboardingWelcomeNavigationController];
    [(CNSNaPSetupFlowManager *)self dismissNavigationController:v8 animated:1 completion:0];
  }
}

- (void)updateEditingContact:(id)a3 watchWallpaperImageDataForConfiguration:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  editingContact = self->_editingContact;
  v11 = a4;
  v12 = [(CNMutableContact *)editingContact wallpaper];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__CNSNaPSetupFlowManager_updateEditingContact_watchWallpaperImageDataForConfiguration_completion___block_invoke;
  v15[3] = &unk_1E74E6C00;
  v16 = v8;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  [v12 snapshotImageDataForWatchForContact:v14 posterConfiguration:v11 completion:v15];
}

uint64_t __98__CNSNaPSetupFlowManager_updateEditingContact_watchWallpaperImageDataForConfiguration_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setWatchWallpaperImageData:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)dismissPosterEditingFlow
{
  v4 = [(CNSNaPSetupFlowManager *)self galleryNavigationController];

  if (v4)
  {
    v5 = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
    [(CNSNaPSetupFlowManager *)self dismissNavigationController:v5 animated:1 completion:0];
  }

  v6 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];

  if (v6)
  {
    v11 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
    v7 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
    v8 = [v7 presentedViewController];
    if (v8 || ([(CNSNaPSetupFlowManager *)self galleryNavigationController], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
      v10 = [v9 presentingViewController];

      if (v8)
      {
      }

      else
      {
      }

      if (!v10)
      {
        goto LABEL_13;
      }

      [v11 presentingViewController];
      v11 = v7 = v11;
    }

LABEL_13:
    [(CNSNaPSetupFlowManager *)self dismissViewController:v11 animated:1 completion:0];
  }
}

- (void)notifyDelegateOfUpdatesAndDismissIfNeeded
{
  v3 = [(CNSNaPSetupFlowManager *)self delegate];
  v4 = [(CNSNaPSetupFlowManager *)self editingContact];
  v5 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [v3 avatarPosterEditorFromFlowManager:self didUpdateContact:v4 withVisualIdentity:v5];

  if ([(CNSNaPSetupFlowManager *)self isEditingContactCard])
  {

    [(CNSNaPSetupFlowManager *)self dismissPosterEditingFlow];
  }
}

- (void)pushNextStepWithViewController:(id)a3
{
  v4 = a3;
  v5 = [(CNSNaPSetupFlowManager *)self isOnboarding];
  v6 = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
  if (v5)
  {
    v8 = v6;
    v7 = [v6 presentingViewController];

    if (v7)
    {
      [(CNSNaPSetupFlowManager *)self galleryNavigationController];
    }

    else
    {
      [(CNSNaPSetupFlowManager *)self onboardingWelcomeNavigationController];
    }
    v6 = ;
  }

  v9 = v6;
  [v6 pushViewController:v4 animated:1];
}

- (void)finishFlowAndSaveAsRecent:(BOOL)a3
{
  v3 = a3;
  v5 = *MEMORY[0x1E6996590];
  v6 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
  v7 = [v6 pendingWallpaperFuture];
  v8 = [v7 result:0];
  v9 = (*(v5 + 16))(v5, v8);
  [(CNSNaPSetupFlowManager *)self updatePendingVisualIdentityWithWallpaper:v9];

  v10 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
  v11 = [v10 pendingPosterEdit];
  v12 = [v11 posterConfiguration];

  if (![(CNSNaPSetupFlowManager *)self currentAvatarPosterPairIsBackedByRecents])
  {
    [(CNSNaPSetupFlowManager *)self saveCurrentVisualIdentityIfNeeded];
  }

  if (v3)
  {
    [(CNSNaPSetupFlowManager *)self saveRecentVisualIdentity];
  }

  v13 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  v14 = [v13 wallpaper];

  if (v14)
  {
    v15 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    v16 = [v15 wallpaper];
    v32 = [v16 posterArchiveData];

    v17 = [MEMORY[0x1E695CFC8] reducedSizePosterArchiveDataFromData:v32 posterConfiguration:v12];
    v18 = objc_alloc(MEMORY[0x1E695CFC8]);
    v19 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [v19 wallpaper];
    v21 = v20 = v12;
    v22 = [v21 metadata];
    v23 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    v24 = [v23 wallpaper];
    v25 = [v18 initWithPosterArchiveData:v17 metadata:v22 contentIsSensitive:{objc_msgSend(v24, "contentIsSensitive")}];
    v26 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [v26 setWallpaper:v25];

    v12 = v20;
  }

  v27 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [(CNSNaPSetupFlowManager *)self updateEditingContactWithVisualIdentity:v27];

  [(CNSNaPSetupFlowManager *)self submitAndResetFlowReporter];
  [(CNSNaPSetupFlowManager *)self cleanupTemporaryPosterData];
  if (!self->_isOnboarding)
  {
    [(CNSNaPSetupFlowManager *)self resetEditingState];
    v29 = [(CNSNaPSetupFlowManager *)self delegate];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      v31 = [(CNMutableContact *)self->_editingContact wallpaper];

      if (v31)
      {
        v28 = [(CNSNaPSetupFlowManager *)self editingContact];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __52__CNSNaPSetupFlowManager_finishFlowAndSaveAsRecent___block_invoke;
        v33[3] = &unk_1E74E6A88;
        v33[4] = self;
        [(CNSNaPSetupFlowManager *)self updateEditingContact:v28 watchWallpaperImageDataForConfiguration:v12 completion:v33];
        goto LABEL_12;
      }

      [(CNSNaPSetupFlowManager *)self notifyDelegateOfUpdatesAndDismissIfNeeded];
    }

    [(CNSNaPSetupFlowManager *)self setGalleryNavigationController:0];
    goto LABEL_15;
  }

  v28 = [(CNSNaPSetupFlowManager *)self sharingSettingsViewControllerForOnboarding];
  [v28 setDelegate:self];
  [(CNSNaPSetupFlowManager *)self pushNextStepWithViewController:v28];
LABEL_12:

LABEL_15:
  [(CNPRUISPosterSnapshotController *)self->_snapshotController releaseKeepActiveAssertionForReason:@"CNMeCardSharingEditPosterAvatarFlowManager"];
}

uint64_t __52__CNSNaPSetupFlowManager_finishFlowAndSaveAsRecent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) notifyDelegateOfUpdatesAndDismissIfNeeded];
  v2 = *(a1 + 32);

  return [v2 setGalleryNavigationController:0];
}

- (void)updateEditingContextWithPendingPoster:(id)a3
{
  v4 = a3;
  v5 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];

  if (!v5)
  {
    v6 = +[CNAvatarPosterCarouselEditingContext contextForCreateNew];
    [(CNSNaPSetupFlowManager *)self setAvatarPosterEditingContext:v6];
  }

  v7 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
  [v7 setPendingPosterEdit:v4];
}

- (void)writeToDefaultsPosterSkippedIfNeeded
{
  if (!-[CNSNaPSetupFlowManager isEditingContactCard](self, "isEditingContactCard") || ([MEMORY[0x1E6996BA8] unifiedMeContactMonitor], v3 = objc_claimAutoreleasedReturnValue(), -[CNSNaPSetupFlowManager editingContact](self, "editingContact"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "isMeContact:", v4), v4, v3, v5))
  {

    [CNSharedProfileOnboardingController writeToDefaultsDidSkipPosterSetup:1];
  }
}

- (void)viewControllerDidSelectCustomizePosterLater:(id)a3
{
  v4 = a3;
  [(PosterEditFlowReporter *)self->_editFlowReporter didSkipPoster];
  if ([(CNSNaPSetupFlowManager *)self isOnboarding]|| [(CNSNaPSetupFlowManager *)self isEditingContactCard])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__CNSNaPSetupFlowManager_viewControllerDidSelectCustomizePosterLater___block_invoke;
    v5[3] = &unk_1E74E6A88;
    v5[4] = self;
    [v4 dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {
    [(CNSNaPSetupFlowManager *)self finishFlow];
  }
}

- (void)posterPreviewViewControllerDidSelectUseDifferentPoster:(id)a3
{
  v4 = a3;
  v5 = [CNSNaPSuggestionsGalleryViewController alloc];
  v6 = [(CNSNaPSetupFlowManager *)self editingContact];
  v8 = [(CNSNaPSuggestionsGalleryViewController *)v5 initWithMode:1 contact:v6 isEditingSNaP:[(CNSNaPSetupFlowManager *)self isEditingContactCard]^ 1 isOnboarding:[(CNSNaPSetupFlowManager *)self isOnboarding]];

  [(CNSNaPSuggestionsGalleryViewController *)v8 setDelegate:self];
  v7 = [v4 navigationController];

  [v7 pushViewController:v8 animated:1];
}

- (void)posterPreviewViewControllerDidSelectCustomizeLater:(id)a3
{
  [(CNSNaPSetupFlowManager *)self viewControllerDidSelectCustomizePosterLater:a3];

  [(CNSNaPSetupFlowManager *)self writeToDefaultsPosterSkippedIfNeeded];
}

- (void)posterPreviewViewController:(id)a3 didFinishWithPosterConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PosterEditFlowReporter *)self->_editFlowReporter didModifyPoster];
  [(CNSNaPSetupFlowManager *)self updateEditingStateForAction:1];
  v8 = [CNAvatarPosterCarouselPendingPosterEdit pendingEditFromPosterConfiguration:v7];
  [(CNSNaPSetupFlowManager *)self updateEditingContextWithPendingPoster:v8];

  if ([(CNSNaPSetupFlowManager *)self editingState]== 2)
  {
    v9 = [CNPosterSetupAvatarPreviewViewController alloc];
    v10 = [(CNSNaPSetupFlowManager *)self editingContact];
    v11 = [(CNPosterSetupAvatarPreviewViewController *)v9 initWithPosterConfiguration:v7 forEditingContact:v10];

    [(CNPosterSetupAvatarPreviewViewController *)v11 setDelegate:self];
    v12 = [v6 navigationController];
    [v12 pushViewController:v11 animated:1];
  }

  else if ([(CNSNaPSetupFlowManager *)self isOnboarding]|| [(CNSNaPSetupFlowManager *)self isEditingContactCard])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__CNSNaPSetupFlowManager_posterPreviewViewController_didFinishWithPosterConfiguration___block_invoke;
    v13[3] = &unk_1E74E6A88;
    v13[4] = self;
    [v6 dismissViewControllerAnimated:1 completion:v13];
  }

  else
  {
    [(CNSNaPSetupFlowManager *)self finishFlow];
  }
}

- (void)posterEditOptionsViewControllerDidCancel:(id)a3
{
  [(PosterEditFlowReporter *)self->_editFlowReporter didCancelFromCarousel];
  [(CNSNaPSetupFlowManager *)self submitAndResetFlowReporter];
  v4 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
  [(CNSNaPSetupFlowManager *)self dismissNavigationController:v4 animated:1 completion:0];

  [(CNSNaPSetupFlowManager *)self cleanupTemporaryPosterData];
  v5 = [(CNSNaPSetupFlowManager *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CNSNaPSetupFlowManager *)self delegate];
    [v7 avatarPosterEditorFromFlowManagerDidCancel:self];
  }
}

- (void)updatePendingVisualIdentityWithWallpaper:(id)a3
{
  v4 = a3;
  v5 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [v5 setWallpaper:v4];
}

- (void)updatePendingVisualIdentityWithAvatar:(id)a3 pendingPosterEdit:(id)a4 viewController:(id)a5
{
  v24 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [v10 clearImageAndWallpaper];

  v11 = [v9 view];

  v12 = [v11 effectiveUserInterfaceLayoutDirection];
  if (v24)
  {
    v13 = v12 == 1;
    v14 = [CNPhotoPickerRecentsProvider alloc];
    v15 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    v16 = [(CNPhotoPickerRecentsProvider *)v14 initWithVisualIdentity:v15];

    v17 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v17 scale];
    v19 = v18;
    v20 = [(CNSNaPSetupFlowManager *)self providerItemRenderingQueue];
    v21 = [(CNSNaPSetupFlowManager *)self providerItemCallbackQueue];
    v22 = [(CNPhotoPickerRecentsProvider *)v16 providerItemForContactImage:v24 size:v13 scale:v20 RTL:v21 renderingQueue:1 callbackQueue:250.0 fallbackToDefaultItem:250.0, v19];

    v23 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [v22 updateVisualIdentity:v23];
  }

  if (v8)
  {
    [(CNSNaPSetupFlowManager *)self updateEditingContextWithPendingPoster:v8];
  }
}

- (void)updatePendingVisualIdentityWithAvatar:(id)a3 contactPoster:(id)a4 viewController:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [CNAvatarPosterCarouselPendingPosterEdit pendingEditFromContactPoster:a4];
  [(CNSNaPSetupFlowManager *)self updatePendingVisualIdentityWithAvatar:v9 pendingPosterEdit:v10 viewController:v8];
}

- (void)posterEditOptionsViewControllerDidDeleteCurrentPosterPair:(id)a3
{
  [(CNSNaPSetupFlowManager *)self setCurrentContactImage:0];
  [(CNSNaPSetupFlowManager *)self setCurrentContactPoster:0];

  [(CNSNaPSetupFlowManager *)self setCurrentAvatarPosterPairIsBackedByRecents:0];
}

- (void)posterEditOptionsViewController:(id)a3 didLoadCurrentAvatar:(id)a4 poster:(id)a5 backedByRecents:(BOOL)a6
{
  v6 = a6;
  v9 = a5;
  [(CNSNaPSetupFlowManager *)self setCurrentContactImage:a4];
  [(CNSNaPSetupFlowManager *)self setCurrentContactPoster:v9];

  [(CNSNaPSetupFlowManager *)self setCurrentAvatarPosterPairIsBackedByRecents:v6];
}

- (void)posterEditOptionsViewController:(id)a3 didSelectAvatar:(id)a4 poster:(id)a5
{
  [(CNSNaPSetupFlowManager *)self updatePendingVisualIdentityWithAvatar:a4 contactPoster:a5 viewController:a3];

  [(CNSNaPSetupFlowManager *)self finishFlowAndSaveAsRecent:0];
}

- (void)posterEditOptionsViewControllerDidSelectCreateNew:(id)a3
{
  [(PosterEditFlowReporter *)self->_editFlowReporter willEditCreatingNew];
  v4 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [v4 clearImageAndWallpaper];

  v5 = [(CNSNaPSetupFlowManager *)self wallpaperGalleryNavigationController];
  [(CNSNaPSetupFlowManager *)self setGalleryNavigationController:v5];

  v6 = +[CNAvatarPosterCarouselEditingContext contextForCreateNew];
  [(CNSNaPSetupFlowManager *)self setAvatarPosterEditingContext:v6];

  v8 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
  v7 = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
  [v8 presentViewController:v7 animated:1 completion:0];
}

- (void)previewPendingPoster:(id)a3
{
  v4 = a3;
  v5 = [v4 posterConfiguration];

  if (v5)
  {
    [v4 posterConfiguration];
  }

  else
  {
    v6 = [v4 contactPoster];

    v4 = [v6 posterData];

    [CNPRSPosterArchiver unarchiveCNConfigurationFromData:v4 error:0];
  }
  v9 = ;

  v7 = [(CNSNaPSetupFlowManager *)self posterPreviewControllerWithPosterConfiguration:v9 providerItem:0 mode:1];
  v8 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
  [v8 pushViewController:v7 animated:1];
}

- (void)posterEditOptionsViewController:(id)a3 didEditPosterWithContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CNSNaPSetupFlowManager *)self setAvatarPosterEditingContext:v6];
  v12 = [v6 pendingPosterEdit];
  [(CNSNaPSetupFlowManager *)self updateEditingStateForAction:1];
  v8 = [v6 existingAvatar];

  [(CNSNaPSetupFlowManager *)self updatePendingVisualIdentityWithAvatar:v8 pendingPosterEdit:v12 viewController:v7];
  if (v12)
  {
    [(CNSNaPSetupFlowManager *)self previewPendingPoster:?];
  }

  else
  {
    v9 = [(CNSNaPSetupFlowManager *)self wallpaperGalleryNavigationControllerForMode:1];
    [(CNSNaPSetupFlowManager *)self setGalleryNavigationController:v9];

    v10 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
    v11 = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
    [v10 presentViewController:v11 animated:1 completion:0];
  }
}

- (BOOL)shouldShowItemEditorForContactImage:(id)a3
{
  v3 = a3;
  v4 = [v3 source];
  if (v4 == 3)
  {
    v6 = [v3 variant];
    LOBYTE(v7) = v6 != 0;
  }

  else
  {
    if (v4 != 2)
    {
      LOBYTE(v7) = 1;
      goto LABEL_7;
    }

    v5 = *MEMORY[0x1E6996540];
    v6 = [v3 imageData];
    v7 = (*(v5 + 16))(v5, v6) ^ 1;
  }

LABEL_7:
  return v7;
}

- (void)editAvatar:(id)a3 inView:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (![(CNSNaPSetupFlowManager *)self shouldShowItemEditorForContactImage:v16])
  {
    goto LABEL_6;
  }

  v7 = [v16 source];
  if ((v7 - 3) < 2 || v7 == 1)
  {
    v10 = [(CNSNaPSetupFlowManager *)self providerItemForRecentAvatar:v16 inView:v6];
    v13 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
    v14 = [(CNSNaPSetupFlowManager *)self avatarEditFlowManager];
    [v14 setBaseNavigationController:v13];

    v15 = [(CNSNaPSetupFlowManager *)self avatarEditFlowManager];
    [v15 presentAvatarEditorViewControllerForProviderItem:v10];

    goto LABEL_8;
  }

  if (v7 != 2)
  {
LABEL_6:
    [(CNSNaPSetupFlowManager *)self presentCreateNewAvatarViewController];
    goto LABEL_9;
  }

  v8 = [CNPosterSetupAvatarPreviewViewController alloc];
  v9 = [(CNSNaPSetupFlowManager *)self editingContact];
  v10 = [(CNPosterSetupAvatarPreviewViewController *)v8 initWithContactImage:v16 imageType:1 forEditingContact:v9];

  [(CNPosterSetupAvatarPreviewViewController *)v10 setDelegate:self];
  [(CNPosterSetupAvatarPreviewViewController *)v10 setHideSkipOption:1];
  [(CNPosterSetupAvatarPreviewViewController *)v10 setShouldShowCancelButton:1];
  v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v10];
  [v11 setModalPresentationStyle:{-[CNSNaPSetupFlowManager defaultModalPresentationStyle](self, "defaultModalPresentationStyle")}];
  v12 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
  [v12 presentViewController:v11 animated:1 completion:0];

LABEL_8:
LABEL_9:
}

- (void)posterEditOptionsViewController:(id)a3 didSelectEditAvatarWithContext:(id)a4
{
  editFlowReporter = self->_editFlowReporter;
  v7 = a4;
  v8 = a3;
  [(PosterEditFlowReporter *)editFlowReporter willEditAvatar];
  [(CNSNaPSetupFlowManager *)self setAvatarPosterEditingContext:v7];
  v11 = [v7 existingAvatar];
  [(CNSNaPSetupFlowManager *)self updateEditingStateForAction:0];
  v9 = [v7 existingPoster];

  [(CNSNaPSetupFlowManager *)self updatePendingVisualIdentityWithAvatar:v11 contactPoster:v9 viewController:v8];
  v10 = [v8 view];

  [(CNSNaPSetupFlowManager *)self editAvatar:v11 inView:v10];
}

- (void)validateAndUpdateAvatarDataForVisualIdentity:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 imageData];

  v5 = [v3 thumbnailImageData];

  v6 = [v3 fullscreenImageData];

  if (!(v4 | v5))
  {
    [v3 clearImage];
    goto LABEL_16;
  }

  if (v4)
  {
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 imageType];
      v17 = 138412290;
      v18 = v8;
    }

    v9 = [v3 thumbnailImageData];
    [v3 setImageData:v9];

    [v3 setCropRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    if (v5)
    {
LABEL_4:
      if (v6)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  v10 = [objc_opt_class() log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v3 imageType];
    v17 = 138412290;
    v18 = v11;
  }

  v12 = [v3 imageData];
  [v3 cropRect];
  v13 = CNImageUtilsCroppedImageDataFromFullSizeImageData();
  [v3 setThumbnailImageData:v13];

  if (!v6)
  {
LABEL_13:
    v14 = [objc_opt_class() log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v3 imageType];
      v17 = 138412290;
      v18 = v15;
    }

    v16 = [v3 imageData];
    [v3 setFullscreenImageData:v16];
  }

LABEL_16:
}

- (void)updateEditingContactWithVisualIdentity:(id)a3
{
  v4 = a3;
  [(CNSNaPSetupFlowManager *)self validateAndUpdateAvatarDataForVisualIdentity:v4];
  v5 = [(CNSNaPSetupFlowManager *)self editingContact];
  [v4 updateImageForContact:v5];

  v6 = [v4 contacts];

  v11 = [v6 firstObject];

  v7 = [v11 givenName];
  v8 = [(CNSNaPSetupFlowManager *)self editingContact];
  [v8 setGivenName:v7];

  v9 = [v11 familyName];
  v10 = [(CNSNaPSetupFlowManager *)self editingContact];
  [v10 setFamilyName:v9];
}

- (id)sharingSettingsViewControllerForOnboarding
{
  v3 = [[CNMeCardSharingContactNameProvider alloc] initWithContact:self->_editingContact];
  v4 = [[CNMeCardSharingContactAvatarProvider alloc] initWithContact:self->_editingContact];
  v5 = [CNMeCardSharingSettingsViewController alloc];
  v6 = [(CNSNaPSetupFlowManager *)self contactStore];
  LOBYTE(v9) = 1;
  v7 = [(CNMeCardSharingSettingsViewController *)v5 initForOnboardingWithContactStore:v6 contact:self->_editingContact avatarProvider:v4 nameProvider:v3 sharingEnabled:1 selectedSharingAudience:1 showsWallpaperSuggestionsGalleryPicker:v9 headerMode:[(CNSNaPSetupFlowManager *)self mode]];

  return v7;
}

- (id)posterPreviewControllerWithPosterConfiguration:(id)a3 providerItem:(id)a4 mode:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [CNPosterPreviewViewController alloc];
  v10 = [(CNSNaPSetupFlowManager *)self editingContact];
  v11 = [(CNPosterPreviewViewController *)v9 initWithPosterConfiguration:v8 fromProviderItem:v7 contact:v10 editingState:[(CNSNaPSetupFlowManager *)self editingState] isEditingSNaP:[(CNSNaPSetupFlowManager *)self isEditingContactCard]^ 1];

  [(CNPosterPreviewViewController *)v11 setDelegate:self];

  return v11;
}

- (id)wallpaperGalleryNavigationControllerForMode:(int64_t)a3
{
  v5 = [CNSNaPSuggestionsGalleryViewController alloc];
  v6 = [(CNSNaPSetupFlowManager *)self editingContact];
  v7 = [(CNSNaPSuggestionsGalleryViewController *)v5 initWithMode:a3 contact:v6 isEditingSNaP:[(CNSNaPSetupFlowManager *)self isEditingContactCard]^ 1 isOnboarding:[(CNSNaPSetupFlowManager *)self isOnboarding]];

  [(CNSNaPSuggestionsGalleryViewController *)v7 setDelegate:self];
  +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  [(CNSNaPSuggestionsGalleryViewController *)v7 setPreferredContentSize:?];
  v8 = [[CNPhotoPickerNavigationViewController alloc] initWithRootViewController:v7];
  [(CNPhotoPickerNavigationViewController *)v8 setAllowRotation:0];
  [(CNPhotoPickerNavigationViewController *)v8 setModalPresentationStyle:[(CNSNaPSetupFlowManager *)self defaultModalPresentationStyle]];

  return v8;
}

- (id)wallpaperGalleryNavigationController
{
  v3 = [(CNSNaPSetupFlowManager *)self mode];

  return [(CNSNaPSetupFlowManager *)self wallpaperGalleryNavigationControllerForMode:v3];
}

- (id)posterEditOptionsNavigationControllerForContact:(id)a3
{
  v4 = a3;
  v5 = [[CNPosterEditOptionsViewController alloc] initWithContact:v4 mode:[(CNSNaPSetupFlowManager *)self mode]];

  [(CNPosterEditOptionsViewController *)v5 setDelegate:self];
  +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  [(CNPosterEditOptionsViewController *)v5 setPreferredContentSize:?];
  v6 = [[CNPhotoPickerNavigationViewController alloc] initWithRootViewController:v5];
  [(CNPhotoPickerNavigationViewController *)v6 setAllowRotation:0];
  [(CNPhotoPickerNavigationViewController *)v6 setModalPresentationStyle:[(CNSNaPSetupFlowManager *)self defaultModalPresentationStyle]];

  return v6;
}

- (void)dealloc
{
  if ([(CNSNaPSetupFlowManager *)self isOnboarding])
  {
    [(CNSNaPSetupFlowManager *)self dismissOnboardingIfNeeded];
  }

  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1 && ![(CNSNaPSetupFlowManager *)self isEditingContactCard])
  {
    v5 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
    v6 = [v5 presentingViewController];

    if (v6)
    {
      [(CNSNaPSetupFlowManager *)self dismissPosterEditingFlow];
    }
  }

  v7.receiver = self;
  v7.super_class = CNSNaPSetupFlowManager;
  [(CNSNaPSetupFlowManager *)&v7 dealloc];
}

- (id)posterOnboardingWelcomeNavigationControllerForContact:(id)a3 hasOptionToSkip:(BOOL)a4 hasExistingNickname:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [[CNPosterOnboardingWelcomeViewController alloc] initWithContact:v8];

  [(CNPosterOnboardingWelcomeViewController *)v9 setHasOptionToSkip:v6];
  [(CNPosterOnboardingWelcomeViewController *)v9 setHasExistingNickname:v5];
  [(CNPosterOnboardingWelcomeViewController *)v9 setDelegate:self];
  +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  [(CNPosterOnboardingWelcomeViewController *)v9 setPreferredContentSize:?];
  v10 = [MEMORY[0x1E69966E8] currentEnvironment];
  v11 = [v10 featureFlags];
  if ([v11 isFeatureEnabled:26])
  {
    v12 = [(CNSNaPSetupFlowManager *)self multiplePhoneNumbersTiedToAppleID];

    if (v12)
    {
      v13 = objc_opt_new();
      v14 = [[CNPhotoPickerNavigationViewController alloc] initWithRootViewController:v13];
      [(CNPhotoPickerNavigationViewController *)v14 setAllowRotation:0];
      [(CNPhotoPickerNavigationViewController *)v14 setModalPresentationStyle:[(CNSNaPSetupFlowManager *)self defaultModalPresentationStyle]];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __116__CNSNaPSetupFlowManager_posterOnboardingWelcomeNavigationControllerForContact_hasOptionToSkip_hasExistingNickname___block_invoke;
      v18[3] = &unk_1E74E6460;
      v18[4] = self;
      [v13 setOnCancel:v18];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __116__CNSNaPSetupFlowManager_posterOnboardingWelcomeNavigationControllerForContact_hasOptionToSkip_hasExistingNickname___block_invoke_258;
      v16[3] = &unk_1E74E6488;
      v16[4] = self;
      v17 = v9;
      [v13 setOnContinue:v16];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = [[CNPhotoPickerNavigationViewController alloc] initWithRootViewController:v9];
  [(CNPhotoPickerNavigationViewController *)v14 setAllowRotation:0];
  [(CNPhotoPickerNavigationViewController *)v14 setModalPresentationStyle:[(CNSNaPSetupFlowManager *)self defaultModalPresentationStyle]];
LABEL_6:

  return v14;
}

void __116__CNSNaPSetupFlowManager_posterOnboardingWelcomeNavigationControllerForContact_hasOptionToSkip_hasExistingNickname___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Detected that multiple numbers/devices are associated with Apple ID, user chose to cancel", v4, 2u);
  }

  [v2 dismissViewControllerAnimated:1 completion:0];
}

void __116__CNSNaPSetupFlowManager_posterOnboardingWelcomeNavigationControllerForContact_hasOptionToSkip_hasExistingNickname___block_invoke_258(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_INFO, "Detected that multiple numbers/devices are associated with Apple ID, user chose to continue", v6, 2u);
  }

  v5 = [v3 navigationController];

  [v5 pushViewController:*(a1 + 40) animated:1];
}

- (void)submitAndResetFlowReporter
{
  [(PosterEditFlowReporter *)self->_editFlowReporter didFinish];
  v3 = objc_alloc_init(_TtC10ContactsUI22PosterEditFlowReporter);
  editFlowReporter = self->_editFlowReporter;
  self->_editFlowReporter = v3;

  MEMORY[0x1EEE66BB8](v3, editFlowReporter);
}

- (void)dismissViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v13 = a3;
  v7 = a5;
  [(CNPRUISPosterSnapshotController *)self->_snapshotController releaseKeepActiveAssertionForReason:@"CNMeCardSharingEditPosterAvatarFlowManager"];
  if (v7)
  {
    v8 = _Block_copy(v7);
  }

  else
  {
    v8 = &__block_literal_global_251;
  }

  WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);

  if (WeakRetained)
  {
    v10 = [(CNSNaPSetupFlowManager *)self presenterDelegate];
    [v10 sender:self dismissViewController:v13 completionHandler:v8];
  }

  else
  {
    v11 = [v13 presentingViewController];

    if (v11)
    {
      v12 = [v13 presentingViewController];
      [v12 dismissViewControllerAnimated:0 completion:v8];
    }

    else
    {
      v8[2](v8);
    }
  }
}

- (void)dismissNavigationController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v12 = a3;
  v8 = a5;
  [(CNPRUISPosterSnapshotController *)self->_snapshotController releaseKeepActiveAssertionForReason:@"CNMeCardSharingEditPosterAvatarFlowManager"];
  baseViewController = self->_baseViewController;
  if (baseViewController)
  {
    [(UIViewController *)baseViewController dismissViewControllerAnimated:v6 completion:v8];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);

    if (WeakRetained)
    {
      v11 = [(CNSNaPSetupFlowManager *)self presenterDelegate];
      [v11 sender:self dismissViewController:v12];
    }
  }
}

- (void)dismissOnboardingIfNeeded
{
  v3 = [(CNSNaPSetupFlowManager *)self onboardingWelcomeNavigationController];

  if (v3)
  {
    v4 = [objc_opt_class() log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Dismissing onboarding if needed", v6, 2u);
    }

    v5 = [(CNSNaPSetupFlowManager *)self onboardingWelcomeNavigationController];
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)presentNavigationController:(id)a3
{
  v4 = a3;
  baseViewController = self->_baseViewController;
  v8 = v4;
  if (baseViewController)
  {
    [(UIViewController *)baseViewController presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);

    if (WeakRetained)
    {
      v7 = [(CNSNaPSetupFlowManager *)self presenterDelegate];
      [v7 sender:self presentViewController:v8];
    }
  }
}

- (void)startOnboardingFlowWithNicknameContact:(id)a3 meContact:(id)a4
{
  v7 = a3 != 0;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a4;
  }

  self->_isOnboarding = 1;
  v9 = v8;
  v10 = a4;
  v24 = a3;
  v11 = [v10 mutableCopy];
  editingContact = self->_editingContact;
  self->_editingContact = v11;

  v13 = [[CNVisualIdentity alloc] initWithContact:v9];
  pendingVisualIdentity = self->_pendingVisualIdentity;
  self->_pendingVisualIdentity = v13;

  v15 = +[CNAvatarPosterCarouselEditingContext contextForCreateNew];
  [(CNSNaPSetupFlowManager *)self setAvatarPosterEditingContext:v15];

  v16 = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
  v17 = [v16 isMeContact:v10];
  v18 = [(CNSNaPSetupFlowManager *)self imagePickerController];
  [v18 setIsMeContact:v17];

  v19 = [v9 mutableCopy];
  v20 = [(CNSNaPSetupFlowManager *)self posterOnboardingWelcomeNavigationControllerForContact:v19 hasOptionToSkip:1 hasExistingNickname:v7];
  [(CNSNaPSetupFlowManager *)self setOnboardingWelcomeNavigationController:v20];

  [(CNPRUISPosterSnapshotController *)self->_snapshotController acquireKeepActiveAssertionForReason:@"CNMeCardSharingEditPosterAvatarFlowManager"];
  editFlowReporter = self->_editFlowReporter;
  v22 = [(CNSNaPSetupFlowManager *)self imagePickerController];
  -[PosterEditFlowReporter startingFromOnboardingWithMeCard:](editFlowReporter, "startingFromOnboardingWithMeCard:", [v22 isMeContact]);

  v23 = [(CNSNaPSetupFlowManager *)self onboardingWelcomeNavigationController];
  [(CNSNaPSetupFlowManager *)self presentNavigationController:v23];
}

- (void)startContactCardFlowForContact:(id)a3 isEditing:(BOOL)a4
{
  v4 = a4;
  v23 = a3;
  objc_storeStrong(&self->_editingContact, a3);
  v7 = [[CNVisualIdentity alloc] initWithContact:v23];
  pendingVisualIdentity = self->_pendingVisualIdentity;
  self->_pendingVisualIdentity = v7;

  self->_isEditingContactCard = 1;
  [(CNPRUISPosterSnapshotController *)self->_snapshotController acquireKeepActiveAssertionForReason:@"CNMeCardSharingEditPosterAvatarFlowManager"];
  editFlowReporter = self->_editFlowReporter;
  v10 = [(CNSNaPSetupFlowManager *)self imagePickerController];
  -[PosterEditFlowReporter startingFromContactsWithMeCard:isEditing:](editFlowReporter, "startingFromContactsWithMeCard:isEditing:", [v10 isMeContact], v4);

  v11 = *MEMORY[0x1E6996540];
  v12 = [v23 imageData];
  if (!(*(v11 + 16))(v11, v12))
  {
    goto LABEL_6;
  }

  v13 = [v23 wallpaper];
  v14 = [v13 posterArchiveData];
  if (((*(v11 + 16))(v11, v14) & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v15 = [v23 identifier];
  v16 = [(CNSNaPSetupFlowManager *)self recentAvatarsCountForContactIdentifier:v15];

  if (!v16)
  {
    v17 = [(CNSNaPSetupFlowManager *)self wallpaperGalleryNavigationController];
    [(CNSNaPSetupFlowManager *)self setGalleryNavigationController:v17];

    v18 = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
    [(CNSNaPSetupFlowManager *)self presentNavigationController:v18];

    [(CNSNaPSetupFlowManager *)self setIsCreatingNewAvatar:1];
    goto LABEL_10;
  }

LABEL_7:
  v19 = [MEMORY[0x1E69DC938] currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if ((v20 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    [(CNSNaPSetupFlowManager *)self setMode:1];
  }

  v21 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationControllerForContact:self->_editingContact];
  [(CNSNaPSetupFlowManager *)self setPosterEditOptionsNavigationController:v21];

  v22 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
  [(CNSNaPSetupFlowManager *)self presentNavigationController:v22];

LABEL_10:
}

- (void)startEditFlowWithSNaPContact:(id)a3
{
  objc_storeStrong(&self->_editingContact, a3);
  v5 = a3;
  v6 = [[CNVisualIdentity alloc] initWithContact:v5];
  pendingVisualIdentity = self->_pendingVisualIdentity;
  self->_pendingVisualIdentity = v6;

  v8 = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
  v9 = [v8 isMeContact:v5];
  v10 = [(CNSNaPSetupFlowManager *)self imagePickerController];
  [v10 setIsMeContact:v9];

  editFlowReporter = self->_editFlowReporter;
  v12 = [(CNSNaPSetupFlowManager *)self imagePickerController];
  -[PosterEditFlowReporter startingFromSNAPWithMeCard:](editFlowReporter, "startingFromSNAPWithMeCard:", [v12 isMeContact]);

  v13 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationControllerForContact:self->_editingContact];
  [(CNSNaPSetupFlowManager *)self setPosterEditOptionsNavigationController:v13];

  [(CNPRUISPosterSnapshotController *)self->_snapshotController acquireKeepActiveAssertionForReason:@"CNMeCardSharingEditPosterAvatarFlowManager"];
  v14 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
  [(CNSNaPSetupFlowManager *)self presentNavigationController:v14];
}

- (int64_t)defaultModalPresentationStyle
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return -2;
  }

  else
  {
    return 0;
  }
}

- (void)setGalleryNavigationController:(id)a3
{
  objc_storeStrong(&self->_galleryNavigationController, a3);
  v5 = a3;
  v6 = [(CNSNaPSetupFlowManager *)self avatarEditFlowManager];
  [v6 setBaseNavigationController:v5];
}

- (CNSNaPSetupFlowManager)initWithBaseViewController:(id)a3 contactStore:(id)a4 mode:(int64_t)a5 presenterDelegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v35.receiver = self;
  v35.super_class = CNSNaPSetupFlowManager;
  v14 = [(CNSNaPSetupFlowManager *)&v35 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_baseViewController, a3);
    objc_storeWeak(&v15->_presenterDelegate, v13);
    objc_storeStrong(&v15->_contactStore, a4);
    v16 = objc_alloc_init(CNMeCardSharingEditAvatarFlowManager);
    avatarEditFlowManager = v15->_avatarEditFlowManager;
    v15->_avatarEditFlowManager = v16;

    [(CNMeCardSharingEditAvatarFlowManager *)v15->_avatarEditFlowManager setDelegate:v15];
    v18 = objc_alloc_init(CNVisualIdentityImagePickerController);
    imagePickerController = v15->_imagePickerController;
    v15->_imagePickerController = v18;

    [(CNVisualIdentityImagePickerController *)v15->_imagePickerController setDelegate:v15];
    v20 = [MEMORY[0x1E6996820] defaultProvider];
    v21 = [v20 newSerialSchedulerWithName:@"com.apple.ContactsUI.sharedProfileSetup.providerItem.workQueue"];
    providerItemRenderingQueue = v15->_providerItemRenderingQueue;
    v15->_providerItemRenderingQueue = v21;

    v23 = [MEMORY[0x1E6996820] defaultProvider];
    v24 = [v23 mainThreadScheduler];
    providerItemCallbackQueue = v15->_providerItemCallbackQueue;
    v15->_providerItemCallbackQueue = v24;

    v26 = objc_alloc_init(CNPRUISPosterSnapshotController);
    snapshotController = v15->_snapshotController;
    v15->_snapshotController = v26;

    v28 = [MEMORY[0x1E69DC938] currentDevice];
    v29 = [v28 userInterfaceIdiom];

    if ((v29 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = a5;
    }

    v15->_mode = v30;
    v15->_editingState = 0;
    v31 = objc_alloc_init(_TtC10ContactsUI22PosterEditFlowReporter);
    editFlowReporter = v15->_editFlowReporter;
    v15->_editFlowReporter = v31;

    v33 = v15;
  }

  return v15;
}

+ (id)log
{
  if (log_cn_once_token_22 != -1)
  {
    dispatch_once(&log_cn_once_token_22, &__block_literal_global_233);
  }

  v3 = log_cn_once_object_22;

  return v3;
}

uint64_t __29__CNSNaPSetupFlowManager_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNMeCardSharingEditPosterAvatarFlowManager");
  v1 = log_cn_once_object_22;
  log_cn_once_object_22 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_21 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_21, &__block_literal_global_10786);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_21;

  return v3;
}

void __51__CNSNaPSetupFlowManager_descriptorForRequiredKeys__block_invoke()
{
  v15[18] = *MEMORY[0x1E69E9840];
  v15[0] = *MEMORY[0x1E695C258];
  v0 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v1 = *MEMORY[0x1E695C278];
  v2 = *MEMORY[0x1E695C1E8];
  v15[3] = *MEMORY[0x1E695C400];
  v15[4] = v2;
  v3 = *MEMORY[0x1E695C1C8];
  v15[5] = *MEMORY[0x1E695C2E8];
  v15[6] = v3;
  v4 = *MEMORY[0x1E695C270];
  v15[7] = *MEMORY[0x1E695C238];
  v15[8] = v4;
  v5 = *MEMORY[0x1E695C280];
  v15[9] = *MEMORY[0x1E695C298];
  v15[10] = v5;
  v15[1] = v0;
  v15[2] = v1;
  v6 = *MEMORY[0x1E695C3C8];
  v15[11] = v1;
  v15[12] = v6;
  v7 = *MEMORY[0x1E695C420];
  v15[13] = *MEMORY[0x1E695C438];
  v15[14] = v7;
  v15[15] = *MEMORY[0x1E695C428];
  v8 = [MEMORY[0x1E695CF98] descriptorForRequiredKeys];
  v15[16] = v8;
  v9 = +[CNVisualIdentityPickerViewController descriptorForRequiredKeys];
  v15[17] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:18];

  v11 = MEMORY[0x1E695CD58];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNSNaPSetupFlowManager descriptorForRequiredKeys]_block_invoke"];
  v13 = [v11 descriptorWithKeyDescriptors:v10 description:v12];

  v14 = descriptorForRequiredKeys_cn_once_object_21;
  descriptorForRequiredKeys_cn_once_object_21 = v13;
}

@end