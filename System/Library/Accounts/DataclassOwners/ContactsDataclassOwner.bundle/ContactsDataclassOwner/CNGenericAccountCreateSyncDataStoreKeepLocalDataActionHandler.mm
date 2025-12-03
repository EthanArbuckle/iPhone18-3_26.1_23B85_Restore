@interface CNGenericAccountCreateSyncDataStoreKeepLocalDataActionHandler
- (BOOL)perform;
@end

@implementation CNGenericAccountCreateSyncDataStoreKeepLocalDataActionHandler

- (BOOL)perform
{
  selfCopy = self;
  account = [(CNDataclassActionHandler *)self account];
  childAccounts = [(CNDataclassActionHandler *)selfCopy childAccounts];
  LOBYTE(selfCopy) = [(CNDataclassActionHandler *)selfCopy createContactsAccountForACAccount:account withChildren:childAccounts];

  return selfCopy;
}

@end