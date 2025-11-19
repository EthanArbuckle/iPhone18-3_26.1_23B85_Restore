@interface NCCNAppleAccountCreateSyncDataStoreActionHandler
- (BOOL)perform;
@end

@implementation NCCNAppleAccountCreateSyncDataStoreActionHandler

- (BOOL)perform
{
  v3 = [(NCCNDataclassActionHandler *)self account];
  v4 = [(NCCNDataclassActionHandler *)self childAccounts];
  v5 = [(NCCNDataclassActionHandler *)self createABAccountForACAccount:v3 withChildren:v4];

  if (v5)
  {
    v6 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(NCCNDataclassActionHandler *)self account];
      v8 = [v7 accountType];
      v9 = [v8 identifier];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Created an AB source for iCloud account %@ and now disabling the AB local source", &v12, 0xCu);
    }

    v10 = [(NCCNDataclassActionHandler *)self account];
    [(NCCNDataclassActionHandler *)self disableLocalSourceIfNeededAddingAccount:v10];
  }

  return v5;
}

@end