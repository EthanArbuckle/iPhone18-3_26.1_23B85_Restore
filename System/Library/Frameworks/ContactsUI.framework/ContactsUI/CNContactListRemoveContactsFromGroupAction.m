@interface CNContactListRemoveContactsFromGroupAction
+ (id)actionForContact:(id)a3 configuration:(id)a4;
+ (id)descriptorForRequiredKeys;
+ (id)log;
- (BOOL)editRequiresAuthorization;
- (BOOL)editRequiresAuthorizationCheckForActions:(id)a3;
- (CNContactListRemoveContactsFromGroupAction)initWithContacts:(id)a3 configuration:(id)a4 withConfirmation:(BOOL)a5;
- (id)groupToRemoveFrom;
- (void)performAction;
- (void)performAuthorizedRemoveFromGroup:(id)a3;
- (void)performUndoAction;
- (void)showRemoveFromGroupFailureAlert;
@end

@implementation CNContactListRemoveContactsFromGroupAction

- (id)groupToRemoveFrom
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactListAction *)self configuration];
  v4 = [v3 contactStoreFilter];
  v5 = [v4 groupIdentifiers];
  v6 = [v5 allObjects];
  v7 = [v6 firstObject];

  v8 = [(CNContactListRemoveContactsFromGroupAction *)self contactStore];
  v9 = MEMORY[0x1E695CEC0];
  v23[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v11 = [v9 predicateForGroupsWithIdentifiers:v10];
  v20 = 0;
  v12 = [v8 groupsMatchingPredicate:v11 error:&v20];
  v13 = v20;

  if (!v12)
  {
    v15 = [objc_opt_class() log];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v22 = v13;
    v16 = "Failed to remove contact from group: %@";
    v17 = v15;
    v18 = 12;
LABEL_12:
    _os_log_error_impl(&dword_199A75000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    goto LABEL_7;
  }

  if ([v12 count] == 1)
  {
    v14 = [v12 firstObject];
    goto LABEL_8;
  }

  v15 = [objc_opt_class() log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v16 = "Failed to remove contact from group, multiple matching groups found";
    v17 = v15;
    v18 = 2;
    goto LABEL_12;
  }

LABEL_7:

  v14 = 0;
LABEL_8:

  return v14;
}

- (void)performUndoAction
{
  v3 = [(CNContactListRemoveContactsFromGroupAction *)self actions];
  [v3 _cn_each:&__block_literal_global_78];

  v4 = [(CNContactListAction *)self delegate];
  [v4 actionDidFinish:self];
}

- (BOOL)editRequiresAuthorizationCheckForActions:(id)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __87__CNContactListRemoveContactsFromGroupAction_editRequiresAuthorizationCheckForActions___block_invoke;
  v4[3] = &unk_1E74E2958;
  v4[4] = self;
  return [a3 _cn_any:v4];
}

uint64_t __87__CNContactListRemoveContactsFromGroupAction_editRequiresAuthorizationCheckForActions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 contact];
  v5 = [v3 containerIdentifier];

  v6 = [v2 editRequiresAuthorizationCheckForContact:v4 containerIdentifier:v5];
  return v6;
}

- (BOOL)editRequiresAuthorization
{
  v2 = self;
  v3 = [(CNContactListRemoveContactsFromGroupAction *)self actions];
  LOBYTE(v2) = [(CNContactListRemoveContactsFromGroupAction *)v2 editRequiresAuthorizationCheckForActions:v3];

  return v2;
}

- (void)showRemoveFromGroupFailureAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"LIST_ACTION_REMOVE_FROM_GROUP_FAILURE_ALERT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"DELETE_CARD_SHEET_FAILURE_ALERT_EXPLANATION" value:&stru_1F0CE7398 table:@"Localized"];
  v13 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v8 = [(CNContactListRemoveContactsFromGroupAction *)self componentsFactory];
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
  v11 = [v8 alertActionWithTitle:v10 style:0 handler:0];
  [v13 addAction:v11];

  v12 = [(CNContactListAction *)self delegate];
  [v12 action:self presentViewController:v13];
}

- (void)performAuthorizedRemoveFromGroup:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13606;
  v20 = __Block_byref_object_dispose__13607;
  v21 = MEMORY[0x1E695E0F0];
  v5 = [(CNContactListRemoveContactsFromGroupAction *)self actions];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __79__CNContactListRemoveContactsFromGroupAction_performAuthorizedRemoveFromGroup___block_invoke;
  v13 = &unk_1E74E2930;
  v6 = v4;
  v14 = v6;
  v15 = &v16;
  [v5 _cn_each:&v10];

  if (((*(*MEMORY[0x1E6996530] + 16))(*MEMORY[0x1E6996530], v17[5], v7, v8) & 1) == 0)
  {
    [(CNContactListRemoveContactsFromGroupAction *)self showRemoveFromGroupFailureAlert:v10];
  }

  v9 = [(CNContactListAction *)self delegate:v10];
  [v9 actionDidFinish:self];

  _Block_object_dispose(&v16, 8);
}

void __79__CNContactListRemoveContactsFromGroupAction_performAuthorizedRemoveFromGroup___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 setGroup:*(a1 + 32)];
  if (([v6 executeAction] & 1) == 0)
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) arrayByAddingObject:v6];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (void)performAction
{
  v3 = [(CNContactListRemoveContactsFromGroupAction *)self groupToRemoveFrom];
  if ([(CNContactListRemoveContactsFromGroupAction *)self confirmAction])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = CNContactsUIBundle();
    v6 = [v5 localizedStringForKey:@"LIST_ACTION_REMOVE_CONTACT_FROM_LIST" value:&stru_1F0CE7398 table:@"Localized"];
    v7 = [(CNContactListRemoveContactsFromGroupAction *)self originalContactCount];
    v8 = [v3 name];
    v9 = [v4 localizedStringWithFormat:v6, v7, v8];

    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:0 preferredStyle:1];
    v11 = [(CNContactListRemoveContactsFromGroupAction *)self componentsFactory];
    v12 = CNContactsUIBundle();
    v13 = [v12 localizedStringForKey:@"LIST_ACTION_ALERT_ACTION_REMOVE_FROM_GROUP" value:&stru_1F0CE7398 table:@"Localized"];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__CNContactListRemoveContactsFromGroupAction_performAction__block_invoke;
    v20[3] = &unk_1E74E7308;
    v20[4] = self;
    v21 = v3;
    v14 = [v11 alertActionWithTitle:v13 style:2 handler:v20];
    [v10 addAction:v14];

    v15 = [(CNContactListRemoveContactsFromGroupAction *)self componentsFactory];
    v16 = CNContactsUIBundle();
    v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
    v18 = [v15 alertActionWithTitle:v17 style:1 handler:&__block_literal_global_65];
    [v10 addAction:v18];

    v19 = [(CNContactListAction *)self delegate];
    [v19 action:self presentViewController:v10];
  }

  else
  {
    [(CNContactListRemoveContactsFromGroupAction *)self performAuthorizedRemoveFromGroup:v3];
  }
}

- (CNContactListRemoveContactsFromGroupAction)initWithContacts:(id)a3 configuration:(id)a4 withConfirmation:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v26.receiver = self;
  v26.super_class = CNContactListRemoveContactsFromGroupAction;
  v10 = [(CNContactListRemoveContactsFromGroupAction *)&v26 init];
  v11 = v10;
  if (v10)
  {
    [(CNContactListAction *)v10 setConfiguration:v9];
    v12 = [v9 environment];
    v13 = [v12 componentsFactory];
    componentsFactory = v11->_componentsFactory;
    v11->_componentsFactory = v13;

    v15 = [v9 contactStore];
    contactStore = v11->_contactStore;
    v11->_contactStore = v15;

    v11->_confirmAction = a5;
    v11->_originalContactCount = [v8 count];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __94__CNContactListRemoveContactsFromGroupAction_initWithContacts_configuration_withConfirmation___block_invoke;
    v22[3] = &unk_1E74E3320;
    v17 = v11;
    v23 = v17;
    v24 = v8;
    v25 = v9;
    v18 = [v24 _cn_flatMap:v22];
    actions = v17->_actions;
    v17->_actions = v18;

    v20 = v17;
  }

  return v11;
}

id __94__CNContactListRemoveContactsFromGroupAction_initWithContacts_configuration_withConfirmation___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 isUnified])
    {
      v5 = [v4 linkedContacts];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __94__CNContactListRemoveContactsFromGroupAction_initWithContacts_configuration_withConfirmation___block_invoke_47;
      v10[3] = &unk_1E74E32F8;
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      v6 = [v5 _cn_map:v10];

      v7 = v11;
    }

    else
    {
      v7 = [objc_opt_class() actionForContact:v4 configuration:*(a1 + 48)];
      v13 = v7;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    }
  }

  else
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      *buf = 138412290;
      v15 = v9;
      _os_log_error_impl(&dword_199A75000, v7, OS_LOG_TYPE_ERROR, "Contact was nil for remove from group action with contacts: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

id __94__CNContactListRemoveContactsFromGroupAction_initWithContacts_configuration_withConfirmation___block_invoke_47(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() actionForContact:v3 configuration:*(a1 + 40)];

  return v4;
}

+ (id)actionForContact:(id)a3 configuration:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 contactViewCache];
  v8 = [v7 containerForContact:v6];
  v9 = [v8 identifier];

  v10 = [CNContactListRemoveContactFromGroupAction alloc];
  v11 = [v5 contactStore];

  v12 = [(CNContactListRemoveContactFromGroupAction *)v10 initWithContact:v6 contactStore:v11 containerIdentifier:v9];

  return v12;
}

+ (id)descriptorForRequiredKeys
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v7[0] = *MEMORY[0x1E695C200];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactListRemoveContactsFromGroupAction descriptorForRequiredKeys]"];
  v5 = [v2 descriptorWithKeyDescriptors:v3 description:v4];

  return v5;
}

+ (id)log
{
  if (log_cn_once_token_9 != -1)
  {
    dispatch_once(&log_cn_once_token_9, &__block_literal_global_41);
  }

  v3 = log_cn_once_object_9;

  return v3;
}

uint64_t __49__CNContactListRemoveContactsFromGroupAction_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNUIListRemoveContactsFromGroupAction");
  v1 = log_cn_once_object_9;
  log_cn_once_object_9 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end