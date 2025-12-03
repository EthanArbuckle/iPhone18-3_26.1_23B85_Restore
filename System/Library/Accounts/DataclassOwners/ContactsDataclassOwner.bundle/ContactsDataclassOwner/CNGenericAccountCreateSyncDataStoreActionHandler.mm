@interface CNGenericAccountCreateSyncDataStoreActionHandler
- (BOOL)perform;
@end

@implementation CNGenericAccountCreateSyncDataStoreActionHandler

- (BOOL)perform
{
  account = [(CNDataclassActionHandler *)self account];
  childAccounts = [(CNDataclassActionHandler *)self childAccounts];
  v5 = [(CNDataclassActionHandler *)self createContactsAccountForACAccount:account withChildren:childAccounts];

  if (v5)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
      account2 = [(CNDataclassActionHandler *)self account];
      accountType = [account2 accountType];
      v9 = [accountType description];
      account3 = [(CNDataclassActionHandler *)self account];
      username = [account3 username];
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = username;
      _os_log_impl(&dword_0, os_log, OS_LOG_TYPE_DEFAULT, "Created a Contacts container for account %@ (%@) and now disabling the Contacts local container", &v14, 0x16u);
    }

    account4 = [(CNDataclassActionHandler *)self account];
    [(CNDataclassActionHandler *)self disableLocalSourceIfNeededAddingAccount:account4];
  }

  return v5;
}

@end