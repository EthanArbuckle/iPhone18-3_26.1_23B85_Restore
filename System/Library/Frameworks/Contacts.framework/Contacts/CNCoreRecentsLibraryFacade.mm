@interface CNCoreRecentsLibraryFacade
+ (id)facadeErrorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)facadeErrorWithUnderlyingError:(id)error;
- (BOOL)areSupportedDomains:(id)domains;
- (BOOL)deleteContacts:(id)contacts error:(id *)error;
- (BOOL)removeRecentContactsWithRecentIDs:(id)ds recentsDomain:(id)domain error:(id *)error;
- (CNCoreRecentsLibraryFacade)initWithDomains:(id)domains queryHandler:(id)handler;
- (CNCoreRecentsLibraryFacadeQueryHandler)queryHandler;
- (id)_contactsForQuery:(id)query error:(id *)error;
- (id)_queryForContactsWithEmailAddresses:(id)addresses singleResult:(BOOL)result;
- (id)_queryForContactsWithHandles:(id)handles;
- (id)_queryForContactsWithHandlesMatchingString:(id)string;
- (id)_queryForContactsWithName:(id)name prefixSearch:(BOOL)search;
- (id)_queryForContactsWithPhoneNumbers:(id)numbers singleResult:(BOOL)result;
- (id)acceptedIntroductionsContainer;
- (id)allContactsFromDomains:(id)domains error:(id *)error;
- (id)allContactsWithError:(id *)error;
- (id)contactsWithEmailAddresses:(id)addresses error:(id *)error;
- (id)contactsWithHandles:(id)handles error:(id *)error;
- (id)contactsWithHandlesMatchingString:(id)string error:(id *)error;
- (id)contactsWithInternalIdentifiers:(id)identifiers error:(id *)error;
- (id)contactsWithName:(id)name prefixSearch:(BOOL)search error:(id *)error;
- (id)contactsWithPhoneNumbers:(id)numbers error:(id *)error;
- (id)containersForIdentifiers:(id)identifiers;
- (id)recentContactsForQuery:(id)query error:(id *)error;
- (id)recentContactsWithIDs:(id)ds error:(id *)error;
- (id)singleContactWithEmailAddress:(id)address error:(id *)error;
- (id)singleContactWithPhoneNumber:(id)number error:(id *)error;
- (int64_t)countAllContactsFromDomains:(id)domains error:(id *)error;
- (int64_t)countAllContactsWithError:(id *)error;
- (int64_t)countOfContactsWithEmailAddresses:(id)addresses error:(id *)error;
- (int64_t)countOfContactsWithHandles:(id)handles error:(id *)error;
- (int64_t)countOfContactsWithName:(id)name prefixSearch:(BOOL)search error:(id *)error;
- (int64_t)countOfContactsWithPhoneNumbers:(id)numbers error:(id *)error;
- (int64_t)countOfRecentContactsForQuery:(id)query error:(id *)error;
@end

@implementation CNCoreRecentsLibraryFacade

- (CNCoreRecentsLibraryFacadeQueryHandler)queryHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_queryHandler);

  return WeakRetained;
}

- (CNCoreRecentsLibraryFacade)initWithDomains:(id)domains queryHandler:(id)handler
{
  domainsCopy = domains;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = CNCoreRecentsLibraryFacade;
  v8 = [(CNCoreRecentsLibraryFacade *)&v12 init];
  if (v8)
  {
    v9 = [domainsCopy copy];
    domains = v8->_domains;
    v8->_domains = v9;

    objc_storeWeak(&v8->_queryHandler, handlerCopy);
  }

  return v8;
}

- (id)containersForIdentifiers:(id)identifiers
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CNCoreRecentsLibraryFacade_containersForIdentifiers___block_invoke;
  v11[3] = &unk_1E7412440;
  v11[4] = self;
  v4 = [identifiers _cn_filter:v11];
  array = [MEMORY[0x1E695DF70] array];
  v6 = +[CNCoreRecentsContactStore acceptedContactsDomainIdentifier];
  v7 = [v4 containsObject:v6];

  if (v7)
  {
    acceptedIntroductionsContainer = [(CNCoreRecentsLibraryFacade *)self acceptedIntroductionsContainer];
    [array _cn_addNonNilObject:acceptedIntroductionsContainer];
  }

  v9 = [array copy];

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

- (id)contactsWithInternalIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
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
  v9 = [identifiersCopy _cn_compactMap:v22];
  queryHandler = [(CNCoreRecentsLibraryFacade *)self queryHandler];
  v21 = 0;
  v11 = [queryHandler recentContactsWithIDs:v9 error:&v21];
  v12 = v21;

  v13 = [v11 _cn_compactMap:&__block_literal_global_8];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = __68__CNCoreRecentsLibraryFacade_contactsWithInternalIdentifiers_error___block_invoke_4;
  v18 = &unk_1E74124B0;
  selfCopy = self;
  v14 = v12;
  v20 = v14;
  if (error && !v13)
  {
    *error = v17(v16);
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

- (id)allContactsWithError:(id *)error
{
  v5 = objc_alloc_init(getCRSearchQueryClass());
  domains = [(CNCoreRecentsLibraryFacade *)self domains];
  [v5 setDomains:domains];

  v7 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v5 error:error];

  return v7;
}

- (int64_t)countAllContactsWithError:(id *)error
{
  v5 = objc_alloc_init(getCRSearchQueryClass());
  domains = [(CNCoreRecentsLibraryFacade *)self domains];
  [v5 setDomains:domains];

  queryHandler = [(CNCoreRecentsLibraryFacade *)self queryHandler];
  v8 = [queryHandler countOfRecentContactsForQuery:v5 error:error];

  return v8;
}

- (id)allContactsFromDomains:(id)domains error:(id *)error
{
  domainsCopy = domains;
  if ([(CNCoreRecentsLibraryFacade *)self areSupportedDomains:domainsCopy])
  {
    v7 = objc_alloc_init(getCRSearchQueryClass());
    [v7 setDomains:domainsCopy];
    v8 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v7 error:error];
  }

  else
  {
    v9 = [objc_opt_class() facadeErrorWithCode:1];
    v7 = v9;
    if (error)
    {
      v10 = v9;
      v8 = 0;
      *error = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (int64_t)countAllContactsFromDomains:(id)domains error:(id *)error
{
  if ([(CNCoreRecentsLibraryFacade *)self areSupportedDomains:domains])
  {
    v6 = objc_alloc_init(getCRSearchQueryClass());
    domains = [(CNCoreRecentsLibraryFacade *)self domains];
    [v6 setDomains:domains];

    queryHandler = [(CNCoreRecentsLibraryFacade *)self queryHandler];
    v9 = [queryHandler countOfRecentContactsForQuery:v6 error:error];
  }

  else
  {
    v10 = [objc_opt_class() facadeErrorWithCode:1];
    v6 = v10;
    if (error)
    {
      v11 = v10;
      *error = v6;
    }

    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (BOOL)deleteContacts:(id)contacts error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __51__CNCoreRecentsLibraryFacade_deleteContacts_error___block_invoke;
  v28[3] = &unk_1E74124D8;
  v28[4] = self;
  if ([contactsCopy _cn_all:v28])
  {
    [contactsCopy _cn_groupBy:&__block_literal_global_14];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v27 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      errorCopy = error;
      v22 = contactsCopy;
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
          queryHandler = [(CNCoreRecentsLibraryFacade *)self queryHandler];
          v23 = 0;
          v16 = [queryHandler removeRecentContactsWithRecentIDs:v14 recentsDomain:v12 error:&v23];
          v17 = v23;

          if ((v16 & 1) == 0)
          {
            if (errorCopy)
            {
              v19 = v17;
              *errorCopy = v17;
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
      contactsCopy = v22;
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

- (id)contactsWithHandles:(id)handles error:(id *)error
{
  v6 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithHandles:handles];
  v7 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v6 error:error];

  return v7;
}

- (int64_t)countOfContactsWithHandles:(id)handles error:(id *)error
{
  v6 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithHandles:handles];
  queryHandler = [(CNCoreRecentsLibraryFacade *)self queryHandler];
  v8 = [queryHandler countOfRecentContactsForQuery:v6 error:error];

  return v8;
}

- (id)contactsWithHandlesMatchingString:(id)string error:(id *)error
{
  v6 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithHandlesMatchingString:string];
  v7 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v6 error:error];

  return v7;
}

- (id)contactsWithName:(id)name prefixSearch:(BOOL)search error:(id *)error
{
  v7 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithName:name prefixSearch:search];
  v8 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v7 error:error];

  return v8;
}

- (int64_t)countOfContactsWithName:(id)name prefixSearch:(BOOL)search error:(id *)error
{
  v7 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithName:name prefixSearch:search];
  queryHandler = [(CNCoreRecentsLibraryFacade *)self queryHandler];
  v9 = [queryHandler countOfRecentContactsForQuery:v7 error:error];

  return v9;
}

- (id)contactsWithPhoneNumbers:(id)numbers error:(id *)error
{
  v6 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithPhoneNumbers:numbers singleResult:0];
  v7 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v6 error:error];

  return v7;
}

- (int64_t)countOfContactsWithPhoneNumbers:(id)numbers error:(id *)error
{
  v6 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithPhoneNumbers:numbers singleResult:0];
  queryHandler = [(CNCoreRecentsLibraryFacade *)self queryHandler];
  v8 = [queryHandler countOfRecentContactsForQuery:v6 error:error];

  return v8;
}

- (id)singleContactWithPhoneNumber:(id)number error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v6 = MEMORY[0x1E695DEC8];
  numberCopy2 = number;
  v8 = [v6 arrayWithObjects:&numberCopy count:1];

  v9 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithPhoneNumbers:v8 singleResult:1, numberCopy, v14];

  v10 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v9 error:error];
  firstObject = [v10 firstObject];

  return firstObject;
}

- (id)contactsWithEmailAddresses:(id)addresses error:(id *)error
{
  v6 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithEmailAddresses:addresses singleResult:0];
  v7 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v6 error:error];

  return v7;
}

- (int64_t)countOfContactsWithEmailAddresses:(id)addresses error:(id *)error
{
  v6 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithEmailAddresses:addresses singleResult:1];
  queryHandler = [(CNCoreRecentsLibraryFacade *)self queryHandler];
  v8 = [queryHandler countOfRecentContactsForQuery:v6 error:error];

  return v8;
}

- (id)singleContactWithEmailAddress:(id)address error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v6 = MEMORY[0x1E695DEC8];
  addressCopy2 = address;
  v8 = [v6 arrayWithObjects:&addressCopy count:1];

  v9 = [(CNCoreRecentsLibraryFacade *)self _queryForContactsWithEmailAddresses:v8 singleResult:1, addressCopy, v14];

  v10 = [(CNCoreRecentsLibraryFacade *)self _contactsForQuery:v9 error:error];
  firstObject = [v10 firstObject];

  return firstObject;
}

- (id)_contactsForQuery:(id)query error:(id *)error
{
  queryCopy = query;
  queryHandler = [(CNCoreRecentsLibraryFacade *)self queryHandler];
  v8 = [queryHandler recentContactsForQuery:queryCopy error:error];

  if (v8)
  {
    v9 = [v8 _cn_compactMap:&__block_literal_global_17];
  }

  else
  {
    v10 = [objc_opt_class() facadeErrorWithUnderlyingError:0];
    if (error)
    {
      v10 = v10;
      *error = v10;
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

- (BOOL)areSupportedDomains:(id)domains
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__CNCoreRecentsLibraryFacade_areSupportedDomains___block_invoke;
  v4[3] = &unk_1E7412440;
  v4[4] = self;
  return [domains _cn_all:v4];
}

uint64_t __50__CNCoreRecentsLibraryFacade_areSupportedDomains___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 domains];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (id)_queryForContactsWithHandles:(id)handles
{
  handlesCopy = handles;
  v5 = objc_alloc_init(getCRSearchQueryClass());
  CRSearchPredicateClass = getCRSearchPredicateClass();
  v7 = getCRRecentContactKeyAddress();
  v8 = [CRSearchPredicateClass predicateForKey:v7 inCollection:handlesCopy];

  [v5 setSearchPredicate:v8];
  domains = [(CNCoreRecentsLibraryFacade *)self domains];
  [v5 setDomains:domains];

  frecencyComparator = [getCRSearchQueryClass() frecencyComparator];
  [v5 setComparator:frecencyComparator];

  return v5;
}

- (id)_queryForContactsWithHandlesMatchingString:(id)string
{
  stringCopy = string;
  v5 = objc_alloc_init(getCRSearchQueryClass());
  CRSearchPredicateClass = getCRSearchPredicateClass();
  v7 = getCRRecentContactKeyAddress();
  v8 = [CRSearchPredicateClass predicateForKey:v7 matchingText:stringCopy comparison:1];

  [v5 setSearchPredicate:v8];
  domains = [(CNCoreRecentsLibraryFacade *)self domains];
  [v5 setDomains:domains];

  frecencyComparator = [getCRSearchQueryClass() frecencyComparator];
  [v5 setComparator:frecencyComparator];

  return v5;
}

- (id)_queryForContactsWithName:(id)name prefixSearch:(BOOL)search
{
  searchCopy = search;
  nameCopy = name;
  CRSearchPredicateClass = getCRSearchPredicateClass();
  v8 = getCRRecentContactKeyDisplayName();
  if (searchCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [CRSearchPredicateClass predicateForKey:v8 matchingText:nameCopy comparison:v9];

  v11 = objc_alloc_init(getCRSearchQueryClass());
  [v11 setSearchPredicate:v10];
  domains = [(CNCoreRecentsLibraryFacade *)self domains];
  [v11 setDomains:domains];

  frecencyComparator = [getCRSearchQueryClass() frecencyComparator];
  [v11 setComparator:frecencyComparator];

  return v11;
}

- (id)_queryForContactsWithPhoneNumbers:(id)numbers singleResult:(BOOL)result
{
  resultCopy = result;
  v31[2] = *MEMORY[0x1E69E9840];
  numbersCopy = numbers;
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
  v17 = [v15 predicateForKey:v16 inCollection:numbersCopy];
  v31[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v19 = [v6 arrayWithArray:v18];

  if (resultCopy)
  {
    [v5 setPageRange:{0, 1}];
  }

  v20 = [getCRSearchPredicateClass() predicateSatisfyingAllSubpredicates:v19];
  [v5 setSearchPredicate:v20];

  domains = [(CNCoreRecentsLibraryFacade *)self domains];
  [v5 setDomains:domains];

  frecencyComparator = [getCRSearchQueryClass() frecencyComparator];
  [v5 setComparator:frecencyComparator];

  return v5;
}

- (id)_queryForContactsWithEmailAddresses:(id)addresses singleResult:(BOOL)result
{
  resultCopy = result;
  v30[2] = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
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
  v17 = [v15 predicateForKey:v16 inCollection:addressesCopy];
  v30[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v19 = [CRSearchPredicateClass predicateSatisfyingAllSubpredicates:v18];
  [v5 setSearchPredicate:v19];

  domains = [(CNCoreRecentsLibraryFacade *)self domains];
  [v5 setDomains:domains];

  frecencyComparator = [getCRSearchQueryClass() frecencyComparator];
  [v5 setComparator:frecencyComparator];

  if (resultCopy)
  {
    [v5 setPageRange:{0, 1}];
  }

  return v5;
}

- (int64_t)countOfRecentContactsForQuery:(id)query error:(id *)error
{
  queryCopy = query;
  defaultInstance = [getCRRecentContactsLibraryClass() defaultInstance];
  v7 = [defaultInstance countOfRecentContactsForQuery:queryCopy error:error];

  return v7;
}

- (id)recentContactsForQuery:(id)query error:(id *)error
{
  queryCopy = query;
  defaultInstance = [getCRRecentContactsLibraryClass() defaultInstance];
  v7 = [defaultInstance recentContactsForQuery:queryCopy error:error];

  return v7;
}

- (id)recentContactsWithIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  defaultInstance = [getCRRecentContactsLibraryClass() defaultInstance];
  v7 = [defaultInstance recentContactsWithIDs:dsCopy error:error];

  return v7;
}

- (BOOL)removeRecentContactsWithRecentIDs:(id)ds recentsDomain:(id)domain error:(id *)error
{
  domainCopy = domain;
  dsCopy = ds;
  defaultInstance = [getCRRecentContactsLibraryClass() defaultInstance];
  LOBYTE(error) = [defaultInstance removeRecentContactsWithRecentIDs:dsCopy recentsDomain:domainCopy error:error];

  return error;
}

+ (id)facadeErrorWithUnderlyingError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    if ([MEMORY[0x1E6996708] isXPCServiceError:errorCopy])
    {
      selfCopy3 = self;
      v6 = 3;
    }

    else
    {
      domain = [errorCopy domain];
      v9 = getCRRecentContactsErrorDomain();
      v10 = [domain isEqualToString:v9];

      selfCopy3 = self;
      if (v10)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }
    }

    v7 = errorCopy;
  }

  else
  {
    selfCopy3 = self;
    v6 = 0;
    v7 = 0;
  }

  v11 = [selfCopy3 facadeErrorWithCode:v6 underlyingError:v7];

  return v11;
}

+ (id)facadeErrorWithCode:(int64_t)code underlyingError:(id)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = errorCopy;
  if (errorCopy)
  {
    v10 = *MEMORY[0x1E696AA08];
    v11[0] = errorCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNCoreRecentsFacadeErrorDomain" code:code userInfo:v7];

  return v8;
}

@end