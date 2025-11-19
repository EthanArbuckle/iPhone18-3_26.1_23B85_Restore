@interface CNGameCenterAddFriendAction
+ (id)os_log;
- (CNGameCenterAddFriendAction)initWithContact:(id)a3;
- (NSArray)contactCardActionMenuItems;
- (id)actionTitleForContact:(id)a3;
- (id)addFriendsMenuProvider;
- (id)contactPerHandleForContact:(id)a3;
- (id)title;
- (void)addContactAsFriend:(id)a3;
- (void)addContactToFriendSuggestionsDenylistWithProxy:(id)a3 completion:(id)a4;
- (void)createInviteFriendViewControllerForContact:(id)a3 completionHandler:(id)a4;
- (void)fetchContactAssociationIDWithProxy:(id)a3 completion:(id)a4;
- (void)inviteViaMessages:(id)a3;
- (void)performActionWithSender:(id)a3;
- (void)sendInvitationViaPushToContactAssociationID:(id)a3 withProxy:(id)a4 completion:(id)a5;
- (void)supportsFriendingViaPushWithProxy:(id)a3 completion:(id)a4;
@end

@implementation CNGameCenterAddFriendAction

- (NSArray)contactCardActionMenuItems
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(CNContactAction *)self contact];
  v4 = [(CNGameCenterAddFriendAction *)self contactPerHandleForContact:v3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CNGameCenterAddFriendAction_contactCardActionMenuItems__block_invoke;
  v7[3] = &unk_1E74E1910;
  v7[4] = self;
  v7[5] = &v8;
  [v4 _cn_each:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __57__CNGameCenterAddFriendAction_contactCardActionMenuItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = MEMORY[0x1E6996AC8];
  v5 = a2;
  v6 = [v4 alloc];
  v9 = [*(a1 + 32) actionTitleForContact:v5];
  v7 = [MEMORY[0x1E6996BE0] itemWithContact:v5];

  v8 = [v6 initWithTitle:v9 subtitle:0 imageName:@"message" shouldDisplayInline:0 actionItem:v7];
  [v3 addObject:v8];
}

- (id)addFriendsMenuProvider
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__CNGameCenterAddFriendAction_addFriendsMenuProvider__block_invoke;
  v4[3] = &unk_1E74E4F00;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

id __53__CNGameCenterAddFriendAction_addFriendsMenuProvider__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = MEMORY[0x1E695E0F0];
  v8 = [WeakRetained contact];
  v9 = [WeakRetained contactPerHandleForContact:v8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__CNGameCenterAddFriendAction_addFriendsMenuProvider__block_invoke_30;
  v12[3] = &unk_1E74E1910;
  v12[4] = WeakRetained;
  v12[5] = &v13;
  [v9 _cn_each:v12];

  v10 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 children:v14[5]];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __53__CNGameCenterAddFriendAction_addFriendsMenuProvider__block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actionTitleForContact:v3];
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v6 = MEMORY[0x1E69DC628];
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"message"];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __53__CNGameCenterAddFriendAction_addFriendsMenuProvider__block_invoke_2;
    v15 = &unk_1E74E7808;
    v16 = *(a1 + 32);
    v17 = v3;
    v8 = [v6 actionWithTitle:v4 image:v7 identifier:0 handler:&v12];
    v9 = [v5 arrayByAddingObject:{v8, v12, v13, v14, v15, v16}];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (id)actionTitleForContact:(id)a3
{
  v3 = a3;
  v4 = [v3 phoneNumbers];
  v5 = [v4 firstObject];
  v6 = [v5 value];
  v7 = [v6 stringValue];

  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v8 = [v3 emailAddresses];
    v9 = [v8 firstObject];
    v10 = [v9 value];
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (id)contactPerHandleForContact:(id)a3
{
  v3 = a3;
  v4 = [v3 phoneNumbers];
  v5 = [v4 _cn_map:&__block_literal_global_26];

  v6 = [v3 emailAddresses];

  v7 = [v6 _cn_map:&__block_literal_global_29];

  v8 = [v5 arrayByAddingObjectsFromArray:v7];

  return v8;
}

id __58__CNGameCenterAddFriendAction_contactPerHandleForContact___block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CF18];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  [v4 setEmailAddresses:v5];

  return v4;
}

id __58__CNGameCenterAddFriendAction_contactPerHandleForContact___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CF18];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  [v4 setPhoneNumbers:v5];

  return v4;
}

- (void)createInviteFriendViewControllerForContact:(id)a3 completionHandler:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v7 = getGKFriendRequestFacilitatorClass_softClass;
  v17 = getGKFriendRequestFacilitatorClass_softClass;
  if (!getGKFriendRequestFacilitatorClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getGKFriendRequestFacilitatorClass_block_invoke;
    v13[3] = &unk_1E74E7518;
    v13[4] = &v14;
    __getGKFriendRequestFacilitatorClass_block_invoke(v13);
    v7 = v15[3];
  }

  v8 = v7;
  _Block_object_dispose(&v14, 8);
  v18[0] = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__CNGameCenterAddFriendAction_createInviteFriendViewControllerForContact_completionHandler___block_invoke;
  v11[3] = &unk_1E74E18E8;
  v12 = v6;
  v10 = v6;
  [v7 makeViewControllerForInviteWithRecipients:v9 chatGUID:0 resultHandler:v11];
}

- (void)addContactToFriendSuggestionsDenylistWithProxy:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 utilityServicePrivate];
  v8 = [(CNContactAction *)self contact];
  v9 = [v8 identifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__CNGameCenterAddFriendAction_addContactToFriendSuggestionsDenylistWithProxy_completion___block_invoke;
  v11[3] = &unk_1E74E65F0;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v7 denyContact:v9 handler:v11];
}

void __89__CNGameCenterAddFriendAction_addContactToFriendSuggestionsDenylistWithProxy_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) schedulerProvider];
  v5 = [v4 mainThreadScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__CNGameCenterAddFriendAction_addContactToFriendSuggestionsDenylistWithProxy_completion___block_invoke_2;
  v8[3] = &unk_1E74E6DD0;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 performBlock:v8];
}

- (void)sendInvitationViaPushToContactAssociationID:(id)a3 withProxy:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 friendServicePrivate];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__CNGameCenterAddFriendAction_sendInvitationViaPushToContactAssociationID_withProxy_completion___block_invoke;
  v12[3] = &unk_1E74E65F0;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 sendFriendInvitationWithPlayerID:0 contactAssociationID:v9 completion:v12];
}

void __96__CNGameCenterAddFriendAction_sendInvitationViaPushToContactAssociationID_withProxy_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) schedulerProvider];
  v5 = [v4 mainThreadScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __96__CNGameCenterAddFriendAction_sendInvitationViaPushToContactAssociationID_withProxy_completion___block_invoke_2;
  v8[3] = &unk_1E74E6DD0;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 performBlock:v8];
}

- (void)fetchContactAssociationIDWithProxy:(id)a3 completion:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 profileServicePrivate];
  v8 = [(CNContactAction *)self contact];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__CNGameCenterAddFriendAction_fetchContactAssociationIDWithProxy_completion___block_invoke;
  v11[3] = &unk_1E74E18C0;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v7 getContactAssociationIDsForContacts:v9 shouldRefresh:1 completionHandler:v11];
}

void __77__CNGameCenterAddFriendAction_fetchContactAssociationIDWithProxy_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v7 = [v5 allValues];
    v8 = [v7 firstObject];
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(a1 + 32) schedulerProvider];
  v10 = [v9 mainThreadScheduler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__CNGameCenterAddFriendAction_fetchContactAssociationIDWithProxy_completion___block_invoke_2;
  v13[3] = &unk_1E74E6DD0;
  v11 = *(a1 + 40);
  v14 = v8;
  v15 = v11;
  v12 = v8;
  [v10 performBlock:v13];
}

- (void)supportsFriendingViaPushWithProxy:(id)a3 completion:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 profileServicePrivate];
  v8 = [(CNContactAction *)self contact];
  v9 = [v8 identifier];
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__CNGameCenterAddFriendAction_supportsFriendingViaPushWithProxy_completion___block_invoke;
  v12[3] = &unk_1E74E1898;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v7 filterForContactIDsSupportingFriendingViaPushFromContactIDs:v10 withCompletion:v12];
}

void __76__CNGameCenterAddFriendAction_supportsFriendingViaPushWithProxy_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 contact];
    v6 = [v5 identifier];
    v7 = [v4 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) schedulerProvider];
  v9 = [v8 mainThreadScheduler];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__CNGameCenterAddFriendAction_supportsFriendingViaPushWithProxy_completion___block_invoke_2;
  v10[3] = &unk_1E74E1870;
  v11 = *(a1 + 40);
  v12 = v7;
  [v9 performBlock:v10];
}

- (void)inviteViaMessages:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__CNGameCenterAddFriendAction_inviteViaMessages___block_invoke;
  v5[3] = &unk_1E74E1848;
  objc_copyWeak(&v6, &location);
  [(CNGameCenterAddFriendAction *)self createInviteFriendViewControllerForContact:v4 completionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __49__CNGameCenterAddFriendAction_inviteViaMessages___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained delegate];
    v5 = objc_opt_respondsToSelector();

    v6 = [WeakRetained delegate];
    v7 = v6;
    if (v5)
    {
      [v6 action:WeakRetained presentViewController:v8 modalPresentationStyle:objc_msgSend(v8 sender:{"modalPresentationStyle"), WeakRetained}];
    }

    else
    {
      [v6 action:WeakRetained presentViewController:v8 sender:WeakRetained];
    }
  }
}

- (void)addContactAsFriend:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v5 = getGKDaemonProxyClass_softClass;
    v25 = getGKDaemonProxyClass_softClass;
    if (!getGKDaemonProxyClass_softClass)
    {
      location = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __getGKDaemonProxyClass_block_invoke;
      v20 = &unk_1E74E7518;
      v21 = &v22;
      __getGKDaemonProxyClass_block_invoke(&location);
      v5 = v23[3];
    }

    v6 = v5;
    _Block_object_dispose(&v22, 8);
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v7 = getGKLocalPlayerClass_softClass;
    v25 = getGKLocalPlayerClass_softClass;
    if (!getGKLocalPlayerClass_softClass)
    {
      location = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __getGKLocalPlayerClass_block_invoke;
      v20 = &unk_1E74E7518;
      v21 = &v22;
      __getGKLocalPlayerClass_block_invoke(&location);
      v7 = v23[3];
    }

    v8 = v7;
    _Block_object_dispose(&v22, 8);
    v9 = [v7 currentLocalPlayer];
    v10 = [v5 proxyForPlayer:v9];

    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__CNGameCenterAddFriendAction_addContactAsFriend___block_invoke;
    v12[3] = &unk_1E74E1820;
    objc_copyWeak(&v16, &location);
    v13 = v4;
    v14 = self;
    v11 = v10;
    v15 = v11;
    [(CNGameCenterAddFriendAction *)self supportsFriendingViaPushWithProxy:v11 completion:v12];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(CNGameCenterAddFriendAction *)self inviteViaMessages:v4];
  }
}

void __50__CNGameCenterAddFriendAction_addContactAsFriend___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__CNGameCenterAddFriendAction_addContactAsFriend___block_invoke_2;
    v9[3] = &unk_1E74E17F8;
    objc_copyWeak(&v13, (a1 + 56));
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10 = v5;
    v11 = v6;
    v12 = v7;
    [v3 fetchContactAssociationIDWithProxy:v4 completion:v9];

    objc_destroyWeak(&v13);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained inviteViaMessages:*(a1 + 32)];
  }
}

void __50__CNGameCenterAddFriendAction_addContactAsFriend___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__CNGameCenterAddFriendAction_addContactAsFriend___block_invoke_13;
    v11[3] = &unk_1E74E17D0;
    objc_copyWeak(&v15, (a1 + 56));
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v12 = v6;
    v13 = v7;
    v14 = v8;
    [v4 sendInvitationViaPushToContactAssociationID:v3 withProxy:v5 completion:v11];

    objc_destroyWeak(&v15);
  }

  else
  {
    v9 = +[CNGameCenterAddFriendAction os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v9, OS_LOG_TYPE_ERROR, "CNGameCenterAddFriendAction: Unable to fetch CAID for contact. Attempting to send via Messages.", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained inviteViaMessages:*(a1 + 32)];
  }
}

void __50__CNGameCenterAddFriendAction_addContactAsFriend___block_invoke_13(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = +[CNGameCenterAddFriendAction os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 localizedDescription];
      *buf = 138412290;
      v12 = v8;
      _os_log_error_impl(&dword_199A75000, v4, OS_LOG_TYPE_ERROR, "CNGameCenterAddFriendAction: Unable to send friend invitation via push. Attempting to send via Messages. %@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained inviteViaMessages:*(a1 + 32)];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__CNGameCenterAddFriendAction_addContactAsFriend___block_invoke_14;
    v9[3] = &unk_1E74E17A8;
    objc_copyWeak(&v10, (a1 + 56));
    [v6 addContactToFriendSuggestionsDenylistWithProxy:v7 completion:v9];
    objc_destroyWeak(&v10);
  }
}

void __50__CNGameCenterAddFriendAction_addContactAsFriend___block_invoke_14(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [WeakRetained delegate];
    [v6 actionDidFinish:WeakRetained];

    v5 = +[CNGameCenterAddFriendAction os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_INFO, "CNGameCenterAddFriendAction: Sent via push.", &v7, 2u);
    }

    goto LABEL_6;
  }

  WeakRetained = +[CNGameCenterAddFriendAction os_log];
  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
  {
    v5 = [v3 localizedDescription];
    v7 = 138412290;
    v8 = v5;
    _os_log_error_impl(&dword_199A75000, WeakRetained, OS_LOG_TYPE_ERROR, "CNGameCenterAddFriendAction: Unable to add contact to friend suggestions denylist. %@", &v7, 0xCu);
LABEL_6:
  }
}

- (void)performActionWithSender:(id)a3
{
  v4 = [(CNContactAction *)self contact];
  [(CNGameCenterAddFriendAction *)self addContactAsFriend:v4];
}

- (id)title
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"GAME_CENTER_ACTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (CNGameCenterAddFriendAction)initWithContact:(id)a3
{
  v9.receiver = self;
  v9.super_class = CNGameCenterAddFriendAction;
  v3 = [(CNContactAction *)&v9 initWithContact:a3];
  if (v3)
  {
    v4 = +[CNUIContactsEnvironment currentEnvironment];
    v5 = [v4 defaultSchedulerProvider];
    schedulerProvider = v3->_schedulerProvider;
    v3->_schedulerProvider = v5;

    v7 = v3;
  }

  return v3;
}

+ (id)os_log
{
  if (os_log_cn_once_token_1 != -1)
  {
    dispatch_once(&os_log_cn_once_token_1, &__block_literal_global_683);
  }

  v3 = os_log_cn_once_object_1;

  return v3;
}

uint64_t __37__CNGameCenterAddFriendAction_os_log__block_invoke()
{
  os_log_cn_once_object_1 = os_log_create("com.apple.contactsui", "CNGameCenterAddFriendAction");

  return MEMORY[0x1EEE66BB8]();
}

@end