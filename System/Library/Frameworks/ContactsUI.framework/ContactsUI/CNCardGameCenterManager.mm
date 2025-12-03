@interface CNCardGameCenterManager
- (BOOL)shouldActionDisplayDropdownMenu;
- (CNCardGameCenterManager)init;
- (GKServiceProxy)gameCenterProxy;
- (id)defaultFriendResultFromFriendResults:(id)results forContact:(id)contact;
- (id)handles;
- (id)handlesForContact:(id)contact;
- (void)getGameCenterRelationshipsForContact:(id)contact completionHandler:(id)handler;
- (void)handleResults:(id)results forContact:(id)contact error:(id)error completionHandler:(id)handler;
- (void)refreshGameCenterRelationshipsForContact:(id)contact completionHandler:(id)handler;
@end

@implementation CNCardGameCenterManager

- (id)handlesForContact:(id)contact
{
  contactCopy = contact;
  phoneNumbers = [contactCopy phoneNumbers];
  v5 = [phoneNumbers _cn_map:&__block_literal_global_17];

  emailAddresses = [contactCopy emailAddresses];

  v7 = [emailAddresses _cn_map:&__block_literal_global_19_42241];

  v8 = [v5 arrayByAddingObjectsFromArray:v7];

  return v8;
}

id __45__CNCardGameCenterManager_handlesForContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 stringValue];

  return v3;
}

- (id)defaultFriendResultFromFriendResults:(id)results forContact:(id)contact
{
  v22 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  [(CNCardGameCenterManager *)self handlesForContact:contact];
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
        v13 = [resultsCopy _cn_firstObjectPassingTest:v16];
        if (v13)
        {
          firstObject = v13;

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

  firstObject = [resultsCopy firstObject];
LABEL_11:

  return firstObject;
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

- (void)handleResults:(id)results forContact:(id)contact error:(id)error completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  contactCopy = contact;
  errorCopy = error;
  handlerCopy = handler;
  v14 = (*(*MEMORY[0x1E6996530] + 16))();
  if (errorCopy || v14)
  {
    v23 = CNUILogContactCard();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = errorCopy;
      _os_log_error_impl(&dword_199A75000, v23, OS_LOG_TYPE_ERROR, "Failed to get Game Center relationships: %@", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0], errorCopy);
  }

  else
  {
    v15 = [resultsCopy _cn_filter:&__block_literal_global_42251];
    if ([v15 count] < 2)
    {
      if (contactCopy)
      {
        identifier = [contactCopy identifier];
        v40 = identifier;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      }

      else
      {
        v18 = MEMORY[0x1E695E0F0];
      }

      gameCenterProxy = [(CNCardGameCenterManager *)self gameCenterProxy];
      profileServicePrivate = [gameCenterProxy profileServicePrivate];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __76__CNCardGameCenterManager_handleResults_forContact_error_completionHandler___block_invoke_7;
      v27[3] = &unk_1E74E4CF8;
      v27[4] = self;
      v30 = handlerCopy;
      v28 = resultsCopy;
      v29 = contactCopy;
      [profileServicePrivate filterForContactIDsSupportingFriendingViaPushFromContactIDs:v18 withCompletion:v27];

      v22 = v30;
    }

    else
    {
      recentsManager = [(CNCardGameCenterManager *)self recentsManager];
      v17 = [contactCopy mutableCopy];
      v18 = [recentsManager sortedRecentHandlesMatchingAllPropertiesOfContact:v17];

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __76__CNCardGameCenterManager_handleResults_forContact_error_completionHandler___block_invoke_2;
      v35[3] = &unk_1E74E4CA8;
      v19 = v15;
      v36 = v19;
      v20 = handlerCopy;
      v39 = v20;
      v21 = contactCopy;
      v37 = v21;
      selfCopy = self;
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

- (void)refreshGameCenterRelationshipsForContact:(id)contact completionHandler:(id)handler
{
  contactCopy = contact;
  handlerCopy = handler;
  relationshipResultsCancelable = [(CNCardGameCenterManager *)self relationshipResultsCancelable];
  [relationshipResultsCancelable cancel];

  schedulerProvider = [(CNCardGameCenterManager *)self schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__CNCardGameCenterManager_refreshGameCenterRelationshipsForContact_completionHandler___block_invoke;
  v14[3] = &unk_1E74E4C38;
  v14[4] = self;
  v15 = contactCopy;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = contactCopy;
  v13 = [backgroundScheduler performCancelableBlock:v14];
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

- (void)getGameCenterRelationshipsForContact:(id)contact completionHandler:(id)handler
{
  contactCopy = contact;
  handlerCopy = handler;
  relationshipResultsCancelable = [(CNCardGameCenterManager *)self relationshipResultsCancelable];
  [relationshipResultsCancelable cancel];

  schedulerProvider = [(CNCardGameCenterManager *)self schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__CNCardGameCenterManager_getGameCenterRelationshipsForContact_completionHandler___block_invoke;
  v14[3] = &unk_1E74E4C38;
  v14[4] = self;
  v15 = contactCopy;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = contactCopy;
  v13 = [backgroundScheduler performCancelableBlock:v14];
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
    currentLocalPlayer = [v6 currentLocalPlayer];
    v9 = [v4 proxyForPlayer:currentLocalPlayer];
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

  handles = [(CNCardGameCenterManager *)self handles];
  v3 = [handles count] > 1;

  return v3;
}

- (id)handles
{
  contact = [(CNCardGameCenterManager *)self contact];
  v4 = [(CNCardGameCenterManager *)self handlesForContact:contact];

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
    defaultSchedulerProvider = [v3 defaultSchedulerProvider];
    schedulerProvider = v2->_schedulerProvider;
    v2->_schedulerProvider = defaultSchedulerProvider;

    v6 = +[CNUIContactsEnvironment currentEnvironment];
    defaultSchedulerProvider2 = [v6 defaultSchedulerProvider];
    v8 = [defaultSchedulerProvider2 newSerialSchedulerWithName:@"com.apple.Contacts.CNCardGameCenterManager.workQueue"];
    workQueue = v2->_workQueue;
    v2->_workQueue = v8;

    v2->_isEligibleForFriendingViaPush = 0;
    v10 = v2;
  }

  return v2;
}

@end