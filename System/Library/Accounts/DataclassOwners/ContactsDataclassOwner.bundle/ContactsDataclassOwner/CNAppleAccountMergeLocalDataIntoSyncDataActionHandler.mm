@interface CNAppleAccountMergeLocalDataIntoSyncDataActionHandler
- (BOOL)perform;
@end

@implementation CNAppleAccountMergeLocalDataIntoSyncDataActionHandler

- (BOOL)perform
{
  account = [(CNDataclassActionHandler *)self account];
  childAccounts = [(CNDataclassActionHandler *)self childAccounts];
  v5 = [(CNDataclassActionHandler *)self createContactsAccountForACAccount:account withChildren:childAccounts];

  if (v5)
  {
    account2 = [(CNDataclassActionHandler *)self account];
    childAccounts2 = [(CNDataclassActionHandler *)self childAccounts];
    os_log2 = [(CNDataclassActionHandler *)self copyDefaultAddressBookSourceForAccount:account2 withChildren:childAccounts2 createIfNecessary:1];

    if (os_log2)
    {
      [(CNDataclassActionHandler *)self mergeContactsFromLocalSourceIntoSource:os_log2];
      os_log = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
      {
        account3 = [(CNDataclassActionHandler *)self account];
        accountType = [account3 accountType];
        identifier = [accountType identifier];
        account4 = [(CNDataclassActionHandler *)self account];
        username = [account4 username];
        v17 = 138412546;
        v18 = identifier;
        v19 = 2112;
        v20 = username;
        _os_log_impl(&dword_0, os_log, OS_LOG_TYPE_DEFAULT, "Merged Contacts local container to the Contacts container for iCloud account %@ (%@) and now disabling the AB local source", &v17, 0x16u);
      }

      account5 = [(CNDataclassActionHandler *)self account];
      [(CNDataclassActionHandler *)self disableLocalSourceIfNeededAddingAccount:account5];
    }
  }

  else
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      sub_6E5C();
    }
  }

  return v5;
}

@end