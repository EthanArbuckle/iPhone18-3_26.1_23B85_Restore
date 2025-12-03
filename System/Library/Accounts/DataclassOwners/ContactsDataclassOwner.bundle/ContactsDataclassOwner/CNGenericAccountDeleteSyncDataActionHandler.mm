@interface CNGenericAccountDeleteSyncDataActionHandler
- (BOOL)perform;
@end

@implementation CNGenericAccountDeleteSyncDataActionHandler

- (BOOL)perform
{
  account = [(CNDataclassActionHandler *)self account];
  childAccounts = [(CNDataclassActionHandler *)self childAccounts];
  v5 = [(CNDataclassActionHandler *)self removeContactsAccountForACAccount:account withChildren:childAccounts];

  account2 = [(CNDataclassActionHandler *)self account];
  [(CNDataclassActionHandler *)self enableLocalSourceIfNecessaryIgnoringAccount:account2];

  if (!v5)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_70D8();
    }
  }

  return v5;
}

@end