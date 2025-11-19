@interface NCCNContactsDataclassOwnerContactsImplementation
+ (id)os_log;
- (BOOL)createAndExecuteSaveRequest:(id)a3 errorBlock:(id)a4;
- (BOOL)createContactsAccountForParentAccount:(id)a3 withChildAccounts:(id)a4;
- (BOOL)isContainerEmpty:(id)a3;
- (BOOL)isLocalContainerEmpty;
- (BOOL)mergeContactsFromLocalContainerToContainer:(id)a3;
- (NCCNContactsDataclassOwnerContactsImplementation)initWithContactStore:(id)a3 accountProvider:(id)a4;
- (id)accountWithExternalIdentifier:(id)a3;
- (id)contactsAccountForParentAccount:(id)a3 withChildAccounts:(id)a4;
- (id)contactsInContainer:(id)a3;
- (id)containersInAccount:(id)a3;
- (id)containersInAccountWithExternalIdentifier:(id)a3;
- (id)defaultContainerForParentAccount:(id)a3 withChildAccounts:(id)a4 createIfNecessary:(BOOL)a5;
- (id)defaultContainerInContactsAccount:(id)a3;
- (id)localContainer;
- (id)syncingAccountIdentifierForParentAccount:(id)a3 withChildAccounts:(id)a4;
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

- (NCCNContactsDataclassOwnerContactsImplementation)initWithContactStore:(id)a3 accountProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = NCCNContactsDataclassOwnerContactsImplementation;
  v9 = [(NCCNContactsDataclassOwnerContactsImplementation *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, a3);
    objc_storeStrong(&v10->_accountProvider, a4);
    v11 = v10;
  }

  return v10;
}

- (BOOL)isLocalContainerEmpty
{
  v2 = self;
  v3 = [(NCCNContactsDataclassOwnerContactsImplementation *)self localContainer];
  LOBYTE(v2) = [(NCCNContactsDataclassOwnerContactsImplementation *)v2 isContainerEmpty:v3];

  return v2;
}

- (id)defaultContainerForParentAccount:(id)a3 withChildAccounts:(id)a4 createIfNecessary:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactsAccountForParentAccount:a3 withChildAccounts:v8];
  if (!a3)
  {
    v16 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_E178(v8);
    }

    v10 = 0;
    goto LABEL_11;
  }

  v10 = [(NCCNContactsDataclassOwnerContactsImplementation *)self defaultContainerInContactsAccount:v9];
  if (!v10 && v5)
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
    v23 = self;
    v16 = v12;
    v17 = [(NCCNContactsDataclassOwnerContactsImplementation *)self createAndExecuteSaveRequest:&v24 errorBlock:&v19];
    v10 = 0;
    if (v14 && v17)
    {
      v10 = [(NCCNContactsDataclassOwnerContactsImplementation *)self defaultContainerInContactsAccount:v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29];
    }

LABEL_11:
  }

  return v10;
}

- (id)contactsAccountForParentAccount:(id)a3 withChildAccounts:(id)a4
{
  v5 = [(NCCNContactsDataclassOwnerContactsImplementation *)self syncingAccountIdentifierForParentAccount:a3 withChildAccounts:a4];
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

- (BOOL)createContactsAccountForParentAccount:(id)a3 withChildAccounts:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NCCNContactsDataclassOwnerContactsImplementation *)self syncingAccountIdentifierForParentAccount:v6 withChildAccounts:v7];
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
      v11 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = [v10 identifier];
        v14 = [v10 iOSLegacyIdentifier];
        v15 = [v6 identifier];
        v16 = [v7 valueForKey:@"identifier"];
        *buf = 138544130;
        v22 = v13;
        v23 = 1024;
        v24 = v14;
        v25 = 2114;
        v26 = v15;
        v27 = 2114;
        v28 = v16;
        _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "Created a local CN account (identifier = %{public}@  legacy id = %d) for external account with identifier %{public}@ and child identifiers %{public}@", buf, 0x26u);
      }
    }
  }

  return v9;
}

- (BOOL)mergeContactsFromLocalContainerToContainer:(id)a3
{
  v4 = a3;
  v5 = [(NCCNContactsDataclassOwnerContactsImplementation *)self localContainer];
  if (!v5)
  {
    v9 = 1;
    goto LABEL_19;
  }

  v6 = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactsInContainer:v5];
  v7 = [v6 _cn_map:&stru_1C620];

  if (!v7)
  {
    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_E44C(v4);
    }

    goto LABEL_9;
  }

  if (![v7 count])
  {
    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_E3B0(v4);
    }

LABEL_9:
  }

  if ((*(CNIsArrayEmpty + 16))(CNIsArrayEmpty, v7))
  {
    v9 = 1;
  }

  else
  {
    v10 = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
    v21 = 0;
    v9 = [v10 moveContacts:v7 fromContainer:v5 toContainer:v4 error:&v21];
    v11 = v21;

    v12 = [objc_opt_class() os_log];
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v7 count];
        v15 = [v5 identifier];
        v16 = [v5 iOSLegacyIdentifier];
        v17 = [v4 identifier];
        v18 = [v4 iOSLegacyIdentifier];
        *buf = 134219522;
        v23 = v14;
        v24 = 2114;
        v25 = v15;
        v26 = 1024;
        *v27 = v16;
        *&v27[4] = 2112;
        *&v27[6] = v4;
        v28 = 2114;
        v29 = v17;
        v30 = 1024;
        v31 = v18;
        v32 = 2112;
        v33 = v11;
        _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "Migrated %ld contacts to from local container (identifier = %{public}@ legacy id: %d) to container %@ (identifier = %{public}@ legacy id %d): %@", buf, 0x40u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = [v7 count];
      *buf = 134218498;
      v23 = v20;
      v24 = 2112;
      v25 = v4;
      v26 = 2112;
      *v27 = v11;
      _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "did not migrate %ld contacts to from local container to container %@: %@", buf, 0x20u);
    }
  }

LABEL_19:
  return v9;
}

- (id)syncingAccountIdentifierForParentAccount:(id)a3 withChildAccounts:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NCCNContactsDataclassOwnerContactsImplementation *)self accountProvider];
  v9 = [v8 isAccountSyncable:v6];

  if (v9)
  {
    v10 = [v6 identifier];
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v7;
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
          v17 = [(NCCNContactsDataclassOwnerContactsImplementation *)self accountProvider];
          v18 = [v17 isAccountSyncable:v16];

          if (v18)
          {
            v10 = [v16 identifier];

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

    v19 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_E4E8(v6);
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (BOOL)isContainerEmpty:(id)a3
{
  v4 = a3;
  v5 = [CNContactFetchRequest alloc];
  v19 = CNContactIdentifierKey;
  v6 = [NSArray arrayWithObjects:&v19 count:1];
  v7 = [v5 initWithKeysToFetch:v6];

  [v7 setUnifyResults:0];
  v8 = [v4 identifier];
  v9 = [CNContact predicateForContactsInContainerWithIdentifier:v8];
  [v7 setPredicate:v9];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v10 = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v13[4] = &v15;
  v14 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_4614;
  v13[3] = &unk_1C5B8;
  [v10 enumerateContactsWithFetchRequest:v7 error:&v14 usingBlock:v13];
  v11 = v14;

  LODWORD(v10) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v10 == 0;
}

- (id)localContainer
{
  v2 = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v3 = [CNContainer predicateForLocalContainerIncludingDisabled:1];
  v11 = 0;
  v4 = [v2 containersMatchingPredicate:v3 error:&v11];
  v5 = v11;
  v6 = [v4 firstObject];

  v7 = [objc_opt_class() os_log];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_E578(v6);
    }

    v9 = v6;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_E614();
    }
  }

  return v6;
}

- (id)defaultContainerInContactsAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [CNContainer predicateForDefaultContainerForAccountWithIdentifier:v5];

  v7 = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v15 = 0;
  v8 = [v7 containersMatchingPredicate:v6 error:&v15];
  v9 = v15;
  v10 = [v8 firstObject];

  v11 = [objc_opt_class() os_log];
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_E67C(v10, v4, v12);
    }

    v13 = v10;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_E790();
    }
  }

  return v10;
}

- (id)containersInAccountWithExternalIdentifier:(id)a3
{
  v4 = [(NCCNContactsDataclassOwnerContactsImplementation *)self accountWithExternalIdentifier:a3];
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

- (id)accountWithExternalIdentifier:(id)a3
{
  v4 = a3;
  v5 = [CNAccount predicateForAccountWithExternalIdentifier:v4];
  v6 = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v14 = 0;
  v7 = [v6 accountsMatchingPredicate:v5 error:&v14];
  v8 = v14;
  v9 = [v7 firstObject];

  v10 = [objc_opt_class() os_log];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_E854();
    }

    v12 = v9;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_E930();
    }
  }

  return v9;
}

- (id)containersInAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [CNContainer predicateForContainersInAccountWithIdentifier:v5 includingDisabledContainers:1];

  v7 = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v14 = 0;
  v8 = [v7 containersMatchingPredicate:v6 error:&v14];
  v9 = v14;

  v10 = [objc_opt_class() os_log];
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_E9A0();
    }

    v12 = v8;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_EA80();
    }
  }

  return v8;
}

- (id)contactsInContainer:(id)a3
{
  v4 = a3;
  v5 = [CNContactFetchRequest alloc];
  v18 = CNContactIdentifierKey;
  v6 = [NSArray arrayWithObjects:&v18 count:1];
  v7 = [v5 initWithKeysToFetch:v6];

  [v7 setUnifyResults:0];
  v8 = [v4 identifier];

  v9 = [CNContact predicateForContactsInContainerWithIdentifier:v8];
  [v7 setPredicate:v9];

  v10 = +[NSMutableArray array];
  v11 = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v17 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_4D34;
  v15[3] = &unk_1C5E0;
  v12 = v10;
  v16 = v12;
  [v11 enumerateContactsWithFetchRequest:v7 error:&v17 usingBlock:v15];
  v13 = v17;

  return v12;
}

- (BOOL)createAndExecuteSaveRequest:(id)a3 errorBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(CNSaveRequest);
  if (v6)
  {
    v6[2](v6, v8);
  }

  v9 = [(NCCNContactsDataclassOwnerContactsImplementation *)self contactStore];
  v13 = 0;
  v10 = [v9 executeSaveRequest:v8 error:&v13];
  v11 = v13;

  if (v7 && (v10 & 1) == 0)
  {
    v7[2](v7, v11);
  }

  return v10;
}

@end