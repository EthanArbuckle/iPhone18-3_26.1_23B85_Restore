@interface CNAppleAccountMergeLocalDataIntoSyncDataActionHandler
- (BOOL)perform;
@end

@implementation CNAppleAccountMergeLocalDataIntoSyncDataActionHandler

- (BOOL)perform
{
  v3 = [(CNDataclassActionHandler *)self account];
  v4 = [(CNDataclassActionHandler *)self childAccounts];
  v5 = [(CNDataclassActionHandler *)self createContactsAccountForACAccount:v3 withChildren:v4];

  if (v5)
  {
    v6 = [(CNDataclassActionHandler *)self account];
    v7 = [(CNDataclassActionHandler *)self childAccounts];
    v8 = [(CNDataclassActionHandler *)self copyDefaultAddressBookSourceForAccount:v6 withChildren:v7 createIfNecessary:1];

    if (v8)
    {
      [(CNDataclassActionHandler *)self mergeContactsFromLocalSourceIntoSource:v8];
      v9 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(CNDataclassActionHandler *)self account];
        v11 = [v10 accountType];
        v12 = [v11 identifier];
        v13 = [(CNDataclassActionHandler *)self account];
        v14 = [v13 username];
        v17 = 138412546;
        v18 = v12;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Merged Contacts local container to the Contacts container for iCloud account %@ (%@) and now disabling the AB local source", &v17, 0x16u);
      }

      v15 = [(CNDataclassActionHandler *)self account];
      [(CNDataclassActionHandler *)self disableLocalSourceIfNeededAddingAccount:v15];
    }
  }

  else
  {
    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_6E5C();
    }
  }

  return v5;
}

@end