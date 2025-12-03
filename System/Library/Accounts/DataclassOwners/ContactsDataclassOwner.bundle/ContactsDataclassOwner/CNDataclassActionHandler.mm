@interface CNDataclassActionHandler
+ (OS_os_log)os_log;
+ (id)actionHandlerSuitableForParameters:(id)parameters;
+ (id)appleAccountActionHandlerWithParameters:(id)parameters;
+ (id)delegatesFromAccounts:(id)accounts;
+ (id)genericAccountActionHandlerWithParameters:(id)parameters;
- (BOOL)createContactsAccountForACAccount:(id)account withChildren:(id)children;
- (BOOL)drainLocalStore;
- (BOOL)mergeContactsFromLocalSourceIntoSource:(id)source;
- (BOOL)mergeContactsIntoLocalSourceFromABAccount:(id)account;
- (BOOL)perform;
- (BOOL)removeContactsAccount:(id)account;
- (BOOL)removeContactsAccountForACAccount:(id)account withChildren:(id)children;
- (CNDataclassActionHandler)initWithParameters:(id)parameters;
- (id)copyABAccountForACAccount:(id)account withChildren:(id)children;
- (void)disableLocalSourceIfNeededAddingAccount:(id)account;
- (void)enableLocalSourceIfNecessaryIgnoringAccount:(id)account;
@end

@implementation CNDataclassActionHandler

+ (OS_os_log)os_log
{
  if (qword_15930 != -1)
  {
    sub_6E48();
  }

  v3 = qword_15938;

  return v3;
}

+ (id)actionHandlerSuitableForParameters:(id)parameters
{
  parametersCopy = parameters;
  account = [parametersCopy account];
  v6 = [CNACAccountTypeAnalyzer isAccountAppleAccount:account];

  if (v6)
  {
    v7 = [self appleAccountActionHandlerWithParameters:parametersCopy];
LABEL_5:
    v10 = v7;
    goto LABEL_7;
  }

  account2 = [parametersCopy account];
  v9 = [CNACAccountTypeAnalyzer isAccountGenericContactsSyncingOrDirectoryAccount:account2];

  if (v9)
  {
    v7 = [self genericAccountActionHandlerWithParameters:parametersCopy];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (id)appleAccountActionHandlerWithParameters:(id)parameters
{
  parametersCopy = parameters;
  action = [parametersCopy action];
  v5 = +[CNDataclassActionDefinition createSyncDataStore];
  v6 = [action isEqual:v5];

  if (v6)
  {
    v7 = off_101B8;
LABEL_9:
    v17 = [objc_alloc(*v7) initWithParameters:parametersCopy];
    goto LABEL_10;
  }

  action2 = [parametersCopy action];
  v9 = +[CNDataclassActionDefinition mergeLocalDataIntoSyncData];
  v10 = [action2 isEqual:v9];

  if (v10)
  {
    v7 = off_101C8;
    goto LABEL_9;
  }

  action3 = [parametersCopy action];
  v12 = +[CNDataclassActionDefinition mergeSyncDataIntoLocalData];
  v13 = [action3 isEqual:v12];

  if (v13)
  {
    v7 = off_101D0;
    goto LABEL_9;
  }

  action4 = [parametersCopy action];
  v15 = +[CNDataclassActionDefinition deleteSyncData];
  v16 = [action4 isEqual:v15];

  if (v16)
  {
    v7 = off_101C0;
    goto LABEL_9;
  }

  v17 = 0;
LABEL_10:

  return v17;
}

+ (id)genericAccountActionHandlerWithParameters:(id)parameters
{
  parametersCopy = parameters;
  action = [parametersCopy action];
  v5 = +[CNDataclassActionDefinition createSyncDataStore];
  v6 = [action isEqual:v5];

  if (v6)
  {
    v7 = off_101D8;
LABEL_9:
    v17 = [objc_alloc(*v7) initWithParameters:parametersCopy];
    goto LABEL_10;
  }

  action2 = [parametersCopy action];
  v9 = +[CNDataclassActionDefinition createSyncDataStoreDeleteLocalData];
  v10 = [action2 isEqual:v9];

  if (v10)
  {
    v7 = off_101E0;
    goto LABEL_9;
  }

  action3 = [parametersCopy action];
  v12 = +[CNDataclassActionDefinition createSyncDataStoreKeepLocalData];
  v13 = [action3 isEqual:v12];

  if (v13)
  {
    v7 = off_101E8;
    goto LABEL_9;
  }

  action4 = [parametersCopy action];
  v15 = +[CNDataclassActionDefinition deleteSyncData];
  v16 = [action4 isEqual:v15];

  if (v16)
  {
    v7 = &off_101F0;
    goto LABEL_9;
  }

  v17 = 0;
LABEL_10:

  return v17;
}

- (CNDataclassActionHandler)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v16.receiver = self;
  v16.super_class = CNDataclassActionHandler;
  v5 = [(CNDataclassActionHandler *)&v16 init];
  if (v5)
  {
    account = [parametersCopy account];
    account = v5->_account;
    v5->_account = account;

    childAccounts = [parametersCopy childAccounts];
    childAccounts = v5->_childAccounts;
    v5->_childAccounts = childAccounts;

    accountProvider = [parametersCopy accountProvider];
    accountProvider = v5->_accountProvider;
    v5->_accountProvider = accountProvider;

    implementation = [parametersCopy implementation];
    implementation = v5->_implementation;
    v5->_implementation = implementation;

    v14 = v5;
  }

  return v5;
}

- (BOOL)perform
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (BOOL)createContactsAccountForACAccount:(id)account withChildren:(id)children
{
  childrenCopy = children;
  accountCopy = account;
  implementation = [(CNDataclassActionHandler *)self implementation];
  v9 = [implementation createContactsAccountForParentAccount:accountCopy withChildAccounts:childrenCopy];

  return v9;
}

- (BOOL)removeContactsAccountForACAccount:(id)account withChildren:(id)children
{
  childrenCopy = children;
  accountCopy = account;
  implementation = [(CNDataclassActionHandler *)self implementation];
  v9 = [objc_opt_class() delegatesFromAccounts:childrenCopy];
  v10 = [implementation removeContactsAccountForParentAccount:accountCopy delegates:v9 withChildAccounts:childrenCopy];

  return v10;
}

+ (id)delegatesFromAccounts:(id)accounts
{
  v3 = [accounts _cn_filter:&stru_10368];
  v4 = [v3 _cn_flatMap:&stru_103A8];
  v5 = [v4 _cn_map:&stru_103E8];

  return v5;
}

- (BOOL)drainLocalStore
{
  implementation = [(CNDataclassActionHandler *)self implementation];
  emptyLocalContainer = [implementation emptyLocalContainer];

  return emptyLocalContainer;
}

- (BOOL)mergeContactsFromLocalSourceIntoSource:(id)source
{
  sourceCopy = source;
  implementation = [(CNDataclassActionHandler *)self implementation];
  v6 = [implementation mergeContactsFromLocalContainerToContainer:sourceCopy];

  return v6;
}

- (BOOL)mergeContactsIntoLocalSourceFromABAccount:(id)account
{
  accountCopy = account;
  implementation = [(CNDataclassActionHandler *)self implementation];
  v6 = [implementation mergeContactsIntoLocalContainerFromContainersOfContactsAccount:accountCopy];

  return v6;
}

- (BOOL)removeContactsAccount:(id)account
{
  accountCopy = account;
  implementation = [(CNDataclassActionHandler *)self implementation];
  v6 = [implementation removeContactsAccount:accountCopy];

  return v6;
}

- (id)copyABAccountForACAccount:(id)account withChildren:(id)children
{
  childrenCopy = children;
  accountCopy = account;
  implementation = [(CNDataclassActionHandler *)self implementation];
  v9 = [implementation contactsAccountForParentAccount:accountCopy withChildAccounts:childrenCopy];

  return v9;
}

- (void)disableLocalSourceIfNeededAddingAccount:(id)account
{
  if (([account MCIsManaged] & 1) == 0)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, os_log, OS_LOG_TYPE_DEFAULT, "It is necessary to disable the Contacts local container", v5, 2u);
    }

    [(CNDataclassActionHandler *)self setLocalSourceEnabled:0];
  }
}

- (void)enableLocalSourceIfNecessaryIgnoringAccount:(id)account
{
  accountCopy = account;
  accountProvider = [(CNDataclassActionHandler *)self accountProvider];
  v6 = [accountProvider isAnyAccountSyncableIgnoringAccount:accountCopy];

  if ((v6 & 1) == 0)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, os_log, OS_LOG_TYPE_DEFAULT, "It is necessary to enable the Contacts local container", v8, 2u);
    }

    [(CNDataclassActionHandler *)self setLocalSourceEnabled:1];
  }
}

@end