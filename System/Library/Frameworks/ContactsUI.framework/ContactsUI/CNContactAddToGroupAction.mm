@interface CNContactAddToGroupAction
+ (id)os_log;
- (BOOL)groupPicker:(id)picker shouldEnableGroupWithIdentifier:(id)identifier;
- (CNManagedConfiguration)managedConfiguration;
- (CNUIGroupsAndContainersSaveManager)groupsAndContainersSaveManager;
- (id)sourceAccountExternalIdentifiers;
- (void)groupPicker:(id)picker didSelectGroup:(id)group;
- (void)groupPickerDidCancel:(id)cancel;
- (void)performActionWithSender:(id)sender;
- (void)setContactParentGroups:(id)groups;
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

- (void)groupPickerDidCancel:(id)cancel
{
  delegate = [(CNContactAction *)self delegate];
  groupPickerNavigationViewController = [(CNContactAddToGroupAction *)self groupPickerNavigationViewController];
  [delegate action:self dismissViewController:groupPickerNavigationViewController sender:self];
}

- (void)groupPicker:(id)picker didSelectGroup:(id)group
{
  [(CNContactAddToGroupAction *)self setSelectedGroup:group];
  delegate = [(CNContactAction *)self delegate];
  [delegate actionDidFinish:self];

  delegate2 = [(CNContactAction *)self delegate];
  groupPickerNavigationViewController = [(CNContactAddToGroupAction *)self groupPickerNavigationViewController];
  [delegate2 action:self dismissViewController:groupPickerNavigationViewController sender:self];
}

- (BOOL)groupPicker:(id)picker shouldEnableGroupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contactParentGroupIdentifiers = [(CNContactAddToGroupAction *)self contactParentGroupIdentifiers];
  v7 = [contactParentGroupIdentifiers containsObject:identifierCopy];

  return v7 ^ 1;
}

- (id)sourceAccountExternalIdentifiers
{
  managedConfiguration = [(CNContactAddToGroupAction *)self managedConfiguration];
  deviceHasManagementRestrictions = [managedConfiguration deviceHasManagementRestrictions];

  if (deviceHasManagementRestrictions)
  {
    groupsAndContainersSaveManager = [(CNContactAddToGroupAction *)self groupsAndContainersSaveManager];
    contact = [(CNContactAction *)self contact];
    v7 = [groupsAndContainersSaveManager parentAccountExternalIdentifiersForContact:contact];
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
    contactStore = [(CNContactAddToGroupAction *)self contactStore];
    v6 = [(CNUIGroupsAndContainersSaveManager *)v4 initWithContactStore:contactStore];
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
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v6 = objc_alloc(MEMORY[0x1E6996760]);
    mEMORY[0x1E6996768] = [MEMORY[0x1E6996768] sharedConnection];
    v8 = [v6 initWithBundleIdentifier:bundleIdentifier managedProfileConnection:mEMORY[0x1E6996768]];
    v9 = self->_managedConfiguration;
    self->_managedConfiguration = v8;

    managedConfiguration = self->_managedConfiguration;
  }

  return managedConfiguration;
}

- (void)setContactParentGroups:(id)groups
{
  groupsCopy = groups;
  if (![(NSArray *)self->_contactParentGroups isEqualToArray:?])
  {
    objc_storeStrong(&self->_contactParentGroups, groups);
    v5 = [groupsCopy _cn_map:&__block_literal_global_6_10400];
    [(CNContactAddToGroupAction *)self setContactParentGroupIdentifiers:v5];
  }
}

- (void)performActionWithSender:(id)sender
{
  senderCopy = sender;
  contactStore = [(CNContactAddToGroupAction *)self contactStore];

  if (contactStore)
  {
    [(CNContactAddToGroupAction *)self setSelectedGroup:0];
    v6 = [CNContactGroupPickerViewController alloc];
    contactStore2 = [(CNContactAddToGroupAction *)self contactStore];
    sourceAccountExternalIdentifiers = [(CNContactAddToGroupAction *)self sourceAccountExternalIdentifiers];
    v9 = [(CNContactGroupPickerViewController *)v6 initWithContactStore:contactStore2 sourceAccountExternalIdentifiers:sourceAccountExternalIdentifiers];

    [(CNContactGroupPickerViewController *)v9 setDelegate:self];
    v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v9];
    [(CNContactAddToGroupAction *)self setGroupPickerNavigationViewController:v10];
    delegate = [(CNContactAction *)self delegate];
    [delegate action:self presentViewController:v10 sender:senderCopy];
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_199A75000, os_log, OS_LOG_TYPE_ERROR, "add to group action requires a contact store", v13, 2u);
    }
  }
}

@end