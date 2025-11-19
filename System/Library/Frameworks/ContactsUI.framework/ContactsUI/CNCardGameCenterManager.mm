@interface CNCardGameCenterManager
- (BOOL)shouldActionDisplayDropdownMenu;
- (CNCardGameCenterManager)init;
- (GKServiceProxy)gameCenterProxy;
- (id)defaultFriendResultFromFriendResults:(id)a3 forContact:(id)a4;
- (id)handles;
- (id)handlesForContact:(id)a3;
- (void)getGameCenterRelationshipsForContact:(id)a3 completionHandler:(id)a4;
- (void)handleResults:(id)a3 forContact:(id)a4 error:(id)a5 completionHandler:(id)a6;
- (void)refreshGameCenterRelationshipsForContact:(id)a3 completionHandler:(id)a4;
@end

@implementation CNCardGameCenterManager

- (id)handlesForContact:(id)a3
{
  v3 = a3;
  v4 = [v3 phoneNumbers];
  v5 = [v4 _cn_map:&__block_literal_global_17];

  v6 = [v3 emailAddresses];

  v7 = [v6 _cn_map:&__block_literal_global_19_42241];

  v8 = [v5 arrayByAddingObjectsFromArray:v7];

  return v8;
}

id __45__CNCardGameCenterManager_handlesForContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 stringValue];

  return v3;
}

- (id)defaultFriendResultFromFriendResults:(id)a3 forContact:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(CNCardGameCenterManager *)self handlesForContact:a4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __75__CNCardGameCenterManager_defaultFriendResultFromFriendResults_forContact___block_invoke;
        v16[3] = &unk_1E74E4C80;
        v16[4] = v12;
        v13 = [v6 _cn_firstObjectPassingTest:v16];
        if (v13)
        {
          v14 = v13;

          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = [v6 firstObject];
LABEL_11:

  return v14;
}

uint64_t __75__CNCardGameCenterManager_defaultFriendResultFromFriendResults_forContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 handle];
  [v4 _cn_rangeOfCommonPrefixWithString:@"tel:"];
  v6 = v5;

  if (!v6)
  {
    v7 = [v3 handle];
    [v7 _cn_rangeOfCommonPrefixWithString:@"mailto:"];
    v6 = v8;
  }

  v9 = [v3 handle];
  v10 = [v9 _cn_skip:v6];
  v11 = [v10 isEqualToString:*(a1 + 32)];

  return v11;
}

- (void)handleResults:(id)a3 forContact:(id)a4 error:(id)a5 completionHandler:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = (*(*MEMORY[0x1E6996530] + 16))();
  if (v12 || v14)
  {
    v23 = CNUILogContactCard();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v12;
      _os_log_error_impl(&dword_199A75000, v23, OS_LOG_TYPE_ERROR, "Failed to get Game Center relationships: %@", buf, 0xCu);
    }

    v13[2](v13, MEMORY[0x1E695E0F0], v12);
  }

  else
  {
    v15 = [v10 _cn_filter:&__block_literal_global_42251];
    if ([v15 count] < 2)
    {
      if (v11)
      {
        v24 = [v11 identifier];
        v40 = v24;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      }

      else
      {
        v18 = MEMORY[0x1E695E0F0];
      }

      v25 = [(CNCardGameCenterManager *)self gameCenterProxy];
      v26 = [v25 profileServicePrivate];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __76__CNCardGameCenterManager_handleResults_forContact_error_completionHandler___block_invoke_7;
      v27[3] = &unk_1E74E4CF8;
      v27[4] = self;
      v30 = v13;
      v28 = v10;
      v29 = v11;
      [v26 filterForContactIDsSupportingFriendingViaPushFromContactIDs:v18 withCompletion:v27];

      v22 = v30;
    }

    else
    {
      v16 = [(CNCardGameCenterManager *)self recentsManager];
      v17 = [v11 mutableCopy];
      v18 = [v16 sortedRecentHandlesMatchingAllPropertiesOfContact:v17];

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __76__CNCardGameCenterManager_handleResults_forContact_error_completionHandler___block_invoke_2;
      v35[3] = &unk_1E74E4CA8;
      v19 = v15;
      v36 = v19;
      v20 = v13;
      v39 = v20;
      v21 = v11;
      v37 = v21;
      v38 = self;
      [v18 addSuccessBlock:v35];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __76__CNCardGameCenterManager_handleResults_forContact_error_completionHandler___block_invoke_4;
      v31[3] = &unk_1E74E4CD0;
      v34 = v20;
      v31[4] = self;
      v32 = v19;
      v33 = v21;
      [v18 addFailureBlock:v31];

      v22 = v36;
    }
  }
}

void __76__CNCardGameCenterManager_handleResults_forContact_error_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 firstObject];
  v4 = *(a1 + 32);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __76__CNCardGameCenterManager_handleResults_forContact_error_completionHandler___block_invoke_3;
  v14 = &unk_1E74E4C80;
  v5 = v3;
  v15 = v5;
  v6 = [v4 _cn_firstObjectPassingTest:&v11];
  v7 = v6;
  v8 = *(a1 + 56);
  if (v6)
  {
    v17[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:{1, v11, v12, v13, v14}];
    (*(v8 + 16))(v8, v9, *(a1 + 40));
  }

  else
  {
    v9 = [*(a1 + 48) defaultFriendResultFromFriendResults:*(a1 + 32) forContact:{*(a1 + 40), v11, v12, v13, v14}];
    v16 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    (*(v8 + 16))(v8, v10, *(a1 + 40));
  }
}

void __76__CNCardGameCenterManager_handleResults_forContact_error_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CNUILogContactCard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_199A75000, v4, OS_LOG_TYPE_ERROR, "Failed to query recents: %@", buf, 0xCu);
  }

  v5 = *(a1 + 56);
  v6 = [*(a1 + 32) defaultFriendResultFromFriendResults:*(a1 + 40) forContact:*(a1 + 48)];
  v8 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  (*(v5 + 16))(v5, v7, *(a1 + 48));
}

void __76__CNCardGameCenterManager_handleResults_forContact_error_completionHandler___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CNUILogContactCard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_error_impl(&dword_199A75000, v7, OS_LOG_TYPE_ERROR, "Failed to query eligibility for push-based friending: %@", &v9, 0xCu);
    }
  }

  if (v5)
  {
    v8 = [v5 count] != 0;
  }

  else
  {
    v8 = 0;
  }

  [*(a1 + 32) setIsEligibleForFriendingViaPush:v8];
  (*(*(a1 + 56) + 16))();
}

uint64_t __76__CNCardGameCenterManager_handleResults_forContact_error_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 handle];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)refreshGameCenterRelationshipsForContact:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNCardGameCenterManager *)self relationshipResultsCancelable];
  [v8 cancel];

  v9 = [(CNCardGameCenterManager *)self schedulerProvider];
  v10 = [v9 backgroundScheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__CNCardGameCenterManager_refreshGameCenterRelationshipsForContact_completionHandler___block_invoke;
  v14[3] = &unk_1E74E4C38;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  v13 = [v10 performCancelableBlock:v14];
  [(CNCardGameCenterManager *)self setRelationshipResultsCancelable:v13];
}

void __86__CNCardGameCenterManager_refreshGameCenterRelationshipsForContact_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) gameCenterProxy];
  v3 = [v2 profileServicePrivate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__CNCardGameCenterManager_refreshGameCenterRelationshipsForContact_completionHandler___block_invoke_2;
  v5[3] = &unk_1E74E4C10;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 getGameCenterRelationshipsForContact:v6 shouldRefresh:1 completionHandler:v5];
}

- (void)getGameCenterRelationshipsForContact:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNCardGameCenterManager *)self relationshipResultsCancelable];
  [v8 cancel];

  v9 = [(CNCardGameCenterManager *)self schedulerProvider];
  v10 = [v9 backgroundScheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__CNCardGameCenterManager_getGameCenterRelationshipsForContact_completionHandler___block_invoke;
  v14[3] = &unk_1E74E4C38;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  v13 = [v10 performCancelableBlock:v14];
  [(CNCardGameCenterManager *)self setRelationshipResultsCancelable:v13];
}

void __82__CNCardGameCenterManager_getGameCenterRelationshipsForContact_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) gameCenterProxy];
  v3 = [v2 profileServicePrivate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__CNCardGameCenterManager_getGameCenterRelationshipsForContact_completionHandler___block_invoke_2;
  v5[3] = &unk_1E74E4C10;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 getGameCenterRelationshipsForContact:v6 shouldRefresh:0 completionHandler:v5];
}

- (GKServiceProxy)gameCenterProxy
{
  gameCenterProxy = self->_gameCenterProxy;
  if (!gameCenterProxy)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v4 = getGKDaemonProxyClass_softClass_42261;
    v21 = getGKDaemonProxyClass_softClass_42261;
    if (!getGKDaemonProxyClass_softClass_42261)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __getGKDaemonProxyClass_block_invoke_42262;
      v16 = &unk_1E74E7518;
      v17 = &v18;
      __getGKDaemonProxyClass_block_invoke_42262(&v13);
      v4 = v19[3];
    }

    v5 = v4;
    _Block_object_dispose(&v18, 8);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v6 = getGKLocalPlayerClass_softClass_42263;
    v21 = getGKLocalPlayerClass_softClass_42263;
    if (!getGKLocalPlayerClass_softClass_42263)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __getGKLocalPlayerClass_block_invoke_42264;
      v16 = &unk_1E74E7518;
      v17 = &v18;
      __getGKLocalPlayerClass_block_invoke_42264(&v13);
      v6 = v19[3];
    }

    v7 = v6;
    _Block_object_dispose(&v18, 8);
    v8 = [v6 currentLocalPlayer];
    v9 = [v4 proxyForPlayer:v8];
    v10 = self->_gameCenterProxy;
    self->_gameCenterProxy = v9;

    gameCenterProxy = self->_gameCenterProxy;
  }

  v11 = gameCenterProxy;

  return v11;
}

- (BOOL)shouldActionDisplayDropdownMenu
{
  if ([(CNCardGameCenterManager *)self hasSentInvite]|| [(CNCardGameCenterManager *)self isEligibleForFriendingViaPush])
  {
    return 0;
  }

  v4 = [(CNCardGameCenterManager *)self handles];
  v3 = [v4 count] > 1;

  return v3;
}

- (id)handles
{
  v3 = [(CNCardGameCenterManager *)self contact];
  v4 = [(CNCardGameCenterManager *)self handlesForContact:v3];

  return v4;
}

- (CNCardGameCenterManager)init
{
  v12.receiver = self;
  v12.super_class = CNCardGameCenterManager;
  v2 = [(CNCardGameCenterManager *)&v12 init];
  if (v2)
  {
    v3 = +[CNUIContactsEnvironment currentEnvironment];
    v4 = [v3 defaultSchedulerProvider];
    schedulerProvider = v2->_schedulerProvider;
    v2->_schedulerProvider = v4;

    v6 = +[CNUIContactsEnvironment currentEnvironment];
    v7 = [v6 defaultSchedulerProvider];
    v8 = [v7 newSerialSchedulerWithName:@"com.apple.Contacts.CNCardGameCenterManager.workQueue"];
    workQueue = v2->_workQueue;
    v2->_workQueue = v8;

    v2->_isEligibleForFriendingViaPush = 0;
    v10 = v2;
  }

  return v2;
}

@end