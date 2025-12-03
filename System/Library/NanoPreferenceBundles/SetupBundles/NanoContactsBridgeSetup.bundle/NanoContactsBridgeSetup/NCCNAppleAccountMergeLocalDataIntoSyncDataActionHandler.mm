@interface NCCNAppleAccountMergeLocalDataIntoSyncDataActionHandler
- (BOOL)perform;
@end

@implementation NCCNAppleAccountMergeLocalDataIntoSyncDataActionHandler

- (BOOL)perform
{
  account = [(NCCNDataclassActionHandler *)self account];
  childAccounts = [(NCCNDataclassActionHandler *)self childAccounts];
  v5 = [(NCCNDataclassActionHandler *)self createABAccountForACAccount:account withChildren:childAccounts];

  if (v5)
  {
    account2 = [(NCCNDataclassActionHandler *)self account];
    childAccounts2 = [(NCCNDataclassActionHandler *)self childAccounts];
    os_log2 = [(NCCNDataclassActionHandler *)self copyDefaultAddressBookSourceForAccount:account2 withChildren:childAccounts2 createIfNecessary:1];

    if (os_log2)
    {
      [(NCCNDataclassActionHandler *)self mergeContactsFromLocalSourceIntoSource:os_log2];
      os_log = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
      {
        account3 = [(NCCNDataclassActionHandler *)self account];
        accountType = [account3 accountType];
        identifier = [accountType identifier];
        account4 = [(NCCNDataclassActionHandler *)self account];
        username = [account4 username];
        v17 = 138412546;
        v18 = identifier;
        v19 = 2112;
        v20 = username;
        _os_log_impl(&dword_0, os_log, OS_LOG_TYPE_DEFAULT, "Merged AB local data to the AB source for iCloud account %@ (%@) and now disabling the AB local source", &v17, 0x16u);
      }

      account5 = [(NCCNDataclassActionHandler *)self account];
      [(NCCNDataclassActionHandler *)self disableLocalSourceIfNeededAddingAccount:account5];
    }
  }

  else
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      sub_DE20(self, os_log2);
    }
  }

  return v5;
}

@end