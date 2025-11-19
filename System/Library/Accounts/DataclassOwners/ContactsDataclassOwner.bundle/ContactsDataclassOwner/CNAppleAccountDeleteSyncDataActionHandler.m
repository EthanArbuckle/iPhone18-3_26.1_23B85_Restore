@interface CNAppleAccountDeleteSyncDataActionHandler
- (BOOL)perform;
@end

@implementation CNAppleAccountDeleteSyncDataActionHandler

- (BOOL)perform
{
  v3 = [(CNDataclassActionHandler *)self account];
  v4 = [(CNDataclassActionHandler *)self childAccounts];
  v5 = [(CNDataclassActionHandler *)self removeContactsAccountForACAccount:v3 withChildren:v4];

  v6 = [(CNDataclassActionHandler *)self account];
  [(CNDataclassActionHandler *)self enableLocalSourceIfNecessaryIgnoringAccount:v6];

  if (!v5)
  {
    v7 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_7004();
    }
  }

  return v5;
}

@end