@interface CNContactListRemoveContactFromGroupAction
+ (id)log;
- (BOOL)executeRemoveFromGroupAction;
- (CNContactListRemoveContactFromGroupAction)initWithContact:(id)contact contactStore:(id)store containerIdentifier:(id)identifier;
- (void)undoRemoveFromGroupAction;
@end

@implementation CNContactListRemoveContactFromGroupAction

- (void)undoRemoveFromGroupAction
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v3 setIgnoresGuardianRestrictions:1];
  contact = [(CNContactListRemoveContactFromGroupAction *)self contact];
  v5 = [contact mutableCopy];

  group = [(CNContactListRemoveContactFromGroupAction *)self group];
  v12[0] = group;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  contactStore = [(CNContactListRemoveContactFromGroupAction *)self contactStore];
  v9 = [v5 addContactToGroups:v7 inStore:contactStore request:v3];

  if ((v9 & 1) == 0)
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_199A75000, v10, OS_LOG_TYPE_ERROR, "Failed to undo remove contact from group", v11, 2u);
    }
  }
}

- (BOOL)executeRemoveFromGroupAction
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v3 setIgnoresGuardianRestrictions:1];
  contact = [(CNContactListRemoveContactFromGroupAction *)self contact];
  v5 = [contact mutableCopy];

  group = [(CNContactListRemoveContactFromGroupAction *)self group];
  v13[0] = group;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  contactStore = [(CNContactListRemoveContactFromGroupAction *)self contactStore];
  v9 = [v5 removeContactFromGroups:v7 inStore:contactStore request:v3];

  if ((v9 & 1) == 0)
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_199A75000, v10, OS_LOG_TYPE_ERROR, "Failed to remove contact from group", v12, 2u);
    }
  }

  return v9;
}

- (CNContactListRemoveContactFromGroupAction)initWithContact:(id)contact contactStore:(id)store containerIdentifier:(id)identifier
{
  contactCopy = contact;
  storeCopy = store;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = CNContactListRemoveContactFromGroupAction;
  v12 = [(CNContactListRemoveContactFromGroupAction *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contact, contact);
    objc_storeStrong(&v13->_contactStore, store);
    objc_storeStrong(&v13->_containerIdentifier, identifier);
    v14 = v13;
  }

  return v13;
}

+ (id)log
{
  if (log_cn_once_token_6_13542 != -1)
  {
    dispatch_once(&log_cn_once_token_6_13542, &__block_literal_global_13543);
  }

  v3 = log_cn_once_object_6_13544;

  return v3;
}

uint64_t __48__CNContactListRemoveContactFromGroupAction_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNUIContactListRemoveFromGroupAction");
  v1 = log_cn_once_object_6_13544;
  log_cn_once_object_6_13544 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end