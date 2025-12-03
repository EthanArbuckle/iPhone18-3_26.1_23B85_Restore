@interface CNAppleAccountCreateSyncDataStoreActionHandler
- (BOOL)perform;
@end

@implementation CNAppleAccountCreateSyncDataStoreActionHandler

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
      identifier = [accountType identifier];
      v12 = 138412290;
      v13 = identifier;
      _os_log_impl(&dword_0, os_log, OS_LOG_TYPE_DEFAULT, "Created a Contacts account for iCloud account %@ and now disabling the AB local source", &v12, 0xCu);
    }

    account3 = [(CNDataclassActionHandler *)self account];
    [(CNDataclassActionHandler *)self disableLocalSourceIfNeededAddingAccount:account3];
  }

  return v5;
}

@end