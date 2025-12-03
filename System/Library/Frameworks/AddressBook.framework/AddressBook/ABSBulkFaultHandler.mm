@interface ABSBulkFaultHandler
- (ABSBulkFaultHandler)initWithStorage:(id)storage contactStoreFuture:(id)future schedulerProvider:(id)provider;
- (BOOL)withinInterestWindow;
- (id)batchOfPeopleInStorageMissingKeysIncluding:(id)including;
- (id)store;
- (void)completePeople:(id)people withKeysToFetch:(id)fetch;
- (void)completePerson:(id)person withKeysToFetch:(id)fetch;
- (void)increaseInterest;
- (void)refetchContacts:(id)contacts keysToFetch:(id)fetch handler:(id)handler;
- (void)resetInterest;
@end

@implementation ABSBulkFaultHandler

- (ABSBulkFaultHandler)initWithStorage:(id)storage contactStoreFuture:(id)future schedulerProvider:(id)provider
{
  storageCopy = storage;
  futureCopy = future;
  providerCopy = provider;
  v22.receiver = self;
  v22.super_class = ABSBulkFaultHandler;
  v12 = [(ABSBulkFaultHandler *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storage, storage);
    inlineScheduler = [providerCopy inlineScheduler];
    inlineScheduler = v13->_inlineScheduler;
    v13->_inlineScheduler = inlineScheduler;

    objc_storeStrong(&v13->_contactStoreFuture, future);
    v16 = [MEMORY[0x277CBEB58] set];
    keyDescriptorOfInterests = v13->_keyDescriptorOfInterests;
    v13->_keyDescriptorOfInterests = v16;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
    v13->_lastRequestTimeStamp = v19;

    v20 = v13;
  }

  return v13;
}

- (id)store
{
  contactStoreFuture = [(ABSBulkFaultHandler *)self contactStoreFuture];
  v3 = [contactStoreFuture result:0];

  return v3;
}

- (void)completePerson:(id)person withKeysToFetch:(id)fetch
{
  v13[1] = *MEMORY[0x277D85DE8];
  personCopy = person;
  fetchCopy = fetch;
  if (![(ABSBulkFaultHandler *)self withinInterestWindow])
  {
    [(ABSBulkFaultHandler *)self resetInterest];
  }

  keyDescriptorOfInterests = [(ABSBulkFaultHandler *)self keyDescriptorOfInterests];
  [keyDescriptorOfInterests addObjectsFromArray:fetchCopy];

  interest = [(ABSBulkFaultHandler *)self interest];
  if (interest >= [objc_opt_class() interestThreshold])
  {
    v10 = [(ABSBulkFaultHandler *)self batchOfPeopleInStorageMissingKeysIncluding:personCopy];
    keyDescriptorOfInterests2 = [(ABSBulkFaultHandler *)self keyDescriptorOfInterests];
    allObjects = [keyDescriptorOfInterests2 allObjects];
    [(ABSBulkFaultHandler *)self completePeople:v10 withKeysToFetch:allObjects];
  }

  else
  {
    [(ABSBulkFaultHandler *)self increaseInterest];
    v13[0] = personCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [(ABSBulkFaultHandler *)self completePeople:v10 withKeysToFetch:fetchCopy];
  }
}

- (BOOL)withinInterestWindow
{
  inlineScheduler = [(ABSBulkFaultHandler *)self inlineScheduler];
  [inlineScheduler timestamp];
  v5 = v4;

  [(ABSBulkFaultHandler *)self lastRequestTimeStamp];
  v7 = v5 - v6;
  [objc_opt_class() interestWindow];
  return v7 < v8;
}

- (void)resetInterest
{
  v3 = +[ABSLog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ABSBulkFaultHandler *)v3 resetInterest];
  }

  [(ABSBulkFaultHandler *)self setInterest:0];
  keyDescriptorOfInterests = [(ABSBulkFaultHandler *)self keyDescriptorOfInterests];
  [keyDescriptorOfInterests removeAllObjects];
}

- (void)increaseInterest
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  interest = [self interest];
  _os_log_debug_impl(&dword_236A49000, a2, OS_LOG_TYPE_DEBUG, "Increasing interest: %ld", &v3, 0xCu);
}

- (id)batchOfPeopleInStorageMissingKeysIncluding:(id)including
{
  v47 = *MEMORY[0x277D85DE8];
  includingCopy = including;
  selfCopy = self;
  keyDescriptorOfInterests = [(ABSBulkFaultHandler *)self keyDescriptorOfInterests];
  allObjects = [keyDescriptorOfInterests allObjects];

  v6 = objc_alloc_init(MEMORY[0x277CBDB40]);
  array = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        _cn_requiredKeys = [v12 _cn_requiredKeys];
        [v6 unionKeyVector:_cn_requiredKeys];

        _cn_optionalKeys = [v12 _cn_optionalKeys];
        keyVector = [MEMORY[0x277CBDA88] keyVector];
        v16 = [_cn_optionalKeys isEqualToKeyVector:keyVector];

        if ((v16 & 1) == 0)
        {
          [array addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v9);
  }

  v17 = [v6 copy];
  v45 = v17;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];

  storage = [(ABSBulkFaultHandler *)selfCopy storage];
  records = [storage records];
  allValues = [records allValues];

  v21 = [MEMORY[0x277CBEB18] arrayWithObject:includingCopy];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v22 = allValues;
  v23 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v37;
    while (2)
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v36 + 1) + 8 * j);
        cnImpl = [v27 cnImpl];
        v29 = cnImpl;
        if (v27 != includingCopy && (![cnImpl areKeysAvailable:v34] || (objc_msgSend(v29, "areKeysAvailable:", array) & 1) == 0))
        {
          [v21 addObject:v27];
          v30 = [v21 count];
          if (v30 >= [objc_opt_class() batchSize])
          {

            goto LABEL_23;
          }
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

  return v21;
}

- (void)completePeople:(id)people withKeysToFetch:(id)fetch
{
  v24 = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  fetchCopy = fetch;
  if ([peopleCopy count] >= 2)
  {
    v8 = +[ABSLog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v23 = [peopleCopy count];
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_INFO, "Fetching in bulk %ld contacts!", buf, 0xCu);
    }
  }

  v9 = [peopleCopy _cn_map:&__block_literal_global_3];
  v10 = [peopleCopy _cn_indexBy:&__block_literal_global_9];
  v11 = [v10 mutableCopy];
  store = [(ABSBulkFaultHandler *)self store];
  v13 = [store authorizedKeysForContactKeys:fetchCopy];

  if ([v13 count])
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __54__ABSBulkFaultHandler_completePeople_withKeysToFetch___block_invoke_3;
    v19 = &unk_278A04858;
    v20 = v10;
    v14 = v11;
    v21 = v14;
    [(ABSBulkFaultHandler *)self refetchContacts:v9 keysToFetch:v13 handler:&v16];
    [v14 _cn_each:{&__block_literal_global_13, v16, v17, v18, v19}];
    inlineScheduler = [(ABSBulkFaultHandler *)self inlineScheduler];
    [inlineScheduler timestamp];
    [(ABSBulkFaultHandler *)self setLastRequestTimeStamp:?];
  }
}

id __54__ABSBulkFaultHandler_completePeople_withKeysToFetch___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 cnImpl];
  v3 = [v2 identifier];

  return v3;
}

void __54__ABSBulkFaultHandler_completePeople_withKeysToFetch___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 identifier];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v5 = [v4 cnImpl];

  [v5 overwriteStateFromContact:v3];
  [*(a1 + 40) removeObjectForKey:v6];
}

void __54__ABSBulkFaultHandler_completePeople_withKeysToFetch___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBDB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = +[ABSLog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 identifier];
    *buf = 138412290;
    v19 = v7;
    _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, "Backing contact has been deleted, creating a new contact: %@", buf, 0xCu);
  }

  v8 = [v4 cnImpl];
  v9 = [v8 keyVector];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __54__ABSBulkFaultHandler_completePeople_withKeysToFetch___block_invoke_15;
  v15 = &unk_278A048A0;
  v16 = v8;
  v17 = v5;
  v10 = v5;
  v11 = v8;
  [v9 enumeratePropertiesUsingBlock:&v12];

  [v4 replaceRecordStorageWithCNObject:{v10, v12, v13, v14, v15}];
}

void __54__ABSBulkFaultHandler_completePeople_withKeysToFetch___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 CNValueForContact:v3];
  [v4 setCNValue:v5 onContact:*(a1 + 40)];
}

- (void)refetchContacts:(id)contacts keysToFetch:(id)fetch handler:(id)handler
{
  handlerCopy = handler;
  v9 = MEMORY[0x277CBDA70];
  fetchCopy = fetch;
  contactsCopy = contacts;
  v12 = [[v9 alloc] initWithKeysToFetch:fetchCopy];

  if ([contactsCopy count] == 1)
  {
    firstObject = [contactsCopy firstObject];

    v14 = MEMORY[0x277CBDA58];
    iOSLegacyIdentifier = [firstObject iOSLegacyIdentifier];
    identifier = [firstObject identifier];
    v17 = [v14 predicateForFaultFulfillmentForLegacyIdentifier:iOSLegacyIdentifier identifier:identifier];
  }

  else
  {
    v18 = MEMORY[0x277CBDA58];
    firstObject = [contactsCopy _cn_map:&__block_literal_global_21_0];

    v17 = [v18 predicateForContactsWithIdentifiers:firstObject];
  }

  [v12 setPredicate:v17];
  [v12 setUnifyResults:0];
  [v12 setMutableObjects:0];
  store = [(ABSBulkFaultHandler *)self store];
  v29 = 0;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __59__ABSBulkFaultHandler_refetchContacts_keysToFetch_handler___block_invoke_2;
  v27 = &unk_278A048E8;
  v20 = handlerCopy;
  v28 = v20;
  v21 = [store enumerateContactsWithFetchRequest:v12 error:&v29 usingBlock:&v24];
  v22 = v29;

  if ((v21 & 1) == 0)
  {
    v23 = [ABSLog log:v24];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ABSBulkFaultHandler refetchContacts:v22 keysToFetch:v23 handler:?];
    }
  }
}

- (void)refetchContacts:(uint64_t)a1 keysToFetch:(NSObject *)a2 handler:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_236A49000, a2, OS_LOG_TYPE_ERROR, "Error completing contacts: %{public}@", &v2, 0xCu);
}

@end