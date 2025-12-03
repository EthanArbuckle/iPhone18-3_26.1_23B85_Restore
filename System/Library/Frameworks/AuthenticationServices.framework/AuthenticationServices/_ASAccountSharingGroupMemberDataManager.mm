@interface _ASAccountSharingGroupMemberDataManager
+ (_ASAccountSharingGroupMemberDataManager)sharedManager;
- (_ASAccountSharingGroupMemberData)groupMemberDataForPrimaryAccount;
- (_ASAccountSharingGroupMemberDataManager)init;
- (double)_screenScale;
- (id)_contactDisplayNameFromNameComponents:(id)components;
- (id)_contactForCurrentUser;
- (id)_formattedAddressForAddress:(id)address;
- (id)_renderingScopeForDiameter:(double)diameter;
- (id)_shortContactDisplayNameFromNameComponents:(id)components;
- (id)avatarImageForContact:(id)contact diameter:(double)diameter;
- (id)avatarImageForGroupMember:(id)member diameter:(double)diameter;
- (id)avatarImageForPrimaryAccountOwnerWithDiameter:(double)diameter;
- (id)avatarImageForUserHandle:(id)handle diameter:(double)diameter;
- (id)displayNameForOriginalContributorParticipantID:(id)d inGroupID:(id)iD;
- (id)fetchContactForUserHandle:(id)handle;
- (id)groupMemberDataForGroup:(id)group;
- (id)groupMemberDataForGroupParticipants:(id)participants;
- (id)groupMemberDataForRecipients:(id)recipients;
- (id)nameForOriginalContributorParticipantID:(id)d inGroupID:(id)iD;
- (id)placeholderAvatarImageWithDiameter:(double)diameter;
- (void)_contactForCurrentUser;
- (void)_contactsUpdatedNotification:(id)notification;
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
    aa_primaryAppleAccount = [(ACAccountStore *)v2->_accountStore aa_primaryAppleAccount];
    v11 = [v9 initWithAppleAccount:aa_primaryAppleAccount store:v2->_accountStore];
    profilePictureStore = v2->_profilePictureStore;
    v2->_profilePictureStore = v11;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    avatarImageDiameterToRenderingScopes = v2->_avatarImageDiameterToRenderingScopes;
    v2->_avatarImageDiameterToRenderingScopes = dictionary;

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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__contactsUpdatedNotification_ name:*MEMORY[0x1E695C3D8] object:0];

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
  block[4] = self;
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, block);
  }

  v2 = sharedManager_sharedManager_0;

  return v2;
}

- (_ASAccountSharingGroupMemberData)groupMemberDataForPrimaryAccount
{
  aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
  v4 = objc_alloc_init(_ASAccountSharingGroupMemberData);
  v5 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  aa_firstName = [aa_primaryAppleAccount aa_firstName];
  [v5 setGivenName:aa_firstName];

  aa_middleName = [aa_primaryAppleAccount aa_middleName];
  [v5 setMiddleName:aa_middleName];

  aa_lastName = [aa_primaryAppleAccount aa_lastName];
  [v5 setFamilyName:aa_lastName];

  v9 = [(_ASAccountSharingGroupMemberDataManager *)self _contactDisplayNameFromNameComponents:v5];
  [(_ASAccountSharingGroupMemberData *)v4 setContactDisplayName:v9];

  v10 = [(_ASAccountSharingGroupMemberDataManager *)self _shortContactDisplayNameFromNameComponents:v5];
  [(_ASAccountSharingGroupMemberData *)v4 setShortContactDisplayName:v10];

  v11 = [(_ASAccountSharingGroupMemberDataManager *)self avatarImageForPrimaryAccountOwnerWithDiameter:37.0];
  [(_ASAccountSharingGroupMemberData *)v4 setAvatarImageForGroupMemberCell:v11];

  _contactForCurrentUser = [(_ASAccountSharingGroupMemberDataManager *)self _contactForCurrentUser];
  [(_ASAccountSharingGroupMemberData *)v4 setContact:_contactForCurrentUser];

  [(_ASAccountSharingGroupMemberData *)v4 setIsMeParticipant:1];
  username = [aa_primaryAppleAccount username];
  [(_ASAccountSharingGroupMemberData *)v4 setHandle:username];

  username2 = [aa_primaryAppleAccount username];
  v15 = [(_ASAccountSharingGroupMemberDataManager *)self _formattedAddressForAddress:username2];
  [(_ASAccountSharingGroupMemberData *)v4 setHandleForDisplay:v15];

  mEMORY[0x1E69C88E8] = [MEMORY[0x1E69C88E8] sharedProvider];
  currentUserParticipantID = [mEMORY[0x1E69C88E8] currentUserParticipantID];
  [(_ASAccountSharingGroupMemberData *)v4 setParticipantID:currentUserParticipantID];

  return v4;
}

- (id)groupMemberDataForRecipients:(id)recipients
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72___ASAccountSharingGroupMemberDataManager_groupMemberDataForRecipients___block_invoke;
  v5[3] = &unk_1E7AF7CB8;
  v5[4] = self;
  v3 = [recipients safari_mapObjectsUsingBlock:v5];

  return v3;
}

- (id)groupMemberDataForGroup:(id)group
{
  participants = [group participants];
  v5 = [(_ASAccountSharingGroupMemberDataManager *)self groupMemberDataForGroupParticipants:participants];

  return v5;
}

- (id)groupMemberDataForGroupParticipants:(id)participants
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79___ASAccountSharingGroupMemberDataManager_groupMemberDataForGroupParticipants___block_invoke;
  v5[3] = &unk_1E7AF7CE0;
  v5[4] = self;
  v3 = [participants safari_mapObjectsUsingBlock:v5];

  return v3;
}

- (id)displayNameForOriginalContributorParticipantID:(id)d inGroupID:(id)iD
{
  v4 = [(_ASAccountSharingGroupMemberDataManager *)self nameForOriginalContributorParticipantID:d inGroupID:iD];
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

- (id)nameForOriginalContributorParticipantID:(id)d inGroupID:(id)iD
{
  v28[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  mEMORY[0x1E69C88E8] = [MEMORY[0x1E69C88E8] sharedProvider];
  v9 = [mEMORY[0x1E69C88E8] cachedGroupWithID:iDCopy];

  if (v9)
  {
    participants = [v9 participants];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __93___ASAccountSharingGroupMemberDataManager_nameForOriginalContributorParticipantID_inGroupID___block_invoke;
    v26 = &unk_1E7AF7D08;
    v27 = dCopy;
    v11 = [participants safari_firstObjectPassingTest:&v23];

    if (v11)
    {
      v28[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v13 = [(_ASAccountSharingGroupMemberDataManager *)self groupMemberDataForGroupParticipants:v12];
      firstObject = [v13 firstObject];

      if ([firstObject isMeParticipant])
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = _WBSLocalizedString();
        displayName = [firstObject displayName];
        displayName2 = [v15 localizedStringWithFormat:v16, displayName, v23, v24, v25, v26];
      }

      else
      {
        displayName2 = [firstObject displayName];
      }
    }

    else
    {
      v20 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_ASAccountSharingGroupMemberDataManager nameForOriginalContributorParticipantID:inGroupID:];
      }

      displayName2 = 0;
    }
  }

  else
  {
    v19 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_ASAccountSharingGroupMemberDataManager nameForOriginalContributorParticipantID:inGroupID:];
    }

    displayName2 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return displayName2;
}

- (id)fetchContactForUserHandle:(id)handle
{
  v25[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if ([handleCopy length])
  {
    if ([MEMORY[0x1E69967B0] isStringPhoneNumber:handleCopy])
    {
      v5 = MEMORY[0x1E695CD58];
      v6 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:handleCopy];
      v7 = [v5 predicateForContactsMatchingPhoneNumber:v6];
    }

    else
    {
      v10 = [MEMORY[0x1E69966C8] isStringEmailAddress:handleCopy];
      v11 = MEMORY[0x1E695CD58];
      if (v10)
      {
        v12 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:handleCopy];
LABEL_11:
        v13 = [(NSCache *)self->_contactsCache objectForKey:v12];
        v14 = v13;
        if (v13)
        {
          firstObject = v13;
        }

        else
        {
          contactStore = self->_contactStore;
          descriptorForRequiredKeys = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
          v24 = descriptorForRequiredKeys;
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

          firstObject = [v18 firstObject];
          if (firstObject)
          {
            [(NSCache *)self->_contactsCache setObject:firstObject forKey:v12];
          }
        }

        goto LABEL_20;
      }

      v25[0] = handleCopy;
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

  firstObject = 0;
LABEL_20:

  v21 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)_contactDisplayNameFromNameComponents:(id)components
{
  v3 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:components style:0 options:0];
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

- (id)_shortContactDisplayNameFromNameComponents:(id)components
{
  v3 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:components style:1 options:0];
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
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  return v4;
}

- (id)avatarImageForPrimaryAccountOwnerWithDiameter:(double)diameter
{
  v17[1] = *MEMORY[0x1E69E9840];
  profilePictureForAccountOwnerWithoutMonogramFallback = [(AAUIProfilePictureStore *)self->_profilePictureStore profilePictureForAccountOwnerWithoutMonogramFallback];
  v6 = profilePictureForAccountOwnerWithoutMonogramFallback;
  if (profilePictureForAccountOwnerWithoutMonogramFallback)
  {
    v7 = [profilePictureForAccountOwnerWithoutMonogramFallback imageByPreparingThumbnailOfSize:{diameter, diameter}];
  }

  else
  {
    v8 = MEMORY[0x1E695CD58];
    aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
    aa_fullName = [aa_primaryAppleAccount aa_fullName];
    v11 = [v8 contactWithDisplayName:aa_fullName handleStrings:0];

    v12 = [(_ASAccountSharingGroupMemberDataManager *)self _renderingScopeForDiameter:diameter];
    avatarImageRenderer = self->_avatarImageRenderer;
    v17[0] = v11;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v7 = [(CNAvatarImageRenderer *)avatarImageRenderer avatarImageForContacts:v14 scope:v12];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)avatarImageForUserHandle:(id)handle diameter:(double)diameter
{
  v6 = [(_ASAccountSharingGroupMemberDataManager *)self fetchContactForUserHandle:handle];
  v7 = [(_ASAccountSharingGroupMemberDataManager *)self avatarImageForContact:v6 diameter:diameter];

  return v7;
}

- (id)avatarImageForGroupMember:(id)member diameter:(double)diameter
{
  contact = [member contact];
  v7 = [(_ASAccountSharingGroupMemberDataManager *)self avatarImageForContact:contact diameter:diameter];

  return v7;
}

- (id)avatarImageForContact:(id)contact diameter:(double)diameter
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (contact)
  {
    contactCopy = contact;
    v7 = [(_ASAccountSharingGroupMemberDataManager *)self _renderingScopeForDiameter:diameter];
    avatarImageRenderer = self->_avatarImageRenderer;
    v17[0] = contactCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v10 = [(CNAvatarImageRenderer *)avatarImageRenderer avatarImageForContacts:v9 scope:v7];
  }

  else
  {
    v11 = self->_avatarImageRenderer;
    v12 = 0;
    placeholderImageProvider = [(CNAvatarImageRenderer *)v11 placeholderImageProvider];

    [(_ASAccountSharingGroupMemberDataManager *)self _screenScale];
    v10 = [placeholderImageProvider imageForSize:diameter scale:{diameter, v14}];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)placeholderAvatarImageWithDiameter:(double)diameter
{
  placeholderImageProvider = [(CNAvatarImageRenderer *)self->_avatarImageRenderer placeholderImageProvider];
  [(_ASAccountSharingGroupMemberDataManager *)self _screenScale];
  v7 = [placeholderImageProvider imageForSize:diameter scale:{diameter, v6}];

  return v7;
}

- (id)_renderingScopeForDiameter:(double)diameter
{
  avatarImageDiameterToRenderingScopes = self->_avatarImageDiameterToRenderingScopes;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v7 = [(NSMutableDictionary *)avatarImageDiameterToRenderingScopes objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [MEMORY[0x1E69DB7D0] defaultWritingDirectionForLanguage:0] == 1;
    v9 = MEMORY[0x1E695D0B0];
    [(_ASAccountSharingGroupMemberDataManager *)self _screenScale];
    v7 = [v9 scopeWithPointSize:v8 scale:0 rightToLeft:diameter style:{diameter, v10}];
    v11 = self->_avatarImageDiameterToRenderingScopes;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:diameter];
    [(NSMutableDictionary *)v11 setObject:v7 forKeyedSubscript:v12];
  }

  v13 = v7;

  return v13;
}

- (id)_formattedAddressForAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    if ([MEMORY[0x1E69967B0] isStringPhoneNumber:addressCopy])
    {
      v4 = MEMORY[0x1E69967B0];
      v5 = [MEMORY[0x1E69967B0] countryCodeForNumber:addressCopy];
      v6 = [v4 internationalizedFormattedNumber:addressCopy countryCode:v5];
    }

    else
    {
      v6 = addressCopy;
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
    descriptorForRequiredKeys = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
    v15[0] = descriptorForRequiredKeys;
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

- (void)_contactsUpdatedNotification:(id)notification
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
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1B1C8D000, selfCopy, OS_LOG_TYPE_ERROR, "Failed to get contact for current user with error: %{public}@", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end