@interface CNContactListRemoveContactsFromGroupAction
+ (id)actionForContact:(id)contact configuration:(id)configuration;
+ (id)descriptorForRequiredKeys;
+ (id)log;
- (BOOL)editRequiresAuthorization;
- (BOOL)editRequiresAuthorizationCheckForActions:(id)actions;
- (CNContactListRemoveContactsFromGroupAction)initWithContacts:(id)contacts configuration:(id)configuration withConfirmation:(BOOL)confirmation;
- (id)groupToRemoveFrom;
- (void)performAction;
- (void)performAuthorizedRemoveFromGroup:(id)group;
- (void)performUndoAction;
- (void)showRemoveFromGroupFailureAlert;
@end

@implementation CNContactListRemoveContactsFromGroupAction

- (id)groupToRemoveFrom
{
  v23[1] = *MEMORY[0x1E69E9840];
  configuration = [(CNContactListAction *)self configuration];
  contactStoreFilter = [configuration contactStoreFilter];
  groupIdentifiers = [contactStoreFilter groupIdentifiers];
  allObjects = [groupIdentifiers allObjects];
  firstObject = [allObjects firstObject];

  contactStore = [(CNContactListRemoveContactsFromGroupAction *)self contactStore];
  v9 = MEMORY[0x1E695CEC0];
  v23[0] = firstObject;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v11 = [v9 predicateForGroupsWithIdentifiers:v10];
  v20 = 0;
  v12 = [contactStore groupsMatchingPredicate:v11 error:&v20];
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
    firstObject2 = [v12 firstObject];
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

  firstObject2 = 0;
LABEL_8:

  return firstObject2;
}

- (void)performUndoAction
{
  actions = [(CNContactListRemoveContactsFromGroupAction *)self actions];
  [actions _cn_each:&__block_literal_global_78];

  delegate = [(CNContactListAction *)self delegate];
  [delegate actionDidFinish:self];
}

- (BOOL)editRequiresAuthorizationCheckForActions:(id)actions
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __87__CNContactListRemoveContactsFromGroupAction_editRequiresAuthorizationCheckForActions___block_invoke;
  v4[3] = &unk_1E74E2958;
  v4[4] = self;
  return [actions _cn_any:v4];
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
  selfCopy = self;
  actions = [(CNContactListRemoveContactsFromGroupAction *)self actions];
  LOBYTE(selfCopy) = [(CNContactListRemoveContactsFromGroupAction *)selfCopy editRequiresAuthorizationCheckForActions:actions];

  return selfCopy;
}

- (void)showRemoveFromGroupFailureAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"LIST_ACTION_REMOVE_FROM_GROUP_FAILURE_ALERT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"DELETE_CARD_SHEET_FAILURE_ALERT_EXPLANATION" value:&stru_1F0CE7398 table:@"Localized"];
  v13 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  componentsFactory = [(CNContactListRemoveContactsFromGroupAction *)self componentsFactory];
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
  v11 = [componentsFactory alertActionWithTitle:v10 style:0 handler:0];
  [v13 addAction:v11];

  delegate = [(CNContactListAction *)self delegate];
  [delegate action:self presentViewController:v13];
}

- (void)performAuthorizedRemoveFromGroup:(id)group
{
  groupCopy = group;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13606;
  v20 = __Block_byref_object_dispose__13607;
  v21 = MEMORY[0x1E695E0F0];
  actions = [(CNContactListRemoveContactsFromGroupAction *)self actions];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __79__CNContactListRemoveContactsFromGroupAction_performAuthorizedRemoveFromGroup___block_invoke;
  v13 = &unk_1E74E2930;
  v6 = groupCopy;
  v14 = v6;
  v15 = &v16;
  [actions _cn_each:&v10];

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
  groupToRemoveFrom = [(CNContactListRemoveContactsFromGroupAction *)self groupToRemoveFrom];
  if ([(CNContactListRemoveContactsFromGroupAction *)self confirmAction])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = CNContactsUIBundle();
    v6 = [v5 localizedStringForKey:@"LIST_ACTION_REMOVE_CONTACT_FROM_LIST" value:&stru_1F0CE7398 table:@"Localized"];
    originalContactCount = [(CNContactListRemoveContactsFromGroupAction *)self originalContactCount];
    name = [groupToRemoveFrom name];
    v9 = [v4 localizedStringWithFormat:v6, originalContactCount, name];

    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:0 preferredStyle:1];
    componentsFactory = [(CNContactListRemoveContactsFromGroupAction *)self componentsFactory];
    v12 = CNContactsUIBundle();
    v13 = [v12 localizedStringForKey:@"LIST_ACTION_ALERT_ACTION_REMOVE_FROM_GROUP" value:&stru_1F0CE7398 table:@"Localized"];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__CNContactListRemoveContactsFromGroupAction_performAction__block_invoke;
    v20[3] = &unk_1E74E7308;
    v20[4] = self;
    v21 = groupToRemoveFrom;
    v14 = [componentsFactory alertActionWithTitle:v13 style:2 handler:v20];
    [v10 addAction:v14];

    componentsFactory2 = [(CNContactListRemoveContactsFromGroupAction *)self componentsFactory];
    v16 = CNContactsUIBundle();
    v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
    v18 = [componentsFactory2 alertActionWithTitle:v17 style:1 handler:&__block_literal_global_65];
    [v10 addAction:v18];

    delegate = [(CNContactListAction *)self delegate];
    [delegate action:self presentViewController:v10];
  }

  else
  {
    [(CNContactListRemoveContactsFromGroupAction *)self performAuthorizedRemoveFromGroup:groupToRemoveFrom];
  }
}

- (CNContactListRemoveContactsFromGroupAction)initWithContacts:(id)contacts configuration:(id)configuration withConfirmation:(BOOL)confirmation
{
  contactsCopy = contacts;
  configurationCopy = configuration;
  v26.receiver = self;
  v26.super_class = CNContactListRemoveContactsFromGroupAction;
  v10 = [(CNContactListRemoveContactsFromGroupAction *)&v26 init];
  v11 = v10;
  if (v10)
  {
    [(CNContactListAction *)v10 setConfiguration:configurationCopy];
    environment = [configurationCopy environment];
    componentsFactory = [environment componentsFactory];
    componentsFactory = v11->_componentsFactory;
    v11->_componentsFactory = componentsFactory;

    contactStore = [configurationCopy contactStore];
    contactStore = v11->_contactStore;
    v11->_contactStore = contactStore;

    v11->_confirmAction = confirmation;
    v11->_originalContactCount = [contactsCopy count];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __94__CNContactListRemoveContactsFromGroupAction_initWithContacts_configuration_withConfirmation___block_invoke;
    v22[3] = &unk_1E74E3320;
    v17 = v11;
    v23 = v17;
    v24 = contactsCopy;
    v25 = configurationCopy;
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

+ (id)actionForContact:(id)contact configuration:(id)configuration
{
  configurationCopy = configuration;
  contactCopy = contact;
  contactViewCache = [configurationCopy contactViewCache];
  v8 = [contactViewCache containerForContact:contactCopy];
  identifier = [v8 identifier];

  v10 = [CNContactListRemoveContactFromGroupAction alloc];
  contactStore = [configurationCopy contactStore];

  v12 = [(CNContactListRemoveContactFromGroupAction *)v10 initWithContact:contactCopy contactStore:contactStore containerIdentifier:identifier];

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