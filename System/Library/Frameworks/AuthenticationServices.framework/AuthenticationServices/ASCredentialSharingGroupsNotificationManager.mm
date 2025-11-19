@interface ASCredentialSharingGroupsNotificationManager
- (ASCredentialSharingGroupsNotificationManager)init;
- (id)_notificationBodyStringForGroupMembers:(id)a3 addedToGroup:(id)a4;
- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccount:(id)a3;
- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccounts:(id)a3;
- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccountsFromMultipleGroups:(id)a3;
- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccountsFromSingleGroup:(id)a3;
- (void)_getNumberOfPasswords:(unint64_t *)a3 numberOfPasskeys:(unint64_t *)a4 inSavedAccounts:(id)a5;
- (void)_moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:(id)a3;
- (void)_notifyUserAboutGroupMembers:(id)a3 addedToGroup:(id)a4;
- (void)_notifyUserAboutSharedSavedAccountsInRecentlyDeleted:(id)a3 completionHandler:(id)a4;
- (void)_presentNotificationWithRequestIdentifier:(id)a3 content:(id)a4 completionHandler:(id)a5;
- (void)deleteGroupWithID:(id)a3 completionHandler:(id)a4;
- (void)fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:(id)a3;
- (void)groupsUpdatedWithInfos:(id)a3 shouldForceShowingNotifications:(BOOL)a4 completionHandler:(id)a5;
- (void)leaveGroupWithID:(id)a3 completionHandler:(id)a4;
- (void)notifyUserAboutSharedSavedAccountsInRecentlyDeleted:(id)a3;
@end

@implementation ASCredentialSharingGroupsNotificationManager

- (ASCredentialSharingGroupsNotificationManager)init
{
  v7.receiver = self;
  v7.super_class = ASCredentialSharingGroupsNotificationManager;
  v2 = [(ASCredentialSharingGroupsNotificationManager *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:*MEMORY[0x1E69C8CC0]];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v3;

    v5 = v2;
  }

  return v2;
}

- (void)_presentNotificationWithRequestIdentifier:(id)a3 content:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(17, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __116__ASCredentialSharingGroupsNotificationManager__presentNotificationWithRequestIdentifier_content_completionHandler___block_invoke;
  v15[3] = &unk_1E7AF76D0;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __116__ASCredentialSharingGroupsNotificationManager__presentNotificationWithRequestIdentifier_content_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6983298] requestWithIdentifier:*(a1 + 32) content:*(a1 + 40) trigger:0];
  v3 = *(*(a1 + 48) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __116__ASCredentialSharingGroupsNotificationManager__presentNotificationWithRequestIdentifier_content_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7AF85E8;
  v5 = *(a1 + 56);
  [v3 addNotificationRequest:v2 withCompletionHandler:v4];
}

void __116__ASCredentialSharingGroupsNotificationManager__presentNotificationWithRequestIdentifier_content_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __116__ASCredentialSharingGroupsNotificationManager__presentNotificationWithRequestIdentifier_content_completionHandler___block_invoke_2_cold_1(v4, v3);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (void)notifyUserAboutSharedSavedAccountsInRecentlyDeleted:(id)a3
{
  v4 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v5 = [MEMORY[0x1E69C88B0] sharedManager];
  v6 = [v5 keyBagLockStatus] != 0;

  v21 = v6;
  v7 = [MEMORY[0x1E69C88B0] sharedManager];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__ASCredentialSharingGroupsNotificationManager_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke;
  v19[3] = &unk_1E7AF7948;
  v19[4] = v20;
  v8 = [v7 addKeyBagLockStatusChangedObserverWithHandler:v19];

  v9 = [MEMORY[0x1E69C8A38] sharedStore];
  [v9 reset];

  v10 = [MEMORY[0x1E69C8A38] sharedStore];
  v11 = dispatch_get_global_queue(17, 0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __100__ASCredentialSharingGroupsNotificationManager_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_2;
  v14[3] = &unk_1E7AF8D38;
  v12 = v8;
  v15 = v12;
  v13 = v4;
  v17 = v13;
  v18 = v20;
  v16 = self;
  [v10 performTaskEnsuringAllAccountSourcesAreLoadedOnQueue:v11 task:v14];

  _Block_object_dispose(v20, 8);
}

void __100__ASCredentialSharingGroupsNotificationManager_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C88B0] sharedManager];
  v3 = [v2 keyBagLockStatus];

  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void __100__ASCredentialSharingGroupsNotificationManager_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A38] sharedStore];
  v3 = [v2 sharedSavedAccountsInRecentlyDeletedToNotifyUserAbout];

  v4 = [MEMORY[0x1E69C88B0] sharedManager];
  [v4 removeKeyBagLockStatusChangedObserver:*(a1 + 32)];

  if ([v3 count])
  {
    if (*(*(*(a1 + 56) + 8) + 24) != 1)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __100__ASCredentialSharingGroupsNotificationManager_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_5;
      v8[3] = &unk_1E7AF8D10;
      v7 = *(a1 + 40);
      v9 = *(a1 + 48);
      [v7 _notifyUserAboutSharedSavedAccountsInRecentlyDeleted:v3 completionHandler:v8];

      goto LABEL_9;
    }

    v5 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __100__ASCredentialSharingGroupsNotificationManager_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_2_cold_1(v5);
    }

    v6 = *(*(a1 + 48) + 16);
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);
  }

  v6();
LABEL_9:
}

- (void)_notifyUserAboutSharedSavedAccountsInRecentlyDeleted:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x1E6983220];
  v7 = a4;
  v8 = a3;
  v16 = objc_alloc_init(v6);
  v9 = _WBSLocalizedString();
  [v16 setTitle:v9];

  v10 = [(ASCredentialSharingGroupsNotificationManager *)self _notificationBodyStringForSharedRecentlyDeletedSavedAccounts:v8];

  [v16 setBody:v10];
  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    v11 = [MEMORY[0x1E69C8978] passwordManagerURLForRecentlyDeleted];
  }

  else
  {
    v12 = MEMORY[0x1E695DFF8];
    v13 = [MEMORY[0x1E69C8978] resourceSpecifierEncodedKey:*MEMORY[0x1E69C8C88] value:*MEMORY[0x1E69C8CB0]];
    v14 = [@"prefs:root=PASSWORDS&" stringByAppendingString:v13];
    v11 = [v12 URLWithString:v14];
  }

  [v16 setDefaultActionURL:v11];

  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    v15 = *MEMORY[0x1E69C8CE0];
  }

  else
  {
    v15 = @"com.apple.AuthenticationServices.CredentialSharingGroups.RecentlyDeleted";
  }

  [(ASCredentialSharingGroupsNotificationManager *)self _presentNotificationWithRequestIdentifier:v15 content:v16 completionHandler:v7];
}

- (void)leaveGroupWithID:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69C88E8] sharedProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__ASCredentialSharingGroupsNotificationManager_leaveGroupWithID_completionHandler___block_invoke;
  v10[3] = &unk_1E7AF8D60;
  v11 = v5;
  v12 = v6;
  v8 = v5;
  v9 = v6;
  [v7 performTaskEnsuringGroupsAreLoadedOnQueue:MEMORY[0x1E69E96A0] task:v10];
}

void __83__ASCredentialSharingGroupsNotificationManager_leaveGroupWithID_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v5 = [MEMORY[0x1E69C88E8] sharedProvider];
    v6 = [v5 cachedGroupWithID:*(a1 + 32)];

    if (v6)
    {
      v7 = [MEMORY[0x1E69C8A38] sharedStore];
      v8 = [v7 _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:*(a1 + 32) isForAlreadyExitedGroup:0];

      if (v8)
      {
        v9 = [objc_alloc(MEMORY[0x1E697AA60]) initWithGroupID:*(a1 + 32)];
        v10 = [MEMORY[0x1E697AA68] sharedInstance];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __83__ASCredentialSharingGroupsNotificationManager_leaveGroupWithID_completionHandler___block_invoke_2;
        v16[3] = &unk_1E7AF8D60;
        v18 = *(a1 + 40);
        v17 = *(a1 + 32);
        [v10 leaveGroupWithRequest:v9 completion:v16];

LABEL_11:
        return;
      }

      v11 = *(a1 + 40);
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E69C8AE0];
      v14 = @"Failed to move credentials back to personal keychain.";
      v15 = 2;
    }

    else
    {
      v11 = *(a1 + 40);
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E69C8AE0];
      v14 = @"Failed to find group with provided group ID.";
      v15 = 1;
    }

    v9 = [v12 safari_errorWithDomain:v13 code:v15 privacyPreservingDescription:v14];
    (*(v11 + 16))(v11, v9);
    goto LABEL_11;
  }

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 40) + 16);

  v4();
}

void __83__ASCredentialSharingGroupsNotificationManager_leaveGroupWithID_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = [MEMORY[0x1E69C8A38] sharedStore];
    [v5 _recordGroupIdentifierForExitCleanup:*(a1 + 32) completionHandler:*(a1 + 40)];
  }
}

- (void)deleteGroupWithID:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69C88E8] sharedProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__ASCredentialSharingGroupsNotificationManager_deleteGroupWithID_completionHandler___block_invoke;
  v10[3] = &unk_1E7AF8D60;
  v11 = v5;
  v12 = v6;
  v8 = v5;
  v9 = v6;
  [v7 performTaskEnsuringGroupsAreLoadedOnQueue:MEMORY[0x1E69E96A0] task:v10];
}

void __84__ASCredentialSharingGroupsNotificationManager_deleteGroupWithID_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v5 = [MEMORY[0x1E69C88E8] sharedProvider];
    v6 = [v5 cachedGroupWithID:*(a1 + 32)];

    if (v6)
    {
      v7 = [MEMORY[0x1E69C8A38] sharedStore];
      v8 = [v7 _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:*(a1 + 32) isForAlreadyExitedGroup:0];

      if (v8)
      {
        v9 = [objc_alloc(MEMORY[0x1E697AA50]) initWithGroupID:*(a1 + 32)];
        v10 = [MEMORY[0x1E697AA68] sharedInstance];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __84__ASCredentialSharingGroupsNotificationManager_deleteGroupWithID_completionHandler___block_invoke_2;
        v16[3] = &unk_1E7AF8D60;
        v18 = *(a1 + 40);
        v17 = *(a1 + 32);
        [v10 deleteGroupWithRequest:v9 completion:v16];

LABEL_11:
        return;
      }

      v11 = *(a1 + 40);
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E69C8AE0];
      v14 = @"Failed to move credentials back to personal keychain.";
      v15 = 2;
    }

    else
    {
      v11 = *(a1 + 40);
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E69C8AE0];
      v14 = @"Failed to find group with provided group ID.";
      v15 = 1;
    }

    v9 = [v12 safari_errorWithDomain:v13 code:v15 privacyPreservingDescription:v14];
    (*(v11 + 16))(v11, v9);
    goto LABEL_11;
  }

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 40) + 16);

  v4();
}

void __84__ASCredentialSharingGroupsNotificationManager_deleteGroupWithID_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = [MEMORY[0x1E69C8A38] sharedStore];
    [v5 _recordGroupIdentifierForExitCleanup:*(a1 + 32) completionHandler:*(a1 + 40)];
  }
}

- (void)groupsUpdatedWithInfos:(id)a3 shouldForceShowingNotifications:(BOOL)a4 completionHandler:(id)a5
{
  v34 = a4;
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v33 = a5;
  v7 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1C8D000, v7, OS_LOG_TYPE_INFO, "Authentication Services Agent received group updates.", buf, 2u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    v12 = &dword_1B1C8D000;
    v35 = v8;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        v15 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(v12, v15, OS_LOG_TYPE_INFO, "Authentication Services Agent received updates via groupsUpdatedWithInfos.", buf, 2u);
        }

        if (objc_opt_respondsToSelector())
        {
          v16 = [v14 updateType];
          if (v16 != 1)
          {
            if (v16)
            {
              continue;
            }

            v17 = v12;
            v18 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = v18;
              v20 = [v14 updatedGroup];
              v21 = [v20 groupID];
              *buf = 138412290;
              v44 = v21;
              _os_log_impl(v17, v19, OS_LOG_TYPE_INFO, "Authentication Services Agent received group member addition update for group with ID: %@.", buf, 0xCu);
            }

            v22 = [v14 updatedGroup];
            v23 = [v14 addedParticipants];
            if ([v23 count])
            {
              v24 = [v22 currentUserParticipant];
              v25 = [v22 ownerParticipant];

              if (v24 != v25 || v34)
              {
LABEL_25:
                v31 = [v14 addedParticipants];
                [(ASCredentialSharingGroupsNotificationManager *)self _notifyUserAboutGroupMembers:v31 addedToGroup:v22];
              }
            }

            else
            {

              if (v34)
              {
                goto LABEL_25;
              }
            }

            v12 = v17;
            v8 = v35;
            continue;
          }

          v27 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = v27;
            v29 = [v14 departedGroupID];
            *buf = 138412290;
            v44 = v29;
            _os_log_impl(v12, v28, OS_LOG_TYPE_INFO, "Authentication Services Agent received group departure update for group with ID: %@.", buf, 0xCu);
          }

          v30 = [v14 departedGroupID];
          [(ASCredentialSharingGroupsNotificationManager *)self _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:v30];
        }

        else
        {
          v26 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [ASCredentialSharingGroupsNotificationManager groupsUpdatedWithInfos:v38 shouldForceShowingNotifications:v26 completionHandler:?];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v10);
  }

  v33[2](v33);
  v32 = *MEMORY[0x1E69E9840];
}

- (void)fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69C8A38] sharedStore];
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __107__ASCredentialSharingGroupsNotificationManager_fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion___block_invoke;
  v7[3] = &unk_1E7AF8D10;
  v8 = v3;
  v6 = v3;
  [v4 performTaskEnsuringAllAccountSourcesAreLoadedOnQueue:v5 task:v7];
}

void __107__ASCredentialSharingGroupsNotificationManager_fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696AD98];
  v5 = [MEMORY[0x1E69C8A38] sharedStore];
  v3 = [v5 savedAccounts];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
  (*(v1 + 16))(v1, v4, 0);
}

- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccounts:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = [(ASCredentialSharingGroupsNotificationManager *)self _notificationBodyStringForSharedRecentlyDeletedSavedAccount:v5];
  }

  else
  {
    v7 = [v4 safari_setByApplyingBlock:&__block_literal_global_32];
    v8 = [v7 count];

    if (v8 < 2)
    {
      [(ASCredentialSharingGroupsNotificationManager *)self _notificationBodyStringForSharedRecentlyDeletedSavedAccountsFromSingleGroup:v4];
    }

    else
    {
      [(ASCredentialSharingGroupsNotificationManager *)self _notificationBodyStringForSharedRecentlyDeletedSavedAccountsFromMultipleGroups:v4];
    }
    v6 = ;
  }

  return v6;
}

id __109__ASCredentialSharingGroupsNotificationManager__notificationBodyStringForSharedRecentlyDeletedSavedAccounts___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isSavedInSharedGroup])
  {
    v3 = [v2 sharedGroupID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccount:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v3 lastModifiedDate];
  v6 = [v4 dateByAddingUnit:16 value:30 toDate:v5 options:0];

  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [v7 safari_numberOfDaysUntilDate:v6] + 1;

  v9 = [MEMORY[0x1E69C88E8] sharedProvider];
  v10 = [v3 sharedGroupID];
  v11 = [v9 cachedGroupWithID:v10];

  if (!v11)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ASCredentialSharingGroupsNotificationManager *)v12 _notificationBodyStringForSharedRecentlyDeletedSavedAccount:v3];
    }
  }

  v13 = [v3 credentialTypes];
  v14 = MEMORY[0x1E696AEC0];
  if (v13 == 3)
  {
    if (v11)
    {
      goto LABEL_11;
    }
  }

  else if (v13 == 2)
  {
    if (v11)
    {
      goto LABEL_11;
    }
  }

  else if (v11)
  {
LABEL_11:
    v15 = _WBSLocalizedString();
    v16 = [v3 highLevelDomain];
    v17 = [v11 displayName];
    v18 = [v14 localizedStringWithFormat:v15, v16, v17, v8];

    goto LABEL_13;
  }

  v15 = _WBSLocalizedString();
  v16 = [v3 highLevelDomain];
  v18 = [v14 localizedStringWithFormat:v15, v16, v8];
LABEL_13:

  return v18;
}

- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccountsFromSingleGroup:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = 0;
  v5 = [v4 firstObject];
  v6 = [v5 sharedGroupID];

  v7 = [MEMORY[0x1E69C88E8] sharedProvider];
  v8 = [v7 cachedGroupWithID:v6];

  if (!v8)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ASCredentialSharingGroupsNotificationManager _notificationBodyStringForSharedRecentlyDeletedSavedAccountsFromSingleGroup:];
    }
  }

  [(ASCredentialSharingGroupsNotificationManager *)self _getNumberOfPasswords:&v22 numberOfPasskeys:&v21 inSavedAccounts:v4];
  v10 = MEMORY[0x1E696AEC0];
  if (!v22 || !v21)
  {
    if (v22)
    {
      if (v8)
      {
        v11 = _WBSLocalizedString();
        v15 = v22;
LABEL_13:
        v14 = [v8 displayName];
        [v10 localizedStringWithFormat:v11, v15, v14, v20];
        goto LABEL_14;
      }

      v11 = _WBSLocalizedString();
      v17 = v22;
    }

    else
    {
      if (v8)
      {
        v11 = _WBSLocalizedString();
        v15 = v21;
        goto LABEL_13;
      }

      v11 = _WBSLocalizedString();
      v17 = v21;
    }

    [v10 localizedStringWithFormat:v11, v17, v19];
    goto LABEL_19;
  }

  if (v8)
  {
    v11 = _WBSLocalizedString();
    v13 = v21;
    v12 = v22;
    v14 = [v8 displayName];
    [v10 localizedStringWithFormat:v11, v12, v13, v14];
    v16 = LABEL_14:;

    goto LABEL_20;
  }

  v11 = _WBSLocalizedString();
  [v10 localizedStringWithFormat:v11, v22, v21];
  v16 = LABEL_19:;
LABEL_20:

  return v16;
}

- (void)_getNumberOfPasswords:(unint64_t *)a3 numberOfPasskeys:(unint64_t *)a4 inSavedAccounts:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        v11 += [v14 credentialTypes] & 1;
        v10 += ([v14 credentialTypes] >> 1) & 1;
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  *a3 = v11;
  *a4 = v10;

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccountsFromMultipleGroups:(id)a3
{
  v10 = 0;
  v11 = 0;
  [(ASCredentialSharingGroupsNotificationManager *)self _getNumberOfPasswords:&v11 numberOfPasskeys:&v10 inSavedAccounts:a3];
  v3 = MEMORY[0x1E696AEC0];
  if (v11)
  {
    v4 = v10 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (v11)
    {
      v6 = _WBSLocalizedString();
      v5 = v11;
    }

    else
    {
      v6 = _WBSLocalizedString();
      v5 = v10;
    }

    [v3 localizedStringWithFormat:v6, v5, v9];
  }

  else
  {
    v6 = _WBSLocalizedString();
    [v3 localizedStringWithFormat:v6, v11, v10];
  }
  v7 = ;

  return v7;
}

- (void)_notifyUserAboutGroupMembers:(id)a3 addedToGroup:(id)a4
{
  v6 = MEMORY[0x1E6983220];
  v7 = a4;
  v8 = a3;
  v17 = objc_alloc_init(v6);
  v9 = _WBSLocalizedString();
  [v17 setTitle:v9];

  v10 = [(ASCredentialSharingGroupsNotificationManager *)self _notificationBodyStringForGroupMembers:v8 addedToGroup:v7];

  [v17 setBody:v10];
  v11 = [v7 groupID];

  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    v12 = [MEMORY[0x1E69C8978] passwordManagerURLForGroupWithID:v11];
  }

  else
  {
    v13 = MEMORY[0x1E695DFF8];
    v14 = [MEMORY[0x1E69C8978] resourceSpecifierEncodedKey:*MEMORY[0x1E69C8CA8] value:v11];
    v15 = [@"prefs:root=PASSWORDS&" stringByAppendingString:v14];
    v12 = [v13 URLWithString:v15];
  }

  [v17 setDefaultActionURL:v12];

  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    v16 = *MEMORY[0x1E69C8CD0];
  }

  else
  {
    v16 = @"com.apple.AuthenticationServices.CredentialSharingGroups.GroupUpdate";
  }

  [(ASCredentialSharingGroupsNotificationManager *)self _presentNotificationWithRequestIdentifier:v16 content:v17 completionHandler:0];
}

- (id)_notificationBodyStringForGroupMembers:(id)a3 addedToGroup:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_ASAccountSharingGroupMemberDataManager sharedManager];
  v8 = [v7 groupMemberDataForGroupParticipants:v6];

  v9 = [v8 count];
  v10 = MEMORY[0x1E696AEC0];
  switch(v9)
  {
    case 3:
      v11 = _WBSLocalizedString();
      v12 = [v8 firstObject];
      v13 = [v12 displayName];
      v14 = [v8 objectAtIndexedSubscript:1];
      v26 = [v14 displayName];
      v18 = [v8 objectAtIndexedSubscript:2];
      [v18 displayName];
      v20 = v19 = v5;
      v21 = [v19 displayName];
      v15 = [v10 localizedStringWithFormat:v11, v13, v26, v20, v21];

      v5 = v19;
      break;
    case 2:
      v11 = _WBSLocalizedString();
      v12 = [v8 firstObject];
      v13 = [v12 displayName];
      v14 = [v8 lastObject];
      v16 = [v14 displayName];
      v17 = [v5 displayName];
      v15 = [v10 localizedStringWithFormat:v11, v13, v16, v17];

      break;
    case 1:
      v11 = _WBSLocalizedString();
      v12 = [v8 firstObject];
      v13 = [v12 displayName];
      v14 = [v5 displayName];
      v15 = [v10 localizedStringWithFormat:v11, v13, v14];
      break;
    default:
      v11 = _WBSLocalizedString();
      v12 = [v8 firstObject];
      v13 = [v12 displayName];
      v14 = [v8 objectAtIndexedSubscript:1];
      v22 = [v14 displayName];
      v23 = [v8 count] - 2;
      v24 = [v5 displayName];
      v15 = [v10 localizedStringWithFormat:v11, v13, v22, v23, v24];

      break;
  }

  return v15;
}

- (void)_moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69C8A38] sharedStore];
  v5 = [v4 _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:v3 isForAlreadyExitedGroup:1];

  if ((v5 & 1) == 0)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ASCredentialSharingGroupsNotificationManager _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:];
    }
  }
}

void __116__ASCredentialSharingGroupsNotificationManager__presentNotificationWithRequestIdentifier_content_completionHandler___block_invoke_2_cold_1(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Failed to present notification with error: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)groupsUpdatedWithInfos:(uint8_t *)buf shouldForceShowingNotifications:(_BYTE *)a2 completionHandler:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B1C8D000, log, OS_LOG_TYPE_ERROR, "updateType SPI not available on group update info.", buf, 2u);
}

- (void)_notificationBodyStringForSharedRecentlyDeletedSavedAccount:(void *)a1 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 sharedGroupID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Failed to get group display name for group ID for sharing notification: %{private}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_notificationBodyStringForSharedRecentlyDeletedSavedAccountsFromSingleGroup:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1B1C8D000, v0, OS_LOG_TYPE_ERROR, "Failed to get group display name for group ID for sharing notification: %{private}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1B1C8D000, v0, OS_LOG_TYPE_ERROR, "Failed to move contributed credentials back from group ID: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end