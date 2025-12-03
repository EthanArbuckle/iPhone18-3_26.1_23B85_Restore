@interface CNSNaPSetupFlowManager
+ (id)descriptorForRequiredKeys;
+ (id)log;
- (BOOL)multiplePhoneNumbersTiedToAppleID;
- (BOOL)shouldShowItemEditorForContactImage:(id)image;
- (CNContactImageStore)contactImageStore;
- (CNPresenterDelegate)presenterDelegate;
- (CNSNaPSetupFlowManager)initWithBaseViewController:(id)controller contactStore:(id)store mode:(int64_t)mode presenterDelegate:(id)delegate;
- (CNSNaPSetupFlowManagerDelegate)delegate;
- (id)contactPosterFromWallpaper:(id)wallpaper;
- (id)posterEditOptionsNavigationControllerForContact:(id)contact;
- (id)posterOnboardingWelcomeNavigationControllerForContact:(id)contact hasOptionToSkip:(BOOL)skip hasExistingNickname:(BOOL)nickname;
- (id)posterPreviewControllerWithPosterConfiguration:(id)configuration providerItem:(id)item mode:(int64_t)mode;
- (id)providerItemForRecentAvatar:(id)avatar inView:(id)view;
- (id)recentAvatarFromPendingVisualIdentity;
- (id)recentPosterFromPendingVisualIdentity;
- (id)sharingSettingsViewControllerForOnboarding;
- (id)wallpaperGalleryNavigationController;
- (id)wallpaperGalleryNavigationControllerForMode:(int64_t)mode;
- (int64_t)defaultModalPresentationStyle;
- (unint64_t)recentAvatarsCountForContactIdentifier:(id)identifier;
- (void)avatarEditingDidFinishWithProviderItem:(id)item fromViewController:(id)controller;
- (void)avatarPreviewViewController:(id)controller didFinishWithContactImage:(id)image;
- (void)avatarPreviewViewControllerDidSelectCustomizeLater:(id)later;
- (void)cleanupTemporaryPosterArchiveDataIfNeededFromURL:(id)l fileManager:(id)manager;
- (void)cleanupTemporaryPosterConfigurationsFromURL:(id)l fileManager:(id)manager;
- (void)cleanupTemporaryPosterData;
- (void)dealloc;
- (void)dismissNavigationController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)dismissOnboardingIfNeeded;
- (void)dismissPosterEditingFlow;
- (void)dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)editAvatar:(id)avatar inView:(id)view;
- (void)finishFlowAndSaveAsRecent:(BOOL)recent;
- (void)imagePickerController:(id)controller didFinishWithProviderItem:(id)item;
- (void)linkCurrentImageToCurrentPoster;
- (void)notifyDelegateOfUpdatesAndDismissIfNeeded;
- (void)posterEditOptionsViewController:(id)controller didEditPosterWithContext:(id)context;
- (void)posterEditOptionsViewController:(id)controller didLoadCurrentAvatar:(id)avatar poster:(id)poster backedByRecents:(BOOL)recents;
- (void)posterEditOptionsViewController:(id)controller didSelectAvatar:(id)avatar poster:(id)poster;
- (void)posterEditOptionsViewController:(id)controller didSelectEditAvatarWithContext:(id)context;
- (void)posterEditOptionsViewControllerDidCancel:(id)cancel;
- (void)posterEditOptionsViewControllerDidDeleteCurrentPosterPair:(id)pair;
- (void)posterEditOptionsViewControllerDidSelectCreateNew:(id)new;
- (void)posterOnboardingViewControllerDidDidTapCancel:(id)cancel;
- (void)posterOnboardingViewControllerDidTapContinue:(id)continue;
- (void)posterPreviewViewController:(id)controller didFinishWithPosterConfiguration:(id)configuration;
- (void)posterPreviewViewControllerDidSelectCustomizeLater:(id)later;
- (void)posterPreviewViewControllerDidSelectUseDifferentPoster:(id)poster;
- (void)presentCreateNewAvatarViewControllerFromViewController:(id)controller;
- (void)presentNavigationController:(id)controller;
- (void)previewPendingPoster:(id)poster;
- (void)pushNextStepWithViewController:(id)controller;
- (void)resetEditingState;
- (void)saveCurrentVisualIdentityIfNeeded;
- (void)saveRecentAvatar:(id)avatar withPairedPoster:(id)poster ignoreExisting:(BOOL)existing;
- (void)saveRecentPoster:(id)poster;
- (void)saveRecentVisualIdentity;
- (void)setGalleryNavigationController:(id)controller;
- (void)sharingEditAvatarFlowManager:(id)manager didFinishWithProviderItem:(id)item fromViewController:(id)controller;
- (void)sharingEditAvatarFlowManagerDidCancel:(id)cancel;
- (void)sharingSettingsViewController:(id)controller didSelectSharingAudience:(unint64_t)audience;
- (void)sharingSettingsViewController:(id)controller didUpdateSharingState:(BOOL)state;
- (void)sharingSettingsViewController:(id)controller didUpdateWithSharingResult:(id)result;
- (void)startContactCardFlowForContact:(id)contact isEditing:(BOOL)editing;
- (void)startEditFlowWithSNaPContact:(id)contact;
- (void)startOnboardingFlowWithNicknameContact:(id)contact meContact:(id)meContact;
- (void)submitAndResetFlowReporter;
- (void)suggestionsGalleryViewController:(id)controller didFinishWithPosterConfiguration:(id)configuration name:(id)name;
- (void)suggestionsGalleryViewController:(id)controller didSelectAvatarSourceType:(int64_t)type name:(id)name;
- (void)suggestionsGalleryViewController:(id)controller didSelectSuggestedAvatar:(id)avatar name:(id)name;
- (void)suggestionsGalleryViewControllerDidCancel:(id)cancel;
- (void)suggestionsGalleryViewControllerDidSelectCustomizeLater:(id)later;
- (void)updateEditingContact:(id)contact watchWallpaperImageDataForConfiguration:(id)configuration completion:(id)completion;
- (void)updateEditingContactWithVisualIdentity:(id)identity;
- (void)updateEditingContextWithPendingPoster:(id)poster;
- (void)updateEditingStateForAction:(int64_t)action;
- (void)updateEditingStateForRevertedAction:(int64_t)action dismissingSetupFlow:(BOOL)flow;
- (void)updatePendingVisualIdentityWithAvatar:(id)avatar contactPoster:(id)poster viewController:(id)controller;
- (void)updatePendingVisualIdentityWithAvatar:(id)avatar pendingPosterEdit:(id)edit viewController:(id)controller;
- (void)updatePendingVisualIdentityWithWallpaper:(id)wallpaper;
- (void)validateAndUpdateAvatarDataForVisualIdentity:(id)identity;
- (void)viewControllerDidSelectCustomizePosterLater:(id)later;
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

- (void)cleanupTemporaryPosterConfigurationsFromURL:(id)l fileManager:(id)manager
{
  v16 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v6 = [l URLByAppendingPathComponent:@"PosterConfigurations"];
  path = [v6 path];
  v8 = [managerCopy fileExistsAtPath:path];

  if (v8)
  {
    v13 = 0;
    v9 = [managerCopy removeItemAtURL:v6 error:&v13];
    v10 = v13;
    if ((v9 & 1) == 0)
    {
      v11 = CNUILogPosters();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v10 localizedDescription];
        *buf = 138412290;
        v15 = localizedDescription;
        _os_log_error_impl(&dword_199A75000, v11, OS_LOG_TYPE_ERROR, "Failed to clean up poster configurations from temporary directory, %@", buf, 0xCu);
      }
    }
  }
}

- (void)cleanupTemporaryPosterArchiveDataIfNeededFromURL:(id)l fileManager:(id)manager
{
  v32[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  managerCopy = manager;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if (([standardUserDefaults BOOLForKey:@"CNPostersHasPerformedTemporaryArchiveCleanup"] & 1) == 0)
  {
    v20 = standardUserDefaults;
    v32[0] = *MEMORY[0x1E695DC30];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v21 = lCopy;
    v9 = [managerCopy contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:v8 options:0 error:0];

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
          pathExtension = [v15 pathExtension];
          if (([pathExtension isEqualToString:@"apa"] & 1) != 0 || objc_msgSend(pathExtension, "isEqualToString:", @"zapa"))
          {
            v22 = 0;
            v17 = [managerCopy removeItemAtURL:v15 error:&v22];
            v18 = v22;
            if ((v17 & 1) == 0)
            {
              v19 = CNUILogPosters();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v28 = pathExtension;
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

    standardUserDefaults = v20;
    [v20 setBool:1 forKey:@"CNPostersHasPerformedTemporaryArchiveCleanup"];

    lCopy = v21;
  }
}

- (void)cleanupTemporaryPosterData
{
  defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
  backgroundScheduler = [defaultProvider backgroundScheduler];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__CNSNaPSetupFlowManager_cleanupTemporaryPosterData__block_invoke;
  v5[3] = &unk_1E74E6A88;
  v5[4] = self;
  [backgroundScheduler performBlock:v5];
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

- (void)updateEditingStateForRevertedAction:(int64_t)action dismissingSetupFlow:(BOOL)flow
{
  flowCopy = flow;
  [(CNSNaPSetupFlowManager *)self setEditingState:[CNMeCardSharingSettingsEditingStateMachine stateAfterRevertingAction:action onState:[(CNSNaPSetupFlowManager *)self editingState]]];
  if (flowCopy)
  {

    [(CNSNaPSetupFlowManager *)self setAvatarPosterEditingContext:0];
  }
}

- (void)updateEditingStateForAction:(int64_t)action
{
  v4 = [CNMeCardSharingSettingsEditingStateMachine stateAfterPerformingAction:action onState:[(CNSNaPSetupFlowManager *)self editingState]];

  [(CNSNaPSetupFlowManager *)self setEditingState:v4];
}

- (id)providerItemForRecentAvatar:(id)avatar inView:(id)view
{
  avatarCopy = avatar;
  v7 = [view effectiveUserInterfaceLayoutDirection] == 1;
  v8 = [CNPhotoPickerRecentsProvider alloc];
  pendingVisualIdentity = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  v10 = [(CNPhotoPickerRecentsProvider *)v8 initWithVisualIdentity:pendingVisualIdentity];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v13 = v12;
  providerItemRenderingQueue = [(CNSNaPSetupFlowManager *)self providerItemRenderingQueue];
  providerItemCallbackQueue = [(CNSNaPSetupFlowManager *)self providerItemCallbackQueue];
  v16 = [(CNPhotoPickerRecentsProvider *)v10 providerItemForContactImage:avatarCopy size:v7 scale:providerItemRenderingQueue RTL:providerItemCallbackQueue renderingQueue:1 callbackQueue:250.0 fallbackToDefaultItem:250.0, v13];

  return v16;
}

- (void)saveRecentPoster:(id)poster
{
  v17 = *MEMORY[0x1E69E9840];
  posterCopy = poster;
  if (posterCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CE00]);
    v6 = MEMORY[0x1E695CDD8];
    pendingVisualIdentity = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    identifier = [pendingVisualIdentity identifier];
    v9 = [v6 requestToCreatePoster:posterCopy forContactIdentifier:identifier];

    v14 = 0;
    [v5 performCreateRequest:v9 error:&v14];
    v10 = v14;
    if (v10)
    {
      v11 = [objc_opt_class() log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        pendingVisualIdentity2 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
        identifier2 = [pendingVisualIdentity2 identifier];
        *buf = 138412290;
        v16 = identifier2;
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

- (void)saveRecentAvatar:(id)avatar withPairedPoster:(id)poster ignoreExisting:(BOOL)existing
{
  v29 = *MEMORY[0x1E69E9840];
  avatarCopy = avatar;
  posterCopy = poster;
  if (avatarCopy)
  {
    if (existing)
    {
      existingAvatar = 0;
    }

    else
    {
      avatarPosterEditingContext = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
      existingAvatar = [avatarPosterEditingContext existingAvatar];
    }

    [avatarCopy setPairedPoster:posterCopy];
    contactImageStore = [(CNSNaPSetupFlowManager *)self contactImageStore];
    editingContact = [(CNSNaPSetupFlowManager *)self editingContact];
    identifier = [editingContact identifier];

    if (existingAvatar)
    {
      v16 = MEMORY[0x1E695CD98];
      identifier2 = [existingAvatar identifier];
      v18 = [v16 requestToDeleteImageForIdentifier:identifier2];

      v26 = 0;
      LOBYTE(identifier2) = [contactImageStore performDeleteRequest:v18 error:&v26];
      v19 = v26;
      if ((identifier2 & 1) == 0)
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

    v21 = [MEMORY[0x1E695CD90] requestToCreateRecentImage:avatarCopy forContactIdentifier:identifier];
    v25 = v19;
    v22 = [contactImageStore performCreateRequest:v21 error:&v25];
    v23 = v25;

    if ((v22 & 1) == 0)
    {
      v24 = [objc_opt_class() log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = identifier;
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

    [(CNSNaPSetupFlowManager *)self saveRecentPoster:posterCopy];
  }
}

- (id)contactPosterFromWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  posterArchiveData = [wallpaperCopy posterArchiveData];
  if (posterArchiveData)
  {
    v5 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:posterArchiveData error:0];
    serverUUID = [v5 serverUUID];
    uUIDString = [serverUUID UUIDString];
    v8 = uUIDString;
    if (uUIDString)
    {
      uUIDString2 = uUIDString;
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString2 = [uUID UUIDString];
    }

    v12 = objc_alloc(MEMORY[0x1E695CDD0]);
    v13 = [MEMORY[0x1E695DF00] now];
    v10 = [v12 initWithIdentifier:uUIDString2 posterData:posterArchiveData lastUsedDate:v13];

    [v10 setContentIsSensitive:{objc_msgSend(wallpaperCopy, "contentIsSensitive")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)recentPosterFromPendingVisualIdentity
{
  pendingVisualIdentity = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  wallpaper = [pendingVisualIdentity wallpaper];
  v5 = [(CNSNaPSetupFlowManager *)self contactPosterFromWallpaper:wallpaper];

  return v5;
}

- (id)recentAvatarFromPendingVisualIdentity
{
  avatarPosterEditingContext = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
  updatedAvatar = [avatarPosterEditingContext updatedAvatar];

  if (!updatedAvatar)
  {
    pendingVisualIdentity = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    imageData = [pendingVisualIdentity imageData];

    if (imageData)
    {
      v7 = objc_alloc(MEMORY[0x1E695CD88]);
      pendingVisualIdentity2 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
      [pendingVisualIdentity2 cropRect];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [MEMORY[0x1E695DF00] now];
      updatedAvatar = [v7 initWithImageData:imageData cropRect:v17 lastUsedDate:{v10, v12, v14, v16}];

      pendingVisualIdentity3 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
      [updatedAvatar setSource:{objc_msgSend(pendingVisualIdentity3, "contactImageSource")}];
    }

    else
    {
      updatedAvatar = 0;
    }
  }

  return updatedAvatar;
}

- (void)linkCurrentImageToCurrentPoster
{
  v19[1] = *MEMORY[0x1E69E9840];
  currentContactImage = [(CNSNaPSetupFlowManager *)self currentContactImage];

  if (currentContactImage)
  {
    currentContactImage2 = [(CNSNaPSetupFlowManager *)self currentContactImage];
    encodingType = [currentContactImage2 encodingType];

    currentContactPoster = [(CNSNaPSetupFlowManager *)self currentContactPoster];

    if (currentContactPoster)
    {
      currentContactPoster2 = [(CNSNaPSetupFlowManager *)self currentContactPoster];
      pairedImage = [currentContactPoster2 pairedImage];

      if (!pairedImage)
      {
        editingContact = [(CNSNaPSetupFlowManager *)self editingContact];
        identifier = [editingContact identifier];

        if (identifier)
        {
          v11 = MEMORY[0x1E695CDF8];
          v19[0] = identifier;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
          v13 = [v11 currentPostersRequestForContactIdentifiers:v12];

          v14 = objc_alloc_init(MEMORY[0x1E695CE00]);
          v15 = [v14 performFetchRequest:v13 error:0];
          firstObject = [v15 firstObject];
        }

        else
        {
          firstObject = 0;
        }

        currentContactImage3 = [(CNSNaPSetupFlowManager *)self currentContactImage];
        [(CNSNaPSetupFlowManager *)self saveRecentAvatar:currentContactImage3 withPairedPoster:firstObject ignoreExisting:1];
      }
    }

    else if (encodingType != 1)
    {
      currentContactImage4 = [(CNSNaPSetupFlowManager *)self currentContactImage];
      [CNSNaPSetupFlowManager saveRecentAvatar:"saveRecentAvatar:withPairedPoster:ignoreExisting:" withPairedPoster:? ignoreExisting:?];
    }
  }
}

- (void)saveRecentVisualIdentity
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:22];

  if ((v5 & 1) == 0)
  {
    recentAvatarFromPendingVisualIdentity = [(CNSNaPSetupFlowManager *)self recentAvatarFromPendingVisualIdentity];
    recentPosterFromPendingVisualIdentity = [(CNSNaPSetupFlowManager *)self recentPosterFromPendingVisualIdentity];
    [(CNSNaPSetupFlowManager *)self saveRecentAvatar:recentAvatarFromPendingVisualIdentity withPairedPoster:recentPosterFromPendingVisualIdentity ignoreExisting:0];
  }
}

- (void)saveCurrentVisualIdentityIfNeeded
{
  currentContactImage = [(CNSNaPSetupFlowManager *)self currentContactImage];
  if (currentContactImage)
  {
  }

  else
  {
    currentContactPoster = [(CNSNaPSetupFlowManager *)self currentContactPoster];

    if (!currentContactPoster)
    {
      return;
    }
  }

  v5 = MEMORY[0x1E695CF98];
  currentContactPoster2 = [(CNSNaPSetupFlowManager *)self currentContactPoster];
  editingContact = [(CNSNaPSetupFlowManager *)self editingContact];
  LODWORD(v5) = [v5 shouldSaveCurrentPoster:currentContactPoster2 toRecentsForContact:editingContact];

  if (v5)
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v10 = [featureFlags isFeatureEnabled:22];

    if (v10)
    {

      [(CNSNaPSetupFlowManager *)self linkCurrentImageToCurrentPoster];
    }

    else
    {
      currentContactImage2 = [(CNSNaPSetupFlowManager *)self currentContactImage];
      currentContactPoster3 = [(CNSNaPSetupFlowManager *)self currentContactPoster];
      [(CNSNaPSetupFlowManager *)self saveRecentAvatar:currentContactImage2 withPairedPoster:currentContactPoster3 ignoreExisting:1];
    }
  }
}

- (unint64_t)recentAvatarsCountForContactIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E695CFB0];
  identifierCopy = identifier;
  v6 = [v4 alloc];
  contactStore = [(CNSNaPSetupFlowManager *)self contactStore];
  v8 = [v6 initWithContactStore:contactStore];

  v9 = [v8 recentImagesForContactWithIdentifier:identifierCopy];

  contactImageStore = [(CNSNaPSetupFlowManager *)self contactImageStore];
  v11 = [contactImageStore countForFetchRequest:v9 error:0];

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

- (void)imagePickerController:(id)controller didFinishWithProviderItem:(id)item
{
  itemCopy = item;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CNSNaPSetupFlowManager_imagePickerController_didFinishWithProviderItem___block_invoke;
  v8[3] = &unk_1E74E77C0;
  v8[4] = self;
  v9 = itemCopy;
  v7 = itemCopy;
  [controller dismissViewControllerAnimated:1 completion:v8];
}

void __74__CNSNaPSetupFlowManager_imagePickerController_didFinishWithProviderItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) posterEditOptionsNavigationController];
  v3 = [*(a1 + 32) avatarEditFlowManager];
  [v3 setBaseNavigationController:v2];

  v4 = [*(a1 + 32) avatarEditFlowManager];
  [v4 presentAvatarEditorViewControllerForProviderItem:*(a1 + 40)];
}

- (void)presentCreateNewAvatarViewControllerFromViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [CNSNaPSuggestionsGalleryViewController alloc];
  editingContact = [(CNSNaPSetupFlowManager *)self editingContact];
  v7 = [(CNSNaPSuggestionsGalleryViewController *)v5 initWithMode:0 contact:editingContact isEditingSNaP:[(CNSNaPSetupFlowManager *)self isEditingContactCard]^ 1 isOnboarding:[(CNSNaPSetupFlowManager *)self isOnboarding]];

  [(CNSNaPSuggestionsGalleryViewController *)v7 setDelegate:self];
  v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
  [v8 setModalPresentationStyle:{-[CNSNaPSetupFlowManager defaultModalPresentationStyle](self, "defaultModalPresentationStyle")}];
  if (controllerCopy)
  {
    v9 = controllerCopy;
  }

  else
  {
    galleryNavigationController = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
    v11 = galleryNavigationController;
    if (galleryNavigationController)
    {
      posterEditOptionsNavigationController = galleryNavigationController;
    }

    else
    {
      posterEditOptionsNavigationController = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
    }

    v9 = posterEditOptionsNavigationController;
  }

  presentedViewController = [v9 presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [v9 presentedViewController];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __81__CNSNaPSetupFlowManager_presentCreateNewAvatarViewControllerFromViewController___block_invoke;
    v19 = &unk_1E74E77C0;
    v20 = v9;
    v21 = v8;
    [presentedViewController2 dismissViewControllerAnimated:1 completion:&v16];
  }

  else
  {
    [v9 presentViewController:v8 animated:1 completion:0];
  }

  v15 = [(CNSNaPSetupFlowManager *)self avatarEditFlowManager:v16];
  [v15 setBaseNavigationController:v8];
}

- (void)avatarPreviewViewControllerDidSelectCustomizeLater:(id)later
{
  avatarPosterEditingContext = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
  if (avatarPosterEditingContext && (v5 = avatarPosterEditingContext, v6 = [(CNSNaPSetupFlowManager *)self editingState], v5, v6))
  {
    [(PosterEditFlowReporter *)self->_editFlowReporter didSkipAvatar];
    avatarPosterEditingContext2 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
    isEditingExisting = [avatarPosterEditingContext2 isEditingExisting];

    if (isEditingExisting)
    {
      avatarPosterEditingContext3 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
      existingAvatar = [avatarPosterEditingContext3 existingAvatar];
      avatarPosterEditingContext4 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
      [avatarPosterEditingContext4 setUpdatedAvatar:existingAvatar];
    }

    else
    {
      pendingVisualIdentity = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
      [pendingVisualIdentity clearImage];

      avatarPosterEditingContext3 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
      [avatarPosterEditingContext3 setUpdatedAvatar:0];
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

- (void)avatarPreviewViewController:(id)controller didFinishWithContactImage:(id)image
{
  controllerCopy = controller;
  imageCopy = image;
  [(CNSNaPSetupFlowManager *)self updateEditingStateForAction:0];
  pendingVisualIdentity = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [pendingVisualIdentity clearImage];

  v9 = [MEMORY[0x1E695CD58] imageTypeStringIdentifierForImageSource:{objc_msgSend(imageCopy, "source")}];
  pendingVisualIdentity2 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [pendingVisualIdentity2 setImageType:v9];

  if ([imageCopy source] == 3)
  {
    v11 = [CNPhotoPickerAnimojiProviderItem alloc];
    imageData = [imageCopy imageData];
    [imageCopy cropRect];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    variant = [imageCopy variant];
    v22 = [CNPhotoPickerVariantsManager colorVariantWithColorNamed:variant];
    v23 = [(CNPhotoPickerAnimojiProviderItem *)v11 initWithOriginalImageData:imageData cropRect:v22 backgroundColorVariant:v14, v16, v18, v20];

    v24 = MEMORY[0x1E695CF08];
    sourceIdentifier = [imageCopy sourceIdentifier];
    pendingVisualIdentity6 = [v24 avatarRecordForIdentifier:sourceIdentifier];

    [(CNPhotoPickerAnimojiProviderItem *)v23 setAvatarRecord:pendingVisualIdentity6];
    v27 = [CNPhotoPickerRecentsProvider poseConfigurationFromContactImage:imageCopy];
    [(CNPhotoPickerAnimojiProviderItem *)v23 setPoseConfiguration:v27];

    [(CNPhotoPickerAnimojiProviderItem *)v23 generateAllImageDatasIfNeeded];
    pendingVisualIdentity3 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [(CNPhotoPickerAnimojiProviderItem *)v23 updateVisualIdentity:pendingVisualIdentity3];
  }

  else
  {
    imageData2 = [imageCopy imageData];
    variant2 = [imageCopy variant];
    v31 = [CNPhotoPickerProviderItem generateImageDataWithData:imageData2 filterName:variant2];
    v32 = v31;
    if (v31)
    {
      imageData3 = v31;
    }

    else
    {
      imageData3 = [imageCopy imageData];
    }

    v23 = imageData3;

    pendingVisualIdentity4 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [pendingVisualIdentity4 setImageData:v23];

    [imageCopy cropRect];
    v35 = [CNPhotoPickerProviderItem generateThumbnailImageDataWithData:v23 cropRect:?];
    pendingVisualIdentity5 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [pendingVisualIdentity5 setThumbnailImageData:v35];

    [imageCopy cropRect];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    pendingVisualIdentity6 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [pendingVisualIdentity6 setCropRect:{v38, v40, v42, v44}];
  }

  avatarPosterEditingContext = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
  [avatarPosterEditingContext setUpdatedAvatar:imageCopy];

  [(PosterEditFlowReporter *)self->_editFlowReporter didModifyAvatar];
  if (-[CNSNaPSetupFlowManager editingState](self, "editingState") == 1 && ([MEMORY[0x1E69DC938] currentDevice], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "userInterfaceIdiom"), v46, (v47 & 0xFFFFFFFFFFFFFFFBLL) != 1))
  {
    avatarPosterEditingContext2 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
    existingPoster = [avatarPosterEditingContext2 existingPoster];
    posterData = [existingPoster posterData];
    v53 = posterData;
    if (posterData)
    {
      posterArchiveData = posterData;
    }

    else
    {
      editingContact = [(CNSNaPSetupFlowManager *)self editingContact];
      wallpaper = [editingContact wallpaper];
      posterArchiveData = [wallpaper posterArchiveData];
    }

    if (posterArchiveData)
    {
      v57 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:posterArchiveData error:0];
    }

    else
    {
      v57 = 0;
    }

    v58 = [(CNSNaPSetupFlowManager *)self posterPreviewControllerWithPosterConfiguration:v57 providerItem:0 mode:[(CNSNaPSetupFlowManager *)self mode]];
    navigationController = [controllerCopy navigationController];
    [navigationController pushViewController:v58 animated:1];
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __80__CNSNaPSetupFlowManager_avatarPreviewViewController_didFinishWithContactImage___block_invoke;
      v60[3] = &unk_1E74E6A88;
      v60[4] = self;
      [controllerCopy dismissViewControllerAnimated:1 completion:v60];
    }

    else
    {
      [(CNSNaPSetupFlowManager *)self finishFlow];
    }
  }
}

- (void)posterOnboardingViewControllerDidDidTapCancel:(id)cancel
{
  editFlowReporter = self->_editFlowReporter;
  cancelCopy = cancel;
  [(PosterEditFlowReporter *)editFlowReporter didCancelFromOnboardingWelcome];
  [(CNSNaPSetupFlowManager *)self submitAndResetFlowReporter];
  [(CNPRUISPosterSnapshotController *)self->_snapshotController releaseKeepActiveAssertionForReason:@"CNMeCardSharingEditPosterAvatarFlowManager"];
  [cancelCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)posterOnboardingViewControllerDidTapContinue:(id)continue
{
  continueCopy = continue;
  if ([(CNSNaPSetupFlowManager *)self isOnboarding])
  {
    wallpaperGalleryNavigationController = [(CNSNaPSetupFlowManager *)self wallpaperGalleryNavigationController];
    [(CNSNaPSetupFlowManager *)self setGalleryNavigationController:wallpaperGalleryNavigationController];

    onboardingWelcomeNavigationController = [(CNSNaPSetupFlowManager *)self onboardingWelcomeNavigationController];
    galleryNavigationController = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
    [onboardingWelcomeNavigationController presentViewController:galleryNavigationController animated:1 completion:0];
  }

  else
  {
    [continueCopy dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)sharingEditAvatarFlowManagerDidCancel:(id)cancel
{
  [(PosterEditFlowReporter *)self->_editFlowReporter didCancelFromAvatarEditor];

  [(CNSNaPSetupFlowManager *)self updateEditingStateForRevertedAction:0 dismissingSetupFlow:0];
}

- (void)avatarEditingDidFinishWithProviderItem:(id)item fromViewController:(id)controller
{
  itemCopy = item;
  controllerCopy = controller;
  contactImageForMetadataStore = [itemCopy contactImageForMetadataStore];
  avatarPosterEditingContext = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
  [avatarPosterEditingContext setUpdatedAvatar:contactImageForMetadataStore];

  pendingVisualIdentity = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [itemCopy updateVisualIdentity:pendingVisualIdentity];

  pendingVisualIdentity2 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [(CNSNaPSetupFlowManager *)self updateEditingContactWithVisualIdentity:pendingVisualIdentity2];

  [(CNSNaPSetupFlowManager *)self updateEditingStateForAction:0];
  if ([(CNSNaPSetupFlowManager *)self editingState]== 1)
  {
    [(PosterEditFlowReporter *)self->_editFlowReporter didModifyAvatar];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      if ([(CNSNaPSetupFlowManager *)self isCreatingNewAvatar])
      {
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __84__CNSNaPSetupFlowManager_avatarEditingDidFinishWithProviderItem_fromViewController___block_invoke;
        v40[3] = &unk_1E74E6A88;
        v40[4] = self;
        [(CNSNaPSetupFlowManager *)self dismissViewController:controllerCopy animated:1 completion:v40];
      }

      else if ([(CNSNaPSetupFlowManager *)self isOnboarding]|| [(CNSNaPSetupFlowManager *)self isEditingContactCard])
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __84__CNSNaPSetupFlowManager_avatarEditingDidFinishWithProviderItem_fromViewController___block_invoke_2;
        v39[3] = &unk_1E74E6A88;
        v39[4] = self;
        [controllerCopy dismissViewControllerAnimated:1 completion:v39];
      }

      else
      {
        [(CNSNaPSetupFlowManager *)self finishFlow];
      }
    }

    else
    {
      if ([itemCopy imageType] == 4 || objc_msgSend(itemCopy, "imageType") == 1 && (v28 = *MEMORY[0x1E6996568], objc_msgSend(itemCopy, "assetIdentifier"), v29 = objc_claimAutoreleasedReturnValue(), LODWORD(v28) = (*(v28 + 16))(v28, v29), v29, v28))
      {
        v19 = [CNSNaPSuggestionsGalleryViewController alloc];
        editingContact = [(CNSNaPSetupFlowManager *)self editingContact];
        isEditingContactCard = [(CNSNaPSetupFlowManager *)self isEditingContactCard];
        isOnboarding = [(CNSNaPSetupFlowManager *)self isOnboarding];
        assetIdentifier = [itemCopy assetIdentifier];
        v24 = [(CNSNaPSuggestionsGalleryViewController *)v19 initWithMode:1 contact:editingContact isEditingSNaP:!isEditingContactCard isOnboarding:isOnboarding photoLibraryAssetID:assetIdentifier];

        [(CNSNaPSuggestionsGalleryViewController *)v24 setDelegate:self];
      }

      else
      {
        avatarPosterEditingContext2 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
        existingPoster = [avatarPosterEditingContext2 existingPoster];
        posterData = [existingPoster posterData];
        v33 = posterData;
        if (posterData)
        {
          posterArchiveData = posterData;
        }

        else
        {
          editingContact2 = [(CNSNaPSetupFlowManager *)self editingContact];
          wallpaper = [editingContact2 wallpaper];
          posterArchiveData = [wallpaper posterArchiveData];
        }

        if (posterArchiveData)
        {
          v37 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:posterArchiveData error:0];
        }

        else
        {
          v37 = 0;
        }

        v24 = [(CNSNaPSetupFlowManager *)self posterPreviewControllerWithPosterConfiguration:v37 providerItem:itemCopy mode:[(CNSNaPSetupFlowManager *)self mode]];
      }

      navigationController = [controllerCopy navigationController];
      [navigationController pushViewController:v24 animated:1];
    }
  }

  else
  {
    objc_opt_class();
    galleryNavigationController = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
    topViewController = [galleryNavigationController topViewController];
    if (objc_opt_isKindOfClass())
    {
      v16 = topViewController;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17)
    {
      [v17 updateWithProviderItem:itemCopy];
      galleryNavigationController2 = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
      [galleryNavigationController2 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      [(PosterEditFlowReporter *)self->_editFlowReporter didModifyAvatar];
      v25 = [MEMORY[0x1E695CD58] stringIdentifierForImageType:{objc_msgSend(itemCopy, "imageType")}];
      [(CNVisualIdentity *)self->_pendingVisualIdentity setImageType:v25];

      imageData = [itemCopy imageData];
      [(CNVisualIdentity *)self->_pendingVisualIdentity setImageData:imageData];

      [itemCopy cropRect];
      [(CNVisualIdentity *)self->_pendingVisualIdentity setCropRect:?];
      if ([(CNSNaPSetupFlowManager *)self isEditingContactCard])
      {
        posterEditOptionsNavigationController = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
        [posterEditOptionsNavigationController dismissViewControllerAnimated:1 completion:0];
      }

      [(CNSNaPSetupFlowManager *)self finishFlow];
    }
  }
}

- (void)sharingEditAvatarFlowManager:(id)manager didFinishWithProviderItem:(id)item fromViewController:(id)controller
{
  controllerCopy = controller;
  itemCopy = item;
  [(CNSNaPSetupFlowManager *)self updateEditingStateForAction:0];
  [(CNSNaPSetupFlowManager *)self avatarEditingDidFinishWithProviderItem:itemCopy fromViewController:controllerCopy];
}

- (void)suggestionsGalleryViewControllerDidSelectCustomizeLater:(id)later
{
  [(CNSNaPSetupFlowManager *)self viewControllerDidSelectCustomizePosterLater:later];

  [(CNSNaPSetupFlowManager *)self writeToDefaultsPosterSkippedIfNeeded];
}

- (void)suggestionsGalleryViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  if ([(CNSNaPSetupFlowManager *)self isOnboarding])
  {
    [(PosterEditFlowReporter *)self->_editFlowReporter didCancelFromOnboardingNew];
  }

  else
  {
    mode = [cancelCopy mode];
    editFlowReporter = self->_editFlowReporter;
    if (mode)
    {
      [(PosterEditFlowReporter *)editFlowReporter didCancelFromPosterEditor];
    }

    else
    {
      [(PosterEditFlowReporter *)editFlowReporter didCancelFromAvatarEditor];
    }
  }

  galleryNavigationController = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
  viewControllers = [galleryNavigationController viewControllers];
  firstObject = [viewControllers firstObject];

  if (firstObject == cancelCopy)
  {
    [(CNSNaPSetupFlowManager *)self dismissViewController:cancelCopy animated:1 completion:0];
  }

  else
  {
    [cancelCopy dismissViewControllerAnimated:1 completion:0];
  }

  -[CNSNaPSetupFlowManager updateEditingStateForRevertedAction:dismissingSetupFlow:](self, "updateEditingStateForRevertedAction:dismissingSetupFlow:", [cancelCopy mode] != 0, firstObject == cancelCopy);
}

- (void)suggestionsGalleryViewController:(id)controller didFinishWithPosterConfiguration:(id)configuration name:(id)name
{
  nameCopy = name;
  configurationCopy = configuration;
  controllerCopy = controller;
  [(CNSNaPSetupFlowManager *)self updateEditingStateForAction:1];
  pendingVisualIdentity = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  given = [nameCopy given];
  family = [nameCopy family];

  [pendingVisualIdentity updateContactWithGivenName:given familyName:family];
  if (![(CNSNaPSetupFlowManager *)self isEditingContactCard])
  {
    pendingVisualIdentity2 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [(CNSNaPSetupFlowManager *)self updateEditingContactWithVisualIdentity:pendingVisualIdentity2];
  }

  v16 = -[CNSNaPSetupFlowManager posterPreviewControllerWithPosterConfiguration:providerItem:mode:](self, "posterPreviewControllerWithPosterConfiguration:providerItem:mode:", configurationCopy, 0, [controllerCopy mode]);

  navigationController = [controllerCopy navigationController];

  [navigationController pushViewController:v16 animated:1];
}

- (void)suggestionsGalleryViewController:(id)controller didSelectSuggestedAvatar:(id)avatar name:(id)name
{
  nameCopy = name;
  avatarCopy = avatar;
  controllerCopy = controller;
  pendingVisualIdentity = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  given = [nameCopy given];
  family = [nameCopy family];

  [pendingVisualIdentity updateContactWithGivenName:given familyName:family];
  v14 = [CNPhotoPickerRecentsProvider alloc];
  pendingVisualIdentity2 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  v24 = [(CNPhotoPickerRecentsProvider *)v14 initWithVisualIdentity:pendingVisualIdentity2];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v18 = v17;
  view = [controllerCopy view];
  v20 = [view effectiveUserInterfaceLayoutDirection] == 1;
  providerItemRenderingQueue = [(CNSNaPSetupFlowManager *)self providerItemRenderingQueue];
  providerItemCallbackQueue = [(CNSNaPSetupFlowManager *)self providerItemCallbackQueue];
  v23 = [(CNPhotoPickerRecentsProvider *)v24 providerItemForContactImage:avatarCopy size:v20 scale:providerItemRenderingQueue RTL:providerItemCallbackQueue renderingQueue:1 callbackQueue:250.0 fallbackToDefaultItem:250.0, v18];

  [(CNSNaPSetupFlowManager *)self avatarEditingDidFinishWithProviderItem:v23 fromViewController:controllerCopy];
}

- (void)suggestionsGalleryViewController:(id)controller didSelectAvatarSourceType:(int64_t)type name:(id)name
{
  controllerCopy = controller;
  nameCopy = name;
  pendingVisualIdentity = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  given = [nameCopy given];
  family = [nameCopy family];

  [pendingVisualIdentity updateContactWithGivenName:given familyName:family];
  mode = [(CNSNaPSetupFlowManager *)self mode];
  if (mode != [controllerCopy mode])
  {
    navigationController = [controllerCopy navigationController];
    avatarEditFlowManager = [(CNSNaPSetupFlowManager *)self avatarEditFlowManager];
    [avatarEditFlowManager setBaseNavigationController:navigationController];
  }

  avatarEditFlowManager2 = [(CNSNaPSetupFlowManager *)self avatarEditFlowManager];
  pendingVisualIdentity2 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [avatarEditFlowManager2 presentEditorForAvatarSourceType:type visualIdentity:pendingVisualIdentity2 fromGalleryViewController:controllerCopy];
}

- (void)sharingSettingsViewController:(id)controller didSelectSharingAudience:(unint64_t)audience
{
  delegate = [(CNSNaPSetupFlowManager *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNSNaPSetupFlowManager *)self delegate];
    [delegate2 onboardingFromFlowManager:self didSelectSharingAudience:audience];
  }
}

- (void)sharingSettingsViewController:(id)controller didUpdateSharingState:(BOOL)state
{
  stateCopy = state;
  delegate = [(CNSNaPSetupFlowManager *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNSNaPSetupFlowManager *)self delegate];
    [delegate2 onboardingFromFlowManager:self didUpdateSharingState:stateCopy];
  }
}

- (void)sharingSettingsViewController:(id)controller didUpdateWithSharingResult:(id)result
{
  resultCopy = result;
  delegate = [(CNSNaPSetupFlowManager *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CNSNaPSetupFlowManager *)self delegate];
    [delegate2 onboardingFromFlowManager:self didUpdateWithSharingResult:resultCopy];

    onboardingWelcomeNavigationController = [(CNSNaPSetupFlowManager *)self onboardingWelcomeNavigationController];
    [(CNSNaPSetupFlowManager *)self dismissNavigationController:onboardingWelcomeNavigationController animated:1 completion:0];
  }
}

- (void)updateEditingContact:(id)contact watchWallpaperImageDataForConfiguration:(id)configuration completion:(id)completion
{
  contactCopy = contact;
  completionCopy = completion;
  editingContact = self->_editingContact;
  configurationCopy = configuration;
  wallpaper = [(CNMutableContact *)editingContact wallpaper];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__CNSNaPSetupFlowManager_updateEditingContact_watchWallpaperImageDataForConfiguration_completion___block_invoke;
  v15[3] = &unk_1E74E6C00;
  v16 = contactCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = contactCopy;
  [wallpaper snapshotImageDataForWatchForContact:v14 posterConfiguration:configurationCopy completion:v15];
}

uint64_t __98__CNSNaPSetupFlowManager_updateEditingContact_watchWallpaperImageDataForConfiguration_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setWatchWallpaperImageData:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)dismissPosterEditingFlow
{
  galleryNavigationController = [(CNSNaPSetupFlowManager *)self galleryNavigationController];

  if (galleryNavigationController)
  {
    galleryNavigationController2 = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
    [(CNSNaPSetupFlowManager *)self dismissNavigationController:galleryNavigationController2 animated:1 completion:0];
  }

  posterEditOptionsNavigationController = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];

  if (posterEditOptionsNavigationController)
  {
    posterEditOptionsNavigationController2 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
    posterEditOptionsNavigationController3 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
    presentedViewController = [posterEditOptionsNavigationController3 presentedViewController];
    if (presentedViewController || ([(CNSNaPSetupFlowManager *)self galleryNavigationController], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      posterEditOptionsNavigationController4 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
      presentingViewController = [posterEditOptionsNavigationController4 presentingViewController];

      if (presentedViewController)
      {
      }

      else
      {
      }

      if (!presentingViewController)
      {
        goto LABEL_13;
      }

      [posterEditOptionsNavigationController2 presentingViewController];
      posterEditOptionsNavigationController2 = posterEditOptionsNavigationController3 = posterEditOptionsNavigationController2;
    }

LABEL_13:
    [(CNSNaPSetupFlowManager *)self dismissViewController:posterEditOptionsNavigationController2 animated:1 completion:0];
  }
}

- (void)notifyDelegateOfUpdatesAndDismissIfNeeded
{
  delegate = [(CNSNaPSetupFlowManager *)self delegate];
  editingContact = [(CNSNaPSetupFlowManager *)self editingContact];
  pendingVisualIdentity = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [delegate avatarPosterEditorFromFlowManager:self didUpdateContact:editingContact withVisualIdentity:pendingVisualIdentity];

  if ([(CNSNaPSetupFlowManager *)self isEditingContactCard])
  {

    [(CNSNaPSetupFlowManager *)self dismissPosterEditingFlow];
  }
}

- (void)pushNextStepWithViewController:(id)controller
{
  controllerCopy = controller;
  isOnboarding = [(CNSNaPSetupFlowManager *)self isOnboarding];
  galleryNavigationController = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
  if (isOnboarding)
  {
    v8 = galleryNavigationController;
    presentingViewController = [galleryNavigationController presentingViewController];

    if (presentingViewController)
    {
      [(CNSNaPSetupFlowManager *)self galleryNavigationController];
    }

    else
    {
      [(CNSNaPSetupFlowManager *)self onboardingWelcomeNavigationController];
    }
    galleryNavigationController = ;
  }

  v9 = galleryNavigationController;
  [galleryNavigationController pushViewController:controllerCopy animated:1];
}

- (void)finishFlowAndSaveAsRecent:(BOOL)recent
{
  recentCopy = recent;
  v5 = *MEMORY[0x1E6996590];
  avatarPosterEditingContext = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
  pendingWallpaperFuture = [avatarPosterEditingContext pendingWallpaperFuture];
  v8 = [pendingWallpaperFuture result:0];
  v9 = (*(v5 + 16))(v5, v8);
  [(CNSNaPSetupFlowManager *)self updatePendingVisualIdentityWithWallpaper:v9];

  avatarPosterEditingContext2 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
  pendingPosterEdit = [avatarPosterEditingContext2 pendingPosterEdit];
  posterConfiguration = [pendingPosterEdit posterConfiguration];

  if (![(CNSNaPSetupFlowManager *)self currentAvatarPosterPairIsBackedByRecents])
  {
    [(CNSNaPSetupFlowManager *)self saveCurrentVisualIdentityIfNeeded];
  }

  if (recentCopy)
  {
    [(CNSNaPSetupFlowManager *)self saveRecentVisualIdentity];
  }

  pendingVisualIdentity = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  wallpaper = [pendingVisualIdentity wallpaper];

  if (wallpaper)
  {
    pendingVisualIdentity2 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    wallpaper2 = [pendingVisualIdentity2 wallpaper];
    posterArchiveData = [wallpaper2 posterArchiveData];

    v17 = [MEMORY[0x1E695CFC8] reducedSizePosterArchiveDataFromData:posterArchiveData posterConfiguration:posterConfiguration];
    v18 = objc_alloc(MEMORY[0x1E695CFC8]);
    pendingVisualIdentity3 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [pendingVisualIdentity3 wallpaper];
    v21 = v20 = posterConfiguration;
    metadata = [v21 metadata];
    pendingVisualIdentity4 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    wallpaper3 = [pendingVisualIdentity4 wallpaper];
    v25 = [v18 initWithPosterArchiveData:v17 metadata:metadata contentIsSensitive:{objc_msgSend(wallpaper3, "contentIsSensitive")}];
    pendingVisualIdentity5 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [pendingVisualIdentity5 setWallpaper:v25];

    posterConfiguration = v20;
  }

  pendingVisualIdentity6 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [(CNSNaPSetupFlowManager *)self updateEditingContactWithVisualIdentity:pendingVisualIdentity6];

  [(CNSNaPSetupFlowManager *)self submitAndResetFlowReporter];
  [(CNSNaPSetupFlowManager *)self cleanupTemporaryPosterData];
  if (!self->_isOnboarding)
  {
    [(CNSNaPSetupFlowManager *)self resetEditingState];
    delegate = [(CNSNaPSetupFlowManager *)self delegate];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      wallpaper4 = [(CNMutableContact *)self->_editingContact wallpaper];

      if (wallpaper4)
      {
        editingContact = [(CNSNaPSetupFlowManager *)self editingContact];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __52__CNSNaPSetupFlowManager_finishFlowAndSaveAsRecent___block_invoke;
        v33[3] = &unk_1E74E6A88;
        v33[4] = self;
        [(CNSNaPSetupFlowManager *)self updateEditingContact:editingContact watchWallpaperImageDataForConfiguration:posterConfiguration completion:v33];
        goto LABEL_12;
      }

      [(CNSNaPSetupFlowManager *)self notifyDelegateOfUpdatesAndDismissIfNeeded];
    }

    [(CNSNaPSetupFlowManager *)self setGalleryNavigationController:0];
    goto LABEL_15;
  }

  editingContact = [(CNSNaPSetupFlowManager *)self sharingSettingsViewControllerForOnboarding];
  [editingContact setDelegate:self];
  [(CNSNaPSetupFlowManager *)self pushNextStepWithViewController:editingContact];
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

- (void)updateEditingContextWithPendingPoster:(id)poster
{
  posterCopy = poster;
  avatarPosterEditingContext = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];

  if (!avatarPosterEditingContext)
  {
    v6 = +[CNAvatarPosterCarouselEditingContext contextForCreateNew];
    [(CNSNaPSetupFlowManager *)self setAvatarPosterEditingContext:v6];
  }

  avatarPosterEditingContext2 = [(CNSNaPSetupFlowManager *)self avatarPosterEditingContext];
  [avatarPosterEditingContext2 setPendingPosterEdit:posterCopy];
}

- (void)writeToDefaultsPosterSkippedIfNeeded
{
  if (!-[CNSNaPSetupFlowManager isEditingContactCard](self, "isEditingContactCard") || ([MEMORY[0x1E6996BA8] unifiedMeContactMonitor], v3 = objc_claimAutoreleasedReturnValue(), -[CNSNaPSetupFlowManager editingContact](self, "editingContact"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "isMeContact:", v4), v4, v3, v5))
  {

    [CNSharedProfileOnboardingController writeToDefaultsDidSkipPosterSetup:1];
  }
}

- (void)viewControllerDidSelectCustomizePosterLater:(id)later
{
  laterCopy = later;
  [(PosterEditFlowReporter *)self->_editFlowReporter didSkipPoster];
  if ([(CNSNaPSetupFlowManager *)self isOnboarding]|| [(CNSNaPSetupFlowManager *)self isEditingContactCard])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__CNSNaPSetupFlowManager_viewControllerDidSelectCustomizePosterLater___block_invoke;
    v5[3] = &unk_1E74E6A88;
    v5[4] = self;
    [laterCopy dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {
    [(CNSNaPSetupFlowManager *)self finishFlow];
  }
}

- (void)posterPreviewViewControllerDidSelectUseDifferentPoster:(id)poster
{
  posterCopy = poster;
  v5 = [CNSNaPSuggestionsGalleryViewController alloc];
  editingContact = [(CNSNaPSetupFlowManager *)self editingContact];
  v8 = [(CNSNaPSuggestionsGalleryViewController *)v5 initWithMode:1 contact:editingContact isEditingSNaP:[(CNSNaPSetupFlowManager *)self isEditingContactCard]^ 1 isOnboarding:[(CNSNaPSetupFlowManager *)self isOnboarding]];

  [(CNSNaPSuggestionsGalleryViewController *)v8 setDelegate:self];
  navigationController = [posterCopy navigationController];

  [navigationController pushViewController:v8 animated:1];
}

- (void)posterPreviewViewControllerDidSelectCustomizeLater:(id)later
{
  [(CNSNaPSetupFlowManager *)self viewControllerDidSelectCustomizePosterLater:later];

  [(CNSNaPSetupFlowManager *)self writeToDefaultsPosterSkippedIfNeeded];
}

- (void)posterPreviewViewController:(id)controller didFinishWithPosterConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  [(PosterEditFlowReporter *)self->_editFlowReporter didModifyPoster];
  [(CNSNaPSetupFlowManager *)self updateEditingStateForAction:1];
  v8 = [CNAvatarPosterCarouselPendingPosterEdit pendingEditFromPosterConfiguration:configurationCopy];
  [(CNSNaPSetupFlowManager *)self updateEditingContextWithPendingPoster:v8];

  if ([(CNSNaPSetupFlowManager *)self editingState]== 2)
  {
    v9 = [CNPosterSetupAvatarPreviewViewController alloc];
    editingContact = [(CNSNaPSetupFlowManager *)self editingContact];
    v11 = [(CNPosterSetupAvatarPreviewViewController *)v9 initWithPosterConfiguration:configurationCopy forEditingContact:editingContact];

    [(CNPosterSetupAvatarPreviewViewController *)v11 setDelegate:self];
    navigationController = [controllerCopy navigationController];
    [navigationController pushViewController:v11 animated:1];
  }

  else if ([(CNSNaPSetupFlowManager *)self isOnboarding]|| [(CNSNaPSetupFlowManager *)self isEditingContactCard])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__CNSNaPSetupFlowManager_posterPreviewViewController_didFinishWithPosterConfiguration___block_invoke;
    v13[3] = &unk_1E74E6A88;
    v13[4] = self;
    [controllerCopy dismissViewControllerAnimated:1 completion:v13];
  }

  else
  {
    [(CNSNaPSetupFlowManager *)self finishFlow];
  }
}

- (void)posterEditOptionsViewControllerDidCancel:(id)cancel
{
  [(PosterEditFlowReporter *)self->_editFlowReporter didCancelFromCarousel];
  [(CNSNaPSetupFlowManager *)self submitAndResetFlowReporter];
  posterEditOptionsNavigationController = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
  [(CNSNaPSetupFlowManager *)self dismissNavigationController:posterEditOptionsNavigationController animated:1 completion:0];

  [(CNSNaPSetupFlowManager *)self cleanupTemporaryPosterData];
  delegate = [(CNSNaPSetupFlowManager *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CNSNaPSetupFlowManager *)self delegate];
    [delegate2 avatarPosterEditorFromFlowManagerDidCancel:self];
  }
}

- (void)updatePendingVisualIdentityWithWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  pendingVisualIdentity = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [pendingVisualIdentity setWallpaper:wallpaperCopy];
}

- (void)updatePendingVisualIdentityWithAvatar:(id)avatar pendingPosterEdit:(id)edit viewController:(id)controller
{
  avatarCopy = avatar;
  editCopy = edit;
  controllerCopy = controller;
  pendingVisualIdentity = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [pendingVisualIdentity clearImageAndWallpaper];

  view = [controllerCopy view];

  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];
  if (avatarCopy)
  {
    v13 = effectiveUserInterfaceLayoutDirection == 1;
    v14 = [CNPhotoPickerRecentsProvider alloc];
    pendingVisualIdentity2 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    v16 = [(CNPhotoPickerRecentsProvider *)v14 initWithVisualIdentity:pendingVisualIdentity2];

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v19 = v18;
    providerItemRenderingQueue = [(CNSNaPSetupFlowManager *)self providerItemRenderingQueue];
    providerItemCallbackQueue = [(CNSNaPSetupFlowManager *)self providerItemCallbackQueue];
    v22 = [(CNPhotoPickerRecentsProvider *)v16 providerItemForContactImage:avatarCopy size:v13 scale:providerItemRenderingQueue RTL:providerItemCallbackQueue renderingQueue:1 callbackQueue:250.0 fallbackToDefaultItem:250.0, v19];

    pendingVisualIdentity3 = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
    [v22 updateVisualIdentity:pendingVisualIdentity3];
  }

  if (editCopy)
  {
    [(CNSNaPSetupFlowManager *)self updateEditingContextWithPendingPoster:editCopy];
  }
}

- (void)updatePendingVisualIdentityWithAvatar:(id)avatar contactPoster:(id)poster viewController:(id)controller
{
  controllerCopy = controller;
  avatarCopy = avatar;
  v10 = [CNAvatarPosterCarouselPendingPosterEdit pendingEditFromContactPoster:poster];
  [(CNSNaPSetupFlowManager *)self updatePendingVisualIdentityWithAvatar:avatarCopy pendingPosterEdit:v10 viewController:controllerCopy];
}

- (void)posterEditOptionsViewControllerDidDeleteCurrentPosterPair:(id)pair
{
  [(CNSNaPSetupFlowManager *)self setCurrentContactImage:0];
  [(CNSNaPSetupFlowManager *)self setCurrentContactPoster:0];

  [(CNSNaPSetupFlowManager *)self setCurrentAvatarPosterPairIsBackedByRecents:0];
}

- (void)posterEditOptionsViewController:(id)controller didLoadCurrentAvatar:(id)avatar poster:(id)poster backedByRecents:(BOOL)recents
{
  recentsCopy = recents;
  posterCopy = poster;
  [(CNSNaPSetupFlowManager *)self setCurrentContactImage:avatar];
  [(CNSNaPSetupFlowManager *)self setCurrentContactPoster:posterCopy];

  [(CNSNaPSetupFlowManager *)self setCurrentAvatarPosterPairIsBackedByRecents:recentsCopy];
}

- (void)posterEditOptionsViewController:(id)controller didSelectAvatar:(id)avatar poster:(id)poster
{
  [(CNSNaPSetupFlowManager *)self updatePendingVisualIdentityWithAvatar:avatar contactPoster:poster viewController:controller];

  [(CNSNaPSetupFlowManager *)self finishFlowAndSaveAsRecent:0];
}

- (void)posterEditOptionsViewControllerDidSelectCreateNew:(id)new
{
  [(PosterEditFlowReporter *)self->_editFlowReporter willEditCreatingNew];
  pendingVisualIdentity = [(CNSNaPSetupFlowManager *)self pendingVisualIdentity];
  [pendingVisualIdentity clearImageAndWallpaper];

  wallpaperGalleryNavigationController = [(CNSNaPSetupFlowManager *)self wallpaperGalleryNavigationController];
  [(CNSNaPSetupFlowManager *)self setGalleryNavigationController:wallpaperGalleryNavigationController];

  v6 = +[CNAvatarPosterCarouselEditingContext contextForCreateNew];
  [(CNSNaPSetupFlowManager *)self setAvatarPosterEditingContext:v6];

  posterEditOptionsNavigationController = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
  galleryNavigationController = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
  [posterEditOptionsNavigationController presentViewController:galleryNavigationController animated:1 completion:0];
}

- (void)previewPendingPoster:(id)poster
{
  posterCopy = poster;
  posterConfiguration = [posterCopy posterConfiguration];

  if (posterConfiguration)
  {
    [posterCopy posterConfiguration];
  }

  else
  {
    contactPoster = [posterCopy contactPoster];

    posterCopy = [contactPoster posterData];

    [CNPRSPosterArchiver unarchiveCNConfigurationFromData:posterCopy error:0];
  }
  v9 = ;

  v7 = [(CNSNaPSetupFlowManager *)self posterPreviewControllerWithPosterConfiguration:v9 providerItem:0 mode:1];
  posterEditOptionsNavigationController = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
  [posterEditOptionsNavigationController pushViewController:v7 animated:1];
}

- (void)posterEditOptionsViewController:(id)controller didEditPosterWithContext:(id)context
{
  contextCopy = context;
  controllerCopy = controller;
  [(CNSNaPSetupFlowManager *)self setAvatarPosterEditingContext:contextCopy];
  pendingPosterEdit = [contextCopy pendingPosterEdit];
  [(CNSNaPSetupFlowManager *)self updateEditingStateForAction:1];
  existingAvatar = [contextCopy existingAvatar];

  [(CNSNaPSetupFlowManager *)self updatePendingVisualIdentityWithAvatar:existingAvatar pendingPosterEdit:pendingPosterEdit viewController:controllerCopy];
  if (pendingPosterEdit)
  {
    [(CNSNaPSetupFlowManager *)self previewPendingPoster:?];
  }

  else
  {
    v9 = [(CNSNaPSetupFlowManager *)self wallpaperGalleryNavigationControllerForMode:1];
    [(CNSNaPSetupFlowManager *)self setGalleryNavigationController:v9];

    posterEditOptionsNavigationController = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
    galleryNavigationController = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
    [posterEditOptionsNavigationController presentViewController:galleryNavigationController animated:1 completion:0];
  }
}

- (BOOL)shouldShowItemEditorForContactImage:(id)image
{
  imageCopy = image;
  source = [imageCopy source];
  if (source == 3)
  {
    variant = [imageCopy variant];
    LOBYTE(v7) = variant != 0;
  }

  else
  {
    if (source != 2)
    {
      LOBYTE(v7) = 1;
      goto LABEL_7;
    }

    v5 = *MEMORY[0x1E6996540];
    variant = [imageCopy imageData];
    v7 = (*(v5 + 16))(v5, variant) ^ 1;
  }

LABEL_7:
  return v7;
}

- (void)editAvatar:(id)avatar inView:(id)view
{
  avatarCopy = avatar;
  viewCopy = view;
  if (![(CNSNaPSetupFlowManager *)self shouldShowItemEditorForContactImage:avatarCopy])
  {
    goto LABEL_6;
  }

  source = [avatarCopy source];
  if ((source - 3) < 2 || source == 1)
  {
    v10 = [(CNSNaPSetupFlowManager *)self providerItemForRecentAvatar:avatarCopy inView:viewCopy];
    posterEditOptionsNavigationController = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
    avatarEditFlowManager = [(CNSNaPSetupFlowManager *)self avatarEditFlowManager];
    [avatarEditFlowManager setBaseNavigationController:posterEditOptionsNavigationController];

    avatarEditFlowManager2 = [(CNSNaPSetupFlowManager *)self avatarEditFlowManager];
    [avatarEditFlowManager2 presentAvatarEditorViewControllerForProviderItem:v10];

    goto LABEL_8;
  }

  if (source != 2)
  {
LABEL_6:
    [(CNSNaPSetupFlowManager *)self presentCreateNewAvatarViewController];
    goto LABEL_9;
  }

  v8 = [CNPosterSetupAvatarPreviewViewController alloc];
  editingContact = [(CNSNaPSetupFlowManager *)self editingContact];
  v10 = [(CNPosterSetupAvatarPreviewViewController *)v8 initWithContactImage:avatarCopy imageType:1 forEditingContact:editingContact];

  [(CNPosterSetupAvatarPreviewViewController *)v10 setDelegate:self];
  [(CNPosterSetupAvatarPreviewViewController *)v10 setHideSkipOption:1];
  [(CNPosterSetupAvatarPreviewViewController *)v10 setShouldShowCancelButton:1];
  v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v10];
  [v11 setModalPresentationStyle:{-[CNSNaPSetupFlowManager defaultModalPresentationStyle](self, "defaultModalPresentationStyle")}];
  posterEditOptionsNavigationController2 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
  [posterEditOptionsNavigationController2 presentViewController:v11 animated:1 completion:0];

LABEL_8:
LABEL_9:
}

- (void)posterEditOptionsViewController:(id)controller didSelectEditAvatarWithContext:(id)context
{
  editFlowReporter = self->_editFlowReporter;
  contextCopy = context;
  controllerCopy = controller;
  [(PosterEditFlowReporter *)editFlowReporter willEditAvatar];
  [(CNSNaPSetupFlowManager *)self setAvatarPosterEditingContext:contextCopy];
  existingAvatar = [contextCopy existingAvatar];
  [(CNSNaPSetupFlowManager *)self updateEditingStateForAction:0];
  existingPoster = [contextCopy existingPoster];

  [(CNSNaPSetupFlowManager *)self updatePendingVisualIdentityWithAvatar:existingAvatar contactPoster:existingPoster viewController:controllerCopy];
  view = [controllerCopy view];

  [(CNSNaPSetupFlowManager *)self editAvatar:existingAvatar inView:view];
}

- (void)validateAndUpdateAvatarDataForVisualIdentity:(id)identity
{
  v19 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  imageData = [identityCopy imageData];

  thumbnailImageData = [identityCopy thumbnailImageData];

  fullscreenImageData = [identityCopy fullscreenImageData];

  if (!(imageData | thumbnailImageData))
  {
    [identityCopy clearImage];
    goto LABEL_16;
  }

  if (imageData)
  {
    if (thumbnailImageData)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      imageType = [identityCopy imageType];
      v17 = 138412290;
      v18 = imageType;
    }

    thumbnailImageData2 = [identityCopy thumbnailImageData];
    [identityCopy setImageData:thumbnailImageData2];

    [identityCopy setCropRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    if (thumbnailImageData)
    {
LABEL_4:
      if (fullscreenImageData)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  v10 = [objc_opt_class() log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    imageType2 = [identityCopy imageType];
    v17 = 138412290;
    v18 = imageType2;
  }

  imageData2 = [identityCopy imageData];
  [identityCopy cropRect];
  v13 = CNImageUtilsCroppedImageDataFromFullSizeImageData();
  [identityCopy setThumbnailImageData:v13];

  if (!fullscreenImageData)
  {
LABEL_13:
    v14 = [objc_opt_class() log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      imageType3 = [identityCopy imageType];
      v17 = 138412290;
      v18 = imageType3;
    }

    imageData3 = [identityCopy imageData];
    [identityCopy setFullscreenImageData:imageData3];
  }

LABEL_16:
}

- (void)updateEditingContactWithVisualIdentity:(id)identity
{
  identityCopy = identity;
  [(CNSNaPSetupFlowManager *)self validateAndUpdateAvatarDataForVisualIdentity:identityCopy];
  editingContact = [(CNSNaPSetupFlowManager *)self editingContact];
  [identityCopy updateImageForContact:editingContact];

  contacts = [identityCopy contacts];

  firstObject = [contacts firstObject];

  givenName = [firstObject givenName];
  editingContact2 = [(CNSNaPSetupFlowManager *)self editingContact];
  [editingContact2 setGivenName:givenName];

  familyName = [firstObject familyName];
  editingContact3 = [(CNSNaPSetupFlowManager *)self editingContact];
  [editingContact3 setFamilyName:familyName];
}

- (id)sharingSettingsViewControllerForOnboarding
{
  v3 = [[CNMeCardSharingContactNameProvider alloc] initWithContact:self->_editingContact];
  v4 = [[CNMeCardSharingContactAvatarProvider alloc] initWithContact:self->_editingContact];
  v5 = [CNMeCardSharingSettingsViewController alloc];
  contactStore = [(CNSNaPSetupFlowManager *)self contactStore];
  LOBYTE(v9) = 1;
  v7 = [(CNMeCardSharingSettingsViewController *)v5 initForOnboardingWithContactStore:contactStore contact:self->_editingContact avatarProvider:v4 nameProvider:v3 sharingEnabled:1 selectedSharingAudience:1 showsWallpaperSuggestionsGalleryPicker:v9 headerMode:[(CNSNaPSetupFlowManager *)self mode]];

  return v7;
}

- (id)posterPreviewControllerWithPosterConfiguration:(id)configuration providerItem:(id)item mode:(int64_t)mode
{
  itemCopy = item;
  configurationCopy = configuration;
  v9 = [CNPosterPreviewViewController alloc];
  editingContact = [(CNSNaPSetupFlowManager *)self editingContact];
  v11 = [(CNPosterPreviewViewController *)v9 initWithPosterConfiguration:configurationCopy fromProviderItem:itemCopy contact:editingContact editingState:[(CNSNaPSetupFlowManager *)self editingState] isEditingSNaP:[(CNSNaPSetupFlowManager *)self isEditingContactCard]^ 1];

  [(CNPosterPreviewViewController *)v11 setDelegate:self];

  return v11;
}

- (id)wallpaperGalleryNavigationControllerForMode:(int64_t)mode
{
  v5 = [CNSNaPSuggestionsGalleryViewController alloc];
  editingContact = [(CNSNaPSetupFlowManager *)self editingContact];
  v7 = [(CNSNaPSuggestionsGalleryViewController *)v5 initWithMode:mode contact:editingContact isEditingSNaP:[(CNSNaPSetupFlowManager *)self isEditingContactCard]^ 1 isOnboarding:[(CNSNaPSetupFlowManager *)self isOnboarding]];

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
  mode = [(CNSNaPSetupFlowManager *)self mode];

  return [(CNSNaPSetupFlowManager *)self wallpaperGalleryNavigationControllerForMode:mode];
}

- (id)posterEditOptionsNavigationControllerForContact:(id)contact
{
  contactCopy = contact;
  v5 = [[CNPosterEditOptionsViewController alloc] initWithContact:contactCopy mode:[(CNSNaPSetupFlowManager *)self mode]];

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

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && ![(CNSNaPSetupFlowManager *)self isEditingContactCard])
  {
    posterEditOptionsNavigationController = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
    presentingViewController = [posterEditOptionsNavigationController presentingViewController];

    if (presentingViewController)
    {
      [(CNSNaPSetupFlowManager *)self dismissPosterEditingFlow];
    }
  }

  v7.receiver = self;
  v7.super_class = CNSNaPSetupFlowManager;
  [(CNSNaPSetupFlowManager *)&v7 dealloc];
}

- (id)posterOnboardingWelcomeNavigationControllerForContact:(id)contact hasOptionToSkip:(BOOL)skip hasExistingNickname:(BOOL)nickname
{
  nicknameCopy = nickname;
  skipCopy = skip;
  contactCopy = contact;
  v9 = [[CNPosterOnboardingWelcomeViewController alloc] initWithContact:contactCopy];

  [(CNPosterOnboardingWelcomeViewController *)v9 setHasOptionToSkip:skipCopy];
  [(CNPosterOnboardingWelcomeViewController *)v9 setHasExistingNickname:nicknameCopy];
  [(CNPosterOnboardingWelcomeViewController *)v9 setDelegate:self];
  +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  [(CNPosterOnboardingWelcomeViewController *)v9 setPreferredContentSize:?];
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if ([featureFlags isFeatureEnabled:26])
  {
    multiplePhoneNumbersTiedToAppleID = [(CNSNaPSetupFlowManager *)self multiplePhoneNumbersTiedToAppleID];

    if (multiplePhoneNumbersTiedToAppleID)
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

- (void)dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  [(CNPRUISPosterSnapshotController *)self->_snapshotController releaseKeepActiveAssertionForReason:@"CNMeCardSharingEditPosterAvatarFlowManager"];
  if (completionCopy)
  {
    v8 = _Block_copy(completionCopy);
  }

  else
  {
    v8 = &__block_literal_global_251;
  }

  WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);

  if (WeakRetained)
  {
    presenterDelegate = [(CNSNaPSetupFlowManager *)self presenterDelegate];
    [presenterDelegate sender:self dismissViewController:controllerCopy completionHandler:v8];
  }

  else
  {
    presentingViewController = [controllerCopy presentingViewController];

    if (presentingViewController)
    {
      presentingViewController2 = [controllerCopy presentingViewController];
      [presentingViewController2 dismissViewControllerAnimated:0 completion:v8];
    }

    else
    {
      v8[2](v8);
    }
  }
}

- (void)dismissNavigationController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  [(CNPRUISPosterSnapshotController *)self->_snapshotController releaseKeepActiveAssertionForReason:@"CNMeCardSharingEditPosterAvatarFlowManager"];
  baseViewController = self->_baseViewController;
  if (baseViewController)
  {
    [(UIViewController *)baseViewController dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);

    if (WeakRetained)
    {
      presenterDelegate = [(CNSNaPSetupFlowManager *)self presenterDelegate];
      [presenterDelegate sender:self dismissViewController:controllerCopy];
    }
  }
}

- (void)dismissOnboardingIfNeeded
{
  onboardingWelcomeNavigationController = [(CNSNaPSetupFlowManager *)self onboardingWelcomeNavigationController];

  if (onboardingWelcomeNavigationController)
  {
    v4 = [objc_opt_class() log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Dismissing onboarding if needed", v6, 2u);
    }

    onboardingWelcomeNavigationController2 = [(CNSNaPSetupFlowManager *)self onboardingWelcomeNavigationController];
    [onboardingWelcomeNavigationController2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)presentNavigationController:(id)controller
{
  controllerCopy = controller;
  baseViewController = self->_baseViewController;
  v8 = controllerCopy;
  if (baseViewController)
  {
    [(UIViewController *)baseViewController presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);

    if (WeakRetained)
    {
      presenterDelegate = [(CNSNaPSetupFlowManager *)self presenterDelegate];
      [presenterDelegate sender:self presentViewController:v8];
    }
  }
}

- (void)startOnboardingFlowWithNicknameContact:(id)contact meContact:(id)meContact
{
  v7 = contact != 0;
  if (contact)
  {
    meContactCopy = contact;
  }

  else
  {
    meContactCopy = meContact;
  }

  self->_isOnboarding = 1;
  v9 = meContactCopy;
  meContactCopy2 = meContact;
  contactCopy2 = contact;
  v11 = [meContactCopy2 mutableCopy];
  editingContact = self->_editingContact;
  self->_editingContact = v11;

  v13 = [[CNVisualIdentity alloc] initWithContact:v9];
  pendingVisualIdentity = self->_pendingVisualIdentity;
  self->_pendingVisualIdentity = v13;

  v15 = +[CNAvatarPosterCarouselEditingContext contextForCreateNew];
  [(CNSNaPSetupFlowManager *)self setAvatarPosterEditingContext:v15];

  unifiedMeContactMonitor = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
  v17 = [unifiedMeContactMonitor isMeContact:meContactCopy2];
  imagePickerController = [(CNSNaPSetupFlowManager *)self imagePickerController];
  [imagePickerController setIsMeContact:v17];

  v19 = [v9 mutableCopy];
  v20 = [(CNSNaPSetupFlowManager *)self posterOnboardingWelcomeNavigationControllerForContact:v19 hasOptionToSkip:1 hasExistingNickname:v7];
  [(CNSNaPSetupFlowManager *)self setOnboardingWelcomeNavigationController:v20];

  [(CNPRUISPosterSnapshotController *)self->_snapshotController acquireKeepActiveAssertionForReason:@"CNMeCardSharingEditPosterAvatarFlowManager"];
  editFlowReporter = self->_editFlowReporter;
  imagePickerController2 = [(CNSNaPSetupFlowManager *)self imagePickerController];
  -[PosterEditFlowReporter startingFromOnboardingWithMeCard:](editFlowReporter, "startingFromOnboardingWithMeCard:", [imagePickerController2 isMeContact]);

  onboardingWelcomeNavigationController = [(CNSNaPSetupFlowManager *)self onboardingWelcomeNavigationController];
  [(CNSNaPSetupFlowManager *)self presentNavigationController:onboardingWelcomeNavigationController];
}

- (void)startContactCardFlowForContact:(id)contact isEditing:(BOOL)editing
{
  editingCopy = editing;
  contactCopy = contact;
  objc_storeStrong(&self->_editingContact, contact);
  v7 = [[CNVisualIdentity alloc] initWithContact:contactCopy];
  pendingVisualIdentity = self->_pendingVisualIdentity;
  self->_pendingVisualIdentity = v7;

  self->_isEditingContactCard = 1;
  [(CNPRUISPosterSnapshotController *)self->_snapshotController acquireKeepActiveAssertionForReason:@"CNMeCardSharingEditPosterAvatarFlowManager"];
  editFlowReporter = self->_editFlowReporter;
  imagePickerController = [(CNSNaPSetupFlowManager *)self imagePickerController];
  -[PosterEditFlowReporter startingFromContactsWithMeCard:isEditing:](editFlowReporter, "startingFromContactsWithMeCard:isEditing:", [imagePickerController isMeContact], editingCopy);

  v11 = *MEMORY[0x1E6996540];
  imageData = [contactCopy imageData];
  if (!(*(v11 + 16))(v11, imageData))
  {
    goto LABEL_6;
  }

  wallpaper = [contactCopy wallpaper];
  posterArchiveData = [wallpaper posterArchiveData];
  if (((*(v11 + 16))(v11, posterArchiveData) & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  identifier = [contactCopy identifier];
  v16 = [(CNSNaPSetupFlowManager *)self recentAvatarsCountForContactIdentifier:identifier];

  if (!v16)
  {
    wallpaperGalleryNavigationController = [(CNSNaPSetupFlowManager *)self wallpaperGalleryNavigationController];
    [(CNSNaPSetupFlowManager *)self setGalleryNavigationController:wallpaperGalleryNavigationController];

    galleryNavigationController = [(CNSNaPSetupFlowManager *)self galleryNavigationController];
    [(CNSNaPSetupFlowManager *)self presentNavigationController:galleryNavigationController];

    [(CNSNaPSetupFlowManager *)self setIsCreatingNewAvatar:1];
    goto LABEL_10;
  }

LABEL_7:
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    [(CNSNaPSetupFlowManager *)self setMode:1];
  }

  v21 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationControllerForContact:self->_editingContact];
  [(CNSNaPSetupFlowManager *)self setPosterEditOptionsNavigationController:v21];

  posterEditOptionsNavigationController = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
  [(CNSNaPSetupFlowManager *)self presentNavigationController:posterEditOptionsNavigationController];

LABEL_10:
}

- (void)startEditFlowWithSNaPContact:(id)contact
{
  objc_storeStrong(&self->_editingContact, contact);
  contactCopy = contact;
  v6 = [[CNVisualIdentity alloc] initWithContact:contactCopy];
  pendingVisualIdentity = self->_pendingVisualIdentity;
  self->_pendingVisualIdentity = v6;

  unifiedMeContactMonitor = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
  v9 = [unifiedMeContactMonitor isMeContact:contactCopy];
  imagePickerController = [(CNSNaPSetupFlowManager *)self imagePickerController];
  [imagePickerController setIsMeContact:v9];

  editFlowReporter = self->_editFlowReporter;
  imagePickerController2 = [(CNSNaPSetupFlowManager *)self imagePickerController];
  -[PosterEditFlowReporter startingFromSNAPWithMeCard:](editFlowReporter, "startingFromSNAPWithMeCard:", [imagePickerController2 isMeContact]);

  v13 = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationControllerForContact:self->_editingContact];
  [(CNSNaPSetupFlowManager *)self setPosterEditOptionsNavigationController:v13];

  [(CNPRUISPosterSnapshotController *)self->_snapshotController acquireKeepActiveAssertionForReason:@"CNMeCardSharingEditPosterAvatarFlowManager"];
  posterEditOptionsNavigationController = [(CNSNaPSetupFlowManager *)self posterEditOptionsNavigationController];
  [(CNSNaPSetupFlowManager *)self presentNavigationController:posterEditOptionsNavigationController];
}

- (int64_t)defaultModalPresentationStyle
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return -2;
  }

  else
  {
    return 0;
  }
}

- (void)setGalleryNavigationController:(id)controller
{
  objc_storeStrong(&self->_galleryNavigationController, controller);
  controllerCopy = controller;
  avatarEditFlowManager = [(CNSNaPSetupFlowManager *)self avatarEditFlowManager];
  [avatarEditFlowManager setBaseNavigationController:controllerCopy];
}

- (CNSNaPSetupFlowManager)initWithBaseViewController:(id)controller contactStore:(id)store mode:(int64_t)mode presenterDelegate:(id)delegate
{
  controllerCopy = controller;
  storeCopy = store;
  delegateCopy = delegate;
  v35.receiver = self;
  v35.super_class = CNSNaPSetupFlowManager;
  v14 = [(CNSNaPSetupFlowManager *)&v35 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_baseViewController, controller);
    objc_storeWeak(&v15->_presenterDelegate, delegateCopy);
    objc_storeStrong(&v15->_contactStore, store);
    v16 = objc_alloc_init(CNMeCardSharingEditAvatarFlowManager);
    avatarEditFlowManager = v15->_avatarEditFlowManager;
    v15->_avatarEditFlowManager = v16;

    [(CNMeCardSharingEditAvatarFlowManager *)v15->_avatarEditFlowManager setDelegate:v15];
    v18 = objc_alloc_init(CNVisualIdentityImagePickerController);
    imagePickerController = v15->_imagePickerController;
    v15->_imagePickerController = v18;

    [(CNVisualIdentityImagePickerController *)v15->_imagePickerController setDelegate:v15];
    defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
    v21 = [defaultProvider newSerialSchedulerWithName:@"com.apple.ContactsUI.sharedProfileSetup.providerItem.workQueue"];
    providerItemRenderingQueue = v15->_providerItemRenderingQueue;
    v15->_providerItemRenderingQueue = v21;

    defaultProvider2 = [MEMORY[0x1E6996820] defaultProvider];
    mainThreadScheduler = [defaultProvider2 mainThreadScheduler];
    providerItemCallbackQueue = v15->_providerItemCallbackQueue;
    v15->_providerItemCallbackQueue = mainThreadScheduler;

    v26 = objc_alloc_init(CNPRUISPosterSnapshotController);
    snapshotController = v15->_snapshotController;
    v15->_snapshotController = v26;

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      modeCopy = 0;
    }

    else
    {
      modeCopy = mode;
    }

    v15->_mode = modeCopy;
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