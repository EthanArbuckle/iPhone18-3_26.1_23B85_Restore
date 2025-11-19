@interface CNGenericAccountCreateSyncDataStoreKeepLocalDataActionHandler
- (BOOL)perform;
@end

@implementation CNGenericAccountCreateSyncDataStoreKeepLocalDataActionHandler

- (BOOL)perform
{
  v2 = self;
  v3 = [(CNDataclassActionHandler *)self account];
  v4 = [(CNDataclassActionHandler *)v2 childAccounts];
  LOBYTE(v2) = [(CNDataclassActionHandler *)v2 createContactsAccountForACAccount:v3 withChildren:v4];

  return v2;
}

@end