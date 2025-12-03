@interface CNAppleAccountMergeSyncDataIntoLocalDataActionHandler
- (BOOL)perform;
@end

@implementation CNAppleAccountMergeSyncDataIntoLocalDataActionHandler

- (BOOL)perform
{
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
  {
    account = [(CNDataclassActionHandler *)self account];
    accountType = [account accountType];
    identifier = [accountType identifier];
    account2 = [(CNDataclassActionHandler *)self account];
    username = [account2 username];
    v15 = 138412546;
    v16 = identifier;
    v17 = 2112;
    v18 = username;
    _os_log_impl(&dword_0, os_log, OS_LOG_TYPE_DEFAULT, "Will merge from the Contacts container for iCloud account %@ (%@) to the Contacts local container, so first enable the Contacts local container", &v15, 0x16u);
  }

  [(CNDataclassActionHandler *)self setLocalSourceEnabled:1];
  account3 = [(CNDataclassActionHandler *)self account];
  childAccounts = [(CNDataclassActionHandler *)self childAccounts];
  v11 = [(CNDataclassActionHandler *)self copyABAccountForACAccount:account3 withChildren:childAccounts];

  if (!v11)
  {
    goto LABEL_9;
  }

  if (![(CNDataclassActionHandler *)self mergeContactsIntoLocalSourceFromABAccount:v11])
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      sub_6F30();
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  [(CNDataclassActionHandler *)self removeContactsAccount:v11];
  v12 = 1;
LABEL_10:

  return v12;
}

@end