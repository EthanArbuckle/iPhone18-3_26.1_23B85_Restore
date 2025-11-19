@interface ASAccountSharingGroupMemberDataManager
@end

@implementation ASAccountSharingGroupMemberDataManager

uint64_t __56___ASAccountSharingGroupMemberDataManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedManager_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

_ASAccountSharingGroupMemberData *__72___ASAccountSharingGroupMemberDataManager_groupMemberDataForRecipients___block_invoke(uint64_t a1, void *a2)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(_ASAccountSharingGroupMemberData);
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696ADF0];
  v7 = [v3 contact];
  v8 = [v6 componentsForContact:v7];
  v9 = [v5 _contactDisplayNameFromNameComponents:v8];
  [(_ASAccountSharingGroupMemberData *)v4 setContactDisplayName:v9];

  v10 = *(a1 + 32);
  v11 = MEMORY[0x1E696ADF0];
  v12 = [v3 contact];
  v13 = [v11 componentsForContact:v12];
  v14 = [v10 _shortContactDisplayNameFromNameComponents:v13];
  [(_ASAccountSharingGroupMemberData *)v4 setShortContactDisplayName:v14];

  v15 = [v3 normalizedAddress];
  [(_ASAccountSharingGroupMemberData *)v4 setHandle:v15];

  v16 = *(a1 + 32);
  v17 = [v3 address];
  v18 = [v16 _formattedAddressForAddress:v17];
  [(_ASAccountSharingGroupMemberData *)v4 setHandleForDisplay:v18];

  v19 = *(*(a1 + 32) + 16);
  v20 = [v3 contact];
  v27[0] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v22 = [*(a1 + 32) _renderingScopeForDiameter:37.0];
  v23 = [v19 avatarImageForContacts:v21 scope:v22];
  [(_ASAccountSharingGroupMemberData *)v4 setAvatarImageForGroupMemberCell:v23];

  [(_ASAccountSharingGroupMemberData *)v4 setGroupPermissionLevel:1];
  v24 = [v3 contact];

  [(_ASAccountSharingGroupMemberData *)v4 setContact:v24];
  v25 = *MEMORY[0x1E69E9840];

  return v4;
}

_ASAccountSharingGroupMemberData *__79___ASAccountSharingGroupMemberDataManager_groupMemberDataForGroupParticipants___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(_ASAccountSharingGroupMemberData);
  if ([v3 isCurrentUser])
  {
    v5 = [*(a1 + 32) groupMemberDataForPrimaryAccount];

    [v5 setGroupPermissionLevel:{objc_msgSend(v3, "permissionLevel")}];
    v6 = [*(a1 + 32) _contactForCurrentUser];
    [v5 setContact:v6];

    [v5 setIsMeParticipant:1];
    [v5 setInviteStatus:{objc_msgSend(v3, "inviteStatus")}];
    v7 = [MEMORY[0x1E69C88E8] sharedProvider];
    v8 = [v7 currentUserParticipantID];
    [v5 setParticipantID:v8];

    v9 = v5;
  }

  else
  {
    v10 = [v3 handle];
    [(_ASAccountSharingGroupMemberData *)v4 setHandle:v10];
    v11 = [*(a1 + 32) _formattedAddressForAddress:v10];
    [(_ASAccountSharingGroupMemberData *)v4 setHandleForDisplay:v11];

    -[_ASAccountSharingGroupMemberData setGroupPermissionLevel:](v4, "setGroupPermissionLevel:", [v3 permissionLevel]);
    -[_ASAccountSharingGroupMemberData setInviteStatus:](v4, "setInviteStatus:", [v3 inviteStatus]);
    v12 = [v3 participantID];
    [(_ASAccountSharingGroupMemberData *)v4 setParticipantID:v12];

    v13 = [*(a1 + 32) fetchContactForUserHandle:v10];
    if (v13)
    {
      [(_ASAccountSharingGroupMemberData *)v4 setContact:v13];
      v14 = *(a1 + 32);
      v15 = [MEMORY[0x1E696ADF0] componentsForContact:v13];
      v16 = [v14 _contactDisplayNameFromNameComponents:v15];
      [(_ASAccountSharingGroupMemberData *)v4 setContactDisplayName:v16];

      v17 = *(a1 + 32);
      v18 = [MEMORY[0x1E696ADF0] componentsForContact:v13];
      v19 = [v17 _shortContactDisplayNameFromNameComponents:v18];
      [(_ASAccountSharingGroupMemberData *)v4 setShortContactDisplayName:v19];
    }

    v20 = [*(a1 + 32) avatarImageForGroupMember:v4 diameter:37.0];
    [(_ASAccountSharingGroupMemberData *)v4 setAvatarImageForGroupMemberCell:v20];

    v9 = v4;
  }

  return v9;
}

uint64_t __93___ASAccountSharingGroupMemberDataManager_nameForOriginalContributorParticipantID_inGroupID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCurrentUser])
  {
    v4 = [MEMORY[0x1E69C88E8] sharedProvider];
    v5 = [v4 currentUserParticipantID];
  }

  else
  {
    v5 = [v3 participantID];
  }

  v6 = [v5 isEqual:*(a1 + 32)];

  return v6;
}

id __81___ASAccountSharingGroupMemberDataManager_KCSharingParticipantsFromGroupMembers___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E697AA78];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 handle];
  v6 = [v3 groupPermissionLevel];

  v7 = [v4 initWithHandle:v5 permissionLevel:v6];

  return v7;
}

@end