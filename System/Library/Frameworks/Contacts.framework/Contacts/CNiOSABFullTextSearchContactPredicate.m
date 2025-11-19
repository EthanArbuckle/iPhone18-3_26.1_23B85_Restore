@interface CNiOSABFullTextSearchContactPredicate
- (CNiOSABFullTextSearchContactPredicate)initWithSearchString:(id)a3 containerIdentifiers:(id)a4 groupIdentifiers:(id)a5;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)_predicatesWithAddressBook:(void *)a3 environment:(id)a4;
- (id)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 nserror:(id *)a7;
- (id)cn_fetchPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 progressiveResults:(id)a5 completion:(id)a6 environment:(id)a7;
@end

@implementation CNiOSABFullTextSearchContactPredicate

- (CNiOSABFullTextSearchContactPredicate)initWithSearchString:(id)a3 containerIdentifiers:(id)a4 groupIdentifiers:(id)a5
{
  v9.receiver = self;
  v9.super_class = CNiOSABFullTextSearchContactPredicate;
  v5 = [(CNFullTextSearchContactPredicate *)&v9 initWithSearchString:a3 containerIdentifiers:a4 groupIdentifiers:a5];
  v6 = v5;
  if (v5)
  {
    [(CNPredicate *)v5 setAugmentMainStoreResults:0];
    v7 = v6;
  }

  return v6;
}

- (id)_predicatesWithAddressBook:(void *)a3 environment:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v39 = a4;
  v6 = [(CNFullTextSearchContactPredicate *)self groupIdentifiers];

  if (v6)
  {
    v7 = [(CNFullTextSearchContactPredicate *)self groupIdentifiers];
    v8 = ABAddressBookCopyGroupsWithUUIDs();

    if (!v8)
    {
      v9 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = [(CNFullTextSearchContactPredicate *)self containerIdentifiers];

  if (!v10)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v11 = [(CNFullTextSearchContactPredicate *)self containerIdentifiers];
  v12 = ABAddressBookCopySourcesWithUUIDs();
  v13 = [v12 count];

  if (v13)
  {
LABEL_9:
    v37 = v12;
    v14 = [v12 _cn_partition:&__block_literal_global_33];
    v38 = v8;
    v15 = [v8 _cn_partition:&__block_literal_global_2_1];
    v34 = [v14 second];
    v33 = [v15 second];
    v36 = v14;
    v16 = [v14 first];
    v35 = v15;
    v17 = [v15 first];
    v18 = [v17 _cn_map:&__block_literal_global_5_1];
    v19 = [v16 arrayByAddingObjectsFromArray:v18];

    v9 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v41;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v40 + 1) + 8 * i);
          v26 = [v39 abPredicateRunner];
          v27 = [(CNFullTextSearchContactPredicate *)self searchString];
          v28 = [v26 personPredicateWithNameLike:v27 inSource:v25 addressBook:a3];
          [v9 _cn_addNonNilObject:v28];
        }

        v22 = [v20 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v22);
    }

    if (![v20 count] || objc_msgSend(v34, "count") || objc_msgSend(v33, "count"))
    {
      v29 = [v39 abPredicateRunner];
      v30 = [(CNFullTextSearchContactPredicate *)self searchString];
      v31 = [v29 personPredicateWithNameLike:v30 inGroups:v33 sources:v34 addressBook:a3];
      [v9 _cn_addNonNilObject:v31];
    }

    v12 = v37;
    v8 = v38;
    goto LABEL_21;
  }

  v9 = 0;
LABEL_21:

LABEL_22:

  return v9;
}

uint64_t __80__CNiOSABFullTextSearchContactPredicate__predicatesWithAddressBook_environment___block_invoke_2(int a1, ABRecordRef group)
{
  v2 = ABGroupCopySource(group);
  IsRemote = ABSourceIsRemote();
  if (v2)
  {
    CFRelease(v2);
  }

  return IsRemote;
}

id __80__CNiOSABFullTextSearchContactPredicate__predicatesWithAddressBook_environment___block_invoke_3(int a1, ABRecordRef group)
{
  v2 = ABGroupCopySource(group);

  return v2;
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v15 = 0;
  v8 = [(CNiOSABFullTextSearchContactPredicate *)self cn_copyPeopleInAddressBook:a3 fetchRequest:a4 matchInfos:a5 environment:a6 nserror:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else if (a7)
  {
    v12 = [v9 code];
    v13 = [v10 userInfo];
    *a7 = [CNErrorFactory errorWithCode:v12 userInfo:v13];
  }

  return v8;
}

- (id)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 nserror:(id *)a7
{
  v12 = a4;
  v13 = a6;
  v14 = *MEMORY[0x1E6996568];
  v15 = [(CNFullTextSearchContactPredicate *)self searchString];
  LODWORD(v14) = (*(v14 + 16))(v14, v15);

  if (v14)
  {
    v16 = [CNErrorFactory errorWithCode:400 userInfo:0];
    v17 = v16;
    if (a7)
    {
      v18 = v16;
      v19 = 0;
      *a7 = v17;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v17 = [(CNiOSABFullTextSearchContactPredicate *)self _predicatesWithAddressBook:a3 environment:v13];
    if ([v17 count])
    {
      v19 = +[CNiOSFetchExecution contactsMatchingPredicates:sortOrdering:matchInfos:options:addressBook:environment:error:](CNiOSFetchExecution, "contactsMatchingPredicates:sortOrdering:matchInfos:options:addressBook:environment:error:", v17, [v12 sortOrder], a5, objc_msgSend(v12, "options"), a3, v13, a7);
    }

    else
    {
      if (a5)
      {
        *a5 = 0;
      }

      v19 = MEMORY[0x1E695E0F0];
    }
  }

  return v19;
}

- (id)cn_fetchPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 progressiveResults:(id)a5 completion:(id)a6 environment:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(CNiOSABFullTextSearchContactPredicate *)self _predicatesWithAddressBook:a3 environment:v15];
  if ([v16 count])
  {
    v17 = +[CNiOSFetchExecution contactsMatchingPredicates:sortOrdering:options:addressBook:progressiveResults:completion:environment:](CNiOSFetchExecution, "contactsMatchingPredicates:sortOrdering:options:addressBook:progressiveResults:completion:environment:", v16, [v12 sortOrder], objc_msgSend(v12, "options"), a3, v13, v14, v15);
  }

  else
  {
    if (v14)
    {
      v14[2](v14, 0);
    }

    v17 = 0;
  }

  return v17;
}

@end