@interface CNDataclassActionHandler
+ (OS_os_log)os_log;
+ (id)actionHandlerSuitableForParameters:(id)a3;
+ (id)appleAccountActionHandlerWithParameters:(id)a3;
+ (id)delegatesFromAccounts:(id)a3;
+ (id)genericAccountActionHandlerWithParameters:(id)a3;
- (BOOL)createContactsAccountForACAccount:(id)a3 withChildren:(id)a4;
- (BOOL)drainLocalStore;
- (BOOL)mergeContactsFromLocalSourceIntoSource:(id)a3;
- (BOOL)mergeContactsIntoLocalSourceFromABAccount:(id)a3;
- (BOOL)perform;
- (BOOL)removeContactsAccount:(id)a3;
- (BOOL)removeContactsAccountForACAccount:(id)a3 withChildren:(id)a4;
- (CNDataclassActionHandler)initWithParameters:(id)a3;
- (id)copyABAccountForACAccount:(id)a3 withChildren:(id)a4;
- (void)disableLocalSourceIfNeededAddingAccount:(id)a3;
- (void)enableLocalSourceIfNecessaryIgnoringAccount:(id)a3;
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

+ (id)actionHandlerSuitableForParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 account];
  v6 = [CNACAccountTypeAnalyzer isAccountAppleAccount:v5];

  if (v6)
  {
    v7 = [a1 appleAccountActionHandlerWithParameters:v4];
LABEL_5:
    v10 = v7;
    goto LABEL_7;
  }

  v8 = [v4 account];
  v9 = [CNACAccountTypeAnalyzer isAccountGenericContactsSyncingOrDirectoryAccount:v8];

  if (v9)
  {
    v7 = [a1 genericAccountActionHandlerWithParameters:v4];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (id)appleAccountActionHandlerWithParameters:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  v5 = +[CNDataclassActionDefinition createSyncDataStore];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = off_101B8;
LABEL_9:
    v17 = [objc_alloc(*v7) initWithParameters:v3];
    goto LABEL_10;
  }

  v8 = [v3 action];
  v9 = +[CNDataclassActionDefinition mergeLocalDataIntoSyncData];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v7 = off_101C8;
    goto LABEL_9;
  }

  v11 = [v3 action];
  v12 = +[CNDataclassActionDefinition mergeSyncDataIntoLocalData];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    v7 = off_101D0;
    goto LABEL_9;
  }

  v14 = [v3 action];
  v15 = +[CNDataclassActionDefinition deleteSyncData];
  v16 = [v14 isEqual:v15];

  if (v16)
  {
    v7 = off_101C0;
    goto LABEL_9;
  }

  v17 = 0;
LABEL_10:

  return v17;
}

+ (id)genericAccountActionHandlerWithParameters:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  v5 = +[CNDataclassActionDefinition createSyncDataStore];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = off_101D8;
LABEL_9:
    v17 = [objc_alloc(*v7) initWithParameters:v3];
    goto LABEL_10;
  }

  v8 = [v3 action];
  v9 = +[CNDataclassActionDefinition createSyncDataStoreDeleteLocalData];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v7 = off_101E0;
    goto LABEL_9;
  }

  v11 = [v3 action];
  v12 = +[CNDataclassActionDefinition createSyncDataStoreKeepLocalData];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    v7 = off_101E8;
    goto LABEL_9;
  }

  v14 = [v3 action];
  v15 = +[CNDataclassActionDefinition deleteSyncData];
  v16 = [v14 isEqual:v15];

  if (v16)
  {
    v7 = &off_101F0;
    goto LABEL_9;
  }

  v17 = 0;
LABEL_10:

  return v17;
}

- (CNDataclassActionHandler)initWithParameters:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CNDataclassActionHandler;
  v5 = [(CNDataclassActionHandler *)&v16 init];
  if (v5)
  {
    v6 = [v4 account];
    account = v5->_account;
    v5->_account = v6;

    v8 = [v4 childAccounts];
    childAccounts = v5->_childAccounts;
    v5->_childAccounts = v8;

    v10 = [v4 accountProvider];
    accountProvider = v5->_accountProvider;
    v5->_accountProvider = v10;

    v12 = [v4 implementation];
    implementation = v5->_implementation;
    v5->_implementation = v12;

    v14 = v5;
  }

  return v5;
}

- (BOOL)perform
{
  v2 = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (BOOL)createContactsAccountForACAccount:(id)a3 withChildren:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNDataclassActionHandler *)self implementation];
  v9 = [v8 createContactsAccountForParentAccount:v7 withChildAccounts:v6];

  return v9;
}

- (BOOL)removeContactsAccountForACAccount:(id)a3 withChildren:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNDataclassActionHandler *)self implementation];
  v9 = [objc_opt_class() delegatesFromAccounts:v6];
  v10 = [v8 removeContactsAccountForParentAccount:v7 delegates:v9 withChildAccounts:v6];

  return v10;
}

+ (id)delegatesFromAccounts:(id)a3
{
  v3 = [a3 _cn_filter:&stru_10368];
  v4 = [v3 _cn_flatMap:&stru_103A8];
  v5 = [v4 _cn_map:&stru_103E8];

  return v5;
}

- (BOOL)drainLocalStore
{
  v2 = [(CNDataclassActionHandler *)self implementation];
  v3 = [v2 emptyLocalContainer];

  return v3;
}

- (BOOL)mergeContactsFromLocalSourceIntoSource:(id)a3
{
  v4 = a3;
  v5 = [(CNDataclassActionHandler *)self implementation];
  v6 = [v5 mergeContactsFromLocalContainerToContainer:v4];

  return v6;
}

- (BOOL)mergeContactsIntoLocalSourceFromABAccount:(id)a3
{
  v4 = a3;
  v5 = [(CNDataclassActionHandler *)self implementation];
  v6 = [v5 mergeContactsIntoLocalContainerFromContainersOfContactsAccount:v4];

  return v6;
}

- (BOOL)removeContactsAccount:(id)a3
{
  v4 = a3;
  v5 = [(CNDataclassActionHandler *)self implementation];
  v6 = [v5 removeContactsAccount:v4];

  return v6;
}

- (id)copyABAccountForACAccount:(id)a3 withChildren:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNDataclassActionHandler *)self implementation];
  v9 = [v8 contactsAccountForParentAccount:v7 withChildAccounts:v6];

  return v9;
}

- (void)disableLocalSourceIfNeededAddingAccount:(id)a3
{
  if (([a3 MCIsManaged] & 1) == 0)
  {
    v4 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "It is necessary to disable the Contacts local container", v5, 2u);
    }

    [(CNDataclassActionHandler *)self setLocalSourceEnabled:0];
  }
}

- (void)enableLocalSourceIfNecessaryIgnoringAccount:(id)a3
{
  v4 = a3;
  v5 = [(CNDataclassActionHandler *)self accountProvider];
  v6 = [v5 isAnyAccountSyncableIgnoringAccount:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "It is necessary to enable the Contacts local container", v8, 2u);
    }

    [(CNDataclassActionHandler *)self setLocalSourceEnabled:1];
  }
}

@end