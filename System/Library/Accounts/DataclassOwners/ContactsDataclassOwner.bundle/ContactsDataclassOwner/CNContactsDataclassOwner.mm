@interface CNContactsDataclassOwner
+ (OS_os_log)log;
+ (id)dataclasses;
- (BOOL)areSourcesEmptyForAccount:(id)account;
- (BOOL)isLocalSourceEmpty;
- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass;
- (CNContactsDataclassOwner)init;
- (CNContactsDataclassOwner)initWithImplementation:(id)implementation accountProvider:(id)provider;
- (id)actionsForDeletingAccount:(id)account forDataclass:(id)dataclass;
- (id)actionsForDeletingAppleAccount:(id)account;
- (id)actionsForDeletingGenericAccount:(id)account;
- (id)actionsForDisablingDataclassOnAccount:(id)account forDataclass:(id)dataclass;
- (id)actionsForDisablingDataclassOnAppleAccount:(id)account;
- (id)actionsForDisablingDataclassOnGenericAccount:(id)account;
- (id)actionsForEnablingDataclassOnAccount:(id)account forDataclass:(id)dataclass;
- (id)actionsForEnablingDataclassOnAppleAccount:(id)account;
- (id)actionsForEnablingDataclassOnGenericAccount:(id)account;
@end

@implementation CNContactsDataclassOwner

+ (id)dataclasses
{
  v4 = kAccountDataclassContacts;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (OS_os_log)log
{
  if (qword_15920 != -1)
  {
    sub_6AF4();
  }

  v3 = qword_15928;

  return v3;
}

- (CNContactsDataclassOwner)init
{
  v3 = +[ACAccountStore defaultStore];
  v4 = objc_alloc_init(CNContactStore);
  v5 = [CNACAccountProvider providerWithStore:v3];
  v6 = [[CNContactsDataclassOwnerContactsImplementation alloc] initWithContactStore:v4 accountProvider:v5];
  v7 = [(CNContactsDataclassOwner *)self initWithImplementation:v6 accountProvider:v5];

  return v7;
}

- (CNContactsDataclassOwner)initWithImplementation:(id)implementation accountProvider:(id)provider
{
  implementationCopy = implementation;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = CNContactsDataclassOwner;
  v9 = [(CNContactsDataclassOwner *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_implementation, implementation);
    objc_storeStrong(&v10->_accountProvider, provider);
    v11 = v10;
  }

  return v10;
}

- (id)actionsForEnablingDataclassOnAccount:(id)account forDataclass:(id)dataclass
{
  accountCopy = account;
  if ([CNACAccountTypeAnalyzer isAccountAppleAccount:accountCopy])
  {
    v6 = [(CNContactsDataclassOwner *)self actionsForEnablingDataclassOnAppleAccount:accountCopy];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  if ([CNACAccountTypeAnalyzer isAccountGenericContactsSyncingAccount:accountCopy])
  {
    v6 = [(CNContactsDataclassOwner *)self actionsForEnablingDataclassOnGenericAccount:accountCopy];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)actionsForEnablingDataclassOnAppleAccount:(id)account
{
  accountCopy = account;
  isLocalSourceEmpty = [(CNContactsDataclassOwner *)self isLocalSourceEmpty];
  v6 = [objc_opt_class() log];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (isLocalSourceEmpty)
  {
    if (v7)
    {
      sub_6B70();
    }

    v8 = +[CNDataclassActionDefinition createSyncDataStore];
    v13 = v8;
    v9 = [NSArray arrayWithObjects:&v13 count:1];
  }

  else
  {
    if (v7)
    {
      sub_6B08();
    }

    v8 = +[CNDataclassActionDefinition mergeLocalDataIntoSyncData];
    v10 = +[CNDataclassActionDefinition cancel];
    v12[1] = v10;
    v9 = [NSArray arrayWithObjects:v12 count:2];
  }

  return v9;
}

- (id)actionsForEnablingDataclassOnGenericAccount:(id)account
{
  accountCopy = account;
  isLocalSourceEmpty = [(CNContactsDataclassOwner *)self isLocalSourceEmpty];
  v6 = [objc_opt_class() log];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (isLocalSourceEmpty)
  {
    if (v7)
    {
      sub_6C40();
    }

    v8 = +[CNDataclassActionDefinition createSyncDataStore];
    v14 = v8;
    v9 = [NSArray arrayWithObjects:&v14 count:1];
  }

  else
  {
    if (v7)
    {
      sub_6BD8();
    }

    v8 = +[CNDataclassActionDefinition createSyncDataStoreKeepLocalData];
    v13[0] = v8;
    v10 = +[CNDataclassActionDefinition createSyncDataStoreDeleteLocalData];
    v13[1] = v10;
    v11 = +[CNDataclassActionDefinition cancel];
    v13[2] = v11;
    v9 = [NSArray arrayWithObjects:v13 count:3];
  }

  return v9;
}

- (id)actionsForDeletingAccount:(id)account forDataclass:(id)dataclass
{
  accountCopy = account;
  if ([CNACAccountTypeAnalyzer isAccountAppleAccount:accountCopy])
  {
    v6 = [(CNContactsDataclassOwner *)self actionsForDeletingAppleAccount:accountCopy];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  if ([CNACAccountTypeAnalyzer isAccountGenericContactsSyncingAccount:accountCopy])
  {
    v6 = [(CNContactsDataclassOwner *)self actionsForDeletingGenericAccount:accountCopy];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)actionsForDeletingAppleAccount:(id)account
{
  accountCopy = account;
  if (+[CNACAccountTypeAnalyzer isiCloudSignoutRestrictionEnabled])
  {
    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_6D78();
    }

    v6 = +[CNDataclassActionDefinition cancelDueToRestrictions];
    v17 = v6;
    v7 = &v17;
LABEL_9:
    v11 = [NSArray arrayWithObjects:v7 count:1];
    goto LABEL_13;
  }

  v8 = [(CNContactsDataclassOwner *)self areSourcesEmptyForAccount:accountCopy];
  v9 = [objc_opt_class() log];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      sub_6D10();
    }

    v6 = +[CNDataclassActionDefinition deleteSyncData];
    v16 = v6;
    v7 = &v16;
    goto LABEL_9;
  }

  if (v10)
  {
    sub_6CA8();
  }

  v6 = +[CNDataclassActionDefinition deleteSyncData];
  v12 = +[CNDataclassActionDefinition mergeSyncDataIntoLocalData];
  v15[1] = v12;
  v13 = +[CNDataclassActionDefinition cancel];
  v15[2] = v13;
  v11 = [NSArray arrayWithObjects:v15 count:3];

LABEL_13:

  return v11;
}

- (id)actionsForDeletingGenericAccount:(id)account
{
  accountCopy = account;
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_6DE0();
  }

  v5 = +[CNDataclassActionDefinition deleteSyncData];
  v9[0] = v5;
  v6 = +[CNDataclassActionDefinition cancel];
  v9[1] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:2];

  return v7;
}

- (id)actionsForDisablingDataclassOnAccount:(id)account forDataclass:(id)dataclass
{
  accountCopy = account;
  if ([CNACAccountTypeAnalyzer isAccountAppleAccount:accountCopy])
  {
    v6 = [(CNContactsDataclassOwner *)self actionsForDisablingDataclassOnAppleAccount:accountCopy];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  if ([CNACAccountTypeAnalyzer isAccountPopularContactsSyncingAccount:accountCopy])
  {
    v6 = [(CNContactsDataclassOwner *)self actionsForDisablingDataclassOnGenericAccount:accountCopy];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)actionsForDisablingDataclassOnAppleAccount:(id)account
{
  accountCopy = account;
  if (+[CNACAccountTypeAnalyzer isiCloudSignoutRestrictionEnabled])
  {
    v5 = +[CNDataclassActionDefinition cancelDueToRestrictions];
    v15 = v5;
    v6 = &v15;
LABEL_5:
    v9 = [NSArray arrayWithObjects:v6 count:1];
    goto LABEL_7;
  }

  v7 = [(CNContactsDataclassOwner *)self areSourcesEmptyForAccount:accountCopy];
  v8 = +[CNDataclassActionDefinition deleteSyncData];
  v5 = v8;
  if (v7)
  {
    v14 = v8;
    v6 = &v14;
    goto LABEL_5;
  }

  v10 = +[CNDataclassActionDefinition mergeSyncDataIntoLocalData];
  v13[1] = v10;
  v11 = +[CNDataclassActionDefinition cancel];
  v13[2] = v11;
  v9 = [NSArray arrayWithObjects:v13 count:3];

LABEL_7:

  return v9;
}

- (id)actionsForDisablingDataclassOnGenericAccount:(id)account
{
  v3 = +[CNDataclassActionDefinition deleteSyncData];
  v7[0] = v3;
  v4 = +[CNDataclassActionDefinition cancel];
  v7[1] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass
{
  actionCopy = action;
  accountCopy = account;
  childrenCopy = children;
  v12 = objc_alloc_init(CNDataclassActionParameters);
  [(CNDataclassActionParameters *)v12 setAction:actionCopy];
  [(CNDataclassActionParameters *)v12 setAccount:accountCopy];
  [(CNDataclassActionParameters *)v12 setChildAccounts:childrenCopy];

  accountProvider = [(CNContactsDataclassOwner *)self accountProvider];
  [(CNDataclassActionParameters *)v12 setAccountProvider:accountProvider];

  implementation = [(CNContactsDataclassOwner *)self implementation];
  [(CNDataclassActionParameters *)v12 setImplementation:implementation];

  v15 = [CNDataclassActionHandler actionHandlerSuitableForParameters:v12];
  v16 = [objc_opt_class() log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134218754;
    selfCopy = self;
    v21 = 2112;
    v22 = actionCopy;
    v23 = 2112;
    v24 = accountCopy;
    v25 = 2112;
    v26 = v15;
    _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%p - CNContactsDataclassOwner will performAction (%@) forAccount (%@) with handler (%@).", &v19, 0x2Au);
  }

  perform = [v15 perform];
  return perform;
}

- (BOOL)isLocalSourceEmpty
{
  implementation = [(CNContactsDataclassOwner *)self implementation];
  isLocalContainerEmpty = [implementation isLocalContainerEmpty];

  return isLocalContainerEmpty;
}

- (BOOL)areSourcesEmptyForAccount:(id)account
{
  accountCopy = account;
  implementation = [(CNContactsDataclassOwner *)self implementation];
  v6 = [implementation areContainersEmptyForParentAccount:accountCopy];

  return v6;
}

@end