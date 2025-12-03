@interface NCCNContactsDataclassOwnerContactsImplementation
+ (id)os_log;
- (BOOL)createAndExecuteSaveRequest:(id)request errorBlock:(id)block;
- (BOOL)createContactsAccountForParentAccount:(id)account withChildAccounts:(id)accounts;
- (BOOL)isContainerEmpty:(id)empty;
- (BOOL)isLocalContainerEmpty;
- (BOOL)mergeContactsFromLocalContainerToContainer:(id)container;
- (NCCNContactsDataclassOwnerContactsImplementation)initWithContactStore:(id)store accountProvider:(id)provider;
- (id)accountWithExternalIdentifier:(id)identifier;
- (id)contactsAccountForParentAccount:(id)account withChildAccounts:(id)accounts;
- (id)contactsInContainer:(id)container;
- (id)containersInAccount:(id)account;
- (id)containersInAccountWithExternalIdentifier:(id)identifier;
- (id)defaultContainerForParentAccount:(id)account withChildAccounts:(id)accounts createIfNecessary:(BOOL)necessary;
- (id)defaultContainerInContactsAccount:(id)account;
- (id)localContainer;
- (id)syncingAccountIdentifierForParentAccount:(id)account withChildAccounts:(id)accounts;
@end

@implementation NCCNContactsDataclassOwnerContactsImplementation

+ (id)os_log
{
  if (qword_23A30 != -1)
  {
    sub_E0FC();
  }

  v3 = qword_23A38;

  return v3;
}

- (NCCNContactsDataclassOwnerContactsImplementation)initWithContactStore:(id)store accountProvider:(id)provider
{
  storeCopy = store;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = NCCNContactsDataclassOwnerContactsImplementation;
  v9 = [(NCCNContactsDataclassOwnerContactsImplementation *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, store);
    objc_storeStrong(&v10->_accountProvider, provider);
    v11 = v10;
  }

  return v10;
}

- (BOOL)isLocalContainerEmpty
{
  selfCopy = self;
  localContainer = [(NCCNContactsDataclassOwnerContactsImplementation *)self localContainer];
  LOBYTE(selfCopy) = [(NCCNContactsDataclassOwnerContactsImplementation *)selfCopy isContainerEmpty:localContainer];

  return selfCopy;
}

- (id)defaultContainerForParentAccount:(id)account withChildAccounts:(id)accounts createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  accountsCopy = accounts;
  v9 = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactsAccountForParentAccount:account withChildAccounts:accountsCopy];
  if (!account)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_E178(accountsCopy);
    }

    v10 = 0;
    goto LABEL_11;
  }

  v10 = [(NCCNContactsDataclassOwnerContactsImplementation *)self defaultContainerInContactsAccount:v9];
  if (!v10 && necessaryCopy)
  {
    v11 = objc_alloc_init(CNMutableContainer);
    [v11 setEnabled:1];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_3A4C;
    v31[3] = &unk_1C568;
    v12 = v11;
    v32 = v12;
    v13 = v9;
    v33 = v13;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_3ABC;
    v30[3] = &unk_1C540;
    v30[4] = self;
    v14 = [(NCCNContactsDataclassOwnerContactsImplementation *)self createAndExecuteSaveRequest:v31 errorBlock:v30];
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_3B1C;
    v27 = &unk_1C568;
    v28 = v12;
    v15 = v13;
    v29 = v15;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_3B8C;
    v22 = &unk_1C540;
    selfCopy = self;
    os_log = v12;
    v17 = [(NCCNContactsDataclassOwnerContactsImplementation *)self createAndExecuteSaveRequest:&v24 errorBlock:&v19];
    v10 = 0;
    if (v14 && v17)
    {
      v10 = [(NCCNContactsDataclassOwnerContactsImplementation *)self defaultContainerInContactsAccount:v15, v19, v20, v21, v22, selfCopy, v24, v25, v26, v27, v28, v29];
    }

LABEL_11:
  }

  return v10;
}

- (id)contactsAccountForParentAccount:(id)account withChildAccounts:(id)accounts
{
  v5 = [(NCCNContactsDataclassOwnerContactsImplementation *)self syncingAccountIdentifierForParentAccount:account withChildAccounts:accounts];
  if ((*(CNIsStringEmpty + 16))(CNIsStringEmpty, v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NCCNContactsDataclassOwnerContactsImplementation *)self accountWithExternalIdentifier:v5];
  }

  return v6;
}

- (BOOL)createContactsAccountForParentAccount:(id)account withChildAccounts:(id)accounts
{
  accountCopy = account;
  accountsCopy = accounts;
  v8 = [(NCCNContactsDataclassOwnerContactsImplementation *)self syncingAccountIdentifierForParentAccount:accountCopy withChildAccounts:accountsCopy];
  if ((*(CNIsStringEmpty + 16))(CNIsStringEmpty, v8))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_3EF0;
    v19[3] = &unk_1C518;
    v10 = [[CNAccount alloc] initWithExternalIdentifier:v8];
    v20 = v10;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_3EFC;
    v17[3] = &unk_1C590;
    v17[4] = self;
    v18 = v8;
    v9 = [(NCCNContactsDataclassOwnerContactsImplementation *)self createAndExecuteSaveRequest:v19 errorBlock:v17];
    if (v9)
    {
      os_log = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
      {
        identifier = [v10 identifier];
        iOSLegacyIdentifier = [v10 iOSLegacyIdentifier];
        identifier2 = [accountCopy identifier];
        v16 = [accountsCopy valueForKey:@"identifier"];
        *buf = 138544130;
        v22 = identifier;
        v23 = 1024;
        v24 = iOSLegacyIdentifier;
        v25 = 2114;
        v26 = identifier2;
        v27 = 2114;
        v28 = v16;
        _os_log_debug_impl(&dword_0, os_log, OS_LOG_TYPE_DEBUG, "Created a local CN account (identifier = %{public}@  legacy id = %d) for external account with identifier %{public}@ and child identifiers %{public}@", buf, 0x26u);
      }
    }
  }

  return v9;
}

- (BOOL)mergeContactsFromLocalContainerToContainer:(id)container
{
  containerCopy = container;
  localContainer = [(NCCNContactsDataclassOwnerContactsImplementation *)self localContainer];
  if (!localContainer)
  {
    v9 = 1;
    goto LABEL_19;
  }

  v6 = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactsInContainer:localContainer];
  v7 = [v6 _cn_map:&stru_1C620];

  if (!v7)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      sub_E44C(containerCopy);
    }

    goto LABEL_9;
  }

  if (![v7 count])
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      sub_E3B0(containerCopy);
    }

LABEL_9:
  }

  if ((*(CNIsArrayEmpty + 16))(CNIsArrayEmpty, v7))
  {
    v9 = 1;
  }

  else
  {
    contactStore = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
    v21 = 0;
    v9 = [contactStore moveContacts:v7 fromContainer:localContainer toContainer:containerCopy error:&v21];
    v11 = v21;

    os_log2 = [objc_opt_class() os_log];
    v13 = os_log2;
    if (v9)
    {
      if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v7 count];
        identifier = [localContainer identifier];
        iOSLegacyIdentifier = [localContainer iOSLegacyIdentifier];
        identifier2 = [containerCopy identifier];
        iOSLegacyIdentifier2 = [containerCopy iOSLegacyIdentifier];
        *buf = 134219522;
        v23 = v14;
        v24 = 2114;
        v25 = identifier;
        v26 = 1024;
        *v27 = iOSLegacyIdentifier;
        *&v27[4] = 2112;
        *&v27[6] = containerCopy;
        v28 = 2114;
        v29 = identifier2;
        v30 = 1024;
        v31 = iOSLegacyIdentifier2;
        v32 = 2112;
        v33 = v11;
        _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "Migrated %ld contacts to from local container (identifier = %{public}@ legacy id: %d) to container %@ (identifier = %{public}@ legacy id %d): %@", buf, 0x40u);
      }
    }

    else if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      v20 = [v7 count];
      *buf = 134218498;
      v23 = v20;
      v24 = 2112;
      v25 = containerCopy;
      v26 = 2112;
      *v27 = v11;
      _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "did not migrate %ld contacts to from local container to container %@: %@", buf, 0x20u);
    }
  }

LABEL_19:
  return v9;
}

- (id)syncingAccountIdentifierForParentAccount:(id)account withChildAccounts:(id)accounts
{
  accountCopy = account;
  accountsCopy = accounts;
  accountProvider = [(NCCNContactsDataclassOwnerContactsImplementation *)self accountProvider];
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
          accountProvider2 = [(NCCNContactsDataclassOwnerContactsImplementation *)self accountProvider];
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
      sub_E4E8(accountCopy);
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
  contactStore = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v13[4] = &v15;
  v14 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_4614;
  v13[3] = &unk_1C5B8;
  [contactStore enumerateContactsWithFetchRequest:v7 error:&v14 usingBlock:v13];
  v11 = v14;

  LODWORD(contactStore) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return contactStore == 0;
}

- (id)localContainer
{
  contactStore = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v3 = [CNContainer predicateForLocalContainerIncludingDisabled:1];
  v11 = 0;
  v4 = [contactStore containersMatchingPredicate:v3 error:&v11];
  v5 = v11;
  firstObject = [v4 firstObject];

  os_log = [objc_opt_class() os_log];
  v8 = os_log;
  if (firstObject)
  {
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      sub_E578(firstObject);
    }

    v9 = firstObject;
  }

  else
  {
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_E614();
    }
  }

  return firstObject;
}

- (id)defaultContainerInContactsAccount:(id)account
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  v6 = [CNContainer predicateForDefaultContainerForAccountWithIdentifier:identifier];

  contactStore = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v15 = 0;
  v8 = [contactStore containersMatchingPredicate:v6 error:&v15];
  v9 = v15;
  firstObject = [v8 firstObject];

  os_log = [objc_opt_class() os_log];
  v12 = os_log;
  if (firstObject)
  {
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      sub_E67C(firstObject, accountCopy, v12);
    }

    v13 = firstObject;
  }

  else
  {
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_E790();
    }
  }

  return firstObject;
}

- (id)containersInAccountWithExternalIdentifier:(id)identifier
{
  v4 = [(NCCNContactsDataclassOwnerContactsImplementation *)self accountWithExternalIdentifier:identifier];
  if (v4)
  {
    v5 = [(NCCNContactsDataclassOwnerContactsImplementation *)self containersInAccount:v4];
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
  v5 = [CNAccount predicateForAccountWithExternalIdentifier:identifierCopy];
  contactStore = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v14 = 0;
  v7 = [contactStore accountsMatchingPredicate:v5 error:&v14];
  v8 = v14;
  firstObject = [v7 firstObject];

  os_log = [objc_opt_class() os_log];
  v11 = os_log;
  if (firstObject)
  {
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      sub_E854();
    }

    v12 = firstObject;
  }

  else
  {
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_E930();
    }
  }

  return firstObject;
}

- (id)containersInAccount:(id)account
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  v6 = [CNContainer predicateForContainersInAccountWithIdentifier:identifier includingDisabledContainers:1];

  contactStore = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v14 = 0;
  v8 = [contactStore containersMatchingPredicate:v6 error:&v14];
  v9 = v14;

  os_log = [objc_opt_class() os_log];
  v11 = os_log;
  if (v8)
  {
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      sub_E9A0();
    }

    v12 = v8;
  }

  else
  {
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_EA80();
    }
  }

  return v8;
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
  contactStore = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v17 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_4D34;
  v15[3] = &unk_1C5E0;
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

  contactStore = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
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