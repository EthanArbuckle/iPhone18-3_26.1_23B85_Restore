@interface CNGenericAccountCreateSyncDataStoreDeleteLocalDataActionHandler
- (BOOL)perform;
@end

@implementation CNGenericAccountCreateSyncDataStoreDeleteLocalDataActionHandler

- (BOOL)perform
{
  v3 = [(CNDataclassActionHandler *)self implementation];
  v4 = [v3 emptyLocalContainer];

  v5 = [(CNDataclassActionHandler *)self account];
  v6 = [(CNDataclassActionHandler *)self childAccounts];
  v7 = v4 & [(CNDataclassActionHandler *)self createContactsAccountForACAccount:v5 withChildren:v6];

  if (v7 == 1)
  {
    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(CNDataclassActionHandler *)self account];
      v10 = [v9 accountType];
      v11 = [v10 description];
      v12 = [(CNDataclassActionHandler *)self account];
      v13 = [v12 username];
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Created a Contacts container for account %@ (%@) and now disabling the Contacts local container.", &v16, 0x16u);
    }

    v14 = [(CNDataclassActionHandler *)self account];
    [(CNDataclassActionHandler *)self disableLocalSourceIfNeededAddingAccount:v14];
  }

  return v7;
}

@end