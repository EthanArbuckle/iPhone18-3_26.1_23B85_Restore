@interface NCCNAppleAccountMergeLocalDataIntoSyncDataActionHandler
- (BOOL)perform;
@end

@implementation NCCNAppleAccountMergeLocalDataIntoSyncDataActionHandler

- (BOOL)perform
{
  v3 = [(NCCNDataclassActionHandler *)self account];
  v4 = [(NCCNDataclassActionHandler *)self childAccounts];
  v5 = [(NCCNDataclassActionHandler *)self createABAccountForACAccount:v3 withChildren:v4];

  if (v5)
  {
    v6 = [(NCCNDataclassActionHandler *)self account];
    v7 = [(NCCNDataclassActionHandler *)self childAccounts];
    v8 = [(NCCNDataclassActionHandler *)self copyDefaultAddressBookSourceForAccount:v6 withChildren:v7 createIfNecessary:1];

    if (v8)
    {
      [(NCCNDataclassActionHandler *)self mergeContactsFromLocalSourceIntoSource:v8];
      v9 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(NCCNDataclassActionHandler *)self account];
        v11 = [v10 accountType];
        v12 = [v11 identifier];
        v13 = [(NCCNDataclassActionHandler *)self account];
        v14 = [v13 username];
        v17 = 138412546;
        v18 = v12;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Merged AB local data to the AB source for iCloud account %@ (%@) and now disabling the AB local source", &v17, 0x16u);
      }

      v15 = [(NCCNDataclassActionHandler *)self account];
      [(NCCNDataclassActionHandler *)self disableLocalSourceIfNeededAddingAccount:v15];
    }
  }

  else
  {
    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_DE20(self, v8);
    }
  }

  return v5;
}

@end