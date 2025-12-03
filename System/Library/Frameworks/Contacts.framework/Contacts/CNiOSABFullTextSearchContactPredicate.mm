@interface CNiOSABFullTextSearchContactPredicate
- (CNiOSABFullTextSearchContactPredicate)initWithSearchString:(id)string containerIdentifiers:(id)identifiers groupIdentifiers:(id)groupIdentifiers;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)_predicatesWithAddressBook:(void *)book environment:(id)environment;
- (id)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment nserror:(id *)nserror;
- (id)cn_fetchPeopleInAddressBook:(void *)book fetchRequest:(id)request progressiveResults:(id)results completion:(id)completion environment:(id)environment;
@end

@implementation CNiOSABFullTextSearchContactPredicate

- (CNiOSABFullTextSearchContactPredicate)initWithSearchString:(id)string containerIdentifiers:(id)identifiers groupIdentifiers:(id)groupIdentifiers
{
  v9.receiver = self;
  v9.super_class = CNiOSABFullTextSearchContactPredicate;
  v5 = [(CNFullTextSearchContactPredicate *)&v9 initWithSearchString:string containerIdentifiers:identifiers groupIdentifiers:groupIdentifiers];
  v6 = v5;
  if (v5)
  {
    [(CNPredicate *)v5 setAugmentMainStoreResults:0];
    v7 = v6;
  }

  return v6;
}

- (id)_predicatesWithAddressBook:(void *)book environment:(id)environment
{
  v45 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  groupIdentifiers = [(CNFullTextSearchContactPredicate *)self groupIdentifiers];

  if (groupIdentifiers)
  {
    groupIdentifiers2 = [(CNFullTextSearchContactPredicate *)self groupIdentifiers];
    v8 = ABAddressBookCopyGroupsWithUUIDs();

    if (!v8)
    {
      array = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v8 = 0;
  }

  containerIdentifiers = [(CNFullTextSearchContactPredicate *)self containerIdentifiers];

  if (!containerIdentifiers)
  {
    v12 = 0;
    goto LABEL_9;
  }

  containerIdentifiers2 = [(CNFullTextSearchContactPredicate *)self containerIdentifiers];
  v12 = ABAddressBookCopySourcesWithUUIDs();
  v13 = [v12 count];

  if (v13)
  {
LABEL_9:
    v37 = v12;
    v14 = [v12 _cn_partition:&__block_literal_global_33];
    v38 = v8;
    v15 = [v8 _cn_partition:&__block_literal_global_2_1];
    second = [v14 second];
    second2 = [v15 second];
    v36 = v14;
    first = [v14 first];
    v35 = v15;
    first2 = [v15 first];
    v18 = [first2 _cn_map:&__block_literal_global_5_1];
    v19 = [first arrayByAddingObjectsFromArray:v18];

    array = [MEMORY[0x1E695DF70] array];
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
          abPredicateRunner = [environmentCopy abPredicateRunner];
          searchString = [(CNFullTextSearchContactPredicate *)self searchString];
          v28 = [abPredicateRunner personPredicateWithNameLike:searchString inSource:v25 addressBook:book];
          [array _cn_addNonNilObject:v28];
        }

        v22 = [v20 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v22);
    }

    if (![v20 count] || objc_msgSend(second, "count") || objc_msgSend(second2, "count"))
    {
      abPredicateRunner2 = [environmentCopy abPredicateRunner];
      searchString2 = [(CNFullTextSearchContactPredicate *)self searchString];
      v31 = [abPredicateRunner2 personPredicateWithNameLike:searchString2 inGroups:second2 sources:second addressBook:book];
      [array _cn_addNonNilObject:v31];
    }

    v12 = v37;
    v8 = v38;
    goto LABEL_21;
  }

  array = 0;
LABEL_21:

LABEL_22:

  return array;
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

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v15 = 0;
  v8 = [(CNiOSABFullTextSearchContactPredicate *)self cn_copyPeopleInAddressBook:book fetchRequest:request matchInfos:infos environment:environment nserror:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else if (error)
  {
    code = [v9 code];
    userInfo = [v10 userInfo];
    *error = [CNErrorFactory errorWithCode:code userInfo:userInfo];
  }

  return v8;
}

- (id)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment nserror:(id *)nserror
{
  requestCopy = request;
  environmentCopy = environment;
  v14 = *MEMORY[0x1E6996568];
  searchString = [(CNFullTextSearchContactPredicate *)self searchString];
  LODWORD(v14) = (*(v14 + 16))(v14, searchString);

  if (v14)
  {
    v16 = [CNErrorFactory errorWithCode:400 userInfo:0];
    v17 = v16;
    if (nserror)
    {
      v18 = v16;
      v19 = 0;
      *nserror = v17;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v17 = [(CNiOSABFullTextSearchContactPredicate *)self _predicatesWithAddressBook:book environment:environmentCopy];
    if ([v17 count])
    {
      v19 = +[CNiOSFetchExecution contactsMatchingPredicates:sortOrdering:matchInfos:options:addressBook:environment:error:](CNiOSFetchExecution, "contactsMatchingPredicates:sortOrdering:matchInfos:options:addressBook:environment:error:", v17, [requestCopy sortOrder], infos, objc_msgSend(requestCopy, "options"), book, environmentCopy, nserror);
    }

    else
    {
      if (infos)
      {
        *infos = 0;
      }

      v19 = MEMORY[0x1E695E0F0];
    }
  }

  return v19;
}

- (id)cn_fetchPeopleInAddressBook:(void *)book fetchRequest:(id)request progressiveResults:(id)results completion:(id)completion environment:(id)environment
{
  requestCopy = request;
  resultsCopy = results;
  completionCopy = completion;
  environmentCopy = environment;
  v16 = [(CNiOSABFullTextSearchContactPredicate *)self _predicatesWithAddressBook:book environment:environmentCopy];
  if ([v16 count])
  {
    v17 = +[CNiOSFetchExecution contactsMatchingPredicates:sortOrdering:options:addressBook:progressiveResults:completion:environment:](CNiOSFetchExecution, "contactsMatchingPredicates:sortOrdering:options:addressBook:progressiveResults:completion:environment:", v16, [requestCopy sortOrder], objc_msgSend(requestCopy, "options"), book, resultsCopy, completionCopy, environmentCopy);
  }

  else
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    v17 = 0;
  }

  return v17;
}

@end