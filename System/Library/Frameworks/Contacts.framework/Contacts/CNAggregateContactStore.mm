@interface CNAggregateContactStore
+ (id)log;
- (BOOL)analyzeDatabaseWithError:(id *)error;
- (BOOL)clearChangeHistoryForClientIdentifier:(id)identifier toChangeAnchor:(id)anchor error:(id *)error;
- (BOOL)enumerateContactsAndMatchInfoWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block;
- (BOOL)enumerateNonUnifiedContactsWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block;
- (BOOL)executeChangeHistoryClearRequest:(id)request error:(id *)error;
- (BOOL)executeSaveRequest:(id)request response:(id *)response authorizationContext:(id)context error:(id *)error;
- (BOOL)hasGroups;
- (BOOL)hasMultipleGroupsOrAccounts;
- (BOOL)moveContacts:(id)contacts fromContainer:(id)container toContainer:(id)toContainer error:(id *)error;
- (BOOL)registerChangeHistoryClientIdentifier:(id)identifier error:(id *)error;
- (BOOL)resetSortDataIfNeededWithError:(id *)error;
- (BOOL)setBestMeIfNeededForGivenName:(id)name familyName:(id)familyName email:(id)email error:(id *)error;
- (BOOL)setDefaultAccountIdentifier:(id)identifier error:(id *)error;
- (BOOL)setMeContact:(id)contact error:(id *)error;
- (BOOL)setMeContact:(id)contact forContainer:(id)container error:(id *)error;
- (BOOL)shouldAnalyzeDatabaseWithError:(id *)error;
- (BOOL)supportsSaveRequest:(id)request;
- (BOOL)unregisterChangeHistoryClientIdentifier:(id)identifier error:(id *)error;
- (BOOL)verifyChangeHistoryForClientIdentifier:(id)identifier error:(id *)error;
- (CNAggregateContactStore)initWithContactStores:(id)stores configuration:(id)configuration;
- (CNContactStore)contactStoreForMatchingDictionaryWork;
- (CNContactStore)mainStore;
- (id)XPCDataMapperStore;
- (id)_allStoreResultsWithError:(id *)error withBlock:(id)block;
- (id)_unifiedContactsFromContacts:(id)contacts unifyContactsFromMainStore:(BOOL)store keysToFetch:(id)fetch error:(id *)error;
- (id)_unifiedMeContactWithKeysToFetch:(id)fetch error:(id *)error;
- (id)accountsMatchingPredicate:(id)predicate error:(id *)error;
- (id)applyPostFetchDecoratorsToContact:(id)contact keysToFetch:(id)fetch unifyContactsFromMainStore:(BOOL)store;
- (id)applyPostFetchDecoratorsToContacts:(id)contacts keysToFetch:(id)fetch unifyContactsFromMainStore:(BOOL)store;
- (id)changeHistoryWithFetchRequest:(id)request error:(id *)error;
- (id)contactCountForFetchRequest:(id)request error:(id *)error;
- (id)contactIdentifierWithMatchingDictionary:(id)dictionary;
- (id)contactWithUserActivityUserInfo:(id)info keysToFetch:(id)fetch;
- (id)containersMatchingPredicate:(id)predicate error:(id *)error;
- (id)currentHistoryAnchor;
- (id)currentHistoryToken;
- (id)defaultContainerIdentifier;
- (id)descriptorForRequiredKeysForMatchingDictionary;
- (id)enumeratorForChangeHistoryFetchRequest:(id)request error:(id *)error;
- (id)enumeratorForContactFetchRequest:(id)request error:(id *)error;
- (id)executeFetchRequest:(id)request progressiveResults:(id)results completion:(id)completion;
- (id)fetchLimitedAccessContactIdentifiersForBundle:(id)bundle;
- (id)findContactStoreForMatchingDictionaryWork;
- (id)getBackgroundColorOnImageData:(id)data bitmapFormat:(id)format error:(id *)error;
- (id)getLimitedAccessContactsCountForBundle:(id)bundle;
- (id)getLimitedAccessLastSyncSequenceNumber:(id *)number;
- (id)getWatchLimitedAccessSyncDataStartingAtSequenceNumber:(int64_t)number;
- (id)groupWithIdentifier:(id)identifier error:(id *)error;
- (id)groupsMatchingPredicate:(id)predicate error:(id *)error;
- (id)iOSMapper;
- (id)identifierWithError:(id *)error;
- (id)individualContactCountWithError:(id *)error;
- (id)latestConsumedChangeHistoryAnchorForClientIdentifier:(id)identifier error:(id *)error;
- (id)legacyTetheredSyncComputerAnchor;
- (id)legacyTetheredSyncDeviceAnchor;
- (id)mainStoreImpl;
- (id)matchingDictionaryForContact:(id)contact;
- (id)meContactIdentifiers:(id *)identifiers;
- (id)membersOfGroupWithIdentifier:(id)identifier keysToFetch:(id)fetch error:(id *)error;
- (id)originForSuggestion:(id)suggestion error:(id *)error;
- (id)policyWithDescription:(id)description error:(id *)error;
- (id)populateSyncTableForLimitedAccessAboveSequenceNumber:(id)number;
- (id)requestAccessForEntityType:(int64_t)type;
- (id)sectionListOffsetsForSortOrder:(int64_t)order error:(id *)error;
- (id)serverSearchContainersMatchingPredicate:(id)predicate error:(id *)error;
- (id)subgroupsOfGroupWithIdentifier:(id)identifier error:(id *)error;
- (id)unifiedContactCountWithError:(id *)error;
- (id)unifiedContactsMatchingPredicate:(id)predicate keysToFetch:(id)fetch error:(id *)error;
- (id)usedLabelsForPropertyWithKey:(id)key error:(id *)error;
- (id)userActivityUserInfoForContact:(id)contact;
- (int)saveSequenceCount;
- (void)_enumerateStoresUsingBlock:(id)block;
- (void)addLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier;
- (void)addLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers;
- (void)addPostFetchDecorator:(id)decorator;
- (void)applyLimitedAccessSyncEvents:(id)events;
- (void)didFetchContacts:(id)contacts forPredicate:(id)predicate fromStore:(id)store unifiedFetch:(BOOL)fetch;
- (void)dropAllLimitedAccessRows;
- (void)dropAllLimitedAccessRowsAndSyncNotify;
- (void)purgeLimitedAccessRecordsForBundle:(id)bundle;
- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier;
- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers;
- (void)setLegacyTetheredSyncComputerAnchor:(id)anchor;
- (void)setLegacyTetheredSyncDeviceAnchor:(id)anchor;
- (void)setLimitedAccessTableCurrentSequenceNumber:(id)number;
- (void)updateLimitedAccessTable:(id)table;
@end

@implementation CNAggregateContactStore

- (CNContactStore)mainStore
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)currentHistoryToken
{
  mainStore = [(CNAggregateContactStore *)self mainStore];
  currentHistoryToken = [mainStore currentHistoryToken];

  return currentHistoryToken;
}

- (id)currentHistoryAnchor
{
  mainStore = [(CNAggregateContactStore *)self mainStore];
  currentHistoryAnchor = [mainStore currentHistoryAnchor];

  return currentHistoryAnchor;
}

- (id)iOSMapper
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  contactStores = [(CNAggregateContactStore *)self contactStores];
  v3 = [contactStores countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(contactStores);
        }

        iOSMapper = [*(*(&v10 + 1) + 8 * i) iOSMapper];
        if (iOSMapper)
        {
          v8 = iOSMapper;
          goto LABEL_11;
        }
      }

      v4 = [contactStores countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

+ (id)log
{
  if (log_cn_once_token_0_1 != -1)
  {
    +[CNAggregateContactStore log];
  }

  v3 = log_cn_once_object_0_1;

  return v3;
}

uint64_t __30__CNAggregateContactStore_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "aggregate-store");
  v1 = log_cn_once_object_0_1;
  log_cn_once_object_0_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNAggregateContactStore)initWithContactStores:(id)stores configuration:(id)configuration
{
  storesCopy = stores;
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = CNAggregateContactStore;
  v8 = [(CNContactStore *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(CNAggregateContactStore *)v8 setContactStores:storesCopy];
    [(CNAggregateContactStore *)v9 setPostFetchDecoratorBlocks:MEMORY[0x1E695E0F0]];
    includeSharedPhotoContacts = [configurationCopy includeSharedPhotoContacts];
    v11 = [objc_opt_class() log];
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (includeSharedPhotoContacts)
    {
      if (v12)
      {
        *v15 = 0;
        _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Adding shared photo decorator (includeSharedPhotoContacts=YES)", v15, 2u);
      }

      [(CNAggregateContactStore *)v9 addPostFetchDecorator:&__block_literal_global_5_0];
    }

    else
    {
      if (v12)
      {
        *v15 = 0;
        _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Skipping shared photo decorator (includeSharedPhotoContacts=NO)", v15, 2u);
      }
    }

    v13 = v9;
  }

  return v9;
}

id __63__CNAggregateContactStore_initWithContactStores_configuration___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a2;
  v8 = [[CNContactStoreContactsFetchResultSharedAvatarDecorator alloc] initWithContacts:v7 keysToFetch:v6 unifyContactsFromMainStore:a4];

  v9 = [(CNContactStoreContactsFetchResultSharedAvatarDecorator *)v8 decoratedValue];

  return v9;
}

- (BOOL)hasMultipleGroupsOrAccounts
{
  contactStores = [(CNAggregateContactStore *)self contactStores];
  v3 = [contactStores _cn_any:&__block_literal_global_9];

  return v3;
}

- (BOOL)hasGroups
{
  contactStores = [(CNAggregateContactStore *)self contactStores];
  v3 = [contactStores _cn_any:&__block_literal_global_11];

  return v3;
}

id __36__CNAggregateContactStore_mainStore__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (!v3)
  {
    v4 = [v2 mainStoreImpl];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v3 = *(*(a1 + 32) + 16);
  }

  return v3;
}

- (id)mainStoreImpl
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_contactStores;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        storeIdentifier = [objc_opt_class() storeIdentifier];

        if (!storeIdentifier)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)requestAccessForEntityType:(int64_t)type
{
  contactStores = self->_contactStores;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CNAggregateContactStore_requestAccessForEntityType___block_invoke;
  v8[3] = &__block_descriptor_40_e34___CNFuture_16__0__CNContactStore_8l;
  v8[4] = type;
  v4 = [(NSArray *)contactStores _cn_map:v8];
  v5 = [MEMORY[0x1E6996720] join:v4];
  v6 = [v5 flatMap:&__block_literal_global_17_0];

  return v6;
}

- (id)_allStoreResultsWithError:(id *)error withBlock:(id)block
{
  blockCopy = block;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CNAggregateContactStore__allStoreResultsWithError_withBlock___block_invoke;
  v14[3] = &unk_1E7412648;
  v8 = blockCopy;
  v16 = v8;
  v17 = &v18;
  v9 = array;
  v15 = v9;
  [(CNAggregateContactStore *)self _enumerateStoresUsingBlock:v14];
  v10 = v19[5];
  if (v10 && error)
  {
    *error = v10;
  }

  v11 = v15;
  v12 = v9;

  _Block_object_dispose(&v18, 8);

  return v12;
}

void __63__CNAggregateContactStore__allStoreResultsWithError_withBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  obj = *(v2 + 40);
  v3 = (*(*(a1 + 40) + 16))();
  objc_storeStrong((v2 + 40), obj);
  if (CNIsErrorWithCode(*(*(*(a1 + 48) + 8) + 40), 400))
  {
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v3 = MEMORY[0x1E695E0F0];
  }

  if (!*(*(*(a1 + 48) + 8) + 40) && [v3 count])
  {
    [*(a1 + 32) addObjectsFromArray:v3];
  }
}

- (void)_enumerateStoresUsingBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_contactStores;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = 0;
      blockCopy[2](blockCopy, v10, &v11);
      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)didFetchContacts:(id)contacts forPredicate:(id)predicate fromStore:(id)store unifiedFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  contactsCopy = contacts;
  predicateCopy = predicate;
  storeCopy = store;
  mainStore = [(CNAggregateContactStore *)self mainStore];

  if (mainStore == storeCopy)
  {
    objc_opt_class();
    v13 = predicateCopy;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    [v15 mainStoreDidFetchContacts:contactsCopy unifiedFetch:fetchCopy];
  }
}

- (id)_unifiedContactsFromContacts:(id)contacts unifyContactsFromMainStore:(BOOL)store keysToFetch:(id)fetch error:(id *)error
{
  storeCopy = store;
  v86 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  fetchCopy = fetch;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = contactsCopy;
  v9 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (v9)
  {
    v10 = *v78;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v78 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v77 + 1) + 8 * i);
        identifier = [v12 identifier];
        [dictionary2 setObject:v12 forKeyedSubscript:identifier];

        if ([v12 isUnified])
        {
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          linkedContacts = [v12 linkedContacts];
          v15 = [linkedContacts countByEnumeratingWithState:&v73 objects:v84 count:16];
          if (v15)
          {
            v16 = *v74;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v74 != v16)
                {
                  objc_enumerationMutation(linkedContacts);
                }

                identifier2 = [*(*(&v73 + 1) + 8 * j) identifier];
                [dictionary2 setObject:v12 forKeyedSubscript:identifier2];
              }

              v15 = [linkedContacts countByEnumeratingWithState:&v73 objects:v84 count:16];
            }

            while (v15);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
    }

    while (v9);
  }

  v47 = [MEMORY[0x1E695DFB8] orderedSetWithArray:obj];
  v52 = [v47 mutableCopy];
  v19 = [v47 count];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  reverseObjectEnumerator = [v47 reverseObjectEnumerator];
  v56 = [reverseObjectEnumerator countByEnumeratingWithState:&v69 objects:v83 count:16];
  if (v56)
  {
    v55 = *v70;
    do
    {
      for (k = 0; k != v56; ++k)
      {
        if (*v70 != v55)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v21 = *(*(&v69 + 1) + 8 * k);
        storeIdentifier = [v21 storeIdentifier];
        v23 = storeIdentifier == 0;

        --v19;
        if (!v23)
        {
          storeInfo = [v21 storeInfo];
          v25 = [storeInfo objectForKeyedSubscript:@"CNContactMainStoreLinkedIdentifier"];

          if (v25)
          {
            v26 = [dictionary2 objectForKeyedSubscript:v25];
            v27 = v26;
            if (v26)
            {
              goto LABEL_29;
            }

            if (storeCopy)
            {
              mainStore = [(CNAggregateContactStore *)self mainStore];
              v27 = [(CNContactFetchRequest *)mainStore unifiedContactWithIdentifier:v25 keysToFetch:fetchCopy error:error];
            }

            else
            {
              mainStore = [[CNContactFetchRequest alloc] initWithKeysToFetch:fetchCopy];
              [(CNContactFetchRequest *)mainStore setUnifyResults:0];
              v82 = v25;
              v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
              v30 = [CNContact predicateForContactsWithIdentifiers:v29];
              [(CNContactFetchRequest *)mainStore setPredicate:v30];

              v63 = 0;
              v64 = &v63;
              v65 = 0x3032000000;
              v66 = __Block_byref_object_copy__2;
              v67 = __Block_byref_object_dispose__2;
              v68 = 0;
              mainStore2 = [(CNAggregateContactStore *)self mainStore];
              v62[0] = MEMORY[0x1E69E9820];
              v62[1] = 3221225472;
              v62[2] = __101__CNAggregateContactStore__unifiedContactsFromContacts_unifyContactsFromMainStore_keysToFetch_error___block_invoke;
              v62[3] = &unk_1E7412670;
              v62[4] = &v63;
              [mainStore2 enumerateContactsWithFetchRequest:mainStore error:error usingBlock:v62];

              v27 = v64[5];
              _Block_object_dispose(&v63, 8);
            }

            if (v27)
            {
LABEL_29:
              identifier3 = [v27 identifier];
              array = [dictionary objectForKeyedSubscript:identifier3];
              if (!array)
              {
                array = [MEMORY[0x1E695DF70] array];
                if ([v27 isUnified])
                {
                  linkedContacts2 = [v27 linkedContacts];
                  [array addObjectsFromArray:linkedContacts2];
                }

                else
                {
                  [array addObject:v27];
                }

                [dictionary setObject:array forKeyedSubscript:identifier3];
              }

              [array addObject:v21];
              [v52 removeObjectAtIndex:v19];
              if (!v26)
              {
                [v52 addObject:v27];
              }
            }
          }
        }
      }

      v56 = [reverseObjectEnumerator countByEnumeratingWithState:&v69 objects:v83 count:16];
    }

    while (v56);
  }

  v35 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v52, "count")}];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v36 = v52;
  v37 = [v36 countByEnumeratingWithState:&v58 objects:v81 count:16];
  if (v37)
  {
    v38 = *v59;
    do
    {
      for (m = 0; m != v37; ++m)
      {
        if (*v59 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v40 = *(*(&v58 + 1) + 8 * m);
        identifier4 = [v40 identifier];
        v42 = v40;
        v43 = [dictionary objectForKeyedSubscript:identifier4];
        if (v43)
        {
          v44 = [CN contactUnifyingContacts:v43 includingMainStoreContacts:storeCopy allowMutableContactFreeze:1];

          v42 = v44;
        }

        [v35 addObject:v42];
      }

      v37 = [v36 countByEnumeratingWithState:&v58 objects:v81 count:16];
    }

    while (v37);
  }

  v45 = [(CNAggregateContactStore *)self applyPostFetchDecoratorsToContacts:v35 keysToFetch:fetchCopy unifyContactsFromMainStore:storeCopy];

  return v45;
}

void __101__CNAggregateContactStore__unifiedContactsFromContacts_unifyContactsFromMainStore_keysToFetch_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v6 = *(*(a1 + 32) + 8);
  v9 = *(v6 + 40);
  v7 = (v6 + 40);
  v8 = v9;
  if (v9)
  {
    *v7 = 0;

    *a3 = 1;
  }

  else
  {
    objc_storeStrong(v7, a2);
  }
}

- (id)sectionListOffsetsForSortOrder:(int64_t)order error:(id *)error
{
  mainStore = [(CNAggregateContactStore *)self mainStore];
  v7 = [mainStore sectionListOffsetsForSortOrder:order error:error];

  return v7;
}

- (id)unifiedContactCountWithError:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  contactStores = [(CNAggregateContactStore *)self contactStores];
  v5 = [contactStores countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(contactStores);
      }

      v10 = [*(*(&v14 + 1) + 8 * v9) unifiedContactCountWithError:error];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v7 += [v10 unsignedIntegerValue];

      if (v6 == ++v9)
      {
        v6 = [contactStores countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  v7 = 0;
LABEL_11:

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];

  return v12;
}

- (id)contactCountForFetchRequest:(id)request error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  contactStores = [(CNAggregateContactStore *)self contactStores];
  v8 = [contactStores countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(contactStores);
      }

      v13 = [*(*(&v17 + 1) + 8 * v12) contactCountForFetchRequest:requestCopy error:error];
      if (!v13)
      {
        break;
      }

      v14 = v13;
      v10 += [v13 unsignedIntegerValue];

      if (v9 == ++v12)
      {
        v9 = [contactStores countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  v10 = 0;
LABEL_11:

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];

  return v15;
}

- (id)unifiedContactsMatchingPredicate:(id)predicate keysToFetch:(id)fetch error:(id *)error
{
  predicateCopy = predicate;
  fetchCopy = fetch;
  [CNAPITriageLogger setThreadEntryPoint:a2];
  v11 = +[CNAPITriageLogger os_log];
  v12 = os_signpost_id_generate(v11);

  v13 = +[CNAPITriageLogger os_log];
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Fetching", "", buf, 2u);
  }

  v15 = objc_alloc_init(MEMORY[0x1E6996838]);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __78__CNAggregateContactStore_unifiedContactsMatchingPredicate_keysToFetch_error___block_invoke;
  v31[3] = &__block_descriptor_40_e5_v8__0l;
  v31[4] = v12;
  v16 = [v31 copy];
  v17 = objc_opt_self();
  v18 = _Block_copy(v17);
  [v15 push:v18];

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __78__CNAggregateContactStore_unifiedContactsMatchingPredicate_keysToFetch_error___block_invoke_32;
  v27 = &unk_1E7412698;
  v28 = predicateCopy;
  v19 = fetchCopy;
  v29 = v19;
  selfCopy = self;
  v20 = [(CNAggregateContactStore *)self _allStoreResultsWithError:error withBlock:&v24];
  v21 = [(CNAggregateContactStore *)self _unifiedContactsFromContacts:v20 unifyContactsFromMainStore:1 keysToFetch:v19 error:error, v24, v25, v26, v27];

  [v15 popAllWithHandler:&__block_literal_global_36];
  v22 = objc_opt_self();

  return v21;
}

void __78__CNAggregateContactStore_unifiedContactsMatchingPredicate_keysToFetch_error___block_invoke(uint64_t a1)
{
  [CNAPITriageLogger setThreadEntryPoint:0];
  v2 = +[CNAPITriageLogger os_log];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Fetching", "", v5, 2u);
  }
}

id __78__CNAggregateContactStore_unifiedContactsMatchingPredicate_keysToFetch_error___block_invoke_32(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = [v7 unifiedContactsMatchingPredicate:v5 keysToFetch:v6 error:a3];
  [*(a1 + 48) didFetchContacts:v8 forPredicate:*(a1 + 32) fromStore:v7 unifiedFetch:1];

  return v8;
}

- (id)_unifiedMeContactWithKeysToFetch:(id)fetch error:(id *)error
{
  fetchCopy = fetch;
  contactStores = [(CNAggregateContactStore *)self contactStores];
  v8 = [contactStores _cn_map:&__block_literal_global_40];
  v9 = [v8 _cn_filter:*MEMORY[0x1E6996490]];
  v10 = [v9 _cn_map:*MEMORY[0x1E69964A0]];
  _cn_flatten = [v10 _cn_flatten];

  v12 = [CNContact predicateForContactsWithIdentifiers:_cn_flatten];
  v20 = 0;
  v13 = [(CNAggregateContactStore *)self unifiedContactsMatchingPredicate:v12 keysToFetch:fetchCopy error:&v20];

  v14 = v20;
  if (!(*(*MEMORY[0x1E6996530] + 16))())
  {
    v15 = *MEMORY[0x1E6996550];
    firstObject = [v13 firstObject];
    LODWORD(v15) = (*(v15 + 16))(v15, firstObject);

    if (v15)
    {
      firstObject2 = [v13 firstObject];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v14)
  {
    if (!error)
    {
      goto LABEL_9;
    }

LABEL_8:
    v18 = v14;
    firstObject2 = 0;
    *error = v14;
    goto LABEL_10;
  }

  v14 = [CNErrorFactory errorWithCode:200 userInfo:0];
  if (error)
  {
    goto LABEL_8;
  }

LABEL_9:
  firstObject2 = 0;
LABEL_10:

  return firstObject2;
}

- (id)meContactIdentifiers:(id *)identifiers
{
  contactStores = [(CNAggregateContactStore *)self contactStores];
  v5 = [MEMORY[0x1E69966C0] eitherWithLeft:MEMORY[0x1E695E0F0]];
  v6 = [contactStores _cn_reduce:&__block_literal_global_45 initialValue:v5];

  v7 = v6;
  if ((*(*MEMORY[0x1E6996490] + 16))())
  {
    left = [v7 left];
  }

  else
  {
    right = [v7 right];
    if (identifiers)
    {
      right = right;
      *identifiers = right;
    }

    left = 0;
  }

  return left;
}

id __48__CNAggregateContactStore_meContactIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isLeft])
  {
    v14 = 0;
    v6 = [v5 meContactIdentifiers:&v14];
    v7 = v14;
    v8 = v7;
    if (v7 && (CNIsErrorWithCode(v7, 200) & 1) == 0)
    {
      v12 = [MEMORY[0x1E69966C0] eitherWithRight:v8];
    }

    else
    {
      v9 = MEMORY[0x1E69966C0];
      v10 = [v4 left];
      v11 = [v10 arrayByAddingObjectsFromArray:v6];
      v12 = [v9 eitherWithLeft:v11];
    }
  }

  else
  {
    v12 = v4;
  }

  return v12;
}

- (BOOL)enumerateContactsAndMatchInfoWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  [CNAPITriageLogger setThreadEntryPoint:a2];
  v11 = +[CNAPITriageLogger os_log];
  v12 = os_signpost_id_generate(v11);

  v13 = +[CNAPITriageLogger os_log];
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Fetching", "", buf, 2u);
  }

  v15 = objc_alloc_init(MEMORY[0x1E6996838]);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __90__CNAggregateContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke;
  v62[3] = &__block_descriptor_40_e5_v8__0l;
  v62[4] = v12;
  v16 = [v62 copy];
  v17 = objc_opt_self();
  v18 = _Block_copy(v17);
  [v15 push:v18];

  *buf = 0;
  v59 = buf;
  v60 = 0x2020000000;
  v61 = 1;
  if ([requestCopy onlyMainStore])
  {
    mainStore = [(CNAggregateContactStore *)self mainStore];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __90__CNAggregateContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_46;
    v55[3] = &unk_1E7412728;
    v55[4] = self;
    v56 = requestCopy;
    v57 = blockCopy;
    v20 = [mainStore enumerateContactsAndMatchInfoWithFetchRequest:v56 error:error usingBlock:v55];
    v59[24] = v20;

    v21 = v56;
  }

  else
  {
    v37 = blockCopy;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    array = [MEMORY[0x1E695DF70] array];
    mainStore2 = [(CNAggregateContactStore *)self mainStore];
    v54 = 0;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __90__CNAggregateContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_2;
    v47[3] = &unk_1E7412778;
    v25 = mainStore2;
    v48 = v25;
    v26 = requestCopy;
    v49 = v26;
    v27 = array;
    v50 = v27;
    v28 = dictionary;
    v51 = v28;
    selfCopy = self;
    v53 = buf;
    v29 = [(CNAggregateContactStore *)self _allStoreResultsWithError:&v54 withBlock:v47];
    v38 = v54;
    if (v59[24] == 1)
    {
      unifyResults = [v26 unifyResults];
      keysToFetch = [v26 keysToFetch];
      v32 = [(CNAggregateContactStore *)self _unifiedContactsFromContacts:v29 unifyContactsFromMainStore:unifyResults keysToFetch:keysToFetch error:error];

      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __90__CNAggregateContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_4;
      v39[3] = &unk_1E74127A0;
      v40 = v28;
      v42 = &v43;
      blockCopy = v37;
      v41 = v37;
      [v32 enumerateObjectsUsingBlock:v39];
      if (v44[3])
      {
        v33 = os_log_create("com.apple.contacts", "data-access-error");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [CNAggregateContactStore enumerateContactsAndMatchInfoWithFetchRequest:v33 error:? usingBlock:?];
        }

        v59[24] = 0;
        if (error)
        {
          *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNErrorDomain" code:2 userInfo:0];
        }

        [MEMORY[0x1E6996828] simulateCrashWithMessage:{@"enumerateContactsAndMatchInfoWithFetchRequest encountered NSNull %lu times where %lu CNContact objects where expcted", v44[3], objc_msgSend(v32, "count")}];
      }

      _Block_object_dispose(&v43, 8);
    }

    else
    {
      if (error)
      {
        *error = v38;
      }

      v32 = v29;
    }

    v21 = v38;
  }

  v34 = v59[24];
  _Block_object_dispose(buf, 8);
  [v15 popAllWithHandler:&__block_literal_global_55];
  v35 = objc_opt_self();

  return v34 & 1;
}

void __90__CNAggregateContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke(uint64_t a1)
{
  [CNAPITriageLogger setThreadEntryPoint:0];
  v2 = +[CNAPITriageLogger os_log];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Fetching", "", v5, 2u);
  }
}

void __90__CNAggregateContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_46(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v9 = [v6 keysToFetch];
  v10 = [v5 applyPostFetchDecoratorsToContact:v8 keysToFetch:v9 unifyContactsFromMainStore:{objc_msgSend(*(a1 + 40), "unifyResults")}];

  (*(*(a1 + 48) + 16))();
}

id __90__CNAggregateContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = [MEMORY[0x1E695DF70] array];
  v6 = *(a1 + 40);
  v7 = *(a1 + 32) == v5;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __90__CNAggregateContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_3;
  v16 = &unk_1E7412750;
  v19 = &v21;
  v20 = v7;
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  LOBYTE(a3) = [v5 enumerateContactsAndMatchInfoWithFetchRequest:v6 error:a3 usingBlock:&v13];
  v8 = *(a1 + 64);
  v9 = v22[5];
  v10 = [*(a1 + 40) predicate];
  [v8 didFetchContacts:v9 forPredicate:v10 fromStore:v5 unifiedFetch:{objc_msgSend(*(a1 + 40), "unifyResults")}];

  if ((a3 & 1) == 0)
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  v11 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __90__CNAggregateContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  [*(*(*(a1 + 48) + 8) + 40) addObject:v10];
  if (*(a1 + 56) == 1)
  {
    v6 = *(a1 + 32);
    v7 = [v10 identifier];
    [v6 addObject:v7];
  }

  if (v5)
  {
    v8 = *(a1 + 40);
    v9 = [v10 identifier];
    [v8 setObject:v5 forKeyedSubscript:v9];
  }
}

void __90__CNAggregateContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_4(void *a1, void *a2)
{
  v6 = a2;
  v3 = a1[4];
  v4 = [v6 identifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  if ((*(*MEMORY[0x1E6996550] + 16))())
  {
    (*(a1[5] + 16))();
  }

  else
  {
    ++*(*(a1[6] + 8) + 24);
  }
}

- (BOOL)enumerateNonUnifiedContactsWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  [CNAPITriageLogger setThreadEntryPoint:a2];
  v11 = +[CNAPITriageLogger os_log];
  v12 = os_signpost_id_generate(v11);

  v13 = +[CNAPITriageLogger os_log];
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Fetching", "", buf, 2u);
  }

  v15 = objc_alloc_init(MEMORY[0x1E6996838]);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __88__CNAggregateContactStore_enumerateNonUnifiedContactsWithFetchRequest_error_usingBlock___block_invoke;
  v44[3] = &__block_descriptor_40_e5_v8__0l;
  v44[4] = v12;
  v16 = [v44 copy];
  v17 = objc_opt_self();
  v18 = _Block_copy(v17);
  [v15 push:v18];

  if ([requestCopy unifyResults])
  {
    v22 = MEMORY[0x1E695DF30];
    v23 = MEMORY[0x1E696AEC0];
    v24 = NSStringFromSelector(a2);
    v25 = [v23 stringWithFormat:@"Can't set -[CNContactFetchRequest unifyResults] to YES with %@", v24];
    v26 = [v22 exceptionWithName:*MEMORY[0x1E695D940] reason:v25 userInfo:0];
    v27 = v26;

    objc_exception_throw(v26);
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  *buf = 0;
  v35 = buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  v39 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __88__CNAggregateContactStore_enumerateNonUnifiedContactsWithFetchRequest_error_usingBlock___block_invoke_61;
  v28[3] = &unk_1E74127F0;
  v32 = &v40;
  v33 = buf;
  v29 = requestCopy;
  selfCopy = self;
  v31 = blockCopy;
  [(CNAggregateContactStore *)self _enumerateStoresUsingBlock:v28];
  v19 = *(v41 + 24);
  if (error && (v41[3] & 1) == 0)
  {
    *error = *(v35 + 5);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v40, 8);
  [v15 popAllWithHandler:&__block_literal_global_63];
  v20 = objc_opt_self();

  return v19 & 1;
}

void __88__CNAggregateContactStore_enumerateNonUnifiedContactsWithFetchRequest_error_usingBlock___block_invoke(uint64_t a1)
{
  [CNAPITriageLogger setThreadEntryPoint:0];
  v2 = +[CNAPITriageLogger os_log];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Fetching", "", v5, 2u);
  }
}

void __88__CNAggregateContactStore_enumerateNonUnifiedContactsWithFetchRequest_error_usingBlock___block_invoke_61(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(*(a1 + 64) + 8);
  v13 = *(v6 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__CNAggregateContactStore_enumerateNonUnifiedContactsWithFetchRequest_error_usingBlock___block_invoke_2;
  v9[3] = &unk_1E74127C8;
  v8 = *(a1 + 32);
  v7 = v8.i64[0];
  v10 = vextq_s8(v8, v8, 8uLL);
  v11 = *(a1 + 48);
  v12 = a3;
  LOBYTE(a3) = [a2 enumerateContactsWithFetchRequest:v7 error:&v13 usingBlock:v9];
  objc_storeStrong((v6 + 40), v13);
  *(*(*(a1 + 56) + 8) + 24) = a3;
}

void __88__CNAggregateContactStore_enumerateNonUnifiedContactsWithFetchRequest_error_usingBlock___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = 0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = [v6 keysToFetch];
  v9 = [v5 applyPostFetchDecoratorsToContact:v7 keysToFetch:v8 unifyContactsFromMainStore:{objc_msgSend(*(a1 + 40), "unifyResults")}];

  (*(*(a1 + 48) + 16))();
  v10 = v11;
  *a3 = v11;
  **(a1 + 56) = v10;
}

- (id)groupsMatchingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CNAggregateContactStore_groupsMatchingPredicate_error___block_invoke;
  v10[3] = &unk_1E7412818;
  v11 = predicateCopy;
  v7 = predicateCopy;
  v8 = [(CNAggregateContactStore *)self _allStoreResultsWithError:error withBlock:v10];

  return v8;
}

- (id)groupWithIdentifier:(id)identifier error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_contactStores;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) groupWithIdentifier:identifierCopy error:{error, v15}];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)membersOfGroupWithIdentifier:(id)identifier keysToFetch:(id)fetch error:(id *)error
{
  identifierCopy = identifier;
  fetchCopy = fetch;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CNAggregateContactStore_membersOfGroupWithIdentifier_keysToFetch_error___block_invoke;
  v14[3] = &unk_1E7412840;
  v15 = identifierCopy;
  v16 = fetchCopy;
  v10 = fetchCopy;
  v11 = identifierCopy;
  v12 = [(CNAggregateContactStore *)self _allStoreResultsWithError:error withBlock:v14];

  return v12;
}

- (id)subgroupsOfGroupWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__CNAggregateContactStore_subgroupsOfGroupWithIdentifier_error___block_invoke;
  v10[3] = &unk_1E7412818;
  v11 = identifierCopy;
  v7 = identifierCopy;
  v8 = [(CNAggregateContactStore *)self _allStoreResultsWithError:error withBlock:v10];

  return v8;
}

- (id)containersMatchingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__CNAggregateContactStore_containersMatchingPredicate_error___block_invoke;
  v10[3] = &unk_1E7412818;
  v11 = predicateCopy;
  v7 = predicateCopy;
  v8 = [(CNAggregateContactStore *)self _allStoreResultsWithError:error withBlock:v10];

  return v8;
}

- (id)serverSearchContainersMatchingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__CNAggregateContactStore_serverSearchContainersMatchingPredicate_error___block_invoke;
  v10[3] = &unk_1E7412818;
  v11 = predicateCopy;
  v7 = predicateCopy;
  v8 = [(CNAggregateContactStore *)self _allStoreResultsWithError:error withBlock:v10];

  return v8;
}

- (id)defaultContainerIdentifier
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_contactStores;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        defaultContainerIdentifier = [*(*(&v10 + 1) + 8 * i) defaultContainerIdentifier];
        if (defaultContainerIdentifier)
        {
          v8 = defaultContainerIdentifier;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)policyWithDescription:(id)description error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_contactStores;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) policyWithDescription:descriptionCopy error:{error, v15}];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)usedLabelsForPropertyWithKey:(id)key error:(id *)error
{
  keyCopy = key;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__CNAggregateContactStore_usedLabelsForPropertyWithKey_error___block_invoke;
  v10[3] = &unk_1E7412818;
  v11 = keyCopy;
  v7 = keyCopy;
  v8 = [(CNAggregateContactStore *)self _allStoreResultsWithError:error withBlock:v10];

  return v8;
}

- (BOOL)setMeContact:(id)contact error:(id *)error
{
  contactCopy = contact;
  contactStores = [(CNAggregateContactStore *)self contactStores];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __46__CNAggregateContactStore_setMeContact_error___block_invoke;
  v19[3] = &unk_1E7412868;
  v8 = contactCopy;
  v20 = v8;
  v9 = [contactStores _cn_map:v19];

  v10 = MEMORY[0x1E6996490];
  v11 = [v9 _cn_firstObjectPassingTest:*MEMORY[0x1E6996490]];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v9 _cn_firstObjectPassingTest:*MEMORY[0x1E6996498]];
  }

  v14 = v13;

  v15 = v14;
  v16 = (*(*v10 + 16))();
  if ((v16 & 1) == 0)
  {
    right = [v15 right];
    if (error)
    {
      right = right;
      *error = right;
    }
  }

  return v16;
}

id __46__CNAggregateContactStore_setMeContact_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69966C0];
  v3 = *(a1 + 32);
  v8 = 0;
  v4 = [a2 setMeContact:v3 error:&v8];
  v5 = v8;
  v6 = [v2 eitherWithBool:v4 error:v5];

  return v6;
}

- (BOOL)setMeContact:(id)contact forContainer:(id)container error:(id *)error
{
  contactCopy = contact;
  containerCopy = container;
  contactStores = [(CNAggregateContactStore *)self contactStores];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __59__CNAggregateContactStore_setMeContact_forContainer_error___block_invoke;
  v26 = &unk_1E7412890;
  v11 = contactCopy;
  v27 = v11;
  v12 = containerCopy;
  v28 = v12;
  v13 = [contactStores _cn_map:&v23];

  v14 = MEMORY[0x1E6996490];
  v15 = [v13 _cn_firstObjectPassingTest:{*MEMORY[0x1E6996490], v23, v24, v25, v26}];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [v13 _cn_firstObjectPassingTest:*MEMORY[0x1E6996498]];
  }

  v18 = v17;

  v19 = v18;
  v20 = (*(*v14 + 16))();
  if ((v20 & 1) == 0)
  {
    right = [v19 right];
    if (error)
    {
      right = right;
      *error = right;
    }
  }

  return v20;
}

id __59__CNAggregateContactStore_setMeContact_forContainer_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69966C0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = 0;
  v5 = [a2 setMeContact:v3 forContainer:v4 error:&v9];
  v6 = v9;
  v7 = [v2 eitherWithBool:v5 error:v6];

  return v7;
}

- (id)accountsMatchingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CNAggregateContactStore_accountsMatchingPredicate_error___block_invoke;
  v10[3] = &unk_1E7412818;
  v11 = predicateCopy;
  v7 = predicateCopy;
  v8 = [(CNAggregateContactStore *)self _allStoreResultsWithError:error withBlock:v10];

  return v8;
}

- (BOOL)supportsSaveRequest:(id)request
{
  requestCopy = request;
  contactStores = self->_contactStores;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__CNAggregateContactStore_supportsSaveRequest___block_invoke;
  v8[3] = &unk_1E74128B8;
  v9 = requestCopy;
  v6 = requestCopy;
  LOBYTE(contactStores) = [(NSArray *)contactStores _cn_any:v8];

  return contactStores;
}

- (BOOL)executeSaveRequest:(id)request response:(id *)response authorizationContext:(id)context error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contextCopy = context;
  suppressChangeNotifications = [requestCopy suppressChangeNotifications];
  v13 = 0x1E7410000uLL;
  if ((suppressChangeNotifications & 1) == 0)
  {
    v14 = +[CNChangesNotifier sharedNotifier];
    [v14 willSaveChanges];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = self->_contactStores;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    selfCopy = self;
    v18 = *v27;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        if ([v20 supportsSaveRequest:requestCopy] && !objc_msgSend(v20, "executeSaveRequest:response:authorizationContext:error:", requestCopy, response, contextCopy, error))
        {
          v21 = 0;
          goto LABEL_14;
        }
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v21 = 1;
LABEL_14:
    self = selfCopy;
    v13 = 0x1E7410000;
  }

  else
  {
    v21 = 1;
  }

  if ((suppressChangeNotifications & 1) == 0)
  {
    sharedNotifier = [*(v13 + 1152) sharedNotifier];
    saveRequestIdentifier = [requestCopy saveRequestIdentifier];
    [sharedNotifier didSaveChangesSuccessfully:v21 fromContactStore:self requestIdentifier:saveRequestIdentifier];
  }

  return v21;
}

- (id)executeFetchRequest:(id)request progressiveResults:(id)results completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  resultsCopy = results;
  completionCopy = completion;
  [CNAPITriageLogger setThreadEntryPoint:a2];
  v8 = +[CNAPITriageLogger os_log];
  v9 = os_signpost_id_generate(v8);

  v10 = +[CNAPITriageLogger os_log];
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Fetching", "", buf, 2u);
  }

  v26 = objc_alloc_init(MEMORY[0x1E6996838]);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __77__CNAggregateContactStore_executeFetchRequest_progressiveResults_completion___block_invoke;
  v39[3] = &__block_descriptor_40_e5_v8__0l;
  v39[4] = v9;
  v12 = [v39 copy];
  v13 = objc_opt_self();
  v14 = _Block_copy(v13);
  [v26 push:v14];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = self->_contactStores;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v16)
  {
    v17 = *v36;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v35 + 1) + 8 * i);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __77__CNAggregateContactStore_executeFetchRequest_progressiveResults_completion___block_invoke_65;
        aBlock[3] = &unk_1E74128E0;
        aBlock[4] = self;
        v20 = requestCopy;
        v33 = v20;
        v34 = resultsCopy;
        v21 = _Block_copy(aBlock);
        v22 = [v19 executeFetchRequest:v20 progressiveResults:v21 completion:completionCopy];
        v23 = v22;
        if (v22)
        {
          v27 = v22;
        }

        if (v23)
        {

          goto LABEL_16;
        }
      }

      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0;
LABEL_16:
  [v26 popAllWithHandler:&__block_literal_global_68];
  v24 = objc_opt_self();

  return v27;
}

void __77__CNAggregateContactStore_executeFetchRequest_progressiveResults_completion___block_invoke(uint64_t a1)
{
  [CNAPITriageLogger setThreadEntryPoint:0];
  v2 = +[CNAPITriageLogger os_log];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Fetching", "", v5, 2u);
  }
}

void __77__CNAggregateContactStore_executeFetchRequest_progressiveResults_completion___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v9 = [v6 keysToFetch];
  v10 = [v5 applyPostFetchDecoratorsToContacts:v8 keysToFetch:v9 unifyContactsFromMainStore:{objc_msgSend(*(a1 + 40), "unifyResults")}];

  (*(*(a1 + 48) + 16))();
}

- (id)enumeratorForContactFetchRequest:(id)request error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  [CNAPITriageLogger setThreadEntryPoint:a2];
  v5 = +[CNAPITriageLogger os_log];
  v6 = os_signpost_id_generate(v5);

  v7 = +[CNAPITriageLogger os_log];
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Fetching", "", buf, 2u);
  }

  v25 = objc_alloc_init(MEMORY[0x1E6996838]);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __66__CNAggregateContactStore_enumeratorForContactFetchRequest_error___block_invoke;
  v36[3] = &__block_descriptor_40_e5_v8__0l;
  v36[4] = v6;
  v9 = [v36 copy];
  v10 = objc_opt_self();
  v11 = _Block_copy(v10);
  [v25 push:v11];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = self->_contactStores;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v13)
  {
    v14 = *v33;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v17 = [v16 enumeratorForContactFetchRequest:requestCopy error:error];
          value = [v17 value];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __66__CNAggregateContactStore_enumeratorForContactFetchRequest_error___block_invoke_71;
          v30[3] = &unk_1E7412908;
          v30[4] = self;
          v31 = requestCopy;
          v19 = [value _cn_compactMap:v30];

          v20 = [CNFetchResult alloc];
          currentHistoryToken = [v17 currentHistoryToken];
          v22 = [(CNFetchResult *)v20 initWithValue:v19 currentHistoryToken:currentHistoryToken];

          if (v22)
          {
            v26 = v22;
          }

          if (v22)
          {

            goto LABEL_17;
          }
        }
      }

      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0;
LABEL_17:
  [v25 popAllWithHandler:&__block_literal_global_75];
  v23 = objc_opt_self();

  return v26;
}

void __66__CNAggregateContactStore_enumeratorForContactFetchRequest_error___block_invoke(uint64_t a1)
{
  [CNAPITriageLogger setThreadEntryPoint:0];
  v2 = +[CNAPITriageLogger os_log];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Fetching", "", v5, 2u);
  }
}

id __66__CNAggregateContactStore_enumeratorForContactFetchRequest_error___block_invoke_71(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 keysToFetch];
  v7 = [v3 applyPostFetchDecoratorsToContact:v5 keysToFetch:v6 unifyContactsFromMainStore:{objc_msgSend(*(a1 + 40), "unifyResults")}];

  return v7;
}

- (id)enumeratorForChangeHistoryFetchRequest:(id)request error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_contactStores;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v13 = [v12 enumeratorForChangeHistoryFetchRequest:requestCopy error:{error, v16}];
          if (v13)
          {
            v14 = v13;
            goto LABEL_12;
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (id)contactWithUserActivityUserInfo:(id)info keysToFetch:(id)fetch
{
  v21 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  fetchCopy = fetch;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_contactStores;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) contactWithUserActivityUserInfo:infoCopy keysToFetch:{fetchCopy, v16}];
        if (v13)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)userActivityUserInfoForContact:(id)contact
{
  v18 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_contactStores;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) userActivityUserInfoForContact:{contactCopy, v13}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (CNContactStore)contactStoreForMatchingDictionaryWork
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __64__CNAggregateContactStore_contactStoreForMatchingDictionaryWork__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4];
  if (!v3)
  {
    v4 = [v2 findContactStoreForMatchingDictionaryWork];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    v3 = *(*(a1 + 32) + 32);
  }

  return v3;
}

- (id)findContactStoreForMatchingDictionaryWork
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_contactStores;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        mainContactStore = *(*(&v10 + 1) + 8 * i);
        if ([mainContactStore supportsMatchingDictionaries])
        {

          goto LABEL_11;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  mainContactStore = [(CNAggregateContactStore *)self mainContactStore];
LABEL_11:

  return mainContactStore;
}

- (id)descriptorForRequiredKeysForMatchingDictionary
{
  contactStoreForMatchingDictionaryWork = [(CNAggregateContactStore *)self contactStoreForMatchingDictionaryWork];
  descriptorForRequiredKeysForMatchingDictionary = [contactStoreForMatchingDictionaryWork descriptorForRequiredKeysForMatchingDictionary];

  return descriptorForRequiredKeysForMatchingDictionary;
}

- (id)contactIdentifierWithMatchingDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  contactStoreForMatchingDictionaryWork = [(CNAggregateContactStore *)self contactStoreForMatchingDictionaryWork];
  v6 = [contactStoreForMatchingDictionaryWork contactIdentifierWithMatchingDictionary:dictionaryCopy];

  return v6;
}

- (id)matchingDictionaryForContact:(id)contact
{
  contactCopy = contact;
  contactStoreForMatchingDictionaryWork = [(CNAggregateContactStore *)self contactStoreForMatchingDictionaryWork];
  v6 = [contactStoreForMatchingDictionaryWork matchingDictionaryForContact:contactCopy];

  return v6;
}

- (BOOL)registerChangeHistoryClientIdentifier:(id)identifier error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_contactStores;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v14 + 1) + 8 * i) registerChangeHistoryClientIdentifier:identifierCopy error:{error, v14}])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)unregisterChangeHistoryClientIdentifier:(id)identifier error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_contactStores;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v14 + 1) + 8 * i) unregisterChangeHistoryClientIdentifier:identifierCopy error:{error, v14}])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)changeHistoryWithFetchRequest:(id)request error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_contactStores;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) changeHistoryWithFetchRequest:requestCopy error:{error, v15}];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)clearChangeHistoryForClientIdentifier:(id)identifier toChangeAnchor:(id)anchor error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  anchorCopy = anchor;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_contactStores;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v17 + 1) + 8 * i) clearChangeHistoryForClientIdentifier:identifierCopy toChangeAnchor:anchorCopy error:{error, v17}])
        {
          v15 = 1;
          goto LABEL_11;
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (BOOL)executeChangeHistoryClearRequest:(id)request error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_contactStores;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v14 + 1) + 8 * i) executeChangeHistoryClearRequest:requestCopy error:{error, v14}])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)applyPostFetchDecoratorsToContact:(id)contact keysToFetch:(id)fetch unifyContactsFromMainStore:(BOOL)store
{
  storeCopy = store;
  v16 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v8 = MEMORY[0x1E695DEC8];
  fetchCopy = fetch;
  contactCopy2 = contact;
  v11 = [v8 arrayWithObjects:&contactCopy count:1];

  v12 = [(CNAggregateContactStore *)self applyPostFetchDecoratorsToContacts:v11 keysToFetch:fetchCopy unifyContactsFromMainStore:storeCopy, contactCopy, v16];

  firstObject = [v12 firstObject];

  return firstObject;
}

- (id)applyPostFetchDecoratorsToContacts:(id)contacts keysToFetch:(id)fetch unifyContactsFromMainStore:(BOOL)store
{
  contactsCopy = contacts;
  fetchCopy = fetch;
  v10 = *MEMORY[0x1E6996530];
  postFetchDecoratorBlocks = [(CNAggregateContactStore *)self postFetchDecoratorBlocks];
  LODWORD(v10) = (*(v10 + 16))(v10, postFetchDecoratorBlocks);

  if (v10)
  {
    v12 = contactsCopy;
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__2;
    v23 = __Block_byref_object_dispose__2;
    v24 = contactsCopy;
    postFetchDecoratorBlocks2 = [(CNAggregateContactStore *)self postFetchDecoratorBlocks];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __101__CNAggregateContactStore_applyPostFetchDecoratorsToContacts_keysToFetch_unifyContactsFromMainStore___block_invoke;
    v15[3] = &unk_1E7412930;
    v17 = &v19;
    v16 = fetchCopy;
    storeCopy = store;
    [postFetchDecoratorBlocks2 enumerateObjectsUsingBlock:v15];

    v12 = v20[5];
    _Block_object_dispose(&v19, 8);
  }

  return v12;
}

uint64_t __101__CNAggregateContactStore_applyPostFetchDecoratorsToContacts_keysToFetch_unifyContactsFromMainStore___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16))(a2, *(*(*(a1 + 40) + 8) + 40), *(a1 + 32), *(a1 + 48));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (void)addPostFetchDecorator:(id)decorator
{
  decoratorCopy = decorator;
  postFetchDecoratorBlocks = [(CNAggregateContactStore *)self postFetchDecoratorBlocks];
  v5 = [decoratorCopy copy];

  v6 = _Block_copy(v5);
  v7 = [postFetchDecoratorBlocks arrayByAddingObject:v6];
  [(CNAggregateContactStore *)self setPostFetchDecoratorBlocks:v7];
}

- (id)getBackgroundColorOnImageData:(id)data bitmapFormat:(id)format error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  formatCopy = format;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = self->_contactStores;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v25;
LABEL_3:
    v15 = 0;
    v16 = v13;
    while (1)
    {
      if (*v25 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v24 + 1) + 8 * v15);
      v23 = v16;
      v18 = [v17 getBackgroundColorOnImageData:dataCopy bitmapFormat:formatCopy error:&v23];
      v13 = v23;

      if (v18)
      {
        break;
      }

      ++v15;
      v16 = v13;
      if (v12 == v15)
      {
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
    v13 = 0;
LABEL_11:
    v18 = 0;
  }

  v19 = v18;
  v20 = v19;
  if (error && !v19)
  {
    v21 = v13;
    *error = v13;
  }

  return v20;
}

- (BOOL)setBestMeIfNeededForGivenName:(id)name familyName:(id)familyName email:(id)email error:(id *)error
{
  emailCopy = email;
  familyNameCopy = familyName;
  nameCopy = name;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  LOBYTE(error) = [mainStore setBestMeIfNeededForGivenName:nameCopy familyName:familyNameCopy email:emailCopy error:error];

  return error;
}

- (id)identifierWithError:(id *)error
{
  mainStore = [(CNAggregateContactStore *)self mainStore];
  v5 = [mainStore identifierWithError:error];

  return v5;
}

- (int)saveSequenceCount
{
  mainStore = [(CNAggregateContactStore *)self mainStore];
  saveSequenceCount = [mainStore saveSequenceCount];

  return saveSequenceCount;
}

- (BOOL)moveContacts:(id)contacts fromContainer:(id)container toContainer:(id)toContainer error:(id *)error
{
  toContainerCopy = toContainer;
  containerCopy = container;
  contactsCopy = contacts;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  LOBYTE(error) = [mainStore moveContacts:contactsCopy fromContainer:containerCopy toContainer:toContainerCopy error:error];

  return error;
}

- (BOOL)resetSortDataIfNeededWithError:(id *)error
{
  mainStore = [(CNAggregateContactStore *)self mainStore];
  LOBYTE(error) = [mainStore resetSortDataIfNeededWithError:error];

  return error;
}

- (BOOL)setDefaultAccountIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  LOBYTE(error) = [mainStore setDefaultAccountIdentifier:identifierCopy error:error];

  return error;
}

- (id)legacyTetheredSyncDeviceAnchor
{
  mainStore = [(CNAggregateContactStore *)self mainStore];
  legacyTetheredSyncDeviceAnchor = [mainStore legacyTetheredSyncDeviceAnchor];

  return legacyTetheredSyncDeviceAnchor;
}

- (void)setLegacyTetheredSyncDeviceAnchor:(id)anchor
{
  anchorCopy = anchor;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  [mainStore setLegacyTetheredSyncDeviceAnchor:anchorCopy];
}

- (id)legacyTetheredSyncComputerAnchor
{
  mainStore = [(CNAggregateContactStore *)self mainStore];
  legacyTetheredSyncComputerAnchor = [mainStore legacyTetheredSyncComputerAnchor];

  return legacyTetheredSyncComputerAnchor;
}

- (void)setLegacyTetheredSyncComputerAnchor:(id)anchor
{
  anchorCopy = anchor;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  [mainStore setLegacyTetheredSyncComputerAnchor:anchorCopy];
}

- (id)individualContactCountWithError:(id *)error
{
  mainStore = [(CNAggregateContactStore *)self mainStore];
  v5 = [mainStore individualContactCountWithError:error];

  return v5;
}

- (id)latestConsumedChangeHistoryAnchorForClientIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  v8 = [mainStore latestConsumedChangeHistoryAnchorForClientIdentifier:identifierCopy error:error];

  return v8;
}

- (BOOL)verifyChangeHistoryForClientIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  LOBYTE(error) = [mainStore verifyChangeHistoryForClientIdentifier:identifierCopy error:error];

  return error;
}

- (id)fetchLimitedAccessContactIdentifiersForBundle:(id)bundle
{
  bundleCopy = bundle;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  v6 = [mainStore fetchLimitedAccessContactIdentifiersForBundle:bundleCopy];

  return v6;
}

- (void)addLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  bundleCopy = bundle;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  [mainStore addLimitedAccessForBundle:bundleCopy contactIdentifier:identifierCopy];
}

- (void)addLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  bundleCopy = bundle;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  [mainStore addLimitedAccessForBundle:bundleCopy contactIdentifiers:identifiersCopy];
}

- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  bundleCopy = bundle;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  [mainStore removeLimitedAccessForBundle:bundleCopy contactIdentifier:identifierCopy];
}

- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  bundleCopy = bundle;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  [mainStore removeLimitedAccessForBundle:bundleCopy contactIdentifiers:identifiersCopy];
}

- (id)getLimitedAccessContactsCountForBundle:(id)bundle
{
  bundleCopy = bundle;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  v6 = [mainStore getLimitedAccessContactsCountForBundle:bundleCopy];

  return v6;
}

- (id)populateSyncTableForLimitedAccessAboveSequenceNumber:(id)number
{
  numberCopy = number;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  v6 = [mainStore populateSyncTableForLimitedAccessAboveSequenceNumber:numberCopy];

  return v6;
}

- (void)purgeLimitedAccessRecordsForBundle:(id)bundle
{
  bundleCopy = bundle;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  [mainStore purgeLimitedAccessRecordsForBundle:bundleCopy];
}

- (void)updateLimitedAccessTable:(id)table
{
  tableCopy = table;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  [mainStore updateLimitedAccessTable:tableCopy];
}

- (id)getLimitedAccessLastSyncSequenceNumber:(id *)number
{
  mainStore = [(CNAggregateContactStore *)self mainStore];
  v5 = [mainStore getLimitedAccessLastSyncSequenceNumber:number];

  return v5;
}

- (void)applyLimitedAccessSyncEvents:(id)events
{
  eventsCopy = events;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  [mainStore applyLimitedAccessSyncEvents:eventsCopy];
}

- (void)dropAllLimitedAccessRows
{
  mainStore = [(CNAggregateContactStore *)self mainStore];
  [mainStore dropAllLimitedAccessRows];
}

- (void)dropAllLimitedAccessRowsAndSyncNotify
{
  mainStore = [(CNAggregateContactStore *)self mainStore];
  [mainStore dropAllLimitedAccessRowsAndSyncNotify];
}

- (void)setLimitedAccessTableCurrentSequenceNumber:(id)number
{
  numberCopy = number;
  mainStore = [(CNAggregateContactStore *)self mainStore];
  [mainStore setLimitedAccessTableCurrentSequenceNumber:numberCopy];
}

- (BOOL)shouldAnalyzeDatabaseWithError:(id *)error
{
  mainStore = [(CNAggregateContactStore *)self mainStore];
  LOBYTE(error) = [mainStore shouldAnalyzeDatabaseWithError:error];

  return error;
}

- (BOOL)analyzeDatabaseWithError:(id *)error
{
  mainStore = [(CNAggregateContactStore *)self mainStore];
  LOBYTE(error) = [mainStore analyzeDatabaseWithError:error];

  return error;
}

- (id)getWatchLimitedAccessSyncDataStartingAtSequenceNumber:(int64_t)number
{
  mainStore = [(CNAggregateContactStore *)self mainStore];
  v5 = [mainStore getWatchLimitedAccessSyncDataStartingAtSequenceNumber:number];

  return v5;
}

- (id)XPCDataMapperStore
{
  contactStores = [(CNAggregateContactStore *)self contactStores];
  v3 = [contactStores _cn_firstObjectPassingTest:&__block_literal_global_162];

  return v3;
}

- (id)originForSuggestion:(id)suggestion error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  contactStores = [(CNAggregateContactStore *)self contactStores];
  v8 = [contactStores countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(contactStores);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) originForSuggestion:suggestionCopy error:error];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [contactStores countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

@end