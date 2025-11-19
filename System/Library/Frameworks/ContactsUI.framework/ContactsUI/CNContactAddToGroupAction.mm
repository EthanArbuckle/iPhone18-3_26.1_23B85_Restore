@interface CNContactAddToGroupAction
+ (id)os_log;
- (BOOL)groupPicker:(id)a3 shouldEnableGroupWithIdentifier:(id)a4;
- (CNManagedConfiguration)managedConfiguration;
- (CNUIGroupsAndContainersSaveManager)groupsAndContainersSaveManager;
- (id)sourceAccountExternalIdentifiers;
- (void)groupPicker:(id)a3 didSelectGroup:(id)a4;
- (void)groupPickerDidCancel:(id)a3;
- (void)performActionWithSender:(id)a3;
- (void)setContactParentGroups:(id)a3;
@end

@implementation CNContactAddToGroupAction

+ (id)os_log
{
  if (os_log_cn_once_token_1_10333 != -1)
  {
    dispatch_once(&os_log_cn_once_token_1_10333, &__block_literal_global_10334);
  }

  v3 = os_log_cn_once_object_1_10335;

  return v3;
}

uint64_t __35__CNContactAddToGroupAction_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNContactAddToGroupAction");
  v1 = os_log_cn_once_object_1_10335;
  os_log_cn_once_object_1_10335 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)groupPickerDidCancel:(id)a3
{
  v5 = [(CNContactAction *)self delegate];
  v4 = [(CNContactAddToGroupAction *)self groupPickerNavigationViewController];
  [v5 action:self dismissViewController:v4 sender:self];
}

- (void)groupPicker:(id)a3 didSelectGroup:(id)a4
{
  [(CNContactAddToGroupAction *)self setSelectedGroup:a4];
  v5 = [(CNContactAction *)self delegate];
  [v5 actionDidFinish:self];

  v7 = [(CNContactAction *)self delegate];
  v6 = [(CNContactAddToGroupAction *)self groupPickerNavigationViewController];
  [v7 action:self dismissViewController:v6 sender:self];
}

- (BOOL)groupPicker:(id)a3 shouldEnableGroupWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(CNContactAddToGroupAction *)self contactParentGroupIdentifiers];
  v7 = [v6 containsObject:v5];

  return v7 ^ 1;
}

- (id)sourceAccountExternalIdentifiers
{
  v3 = [(CNContactAddToGroupAction *)self managedConfiguration];
  v4 = [v3 deviceHasManagementRestrictions];

  if (v4)
  {
    v5 = [(CNContactAddToGroupAction *)self groupsAndContainersSaveManager];
    v6 = [(CNContactAction *)self contact];
    v7 = [v5 parentAccountExternalIdentifiersForContact:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CNUIGroupsAndContainersSaveManager)groupsAndContainersSaveManager
{
  groupsAndContainersSaveManager = self->_groupsAndContainersSaveManager;
  if (!groupsAndContainersSaveManager)
  {
    v4 = [CNUIGroupsAndContainersSaveManager alloc];
    v5 = [(CNContactAddToGroupAction *)self contactStore];
    v6 = [(CNUIGroupsAndContainersSaveManager *)v4 initWithContactStore:v5];
    v7 = self->_groupsAndContainersSaveManager;
    self->_groupsAndContainersSaveManager = v6;

    groupsAndContainersSaveManager = self->_groupsAndContainersSaveManager;
  }

  return groupsAndContainersSaveManager;
}

- (CNManagedConfiguration)managedConfiguration
{
  managedConfiguration = self->_managedConfiguration;
  if (!managedConfiguration)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];

    v6 = objc_alloc(MEMORY[0x1E6996760]);
    v7 = [MEMORY[0x1E6996768] sharedConnection];
    v8 = [v6 initWithBundleIdentifier:v5 managedProfileConnection:v7];
    v9 = self->_managedConfiguration;
    self->_managedConfiguration = v8;

    managedConfiguration = self->_managedConfiguration;
  }

  return managedConfiguration;
}

- (void)setContactParentGroups:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_contactParentGroups isEqualToArray:?])
  {
    objc_storeStrong(&self->_contactParentGroups, a3);
    v5 = [v6 _cn_map:&__block_literal_global_6_10400];
    [(CNContactAddToGroupAction *)self setContactParentGroupIdentifiers:v5];
  }
}

- (void)performActionWithSender:(id)a3
{
  v4 = a3;
  v5 = [(CNContactAddToGroupAction *)self contactStore];

  if (v5)
  {
    [(CNContactAddToGroupAction *)self setSelectedGroup:0];
    v6 = [CNContactGroupPickerViewController alloc];
    v7 = [(CNContactAddToGroupAction *)self contactStore];
    v8 = [(CNContactAddToGroupAction *)self sourceAccountExternalIdentifiers];
    v9 = [(CNContactGroupPickerViewController *)v6 initWithContactStore:v7 sourceAccountExternalIdentifiers:v8];

    [(CNContactGroupPickerViewController *)v9 setDelegate:self];
    v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v9];
    [(CNContactAddToGroupAction *)self setGroupPickerNavigationViewController:v10];
    v11 = [(CNContactAction *)self delegate];
    [v11 action:self presentViewController:v10 sender:v4];
  }

  else
  {
    v12 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_199A75000, v12, OS_LOG_TYPE_ERROR, "add to group action requires a contact store", v13, 2u);
    }
  }
}

@end