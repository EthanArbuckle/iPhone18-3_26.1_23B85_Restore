@interface CNGenericAccountCreateSyncDataStoreActionHandler
- (BOOL)perform;
@end

@implementation CNGenericAccountCreateSyncDataStoreActionHandler

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
      v9 = [v8 description];
      v10 = [(CNDataclassActionHandler *)self account];
      v11 = [v10 username];
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Created a Contacts container for account %@ (%@) and now disabling the Contacts local container", &v14, 0x16u);
    }

    v12 = [(CNDataclassActionHandler *)self account];
    [(CNDataclassActionHandler *)self disableLocalSourceIfNeededAddingAccount:v12];
  }

  return v5;
}

@end