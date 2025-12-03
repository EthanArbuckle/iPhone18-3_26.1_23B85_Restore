@interface CNContactListDeleteContactAction
+ (id)log;
- (BOOL)executeDeleteAction;
- (CNContactListDeleteContactAction)initWithContact:(id)contact contactStore:(id)store containerIdentifier:(id)identifier recentsManager:(id)manager;
- (void)undoDeleteAction;
@end

@implementation CNContactListDeleteContactAction

- (void)undoDeleteAction
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v3 setIgnoresGuardianRestrictions:1];
  contact = [(CNContactListDeleteContactAction *)self contact];
  v5 = [contact mutableCopy];

  containerIdentifier = [(CNContactListDeleteContactAction *)self containerIdentifier];
  [v3 addContact:v5 toContainerWithIdentifier:containerIdentifier];

  contactStore = [(CNContactListDeleteContactAction *)self contactStore];
  v11 = 0;
  v8 = [contactStore executeSaveRequest:v3 error:&v11];
  v9 = v11;

  if ((v8 & 1) == 0)
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v9;
      _os_log_error_impl(&dword_199A75000, v10, OS_LOG_TYPE_ERROR, "Failed to undo delete contact action: %@", buf, 0xCu);
    }
  }
}

- (BOOL)executeDeleteAction
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v3 setIgnoresGuardianRestrictions:1];
  contact = [(CNContactListDeleteContactAction *)self contact];
  v5 = [contact mutableCopy];

  [v3 deleteContact:v5];
  contactStore = [(CNContactListDeleteContactAction *)self contactStore];
  v15 = 0;
  v7 = [contactStore executeSaveRequest:v3 error:&v15];
  v8 = v15;

  if (v7)
  {
    recentsManager = [(CNContactListDeleteContactAction *)self recentsManager];
    v10 = [recentsManager recentContactsMatchingAllPropertiesOfContact:v5];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__CNContactListDeleteContactAction_executeDeleteAction__block_invoke;
    v13[3] = &unk_1E74E42C0;
    v14 = recentsManager;
    v11 = recentsManager;
    [v10 addSuccessBlock:v13];
  }

  else
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_error_impl(&dword_199A75000, v10, OS_LOG_TYPE_ERROR, "Failed to delete contact: %@", buf, 0xCu);
    }
  }

  return v7;
}

- (CNContactListDeleteContactAction)initWithContact:(id)contact contactStore:(id)store containerIdentifier:(id)identifier recentsManager:(id)manager
{
  contactCopy = contact;
  storeCopy = store;
  identifierCopy = identifier;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = CNContactListDeleteContactAction;
  v15 = [(CNContactListDeleteContactAction *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_contact, contact);
    objc_storeStrong(&v16->_contactStore, store);
    objc_storeStrong(&v16->_containerIdentifier, identifier);
    objc_storeStrong(&v16->_recentsManager, manager);
    v17 = v16;
  }

  return v16;
}

+ (id)log
{
  if (log_cn_once_token_6_23578 != -1)
  {
    dispatch_once(&log_cn_once_token_6_23578, &__block_literal_global_23579);
  }

  v3 = log_cn_once_object_6_23580;

  return v3;
}

uint64_t __39__CNContactListDeleteContactAction_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNUIListDeleteContactAction");
  v1 = log_cn_once_object_6_23580;
  log_cn_once_object_6_23580 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end