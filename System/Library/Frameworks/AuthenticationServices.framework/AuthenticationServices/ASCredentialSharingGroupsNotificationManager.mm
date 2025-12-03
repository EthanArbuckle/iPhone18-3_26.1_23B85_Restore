@interface ASCredentialSharingGroupsNotificationManager
- (ASCredentialSharingGroupsNotificationManager)init;
- (id)_notificationBodyStringForGroupMembers:(id)members addedToGroup:(id)group;
- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccount:(id)account;
- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccounts:(id)accounts;
- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccountsFromMultipleGroups:(id)groups;
- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccountsFromSingleGroup:(id)group;
- (void)_getNumberOfPasswords:(unint64_t *)passwords numberOfPasskeys:(unint64_t *)passkeys inSavedAccounts:(id)accounts;
- (void)_moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:(id)d;
- (void)_notifyUserAboutGroupMembers:(id)members addedToGroup:(id)group;
- (void)_notifyUserAboutSharedSavedAccountsInRecentlyDeleted:(id)deleted completionHandler:(id)handler;
- (void)_presentNotificationWithRequestIdentifier:(id)identifier content:(id)content completionHandler:(id)handler;
- (void)deleteGroupWithID:(id)d completionHandler:(id)handler;
- (void)fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:(id)completion;
- (void)groupsUpdatedWithInfos:(id)infos shouldForceShowingNotifications:(BOOL)notifications completionHandler:(id)handler;
- (void)leaveGroupWithID:(id)d completionHandler:(id)handler;
- (void)notifyUserAboutSharedSavedAccountsInRecentlyDeleted:(id)deleted;
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

- (void)_presentNotificationWithRequestIdentifier:(id)identifier content:(id)content completionHandler:(id)handler
{
  identifierCopy = identifier;
  contentCopy = content;
  handlerCopy = handler;
  v11 = dispatch_get_global_queue(17, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __116__ASCredentialSharingGroupsNotificationManager__presentNotificationWithRequestIdentifier_content_completionHandler___block_invoke;
  v15[3] = &unk_1E7AF76D0;
  v16 = identifierCopy;
  v17 = contentCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = contentCopy;
  v14 = identifierCopy;
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

- (void)notifyUserAboutSharedSavedAccountsInRecentlyDeleted:(id)deleted
{
  deletedCopy = deleted;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  mEMORY[0x1E69C88B0] = [MEMORY[0x1E69C88B0] sharedManager];
  v6 = [mEMORY[0x1E69C88B0] keyBagLockStatus] != 0;

  v21 = v6;
  mEMORY[0x1E69C88B0]2 = [MEMORY[0x1E69C88B0] sharedManager];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__ASCredentialSharingGroupsNotificationManager_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke;
  v19[3] = &unk_1E7AF7948;
  v19[4] = v20;
  v8 = [mEMORY[0x1E69C88B0]2 addKeyBagLockStatusChangedObserverWithHandler:v19];

  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  [mEMORY[0x1E69C8A38] reset];

  mEMORY[0x1E69C8A38]2 = [MEMORY[0x1E69C8A38] sharedStore];
  v11 = dispatch_get_global_queue(17, 0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __100__ASCredentialSharingGroupsNotificationManager_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_2;
  v14[3] = &unk_1E7AF8D38;
  v12 = v8;
  v15 = v12;
  v13 = deletedCopy;
  v17 = v13;
  v18 = v20;
  selfCopy = self;
  [mEMORY[0x1E69C8A38]2 performTaskEnsuringAllAccountSourcesAreLoadedOnQueue:v11 task:v14];

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

- (void)_notifyUserAboutSharedSavedAccountsInRecentlyDeleted:(id)deleted completionHandler:(id)handler
{
  v6 = MEMORY[0x1E6983220];
  handlerCopy = handler;
  deletedCopy = deleted;
  v16 = objc_alloc_init(v6);
  v9 = _WBSLocalizedString();
  [v16 setTitle:v9];

  v10 = [(ASCredentialSharingGroupsNotificationManager *)self _notificationBodyStringForSharedRecentlyDeletedSavedAccounts:deletedCopy];

  [v16 setBody:v10];
  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    passwordManagerURLForRecentlyDeleted = [MEMORY[0x1E69C8978] passwordManagerURLForRecentlyDeleted];
  }

  else
  {
    v12 = MEMORY[0x1E695DFF8];
    v13 = [MEMORY[0x1E69C8978] resourceSpecifierEncodedKey:*MEMORY[0x1E69C8C88] value:*MEMORY[0x1E69C8CB0]];
    v14 = [@"prefs:root=PASSWORDS&" stringByAppendingString:v13];
    passwordManagerURLForRecentlyDeleted = [v12 URLWithString:v14];
  }

  [v16 setDefaultActionURL:passwordManagerURLForRecentlyDeleted];

  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    v15 = *MEMORY[0x1E69C8CE0];
  }

  else
  {
    v15 = @"com.apple.AuthenticationServices.CredentialSharingGroups.RecentlyDeleted";
  }

  [(ASCredentialSharingGroupsNotificationManager *)self _presentNotificationWithRequestIdentifier:v15 content:v16 completionHandler:handlerCopy];
}

- (void)leaveGroupWithID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  mEMORY[0x1E69C88E8] = [MEMORY[0x1E69C88E8] sharedProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__ASCredentialSharingGroupsNotificationManager_leaveGroupWithID_completionHandler___block_invoke;
  v10[3] = &unk_1E7AF8D60;
  v11 = dCopy;
  v12 = handlerCopy;
  v8 = dCopy;
  v9 = handlerCopy;
  [mEMORY[0x1E69C88E8] performTaskEnsuringGroupsAreLoadedOnQueue:MEMORY[0x1E69E96A0] task:v10];
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

- (void)deleteGroupWithID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  mEMORY[0x1E69C88E8] = [MEMORY[0x1E69C88E8] sharedProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__ASCredentialSharingGroupsNotificationManager_deleteGroupWithID_completionHandler___block_invoke;
  v10[3] = &unk_1E7AF8D60;
  v11 = dCopy;
  v12 = handlerCopy;
  v8 = dCopy;
  v9 = handlerCopy;
  [mEMORY[0x1E69C88E8] performTaskEnsuringGroupsAreLoadedOnQueue:MEMORY[0x1E69E96A0] task:v10];
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

- (void)groupsUpdatedWithInfos:(id)infos shouldForceShowingNotifications:(BOOL)notifications completionHandler:(id)handler
{
  notificationsCopy = notifications;
  v46 = *MEMORY[0x1E69E9840];
  infosCopy = infos;
  handlerCopy = handler;
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
  v8 = infosCopy;
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
          updateType = [v14 updateType];
          if (updateType != 1)
          {
            if (updateType)
            {
              continue;
            }

            v17 = v12;
            v18 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = v18;
              updatedGroup = [v14 updatedGroup];
              groupID = [updatedGroup groupID];
              *buf = 138412290;
              v44 = groupID;
              _os_log_impl(v17, v19, OS_LOG_TYPE_INFO, "Authentication Services Agent received group member addition update for group with ID: %@.", buf, 0xCu);
            }

            updatedGroup2 = [v14 updatedGroup];
            addedParticipants = [v14 addedParticipants];
            if ([addedParticipants count])
            {
              currentUserParticipant = [updatedGroup2 currentUserParticipant];
              ownerParticipant = [updatedGroup2 ownerParticipant];

              if (currentUserParticipant != ownerParticipant || notificationsCopy)
              {
LABEL_25:
                addedParticipants2 = [v14 addedParticipants];
                [(ASCredentialSharingGroupsNotificationManager *)self _notifyUserAboutGroupMembers:addedParticipants2 addedToGroup:updatedGroup2];
              }
            }

            else
            {

              if (notificationsCopy)
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
            departedGroupID = [v14 departedGroupID];
            *buf = 138412290;
            v44 = departedGroupID;
            _os_log_impl(v12, v28, OS_LOG_TYPE_INFO, "Authentication Services Agent received group departure update for group with ID: %@.", buf, 0xCu);
          }

          departedGroupID2 = [v14 departedGroupID];
          [(ASCredentialSharingGroupsNotificationManager *)self _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:departedGroupID2];
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

  handlerCopy[2](handlerCopy);
  v32 = *MEMORY[0x1E69E9840];
}

- (void)fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __107__ASCredentialSharingGroupsNotificationManager_fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion___block_invoke;
  v7[3] = &unk_1E7AF8D10;
  v8 = completionCopy;
  v6 = completionCopy;
  [mEMORY[0x1E69C8A38] performTaskEnsuringAllAccountSourcesAreLoadedOnQueue:v5 task:v7];
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

- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccounts:(id)accounts
{
  accountsCopy = accounts;
  if ([accountsCopy count] == 1)
  {
    firstObject = [accountsCopy firstObject];
    v6 = [(ASCredentialSharingGroupsNotificationManager *)self _notificationBodyStringForSharedRecentlyDeletedSavedAccount:firstObject];
  }

  else
  {
    v7 = [accountsCopy safari_setByApplyingBlock:&__block_literal_global_32];
    v8 = [v7 count];

    if (v8 < 2)
    {
      [(ASCredentialSharingGroupsNotificationManager *)self _notificationBodyStringForSharedRecentlyDeletedSavedAccountsFromSingleGroup:accountsCopy];
    }

    else
    {
      [(ASCredentialSharingGroupsNotificationManager *)self _notificationBodyStringForSharedRecentlyDeletedSavedAccountsFromMultipleGroups:accountsCopy];
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

- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccount:(id)account
{
  accountCopy = account;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  lastModifiedDate = [accountCopy lastModifiedDate];
  v6 = [currentCalendar dateByAddingUnit:16 value:30 toDate:lastModifiedDate options:0];

  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [v7 safari_numberOfDaysUntilDate:v6] + 1;

  mEMORY[0x1E69C88E8] = [MEMORY[0x1E69C88E8] sharedProvider];
  sharedGroupID = [accountCopy sharedGroupID];
  v11 = [mEMORY[0x1E69C88E8] cachedGroupWithID:sharedGroupID];

  if (!v11)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ASCredentialSharingGroupsNotificationManager *)v12 _notificationBodyStringForSharedRecentlyDeletedSavedAccount:accountCopy];
    }
  }

  credentialTypes = [accountCopy credentialTypes];
  v14 = MEMORY[0x1E696AEC0];
  if (credentialTypes == 3)
  {
    if (v11)
    {
      goto LABEL_11;
    }
  }

  else if (credentialTypes == 2)
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
    highLevelDomain = [accountCopy highLevelDomain];
    displayName = [v11 displayName];
    v18 = [v14 localizedStringWithFormat:v15, highLevelDomain, displayName, v8];

    goto LABEL_13;
  }

  v15 = _WBSLocalizedString();
  highLevelDomain = [accountCopy highLevelDomain];
  v18 = [v14 localizedStringWithFormat:v15, highLevelDomain, v8];
LABEL_13:

  return v18;
}

- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccountsFromSingleGroup:(id)group
{
  groupCopy = group;
  v21 = 0;
  v22 = 0;
  firstObject = [groupCopy firstObject];
  sharedGroupID = [firstObject sharedGroupID];

  mEMORY[0x1E69C88E8] = [MEMORY[0x1E69C88E8] sharedProvider];
  v8 = [mEMORY[0x1E69C88E8] cachedGroupWithID:sharedGroupID];

  if (!v8)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ASCredentialSharingGroupsNotificationManager _notificationBodyStringForSharedRecentlyDeletedSavedAccountsFromSingleGroup:];
    }
  }

  [(ASCredentialSharingGroupsNotificationManager *)self _getNumberOfPasswords:&v22 numberOfPasskeys:&v21 inSavedAccounts:groupCopy];
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
        displayName = [v8 displayName];
        [v10 localizedStringWithFormat:v11, v15, displayName, v20];
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
    displayName = [v8 displayName];
    [v10 localizedStringWithFormat:v11, v12, v13, displayName];
    v16 = LABEL_14:;

    goto LABEL_20;
  }

  v11 = _WBSLocalizedString();
  [v10 localizedStringWithFormat:v11, v22, v21];
  v16 = LABEL_19:;
LABEL_20:

  return v16;
}

- (void)_getNumberOfPasswords:(unint64_t *)passwords numberOfPasskeys:(unint64_t *)passkeys inSavedAccounts:(id)accounts
{
  v21 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [accountsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(accountsCopy);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        v11 += [v14 credentialTypes] & 1;
        v10 += ([v14 credentialTypes] >> 1) & 1;
      }

      v9 = [accountsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  *passwords = v11;
  *passkeys = v10;

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_notificationBodyStringForSharedRecentlyDeletedSavedAccountsFromMultipleGroups:(id)groups
{
  v10 = 0;
  v11 = 0;
  [(ASCredentialSharingGroupsNotificationManager *)self _getNumberOfPasswords:&v11 numberOfPasskeys:&v10 inSavedAccounts:groups];
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

- (void)_notifyUserAboutGroupMembers:(id)members addedToGroup:(id)group
{
  v6 = MEMORY[0x1E6983220];
  groupCopy = group;
  membersCopy = members;
  v17 = objc_alloc_init(v6);
  v9 = _WBSLocalizedString();
  [v17 setTitle:v9];

  v10 = [(ASCredentialSharingGroupsNotificationManager *)self _notificationBodyStringForGroupMembers:membersCopy addedToGroup:groupCopy];

  [v17 setBody:v10];
  groupID = [groupCopy groupID];

  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    v12 = [MEMORY[0x1E69C8978] passwordManagerURLForGroupWithID:groupID];
  }

  else
  {
    v13 = MEMORY[0x1E695DFF8];
    v14 = [MEMORY[0x1E69C8978] resourceSpecifierEncodedKey:*MEMORY[0x1E69C8CA8] value:groupID];
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

- (id)_notificationBodyStringForGroupMembers:(id)members addedToGroup:(id)group
{
  groupCopy = group;
  membersCopy = members;
  v7 = +[_ASAccountSharingGroupMemberDataManager sharedManager];
  v8 = [v7 groupMemberDataForGroupParticipants:membersCopy];

  v9 = [v8 count];
  v10 = MEMORY[0x1E696AEC0];
  switch(v9)
  {
    case 3:
      v11 = _WBSLocalizedString();
      firstObject = [v8 firstObject];
      displayName = [firstObject displayName];
      lastObject = [v8 objectAtIndexedSubscript:1];
      displayName2 = [lastObject displayName];
      v18 = [v8 objectAtIndexedSubscript:2];
      [v18 displayName];
      v20 = v19 = groupCopy;
      displayName3 = [v19 displayName];
      v15 = [v10 localizedStringWithFormat:v11, displayName, displayName2, v20, displayName3];

      groupCopy = v19;
      break;
    case 2:
      v11 = _WBSLocalizedString();
      firstObject = [v8 firstObject];
      displayName = [firstObject displayName];
      lastObject = [v8 lastObject];
      displayName4 = [lastObject displayName];
      displayName5 = [groupCopy displayName];
      v15 = [v10 localizedStringWithFormat:v11, displayName, displayName4, displayName5];

      break;
    case 1:
      v11 = _WBSLocalizedString();
      firstObject = [v8 firstObject];
      displayName = [firstObject displayName];
      lastObject = [groupCopy displayName];
      v15 = [v10 localizedStringWithFormat:v11, displayName, lastObject];
      break;
    default:
      v11 = _WBSLocalizedString();
      firstObject = [v8 firstObject];
      displayName = [firstObject displayName];
      lastObject = [v8 objectAtIndexedSubscript:1];
      displayName6 = [lastObject displayName];
      v23 = [v8 count] - 2;
      displayName7 = [groupCopy displayName];
      v15 = [v10 localizedStringWithFormat:v11, displayName, displayName6, v23, displayName7];

      break;
  }

  return v15;
}

- (void)_moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:(id)d
{
  dCopy = d;
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  v5 = [mEMORY[0x1E69C8A38] _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:dCopy isForAlreadyExitedGroup:1];

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