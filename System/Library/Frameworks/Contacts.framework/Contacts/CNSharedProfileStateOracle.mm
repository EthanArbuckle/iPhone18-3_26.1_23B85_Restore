@interface CNSharedProfileStateOracle
+ (BOOL)contactIsInAutoUpdateState:(id)a3;
+ (BOOL)isFeatureEnabled;
+ (BOOL)nicknameHasValidVisualIdentityData:(id)a3;
+ (BOOL)nicknames:(id)a3 areValidForContact:(id)a4;
+ (BOOL)shouldSaveCurrentPoster:(id)a3 toRecentsForContact:(id)a4;
+ (id)descriptionForActionType:(unint64_t)a3;
+ (id)descriptionForUpdateState:(unint64_t)a3;
+ (id)descriptorForRequiredKeys;
+ (id)log;
+ (id)refetchedContactIfNeededWithRequiredKeys:(id)a3 contactStore:(id)a4;
+ (unint64_t)effectiveStateForContact:(id)a3;
- (BOOL)canShowRevertToPreviousBannerForEffectiveState:(unint64_t)a3;
- (BOOL)canShowRevertToPreviousBannerForRecentsItem:(id)a3;
- (BOOL)contactRequiresUpdateForActionType:(unint64_t)a3;
- (BOOL)currentNicknameHasValidVisualIdentityData;
- (BOOL)didPendingNicknameChangePhotoOrWallpaper;
- (BOOL)effectiveStateForContactIsAutoUpdate;
- (BOOL)isRevertBannerExpiredForDate:(id)a3;
- (BOOL)isRevertToPreviousExpired;
- (BOOL)pendingNicknameHasValidVisualIdentityData;
- (BOOL)saveUpdatedContact:(id)a3 error:(id *)a4;
- (BOOL)shouldPerformTransitionAnimation;
- (CNContact)contact;
- (CNContactImageStore)recentContactImageStore;
- (CNContactPosterStore)recentPosterStore;
- (CNSharedProfileStateOracle)initWithContact:(id)a3 contactStore:(id)a4;
- (CNSharedProfileStateOracle)initWithContact:(id)a3 contactStore:(id)a4 archivedNickname:(id)a5 currentNickname:(id)a6 pendingNickname:(id)a7;
- (double)revertBannerMaxDisplayInterval;
- (double)revertToPreviousMaxDisplayInterval;
- (id)availableActionTypesForEffectiveState;
- (id)lastRecentContactImage;
- (id)lastRecentPoster;
- (id)lastRevertableRecentCustomContactImage;
- (id)lastRevertableRecentCustomPoster;
- (id)lastRevertableRecentSharedContactImage;
- (id)lastRevertableRecentSharedPoster;
- (id)recentImages;
- (id)recentPosters;
- (id)recentsImageMarkedCurrent;
- (id)recentsPosterMarkedCurrent;
- (id)targetProfileForActionType:(unint64_t)a3;
- (id)updateContactAndNicknamesForActionType:(unint64_t)a3 error:(id *)a4;
- (id)updateContactAndNicknamesForAutoUpdateWithError:(id *)a3;
- (id)updateContactAndNicknamesForDeclinedActionType:(unint64_t)a3 error:(id *)a4;
- (id)updateContactForActionType:(unint64_t)a3 error:(id *)a4;
- (id)updateContactForAutoUpdateWithError:(id *)a3;
- (id)updateContactForDeclinedActionType:(unint64_t)a3 error:(id *)a4;
- (unint64_t)avatarViewAnimationTypeForEffectiveState;
- (unint64_t)bannerActionTypeForEffectiveState;
- (unint64_t)effectiveStateForContact;
- (void)markArchivedNicknameAsIgnored;
- (void)saveContactImage:(id)a3;
- (void)saveContactPoster:(id)a3;
- (void)saveCurrentAvatarPosterPairToRecents;
- (void)setContact:(id)a3;
- (void)updateOracleContactAndNicknamesWithUpdatedContact:(id)a3;
@end

@implementation CNSharedProfileStateOracle

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_1 != -1)
  {
    +[CNSharedProfileStateOracle descriptorForRequiredKeys];
  }

  v3 = descriptorForRequiredKeys_cn_once_object_1;

  return v3;
}

void __55__CNSharedProfileStateOracle_descriptorForRequiredKeys__block_invoke()
{
  v5[23] = *MEMORY[0x1E69E9840];
  v0 = [CNContactFormatter descriptorForRequiredKeysForStyle:0, @"identifier", @"linkIdentifier"];
  v5[2] = v0;
  v5[3] = @"imageData";
  v5[4] = @"thumbnailImageData";
  v5[5] = @"cropRect";
  v5[6] = @"memojiMetadata";
  v5[7] = @"fullscreenImageData";
  v5[8] = @"imageDataAvailable";
  v5[9] = @"imageType";
  v5[10] = @"imageHash";
  v5[11] = @"imageData";
  v5[12] = @"sharedPhotoDisplayPreference";
  v5[13] = @"watchWallpaperImageData";
  v5[14] = @"wallpaper";
  v5[15] = @"phoneNumbers";
  v5[16] = @"emailAddresses";
  v5[17] = @"instantMessageAddresses";
  v5[18] = @"socialProfiles";
  v5[19] = @"postalAddresses";
  v5[20] = @"sensitiveContentConfiguration";
  v5[21] = @"avatarRecipeData";
  v5[22] = @"birthday";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:23];

  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNSharedProfileStateOracle descriptorForRequiredKeys]_block_invoke"];
  v3 = [CNContact descriptorWithKeyDescriptors:v1 description:v2];

  v4 = descriptorForRequiredKeys_cn_once_object_1;
  descriptorForRequiredKeys_cn_once_object_1 = v3;
}

+ (BOOL)isFeatureEnabled
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:27];

  return v4;
}

+ (id)log
{
  if (log_cn_once_token_0 != -1)
  {
    +[CNSharedProfileStateOracle log];
  }

  v3 = log_cn_once_object_0;

  return v3;
}

- (unint64_t)effectiveStateForContact
{
  v3 = objc_opt_class();
  v4 = [(CNSharedProfileStateOracle *)self contact];
  v5 = [v3 effectiveStateForContact:v4];

  return v5;
}

- (CNContact)contact
{
  v2 = [(CNSharedProfileStateOracle *)self contactLock];
  v3 = CNResultWithLock();

  return v3;
}

id __37__CNSharedProfileStateOracle_contact__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldContactBeRefetched])
  {
    v2 = objc_opt_class();
    v3 = *(a1 + 32);
    v4 = v3[1];
    v5 = [v3 contactStore];
    v6 = [v2 refetchedContactIfNeededWithRequiredKeys:v4 contactStore:v5];
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;

    *(*(a1 + 32) + 16) = 0;
  }

  v9 = *(*(a1 + 32) + 8);

  return v9;
}

- (unint64_t)avatarViewAnimationTypeForEffectiveState
{
  if ([objc_opt_class() isFeatureEnabled] && (-[CNSharedProfileStateOracle contact](self, "contact"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3) && -[CNSharedProfileStateOracle shouldPerformTransitionAnimation](self, "shouldPerformTransitionAnimation") && (v4 = -[CNSharedProfileStateOracle effectiveStateForContact](self, "effectiveStateForContact"), v4 <= 3))
  {
    return qword_19567B000[v4];
  }

  else
  {
    return 2;
  }
}

- (BOOL)shouldPerformTransitionAnimation
{
  *&v34[5] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() isFeatureEnabled];
  if (!v3)
  {
    return v3;
  }

  v4 = [(CNSharedProfileStateOracle *)self contact];

  if (!v4)
  {
    goto LABEL_19;
  }

  if (([objc_opt_class() shouldBypassPersistenceCheck] & 1) == 0)
  {
    v5 = [(CNSharedProfileStateOracle *)self contact];
    v6 = [v5 hasBeenPersisted];

    if ((v6 & 1) == 0)
    {
      v18 = [objc_opt_class() log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&dword_1954A0000, v18, OS_LOG_TYPE_DEFAULT, "Cannot show an animation for an unsaved contact", &v33, 2u);
      }

      goto LABEL_19;
    }
  }

  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CNSharedProfileStateOracle *)self contact];
    v9 = [v8 identifier];
    v33 = 138412290;
    *v34 = v9;
    _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "Checking for shouldPerformTransitionAnimation for contact <%@>", &v33, 0xCu);
  }

  v10 = [(CNSharedProfileStateOracle *)self didPendingNicknameChangePhotoOrWallpaper];
  v11 = [objc_opt_class() log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 67109120;
    v34[0] = v10;
    _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Pending nickname didPendingNicknameChangePhotoOrWallpaper: %d", &v33, 8u);
  }

  if (!v10)
  {
    goto LABEL_19;
  }

  v12 = [(CNSharedProfileStateOracle *)self pendingNickname];

  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 67109120;
    v34[0] = 1;
    _os_log_impl(&dword_1954A0000, v13, OS_LOG_TYPE_DEFAULT, "shouldPerformTransitionAnimation: pendingHasChangedPhotoOrWallpaper: %d", &v33, 8u);
  }

  if (!v12)
  {
    goto LABEL_19;
  }

  if (![(CNSharedProfileStateOracle *)self effectiveStateForContactIsAutoUpdate])
  {
    v14 = [(CNSharedProfileStateOracle *)self pendingNickname];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(CNSharedProfileStateOracle *)self pendingNickname];
      v17 = [v16 hasObservedTransition];
    }

    else
    {
      v17 = 0;
    }

    v19 = [objc_opt_class() log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 67109120;
      v34[0] = v17;
      _os_log_impl(&dword_1954A0000, v19, OS_LOG_TYPE_DEFAULT, "shouldPerformTransitionAnimation: hasObservedTransition: %d", &v33, 8u);
    }

    if (v17)
    {
LABEL_19:
      LOBYTE(v3) = 0;
      return v3;
    }
  }

  v20 = [(CNSharedProfileStateOracle *)self contact];
  if ([v20 imageDataAvailable])
  {
    v21 = 0;
  }

  else
  {
    v22 = [(CNSharedProfileStateOracle *)self pendingNickname];
    v23 = [v22 avatar];
    v21 = [v23 hasImage] ^ 1;
  }

  v24 = *MEMORY[0x1E6996540];
  v25 = [(CNSharedProfileStateOracle *)self contact];
  v26 = [v25 wallpaper];
  v27 = [v26 posterArchiveData];
  if ((*(v24 + 16))(v24, v27))
  {
    v28 = [(CNSharedProfileStateOracle *)self pendingNickname];
    v29 = [v28 wallpaper];
    v30 = [v29 wallpaperExists] ^ 1;
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_opt_class() log];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 67109376;
    v34[0] = v30;
    LOWORD(v34[1]) = 1024;
    *(&v34[1] + 2) = v21;
    _os_log_impl(&dword_1954A0000, v31, OS_LOG_TYPE_DEFAULT, "shouldPerformTransitionAnimation: noWallpaperToTransition: %d, noAvatarToTransition :%d", &v33, 0xEu);
  }

  LOBYTE(v3) = v21 & v30 ^ 1;
  return v3;
}

- (BOOL)didPendingNicknameChangePhotoOrWallpaper
{
  v3 = [(CNSharedProfileStateOracle *)self pendingNickname];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CNSharedProfileStateOracle *)self pendingNickname];
  v5 = [(CNSharedProfileStateOracle *)self currentNickname];
  v6 = [(CNSharedProfileStateOracle *)self didPhotoOrWallpaperChangeFrom:v4 to:v5];

  return v6;
}

uint64_t __33__CNSharedProfileStateOracle_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNSharedProfileStateOracle");
  v1 = log_cn_once_object_0;
  log_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNSharedProfileStateOracle)initWithContact:(id)a3 contactStore:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [MEMORY[0x1E69966E8] currentEnvironment];
  v9 = [v8 nicknameProvider];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 imNicknameProvider];
  v13 = objc_opt_respondsToSelector();

  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v13)
  {
    v17 = [v11 imNicknameProvider];
    v18 = [v17 allNicknamesForContact:v6];

    v19 = [objc_opt_class() log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = v18;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_1954A0000, v19, OS_LOG_TYPE_DEFAULT, "Fetching all nicknames %@ for %@", &v22, 0x16u);
    }

    v16 = [v18 objectForKey:@"pendingNickname"];
    v15 = [v18 objectForKey:@"currentNickname"];
    v14 = [v18 objectForKey:@"archivedNickname"];
  }

  v20 = [(CNSharedProfileStateOracle *)self initWithContact:v6 contactStore:v7 archivedNickname:v14 currentNickname:v15 pendingNickname:v16];

  return v20;
}

- (CNSharedProfileStateOracle)initWithContact:(id)a3 contactStore:(id)a4 archivedNickname:(id)a5 currentNickname:(id)a6 pendingNickname:(id)a7
{
  v56[3] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v46 = a4;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v47.receiver = self;
  v47.super_class = CNSharedProfileStateOracle;
  v17 = [(CNSharedProfileStateOracle *)&v47 init];
  if (v17)
  {
    v42 = v13;
    v18 = *MEMORY[0x1E6996588];
    v40 = a7;
    v41 = v12;
    v19 = (*MEMORY[0x1E6996588] + 16);
    v44 = v14;
    v20 = (*v19)(*MEMORY[0x1E6996588], v14);
    v56[0] = v20;
    v21 = (*v19)(v18, v15);
    v56[1] = v21;
    v43 = v16;
    v22 = (*v19)(v18, v16);
    v56[2] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
    v24 = [v23 _cn_filter:*MEMORY[0x1E6996550]];

    v12 = v41;
    v25 = a6;

    if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0 && ([objc_opt_class() nicknames:v24 areValidForContact:v41] & 1) == 0)
    {
      v26 = [objc_opt_class() log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v37 = [v44 handle];
        v38 = [v15 handle];
        v39 = [v43 handle];
        *buf = 138478595;
        v49 = v37;
        v50 = 2113;
        v51 = v38;
        v52 = 2113;
        v53 = v39;
        v54 = 2113;
        v55 = v41;
        _os_log_error_impl(&dword_1954A0000, v26, OS_LOG_TYPE_ERROR, "Error intializing state oracle using nicknames (%{private}@, %{private}@, %{private}@) for contact %{private}@", buf, 0x2Au);
      }
    }

    objc_storeStrong(&v17->_contact, a3);
    v17->_shouldContactBeRefetched = 1;
    v27 = objc_alloc_init(MEMORY[0x1E6996878]);
    contactLock = v17->_contactLock;
    v17->_contactLock = v27;

    objc_storeStrong(&v17->_contactStore, v46);
    objc_storeStrong(&v17->_archivedNickname, a5);
    objc_storeStrong(&v17->_currentNickname, v25);
    objc_storeStrong(&v17->_pendingNickname, v40);
    objc_opt_class();
    v29 = [MEMORY[0x1E69966E8] currentEnvironment];
    v30 = [v29 nicknameProvider];
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    v33 = [v32 imNicknameProvider];

    nicknameProvider = v17->_nicknameProvider;
    v17->_nicknameProvider = v33;

    v35 = v17;
    v13 = v42;
    v16 = v43;
    v14 = v44;
  }

  return v17;
}

- (void)setContact:(id)a3
{
  v4 = a3;
  v5 = [(CNSharedProfileStateOracle *)self contactLock];
  v6 = v4;
  CNRunWithLock();
}

- (CNContactImageStore)recentContactImageStore
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __53__CNSharedProfileStateOracle_recentContactImageStore__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (!v2)
  {
    v3 = objc_alloc_init(CNContactImageStore);
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = v3;

    v2 = *(*(a1 + 32) + 64);
  }

  return v2;
}

- (CNContactPosterStore)recentPosterStore
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __47__CNSharedProfileStateOracle_recentPosterStore__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (!v2)
  {
    v3 = objc_alloc_init(CNContactPosterStore);
    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    *(v4 + 72) = v3;

    v2 = *(*(a1 + 32) + 72);
  }

  return v2;
}

+ (BOOL)nicknames:(id)a3 areValidForContact:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(CNSharedProfileContactHandleHelper);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) handle];
        v14 = [(CNSharedProfileContactHandleHelper *)v7 contact:v6 containsHandleString:v13];

        if (!v14)
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  return v15;
}

+ (id)refetchedContactIfNeededWithRequiredKeys:(id)a3 contactStore:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (([objc_opt_class() isFeatureEnabled] & 1) == 0)
  {
    v12 = v5;
    goto LABEL_24;
  }

  if (!v6)
  {
    v13 = [objc_opt_class() log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      +[CNSharedProfileStateOracle refetchedContactIfNeededWithRequiredKeys:contactStore:];
    }

    goto LABEL_11;
  }

  v7 = [CNContactStore authorizationStatusForEntityType:0];
  v8 = objc_opt_class();
  if (v7 != CNAuthorizationStatusAuthorized)
  {
    v13 = [v8 log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[CNSharedProfileStateOracle refetchedContactIfNeededWithRequiredKeys:contactStore:];
    }

LABEL_11:

    v12 = 0;
    goto LABEL_24;
  }

  v9 = [v8 descriptorForRequiredKeys];
  v26[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v11 = [v5 areKeysAvailable:v10];

  if (v11)
  {
    v12 = v5;
  }

  else
  {
    v14 = [v5 availableKeyDescriptor];
    if (v14)
    {
      v25[0] = v9;
      v15 = [v5 availableKeyDescriptor];
      v25[1] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    }

    else
    {
      v24 = v9;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    }

    v17 = [v5 identifier];
    v23 = 0;
    v12 = [v6 unifiedContactWithIdentifier:v17 keysToFetch:v16 error:&v23];
    v18 = v23;

    v19 = [objc_opt_class() log];
    v20 = v19;
    if (v12)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        +[CNSharedProfileStateOracle refetchedContactIfNeededWithRequiredKeys:contactStore:];
      }

      v21 = v12;
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CNSharedProfileStateOracle refetchedContactIfNeededWithRequiredKeys:v18 contactStore:?];
      }
    }
  }

LABEL_24:

  return v12;
}

+ (unint64_t)effectiveStateForContact:(id)a3
{
  v3 = a3;
  if (![objc_opt_class() isFeatureEnabled])
  {
    goto LABEL_4;
  }

  if (!v3)
  {
    goto LABEL_10;
  }

  if ([objc_opt_class() isTinker])
  {
LABEL_4:
    v4 = 2;
    goto LABEL_11;
  }

  if (![v3 isKeyAvailable:@"sharedPhotoDisplayPreference"])
  {
LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  v5 = [v3 sharedPhotoDisplayPreference];
  v4 = 0;
  if (v5 > 1)
  {
    if (v5 == 2 || v5 == 3)
    {
LABEL_14:
      v4 = v5;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    if ([v3 isKeyAvailable:@"imageDataAvailable"] && objc_msgSend(v3, "imageDataAvailable"))
    {
      v7 = [objc_opt_class() shouldAutoUpdateUndeterminedWithPhoto];
    }

    else
    {
      v7 = [objc_opt_class() shouldAutoUpdateUndeterminedWithoutPhoto];
    }

    if (v7)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)effectiveStateForContactIsAutoUpdate
{
  v2 = [(CNSharedProfileStateOracle *)self effectiveStateForContact];
  v3 = objc_opt_class();

  return [v3 isAutoUpdateState:v2];
}

- (id)availableActionTypesForEffectiveState
{
  v24 = *MEMORY[0x1E69E9840];
  if (![objc_opt_class() isFeatureEnabled])
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = [(CNSharedProfileStateOracle *)self contact];

  if (!v3)
  {
    return MEMORY[0x1E695E0F0];
  }

  v4 = [(CNSharedProfileStateOracle *)self contact];
  v5 = [v4 hasBeenPersisted];

  if (v5)
  {
    v6 = [(CNSharedProfileStateOracle *)self archivedNickname];

    v7 = [(CNSharedProfileStateOracle *)self effectiveStateForContact];
    v8 = [(CNSharedProfileStateOracle *)self isRevertToPreviousExpired];
    v9 = [(CNSharedProfileStateOracle *)self currentNickname];
    v10 = [(CNSharedProfileStateOracle *)self archivedNickname];
    v11 = [v9 isEqualToNickname:v10 options:34];

    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67109888;
      *v19 = v6 != 0;
      *&v19[4] = 1024;
      *&v19[6] = v7 == 2;
      v20 = 1024;
      v21 = v8;
      v22 = 1024;
      v23 = v11;
      _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "available action types: hasArchivedNicknameToRevertTo %d, currentlyAlwaysAsk %d, revertToPreviousExpired %d, previousDiffersFromCurrent %d", &v18, 0x1Au);
    }

    v14 = v7 == 2 || v6 == 0;
    if (v14 || v8 || (v11 & 1) == 0)
    {
      v15 = &unk_1F0987528;
    }

    else
    {
      v15 = &unk_1F0987510;
    }

    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      *v19 = v15;
      _os_log_impl(&dword_1954A0000, v16, OS_LOG_TYPE_DEFAULT, "Available action types: %@", &v18, 0xCu);
    }
  }

  else
  {
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1954A0000, v16, OS_LOG_TYPE_DEFAULT, "Cannot show photo preference actions for an unsaved contact", &v18, 2u);
    }

    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

- (unint64_t)bannerActionTypeForEffectiveState
{
  v38 = *MEMORY[0x1E69E9840];
  if (![objc_opt_class() isFeatureEnabled])
  {
    return 0;
  }

  v3 = [(CNSharedProfileStateOracle *)self contact];

  if (v3)
  {
    v4 = [(CNSharedProfileStateOracle *)self contact];
    v5 = [v4 hasBeenPersisted];

    if ((v5 & 1) == 0)
    {
      v16 = [objc_opt_class() log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_1954A0000, v16, OS_LOG_TYPE_DEFAULT, "Cannot show banners for an unsaved contact", &v34, 2u);
      }

      v3 = 0;
      goto LABEL_34;
    }

    v6 = [(CNSharedProfileStateOracle *)self effectiveStateForContact];
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CNSharedProfileStateOracle *)self contact];
      v9 = [v8 identifier];
      v10 = [objc_opt_class() descriptionForUpdateState:v6];
      v34 = 138543618;
      *v35 = v9;
      *&v35[8] = 2112;
      *&v35[10] = v10;
      _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "Looking up banner action type for contact (%{public}@) with effective state: %@", &v34, 0x16u);
    }

    if (v6 == 1 || v6 == 3)
    {
      v17 = [(CNSharedProfileStateOracle *)self lastRevertableRecentCustomContactImage];
      v18 = [(CNSharedProfileStateOracle *)self lastRevertableRecentCustomPoster];
      v19 = [objc_opt_class() log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v17 lastUsedDate];
        v21 = [v18 lastUsedDate];
        v22 = [(CNSharedProfileStateOracle *)self contact];
        v23 = [v22 identifier];
        v34 = 138543874;
        *v35 = v20;
        *&v35[8] = 2114;
        *&v35[10] = v21;
        v36 = 2114;
        v37 = v23;
        _os_log_impl(&dword_1954A0000, v19, OS_LOG_TYPE_DEFAULT, "Looking up banner action for auto-update: lastRecentCustomAvatar %{public}@, lastRecentCustomPoster %{public}@ for contactID (%{public}@)", &v34, 0x20u);
      }

      if (v17 | v18)
      {
        v3 = 2;
      }

      else
      {
        v3 = [(CNSharedProfileStateOracle *)self canShowRevertToPreviousBannerForEffectiveState:v6];
      }

      goto LABEL_32;
    }

    if (v6 == 2)
    {
      v11 = [(CNSharedProfileStateOracle *)self pendingNickname];

      if (v11)
      {
        v12 = [(CNSharedProfileStateOracle *)self pendingNickname];
        v13 = objc_opt_respondsToSelector();

        if (v13)
        {
          v14 = [(CNSharedProfileStateOracle *)self pendingNickname];
          v15 = [v14 isIgnored];
        }

        else
        {
          v15 = 0;
        }

        v27 = [objc_opt_class() log];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [(CNSharedProfileStateOracle *)self contact];
          v29 = [v28 identifier];
          v34 = 67109378;
          *v35 = v15;
          *&v35[4] = 2114;
          *&v35[6] = v29;
          _os_log_impl(&dword_1954A0000, v27, OS_LOG_TYPE_DEFAULT, "Looking up banner action type: pendingIsIgnored %d for contact (%{public}@)", &v34, 0x12u);
        }

        if (v15)
        {
          v3 = 0;
        }

        else
        {
          v3 = 3;
        }

        goto LABEL_32;
      }

      v24 = [objc_opt_class() log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(CNSharedProfileStateOracle *)self contact];
        v26 = [v25 identifier];
        v34 = 138543362;
        *v35 = v26;
        _os_log_impl(&dword_1954A0000, v24, OS_LOG_TYPE_DEFAULT, "Looking up banner action type: pendingNickname is nil for contact (%{public}@)", &v34, 0xCu);
      }
    }

    v3 = 0;
LABEL_32:
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [objc_opt_class() descriptionForActionType:v3];
      v31 = [(CNSharedProfileStateOracle *)self contact];
      v32 = [v31 identifier];
      v34 = 138412546;
      *v35 = v30;
      *&v35[8] = 2114;
      *&v35[10] = v32;
      _os_log_impl(&dword_1954A0000, v16, OS_LOG_TYPE_DEFAULT, "Returning banner action type: %@ for contact (%{public}@)", &v34, 0x16u);
    }

LABEL_34:
  }

  return v3;
}

- (BOOL)canShowRevertToPreviousBannerForEffectiveState:(unint64_t)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() isAutoUpdateState:a3];
  if (v4)
  {
    v5 = [(CNSharedProfileStateOracle *)self lastRevertableRecentSharedContactImage];
    v6 = [(CNSharedProfileStateOracle *)self canShowRevertToPreviousBannerForRecentsItem:v5];

    if (v6 || ([(CNSharedProfileStateOracle *)self lastRevertableRecentSharedPoster], v7 = objc_claimAutoreleasedReturnValue(), v8 = [(CNSharedProfileStateOracle *)self canShowRevertToPreviousBannerForRecentsItem:v7], v7, v8))
    {
      LOBYTE(v4) = 1;
      return v4;
    }

    v9 = [(CNSharedProfileStateOracle *)self archivedNickname];

    if (!v9)
    {
      v12 = [objc_opt_class() log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(CNSharedProfileStateOracle *)self contact];
        v14 = [v13 identifier];
        v33 = 138543362;
        v34 = v14;
        v15 = "No archived nickname found for contact (%{public}@), cannot show legacy revert to previous banner";
        goto LABEL_11;
      }

LABEL_12:

LABEL_13:
      LOBYTE(v4) = 0;
      return v4;
    }

    v10 = [(CNSharedProfileStateOracle *)self archivedNickname];
    v11 = [v10 isIgnored];

    if (v11)
    {
      v12 = [objc_opt_class() log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(CNSharedProfileStateOracle *)self contact];
        v14 = [v13 identifier];
        v33 = 138543362;
        v34 = v14;
        v15 = "There's an archived nickname for contact (%{public}@), but its been ignored. Cannot show revert to previous banner for legacy archive";
LABEL_11:
        _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, v15, &v33, 0xCu);

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v16 = [(CNSharedProfileStateOracle *)self archivedNickname];
    v17 = [(CNSharedProfileStateOracle *)self currentNickname];
    v18 = [v16 isEqualToNickname:v17 options:2];

    v19 = [(CNSharedProfileStateOracle *)self archivedNickname];
    v20 = [(CNSharedProfileStateOracle *)self currentNickname];
    v21 = [v19 isEqualToNickname:v20 options:32];

    v22 = [objc_opt_class() log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(CNSharedProfileStateOracle *)self contact];
      v24 = [v23 identifier];
      v33 = 138543874;
      v34 = v24;
      v35 = 1024;
      v36 = v18;
      v37 = 1024;
      v38 = v21;
      _os_log_impl(&dword_1954A0000, v22, OS_LOG_TYPE_DEFAULT, "Contact (%{public}@) archived vs current: photoDiffers %d, wallpaperDiffers %d", &v33, 0x18u);
    }

    if (((v18 | v21) & 1) == 0)
    {
      v31 = [objc_opt_class() log];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&dword_1954A0000, v31, OS_LOG_TYPE_DEFAULT, "Not offering legacy revert banner, no photo or wallpaper changes from current to archived", &v33, 2u);
      }

      goto LABEL_13;
    }

    v25 = [(CNSharedProfileStateOracle *)self archivedNickname];
    v26 = [v25 archivedDate];
    v27 = [(CNSharedProfileStateOracle *)self isRevertBannerExpiredForDate:v26];

    v28 = [objc_opt_class() log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(CNSharedProfileStateOracle *)self contact];
      v30 = [v29 identifier];
      v33 = 138543618;
      v34 = v30;
      v35 = 1024;
      v36 = v27;
      _os_log_impl(&dword_1954A0000, v28, OS_LOG_TYPE_DEFAULT, "Contact (%{public}@) archivedIsExpired %d", &v33, 0x12u);
    }

    LOBYTE(v4) = !v27;
  }

  return v4;
}

- (BOOL)canShowRevertToPreviousBannerForRecentsItem:(id)a3
{
  if (a3)
  {
    v4 = [a3 lastUsedDate];
    v5 = ![(CNSharedProfileStateOracle *)self isRevertBannerExpiredForDate:v4];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)targetProfileForActionType:(unint64_t)a3
{
  v62 = *MEMORY[0x1E69E9840];
  if (![objc_opt_class() isFeatureEnabled] || (-[CNSharedProfileStateOracle contact](self, "contact"), v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v10 = 0;
    goto LABEL_14;
  }

  if (![(CNSharedProfileStateOracle *)self contactRequiresUpdateForActionType:a3])
  {
    v12 = [CNSharedProfile alloc];
    v13 = [(CNSharedProfileStateOracle *)self contact];
    v10 = [(CNSharedProfile *)v12 initWithContact:v13];

    goto LABEL_14;
  }

  switch(a3)
  {
    case 3uLL:
      if ([(CNSharedProfileStateOracle *)self effectiveStateForContact]== 2)
      {
        v19 = [(CNSharedProfileStateOracle *)self pendingNickname];
        if (v19)
        {
          v20 = [(CNSharedProfileStateOracle *)self currentNickname];
          v21 = v20 == 0;
        }

        else
        {
          v21 = 0;
        }

        v32 = [(CNSharedProfileStateOracle *)self pendingNickname];
        if (v32 && ((v33 = v32, [(CNSharedProfileStateOracle *)self currentNickname], v34 = objc_claimAutoreleasedReturnValue(), v34, v33, !v34) ? (v35 = 1) : (v35 = v21), v35 != 1))
        {
          v38 = [(CNSharedProfileStateOracle *)self pendingNickname];
          v39 = [v38 hasObservedTransition];

          if (v39)
          {
            goto LABEL_44;
          }
        }

        else if (v21)
        {
LABEL_44:
          v36 = [CNSharedProfile alloc];
          v37 = [(CNSharedProfileStateOracle *)self pendingNickname];
          v10 = [(CNSharedProfile *)v36 initWithNickname:v37];

          v6 = [objc_opt_class() log];
          if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_59;
          }

          v7 = [(CNSharedProfileStateOracle *)self contact];
          v25 = [v7 identifier];
          v58 = 138543362;
          v59 = v25;
          v26 = "Contact (%{public}@) has a pending nickname ready, using pendingNickname as target Latest Photo";
          goto LABEL_53;
        }

        v40 = [(CNSharedProfileStateOracle *)self currentNickname];

        if (!v40)
        {
          break;
        }

        v41 = [CNSharedProfile alloc];
        v42 = [(CNSharedProfileStateOracle *)self currentNickname];
        v10 = [(CNSharedProfile *)v41 initWithNickname:v42];

        v6 = [objc_opt_class() log];
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_59;
        }

        v7 = [(CNSharedProfileStateOracle *)self contact];
        v25 = [v7 identifier];
        v58 = 138543362;
        v59 = v25;
        v26 = "Contact (%{public}@) has a current nickname with no pending nickname ready, using currentNickname as target Latest Photo";
      }

      else
      {
        v22 = [(CNSharedProfileStateOracle *)self currentNickname];

        if (!v22)
        {
          break;
        }

        v23 = [CNSharedProfile alloc];
        v24 = [(CNSharedProfileStateOracle *)self currentNickname];
        v10 = [(CNSharedProfile *)v23 initWithNickname:v24];

        v6 = [objc_opt_class() log];
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_59;
        }

        v7 = [(CNSharedProfileStateOracle *)self contact];
        v25 = [v7 identifier];
        v58 = 138543362;
        v59 = v25;
        v26 = "Contact (%{public}@) using currentNickname as target Latest Photo";
      }

LABEL_53:
      _os_log_impl(&dword_1954A0000, v6, OS_LOG_TYPE_DEFAULT, v26, &v58, 0xCu);
LABEL_57:

      goto LABEL_58;
    case 2uLL:
      v14 = [(CNSharedProfileStateOracle *)self effectiveStateForContact];
      if (v14 == 1)
      {
        goto LABEL_21;
      }

      if (v14 != 3)
      {
        v27 = [CNSharedProfile alloc];
        v28 = [(CNSharedProfileStateOracle *)self contact];
        v10 = [(CNSharedProfile *)v27 initWithContact:v28];

        v6 = [objc_opt_class() log];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [(CNSharedProfileStateOracle *)self contact];
          v30 = [v29 identifier];
          v31 = [objc_opt_class() descriptionForActionType:2];
          v58 = 138543618;
          v59 = v30;
          v60 = 2112;
          v61 = v31;
          _os_log_impl(&dword_1954A0000, v6, OS_LOG_TYPE_DEFAULT, "Defaulting to using current contact (%{public}@) photo as target photo for action type: %@ ", &v58, 0x16u);
        }

        goto LABEL_59;
      }

      v15 = [(CNSharedProfileStateOracle *)self contact];
      v16 = [v15 sharedPhotoDisplayPreference];

      if (v16)
      {
LABEL_21:
        v6 = [(CNSharedProfileStateOracle *)self lastRevertableRecentCustomPoster];
        v7 = [v6 pairedImage];
        if (!v7)
        {
          v17 = [(CNSharedProfileStateOracle *)self lastRevertableRecentCustomContactImage];
          v7 = v17;
          if (v6 && v17)
          {
            v18 = [objc_opt_class() log];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v58) = 0;
              _os_log_impl(&dword_1954A0000, v18, OS_LOG_TYPE_DEFAULT, "Target profile for revert will use a recent poster that wasn't paired with a matching recent image. Unexpected.", &v58, 2u);
            }
          }

          else if (!(v6 | v17))
          {
            v7 = [objc_opt_class() log];
            if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              [CNSharedProfileStateOracle targetProfileForActionType:?];
            }

            v10 = 0;
            goto LABEL_58;
          }
        }

        v10 = [[CNSharedProfile alloc] initWithRecentContactImage:v7 recentPoster:v6 recentAvatarRecipeData:0];
        v25 = [objc_opt_class() log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [(CNSharedProfileStateOracle *)self contact];
          v46 = [v45 identifier];
          v58 = 138543362;
          v59 = v46;
          _os_log_impl(&dword_1954A0000, v25, OS_LOG_TYPE_DEFAULT, "Contact (%{public}@) has a recent avatar or poster, using recent as target Custom Photo", &v58, 0xCu);
        }

        goto LABEL_57;
      }

      v43 = [CNSharedProfile alloc];
      v44 = [(CNSharedProfileStateOracle *)self contact];
      v10 = [(CNSharedProfile *)v43 initWithContact:v44];

      v6 = [objc_opt_class() log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(CNSharedProfileStateOracle *)self contact];
        v25 = [v7 identifier];
        v58 = 138543362;
        v59 = v25;
        v26 = "Contact (%{public}@) is in an undetermined update state, using the existing contact photo as target Custom Photo";
        goto LABEL_53;
      }

LABEL_59:

      goto LABEL_60;
    case 1uLL:
      v6 = [(CNSharedProfileStateOracle *)self lastRevertableRecentSharedPoster];
      v7 = [v6 pairedImage];
      if (!v7)
      {
        v8 = [(CNSharedProfileStateOracle *)self lastRevertableRecentSharedContactImage];
        v7 = v8;
        if (v6 && v8)
        {
          v9 = [objc_opt_class() log];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v58) = 0;
            _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_DEFAULT, "Target profile for revertToPrevious will use a recent poster that wasn't paired with a matching recent image. Unexpected.", &v58, 2u);
          }
        }

        else if (!(v6 | v8))
        {
          v10 = [(CNSharedProfileStateOracle *)self archivedNickname];

          if (!v10)
          {
            goto LABEL_59;
          }

          v49 = [CNSharedProfile alloc];
          v50 = [(CNSharedProfileStateOracle *)self archivedNickname];
          v10 = [(CNSharedProfile *)v49 initWithNickname:v50];

          v51 = [objc_opt_class() log];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = [(CNSharedProfileStateOracle *)self contact];
            v53 = [v52 identifier];
            v58 = 138543362;
            v59 = v53;
            _os_log_impl(&dword_1954A0000, v51, OS_LOG_TYPE_DEFAULT, "Contact (%{public}@) has no recent-store shared recents, but does have an archived nickname, using archivedNickname as target Previous Photo", &v58, 0xCu);
          }

          v54 = [(CNSharedProfileStateOracle *)self currentNickname];

          if (!v54)
          {
            goto LABEL_59;
          }

          v55 = [(CNSharedProfileStateOracle *)self currentNickname];
          v56 = [(CNSharedProfileStateOracle *)self archivedNickname];
          v57 = [(CNSharedProfileStateOracle *)self didPhotoOrWallpaperChangeFrom:v55 to:v56];

          if (v57)
          {
            goto LABEL_59;
          }

          v7 = [objc_opt_class() log];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            [CNSharedProfileStateOracle targetProfileForActionType:?];
          }

          goto LABEL_58;
        }
      }

      v10 = [[CNSharedProfile alloc] initWithRecentContactImage:v7 recentPoster:v6 recentAvatarRecipeData:0];
LABEL_58:

      goto LABEL_59;
  }

  v10 = 0;
LABEL_60:
  v47 = [objc_opt_class() log];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = [objc_opt_class() descriptionForActionType:a3];
    v58 = 138412546;
    v59 = v10;
    v60 = 2112;
    v61 = v48;
    _os_log_impl(&dword_1954A0000, v47, OS_LOG_TYPE_DEFAULT, "Returning target shared profile %@ for action type %@", &v58, 0x16u);
  }

LABEL_14:

  return v10;
}

- (BOOL)contactRequiresUpdateForActionType:(unint64_t)a3
{
  v5 = [objc_opt_class() isFeatureEnabled];
  if (v5)
  {
    v6 = [(CNSharedProfileStateOracle *)self effectiveStateForContact]!= 1;
    v7 = a3 != 3 || v6;
    if (a3)
    {
      LOBYTE(v5) = v7;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)updateContactForActionType:(unint64_t)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_class() isFeatureEnabled];
  v8 = [(CNSharedProfileStateOracle *)self contact];
  v9 = v8;
  if (!v7)
  {
    goto LABEL_29;
  }

  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = [(CNSharedProfileStateOracle *)self contact];
  v11 = [v10 hasBeenPersisted];

  if (v11)
  {
    if (![(CNSharedProfileStateOracle *)self contactRequiresUpdateForActionType:a3])
    {
      v9 = [(CNSharedProfileStateOracle *)self contact];
      goto LABEL_29;
    }

    v12 = [(CNSharedProfileStateOracle *)self targetProfileForActionType:a3];
    v13 = [(CNSharedProfileStateOracle *)self contact];
    v14 = [v13 mutableCopy];

    if (a3 > 1)
    {
      if (a3 != 2)
      {
        if (a3 != 3)
        {
          goto LABEL_21;
        }

        [v14 updateWithSharedProfile:v12];
        v17 = v14;
        v18 = 1;
LABEL_17:
        [v17 setSharedPhotoDisplayPreference:v18];
        goto LABEL_21;
      }
    }

    else
    {
      if (!a3)
      {
        v19 = [objc_opt_class() log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_1954A0000, v19, OS_LOG_TYPE_DEFAULT, "Trying to update contact for action type None", &v27, 2u);
        }

        goto LABEL_21;
      }

      if (a3 != 1)
      {
LABEL_21:
        v20 = [(CNSharedProfileStateOracle *)self saveUpdatedContact:v14 error:a4];
        v21 = [objc_opt_class() log];
        v22 = v21;
        if (v20)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [(CNSharedProfileStateOracle *)self contact];
            v24 = [v23 identifier];
            v25 = [objc_opt_class() descriptionForActionType:a3];
            v27 = 138543618;
            v28 = v24;
            v29 = 2112;
            v30 = v25;
            _os_log_impl(&dword_1954A0000, v22, OS_LOG_TYPE_DEFAULT, "Saved updated contact: %{public}@ for actionType %@", &v27, 0x16u);
          }

          v9 = [v14 freeze];
        }

        else
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [CNSharedProfileStateOracle updateContactForActionType:a3 error:?];
          }

          v9 = 0;
        }

        goto LABEL_29;
      }
    }

    [v14 updateWithSharedProfile:v12];
    v17 = v14;
    v18 = 2;
    goto LABEL_17;
  }

  v15 = [objc_opt_class() log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [objc_opt_class() descriptionForActionType:a3];
    v27 = 138412290;
    v28 = v16;
    _os_log_impl(&dword_1954A0000, v15, OS_LOG_TYPE_DEFAULT, "Cannot update an unsaved contact for actionType %@", &v27, 0xCu);
  }

  v9 = 0;
LABEL_29:

  return v9;
}

- (id)updateContactAndNicknamesForActionType:(unint64_t)a3 error:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_class() isFeatureEnabled];
  v8 = [(CNSharedProfileStateOracle *)self contact];
  v9 = v8;
  if (!v7)
  {
    goto LABEL_17;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = [(CNSharedProfileStateOracle *)self contact];
  v11 = [v10 hasBeenPersisted];

  v12 = [objc_opt_class() log];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = [(CNSharedProfileStateOracle *)self contact];
      v15 = [v14 identifier];
      v16 = [objc_opt_class() descriptionForActionType:a3];
      v28 = 138543618;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "Attempting to update contact (%{public}@) and nicknames for actionType: %@", &v28, 0x16u);
    }

    v9 = [(CNSharedProfileStateOracle *)self updateContactForActionType:a3 error:a4];
    if (a3 - 1 >= 2)
    {
      if (a3 != 3)
      {
        goto LABEL_14;
      }

      v18 = [(CNSharedProfileStateOracle *)self nicknameProvider];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        v20 = [(CNSharedProfileStateOracle *)self nicknameProvider];
        v21 = [(CNSharedProfileStateOracle *)self pendingNickname];
        v22 = [v21 handle];
        [v20 bannerActionTapped:v22 IMNicknameBannerAction:1];
      }
    }

    [(CNSharedProfileStateOracle *)self saveCurrentAvatarPosterPairToRecents];
LABEL_14:
    [(CNSharedProfileStateOracle *)self updateOracleContactAndNicknamesWithUpdatedContact:v9];
    v23 = [objc_opt_class() log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(CNSharedProfileStateOracle *)self contact];
      v25 = [v24 identifier];
      v26 = [objc_opt_class() descriptionForActionType:a3];
      v28 = 138543618;
      v29 = v25;
      v30 = 2112;
      v31 = v26;
      _os_log_impl(&dword_1954A0000, v23, OS_LOG_TYPE_DEFAULT, "Updated contact (%{public}@) and nicknames for actionType: %@", &v28, 0x16u);
    }

    goto LABEL_17;
  }

  if (v13)
  {
    v17 = [objc_opt_class() descriptionForActionType:a3];
    v28 = 138412290;
    v29 = v17;
    _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "Cannot update an unsaved contact for actionType %@", &v28, 0xCu);
  }

  v9 = [(CNSharedProfileStateOracle *)self contact];
LABEL_17:

  return v9;
}

- (id)updateContactForAutoUpdateWithError:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() isFeatureEnabled];
  v6 = [(CNSharedProfileStateOracle *)self contact];
  v7 = v6;
  if (v5)
  {

    if (v7)
    {
      v8 = [(CNSharedProfileStateOracle *)self contact];
      v9 = [v8 hasBeenPersisted];

      if (v9)
      {
        v10 = [(CNSharedProfileStateOracle *)self contact];
        v11 = [v10 mutableCopy];

        v12 = [(CNSharedProfileStateOracle *)self contact];
        v13 = [v12 sharedPhotoDisplayPreference];

        if (v13)
        {
LABEL_5:
          [(CNSharedProfileStateOracle *)self saveCurrentAvatarPosterPairToRecents];
          v14 = [CNSharedProfile alloc];
          v15 = [(CNSharedProfileStateOracle *)self pendingNickname];
          v16 = [(CNSharedProfile *)v14 initWithNickname:v15];

          [v11 updateWithSharedProfile:v16];
          LOBYTE(v15) = [(CNSharedProfileStateOracle *)self saveUpdatedContact:v11 error:a3];
          v17 = [objc_opt_class() log];
          v18 = v17;
          if (v15)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [(CNSharedProfileStateOracle *)self contact];
              v20 = [v19 identifier];
              v28 = 138543362;
              v29 = v20;
              _os_log_impl(&dword_1954A0000, v18, OS_LOG_TYPE_DEFAULT, "Saved updated contact: %{public}@ for auto-update", &v28, 0xCu);
            }

            v7 = [v11 freeze];
            goto LABEL_22;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [CNSharedProfileStateOracle updateContactForAutoUpdateWithError:];
          }

LABEL_21:
          v7 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v22 = [(CNSharedProfileStateOracle *)self contact];
        if ([v22 imageDataAvailable])
        {
        }

        else
        {
          v23 = *MEMORY[0x1E6996540];
          v24 = [(CNSharedProfileStateOracle *)self contact];
          v25 = [v24 wallpaper];
          v26 = [v25 posterArchiveData];
          LODWORD(v23) = (*(v23 + 16))(v23, v26);

          if (v23)
          {
            [v11 setSharedPhotoDisplayPreference:1];
            goto LABEL_5;
          }
        }

        v16 = [objc_opt_class() log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [CNSharedProfileStateOracle updateContactForAutoUpdateWithError:];
        }

        goto LABEL_21;
      }

      v21 = [objc_opt_class() log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_1954A0000, v21, OS_LOG_TYPE_DEFAULT, "Cannot update an unsaved contact for autoupdate", &v28, 2u);
      }

      v7 = [(CNSharedProfileStateOracle *)self contact];
    }
  }

LABEL_23:

  return v7;
}

- (id)updateContactAndNicknamesForAutoUpdateWithError:(id *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() isFeatureEnabled];
  v6 = [(CNSharedProfileStateOracle *)self contact];
  v7 = v6;
  if (!v5)
  {
    goto LABEL_19;
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = [(CNSharedProfileStateOracle *)self contact];
  v9 = [v8 hasBeenPersisted];

  v10 = [objc_opt_class() log];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if ((v9 & 1) == 0)
  {
    if (v11)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1954A0000, v10, OS_LOG_TYPE_DEFAULT, "Cannot update an unsaved contact for autoupdate", &v21, 2u);
    }

    goto LABEL_17;
  }

  if (v11)
  {
    v12 = [(CNSharedProfileStateOracle *)self contact];
    v13 = [v12 identifier];
    v21 = 138543362;
    v22 = v13;
    _os_log_impl(&dword_1954A0000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to update contact (%{public}@) and nicknames for auto-update", &v21, 0xCu);
  }

  if (![(CNSharedProfileStateOracle *)self effectiveStateForContactIsAutoUpdate])
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CNSharedProfileStateOracle updateContactAndNicknamesForAutoUpdateWithError:?];
    }

LABEL_17:

    goto LABEL_18;
  }

  if (![(CNSharedProfileStateOracle *)self didPendingNicknameChangePhotoOrWallpaper])
  {
LABEL_18:
    v7 = [(CNSharedProfileStateOracle *)self contact];
    goto LABEL_19;
  }

  v7 = [(CNSharedProfileStateOracle *)self updateContactForAutoUpdateWithError:a3];
  v14 = [(CNSharedProfileStateOracle *)self nicknameProvider];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(CNSharedProfileStateOracle *)self nicknameProvider];
    v17 = [(CNSharedProfileStateOracle *)self pendingNickname];
    v18 = [v17 handle];
    [v16 markTransitionAsObservedForHandleID:v18 isAutoUpdate:1];
  }

  [(CNSharedProfileStateOracle *)self updateOracleContactAndNicknamesWithUpdatedContact:v7];
  v19 = [objc_opt_class() log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v7;
    _os_log_impl(&dword_1954A0000, v19, OS_LOG_TYPE_DEFAULT, "Updated contact and nicknames for auto-update, with result: %@", &v21, 0xCu);
  }

LABEL_19:

  return v7;
}

- (id)updateContactForDeclinedActionType:(unint64_t)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_class() isFeatureEnabled];
  v8 = [(CNSharedProfileStateOracle *)self contact];
  v9 = v8;
  if (v7)
  {

    if (v9)
    {
      v10 = [(CNSharedProfileStateOracle *)self contact];
      v11 = [v10 hasBeenPersisted];

      if (v11)
      {
        v12 = [(CNSharedProfileStateOracle *)self effectiveStateForContact];
        v13 = [(CNSharedProfileStateOracle *)self contact];
        v14 = [v13 mutableCopy];

        if (a3 == 2 && v12 == 3)
        {
          [v14 setSharedPhotoDisplayPreference:1];
          v15 = [(CNSharedProfileStateOracle *)self saveUpdatedContact:v14 error:a4];
          v16 = [objc_opt_class() log];
          v17 = v16;
          if (!v15)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              [CNSharedProfileStateOracle updateContactForDeclinedActionType:error:];
            }

            v9 = 0;
            goto LABEL_17;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [(CNSharedProfileStateOracle *)self contact];
            v19 = [v18 identifier];
            v20 = [objc_opt_class() descriptionForActionType:2];
            v24 = 138543618;
            v25 = v19;
            v26 = 2112;
            v27 = v20;
            _os_log_impl(&dword_1954A0000, v17, OS_LOG_TYPE_DEFAULT, "Saved updated contact: %{public}@ for declined actionType %@", &v24, 0x16u);
          }
        }

        v9 = [v14 freeze];
LABEL_17:

        goto LABEL_18;
      }

      v21 = [objc_opt_class() log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [objc_opt_class() descriptionForActionType:a3];
        v24 = 138412290;
        v25 = v22;
        _os_log_impl(&dword_1954A0000, v21, OS_LOG_TYPE_DEFAULT, "Cannot update an unsaved contact for declined actionType %@", &v24, 0xCu);
      }

      v9 = [(CNSharedProfileStateOracle *)self contact];
    }
  }

LABEL_18:

  return v9;
}

- (id)updateContactAndNicknamesForDeclinedActionType:(unint64_t)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_class() isFeatureEnabled];
  v8 = [(CNSharedProfileStateOracle *)self contact];
  v9 = v8;
  if (!v7)
  {
    goto LABEL_19;
  }

  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = [(CNSharedProfileStateOracle *)self contact];
  v11 = [v10 hasBeenPersisted];

  v12 = [objc_opt_class() log];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = [(CNSharedProfileStateOracle *)self contact];
      v15 = [v14 identifier];
      v16 = [objc_opt_class() descriptionForActionType:a3];
      v26 = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "Attempting to decline update for contact (%{public}@) and nicknames for actionType: %@", &v26, 0x16u);
    }

    v9 = [(CNSharedProfileStateOracle *)self updateContactForDeclinedActionType:a3 error:a4];
    if (a3 == 3)
    {
      v18 = [(CNSharedProfileStateOracle *)self nicknameProvider];
      v19 = [(CNSharedProfileStateOracle *)self pendingNickname];
      v20 = [v19 handle];
      [v18 bannerActionTapped:v20 IMNicknameBannerAction:3];
    }

    else
    {
      if (a3 != 2)
      {
        if (a3 == 1)
        {
          [(CNSharedProfileStateOracle *)self markArchivedNicknameAsIgnored];
        }

        goto LABEL_16;
      }

      v18 = [(CNSharedProfileStateOracle *)self lastRecentContactImage];
      [v18 setIgnoredForRevert:1];
      [(CNSharedProfileStateOracle *)self saveContactImage:v18];
      v19 = [(CNSharedProfileStateOracle *)self lastRecentPoster];
      [v19 setIgnoredForRevert:1];
      [(CNSharedProfileStateOracle *)self saveContactPoster:v19];
      [(CNSharedProfileStateOracle *)self markArchivedNicknameAsIgnored];
    }

LABEL_16:
    [(CNSharedProfileStateOracle *)self updateOracleContactAndNicknamesWithUpdatedContact:v9];
    v21 = [objc_opt_class() log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(CNSharedProfileStateOracle *)self contact];
      v23 = [v22 identifier];
      v24 = [objc_opt_class() descriptionForActionType:a3];
      v26 = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = v24;
      _os_log_impl(&dword_1954A0000, v21, OS_LOG_TYPE_DEFAULT, "Updated contact (%{public}@) and nicknames for declined actionType: %@", &v26, 0x16u);
    }

    goto LABEL_19;
  }

  if (v13)
  {
    v17 = [objc_opt_class() descriptionForActionType:a3];
    v26 = 138412290;
    v27 = v17;
    _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "Cannot update an unsaved contact for declined actionType %@", &v26, 0xCu);
  }

  v9 = [(CNSharedProfileStateOracle *)self contact];
LABEL_19:

  return v9;
}

- (void)markArchivedNicknameAsIgnored
{
  v5 = [(CNSharedProfileStateOracle *)self nicknameProvider];
  v3 = [(CNSharedProfileStateOracle *)self archivedNickname];
  v4 = [v3 handle];
  [v5 bannerActionTapped:v4 IMNicknameBannerAction:4];
}

- (BOOL)saveUpdatedContact:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([objc_opt_class() isFeatureEnabled])
  {
    v7 = [(CNSharedProfileStateOracle *)self contact];
    v8 = [v7 hasBeenPersisted];

    if ((v8 & 1) == 0)
    {
      v9 = [objc_opt_class() log];
      if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1954A0000, &v9->super, OS_LOG_TYPE_DEFAULT, "Cannot update an unsaved contact", &v17, 2u);
      }

      v14 = 0;
      goto LABEL_16;
    }

    v9 = objc_alloc_init(CNSaveRequest);
    [(CNSaveRequest *)v9 updateContact:v6];
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(CNSharedProfileStateOracle *)self contact];
      v12 = [v11 identifier];
      v17 = 138543362;
      v18 = v12;
      _os_log_impl(&dword_1954A0000, v10, OS_LOG_TYPE_DEFAULT, "Saving contact with identifier %{public}@", &v17, 0xCu);
    }

    v13 = [(CNSharedProfileStateOracle *)self contactStore];
    v14 = [v13 executeSaveRequest:v9 error:a4];

    if (v14)
    {
      v15 = [objc_opt_class() log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1954A0000, v15, OS_LOG_TYPE_DEFAULT, "Updated oracle contact and nicknames following a contact save", &v17, 2u);
      }
    }

    else
    {
      if (!a4)
      {
LABEL_16:

        goto LABEL_17;
      }

      v15 = [objc_opt_class() log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CNSharedProfileStateOracle saveUpdatedContact:a4 error:?];
      }
    }

    goto LABEL_16;
  }

  v14 = 0;
LABEL_17:

  return v14;
}

- (void)updateOracleContactAndNicknamesWithUpdatedContact:(id)a3
{
  v11 = a3;
  if ([objc_opt_class() isFeatureEnabled])
  {
    [(CNSharedProfileStateOracle *)self setContact:v11];
    v4 = [(CNSharedProfileStateOracle *)self nicknameProvider];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CNSharedProfileStateOracle *)self nicknameProvider];
      v7 = [v6 allNicknamesForContact:v11];

      v8 = [v7 objectForKey:@"pendingNickname"];
      [(CNSharedProfileStateOracle *)self setPendingNickname:v8];

      v9 = [v7 objectForKey:@"currentNickname"];
      [(CNSharedProfileStateOracle *)self setCurrentNickname:v9];

      v10 = [v7 objectForKey:@"archivedNickname"];
      [(CNSharedProfileStateOracle *)self setArchivedNickname:v10];
    }
  }
}

+ (id)descriptionForActionType:(unint64_t)a3
{
  if (descriptionForActionType__cn_once_token_74 != -1)
  {
    +[CNSharedProfileStateOracle descriptionForActionType:];
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = descriptionForActionType__cn_once_object_74;
  v6 = [v4 numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v8 = v7;
  }

  else
  {
    v8 = @"UnknownAction";
  }

  return v8;
}

void __55__CNSharedProfileStateOracle_descriptionForActionType___block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F0986F88;
  v3[1] = &unk_1F0986F58;
  v4[0] = @"None";
  v4[1] = @"RevertToPrevious";
  v3[2] = &unk_1F0986F70;
  v3[3] = &unk_1F0986F40;
  v4[2] = @"RevertToCustom";
  v4[3] = @"UpdateToLatest";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = [v0 copy];
  v2 = descriptionForActionType__cn_once_object_74;
  descriptionForActionType__cn_once_object_74 = v1;
}

+ (id)descriptionForUpdateState:(unint64_t)a3
{
  if (descriptionForUpdateState__cn_once_token_75 != -1)
  {
    +[CNSharedProfileStateOracle descriptionForUpdateState:];
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = descriptionForUpdateState__cn_once_object_75;
  v6 = [v4 numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v8 = v7;
  }

  else
  {
    v8 = @"UnknownState";
  }

  return v8;
}

void __56__CNSharedProfileStateOracle_descriptionForUpdateState___block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F0986F88;
  v3[1] = &unk_1F0986F58;
  v4[0] = @"Undetermined";
  v4[1] = @"ExplicitAutoUpdate";
  v3[2] = &unk_1F0986F70;
  v3[3] = &unk_1F0986F40;
  v4[2] = @"AlwaysAsk";
  v4[3] = @"ImplicitAutoUpdate";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = [v0 copy];
  v2 = descriptionForUpdateState__cn_once_object_75;
  descriptionForUpdateState__cn_once_object_75 = v1;
}

+ (BOOL)contactIsInAutoUpdateState:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() effectiveStateForContact:v3];

  v5 = objc_opt_class();

  return [v5 isAutoUpdateState:v4];
}

- (BOOL)isRevertBannerExpiredForDate:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 now];
  [v6 timeIntervalSinceDate:v5];
  v8 = v7;

  [(CNSharedProfileStateOracle *)self revertBannerMaxDisplayInterval];
  LOBYTE(self) = v8 > v9;

  return self;
}

- (double)revertBannerMaxDisplayInterval
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 doubleForKey:@"CNSharedProfileRevertBannerDisplayIntervalOverride"];
  v4 = v3;

  if (v4 <= 0.0)
  {
    return 86400.0;
  }

  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "Using override revert banner display interval: %.2f", &v7, 0xCu);
  }

  return v4;
}

- (BOOL)isRevertToPreviousExpired
{
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = [(CNSharedProfileStateOracle *)self archivedNickname];
  v5 = [v4 archivedDate];
  [v3 timeIntervalSinceDate:v5];
  v7 = v6;
  [(CNSharedProfileStateOracle *)self revertToPreviousMaxDisplayInterval];
  LOBYTE(self) = v7 > v8;

  return self;
}

- (double)revertToPreviousMaxDisplayInterval
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 doubleForKey:@"CNSharedProfilePreviousPhotoDisplayIntervalOverride"];
  v4 = v3;

  if (v4 <= 0.0)
  {
    return 691200.0;
  }

  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "Using override Revert to Previous display interval: %.2f", &v7, 0xCu);
  }

  return v4;
}

- (BOOL)currentNicknameHasValidVisualIdentityData
{
  v3 = objc_opt_class();
  v4 = [(CNSharedProfileStateOracle *)self currentNickname];
  LOBYTE(v3) = [v3 nicknameHasValidVisualIdentityData:v4];

  return v3;
}

- (BOOL)pendingNicknameHasValidVisualIdentityData
{
  v3 = objc_opt_class();
  v4 = [(CNSharedProfileStateOracle *)self pendingNickname];
  LOBYTE(v3) = [v3 nicknameHasValidVisualIdentityData:v4];

  return v3;
}

+ (BOOL)nicknameHasValidVisualIdentityData:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 avatar];

    v6 = MEMORY[0x1E6996540];
    if (v5 && (v7 = *MEMORY[0x1E6996540], [v4 avatar], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "imageData"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = (*(v7 + 16))(v7, v9), v9, v8, v7))
    {
      v10 = [objc_opt_class() log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[CNSharedProfileStateOracle nicknameHasValidVisualIdentityData:];
      }

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = [v4 wallpaper];

    if (v12 && (v13 = *v6, [v4 wallpaper], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "wallpaperData"), v15 = objc_claimAutoreleasedReturnValue(), LODWORD(v13) = (*(v13 + 16))(v13, v15), v15, v14, v13))
    {
      v16 = [objc_opt_class() log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[CNSharedProfileStateOracle nicknameHasValidVisualIdentityData:];
      }

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = v11 | v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)recentImages
{
  v3 = [CNUnifiedContactPosterDataRequestFactory alloc];
  v4 = [(CNSharedProfileStateOracle *)self contactStore];
  v5 = [(CNUnifiedContactPosterDataRequestFactory *)v3 initWithContactStore:v4];

  v6 = [(CNSharedProfileStateOracle *)self contact];
  v7 = [(CNUnifiedContactPosterDataRequestFactory *)v5 recentImagesForContact:v6];

  v8 = [(CNSharedProfileStateOracle *)self recentContactImageStore];
  v9 = [v8 performFetchRequest:v7 error:0];

  return v9;
}

- (id)lastRecentContactImage
{
  v2 = [(CNSharedProfileStateOracle *)self recentImages];
  v3 = [v2 firstObject];

  return v3;
}

- (id)lastRevertableRecentSharedContactImage
{
  v3 = [(CNSharedProfileStateOracle *)self recentImages];
  v4 = [(CNSharedProfileStateOracle *)self firstSharedIn:v3];

  return v4;
}

- (id)lastRevertableRecentCustomContactImage
{
  v3 = [(CNSharedProfileStateOracle *)self recentImages];
  v4 = [(CNSharedProfileStateOracle *)self firstCustomIn:v3];

  return v4;
}

- (id)recentPosters
{
  v3 = [CNUnifiedContactPosterDataRequestFactory alloc];
  v4 = [(CNSharedProfileStateOracle *)self contactStore];
  v5 = [(CNUnifiedContactPosterDataRequestFactory *)v3 initWithContactStore:v4];

  v6 = [(CNSharedProfileStateOracle *)self contact];
  v7 = [(CNUnifiedContactPosterDataRequestFactory *)v5 recentPostersForContact:v6];

  v8 = [(CNSharedProfileStateOracle *)self recentPosterStore];
  v9 = [v8 performFetchRequest:v7 error:0];

  return v9;
}

- (id)lastRecentPoster
{
  v2 = [(CNSharedProfileStateOracle *)self recentPosters];
  v3 = [v2 firstObject];

  return v3;
}

- (id)lastRevertableRecentSharedPoster
{
  v3 = [(CNSharedProfileStateOracle *)self recentPosters];
  v4 = [(CNSharedProfileStateOracle *)self firstSharedIn:v3];

  return v4;
}

- (id)lastRevertableRecentCustomPoster
{
  v3 = [(CNSharedProfileStateOracle *)self recentPosters];
  v4 = [(CNSharedProfileStateOracle *)self firstCustomIn:v3];

  return v4;
}

BOOL __44__CNSharedProfileStateOracle_firstCustomIn___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 ignoredForRevert] & 1) == 0 && (objc_msgSend(v2, "itemDetails") & 1) == 0;

  return v3;
}

uint64_t __44__CNSharedProfileStateOracle_firstSharedIn___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 ignoredForRevert])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 itemDetails] & 1;
  }

  return v3;
}

+ (BOOL)shouldSaveCurrentPoster:(id)a3 toRecentsForContact:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [v6 contentIsSensitive];
  v8 = *MEMORY[0x1E6996540];
  v9 = [v6 posterData];

  LOBYTE(v6) = (*(v8 + 16))(v8, v9);
  v10 = [v5 sensitiveContentConfiguration];

  v11 = [v10 override];
  v12 = (v11 == 1) | (v7 | v6) ^ 1;
  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15[0] = 67109888;
    v15[1] = v12 & 1;
    v16 = 1024;
    v17 = v7 & 1;
    v18 = 1024;
    v19 = v17;
    v20 = 1024;
    v21 = v11 == 1;
    _os_log_impl(&dword_1954A0000, v13, OS_LOG_TYPE_INFO, "Poster should be saved to recents: %d | sensitive: %d, emptyData: %d, override: %d", v15, 0x1Au);
  }

  return v12 & 1;
}

- (id)recentsImageMarkedCurrent
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [CNUnifiedContactPosterDataRequestFactory alloc];
  v4 = [(CNSharedProfileStateOracle *)self contactStore];
  v5 = [(CNUnifiedContactPosterDataRequestFactory *)v3 initWithContactStore:v4];

  v6 = [(CNSharedProfileStateOracle *)self contact];
  v7 = [v6 identifier];
  v8 = [(CNUnifiedContactPosterDataRequestFactory *)v5 currentImagesForContactWithIdentifier:v7];

  v9 = [(CNSharedProfileStateOracle *)self recentPosterStore];
  v10 = [v9 performFetchRequest:v8 error:0];
  if ([v10 count] >= 2)
  {
    v11 = [objc_opt_class() log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CNSharedProfileStateOracle *)self contact];
      v13 = [v12 identifier];
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Found more than one recent image marked current for %{public}@.", &v16, 0xCu);
    }
  }

  v14 = [v10 firstObject];

  return v14;
}

- (id)recentsPosterMarkedCurrent
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [CNUnifiedContactPosterDataRequestFactory alloc];
  v4 = [(CNSharedProfileStateOracle *)self contactStore];
  v5 = [(CNUnifiedContactPosterDataRequestFactory *)v3 initWithContactStore:v4];

  v6 = [(CNSharedProfileStateOracle *)self contact];
  v7 = [v6 identifier];
  v8 = [(CNUnifiedContactPosterDataRequestFactory *)v5 currentPostersForContactWithIdentifier:v7];

  v9 = [(CNSharedProfileStateOracle *)self recentPosterStore];
  v10 = [v9 performFetchRequest:v8 error:0];
  if ([v10 count] >= 2)
  {
    v11 = [objc_opt_class() log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CNSharedProfileStateOracle *)self contact];
      v13 = [v12 identifier];
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Found more than one recent poster marked current for %{public}@.", &v16, 0xCu);
    }
  }

  v14 = [v10 firstObject];

  return v14;
}

- (void)saveCurrentAvatarPosterPairToRecents
{
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1954A0000, v3, OS_LOG_TYPE_INFO, "Checking if we need to save current contact image to recents", buf, 2u);
  }

  v4 = [(CNSharedProfileStateOracle *)self contact];
  v5 = [v4 avatarRecipeData];

  if (!v5)
  {
    v6 = [(CNSharedProfileStateOracle *)self recentsPosterMarkedCurrent];
    v7 = [v6 pairedImage];
    if (!v7)
    {
      v8 = [(CNSharedProfileStateOracle *)self contact];
      v9 = [v8 imageData];
      if (v9)
      {
        if (v6)
        {
          v10 = [v6 itemDetails];
        }

        else
        {
          v10 = [(CNSharedProfileStateOracle *)self effectiveStateForContactIsAutoUpdate];
        }

        v11 = [MEMORY[0x1E695DF00] now];
        v12 = [CNContactImage alloc];
        v13 = [(CNSharedProfileStateOracle *)self contact];
        [v13 cropRect];
        v14 = [(CNContactImage *)v12 initWithImageData:v9 cropRect:v11 lastUsedDate:?];

        if (v10)
        {
          [(CNContactPosterDataItem *)v14 setItemDetails:1];
        }

        [(CNContactImage *)v14 setPairedPoster:v6];
        v15 = [objc_opt_class() log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v16 = 0;
          _os_log_impl(&dword_1954A0000, v15, OS_LOG_TYPE_INFO, "Saving current contact image to recents", v16, 2u);
        }

        [(CNSharedProfileStateOracle *)self saveContactImage:v14];
      }
    }
  }
}

- (void)saveContactImage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CNSharedProfileStateOracle *)self recentContactImageStore];
    v6 = [(CNSharedProfileStateOracle *)self contact];
    v7 = [v6 identifier];
    v8 = [CNContactImageCreateRequest requestToCreateRecentImage:v4 forContactIdentifier:v7];

    v11 = 0;
    LOBYTE(v7) = [v5 performCreateRequest:v8 error:&v11];
    v9 = v11;
    if ((v7 & 1) == 0)
    {
      v10 = [objc_opt_class() log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CNSharedProfileStateOracle saveContactImage:v9];
      }
    }
  }

  else
  {
    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CNSharedProfileStateOracle saveContactImage:];
    }
  }
}

- (void)saveContactPoster:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [CNUnifiedContactPosterDataRequestFactory alloc];
    v6 = [(CNSharedProfileStateOracle *)self contactStore];
    v7 = [(CNUnifiedContactPosterDataRequestFactory *)v5 initWithContactStore:v6];

    v16[0] = v4;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v9 = [(CNSharedProfileStateOracle *)self contact];
    v10 = [v7 createPosters:v8 forContact:v9];

    v11 = [(CNSharedProfileStateOracle *)self recentPosterStore];
    v15 = 0;
    v12 = [v11 performCreateRequest:v10 error:&v15];
    v13 = v15;

    if ((v12 & 1) == 0)
    {
      v14 = [objc_opt_class() log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CNSharedProfileStateOracle saveContactPoster:v13];
      }
    }
  }

  else
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CNSharedProfileStateOracle saveContactPoster:];
    }
  }
}

+ (void)refetchedContactIfNeededWithRequiredKeys:contactStore:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1954A0000, v1, OS_LOG_TYPE_DEBUG, "Fetched contact %@ matching %@", v2, 0x16u);
}

+ (void)refetchedContactIfNeededWithRequiredKeys:(void *)a1 contactStore:.cold.3(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v2, v3, "Failed to find matching contact with error: %@", v4, v5, v6, v7, v8);
}

- (void)targetProfileForActionType:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 contact];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v2, v3, "No recent avatar or poster available for contact %@", v4, v5, v6, v7, v8);
}

- (void)targetProfileForActionType:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 contact];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v3, v4, "Contact (%{public}@) has an archived and current nickname containing the same photo and wallpaper, this will result in an action that shows no change", v5, v6, v7, v8, v9);
}

- (void)updateContactForActionType:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() descriptionForActionType:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v3, v4, "Error updating contact for actionType %@", v5, v6, v7, v8, v9);
}

- (void)updateContactAndNicknamesForAutoUpdateWithError:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 contact];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v2, v3, "Attempting to auto-update a contact %@ without auto-update enabled", v4, v5, v6, v7, v8);
}

- (void)updateContactForDeclinedActionType:error:.cold.1()
{
  v0 = [objc_opt_class() descriptionForActionType:2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v1, v2, "Error updating contact for declined actionType %@", v3, v4, v5, v6, v7);
}

- (void)saveUpdatedContact:(id *)a1 error:.cold.1(id *a1)
{
  v1 = [*a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v2, v3, "Error saving contact: %@", v4, v5, v6, v7, v8);
}

- (void)saveContactImage:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v2, v3, "Failed to save contact image to recents, %@", v4, v5, v6, v7, v8);
}

- (void)saveContactPoster:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v2, v3, "Failed to save contact poster to recents, %@", v4, v5, v6, v7, v8);
}

@end