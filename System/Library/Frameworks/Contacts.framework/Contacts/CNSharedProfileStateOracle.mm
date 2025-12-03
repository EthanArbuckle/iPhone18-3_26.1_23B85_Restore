@interface CNSharedProfileStateOracle
+ (BOOL)contactIsInAutoUpdateState:(id)state;
+ (BOOL)isFeatureEnabled;
+ (BOOL)nicknameHasValidVisualIdentityData:(id)data;
+ (BOOL)nicknames:(id)nicknames areValidForContact:(id)contact;
+ (BOOL)shouldSaveCurrentPoster:(id)poster toRecentsForContact:(id)contact;
+ (id)descriptionForActionType:(unint64_t)type;
+ (id)descriptionForUpdateState:(unint64_t)state;
+ (id)descriptorForRequiredKeys;
+ (id)log;
+ (id)refetchedContactIfNeededWithRequiredKeys:(id)keys contactStore:(id)store;
+ (unint64_t)effectiveStateForContact:(id)contact;
- (BOOL)canShowRevertToPreviousBannerForEffectiveState:(unint64_t)state;
- (BOOL)canShowRevertToPreviousBannerForRecentsItem:(id)item;
- (BOOL)contactRequiresUpdateForActionType:(unint64_t)type;
- (BOOL)currentNicknameHasValidVisualIdentityData;
- (BOOL)didPendingNicknameChangePhotoOrWallpaper;
- (BOOL)effectiveStateForContactIsAutoUpdate;
- (BOOL)isRevertBannerExpiredForDate:(id)date;
- (BOOL)isRevertToPreviousExpired;
- (BOOL)pendingNicknameHasValidVisualIdentityData;
- (BOOL)saveUpdatedContact:(id)contact error:(id *)error;
- (BOOL)shouldPerformTransitionAnimation;
- (CNContact)contact;
- (CNContactImageStore)recentContactImageStore;
- (CNContactPosterStore)recentPosterStore;
- (CNSharedProfileStateOracle)initWithContact:(id)contact contactStore:(id)store;
- (CNSharedProfileStateOracle)initWithContact:(id)contact contactStore:(id)store archivedNickname:(id)nickname currentNickname:(id)currentNickname pendingNickname:(id)pendingNickname;
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
- (id)targetProfileForActionType:(unint64_t)type;
- (id)updateContactAndNicknamesForActionType:(unint64_t)type error:(id *)error;
- (id)updateContactAndNicknamesForAutoUpdateWithError:(id *)error;
- (id)updateContactAndNicknamesForDeclinedActionType:(unint64_t)type error:(id *)error;
- (id)updateContactForActionType:(unint64_t)type error:(id *)error;
- (id)updateContactForAutoUpdateWithError:(id *)error;
- (id)updateContactForDeclinedActionType:(unint64_t)type error:(id *)error;
- (unint64_t)avatarViewAnimationTypeForEffectiveState;
- (unint64_t)bannerActionTypeForEffectiveState;
- (unint64_t)effectiveStateForContact;
- (void)markArchivedNicknameAsIgnored;
- (void)saveContactImage:(id)image;
- (void)saveContactPoster:(id)poster;
- (void)saveCurrentAvatarPosterPairToRecents;
- (void)setContact:(id)contact;
- (void)updateOracleContactAndNicknamesWithUpdatedContact:(id)contact;
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
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v4 = [featureFlags isFeatureEnabled:27];

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
  contact = [(CNSharedProfileStateOracle *)self contact];
  v5 = [v3 effectiveStateForContact:contact];

  return v5;
}

- (CNContact)contact
{
  contactLock = [(CNSharedProfileStateOracle *)self contactLock];
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
  isFeatureEnabled = [objc_opt_class() isFeatureEnabled];
  if (!isFeatureEnabled)
  {
    return isFeatureEnabled;
  }

  contact = [(CNSharedProfileStateOracle *)self contact];

  if (!contact)
  {
    goto LABEL_19;
  }

  if (([objc_opt_class() shouldBypassPersistenceCheck] & 1) == 0)
  {
    contact2 = [(CNSharedProfileStateOracle *)self contact];
    hasBeenPersisted = [contact2 hasBeenPersisted];

    if ((hasBeenPersisted & 1) == 0)
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
    contact3 = [(CNSharedProfileStateOracle *)self contact];
    identifier = [contact3 identifier];
    v33 = 138412290;
    *v34 = identifier;
    _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "Checking for shouldPerformTransitionAnimation for contact <%@>", &v33, 0xCu);
  }

  didPendingNicknameChangePhotoOrWallpaper = [(CNSharedProfileStateOracle *)self didPendingNicknameChangePhotoOrWallpaper];
  v11 = [objc_opt_class() log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 67109120;
    v34[0] = didPendingNicknameChangePhotoOrWallpaper;
    _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Pending nickname didPendingNicknameChangePhotoOrWallpaper: %d", &v33, 8u);
  }

  if (!didPendingNicknameChangePhotoOrWallpaper)
  {
    goto LABEL_19;
  }

  pendingNickname = [(CNSharedProfileStateOracle *)self pendingNickname];

  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 67109120;
    v34[0] = 1;
    _os_log_impl(&dword_1954A0000, v13, OS_LOG_TYPE_DEFAULT, "shouldPerformTransitionAnimation: pendingHasChangedPhotoOrWallpaper: %d", &v33, 8u);
  }

  if (!pendingNickname)
  {
    goto LABEL_19;
  }

  if (![(CNSharedProfileStateOracle *)self effectiveStateForContactIsAutoUpdate])
  {
    pendingNickname2 = [(CNSharedProfileStateOracle *)self pendingNickname];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      pendingNickname3 = [(CNSharedProfileStateOracle *)self pendingNickname];
      hasObservedTransition = [pendingNickname3 hasObservedTransition];
    }

    else
    {
      hasObservedTransition = 0;
    }

    v19 = [objc_opt_class() log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 67109120;
      v34[0] = hasObservedTransition;
      _os_log_impl(&dword_1954A0000, v19, OS_LOG_TYPE_DEFAULT, "shouldPerformTransitionAnimation: hasObservedTransition: %d", &v33, 8u);
    }

    if (hasObservedTransition)
    {
LABEL_19:
      LOBYTE(isFeatureEnabled) = 0;
      return isFeatureEnabled;
    }
  }

  contact4 = [(CNSharedProfileStateOracle *)self contact];
  if ([contact4 imageDataAvailable])
  {
    v21 = 0;
  }

  else
  {
    pendingNickname4 = [(CNSharedProfileStateOracle *)self pendingNickname];
    avatar = [pendingNickname4 avatar];
    v21 = [avatar hasImage] ^ 1;
  }

  v24 = *MEMORY[0x1E6996540];
  contact5 = [(CNSharedProfileStateOracle *)self contact];
  wallpaper = [contact5 wallpaper];
  posterArchiveData = [wallpaper posterArchiveData];
  if ((*(v24 + 16))(v24, posterArchiveData))
  {
    pendingNickname5 = [(CNSharedProfileStateOracle *)self pendingNickname];
    wallpaper2 = [pendingNickname5 wallpaper];
    v30 = [wallpaper2 wallpaperExists] ^ 1;
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

  LOBYTE(isFeatureEnabled) = v21 & v30 ^ 1;
  return isFeatureEnabled;
}

- (BOOL)didPendingNicknameChangePhotoOrWallpaper
{
  pendingNickname = [(CNSharedProfileStateOracle *)self pendingNickname];

  if (!pendingNickname)
  {
    return 0;
  }

  pendingNickname2 = [(CNSharedProfileStateOracle *)self pendingNickname];
  currentNickname = [(CNSharedProfileStateOracle *)self currentNickname];
  v6 = [(CNSharedProfileStateOracle *)self didPhotoOrWallpaperChangeFrom:pendingNickname2 to:currentNickname];

  return v6;
}

uint64_t __33__CNSharedProfileStateOracle_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNSharedProfileStateOracle");
  v1 = log_cn_once_object_0;
  log_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNSharedProfileStateOracle)initWithContact:(id)contact contactStore:(id)store
{
  v26 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  storeCopy = store;
  objc_opt_class();
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  nicknameProvider = [currentEnvironment nicknameProvider];
  if (objc_opt_isKindOfClass())
  {
    v10 = nicknameProvider;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  imNicknameProvider = [v11 imNicknameProvider];
  v13 = objc_opt_respondsToSelector();

  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v13)
  {
    imNicknameProvider2 = [v11 imNicknameProvider];
    v18 = [imNicknameProvider2 allNicknamesForContact:contactCopy];

    v19 = [objc_opt_class() log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = v18;
      v24 = 2112;
      v25 = contactCopy;
      _os_log_impl(&dword_1954A0000, v19, OS_LOG_TYPE_DEFAULT, "Fetching all nicknames %@ for %@", &v22, 0x16u);
    }

    v16 = [v18 objectForKey:@"pendingNickname"];
    v15 = [v18 objectForKey:@"currentNickname"];
    v14 = [v18 objectForKey:@"archivedNickname"];
  }

  v20 = [(CNSharedProfileStateOracle *)self initWithContact:contactCopy contactStore:storeCopy archivedNickname:v14 currentNickname:v15 pendingNickname:v16];

  return v20;
}

- (CNSharedProfileStateOracle)initWithContact:(id)contact contactStore:(id)store archivedNickname:(id)nickname currentNickname:(id)currentNickname pendingNickname:(id)pendingNickname
{
  v56[3] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  storeCopy = store;
  storeCopy2 = store;
  nicknameCopy = nickname;
  currentNicknameCopy = currentNickname;
  pendingNicknameCopy = pendingNickname;
  v47.receiver = self;
  v47.super_class = CNSharedProfileStateOracle;
  v17 = [(CNSharedProfileStateOracle *)&v47 init];
  if (v17)
  {
    v42 = storeCopy2;
    v18 = *MEMORY[0x1E6996588];
    pendingNicknameCopy2 = pendingNickname;
    v41 = contactCopy;
    v19 = (*MEMORY[0x1E6996588] + 16);
    v44 = nicknameCopy;
    v20 = (*v19)(*MEMORY[0x1E6996588], nicknameCopy);
    v56[0] = v20;
    v21 = (*v19)(v18, currentNicknameCopy);
    v56[1] = v21;
    v43 = pendingNicknameCopy;
    v22 = (*v19)(v18, pendingNicknameCopy);
    v56[2] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
    v24 = [v23 _cn_filter:*MEMORY[0x1E6996550]];

    contactCopy = v41;
    currentNicknameCopy2 = currentNickname;

    if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0 && ([objc_opt_class() nicknames:v24 areValidForContact:v41] & 1) == 0)
    {
      v26 = [objc_opt_class() log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        handle = [v44 handle];
        handle2 = [currentNicknameCopy handle];
        handle3 = [v43 handle];
        *buf = 138478595;
        v49 = handle;
        v50 = 2113;
        v51 = handle2;
        v52 = 2113;
        v53 = handle3;
        v54 = 2113;
        v55 = v41;
        _os_log_error_impl(&dword_1954A0000, v26, OS_LOG_TYPE_ERROR, "Error intializing state oracle using nicknames (%{private}@, %{private}@, %{private}@) for contact %{private}@", buf, 0x2Au);
      }
    }

    objc_storeStrong(&v17->_contact, contact);
    v17->_shouldContactBeRefetched = 1;
    v27 = objc_alloc_init(MEMORY[0x1E6996878]);
    contactLock = v17->_contactLock;
    v17->_contactLock = v27;

    objc_storeStrong(&v17->_contactStore, storeCopy);
    objc_storeStrong(&v17->_archivedNickname, nickname);
    objc_storeStrong(&v17->_currentNickname, currentNicknameCopy2);
    objc_storeStrong(&v17->_pendingNickname, pendingNicknameCopy2);
    objc_opt_class();
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    nicknameProvider = [currentEnvironment nicknameProvider];
    if (objc_opt_isKindOfClass())
    {
      v31 = nicknameProvider;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    imNicknameProvider = [v32 imNicknameProvider];

    nicknameProvider = v17->_nicknameProvider;
    v17->_nicknameProvider = imNicknameProvider;

    v35 = v17;
    storeCopy2 = v42;
    pendingNicknameCopy = v43;
    nicknameCopy = v44;
  }

  return v17;
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  contactLock = [(CNSharedProfileStateOracle *)self contactLock];
  v6 = contactCopy;
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

+ (BOOL)nicknames:(id)nicknames areValidForContact:(id)contact
{
  v22 = *MEMORY[0x1E69E9840];
  nicknamesCopy = nicknames;
  contactCopy = contact;
  v7 = objc_alloc_init(CNSharedProfileContactHandleHelper);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = nicknamesCopy;
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

        handle = [*(*(&v17 + 1) + 8 * i) handle];
        v14 = [(CNSharedProfileContactHandleHelper *)v7 contact:contactCopy containsHandleString:handle];

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

+ (id)refetchedContactIfNeededWithRequiredKeys:(id)keys contactStore:(id)store
{
  v26[1] = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  storeCopy = store;
  if (([objc_opt_class() isFeatureEnabled] & 1) == 0)
  {
    v12 = keysCopy;
    goto LABEL_24;
  }

  if (!storeCopy)
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

  descriptorForRequiredKeys = [v8 descriptorForRequiredKeys];
  v26[0] = descriptorForRequiredKeys;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v11 = [keysCopy areKeysAvailable:v10];

  if (v11)
  {
    v12 = keysCopy;
  }

  else
  {
    availableKeyDescriptor = [keysCopy availableKeyDescriptor];
    if (availableKeyDescriptor)
    {
      v25[0] = descriptorForRequiredKeys;
      availableKeyDescriptor2 = [keysCopy availableKeyDescriptor];
      v25[1] = availableKeyDescriptor2;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    }

    else
    {
      v24 = descriptorForRequiredKeys;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    }

    identifier = [keysCopy identifier];
    v23 = 0;
    v12 = [storeCopy unifiedContactWithIdentifier:identifier keysToFetch:v16 error:&v23];
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

+ (unint64_t)effectiveStateForContact:(id)contact
{
  contactCopy = contact;
  if (![objc_opt_class() isFeatureEnabled])
  {
    goto LABEL_4;
  }

  if (!contactCopy)
  {
    goto LABEL_10;
  }

  if ([objc_opt_class() isTinker])
  {
LABEL_4:
    v4 = 2;
    goto LABEL_11;
  }

  if (![contactCopy isKeyAvailable:@"sharedPhotoDisplayPreference"])
  {
LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  sharedPhotoDisplayPreference = [contactCopy sharedPhotoDisplayPreference];
  v4 = 0;
  if (sharedPhotoDisplayPreference > 1)
  {
    if (sharedPhotoDisplayPreference == 2 || sharedPhotoDisplayPreference == 3)
    {
LABEL_14:
      v4 = sharedPhotoDisplayPreference;
    }
  }

  else
  {
    if (sharedPhotoDisplayPreference)
    {
      if (sharedPhotoDisplayPreference != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    if ([contactCopy isKeyAvailable:@"imageDataAvailable"] && objc_msgSend(contactCopy, "imageDataAvailable"))
    {
      shouldAutoUpdateUndeterminedWithPhoto = [objc_opt_class() shouldAutoUpdateUndeterminedWithPhoto];
    }

    else
    {
      shouldAutoUpdateUndeterminedWithPhoto = [objc_opt_class() shouldAutoUpdateUndeterminedWithoutPhoto];
    }

    if (shouldAutoUpdateUndeterminedWithPhoto)
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
  effectiveStateForContact = [(CNSharedProfileStateOracle *)self effectiveStateForContact];
  v3 = objc_opt_class();

  return [v3 isAutoUpdateState:effectiveStateForContact];
}

- (id)availableActionTypesForEffectiveState
{
  v24 = *MEMORY[0x1E69E9840];
  if (![objc_opt_class() isFeatureEnabled])
  {
    return MEMORY[0x1E695E0F0];
  }

  contact = [(CNSharedProfileStateOracle *)self contact];

  if (!contact)
  {
    return MEMORY[0x1E695E0F0];
  }

  contact2 = [(CNSharedProfileStateOracle *)self contact];
  hasBeenPersisted = [contact2 hasBeenPersisted];

  if (hasBeenPersisted)
  {
    archivedNickname = [(CNSharedProfileStateOracle *)self archivedNickname];

    effectiveStateForContact = [(CNSharedProfileStateOracle *)self effectiveStateForContact];
    isRevertToPreviousExpired = [(CNSharedProfileStateOracle *)self isRevertToPreviousExpired];
    currentNickname = [(CNSharedProfileStateOracle *)self currentNickname];
    archivedNickname2 = [(CNSharedProfileStateOracle *)self archivedNickname];
    v11 = [currentNickname isEqualToNickname:archivedNickname2 options:34];

    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67109888;
      *v19 = archivedNickname != 0;
      *&v19[4] = 1024;
      *&v19[6] = effectiveStateForContact == 2;
      v20 = 1024;
      v21 = isRevertToPreviousExpired;
      v22 = 1024;
      v23 = v11;
      _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "available action types: hasArchivedNicknameToRevertTo %d, currentlyAlwaysAsk %d, revertToPreviousExpired %d, previousDiffersFromCurrent %d", &v18, 0x1Au);
    }

    v14 = effectiveStateForContact == 2 || archivedNickname == 0;
    if (v14 || isRevertToPreviousExpired || (v11 & 1) == 0)
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

  contact = [(CNSharedProfileStateOracle *)self contact];

  if (contact)
  {
    contact2 = [(CNSharedProfileStateOracle *)self contact];
    hasBeenPersisted = [contact2 hasBeenPersisted];

    if ((hasBeenPersisted & 1) == 0)
    {
      v16 = [objc_opt_class() log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_1954A0000, v16, OS_LOG_TYPE_DEFAULT, "Cannot show banners for an unsaved contact", &v34, 2u);
      }

      contact = 0;
      goto LABEL_34;
    }

    effectiveStateForContact = [(CNSharedProfileStateOracle *)self effectiveStateForContact];
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      contact3 = [(CNSharedProfileStateOracle *)self contact];
      identifier = [contact3 identifier];
      v10 = [objc_opt_class() descriptionForUpdateState:effectiveStateForContact];
      v34 = 138543618;
      *v35 = identifier;
      *&v35[8] = 2112;
      *&v35[10] = v10;
      _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "Looking up banner action type for contact (%{public}@) with effective state: %@", &v34, 0x16u);
    }

    if (effectiveStateForContact == 1 || effectiveStateForContact == 3)
    {
      lastRevertableRecentCustomContactImage = [(CNSharedProfileStateOracle *)self lastRevertableRecentCustomContactImage];
      lastRevertableRecentCustomPoster = [(CNSharedProfileStateOracle *)self lastRevertableRecentCustomPoster];
      v19 = [objc_opt_class() log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        lastUsedDate = [lastRevertableRecentCustomContactImage lastUsedDate];
        lastUsedDate2 = [lastRevertableRecentCustomPoster lastUsedDate];
        contact4 = [(CNSharedProfileStateOracle *)self contact];
        identifier2 = [contact4 identifier];
        v34 = 138543874;
        *v35 = lastUsedDate;
        *&v35[8] = 2114;
        *&v35[10] = lastUsedDate2;
        v36 = 2114;
        v37 = identifier2;
        _os_log_impl(&dword_1954A0000, v19, OS_LOG_TYPE_DEFAULT, "Looking up banner action for auto-update: lastRecentCustomAvatar %{public}@, lastRecentCustomPoster %{public}@ for contactID (%{public}@)", &v34, 0x20u);
      }

      if (lastRevertableRecentCustomContactImage | lastRevertableRecentCustomPoster)
      {
        contact = 2;
      }

      else
      {
        contact = [(CNSharedProfileStateOracle *)self canShowRevertToPreviousBannerForEffectiveState:effectiveStateForContact];
      }

      goto LABEL_32;
    }

    if (effectiveStateForContact == 2)
    {
      pendingNickname = [(CNSharedProfileStateOracle *)self pendingNickname];

      if (pendingNickname)
      {
        pendingNickname2 = [(CNSharedProfileStateOracle *)self pendingNickname];
        v13 = objc_opt_respondsToSelector();

        if (v13)
        {
          pendingNickname3 = [(CNSharedProfileStateOracle *)self pendingNickname];
          isIgnored = [pendingNickname3 isIgnored];
        }

        else
        {
          isIgnored = 0;
        }

        v27 = [objc_opt_class() log];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          contact5 = [(CNSharedProfileStateOracle *)self contact];
          identifier3 = [contact5 identifier];
          v34 = 67109378;
          *v35 = isIgnored;
          *&v35[4] = 2114;
          *&v35[6] = identifier3;
          _os_log_impl(&dword_1954A0000, v27, OS_LOG_TYPE_DEFAULT, "Looking up banner action type: pendingIsIgnored %d for contact (%{public}@)", &v34, 0x12u);
        }

        if (isIgnored)
        {
          contact = 0;
        }

        else
        {
          contact = 3;
        }

        goto LABEL_32;
      }

      v24 = [objc_opt_class() log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        contact6 = [(CNSharedProfileStateOracle *)self contact];
        identifier4 = [contact6 identifier];
        v34 = 138543362;
        *v35 = identifier4;
        _os_log_impl(&dword_1954A0000, v24, OS_LOG_TYPE_DEFAULT, "Looking up banner action type: pendingNickname is nil for contact (%{public}@)", &v34, 0xCu);
      }
    }

    contact = 0;
LABEL_32:
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [objc_opt_class() descriptionForActionType:contact];
      contact7 = [(CNSharedProfileStateOracle *)self contact];
      identifier5 = [contact7 identifier];
      v34 = 138412546;
      *v35 = v30;
      *&v35[8] = 2114;
      *&v35[10] = identifier5;
      _os_log_impl(&dword_1954A0000, v16, OS_LOG_TYPE_DEFAULT, "Returning banner action type: %@ for contact (%{public}@)", &v34, 0x16u);
    }

LABEL_34:
  }

  return contact;
}

- (BOOL)canShowRevertToPreviousBannerForEffectiveState:(unint64_t)state
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() isAutoUpdateState:state];
  if (v4)
  {
    lastRevertableRecentSharedContactImage = [(CNSharedProfileStateOracle *)self lastRevertableRecentSharedContactImage];
    v6 = [(CNSharedProfileStateOracle *)self canShowRevertToPreviousBannerForRecentsItem:lastRevertableRecentSharedContactImage];

    if (v6 || ([(CNSharedProfileStateOracle *)self lastRevertableRecentSharedPoster], v7 = objc_claimAutoreleasedReturnValue(), v8 = [(CNSharedProfileStateOracle *)self canShowRevertToPreviousBannerForRecentsItem:v7], v7, v8))
    {
      LOBYTE(v4) = 1;
      return v4;
    }

    archivedNickname = [(CNSharedProfileStateOracle *)self archivedNickname];

    if (!archivedNickname)
    {
      v12 = [objc_opt_class() log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        contact = [(CNSharedProfileStateOracle *)self contact];
        identifier = [contact identifier];
        v33 = 138543362;
        v34 = identifier;
        v15 = "No archived nickname found for contact (%{public}@), cannot show legacy revert to previous banner";
        goto LABEL_11;
      }

LABEL_12:

LABEL_13:
      LOBYTE(v4) = 0;
      return v4;
    }

    archivedNickname2 = [(CNSharedProfileStateOracle *)self archivedNickname];
    isIgnored = [archivedNickname2 isIgnored];

    if (isIgnored)
    {
      v12 = [objc_opt_class() log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        contact = [(CNSharedProfileStateOracle *)self contact];
        identifier = [contact identifier];
        v33 = 138543362;
        v34 = identifier;
        v15 = "There's an archived nickname for contact (%{public}@), but its been ignored. Cannot show revert to previous banner for legacy archive";
LABEL_11:
        _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, v15, &v33, 0xCu);

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    archivedNickname3 = [(CNSharedProfileStateOracle *)self archivedNickname];
    currentNickname = [(CNSharedProfileStateOracle *)self currentNickname];
    v18 = [archivedNickname3 isEqualToNickname:currentNickname options:2];

    archivedNickname4 = [(CNSharedProfileStateOracle *)self archivedNickname];
    currentNickname2 = [(CNSharedProfileStateOracle *)self currentNickname];
    v21 = [archivedNickname4 isEqualToNickname:currentNickname2 options:32];

    v22 = [objc_opt_class() log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      contact2 = [(CNSharedProfileStateOracle *)self contact];
      identifier2 = [contact2 identifier];
      v33 = 138543874;
      v34 = identifier2;
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

    archivedNickname5 = [(CNSharedProfileStateOracle *)self archivedNickname];
    archivedDate = [archivedNickname5 archivedDate];
    v27 = [(CNSharedProfileStateOracle *)self isRevertBannerExpiredForDate:archivedDate];

    v28 = [objc_opt_class() log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      contact3 = [(CNSharedProfileStateOracle *)self contact];
      identifier3 = [contact3 identifier];
      v33 = 138543618;
      v34 = identifier3;
      v35 = 1024;
      v36 = v27;
      _os_log_impl(&dword_1954A0000, v28, OS_LOG_TYPE_DEFAULT, "Contact (%{public}@) archivedIsExpired %d", &v33, 0x12u);
    }

    LOBYTE(v4) = !v27;
  }

  return v4;
}

- (BOOL)canShowRevertToPreviousBannerForRecentsItem:(id)item
{
  if (item)
  {
    lastUsedDate = [item lastUsedDate];
    v5 = ![(CNSharedProfileStateOracle *)self isRevertBannerExpiredForDate:lastUsedDate];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)targetProfileForActionType:(unint64_t)type
{
  v62 = *MEMORY[0x1E69E9840];
  if (![objc_opt_class() isFeatureEnabled] || (-[CNSharedProfileStateOracle contact](self, "contact"), v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    archivedNickname = 0;
    goto LABEL_14;
  }

  if (![(CNSharedProfileStateOracle *)self contactRequiresUpdateForActionType:type])
  {
    v12 = [CNSharedProfile alloc];
    contact = [(CNSharedProfileStateOracle *)self contact];
    archivedNickname = [(CNSharedProfile *)v12 initWithContact:contact];

    goto LABEL_14;
  }

  switch(type)
  {
    case 3uLL:
      if ([(CNSharedProfileStateOracle *)self effectiveStateForContact]== 2)
      {
        pendingNickname = [(CNSharedProfileStateOracle *)self pendingNickname];
        if (pendingNickname)
        {
          currentNickname = [(CNSharedProfileStateOracle *)self currentNickname];
          v21 = currentNickname == 0;
        }

        else
        {
          v21 = 0;
        }

        pendingNickname2 = [(CNSharedProfileStateOracle *)self pendingNickname];
        if (pendingNickname2 && ((v33 = pendingNickname2, [(CNSharedProfileStateOracle *)self currentNickname], v34 = objc_claimAutoreleasedReturnValue(), v34, v33, !v34) ? (v35 = 1) : (v35 = v21), v35 != 1))
        {
          pendingNickname3 = [(CNSharedProfileStateOracle *)self pendingNickname];
          hasObservedTransition = [pendingNickname3 hasObservedTransition];

          if (hasObservedTransition)
          {
            goto LABEL_44;
          }
        }

        else if (v21)
        {
LABEL_44:
          v36 = [CNSharedProfile alloc];
          pendingNickname4 = [(CNSharedProfileStateOracle *)self pendingNickname];
          archivedNickname = [(CNSharedProfile *)v36 initWithNickname:pendingNickname4];

          lastRevertableRecentCustomPoster = [objc_opt_class() log];
          if (!os_log_type_enabled(lastRevertableRecentCustomPoster, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_59;
          }

          contact2 = [(CNSharedProfileStateOracle *)self contact];
          identifier = [contact2 identifier];
          v58 = 138543362;
          v59 = identifier;
          v26 = "Contact (%{public}@) has a pending nickname ready, using pendingNickname as target Latest Photo";
          goto LABEL_53;
        }

        currentNickname2 = [(CNSharedProfileStateOracle *)self currentNickname];

        if (!currentNickname2)
        {
          break;
        }

        v41 = [CNSharedProfile alloc];
        currentNickname3 = [(CNSharedProfileStateOracle *)self currentNickname];
        archivedNickname = [(CNSharedProfile *)v41 initWithNickname:currentNickname3];

        lastRevertableRecentCustomPoster = [objc_opt_class() log];
        if (!os_log_type_enabled(lastRevertableRecentCustomPoster, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_59;
        }

        contact2 = [(CNSharedProfileStateOracle *)self contact];
        identifier = [contact2 identifier];
        v58 = 138543362;
        v59 = identifier;
        v26 = "Contact (%{public}@) has a current nickname with no pending nickname ready, using currentNickname as target Latest Photo";
      }

      else
      {
        currentNickname4 = [(CNSharedProfileStateOracle *)self currentNickname];

        if (!currentNickname4)
        {
          break;
        }

        v23 = [CNSharedProfile alloc];
        currentNickname5 = [(CNSharedProfileStateOracle *)self currentNickname];
        archivedNickname = [(CNSharedProfile *)v23 initWithNickname:currentNickname5];

        lastRevertableRecentCustomPoster = [objc_opt_class() log];
        if (!os_log_type_enabled(lastRevertableRecentCustomPoster, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_59;
        }

        contact2 = [(CNSharedProfileStateOracle *)self contact];
        identifier = [contact2 identifier];
        v58 = 138543362;
        v59 = identifier;
        v26 = "Contact (%{public}@) using currentNickname as target Latest Photo";
      }

LABEL_53:
      _os_log_impl(&dword_1954A0000, lastRevertableRecentCustomPoster, OS_LOG_TYPE_DEFAULT, v26, &v58, 0xCu);
LABEL_57:

      goto LABEL_58;
    case 2uLL:
      effectiveStateForContact = [(CNSharedProfileStateOracle *)self effectiveStateForContact];
      if (effectiveStateForContact == 1)
      {
        goto LABEL_21;
      }

      if (effectiveStateForContact != 3)
      {
        v27 = [CNSharedProfile alloc];
        contact3 = [(CNSharedProfileStateOracle *)self contact];
        archivedNickname = [(CNSharedProfile *)v27 initWithContact:contact3];

        lastRevertableRecentCustomPoster = [objc_opt_class() log];
        if (os_log_type_enabled(lastRevertableRecentCustomPoster, OS_LOG_TYPE_DEFAULT))
        {
          contact4 = [(CNSharedProfileStateOracle *)self contact];
          identifier2 = [contact4 identifier];
          v31 = [objc_opt_class() descriptionForActionType:2];
          v58 = 138543618;
          v59 = identifier2;
          v60 = 2112;
          v61 = v31;
          _os_log_impl(&dword_1954A0000, lastRevertableRecentCustomPoster, OS_LOG_TYPE_DEFAULT, "Defaulting to using current contact (%{public}@) photo as target photo for action type: %@ ", &v58, 0x16u);
        }

        goto LABEL_59;
      }

      contact5 = [(CNSharedProfileStateOracle *)self contact];
      sharedPhotoDisplayPreference = [contact5 sharedPhotoDisplayPreference];

      if (sharedPhotoDisplayPreference)
      {
LABEL_21:
        lastRevertableRecentCustomPoster = [(CNSharedProfileStateOracle *)self lastRevertableRecentCustomPoster];
        contact2 = [lastRevertableRecentCustomPoster pairedImage];
        if (!contact2)
        {
          lastRevertableRecentCustomContactImage = [(CNSharedProfileStateOracle *)self lastRevertableRecentCustomContactImage];
          contact2 = lastRevertableRecentCustomContactImage;
          if (lastRevertableRecentCustomPoster && lastRevertableRecentCustomContactImage)
          {
            v18 = [objc_opt_class() log];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v58) = 0;
              _os_log_impl(&dword_1954A0000, v18, OS_LOG_TYPE_DEFAULT, "Target profile for revert will use a recent poster that wasn't paired with a matching recent image. Unexpected.", &v58, 2u);
            }
          }

          else if (!(lastRevertableRecentCustomPoster | lastRevertableRecentCustomContactImage))
          {
            contact2 = [objc_opt_class() log];
            if (os_log_type_enabled(contact2, OS_LOG_TYPE_ERROR))
            {
              [CNSharedProfileStateOracle targetProfileForActionType:?];
            }

            archivedNickname = 0;
            goto LABEL_58;
          }
        }

        archivedNickname = [[CNSharedProfile alloc] initWithRecentContactImage:contact2 recentPoster:lastRevertableRecentCustomPoster recentAvatarRecipeData:0];
        identifier = [objc_opt_class() log];
        if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
        {
          contact6 = [(CNSharedProfileStateOracle *)self contact];
          identifier3 = [contact6 identifier];
          v58 = 138543362;
          v59 = identifier3;
          _os_log_impl(&dword_1954A0000, identifier, OS_LOG_TYPE_DEFAULT, "Contact (%{public}@) has a recent avatar or poster, using recent as target Custom Photo", &v58, 0xCu);
        }

        goto LABEL_57;
      }

      v43 = [CNSharedProfile alloc];
      contact7 = [(CNSharedProfileStateOracle *)self contact];
      archivedNickname = [(CNSharedProfile *)v43 initWithContact:contact7];

      lastRevertableRecentCustomPoster = [objc_opt_class() log];
      if (os_log_type_enabled(lastRevertableRecentCustomPoster, OS_LOG_TYPE_DEFAULT))
      {
        contact2 = [(CNSharedProfileStateOracle *)self contact];
        identifier = [contact2 identifier];
        v58 = 138543362;
        v59 = identifier;
        v26 = "Contact (%{public}@) is in an undetermined update state, using the existing contact photo as target Custom Photo";
        goto LABEL_53;
      }

LABEL_59:

      goto LABEL_60;
    case 1uLL:
      lastRevertableRecentCustomPoster = [(CNSharedProfileStateOracle *)self lastRevertableRecentSharedPoster];
      contact2 = [lastRevertableRecentCustomPoster pairedImage];
      if (!contact2)
      {
        lastRevertableRecentSharedContactImage = [(CNSharedProfileStateOracle *)self lastRevertableRecentSharedContactImage];
        contact2 = lastRevertableRecentSharedContactImage;
        if (lastRevertableRecentCustomPoster && lastRevertableRecentSharedContactImage)
        {
          v9 = [objc_opt_class() log];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v58) = 0;
            _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_DEFAULT, "Target profile for revertToPrevious will use a recent poster that wasn't paired with a matching recent image. Unexpected.", &v58, 2u);
          }
        }

        else if (!(lastRevertableRecentCustomPoster | lastRevertableRecentSharedContactImage))
        {
          archivedNickname = [(CNSharedProfileStateOracle *)self archivedNickname];

          if (!archivedNickname)
          {
            goto LABEL_59;
          }

          v49 = [CNSharedProfile alloc];
          archivedNickname2 = [(CNSharedProfileStateOracle *)self archivedNickname];
          archivedNickname = [(CNSharedProfile *)v49 initWithNickname:archivedNickname2];

          v51 = [objc_opt_class() log];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            contact8 = [(CNSharedProfileStateOracle *)self contact];
            identifier4 = [contact8 identifier];
            v58 = 138543362;
            v59 = identifier4;
            _os_log_impl(&dword_1954A0000, v51, OS_LOG_TYPE_DEFAULT, "Contact (%{public}@) has no recent-store shared recents, but does have an archived nickname, using archivedNickname as target Previous Photo", &v58, 0xCu);
          }

          currentNickname6 = [(CNSharedProfileStateOracle *)self currentNickname];

          if (!currentNickname6)
          {
            goto LABEL_59;
          }

          currentNickname7 = [(CNSharedProfileStateOracle *)self currentNickname];
          archivedNickname3 = [(CNSharedProfileStateOracle *)self archivedNickname];
          v57 = [(CNSharedProfileStateOracle *)self didPhotoOrWallpaperChangeFrom:currentNickname7 to:archivedNickname3];

          if (v57)
          {
            goto LABEL_59;
          }

          contact2 = [objc_opt_class() log];
          if (os_log_type_enabled(contact2, OS_LOG_TYPE_ERROR))
          {
            [CNSharedProfileStateOracle targetProfileForActionType:?];
          }

          goto LABEL_58;
        }
      }

      archivedNickname = [[CNSharedProfile alloc] initWithRecentContactImage:contact2 recentPoster:lastRevertableRecentCustomPoster recentAvatarRecipeData:0];
LABEL_58:

      goto LABEL_59;
  }

  archivedNickname = 0;
LABEL_60:
  v47 = [objc_opt_class() log];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = [objc_opt_class() descriptionForActionType:type];
    v58 = 138412546;
    v59 = archivedNickname;
    v60 = 2112;
    v61 = v48;
    _os_log_impl(&dword_1954A0000, v47, OS_LOG_TYPE_DEFAULT, "Returning target shared profile %@ for action type %@", &v58, 0x16u);
  }

LABEL_14:

  return archivedNickname;
}

- (BOOL)contactRequiresUpdateForActionType:(unint64_t)type
{
  isFeatureEnabled = [objc_opt_class() isFeatureEnabled];
  if (isFeatureEnabled)
  {
    v6 = [(CNSharedProfileStateOracle *)self effectiveStateForContact]!= 1;
    v7 = type != 3 || v6;
    if (type)
    {
      LOBYTE(isFeatureEnabled) = v7;
    }

    else
    {
      LOBYTE(isFeatureEnabled) = 0;
    }
  }

  return isFeatureEnabled;
}

- (id)updateContactForActionType:(unint64_t)type error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  isFeatureEnabled = [objc_opt_class() isFeatureEnabled];
  contact = [(CNSharedProfileStateOracle *)self contact];
  contact3 = contact;
  if (!isFeatureEnabled)
  {
    goto LABEL_29;
  }

  if (!contact3)
  {
    goto LABEL_29;
  }

  contact2 = [(CNSharedProfileStateOracle *)self contact];
  hasBeenPersisted = [contact2 hasBeenPersisted];

  if (hasBeenPersisted)
  {
    if (![(CNSharedProfileStateOracle *)self contactRequiresUpdateForActionType:type])
    {
      contact3 = [(CNSharedProfileStateOracle *)self contact];
      goto LABEL_29;
    }

    v12 = [(CNSharedProfileStateOracle *)self targetProfileForActionType:type];
    contact4 = [(CNSharedProfileStateOracle *)self contact];
    v14 = [contact4 mutableCopy];

    if (type > 1)
    {
      if (type != 2)
      {
        if (type != 3)
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
      if (!type)
      {
        v19 = [objc_opt_class() log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_1954A0000, v19, OS_LOG_TYPE_DEFAULT, "Trying to update contact for action type None", &v27, 2u);
        }

        goto LABEL_21;
      }

      if (type != 1)
      {
LABEL_21:
        v20 = [(CNSharedProfileStateOracle *)self saveUpdatedContact:v14 error:error];
        v21 = [objc_opt_class() log];
        v22 = v21;
        if (v20)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            contact5 = [(CNSharedProfileStateOracle *)self contact];
            identifier = [contact5 identifier];
            v25 = [objc_opt_class() descriptionForActionType:type];
            v27 = 138543618;
            v28 = identifier;
            v29 = 2112;
            v30 = v25;
            _os_log_impl(&dword_1954A0000, v22, OS_LOG_TYPE_DEFAULT, "Saved updated contact: %{public}@ for actionType %@", &v27, 0x16u);
          }

          contact3 = [v14 freeze];
        }

        else
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [CNSharedProfileStateOracle updateContactForActionType:type error:?];
          }

          contact3 = 0;
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
    v16 = [objc_opt_class() descriptionForActionType:type];
    v27 = 138412290;
    v28 = v16;
    _os_log_impl(&dword_1954A0000, v15, OS_LOG_TYPE_DEFAULT, "Cannot update an unsaved contact for actionType %@", &v27, 0xCu);
  }

  contact3 = 0;
LABEL_29:

  return contact3;
}

- (id)updateContactAndNicknamesForActionType:(unint64_t)type error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  isFeatureEnabled = [objc_opt_class() isFeatureEnabled];
  contact = [(CNSharedProfileStateOracle *)self contact];
  contact5 = contact;
  if (!isFeatureEnabled)
  {
    goto LABEL_17;
  }

  if (!contact5)
  {
    goto LABEL_17;
  }

  contact2 = [(CNSharedProfileStateOracle *)self contact];
  hasBeenPersisted = [contact2 hasBeenPersisted];

  v12 = [objc_opt_class() log];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (hasBeenPersisted)
  {
    if (v13)
    {
      contact3 = [(CNSharedProfileStateOracle *)self contact];
      identifier = [contact3 identifier];
      v16 = [objc_opt_class() descriptionForActionType:type];
      v28 = 138543618;
      v29 = identifier;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "Attempting to update contact (%{public}@) and nicknames for actionType: %@", &v28, 0x16u);
    }

    contact5 = [(CNSharedProfileStateOracle *)self updateContactForActionType:type error:error];
    if (type - 1 >= 2)
    {
      if (type != 3)
      {
        goto LABEL_14;
      }

      nicknameProvider = [(CNSharedProfileStateOracle *)self nicknameProvider];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        nicknameProvider2 = [(CNSharedProfileStateOracle *)self nicknameProvider];
        pendingNickname = [(CNSharedProfileStateOracle *)self pendingNickname];
        handle = [pendingNickname handle];
        [nicknameProvider2 bannerActionTapped:handle IMNicknameBannerAction:1];
      }
    }

    [(CNSharedProfileStateOracle *)self saveCurrentAvatarPosterPairToRecents];
LABEL_14:
    [(CNSharedProfileStateOracle *)self updateOracleContactAndNicknamesWithUpdatedContact:contact5];
    v23 = [objc_opt_class() log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      contact4 = [(CNSharedProfileStateOracle *)self contact];
      identifier2 = [contact4 identifier];
      v26 = [objc_opt_class() descriptionForActionType:type];
      v28 = 138543618;
      v29 = identifier2;
      v30 = 2112;
      v31 = v26;
      _os_log_impl(&dword_1954A0000, v23, OS_LOG_TYPE_DEFAULT, "Updated contact (%{public}@) and nicknames for actionType: %@", &v28, 0x16u);
    }

    goto LABEL_17;
  }

  if (v13)
  {
    v17 = [objc_opt_class() descriptionForActionType:type];
    v28 = 138412290;
    v29 = v17;
    _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "Cannot update an unsaved contact for actionType %@", &v28, 0xCu);
  }

  contact5 = [(CNSharedProfileStateOracle *)self contact];
LABEL_17:

  return contact5;
}

- (id)updateContactForAutoUpdateWithError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  isFeatureEnabled = [objc_opt_class() isFeatureEnabled];
  contact = [(CNSharedProfileStateOracle *)self contact];
  freeze = contact;
  if (isFeatureEnabled)
  {

    if (freeze)
    {
      contact2 = [(CNSharedProfileStateOracle *)self contact];
      hasBeenPersisted = [contact2 hasBeenPersisted];

      if (hasBeenPersisted)
      {
        contact3 = [(CNSharedProfileStateOracle *)self contact];
        v11 = [contact3 mutableCopy];

        contact4 = [(CNSharedProfileStateOracle *)self contact];
        sharedPhotoDisplayPreference = [contact4 sharedPhotoDisplayPreference];

        if (sharedPhotoDisplayPreference)
        {
LABEL_5:
          [(CNSharedProfileStateOracle *)self saveCurrentAvatarPosterPairToRecents];
          v14 = [CNSharedProfile alloc];
          pendingNickname = [(CNSharedProfileStateOracle *)self pendingNickname];
          v16 = [(CNSharedProfile *)v14 initWithNickname:pendingNickname];

          [v11 updateWithSharedProfile:v16];
          LOBYTE(pendingNickname) = [(CNSharedProfileStateOracle *)self saveUpdatedContact:v11 error:error];
          v17 = [objc_opt_class() log];
          v18 = v17;
          if (pendingNickname)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              contact5 = [(CNSharedProfileStateOracle *)self contact];
              identifier = [contact5 identifier];
              v28 = 138543362;
              v29 = identifier;
              _os_log_impl(&dword_1954A0000, v18, OS_LOG_TYPE_DEFAULT, "Saved updated contact: %{public}@ for auto-update", &v28, 0xCu);
            }

            freeze = [v11 freeze];
            goto LABEL_22;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [CNSharedProfileStateOracle updateContactForAutoUpdateWithError:];
          }

LABEL_21:
          freeze = 0;
LABEL_22:

          goto LABEL_23;
        }

        contact6 = [(CNSharedProfileStateOracle *)self contact];
        if ([contact6 imageDataAvailable])
        {
        }

        else
        {
          v23 = *MEMORY[0x1E6996540];
          contact7 = [(CNSharedProfileStateOracle *)self contact];
          wallpaper = [contact7 wallpaper];
          posterArchiveData = [wallpaper posterArchiveData];
          LODWORD(v23) = (*(v23 + 16))(v23, posterArchiveData);

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

      freeze = [(CNSharedProfileStateOracle *)self contact];
    }
  }

LABEL_23:

  return freeze;
}

- (id)updateContactAndNicknamesForAutoUpdateWithError:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  isFeatureEnabled = [objc_opt_class() isFeatureEnabled];
  contact = [(CNSharedProfileStateOracle *)self contact];
  contact4 = contact;
  if (!isFeatureEnabled)
  {
    goto LABEL_19;
  }

  if (!contact4)
  {
    goto LABEL_19;
  }

  contact2 = [(CNSharedProfileStateOracle *)self contact];
  hasBeenPersisted = [contact2 hasBeenPersisted];

  v10 = [objc_opt_class() log];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if ((hasBeenPersisted & 1) == 0)
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
    contact3 = [(CNSharedProfileStateOracle *)self contact];
    identifier = [contact3 identifier];
    v21 = 138543362;
    v22 = identifier;
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
    contact4 = [(CNSharedProfileStateOracle *)self contact];
    goto LABEL_19;
  }

  contact4 = [(CNSharedProfileStateOracle *)self updateContactForAutoUpdateWithError:error];
  nicknameProvider = [(CNSharedProfileStateOracle *)self nicknameProvider];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    nicknameProvider2 = [(CNSharedProfileStateOracle *)self nicknameProvider];
    pendingNickname = [(CNSharedProfileStateOracle *)self pendingNickname];
    handle = [pendingNickname handle];
    [nicknameProvider2 markTransitionAsObservedForHandleID:handle isAutoUpdate:1];
  }

  [(CNSharedProfileStateOracle *)self updateOracleContactAndNicknamesWithUpdatedContact:contact4];
  v19 = [objc_opt_class() log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = contact4;
    _os_log_impl(&dword_1954A0000, v19, OS_LOG_TYPE_DEFAULT, "Updated contact and nicknames for auto-update, with result: %@", &v21, 0xCu);
  }

LABEL_19:

  return contact4;
}

- (id)updateContactForDeclinedActionType:(unint64_t)type error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  isFeatureEnabled = [objc_opt_class() isFeatureEnabled];
  contact = [(CNSharedProfileStateOracle *)self contact];
  freeze = contact;
  if (isFeatureEnabled)
  {

    if (freeze)
    {
      contact2 = [(CNSharedProfileStateOracle *)self contact];
      hasBeenPersisted = [contact2 hasBeenPersisted];

      if (hasBeenPersisted)
      {
        effectiveStateForContact = [(CNSharedProfileStateOracle *)self effectiveStateForContact];
        contact3 = [(CNSharedProfileStateOracle *)self contact];
        v14 = [contact3 mutableCopy];

        if (type == 2 && effectiveStateForContact == 3)
        {
          [v14 setSharedPhotoDisplayPreference:1];
          v15 = [(CNSharedProfileStateOracle *)self saveUpdatedContact:v14 error:error];
          v16 = [objc_opt_class() log];
          v17 = v16;
          if (!v15)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              [CNSharedProfileStateOracle updateContactForDeclinedActionType:error:];
            }

            freeze = 0;
            goto LABEL_17;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            contact4 = [(CNSharedProfileStateOracle *)self contact];
            identifier = [contact4 identifier];
            v20 = [objc_opt_class() descriptionForActionType:2];
            v24 = 138543618;
            v25 = identifier;
            v26 = 2112;
            v27 = v20;
            _os_log_impl(&dword_1954A0000, v17, OS_LOG_TYPE_DEFAULT, "Saved updated contact: %{public}@ for declined actionType %@", &v24, 0x16u);
          }
        }

        freeze = [v14 freeze];
LABEL_17:

        goto LABEL_18;
      }

      v21 = [objc_opt_class() log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [objc_opt_class() descriptionForActionType:type];
        v24 = 138412290;
        v25 = v22;
        _os_log_impl(&dword_1954A0000, v21, OS_LOG_TYPE_DEFAULT, "Cannot update an unsaved contact for declined actionType %@", &v24, 0xCu);
      }

      freeze = [(CNSharedProfileStateOracle *)self contact];
    }
  }

LABEL_18:

  return freeze;
}

- (id)updateContactAndNicknamesForDeclinedActionType:(unint64_t)type error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  isFeatureEnabled = [objc_opt_class() isFeatureEnabled];
  contact = [(CNSharedProfileStateOracle *)self contact];
  contact5 = contact;
  if (!isFeatureEnabled)
  {
    goto LABEL_19;
  }

  if (!contact5)
  {
    goto LABEL_19;
  }

  contact2 = [(CNSharedProfileStateOracle *)self contact];
  hasBeenPersisted = [contact2 hasBeenPersisted];

  v12 = [objc_opt_class() log];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (hasBeenPersisted)
  {
    if (v13)
    {
      contact3 = [(CNSharedProfileStateOracle *)self contact];
      identifier = [contact3 identifier];
      v16 = [objc_opt_class() descriptionForActionType:type];
      v26 = 138543618;
      v27 = identifier;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "Attempting to decline update for contact (%{public}@) and nicknames for actionType: %@", &v26, 0x16u);
    }

    contact5 = [(CNSharedProfileStateOracle *)self updateContactForDeclinedActionType:type error:error];
    if (type == 3)
    {
      nicknameProvider = [(CNSharedProfileStateOracle *)self nicknameProvider];
      pendingNickname = [(CNSharedProfileStateOracle *)self pendingNickname];
      handle = [pendingNickname handle];
      [nicknameProvider bannerActionTapped:handle IMNicknameBannerAction:3];
    }

    else
    {
      if (type != 2)
      {
        if (type == 1)
        {
          [(CNSharedProfileStateOracle *)self markArchivedNicknameAsIgnored];
        }

        goto LABEL_16;
      }

      nicknameProvider = [(CNSharedProfileStateOracle *)self lastRecentContactImage];
      [nicknameProvider setIgnoredForRevert:1];
      [(CNSharedProfileStateOracle *)self saveContactImage:nicknameProvider];
      pendingNickname = [(CNSharedProfileStateOracle *)self lastRecentPoster];
      [pendingNickname setIgnoredForRevert:1];
      [(CNSharedProfileStateOracle *)self saveContactPoster:pendingNickname];
      [(CNSharedProfileStateOracle *)self markArchivedNicknameAsIgnored];
    }

LABEL_16:
    [(CNSharedProfileStateOracle *)self updateOracleContactAndNicknamesWithUpdatedContact:contact5];
    v21 = [objc_opt_class() log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      contact4 = [(CNSharedProfileStateOracle *)self contact];
      identifier2 = [contact4 identifier];
      v24 = [objc_opt_class() descriptionForActionType:type];
      v26 = 138543618;
      v27 = identifier2;
      v28 = 2112;
      v29 = v24;
      _os_log_impl(&dword_1954A0000, v21, OS_LOG_TYPE_DEFAULT, "Updated contact (%{public}@) and nicknames for declined actionType: %@", &v26, 0x16u);
    }

    goto LABEL_19;
  }

  if (v13)
  {
    v17 = [objc_opt_class() descriptionForActionType:type];
    v26 = 138412290;
    v27 = v17;
    _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "Cannot update an unsaved contact for declined actionType %@", &v26, 0xCu);
  }

  contact5 = [(CNSharedProfileStateOracle *)self contact];
LABEL_19:

  return contact5;
}

- (void)markArchivedNicknameAsIgnored
{
  nicknameProvider = [(CNSharedProfileStateOracle *)self nicknameProvider];
  archivedNickname = [(CNSharedProfileStateOracle *)self archivedNickname];
  handle = [archivedNickname handle];
  [nicknameProvider bannerActionTapped:handle IMNicknameBannerAction:4];
}

- (BOOL)saveUpdatedContact:(id)contact error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if ([objc_opt_class() isFeatureEnabled])
  {
    contact = [(CNSharedProfileStateOracle *)self contact];
    hasBeenPersisted = [contact hasBeenPersisted];

    if ((hasBeenPersisted & 1) == 0)
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
    [(CNSaveRequest *)v9 updateContact:contactCopy];
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      contact2 = [(CNSharedProfileStateOracle *)self contact];
      identifier = [contact2 identifier];
      v17 = 138543362;
      v18 = identifier;
      _os_log_impl(&dword_1954A0000, v10, OS_LOG_TYPE_DEFAULT, "Saving contact with identifier %{public}@", &v17, 0xCu);
    }

    contactStore = [(CNSharedProfileStateOracle *)self contactStore];
    v14 = [contactStore executeSaveRequest:v9 error:error];

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
      if (!error)
      {
LABEL_16:

        goto LABEL_17;
      }

      v15 = [objc_opt_class() log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CNSharedProfileStateOracle saveUpdatedContact:error error:?];
      }
    }

    goto LABEL_16;
  }

  v14 = 0;
LABEL_17:

  return v14;
}

- (void)updateOracleContactAndNicknamesWithUpdatedContact:(id)contact
{
  contactCopy = contact;
  if ([objc_opt_class() isFeatureEnabled])
  {
    [(CNSharedProfileStateOracle *)self setContact:contactCopy];
    nicknameProvider = [(CNSharedProfileStateOracle *)self nicknameProvider];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      nicknameProvider2 = [(CNSharedProfileStateOracle *)self nicknameProvider];
      v7 = [nicknameProvider2 allNicknamesForContact:contactCopy];

      v8 = [v7 objectForKey:@"pendingNickname"];
      [(CNSharedProfileStateOracle *)self setPendingNickname:v8];

      v9 = [v7 objectForKey:@"currentNickname"];
      [(CNSharedProfileStateOracle *)self setCurrentNickname:v9];

      v10 = [v7 objectForKey:@"archivedNickname"];
      [(CNSharedProfileStateOracle *)self setArchivedNickname:v10];
    }
  }
}

+ (id)descriptionForActionType:(unint64_t)type
{
  if (descriptionForActionType__cn_once_token_74 != -1)
  {
    +[CNSharedProfileStateOracle descriptionForActionType:];
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = descriptionForActionType__cn_once_object_74;
  v6 = [v4 numberWithUnsignedInteger:type];
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

+ (id)descriptionForUpdateState:(unint64_t)state
{
  if (descriptionForUpdateState__cn_once_token_75 != -1)
  {
    +[CNSharedProfileStateOracle descriptionForUpdateState:];
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = descriptionForUpdateState__cn_once_object_75;
  v6 = [v4 numberWithUnsignedInteger:state];
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

+ (BOOL)contactIsInAutoUpdateState:(id)state
{
  stateCopy = state;
  v4 = [objc_opt_class() effectiveStateForContact:stateCopy];

  v5 = objc_opt_class();

  return [v5 isAutoUpdateState:v4];
}

- (BOOL)isRevertBannerExpiredForDate:(id)date
{
  v4 = MEMORY[0x1E695DF00];
  dateCopy = date;
  v6 = [v4 now];
  [v6 timeIntervalSinceDate:dateCopy];
  v8 = v7;

  [(CNSharedProfileStateOracle *)self revertBannerMaxDisplayInterval];
  LOBYTE(self) = v8 > v9;

  return self;
}

- (double)revertBannerMaxDisplayInterval
{
  v9 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"CNSharedProfileRevertBannerDisplayIntervalOverride"];
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
  archivedNickname = [(CNSharedProfileStateOracle *)self archivedNickname];
  archivedDate = [archivedNickname archivedDate];
  [v3 timeIntervalSinceDate:archivedDate];
  v7 = v6;
  [(CNSharedProfileStateOracle *)self revertToPreviousMaxDisplayInterval];
  LOBYTE(self) = v7 > v8;

  return self;
}

- (double)revertToPreviousMaxDisplayInterval
{
  v9 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"CNSharedProfilePreviousPhotoDisplayIntervalOverride"];
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
  currentNickname = [(CNSharedProfileStateOracle *)self currentNickname];
  LOBYTE(v3) = [v3 nicknameHasValidVisualIdentityData:currentNickname];

  return v3;
}

- (BOOL)pendingNicknameHasValidVisualIdentityData
{
  v3 = objc_opt_class();
  pendingNickname = [(CNSharedProfileStateOracle *)self pendingNickname];
  LOBYTE(v3) = [v3 nicknameHasValidVisualIdentityData:pendingNickname];

  return v3;
}

+ (BOOL)nicknameHasValidVisualIdentityData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  if (dataCopy)
  {
    avatar = [dataCopy avatar];

    v6 = MEMORY[0x1E6996540];
    if (avatar && (v7 = *MEMORY[0x1E6996540], [v4 avatar], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "imageData"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = (*(v7 + 16))(v7, v9), v9, v8, v7))
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

    wallpaper = [v4 wallpaper];

    if (wallpaper && (v13 = *v6, [v4 wallpaper], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "wallpaperData"), v15 = objc_claimAutoreleasedReturnValue(), LODWORD(v13) = (*(v13 + 16))(v13, v15), v15, v14, v13))
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
  contactStore = [(CNSharedProfileStateOracle *)self contactStore];
  v5 = [(CNUnifiedContactPosterDataRequestFactory *)v3 initWithContactStore:contactStore];

  contact = [(CNSharedProfileStateOracle *)self contact];
  v7 = [(CNUnifiedContactPosterDataRequestFactory *)v5 recentImagesForContact:contact];

  recentContactImageStore = [(CNSharedProfileStateOracle *)self recentContactImageStore];
  v9 = [recentContactImageStore performFetchRequest:v7 error:0];

  return v9;
}

- (id)lastRecentContactImage
{
  recentImages = [(CNSharedProfileStateOracle *)self recentImages];
  firstObject = [recentImages firstObject];

  return firstObject;
}

- (id)lastRevertableRecentSharedContactImage
{
  recentImages = [(CNSharedProfileStateOracle *)self recentImages];
  v4 = [(CNSharedProfileStateOracle *)self firstSharedIn:recentImages];

  return v4;
}

- (id)lastRevertableRecentCustomContactImage
{
  recentImages = [(CNSharedProfileStateOracle *)self recentImages];
  v4 = [(CNSharedProfileStateOracle *)self firstCustomIn:recentImages];

  return v4;
}

- (id)recentPosters
{
  v3 = [CNUnifiedContactPosterDataRequestFactory alloc];
  contactStore = [(CNSharedProfileStateOracle *)self contactStore];
  v5 = [(CNUnifiedContactPosterDataRequestFactory *)v3 initWithContactStore:contactStore];

  contact = [(CNSharedProfileStateOracle *)self contact];
  v7 = [(CNUnifiedContactPosterDataRequestFactory *)v5 recentPostersForContact:contact];

  recentPosterStore = [(CNSharedProfileStateOracle *)self recentPosterStore];
  v9 = [recentPosterStore performFetchRequest:v7 error:0];

  return v9;
}

- (id)lastRecentPoster
{
  recentPosters = [(CNSharedProfileStateOracle *)self recentPosters];
  firstObject = [recentPosters firstObject];

  return firstObject;
}

- (id)lastRevertableRecentSharedPoster
{
  recentPosters = [(CNSharedProfileStateOracle *)self recentPosters];
  v4 = [(CNSharedProfileStateOracle *)self firstSharedIn:recentPosters];

  return v4;
}

- (id)lastRevertableRecentCustomPoster
{
  recentPosters = [(CNSharedProfileStateOracle *)self recentPosters];
  v4 = [(CNSharedProfileStateOracle *)self firstCustomIn:recentPosters];

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

+ (BOOL)shouldSaveCurrentPoster:(id)poster toRecentsForContact:(id)contact
{
  v22 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  posterCopy = poster;
  contentIsSensitive = [posterCopy contentIsSensitive];
  v8 = *MEMORY[0x1E6996540];
  posterData = [posterCopy posterData];

  LOBYTE(posterCopy) = (*(v8 + 16))(v8, posterData);
  sensitiveContentConfiguration = [contactCopy sensitiveContentConfiguration];

  override = [sensitiveContentConfiguration override];
  v12 = (override == 1) | (contentIsSensitive | posterCopy) ^ 1;
  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15[0] = 67109888;
    v15[1] = v12 & 1;
    v16 = 1024;
    v17 = contentIsSensitive & 1;
    v18 = 1024;
    v19 = v17;
    v20 = 1024;
    v21 = override == 1;
    _os_log_impl(&dword_1954A0000, v13, OS_LOG_TYPE_INFO, "Poster should be saved to recents: %d | sensitive: %d, emptyData: %d, override: %d", v15, 0x1Au);
  }

  return v12 & 1;
}

- (id)recentsImageMarkedCurrent
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [CNUnifiedContactPosterDataRequestFactory alloc];
  contactStore = [(CNSharedProfileStateOracle *)self contactStore];
  v5 = [(CNUnifiedContactPosterDataRequestFactory *)v3 initWithContactStore:contactStore];

  contact = [(CNSharedProfileStateOracle *)self contact];
  identifier = [contact identifier];
  v8 = [(CNUnifiedContactPosterDataRequestFactory *)v5 currentImagesForContactWithIdentifier:identifier];

  recentPosterStore = [(CNSharedProfileStateOracle *)self recentPosterStore];
  v10 = [recentPosterStore performFetchRequest:v8 error:0];
  if ([v10 count] >= 2)
  {
    v11 = [objc_opt_class() log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      contact2 = [(CNSharedProfileStateOracle *)self contact];
      identifier2 = [contact2 identifier];
      v16 = 138543362;
      v17 = identifier2;
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Found more than one recent image marked current for %{public}@.", &v16, 0xCu);
    }
  }

  firstObject = [v10 firstObject];

  return firstObject;
}

- (id)recentsPosterMarkedCurrent
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [CNUnifiedContactPosterDataRequestFactory alloc];
  contactStore = [(CNSharedProfileStateOracle *)self contactStore];
  v5 = [(CNUnifiedContactPosterDataRequestFactory *)v3 initWithContactStore:contactStore];

  contact = [(CNSharedProfileStateOracle *)self contact];
  identifier = [contact identifier];
  v8 = [(CNUnifiedContactPosterDataRequestFactory *)v5 currentPostersForContactWithIdentifier:identifier];

  recentPosterStore = [(CNSharedProfileStateOracle *)self recentPosterStore];
  v10 = [recentPosterStore performFetchRequest:v8 error:0];
  if ([v10 count] >= 2)
  {
    v11 = [objc_opt_class() log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      contact2 = [(CNSharedProfileStateOracle *)self contact];
      identifier2 = [contact2 identifier];
      v16 = 138543362;
      v17 = identifier2;
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Found more than one recent poster marked current for %{public}@.", &v16, 0xCu);
    }
  }

  firstObject = [v10 firstObject];

  return firstObject;
}

- (void)saveCurrentAvatarPosterPairToRecents
{
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1954A0000, v3, OS_LOG_TYPE_INFO, "Checking if we need to save current contact image to recents", buf, 2u);
  }

  contact = [(CNSharedProfileStateOracle *)self contact];
  avatarRecipeData = [contact avatarRecipeData];

  if (!avatarRecipeData)
  {
    recentsPosterMarkedCurrent = [(CNSharedProfileStateOracle *)self recentsPosterMarkedCurrent];
    pairedImage = [recentsPosterMarkedCurrent pairedImage];
    if (!pairedImage)
    {
      contact2 = [(CNSharedProfileStateOracle *)self contact];
      imageData = [contact2 imageData];
      if (imageData)
      {
        if (recentsPosterMarkedCurrent)
        {
          itemDetails = [recentsPosterMarkedCurrent itemDetails];
        }

        else
        {
          itemDetails = [(CNSharedProfileStateOracle *)self effectiveStateForContactIsAutoUpdate];
        }

        v11 = [MEMORY[0x1E695DF00] now];
        v12 = [CNContactImage alloc];
        contact3 = [(CNSharedProfileStateOracle *)self contact];
        [contact3 cropRect];
        v14 = [(CNContactImage *)v12 initWithImageData:imageData cropRect:v11 lastUsedDate:?];

        if (itemDetails)
        {
          [(CNContactPosterDataItem *)v14 setItemDetails:1];
        }

        [(CNContactImage *)v14 setPairedPoster:recentsPosterMarkedCurrent];
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

- (void)saveContactImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    recentContactImageStore = [(CNSharedProfileStateOracle *)self recentContactImageStore];
    contact = [(CNSharedProfileStateOracle *)self contact];
    identifier = [contact identifier];
    v8 = [CNContactImageCreateRequest requestToCreateRecentImage:imageCopy forContactIdentifier:identifier];

    v11 = 0;
    LOBYTE(identifier) = [recentContactImageStore performCreateRequest:v8 error:&v11];
    v9 = v11;
    if ((identifier & 1) == 0)
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
    recentContactImageStore = [objc_opt_class() log];
    if (os_log_type_enabled(recentContactImageStore, OS_LOG_TYPE_DEBUG))
    {
      [CNSharedProfileStateOracle saveContactImage:];
    }
  }
}

- (void)saveContactPoster:(id)poster
{
  v16[1] = *MEMORY[0x1E69E9840];
  posterCopy = poster;
  if (posterCopy)
  {
    v5 = [CNUnifiedContactPosterDataRequestFactory alloc];
    contactStore = [(CNSharedProfileStateOracle *)self contactStore];
    v7 = [(CNUnifiedContactPosterDataRequestFactory *)v5 initWithContactStore:contactStore];

    v16[0] = posterCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    contact = [(CNSharedProfileStateOracle *)self contact];
    v10 = [v7 createPosters:v8 forContact:contact];

    recentPosterStore = [(CNSharedProfileStateOracle *)self recentPosterStore];
    v15 = 0;
    v12 = [recentPosterStore performCreateRequest:v10 error:&v15];
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