@interface CNGenericAccountCreateSyncDataStoreDeleteLocalDataActionHandler
- (BOOL)perform;
@end

@implementation CNGenericAccountCreateSyncDataStoreDeleteLocalDataActionHandler

- (BOOL)perform
{
  implementation = [(CNDataclassActionHandler *)self implementation];
  emptyLocalContainer = [implementation emptyLocalContainer];

  account = [(CNDataclassActionHandler *)self account];
  childAccounts = [(CNDataclassActionHandler *)self childAccounts];
  v7 = emptyLocalContainer & [(CNDataclassActionHandler *)self createContactsAccountForACAccount:account withChildren:childAccounts];

  if (v7 == 1)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
      account2 = [(CNDataclassActionHandler *)self account];
      accountType = [account2 accountType];
      v11 = [accountType description];
      account3 = [(CNDataclassActionHandler *)self account];
      username = [account3 username];
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = username;
      _os_log_impl(&dword_0, os_log, OS_LOG_TYPE_DEFAULT, "Created a Contacts container for account %@ (%@) and now disabling the Contacts local container.", &v16, 0x16u);
    }

    account4 = [(CNDataclassActionHandler *)self account];
    [(CNDataclassActionHandler *)self disableLocalSourceIfNeededAddingAccount:account4];
  }

  return v7;
}

@end