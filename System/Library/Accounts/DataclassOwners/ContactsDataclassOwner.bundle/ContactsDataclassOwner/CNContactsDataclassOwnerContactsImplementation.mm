@interface CNContactsDataclassOwnerContactsImplementation
+ (id)os_log;
+ (void)removeDelegate:(id)delegate;
- (BOOL)areContainersEmptyForParentAccount:(id)account;
- (BOOL)createAndExecuteSaveRequest:(id)request errorBlock:(id)block;
- (BOOL)createContactsAccountForParentAccount:(id)account withChildAccounts:(id)accounts;
- (BOOL)emptyLocalContainer;
- (BOOL)isContainerEmpty:(id)empty;
- (BOOL)isLocalContainerEmpty;
- (BOOL)mergeContactsFromLocalContainerToContainer:(id)container;
- (BOOL)mergeContactsIntoLocalContainerFromContainersOfContactsAccount:(id)account;
- (BOOL)moveContacts:(id)contacts fromContainer:(id)container toContainer:(id)toContainer;
- (BOOL)removeContactsAccount:(id)account;
- (BOOL)removeContactsAccountForParentAccount:(id)account delegates:(id)delegates withChildAccounts:(id)accounts;
- (CNContactsDataclassOwnerContactsImplementation)init;
- (CNContactsDataclassOwnerContactsImplementation)initWithAccountProvider:(id)provider;
- (CNContactsDataclassOwnerContactsImplementation)initWithContactStore:(id)store accountProvider:(id)provider;
- (id)accountWithExternalIdentifier:(id)identifier;
- (id)contactsAccountForParentAccount:(id)account withChildAccounts:(id)accounts;
- (id)contactsInContainer:(id)container;
- (id)containersInAccount:(id)account;
- (id)containersInAccountWithExternalIdentifier:(id)identifier;
- (id)defaultContainerForParentAccount:(id)account withChildAccounts:(id)accounts createIfNecessary:(BOOL)necessary;
- (id)defaultContainerInContactsAccount:(id)account;
- (id)localContainer;
- (id)syncingAccountIdentifierForParentAccount:(id)account withChildAccounts:(id)accounts;
- (void)setContainersEnabled:(BOOL)enabled forParentAccount:(id)account withChildAccounts:(id)accounts;
@end

@implementation CNContactsDataclassOwnerContactsImplementation

+ (id)os_log
{
  if (qword_15940 != -1)
  {
    sub_71AC();
  }

  v3 = qword_15948;

  return v3;
}

- (CNContactsDataclassOwnerContactsImplementation)init
{
  v3 = +[ACAccountStore defaultStore];
  v4 = [CNACAccountProvider providerWithStore:v3];

  v5 = [(CNContactsDataclassOwnerContactsImplementation *)self initWithAccountProvider:v4];
  return v5;
}

- (CNContactsDataclassOwnerContactsImplementation)initWithAccountProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_alloc_init(CNContactStore);
  v6 = [(CNContactsDataclassOwnerContactsImplementation *)self initWithContactStore:v5 accountProvider:providerCopy];

  return v6;
}

- (CNContactsDataclassOwnerContactsImplementation)initWithContactStore:(id)store accountProvider:(id)provider
{
  storeCopy = store;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = CNContactsDataclassOwnerContactsImplementation;
  v9 = [(CNContactsDataclassOwnerContactsImplementation *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, store);
    objc_storeStrong(&v10->_accountProvider, provider);
    v11 = v10;
  }

  return v10;
}

- (void)setContainersEnabled:(BOOL)enabled forParentAccount:(id)account withChildAccounts:(id)accounts
{
  enabledCopy = enabled;
  accountCopy = account;
  accountsCopy = accounts;
  os_log = [objc_opt_class() os_log];
  v11 = [(CNContactsDataclassOwnerContactsImplementation *)self contactsAccountForParentAccount:accountCopy withChildAccounts:accountsCopy];
  if (v11)
  {
    v12 = [(CNContactsDataclassOwnerContactsImplementation *)self containersInAccount:v11];
    if (((*(CNIsArrayEmpty + 16))(CNIsArrayEmpty, v12) & 1) == 0)
    {
      v13 = CNLogicalNot();
      v14 = [v12 _cn_filter:v13];
      v15 = [v14 _cn_map:&stru_10690];

      [v15 _cn_each:&stru_10710];
      v16 = os_log;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = @"NO";
        if (enabledCopy)
        {
          v18 = @"YES";
        }

        v22 = v18;
        v21 = [v12 count];
        identifier = [accountCopy identifier];
        v20 = [accountsCopy valueForKey:@"identifier"];
        *buf = 138544130;
        v28 = v22;
        v29 = 2048;
        v30 = v21;
        v31 = 2114;
        v32 = identifier;
        v33 = 2114;
        v34 = v20;
        _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "setting enabled to %{public}@ for %ld containers associated with account (external identifier = %{public}@ child external identifiers = %{public}@)", buf, 0x2Au);
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_3A64;
      v25[3] = &unk_10458;
      v26 = v15;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_3B08;
      v23[3] = &unk_10480;
      v24 = v16;
      v17 = v15;
      [(CNContactsDataclassOwnerContactsImplementation *)self createAndExecuteSaveRequest:v25 errorBlock:v23];
    }
  }

  else
  {
    v12 = os_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_71C0();
    }
  }
}

- (BOOL)isLocalContainerEmpty
{
  selfCopy = self;
  localContainer = [(CNContactsDataclassOwnerContactsImplementation *)self localContainer];
  LOBYTE(selfCopy) = [(CNContactsDataclassOwnerContactsImplementation *)selfCopy isContainerEmpty:localContainer];

  return selfCopy;
}

- (BOOL)areContainersEmptyForParentAccount:(id)account
{
  accountCopy = account;
  v5 = +[NSMutableArray array];
  identifier = [accountCopy identifier];
  [v5 _cn_addNonNilObject:identifier];

  accountProvider = [(CNContactsDataclassOwnerContactsImplementation *)self accountProvider];
  v8 = [accountProvider childAccountsForAccount:accountCopy];
  v9 = [v8 valueForKey:@"identifier"];
  [v5 addObjectsFromArray:v9];

  if ((*(CNIsArrayEmpty + 16))(CNIsArrayEmpty, v5))
  {
    v10 = 1;
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_3F34;
    v18[3] = &unk_104A8;
    v18[4] = self;
    v11 = [v5 _cn_map:v18];
    _cn_flatten = [v11 _cn_flatten];
    v13 = [_cn_flatten _cn_filter:CNIsNotNull];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_3F40;
    v17[3] = &unk_104D0;
    v17[4] = self;
    v14 = [v13 _cn_firstObjectPassingTest:v17];

    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      sub_734C();
    }

    v10 = v14 == 0;
  }

  return v10;
}

- (BOOL)emptyLocalContainer
{
  os_log = [objc_opt_class() os_log];
  localContainer = [(CNContactsDataclassOwnerContactsImplementation *)self localContainer];
  if (localContainer)
  {
    v5 = [(CNContactsDataclassOwnerContactsImplementation *)self contactsInContainer:localContainer];
    v6 = [v5 _cn_map:&stru_106D0];

    if (v6)
    {
      v7 = CNIsArrayEmpty;
      if ((*(CNIsArrayEmpty + 16))(CNIsArrayEmpty, v6) && os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
      {
        sub_7404(os_log);
      }
    }

    else
    {
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
      {
        sub_7448(os_log);
      }

      v7 = CNIsArrayEmpty;
    }

    if ((*(v7 + 16))(v7, v6))
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_4198;
      v15[3] = &unk_10458;
      v16 = v6;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_4248;
      v12[3] = &unk_10520;
      v9 = os_log;
      v13 = v9;
      v14 = v16;
      v8 = [(CNContactsDataclassOwnerContactsImplementation *)self createAndExecuteSaveRequest:v15 errorBlock:v12];
      if (v8)
      {
        v10 = v9;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_748C();
        }
      }
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (id)defaultContainerForParentAccount:(id)account withChildAccounts:(id)accounts createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  accountsCopy = accounts;
  accountCopy = account;
  os_log = [objc_opt_class() os_log];
  v11 = [(CNContactsDataclassOwnerContactsImplementation *)self contactsAccountForParentAccount:accountCopy withChildAccounts:accountsCopy];

  if (!accountCopy)
  {
    v19 = os_log;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_75B0(accountsCopy);
    }

    v12 = 0;
    goto LABEL_11;
  }

  v12 = [(CNContactsDataclassOwnerContactsImplementation *)self defaultContainerInContactsAccount:v11];
  if (!v12 && necessaryCopy)
  {
    v13 = objc_alloc_init(CNMutableContainer);
    [v13 setEnabled:1];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_4568;
    v29[3] = &unk_10548;
    v14 = v13;
    v30 = v14;
    v15 = v11;
    v31 = v15;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_45D8;
    v27[3] = &unk_10480;
    v16 = os_log;
    v28 = v16;
    v17 = [(CNContactsDataclassOwnerContactsImplementation *)self createAndExecuteSaveRequest:v29 errorBlock:v27];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_4628;
    v24[3] = &unk_10548;
    v25 = v14;
    v18 = v15;
    v26 = v18;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_4698;
    v22[3] = &unk_10480;
    v23 = v16;
    v19 = v14;
    v20 = [(CNContactsDataclassOwnerContactsImplementation *)self createAndExecuteSaveRequest:v24 errorBlock:v22];
    v12 = 0;
    if (v17 && v20)
    {
      v12 = [(CNContactsDataclassOwnerContactsImplementation *)self defaultContainerInContactsAccount:v18];
    }

LABEL_11:
  }

  return v12;
}

- (id)contactsAccountForParentAccount:(id)account withChildAccounts:(id)accounts
{
  v5 = [(CNContactsDataclassOwnerContactsImplementation *)self syncingAccountIdentifierForParentAccount:account withChildAccounts:accounts];
  if ((*(CNIsStringEmpty + 16))(CNIsStringEmpty, v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CNContactsDataclassOwnerContactsImplementation *)self accountWithExternalIdentifier:v5];
  }

  return v6;
}

- (BOOL)createContactsAccountForParentAccount:(id)account withChildAccounts:(id)accounts
{
  accountCopy = account;
  accountsCopy = accounts;
  os_log = [objc_opt_class() os_log];
  v9 = [(CNContactsDataclassOwnerContactsImplementation *)self syncingAccountIdentifierForParentAccount:accountCopy withChildAccounts:accountsCopy];
  if ((*(CNIsStringEmpty + 16))(CNIsStringEmpty, v9))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_4AC0;
    v29[3] = &unk_10458;
    v30 = [[CNAccount alloc] initWithExternalIdentifier:v9];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_4ACC;
    v26[3] = &unk_10520;
    v11 = os_log;
    v27 = v11;
    v12 = v9;
    v28 = v12;
    v13 = v30;
    v10 = [(CNContactsDataclassOwnerContactsImplementation *)self createAndExecuteSaveRequest:v29 errorBlock:v26];
    if (v10)
    {
      v14 = [(CNContactsDataclassOwnerContactsImplementation *)self accountWithExternalIdentifier:v12];
      v15 = [accountsCopy valueForKey:@"identifier"];
      v16 = v11;
      v17 = v16;
      if (v14)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          identifier = [v14 identifier];
          iOSLegacyIdentifier = [v14 iOSLegacyIdentifier];
          externalIdentifierString = [v14 externalIdentifierString];
          identifier2 = [accountCopy identifier];
          *buf = 138544386;
          v32 = identifier;
          v33 = 1024;
          *v34 = iOSLegacyIdentifier;
          *&v34[4] = 2114;
          *&v34[6] = externalIdentifierString;
          *&v34[14] = 2114;
          *&v34[16] = identifier2;
          v19 = identifier2;
          v35 = 2114;
          v36 = v15;
          _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "Created a local CN account (identifier = %{public}@ legacy id = %d, externalIdentifier = %{public}@) for external account with identifier %{public}@ and child identifiers %{public}@", buf, 0x30u);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        identifier3 = [accountCopy identifier];
        *buf = 138543874;
        v32 = v12;
        v33 = 2114;
        *v34 = identifier3;
        v22 = identifier3;
        *&v34[8] = 2114;
        *&v34[10] = v15;
        _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Failed to create a CN account (externalIdentifier = %{public}@) for external account with for external account with identifier %{public}@ and child identifiers %{public}@", buf, 0x20u);
      }
    }
  }

  return v10;
}

- (BOOL)removeContactsAccountForParentAccount:(id)account delegates:(id)delegates withChildAccounts:(id)accounts
{
  accountCopy = account;
  delegatesCopy = delegates;
  accountsCopy = accounts;
  os_log = [objc_opt_class() os_log];
  v12 = [(CNContactsDataclassOwnerContactsImplementation *)self contactsAccountForParentAccount:accountCopy withChildAccounts:accountsCopy];
  if (v12)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_4C70;
    v16[3] = &unk_10570;
    v16[4] = self;
    [delegatesCopy _cn_each:v16];
    v13 = [(CNContactsDataclassOwnerContactsImplementation *)self removeContactsAccount:v12];
  }

  else
  {
    v14 = [(CNContactsDataclassOwnerContactsImplementation *)self syncingAccountIdentifierForParentAccount:accountCopy withChildAccounts:accountsCopy];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_77E4();
    }

    v13 = 0;
  }

  return v13;
}

+ (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  first = [delegateCopy first];
  second = [delegateCopy second];

  v6 = [[CNAccount alloc] initWithExternalIdentifier:first];
  v7 = [[CNCoreDelegateInfo alloc] initWithDSID:0 altDSID:second appleID:0 principalPath:0 nameComponents:0 isMe:0];
  v8 = [CNContactStore storeWithDelegateInfo:v7];
  v9 = objc_alloc_init(CNSaveRequest);
  [v9 removeAccount:v6];
  v13 = 0;
  v10 = [v8 executeSaveRequest:v9 error:&v13];
  v11 = v13;
  if ((v10 & 1) == 0)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_784C();
    }
  }
}

- (BOOL)removeContactsAccount:(id)account
{
  accountCopy = account;
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    sub_78B8(accountCopy);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_4F68;
  v13[3] = &unk_10458;
  v14 = accountCopy;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_4FC0;
  v10[3] = &unk_10520;
  v11 = os_log;
  v12 = v14;
  v6 = v14;
  v7 = os_log;
  v8 = [(CNContactsDataclassOwnerContactsImplementation *)self createAndExecuteSaveRequest:v13 errorBlock:v10];

  return v8;
}

- (BOOL)mergeContactsFromLocalContainerToContainer:(id)container
{
  containerCopy = container;
  os_log = [objc_opt_class() os_log];
  localContainer = [(CNContactsDataclassOwnerContactsImplementation *)self localContainer];
  if (localContainer)
  {
    v7 = [(CNContactsDataclassOwnerContactsImplementation *)self contactsInContainer:localContainer];
    v8 = [v7 _cn_map:&stru_106D0];

    if (![v8 count])
    {
      v9 = os_log;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_7A28(containerCopy);
      }
    }

    if ((*(CNIsArrayEmpty + 16))(CNIsArrayEmpty, v8))
    {
      v10 = 1;
    }

    else
    {
      contactStore = [(CNContactsDataclassOwnerContactsImplementation *)self contactStore];
      v22 = 0;
      v10 = [contactStore moveContacts:v8 fromContainer:localContainer toContainer:containerCopy error:&v22];
      v12 = v22;

      v13 = os_log;
      v14 = v13;
      if (v10)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v21 = [v8 count];
          identifier = [localContainer identifier];
          iOSLegacyIdentifier = [localContainer iOSLegacyIdentifier];
          identifier2 = [containerCopy identifier];
          iOSLegacyIdentifier2 = [containerCopy iOSLegacyIdentifier];
          *buf = 134219522;
          v24 = v21;
          v25 = 2114;
          v26 = identifier;
          v27 = 1024;
          *v28 = iOSLegacyIdentifier;
          *&v28[4] = 2112;
          *&v28[6] = containerCopy;
          v29 = 2114;
          v30 = identifier2;
          v31 = 1024;
          v32 = iOSLegacyIdentifier2;
          v33 = 2112;
          v34 = v12;
          _os_log_debug_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "Migrated %ld contacts to from local container (identifier = %{public}@ legacy id: %d) to container %@ (identifier = %{public}@ legacy id %d): %@", buf, 0x40u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = [v8 count];
        *buf = 134218498;
        v24 = v20;
        v25 = 2112;
        v26 = containerCopy;
        v27 = 2112;
        *v28 = v12;
        _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "did not migrate %ld contacts to from local container to container %@: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)mergeContactsIntoLocalContainerFromContainersOfContactsAccount:(id)account
{
  accountCopy = account;
  localContainer = [(CNContactsDataclassOwnerContactsImplementation *)self localContainer];
  if (localContainer)
  {
    v6 = [(CNContactsDataclassOwnerContactsImplementation *)self containersInAccount:accountCopy];
    if (v6)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 1;
      os_log = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
      {
        identifier = [accountCopy identifier];
        externalIdentifierString = [accountCopy externalIdentifierString];
        iOSLegacyIdentifier = [accountCopy iOSLegacyIdentifier];
        *buf = 138543874;
        v23 = identifier;
        v24 = 2114;
        v25 = externalIdentifierString;
        v26 = 1024;
        v27 = iOSLegacyIdentifier;
        _os_log_debug_impl(&dword_0, os_log, OS_LOG_TYPE_DEBUG, "Merging contacts into local container from account with CN identifier: %{public}@ external identifier: %{public}@ legacy id = %d", buf, 0x1Cu);
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_5568;
      v17[3] = &unk_10598;
      v17[4] = self;
      v8 = [v6 _cn_map:v17];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_5600;
      v14[3] = &unk_105C0;
      v14[4] = self;
      v15 = localContainer;
      v16 = &v18;
      [v8 _cn_each:v14];

      v9 = *(v19 + 24);
      _Block_object_dispose(&v18, 8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)moveContacts:(id)contacts fromContainer:(id)container toContainer:(id)toContainer
{
  contactsCopy = contacts;
  containerCopy = container;
  toContainerCopy = toContainer;
  os_log = [objc_opt_class() os_log];
  contactStore = [(CNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v22 = 0;
  v13 = [contactStore moveContacts:contactsCopy fromContainer:containerCopy toContainer:toContainerCopy error:&v22];
  v14 = v22;

  if (v13)
  {
    v15 = os_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v21 = [contactsCopy count];
      identifier = [toContainerCopy identifier];
      iOSLegacyIdentifier = [toContainerCopy iOSLegacyIdentifier];
      identifier2 = [containerCopy identifier];
      iOSLegacyIdentifier2 = [containerCopy iOSLegacyIdentifier];
      *buf = 134219010;
      v24 = v21;
      v25 = 2114;
      v26 = identifier;
      v27 = 1024;
      v28 = iOSLegacyIdentifier;
      v29 = 2114;
      v30 = identifier2;
      v31 = 1024;
      v32 = iOSLegacyIdentifier2;
      _os_log_debug_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "Moved %ld contacts into container (CN identifier: %{public}@ legacy id = %d) from container (CN identifier: %{public}@ legacy id = %d)", buf, 0x2Cu);
    }
  }

  else if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
  {
    sub_7AC4();
  }

  return v13;
}

- (id)syncingAccountIdentifierForParentAccount:(id)account withChildAccounts:(id)accounts
{
  accountCopy = account;
  accountsCopy = accounts;
  accountProvider = [(CNContactsDataclassOwnerContactsImplementation *)self accountProvider];
  v9 = [accountProvider isAccountSyncable:accountCopy];

  if (v9)
  {
    identifier = [accountCopy identifier];
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = accountsCopy;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          accountProvider2 = [(CNContactsDataclassOwnerContactsImplementation *)self accountProvider];
          v18 = [accountProvider2 isAccountSyncable:v16];

          if (v18)
          {
            identifier = [v16 identifier];

            goto LABEL_15;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_7B30(accountCopy);
    }

    identifier = 0;
  }

LABEL_15:

  return identifier;
}

- (BOOL)isContainerEmpty:(id)empty
{
  emptyCopy = empty;
  v5 = [CNContactFetchRequest alloc];
  v19 = CNContactIdentifierKey;
  v6 = [NSArray arrayWithObjects:&v19 count:1];
  v7 = [v5 initWithKeysToFetch:v6];

  [v7 setUnifyResults:0];
  identifier = [emptyCopy identifier];
  v9 = [CNContact predicateForContactsInContainerWithIdentifier:identifier];
  [v7 setPredicate:v9];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  contactStore = [(CNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v13[4] = &v15;
  v14 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5C60;
  v13[3] = &unk_105E8;
  [contactStore enumerateContactsWithFetchRequest:v7 error:&v14 usingBlock:v13];
  v11 = v14;

  LODWORD(contactStore) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return contactStore == 0;
}

- (id)localContainer
{
  os_log = [objc_opt_class() os_log];
  contactStore = [(CNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v5 = [CNContainer predicateForLocalContainerIncludingDisabled:1];
  v12 = 0;
  v6 = [contactStore containersMatchingPredicate:v5 error:&v12];
  v7 = v12;
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    v9 = os_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_7BBC(firstObject);
    }

    v10 = firstObject;
  }

  else if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
  {
    sub_7C58();
  }

  return firstObject;
}

- (id)defaultContainerInContactsAccount:(id)account
{
  accountCopy = account;
  os_log = [objc_opt_class() os_log];
  identifier = [accountCopy identifier];
  v7 = [CNContainer predicateForDefaultContainerForAccountWithIdentifier:identifier];

  contactStore = [(CNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v16 = 0;
  v9 = [contactStore containersMatchingPredicate:v7 error:&v16];
  v10 = v16;
  firstObject = [v9 firstObject];

  v12 = os_log;
  v13 = v12;
  if (firstObject)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_7CC0(firstObject, accountCopy, v13);
    }

    v14 = firstObject;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_7DD4();
    }
  }

  return firstObject;
}

- (id)containersInAccountWithExternalIdentifier:(id)identifier
{
  v4 = [(CNContactsDataclassOwnerContactsImplementation *)self accountWithExternalIdentifier:identifier];
  if (v4)
  {
    v5 = [(CNContactsDataclassOwnerContactsImplementation *)self containersInAccount:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)accountWithExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_log = [objc_opt_class() os_log];
  v6 = [CNAccount predicateForAccountWithExternalIdentifier:identifierCopy];
  contactStore = [(CNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v14 = 0;
  v8 = [contactStore accountsMatchingPredicate:v6 error:&v14];
  v9 = v14;
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    v11 = os_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_7E94();
    }

    v12 = firstObject;
  }

  else if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
  {
    sub_7F70();
  }

  return firstObject;
}

- (id)containersInAccount:(id)account
{
  accountCopy = account;
  os_log = [objc_opt_class() os_log];
  identifier = [accountCopy identifier];
  v7 = [CNContainer predicateForContainersInAccountWithIdentifier:identifier includingDisabledContainers:1];

  contactStore = [(CNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v15 = 0;
  v9 = [contactStore containersMatchingPredicate:v7 error:&v15];
  v10 = v15;

  v11 = os_log;
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_7FDC();
    }

    v13 = v9;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_80BC();
    }
  }

  return v9;
}

- (id)contactsInContainer:(id)container
{
  containerCopy = container;
  v5 = [CNContactFetchRequest alloc];
  v18 = CNContactIdentifierKey;
  v6 = [NSArray arrayWithObjects:&v18 count:1];
  v7 = [v5 initWithKeysToFetch:v6];

  [v7 setUnifyResults:0];
  identifier = [containerCopy identifier];

  v9 = [CNContact predicateForContactsInContainerWithIdentifier:identifier];
  [v7 setPredicate:v9];

  v10 = +[NSMutableArray array];
  contactStore = [(CNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v17 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_63B8;
  v15[3] = &unk_10610;
  v12 = v10;
  v16 = v12;
  [contactStore enumerateContactsWithFetchRequest:v7 error:&v17 usingBlock:v15];
  v13 = v17;

  return v12;
}

- (BOOL)createAndExecuteSaveRequest:(id)request errorBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  v8 = objc_alloc_init(CNSaveRequest);
  if (requestCopy)
  {
    requestCopy[2](requestCopy, v8);
  }

  contactStore = [(CNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v13 = 0;
  v10 = [contactStore executeSaveRequest:v8 error:&v13];
  v11 = v13;

  if (blockCopy && (v10 & 1) == 0)
  {
    blockCopy[2](blockCopy, v11);
  }

  return v10;
}

@end