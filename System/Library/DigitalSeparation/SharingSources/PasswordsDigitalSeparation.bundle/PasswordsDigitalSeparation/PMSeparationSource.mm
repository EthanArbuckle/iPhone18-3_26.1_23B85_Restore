@interface PMSeparationSource
- (PMSeparationSource)init;
- (id)_participantIdentityWithHandle:(id)a3;
- (id)_passwordsGroupWithGroup:(id)a3;
- (id)_passwordsParticipantWithParticipant:(id)a3;
- (id)name;
- (void)_fetchGroupsExcludingInvitationsWithCompletionHandler:(id)a3;
- (void)_groupsAndParticipantsMatchingHandle:(id)a3 completionHandler:(id)a4;
- (void)_leaveGroup:(id)a3 completionHandler:(id)a4;
- (void)_removeAllOtherParticipantsFromGroup:(id)a3 completionHandler:(id)a4;
- (void)_removeParticipant:(id)a3 fromGroup:(id)a4 completionHandler:(id)a5;
- (void)_stopSharingWithGroup:(id)a3 completionHandler:(id)a4;
- (void)_stopSharingWithGroups:(id)a3 completionHandler:(id)a4;
- (void)_stopSharingWithParticipant:(id)a3 inGroup:(id)a4 completionHandler:(id)a5;
- (void)_stopSharingWithParticipantsMatchingHandle:(id)a3 completionHandler:(id)a4;
- (void)fetchSharedResourcesWithCompletion:(id)a3;
- (void)stopAllSharingWithCompletion:(id)a3;
- (void)stopSharing:(id)a3 withCompletion:(id)a4;
- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4;
@end

@implementation PMSeparationSource

- (id)name
{
  v0 = sub_2339731A0();
  if (!v0)
  {
    sub_23397650C();
  }

  v1 = *v0;

  return v1;
}

- (PMSeparationSource)init
{
  v7.receiver = self;
  v7.super_class = PMSeparationSource;
  v2 = [(PMSeparationSource *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;

    v5 = v2;
  }

  return v2;
}

- (id)_passwordsGroupWithGroup:(id)a3
{
  v4 = a3;
  v5 = [v4 participants];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2339739E8;
  v9[3] = &unk_2789F6030;
  v9[4] = self;
  v6 = [v5 safari_mapObjectsUsingBlock:v9];

  v7 = [[PMSeparationGroup alloc] initWithGroup:v4 participants:v6];

  return v7;
}

- (id)_passwordsParticipantWithParticipant:(id)a3
{
  v4 = a3;
  v5 = [v4 handle];
  v6 = [(PMSeparationSource *)self _participantIdentityWithHandle:v5];

  v7 = [[PMSeparationParticipant alloc] initWithParticipant:v4 identity:v6];

  return v7;
}

- (id)_participantIdentityWithHandle:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBDA58];
  v17[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v7 = [v5 predicateForContactsMatchingHandleStrings:v6];

  v8 = [(CNContactStore *)self->_contactStore unifiedContactsMatchingPredicate:v7 keysToFetch:MEMORY[0x277CBEBF8] error:0];
  v9 = [v8 firstObject];

  if (v9)
  {
    v10 = [PMSeparationParticipantIdentity alloc];
    v11 = [v9 identifier];
    v12 = [(PMSeparationParticipantIdentity *)v10 initWithContactIdentifier:v11];
  }

  else
  {
    if ([MEMORY[0x277CFBE78] isStringPhoneNumber:v4])
    {
      v13 = [[PMSeparationParticipantIdentity alloc] initWithPhoneNumber:v4];
    }

    else
    {
      if (([MEMORY[0x277CFBE08] isStringEmailAddress:v4] & 1) == 0)
      {
        v14 = sub_2339734A4();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_233976598();
        }
      }

      v13 = [[PMSeparationParticipantIdentity alloc] initWithEmailAddress:v4];
    }

    v12 = v13;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_stopSharingWithGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v9 = a3;
  v7 = [v9 currentUserParticipant];
  v8 = [v7 permissionLevel];

  if (v8 == 2)
  {
    [(PMSeparationSource *)self _removeAllOtherParticipantsFromGroup:v9 completionHandler:v6];
  }

  else
  {
    [(PMSeparationSource *)self _leaveGroup:v9 completionHandler:v6];
  }
}

- (void)_removeAllOtherParticipantsFromGroup:(id)a3 completionHandler:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 copy];
  v8 = [v7 participants];
  if ([v8 count] == 1)
  {
    v6[2](v6, 0);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          if (([v14 isCurrentUser] & 1) == 0)
          {
            [v7 removeParticipant:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v15 = [objc_alloc(MEMORY[0x277CDBD38]) initWithUpdatedGroup:v7];
    v16 = [MEMORY[0x277CDBD30] sharedInstance];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_233973EE4;
    v18[3] = &unk_2789F6080;
    v19 = v5;
    v20 = v6;
    [v16 updateGroupWithRequest:v15 completion:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_removeParticipant:(id)a3 fromGroup:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 copy];
  [v10 removeParticipant:v7];
  v11 = [objc_alloc(MEMORY[0x277CDBD38]) initWithUpdatedGroup:v10];
  v12 = [MEMORY[0x277CDBD30] sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_233974158;
  v16[3] = &unk_2789F60D0;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  [v12 updateGroupWithRequest:v11 completion:v16];
}

- (void)_stopSharingWithGroups:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_group_create();
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2810000000;
  v23[3] = &unk_233977E83;
  v24 = 0;
  v9 = [MEMORY[0x277CBEB18] array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_233974474;
  v18[3] = &unk_2789F6120;
  v10 = v8;
  v19 = v10;
  v20 = self;
  v22 = v23;
  v11 = v9;
  v21 = v11;
  [v6 enumerateObjectsUsingBlock:v18];
  v12 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2339745B8;
  block[3] = &unk_2789F6148;
  v16 = v11;
  v17 = v7;
  v13 = v7;
  v14 = v11;
  dispatch_group_notify(v10, v12, block);

  _Block_object_dispose(v23, 8);
}

- (void)_stopSharingWithParticipantsMatchingHandle:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2339747B0;
  v8[3] = &unk_2789F6198;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(PMSeparationSource *)self _groupsAndParticipantsMatchingHandle:a3 completionHandler:v8];
}

- (void)_groupsAndParticipantsMatchingHandle:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_233974D34;
  v10[3] = &unk_2789F6198;
  v11 = v6;
  v12 = v7;
  v8 = v6;
  v9 = v7;
  [(PMSeparationSource *)self _fetchGroupsExcludingInvitationsWithCompletionHandler:v10];
}

- (void)_stopSharingWithParticipant:(id)a3 inGroup:(id)a4 completionHandler:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v9 currentUserParticipant];
  v11 = [v10 permissionLevel];

  if (v11 == 2)
  {
    [(PMSeparationSource *)self _removeParticipant:v12 fromGroup:v9 completionHandler:v8];
  }

  else
  {
    [(PMSeparationSource *)self _leaveGroup:v9 completionHandler:v8];
  }
}

- (void)_leaveGroup:(id)a3 completionHandler:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 groupID];
  v8 = [objc_alloc(MEMORY[0x277CDBD28]) initWithGroupID:v7];
  v9 = [MEMORY[0x277D49B58] sharedStore];
  v10 = [v9 _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:v7 isForAlreadyExitedGroup:0];

  if (v10)
  {
    v11 = [MEMORY[0x277CDBD30] sharedInstance];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_23397529C;
    v17[3] = &unk_2789F6238;
    v18 = v5;
    v20 = v6;
    v19 = v7;
    [v11 leaveGroupWithRequest:v8 completion:v17];

    v12 = v18;
  }

  else
  {
    v13 = sub_2339734A4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_233976848();
    }

    v14 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"Failed to copy contributed items back to My Passwords from group.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v15 = [v14 errorWithDomain:@"com.apple.SafariShared.PasswordsDigitalSepration.PMSeparationErrorDomain" code:2 userInfo:v12];
    (*(v6 + 2))(v6, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fetchSharedResourcesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_2339734A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233972000, v5, OS_LOG_TYPE_INFO, "Fetch shared groups", buf, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_233975580;
    v7[3] = &unk_2789F6198;
    v7[4] = self;
    v8 = v4;
    [(PMSeparationSource *)self _fetchGroupsExcludingInvitationsWithCompletionHandler:v7];
  }

  else
  {
    v6 = sub_2339734A4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_233972000, v6, OS_LOG_TYPE_INFO, "Ignoring fetch groups request: ongoing sharing feature is disabled", buf, 2u);
    }

    (*(v4 + 2))(v4, MEMORY[0x277CBEBF8], 0);
  }
}

- (void)stopSharing:(id)a3 withCompletion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_2339734A4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v6;
    _os_log_impl(&dword_233972000, v8, OS_LOG_TYPE_INFO, "Stop sharing with group: %@", buf, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v6;
      v10 = [v9 group];
      v11 = [v10 groupID];

      v12 = [MEMORY[0x277CDBD30] sharedInstance];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_23397597C;
      v21[3] = &unk_2789F62D8;
      v22 = v11;
      v23 = self;
      v24 = v7;
      v13 = v11;
      [v12 getGroupByGroupID:v13 completion:v21];
    }

    else
    {
      v15 = sub_2339734A4();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_23397696C();
      }

      v16 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid resource: %@", v6];
      v26 = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v19 = [v16 errorWithDomain:@"com.apple.SafariShared.PasswordsDigitalSepration.PMSeparationErrorDomain" code:1 userInfo:v18];
      (*(v7 + 2))(v7, v19);
    }
  }

  else
  {
    v14 = sub_2339734A4();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_233972000, v14, OS_LOG_TYPE_INFO, "Ignoring stop sharing request: ongoing sharing feature is disabled", buf, 2u);
    }

    (*(v7 + 2))(v7, 0);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_2339734A4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_233972000, v8, OS_LOG_TYPE_INFO, "Stop sharing with participant: %@", buf, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v6;
      v10 = [v9 participant];
      v11 = [v10 handle];

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_233975E94;
      v20[3] = &unk_2789F6288;
      v21 = v11;
      v22 = v7;
      v12 = v11;
      [(PMSeparationSource *)self _stopSharingWithParticipantsMatchingHandle:v12 completionHandler:v20];
    }

    else
    {
      v14 = sub_2339734A4();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_233976B28();
      }

      v15 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid participant: %@", v6];
      v24 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v18 = [v15 errorWithDomain:@"com.apple.SafariShared.PasswordsDigitalSepration.PMSeparationErrorDomain" code:1 userInfo:v17];
      (*(v7 + 2))(v7, v18);
    }
  }

  else
  {
    v13 = sub_2339734A4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_233972000, v13, OS_LOG_TYPE_INFO, "Ignoring stop sharing request: ongoing sharing feature is disabled", buf, 2u);
    }

    (*(v7 + 2))(v7, 0);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)stopAllSharingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_2339734A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233972000, v5, OS_LOG_TYPE_INFO, "Stop all sharing", buf, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_23397604C;
    v7[3] = &unk_2789F6198;
    v7[4] = self;
    v8 = v4;
    [(PMSeparationSource *)self _fetchGroupsExcludingInvitationsWithCompletionHandler:v7];
  }

  else
  {
    v6 = sub_2339734A4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_233972000, v6, OS_LOG_TYPE_INFO, "Ignoring stop sharing request: ongoing sharing feature is disabled", buf, 2u);
    }

    (*(v4 + 2))(v4, 0);
  }
}

- (void)_fetchGroupsExcludingInvitationsWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CDBD30] sharedInstance];
  v5 = [MEMORY[0x277CDBD20] all];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23397628C;
  v7[3] = &unk_2789F6370;
  v8 = v3;
  v6 = v3;
  [v4 getGroupsWithRequest:v5 completion:v7];
}

@end