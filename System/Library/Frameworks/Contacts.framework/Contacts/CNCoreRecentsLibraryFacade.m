@interface CNCoreRecentsLibraryFacade
+ (id)facadeErrorWithCode:(int64_t)a3 underlyingError:(id)a4;
+ (id)facadeErrorWithUnderlyingError:(id)a3;
- (BOOL)areSupportedDomains:(id)a3;
- (BOOL)deleteContacts:(id)a3 error:(id *)a4;
- (BOOL)removeRecentContactsWithRecentIDs:(id)a3 recentsDomain:(id)a4 error:(id *)a5;
- (CNCoreRecentsLibraryFacade)initWithDomains:(id)a3 queryHandler:(id)a4;
- (CNCoreRecentsLibraryFacadeQueryHandler)queryHandler;
- (id)_contactsForQuery:(id)a3 error:(id *)a4;
- (id)_queryForContactsWithEmailAddresses:(id)a3 singleResult:(BOOL)a4;
- (id)_queryForContactsWithHandles:(id)a3;
- (id)_queryForContactsWithHandlesMatchingString:(id)a3;
- (id)_queryForContactsWithName:(id)a3 prefixSearch:(BOOL)a4;
- (id)_queryForContactsWithPhoneNumbers:(id)a3 singleResult:(BOOL)a4;
- (id)acceptedIntroductionsContainer;
- (id)allContactsFromDomains:(id)a3 error:(id *)a4;
- (id)allContactsWithError:(id *)a3;
- (id)contactsWithEmailAddresses:(id)a3 error:(id *)a4;
- (id)contactsWithHandles:(id)a3 error:(id *)a4;
- (id)contactsWithHandlesMatchingString:(id)a3 error:(id *)a4;
- (id)contactsWithInternalIdentifiers:(id)a3 error:(id *)a4;
- (id)contactsWithName:(id)a3 prefixSearch:(BOOL)a4 error:(id *)a5;
- (id)contactsWithPhoneNumbers:(id)a3 error:(id *)a4;
- (id)containersForIdentifiers:(id)a3;
- (id)recentContactsForQuery:(id)a3 error:(id *)a4;
- (id)recentContactsWithIDs:(id)a3 error:(id *)a4;
- (id)singleContactWithEmailAddress:(id)a3 error:(id *)a4;
- (id)singleContactWithPhoneNumber:(id)a3 error:(id *)a4;
- (int64_t)countAllContactsFromDomains:(id)a3 error:(id *)a4;
- (int64_t)countAllContactsWithError:(id *)a3;
- (int64_t)countOfContactsWithEmailAddresses:(id)a3 error:(id *)a4;
- (int64_t)countOfContactsWithHandles:(id)a3 error:(id *)a4;
- (int64_t)countOfContactsWithName:(id)a3 prefixSearch:(BOOL)a4 error:(id *)a5;
- (int64_t)countOfContactsWithPhoneNumbers:(id)a3 error:(id *)a4;
- (int64_t)countOfRecentContactsForQuery:(id)a3 error:(id *)a4;
@end

@implementation CNCoreRecentsLibraryFacade

- (CNCoreRecentsLibraryFacadeQueryHandler)queryHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_queryHandler);

  return WeakRetained;
}

- (CNCoreRecentsLibraryFacade)initWithDomains:(id)a3 queryHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CNCoreRecentsLibraryFacade;
  v8 = [(CNCoreRecentsLibraryFacade *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    domains = v8->_domains;
    v8->_domains = v9;

    objc_storeWeak(&v8->_queryHandler, v7);
  }

  return v8;
}

- (id)containersForIdentifiers:(id)a3
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CNCoreRecentsLibraryFacade_containersForIdentifiers___block_invoke;
  v11[3] = &unk_1E7412440;
  v11[4] = self;
  v4 = [a3 _cn_filter:v11];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = +[CNCoreRecentsContactStore acceptedContactsDomainIdentifier];
  v7 = [v4 containsObject:v6];

  if (v7)
  {
    v8 = [(CNCoreRecentsLibraryFacade *)self acceptedIntroductionsContainer];
    [v5 _cn_addNonNilObject:v8];
  }

  v9 = [v5 copy];

  return v9;
}

uint64_t __55__CNCoreRecentsLibraryFacade_containersForIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 domains];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (id)contactsWithInternalIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (contactsWithInternalIdentifiers_error__cn_once_token_0 != -1)
  {
    [CNCoreRecentsLibraryFacade contactsWithInternalIdentifiers:error:];
  }

  v7 = contactsWithInternalIdentifiers_error__cn_once_object_0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __68__CNCoreRecentsLibraryFacade_contactsWithInternalIdentifiers_error___block_invoke_2;
  v22[3] = &unk_1E7412468;
  v8 = v7;
  v23 = v8;
  v9 = [v6 _cn_compactMap:v22];
  v10 = [(CNCoreRecentsLibraryFacade *)self queryHandler];
  v21 = 0;
  v11 = [v10 recentContactsWithIDs:v9 error:&v21];
  v12 = v21;

  v13 = [v11 _cn_compactMap:&__block_literal_global_8];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = __68__CNCoreRecentsLibraryFacade_contactsWithInternalIdentifiers_error___block_invoke_4;
  v18 = &unk_1E74124B0;
  v19 = self;
  v14 = v12;
  v20 = v14;
  if (a4 && !v13)
  {
    *a4 = v17(v16);
  }

  return v13;
}

uint64_t __68__CNCoreRecentsLibraryFacade_contactsWithInternalIdentifiers_error___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = contactsWithInternalIdentifiers_error__cn_once_object_0;
  contactsWithInternalIdentifiers_error__cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __68__CNCoreRecentsLibraryFacade_contactsWithInternalIdentifiers_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [CNCoreRecentsContactStore coreRecentsIdentifierFromInternalIdentifier:a2];
  if (v3)
  {
    v4 = [*(a1 + 32) numberFromString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __68__CNCoreRecentsLibraryFacade_contactsWithInternalIdentifiers_error___block_invoke_4(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);

  return [v2 facadeErrorWithUnderlyingError:v3];
}

- (id)allContactsWithError:(id *)a3
{
  v5 = objc_alloc_init(getCRSearchQueryClass());
  v6 = [(CNCoreRecentsLibraryFacade *)self domains];
  [v5 setDomains:v6];

  v7 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v5 error:a3];

  return v7;
}

- (int64_t)countAllContactsWithError:(id *)a3
{
  v5 = objc_alloc_init(getCRSearchQueryClass());
  v6 = [(CNCoreRecentsLibraryFacade *)self domains];
  [v5 setDomains:v6];

  v7 = [(CNCoreRecentsLibraryFacade *)self queryHandler];
  v8 = [v7 countOfRecentContactsForQuery:v5 error:a3];

  return v8;
}

- (id)allContactsFromDomains:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(CNCoreRecentsLibraryFacade *)self areSupportedDomains:v6])
  {
    v7 = objc_alloc_init(getCRSearchQueryClass());
    [v7 setDomains:v6];
    v8 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v7 error:a4];
  }

  else
  {
    v9 = [objc_opt_class() facadeErrorWithCode:1];
    v7 = v9;
    if (a4)
    {
      v10 = v9;
      v8 = 0;
      *a4 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (int64_t)countAllContactsFromDomains:(id)a3 error:(id *)a4
{
  if ([(CNCoreRecentsLibraryFacade *)self areSupportedDomains:a3])
  {
    v6 = objc_alloc_init(getCRSearchQueryClass());
    v7 = [(CNCoreRecentsLibraryFacade *)self domains];
    [v6 setDomains:v7];

    v8 = [(CNCoreRecentsLibraryFacade *)self queryHandler];
    v9 = [v8 countOfRecentContactsForQuery:v6 error:a4];
  }

  else
  {
    v10 = [objc_opt_class() facadeErrorWithCode:1];
    v6 = v10;
    if (a4)
    {
      v11 = v10;
      *a4 = v6;
    }

    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (BOOL)deleteContacts:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __51__CNCoreRecentsLibraryFacade_deleteContacts_error___block_invoke;
  v28[3] = &unk_1E74124D8;
  v28[4] = self;
  if ([v6 _cn_all:v28])
  {
    [v6 _cn_groupBy:&__block_literal_global_14];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v27 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v21 = a4;
      v22 = v6;
      v10 = *v25;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = [v7 objectForKeyedSubscript:v12];
          v14 = [(CNCoreRecentsLibraryFacade *)self _recentIdentifiersForContacts:v13];
          v15 = [(CNCoreRecentsLibraryFacade *)self queryHandler];
          v23 = 0;
          v16 = [v15 removeRecentContactsWithRecentIDs:v14 recentsDomain:v12 error:&v23];
          v17 = v23;

          if ((v16 & 1) == 0)
          {
            if (v21)
            {
              v19 = v17;
              *v21 = v17;
            }

            v18 = 0;
            goto LABEL_15;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v18 = 1;
LABEL_15:
      v6 = v22;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __51__CNCoreRecentsLibraryFacade_deleteContacts_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 coreRecentsDomain];
  if (v4)
  {
    v5 = [v3 coreRecentsIdentifier];
    if (v5)
    {
      v6 = [*(a1 + 32) domains];
      v7 = [v3 coreRecentsDomain];
      v8 = [v6 containsObject:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)contactsWithHandles:(id)a3 error:(id *)a4
{
  v6 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithHandles:a3];
  v7 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v6 error:a4];

  return v7;
}

- (int64_t)countOfContactsWithHandles:(id)a3 error:(id *)a4
{
  v6 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithHandles:a3];
  v7 = [(CNCoreRecentsLibraryFacade *)self queryHandler];
  v8 = [v7 countOfRecentContactsForQuery:v6 error:a4];

  return v8;
}

- (id)contactsWithHandlesMatchingString:(id)a3 error:(id *)a4
{
  v6 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithHandlesMatchingString:a3];
  v7 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v6 error:a4];

  return v7;
}

- (id)contactsWithName:(id)a3 prefixSearch:(BOOL)a4 error:(id *)a5
{
  v7 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithName:a3 prefixSearch:a4];
  v8 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v7 error:a5];

  return v8;
}

- (int64_t)countOfContactsWithName:(id)a3 prefixSearch:(BOOL)a4 error:(id *)a5
{
  v7 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithName:a3 prefixSearch:a4];
  v8 = [(CNCoreRecentsLibraryFacade *)self queryHandler];
  v9 = [v8 countOfRecentContactsForQuery:v7 error:a5];

  return v9;
}

- (id)contactsWithPhoneNumbers:(id)a3 error:(id *)a4
{
  v6 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithPhoneNumbers:a3 singleResult:0];
  v7 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v6 error:a4];

  return v7;
}

- (int64_t)countOfContactsWithPhoneNumbers:(id)a3 error:(id *)a4
{
  v6 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithPhoneNumbers:a3 singleResult:0];
  v7 = [(CNCoreRecentsLibraryFacade *)self queryHandler];
  v8 = [v7 countOfRecentContactsForQuery:v6 error:a4];

  return v8;
}

- (id)singleContactWithPhoneNumber:(id)a3 error:(id *)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v13 count:1];

  v9 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithPhoneNumbers:v8 singleResult:1, v13, v14];

  v10 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v9 error:a4];
  v11 = [v10 firstObject];

  return v11;
}

- (id)contactsWithEmailAddresses:(id)a3 error:(id *)a4
{
  v6 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithEmailAddresses:a3 singleResult:0];
  v7 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v6 error:a4];

  return v7;
}

- (int64_t)countOfContactsWithEmailAddresses:(id)a3 error:(id *)a4
{
  v6 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithEmailAddresses:a3 singleResult:1];
  v7 = [(CNCoreRecentsLibraryFacade *)self queryHandler];
  v8 = [v7 countOfRecentContactsForQuery:v6 error:a4];

  return v8;
}

- (id)singleContactWithEmailAddress:(id)a3 error:(id *)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v13 count:1];

  v9 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithEmailAddresses:v8 singleResult:1, v13, v14];

  v10 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v9 error:a4];
  v11 = [v10 firstObject];

  return v11;
}

- (id)_contactsForQuery:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNCoreRecentsLibraryFacade *)self queryHandler];
  v8 = [v7 recentContactsForQuery:v6 error:a4];

  if (v8)
  {
    v9 = [v8 _cn_compactMap:&__block_literal_global_17];
  }

  else
  {
    v10 = [objc_opt_class() facadeErrorWithUnderlyingError:0];
    if (a4)
    {
      v10 = v10;
      *a4 = v10;
    }

    v9 = 0;
  }

  return v9;
}

- (id)acceptedIntroductionsContainer
{
  v2 = +[CNCoreRecentsContactStore acceptedContactsDomainIdentifier];
  v3 = +[CNCoreRecentsContactStore acceptedContactsAccountIdentifier];
  if (v2)
  {
    v4 = [[CNContainerPermissions alloc] initWithCanCreateContacts:0 canDeleteContacts:1 canCreateGroups:0];
    v5 = [MEMORY[0x1E6996750] localizedStringForString:@"OTHER_KNOWN" class:objc_opt_class() returningNilIfNotFound:0];
    v6 = [[CNContainer alloc] initWithIdentifier:v2 accountIdentifier:v3 name:v5 type:1004 permissions:v4 externalIdentifier:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)areSupportedDomains:(id)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__CNCoreRecentsLibraryFacade_areSupportedDomains___block_invoke;
  v4[3] = &unk_1E7412440;
  v4[4] = self;
  return [a3 _cn_all:v4];
}

uint64_t __50__CNCoreRecentsLibraryFacade_areSupportedDomains___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 domains];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (id)_queryForContactsWithHandles:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(getCRSearchQueryClass());
  CRSearchPredicateClass = getCRSearchPredicateClass();
  v7 = getCRRecentContactKeyAddress();
  v8 = [CRSearchPredicateClass predicateForKey:v7 inCollection:v4];

  [v5 setSearchPredicate:v8];
  v9 = [(CNCoreRecentsLibraryFacade *)self domains];
  [v5 setDomains:v9];

  v10 = [getCRSearchQueryClass() frecencyComparator];
  [v5 setComparator:v10];

  return v5;
}

- (id)_queryForContactsWithHandlesMatchingString:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(getCRSearchQueryClass());
  CRSearchPredicateClass = getCRSearchPredicateClass();
  v7 = getCRRecentContactKeyAddress();
  v8 = [CRSearchPredicateClass predicateForKey:v7 matchingText:v4 comparison:1];

  [v5 setSearchPredicate:v8];
  v9 = [(CNCoreRecentsLibraryFacade *)self domains];
  [v5 setDomains:v9];

  v10 = [getCRSearchQueryClass() frecencyComparator];
  [v5 setComparator:v10];

  return v5;
}

- (id)_queryForContactsWithName:(id)a3 prefixSearch:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  CRSearchPredicateClass = getCRSearchPredicateClass();
  v8 = getCRRecentContactKeyDisplayName();
  if (v4)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [CRSearchPredicateClass predicateForKey:v8 matchingText:v6 comparison:v9];

  v11 = objc_alloc_init(getCRSearchQueryClass());
  [v11 setSearchPredicate:v10];
  v12 = [(CNCoreRecentsLibraryFacade *)self domains];
  [v11 setDomains:v12];

  v13 = [getCRSearchQueryClass() frecencyComparator];
  [v11 setComparator:v13];

  return v11;
}

- (id)_queryForContactsWithPhoneNumbers:(id)a3 singleResult:(BOOL)a4
{
  v25 = a4;
  v31[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(getCRSearchQueryClass());
  v6 = MEMORY[0x1E695DF70];
  CRSearchPredicateClass = getCRSearchPredicateClass();
  v8 = getCRRecentContactKeyKind();
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v9 = getCRAddressKindPhoneNumberSymbolLoc_ptr;
  v29 = getCRAddressKindPhoneNumberSymbolLoc_ptr;
  if (!getCRAddressKindPhoneNumberSymbolLoc_ptr)
  {
    v10 = CoreRecentsLibrary();
    v27[3] = dlsym(v10, "CRAddressKindPhoneNumber");
    getCRAddressKindPhoneNumberSymbolLoc_ptr = v27[3];
    v9 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v9)
  {
    getMDItemUniqueIdentifier_cold_1();
    __break(1u);
  }

  v30 = *v9;
  v11 = MEMORY[0x1E695DEC8];
  v12 = v30;
  v13 = [v11 arrayWithObjects:&v30 count:1];
  v14 = [CRSearchPredicateClass predicateForKey:v8 inCollection:v13];
  v31[0] = v14;
  v15 = getCRSearchPredicateClass();
  v16 = getCRRecentContactKeyAddress();
  v17 = [v15 predicateForKey:v16 inCollection:v4];
  v31[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v19 = [v6 arrayWithArray:v18];

  if (v25)
  {
    [v5 setPageRange:{0, 1}];
  }

  v20 = [getCRSearchPredicateClass() predicateSatisfyingAllSubpredicates:v19];
  [v5 setSearchPredicate:v20];

  v21 = [(CNCoreRecentsLibraryFacade *)self domains];
  [v5 setDomains:v21];

  v22 = [getCRSearchQueryClass() frecencyComparator];
  [v5 setComparator:v22];

  return v5;
}

- (id)_queryForContactsWithEmailAddresses:(id)a3 singleResult:(BOOL)a4
{
  v23 = a4;
  v30[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(getCRSearchQueryClass());
  CRSearchPredicateClass = getCRSearchPredicateClass();
  v7 = getCRSearchPredicateClass();
  v8 = getCRRecentContactKeyKind();
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v9 = getCRAddressKindEmailSymbolLoc_ptr;
  v28 = getCRAddressKindEmailSymbolLoc_ptr;
  if (!getCRAddressKindEmailSymbolLoc_ptr)
  {
    v10 = CoreRecentsLibrary();
    v26[3] = dlsym(v10, "CRAddressKindEmail");
    getCRAddressKindEmailSymbolLoc_ptr = v26[3];
    v9 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v9)
  {
    getMDItemUniqueIdentifier_cold_1();
    __break(1u);
  }

  v29 = *v9;
  v11 = MEMORY[0x1E695DEC8];
  v12 = v29;
  v13 = [v11 arrayWithObjects:&v29 count:1];
  v14 = [v7 predicateForKey:v8 inCollection:v13];
  v30[0] = v14;
  v15 = getCRSearchPredicateClass();
  v16 = getCRRecentContactKeyAddress();
  v17 = [v15 predicateForKey:v16 inCollection:v4];
  v30[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v19 = [CRSearchPredicateClass predicateSatisfyingAllSubpredicates:v18];
  [v5 setSearchPredicate:v19];

  v20 = [(CNCoreRecentsLibraryFacade *)self domains];
  [v5 setDomains:v20];

  v21 = [getCRSearchQueryClass() frecencyComparator];
  [v5 setComparator:v21];

  if (v23)
  {
    [v5 setPageRange:{0, 1}];
  }

  return v5;
}

- (int64_t)countOfRecentContactsForQuery:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [getCRRecentContactsLibraryClass() defaultInstance];
  v7 = [v6 countOfRecentContactsForQuery:v5 error:a4];

  return v7;
}

- (id)recentContactsForQuery:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [getCRRecentContactsLibraryClass() defaultInstance];
  v7 = [v6 recentContactsForQuery:v5 error:a4];

  return v7;
}

- (id)recentContactsWithIDs:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [getCRRecentContactsLibraryClass() defaultInstance];
  v7 = [v6 recentContactsWithIDs:v5 error:a4];

  return v7;
}

- (BOOL)removeRecentContactsWithRecentIDs:(id)a3 recentsDomain:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [getCRRecentContactsLibraryClass() defaultInstance];
  LOBYTE(a5) = [v9 removeRecentContactsWithRecentIDs:v8 recentsDomain:v7 error:a5];

  return a5;
}

+ (id)facadeErrorWithUnderlyingError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([MEMORY[0x1E6996708] isXPCServiceError:v4])
    {
      v5 = a1;
      v6 = 3;
    }

    else
    {
      v8 = [v4 domain];
      v9 = getCRRecentContactsErrorDomain();
      v10 = [v8 isEqualToString:v9];

      v5 = a1;
      if (v10)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }
    }

    v7 = v4;
  }

  else
  {
    v5 = a1;
    v6 = 0;
    v7 = 0;
  }

  v11 = [v5 facadeErrorWithCode:v6 underlyingError:v7];

  return v11;
}

+ (id)facadeErrorWithCode:(int64_t)a3 underlyingError:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v10 = *MEMORY[0x1E696AA08];
    v11[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNCoreRecentsFacadeErrorDomain" code:a3 userInfo:v7];

  return v8;
}

@end