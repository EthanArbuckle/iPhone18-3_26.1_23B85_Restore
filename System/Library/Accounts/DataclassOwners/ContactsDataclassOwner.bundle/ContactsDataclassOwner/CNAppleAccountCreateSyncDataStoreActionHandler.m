@interface CNAppleAccountCreateSyncDataStoreActionHandler
- (BOOL)perform;
@end

@implementation CNAppleAccountCreateSyncDataStoreActionHandler

- (BOOL)perform
{
  v3 = [(CNDataclassActionHandler *)self account];
  v4 = [(CNDataclassActionHandler *)self childAccounts];
  v5 = [(CNDataclassActionHandler *)self createContactsAccountForACAccount:v3 withChildren:v4];

  if (v5)
  {
    v6 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(CNDataclassActionHandler *)self account];
      v8 = [v7 accountType];
      v9 = [v8 identifier];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Created a Contacts account for iCloud account %@ and now disabling the AB local source", &v12, 0xCu);
    }

    v10 = [(CNDataclassActionHandler *)self account];
    [(CNDataclassActionHandler *)self disableLocalSourceIfNeededAddingAccount:v10];
  }

  return v5;
}

@end