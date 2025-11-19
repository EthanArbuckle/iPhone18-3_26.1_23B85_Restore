@interface CNDeduplication
+ (id)os_log;
- (id)contactsForGroup:(id)a3 store:(id)a4;
- (id)identifierSetFromContacts:(id)a3;
- (void)addContactsForIds:(id)a3 toGroup:(id)a4 usingRequest:(id)a5 store:(id)a6;
- (void)deduplicateAllContainers:(id)a3;
- (void)deduplicateContainer:(id)a3 store:(id)a4;
- (void)deduplicateKeeping:(id)a3 deleting:(id)a4 store:(id)a5;
@end

@implementation CNDeduplication

+ (id)os_log
{
  if (os_log_cn_once_token_0_10 != -1)
  {
    +[CNDeduplication os_log];
  }

  v3 = os_log_cn_once_object_0_10;

  return v3;
}

uint64_t __25__CNDeduplication_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "dedupe-groups");
  v1 = os_log_cn_once_object_0_10;
  os_log_cn_once_object_0_10 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)deduplicateAllContainers:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "Deduplicating groups for store %@", buf, 0xCu);
  }

  v6 = [v4 containersMatchingPredicate:0 error:0];
  v7 = [v6 _cn_filter:&__block_literal_global_5_2];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__CNDeduplication_deduplicateAllContainers___block_invoke_2;
  v9[3] = &unk_1E7414A60;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 _cn_each:v9];
}

uint64_t __44__CNDeduplication_deduplicateAllContainers___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 permissions];
  v3 = [v2 canCreateGroups];

  return v3;
}

void __44__CNDeduplication_deduplicateAllContainers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 identifier];
  [v3 deduplicateContainer:v4 store:*(a1 + 40)];
}

- (void)deduplicateContainer:(id)a3 store:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25 = self;
  v8 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = v6;
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&dword_1954A0000, v8, OS_LOG_TYPE_DEFAULT, "Deduplicating container %@ in store %@", buf, 0x16u);
  }

  v24 = v6;
  [CNGroup predicateForGroupsInContainerWithIdentifier:v6];
  v23 = v9 = v7;
  v10 = [v7 groupsMatchingPredicate:? error:?];
  v11 = [v10 mutableCopy];

  [v11 sortUsingComparator:&__block_literal_global_9_1];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [v15 name];
        v20 = [v18 name];
        v21 = [v19 isEqualToString:v20];

        if (v21)
        {
          [(CNDeduplication *)v25 deduplicateKeeping:v15 deleting:v18 store:v9];
        }

        else
        {
          v22 = v18;

          v15 = v22;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }
}

uint64_t __46__CNDeduplication_deduplicateContainer_store___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)deduplicateKeeping:(id)a3 deleting:(id)a4 store:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNDeduplication *)self contactsForGroup:v8 store:v10];
  v29 = [(CNDeduplication *)self contactsForGroup:v9 store:v10];
  v12 = [(CNDeduplication *)self identifierSetFromContacts:?];
  v13 = [v12 mutableCopy];

  v14 = [(CNDeduplication *)self identifierSetFromContacts:v11];
  [v13 minusSet:v14];
  v15 = objc_alloc_init(CNSaveRequest);
  v16 = [v13 count];
  v17 = [objc_opt_class() os_log];
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      v19 = [v13 count];
      [v9 name];
      v28 = v14;
      v20 = v8;
      v22 = v21 = v11;
      *buf = 134218242;
      v32 = v19;
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&dword_1954A0000, v17, OS_LOG_TYPE_DEFAULT, "Need to adjust membership of %lu contacts before deleting duplicate group %@", buf, 0x16u);

      v11 = v21;
      v8 = v20;
      v14 = v28;
    }

    v17 = [v13 allObjects];
    [(CNDeduplication *)self addContactsForIds:v17 toGroup:v8 usingRequest:v15 store:v10];
  }

  else if (v18)
  {
    v23 = [v9 name];
    *buf = 138412290;
    v32 = v23;
    _os_log_impl(&dword_1954A0000, v17, OS_LOG_TYPE_DEFAULT, "No membership adjustment needed before deleting duplicate group %@", buf, 0xCu);
  }

  v24 = [v9 mutableCopy];
  [(CNSaveRequest *)v15 deleteGroup:v24];

  v30 = 0;
  LODWORD(v24) = [v10 executeSaveRequest:v15 error:&v30];
  v25 = v30;
  v26 = v25;
  if (!v24 || v25)
  {
    v27 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v32 = v26;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_1954A0000, v27, OS_LOG_TYPE_DEFAULT, "Unexpected error:%{public}@ cleaning up group for deduplication:%@", buf, 0x16u);
    }
  }
}

- (id)contactsForGroup:(id)a3 store:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E695DF70];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  v9 = [CNContactFetchRequest alloc];
  v10 = [(CNContactFetchRequest *)v9 initWithKeysToFetch:MEMORY[0x1E695E0F0]];
  v11 = [v5 identifier];
  v12 = [CNContact predicateForContactsInGroupWithIdentifier:v11];
  [(CNContactFetchRequest *)v10 setPredicate:v12];

  [(CNContactFetchRequest *)v10 setUnifyResults:0];
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __42__CNDeduplication_contactsForGroup_store___block_invoke;
  v20 = &unk_1E7414AA8;
  v13 = v8;
  v21 = v13;
  [v7 enumerateContactsWithFetchRequest:v10 error:&v22 usingBlock:&v17];

  v14 = v22;
  if (v14)
  {
    v15 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CNDeduplication contactsForGroup:store:];
    }
  }

  return v13;
}

- (void)addContactsForIds:(id)a3 toGroup:(id)a4 usingRequest:(id)a5 store:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [CNContactFetchRequest alloc];
  v14 = [(CNContactFetchRequest *)v13 initWithKeysToFetch:MEMORY[0x1E695E0F0]];
  v15 = [CNContact predicateForContactsWithIdentifiers:v12];

  [(CNContactFetchRequest *)v14 setPredicate:v15];
  [(CNContactFetchRequest *)v14 setUnifyResults:0];
  v23 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__CNDeduplication_addContactsForIds_toGroup_usingRequest_store___block_invoke;
  v20[3] = &unk_1E7412A38;
  v16 = v10;
  v21 = v16;
  v17 = v9;
  v22 = v17;
  [v11 enumerateContactsWithFetchRequest:v14 error:&v23 usingBlock:v20];

  v18 = v23;
  if (v18)
  {
    v19 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CNDeduplication addContactsForIds:toGroup:usingRequest:store:];
    }
  }
}

- (id)identifierSetFromContacts:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [a3 _cn_map:CNContactToIdentifier];
  v5 = [v3 setWithArray:v4];

  return v5;
}

@end