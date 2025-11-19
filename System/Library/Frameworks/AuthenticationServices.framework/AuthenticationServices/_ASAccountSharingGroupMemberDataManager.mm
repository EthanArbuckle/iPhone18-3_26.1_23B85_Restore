@interface _ASAccountSharingGroupMemberDataManager
+ (_ASAccountSharingGroupMemberDataManager)sharedManager;
- (_ASAccountSharingGroupMemberData)groupMemberDataForPrimaryAccount;
- (_ASAccountSharingGroupMemberDataManager)init;
- (double)_screenScale;
- (id)_contactDisplayNameFromNameComponents:(id)a3;
- (id)_contactForCurrentUser;
- (id)_formattedAddressForAddress:(id)a3;
- (id)_renderingScopeForDiameter:(double)a3;
- (id)_shortContactDisplayNameFromNameComponents:(id)a3;
- (id)avatarImageForContact:(id)a3 diameter:(double)a4;
- (id)avatarImageForGroupMember:(id)a3 diameter:(double)a4;
- (id)avatarImageForPrimaryAccountOwnerWithDiameter:(double)a3;
- (id)avatarImageForUserHandle:(id)a3 diameter:(double)a4;
- (id)displayNameForOriginalContributorParticipantID:(id)a3 inGroupID:(id)a4;
- (id)fetchContactForUserHandle:(id)a3;
- (id)groupMemberDataForGroup:(id)a3;
- (id)groupMemberDataForGroupParticipants:(id)a3;
- (id)groupMemberDataForRecipients:(id)a3;
- (id)nameForOriginalContributorParticipantID:(id)a3 inGroupID:(id)a4;
- (id)placeholderAvatarImageWithDiameter:(double)a3;
- (void)_contactForCurrentUser;
- (void)_contactsUpdatedNotification:(id)a3;
@end

@implementation _ASAccountSharingGroupMemberDataManager

- (_ASAccountSharingGroupMemberDataManager)init
{
  v24.receiver = self;
  v24.super_class = _ASAccountSharingGroupMemberDataManager;
  v2 = [(_ASAccountSharingGroupMemberDataManager *)&v24 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695D098]);
    avatarImageRenderer = v2->_avatarImageRenderer;
    v2->_avatarImageRenderer = v5;

    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v7 = getAAUIProfilePictureStoreClass_softClass;
    v29 = getAAUIProfilePictureStoreClass_softClass;
    if (!getAAUIProfilePictureStoreClass_softClass)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __getAAUIProfilePictureStoreClass_block_invoke;
      v25[3] = &unk_1E7AF7948;
      v25[4] = &v26;
      __getAAUIProfilePictureStoreClass_block_invoke(v25);
      v7 = v27[3];
    }

    v8 = v7;
    _Block_object_dispose(&v26, 8);
    v9 = [v7 alloc];
    v10 = [(ACAccountStore *)v2->_accountStore aa_primaryAppleAccount];
    v11 = [v9 initWithAppleAccount:v10 store:v2->_accountStore];
    profilePictureStore = v2->_profilePictureStore;
    v2->_profilePictureStore = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    avatarImageDiameterToRenderingScopes = v2->_avatarImageDiameterToRenderingScopes;
    v2->_avatarImageDiameterToRenderingScopes = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695CE28]);
    [*MEMORY[0x1E69C8CC0] UTF8String];
    v16 = tcc_identity_create();
    [v15 setAssumedIdentity:v16];

    v17 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v15];
    contactStore = v2->_contactStore;
    v2->_contactStore = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    contactsCache = v2->_contactsCache;
    v2->_contactsCache = v19;

    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:v2 selector:sel__contactsUpdatedNotification_ name:*MEMORY[0x1E695C3D8] object:0];

    v22 = v2;
  }

  return v2;
}

+ (_ASAccountSharingGroupMemberDataManager)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56___ASAccountSharingGroupMemberDataManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, block);
  }

  v2 = sharedManager_sharedManager_0;

  return v2;
}

- (_ASAccountSharingGroupMemberData)groupMemberDataForPrimaryAccount
{
  v3 = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
  v4 = objc_alloc_init(_ASAccountSharingGroupMemberData);
  v5 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v6 = [v3 aa_firstName];
  [v5 setGivenName:v6];

  v7 = [v3 aa_middleName];
  [v5 setMiddleName:v7];

  v8 = [v3 aa_lastName];
  [v5 setFamilyName:v8];

  v9 = [(_ASAccountSharingGroupMemberDataManager *)self _contactDisplayNameFromNameComponents:v5];
  [(_ASAccountSharingGroupMemberData *)v4 setContactDisplayName:v9];

  v10 = [(_ASAccountSharingGroupMemberDataManager *)self _shortContactDisplayNameFromNameComponents:v5];
  [(_ASAccountSharingGroupMemberData *)v4 setShortContactDisplayName:v10];

  v11 = [(_ASAccountSharingGroupMemberDataManager *)self avatarImageForPrimaryAccountOwnerWithDiameter:37.0];
  [(_ASAccountSharingGroupMemberData *)v4 setAvatarImageForGroupMemberCell:v11];

  v12 = [(_ASAccountSharingGroupMemberDataManager *)self _contactForCurrentUser];
  [(_ASAccountSharingGroupMemberData *)v4 setContact:v12];

  [(_ASAccountSharingGroupMemberData *)v4 setIsMeParticipant:1];
  v13 = [v3 username];
  [(_ASAccountSharingGroupMemberData *)v4 setHandle:v13];

  v14 = [v3 username];
  v15 = [(_ASAccountSharingGroupMemberDataManager *)self _formattedAddressForAddress:v14];
  [(_ASAccountSharingGroupMemberData *)v4 setHandleForDisplay:v15];

  v16 = [MEMORY[0x1E69C88E8] sharedProvider];
  v17 = [v16 currentUserParticipantID];
  [(_ASAccountSharingGroupMemberData *)v4 setParticipantID:v17];

  return v4;
}

- (id)groupMemberDataForRecipients:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72___ASAccountSharingGroupMemberDataManager_groupMemberDataForRecipients___block_invoke;
  v5[3] = &unk_1E7AF7CB8;
  v5[4] = self;
  v3 = [a3 safari_mapObjectsUsingBlock:v5];

  return v3;
}

- (id)groupMemberDataForGroup:(id)a3
{
  v4 = [a3 participants];
  v5 = [(_ASAccountSharingGroupMemberDataManager *)self groupMemberDataForGroupParticipants:v4];

  return v5;
}

- (id)groupMemberDataForGroupParticipants:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79___ASAccountSharingGroupMemberDataManager_groupMemberDataForGroupParticipants___block_invoke;
  v5[3] = &unk_1E7AF7CE0;
  v5[4] = self;
  v3 = [a3 safari_mapObjectsUsingBlock:v5];

  return v3;
}

- (id)displayNameForOriginalContributorParticipantID:(id)a3 inGroupID:(id)a4
{
  v4 = [(_ASAccountSharingGroupMemberDataManager *)self nameForOriginalContributorParticipantID:a3 inGroupID:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _WBSLocalizedString();
  }

  v7 = v6;

  return v7;
}

- (id)nameForOriginalContributorParticipantID:(id)a3 inGroupID:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69C88E8] sharedProvider];
  v9 = [v8 cachedGroupWithID:v7];

  if (v9)
  {
    v10 = [v9 participants];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __93___ASAccountSharingGroupMemberDataManager_nameForOriginalContributorParticipantID_inGroupID___block_invoke;
    v26 = &unk_1E7AF7D08;
    v27 = v6;
    v11 = [v10 safari_firstObjectPassingTest:&v23];

    if (v11)
    {
      v28[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v13 = [(_ASAccountSharingGroupMemberDataManager *)self groupMemberDataForGroupParticipants:v12];
      v14 = [v13 firstObject];

      if ([v14 isMeParticipant])
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = _WBSLocalizedString();
        v17 = [v14 displayName];
        v18 = [v15 localizedStringWithFormat:v16, v17, v23, v24, v25, v26];
      }

      else
      {
        v18 = [v14 displayName];
      }
    }

    else
    {
      v20 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_ASAccountSharingGroupMemberDataManager nameForOriginalContributorParticipantID:inGroupID:];
      }

      v18 = 0;
    }
  }

  else
  {
    v19 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_ASAccountSharingGroupMemberDataManager nameForOriginalContributorParticipantID:inGroupID:];
    }

    v18 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)fetchContactForUserHandle:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    if ([MEMORY[0x1E69967B0] isStringPhoneNumber:v4])
    {
      v5 = MEMORY[0x1E695CD58];
      v6 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v4];
      v7 = [v5 predicateForContactsMatchingPhoneNumber:v6];
    }

    else
    {
      v10 = [MEMORY[0x1E69966C8] isStringEmailAddress:v4];
      v11 = MEMORY[0x1E695CD58];
      if (v10)
      {
        v12 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v4];
LABEL_11:
        v13 = [(NSCache *)self->_contactsCache objectForKey:v12];
        v14 = v13;
        if (v13)
        {
          v9 = v13;
        }

        else
        {
          contactStore = self->_contactStore;
          v16 = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
          v24 = v16;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
          v23 = 0;
          v18 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v12 keysToFetch:v17 error:&v23];
          v19 = v23;

          if ([v18 count] >= 2)
          {
            v20 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              [_ASAccountSharingGroupMemberDataManager fetchContactForUserHandle:];
            }
          }

          v9 = [v18 firstObject];
          if (v9)
          {
            [(NSCache *)self->_contactsCache setObject:v9 forKey:v12];
          }
        }

        goto LABEL_20;
      }

      v25[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      v7 = [v11 predicateForContactsMatchingHandleStrings:v6];
    }

    v12 = v7;

    goto LABEL_11;
  }

  v8 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [_ASAccountSharingGroupMemberDataManager fetchContactForUserHandle:];
  }

  v9 = 0;
LABEL_20:

  v21 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_contactDisplayNameFromNameComponents:(id)a3
{
  v3 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:a3 style:0 options:0];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)_shortContactDisplayNameFromNameComponents:(id)a3
{
  v3 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:a3 style:1 options:0];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (double)_screenScale
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  v4 = v3;

  return v4;
}

- (id)avatarImageForPrimaryAccountOwnerWithDiameter:(double)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = [(AAUIProfilePictureStore *)self->_profilePictureStore profilePictureForAccountOwnerWithoutMonogramFallback];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 imageByPreparingThumbnailOfSize:{a3, a3}];
  }

  else
  {
    v8 = MEMORY[0x1E695CD58];
    v9 = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
    v10 = [v9 aa_fullName];
    v11 = [v8 contactWithDisplayName:v10 handleStrings:0];

    v12 = [(_ASAccountSharingGroupMemberDataManager *)self _renderingScopeForDiameter:a3];
    avatarImageRenderer = self->_avatarImageRenderer;
    v17[0] = v11;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v7 = [(CNAvatarImageRenderer *)avatarImageRenderer avatarImageForContacts:v14 scope:v12];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)avatarImageForUserHandle:(id)a3 diameter:(double)a4
{
  v6 = [(_ASAccountSharingGroupMemberDataManager *)self fetchContactForUserHandle:a3];
  v7 = [(_ASAccountSharingGroupMemberDataManager *)self avatarImageForContact:v6 diameter:a4];

  return v7;
}

- (id)avatarImageForGroupMember:(id)a3 diameter:(double)a4
{
  v6 = [a3 contact];
  v7 = [(_ASAccountSharingGroupMemberDataManager *)self avatarImageForContact:v6 diameter:a4];

  return v7;
}

- (id)avatarImageForContact:(id)a3 diameter:(double)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = a3;
    v7 = [(_ASAccountSharingGroupMemberDataManager *)self _renderingScopeForDiameter:a4];
    avatarImageRenderer = self->_avatarImageRenderer;
    v17[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v10 = [(CNAvatarImageRenderer *)avatarImageRenderer avatarImageForContacts:v9 scope:v7];
  }

  else
  {
    v11 = self->_avatarImageRenderer;
    v12 = 0;
    v13 = [(CNAvatarImageRenderer *)v11 placeholderImageProvider];

    [(_ASAccountSharingGroupMemberDataManager *)self _screenScale];
    v10 = [v13 imageForSize:a4 scale:{a4, v14}];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)placeholderAvatarImageWithDiameter:(double)a3
{
  v5 = [(CNAvatarImageRenderer *)self->_avatarImageRenderer placeholderImageProvider];
  [(_ASAccountSharingGroupMemberDataManager *)self _screenScale];
  v7 = [v5 imageForSize:a3 scale:{a3, v6}];

  return v7;
}

- (id)_renderingScopeForDiameter:(double)a3
{
  avatarImageDiameterToRenderingScopes = self->_avatarImageDiameterToRenderingScopes;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v7 = [(NSMutableDictionary *)avatarImageDiameterToRenderingScopes objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [MEMORY[0x1E69DB7D0] defaultWritingDirectionForLanguage:0] == 1;
    v9 = MEMORY[0x1E695D0B0];
    [(_ASAccountSharingGroupMemberDataManager *)self _screenScale];
    v7 = [v9 scopeWithPointSize:v8 scale:0 rightToLeft:a3 style:{a3, v10}];
    v11 = self->_avatarImageDiameterToRenderingScopes;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [(NSMutableDictionary *)v11 setObject:v7 forKeyedSubscript:v12];
  }

  v13 = v7;

  return v13;
}

- (id)_formattedAddressForAddress:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    if ([MEMORY[0x1E69967B0] isStringPhoneNumber:v3])
    {
      v4 = MEMORY[0x1E69967B0];
      v5 = [MEMORY[0x1E69967B0] countryCodeForNumber:v3];
      v6 = [v4 internationalizedFormattedNumber:v3 countryCode:v5];
    }

    else
    {
      v6 = v3;
    }
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_ASAccountSharingGroupMemberDataManager _formattedAddressForAddress:];
    }

    v6 = &stru_1F28DE020;
  }

  return v6;
}

- (id)_contactForCurrentUser
{
  v15[1] = *MEMORY[0x1E69E9840];
  contactForCurrentUser = self->_contactForCurrentUser;
  if (contactForCurrentUser)
  {
    v3 = contactForCurrentUser;
  }

  else
  {
    contactStore = self->_contactStore;
    v6 = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
    v15[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v14 = 0;
    v8 = [(CNContactStore *)contactStore _ios_meContactWithKeysToFetch:v7 error:&v14];
    v9 = v14;
    v10 = self->_contactForCurrentUser;
    self->_contactForCurrentUser = v8;

    if (v9)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(_ASAccountSharingGroupMemberDataManager *)v11 _contactForCurrentUser];
      }
    }

    v3 = self->_contactForCurrentUser;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_contactsUpdatedNotification:(id)a3
{
  contactForCurrentUser = self->_contactForCurrentUser;
  self->_contactForCurrentUser = 0;

  contactsCache = self->_contactsCache;

  [(NSCache *)contactsCache removeAllObjects];
}

- (void)nameForOriginalContributorParticipantID:inGroupID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)nameForOriginalContributorParticipantID:inGroupID:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchContactForUserHandle:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_contactForCurrentUser
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1B1C8D000, v3, OS_LOG_TYPE_ERROR, "Failed to get contact for current user with error: %{public}@", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end