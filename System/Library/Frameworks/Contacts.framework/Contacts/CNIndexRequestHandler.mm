@interface CNIndexRequestHandler
- (BOOL)deleteAllSearchableItems;
- (BOOL)deleteSearchableItemsWithIdentifiers:(id *)identifiers;
- (BOOL)endIndexBatchWithClientState;
- (BOOL)fetchLastClientState;
- (BOOL)indexSearchableItems:(id *)items;
- (CNIndexRequestHandler)initWithContactStore:(id)store;
- (CNIndexRequestHandler)initWithContactStore:(id)store searchableIndex:(id)index logger:(id)logger batchSize:(unint64_t)size;
- (id)_futureForDeleteAllSearchableItems;
- (id)_futureForDeleteSearchableItemsWithIdentifiers:(id *)identifiers;
- (id)_futureForEndIndexBatchWithClientState:(id *)state;
- (id)_futureForIndexSearchableItems:(id *)items;
- (id)fetchChangeHistoryEnumerator;
- (id)fetchChangeHistoryEnumeratorWithError:(uint64_t)error;
- (id)fetchSearchableItemsIndexedByContactIdentifierWithError:(uint64_t)error;
- (id)searchableItemsForContactIdentifiers:(id)identifiers;
- (id)verifyIndexLoggingSummary:(BOOL)summary error:(id *)error;
- (uint64_t)_batchIndexUpdatingItems:(void *)items deletingItemsWithIdentifiers:(void *)identifiers fullSyncOffset:(void *)offset fullSyncDone:(void *)done snapshotAnchor:;
- (uint64_t)batchIndexUpdatingItems:(uint64_t)items fullSyncOffset:(uint64_t)offset fullSyncDone:;
- (uint64_t)batchIndexUpdatingItems:(void *)items deletingItemsWithIdentifiers:(void *)identifiers snapshotAnchor:;
- (uint64_t)beginIndexBatch;
- (uint64_t)deltaSyncContacts:(uint64_t)contacts;
- (uint64_t)fetchAndCheckLastClientState;
- (uint64_t)fullSyncContacts;
- (uint64_t)isChangeHistoryTruncatedForError:(uint64_t)error;
- (uint64_t)prepareForFullSync:(uint64_t)sync;
- (void)_futureForFetchLastClientState;
- (void)_performIndexingWithForcedReindexing:(uint64_t)reindexing;
- (void)performIndexing;
- (void)reindexAllSearchableItems;
- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers;
@end

@implementation CNIndexRequestHandler

- (CNIndexRequestHandler)initWithContactStore:(id)store
{
  storeCopy = store;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v5 = getCSSearchableIndexClass_softClass;
  v18 = getCSSearchableIndexClass_softClass;
  if (!getCSSearchableIndexClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getCSSearchableIndexClass_block_invoke;
    v14[3] = &unk_1E7412110;
    v14[4] = &v15;
    __getCSSearchableIndexClass_block_invoke(v14);
    v5 = v16[3];
  }

  v6 = v5;
  _Block_object_dispose(&v15, 8);
  v7 = [v5 alloc];
  v8 = [v7 initWithName:@"contacts" protectionClass:*MEMORY[0x1E696A388] bundleIdentifier:@"com.apple.MobileAddressBook"];
  v9 = +[CNContactsEnvironment currentEnvironment];
  loggerProvider = [v9 loggerProvider];
  spotlightIndexingLogger = [loggerProvider spotlightIndexingLogger];

  v12 = [(CNIndexRequestHandler *)self initWithContactStore:storeCopy searchableIndex:v8 logger:spotlightIndexingLogger batchSize:100];
  return v12;
}

- (CNIndexRequestHandler)initWithContactStore:(id)store searchableIndex:(id)index logger:(id)logger batchSize:(unint64_t)size
{
  storeCopy = store;
  indexCopy = index;
  loggerCopy = logger;
  v19.receiver = self;
  v19.super_class = CNIndexRequestHandler;
  v14 = [(CNIndexRequestHandler *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_contactStore, store);
    objc_storeStrong(&v15->_index, index);
    objc_storeStrong(&v15->_logger, logger);
    v15->_isFullSyncNeeded = 0;
    clientState = v15->_clientState;
    v15->_batchSize = size;
    v15->_clientState = 0;

    v17 = v15;
  }

  return v15;
}

void __63__CNIndexRequestHandler_reindexSearchableItemsWithIdentifiers___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _cn_slicesWithMaximumCount:100];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        if (v8)
        {
          v9 = *(v8 + 32);
        }

        else
        {
          v9 = 0;
        }

        [v9 willReindexItemsWithIdentifiers:*(*(&v12 + 1) + 8 * v6)];
        v10 = [(CNIndexRequestHandler *)*(a1 + 40) searchableItemsForContactIdentifiers:v7];
        if ([v10 count])
        {
          [(CNIndexRequestHandler *)*(a1 + 40) indexSearchableItems:v10];
        }

        ++v6;
      }

      while (v4 != v6);
      v11 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v4 = v11;
    }

    while (v11);
  }
}

- (uint64_t)fullSyncContacts
{
  selfCopy = self;
  v32[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = [CNContactFetchRequest alloc];
    v3 = +[CNContact descriptorForRequiredKeysForSearchableItem];
    v32[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v5 = [(CNContactFetchRequest *)v2 initWithKeysToFetch:v4];

    [(CNContactFetchRequest *)v5 setUnifyResults:1];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    array = [MEMORY[0x1E695DF70] array];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v6 = *(selfCopy + 16);
    v12[8] = &v14;
    v13 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__CNIndexRequestHandler_fullSyncContacts__block_invoke;
    v12[3] = &unk_1E7411F38;
    v12[4] = selfCopy;
    v12[5] = &v24;
    v12[6] = &v18;
    v12[7] = &v28;
    v7 = [v6 enumerateContactsWithFetchRequest:v5 error:&v13 usingBlock:v12];
    v8 = v13;

    if (v7 && (v29[3] & 1) == 0 && -[CNIndexRequestHandler batchIndexUpdatingItems:fullSyncOffset:fullSyncDone:](selfCopy, v19[5], v25[3], 1) && (v9 = [v19[5] count], v15[3] += v9, (v29[3] & 1) == 0))
    {
      v10 = *(selfCopy + 32);
      [v10 finishedIndexingForFullSyncWithCount:v15[3]];
      selfCopy = 1;
    }

    else
    {
      v10 = *(selfCopy + 32);
      [v10 didNotFinishIndexingForFullSyncWithError:v8];
      selfCopy = 0;
    }

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
  }

  return selfCopy;
}

- (uint64_t)deltaSyncContacts:(uint64_t)contacts
{
  v3 = a2;
  if (contacts)
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    array2 = [MEMORY[0x1E695DF70] array];
    v4 = [CNChangeHistoryAnchor alloc];
    currentHistoryToken = [v3 currentHistoryToken];
    v19 = 0;
    v6 = [(CNChangeHistoryAnchor *)v4 initWithHistoryToken:currentHistoryToken error:&v19];
    v7 = v19;

    if (!v7)
    {
      value = [v3 value];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __43__CNIndexRequestHandler_deltaSyncContacts___block_invoke;
      v18[3] = &unk_1E7411F60;
      v18[4] = contacts;
      v18[5] = &v26;
      v18[6] = &v20;
      v18[7] = &v40;
      v18[8] = &v36;
      v18[9] = &v32;
      [CNIndexChangeHistoryEvents enumerateEvents:value usingBlock:v18];

      if ((v41[3] & 1) == 0)
      {
        v11 = [v27[5] count];
        v37[3] += v11;
        v12 = [v21[5] count];
        v13 = v33[3] + v12;
        v33[3] = v13;
        if (v37[3] | v13 || (v14 = *(contacts + 48), [v14 snapshotAnchor], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqual:", v6), v15, v14, v16))
        {
          if (![(CNIndexRequestHandler *)contacts batchIndexUpdatingItems:v21[5] deletingItemsWithIdentifiers:v6 snapshotAnchor:?])
          {
            goto LABEL_3;
          }
        }

        else
        {
          v17 = *(contacts + 32);
          [v17 noContactChangesToIndex];
        }
      }

      if (*(v41 + 24) != 1)
      {
        v8 = *(contacts + 32);
        [v8 finishedIndexingForDeltaSyncWithUpdateCount:v37[3] deleteCount:v33[3]];
        contacts = 1;
        goto LABEL_4;
      }
    }

LABEL_3:
    v8 = *(contacts + 32);
    [v8 didNotFinishIndexingForDeltaSyncWithError:v7];
    contacts = 0;
LABEL_4:

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);
  }

  return contacts;
}

void __43__CNIndexRequestHandler_deltaSyncContacts___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v13 = a3;
  v7 = a4;
  v8 = v7;
  if (a2 == 1)
  {
    v9 = v7;
    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = v9;
    v11 = 0;
  }

  else
  {
    if (a2)
    {
      goto LABEL_6;
    }

    if (!v13)
    {
      __43__CNIndexRequestHandler_deltaSyncContacts___block_invoke_cold_3(a1, v7);
      goto LABEL_6;
    }

    v12 = [v13 searchableItemForIndexing];
    if (!v12)
    {
      __43__CNIndexRequestHandler_deltaSyncContacts___block_invoke_cold_2(a1, v13);
      goto LABEL_6;
    }

    v11 = v12;
    v10 = 0;
  }

  __43__CNIndexRequestHandler_deltaSyncContacts___block_invoke_cold_1(a1, v11, v10);
LABEL_6:
}

- (uint64_t)beginIndexBatch
{
  if (result)
  {
    v1 = *(result + 24);
    [v1 beginIndexBatch];

    return 1;
  }

  return result;
}

void __62__CNIndexRequestHandler_searchableItemsForContactIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 searchableItemForIndexing];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
    v4 = *(a1 + 40);
    v5 = [v6 identifier];
    [v4 removeObject:v5];
  }

  else
  {
    __62__CNIndexRequestHandler_searchableItemsForContactIdentifiers___block_invoke_cold_1(a1, v6, &v7);
    v5 = v7;
  }
}

void __81__CNIndexRequestHandler_fetchSearchableItemsIndexedByContactIdentifierWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attributeSet];
  v5 = getMDItemUniqueIdentifier();
  v6 = [v4 attributeForKey:v5];

  [*(a1 + 32) setValue:v3 forKey:v6];
}

void __57__CNIndexRequestHandler_verifyIndexLoggingSummary_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 identifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    [*(a1 + 40) addObject:v9];
    v7 = *(a1 + 32);
    v8 = [v9 identifier];
    [v7 removeObjectForKey:v8];
  }

  else
  {
    [*(a1 + 48) addObject:v9];
  }
}

void __57__CNIndexRequestHandler_verifyIndexLoggingSummary_error___block_invoke_3(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a3;
  v8 = a2;
  v10 = [v7 identifier];
  if (a4)
  {
    v9 = [*(a1 + 32) stringFromContact:v7];

    [v8 appendFormat:@"<CNContact: identifier=%@, fullName=%@>\n", v10, v9];
    v8 = v9;
  }

  else
  {

    [v8 appendFormat:@"<CNContact: identifier=%@>\n", v10];
  }
}

void __57__CNIndexRequestHandler_verifyIndexLoggingSummary_error___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a2;
  v13 = [v4 attributeSet];
  v5 = getMDItemUniqueIdentifier();
  v6 = [v13 attributeForKey:v5];
  v7 = [v4 attributeSet];
  if (v2 == 1)
  {
    v8 = getMDItemIndexOID();
    v9 = [v7 attributeForKey:v8];
    v10 = [v4 attributeSet];

    v11 = getMDItemDisplayName();
    v12 = [v10 attributeForKey:v11];
    [v3 appendFormat:@"<CSSearchableItem: identifier=%@, oid=%@, displayName=%@>\n", v6, v9, v12];
  }

  else
  {

    v8 = getMDItemIndexOID();
    v9 = [v7 attributeForKey:v8];
    [v3 appendFormat:@"<CSSearchableItem: identifier=%@, oid=%@>\n", v6, v9];
  }
}

void __55__CNIndexRequestHandler__futureForFetchLastClientState__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithError:?];
  }

  else
  {
    v5 = (*(*MEMORY[0x1E6996588] + 16))();
    [v3 finishWithResult:v5];
  }
}

- (id)_futureForEndIndexBatchWithClientState:(id *)state
{
  v3 = a2;
  if (state)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69967D0]);
    v5 = state[3];
    errorOnlyCompletionHandlerAdapter = [v4 errorOnlyCompletionHandlerAdapter];
    [v5 endIndexBatchWithClientState:v3 completionHandler:errorOnlyCompletionHandlerAdapter];

    state = [v4 future];
  }

  return state;
}

- (void)performIndexing
{
  OUTLINED_FUNCTION_4();
  v5 = 3221225472;
  v6 = __40__CNIndexRequestHandler_performIndexing__block_invoke;
  v7 = &unk_1E7411EE8;
  v8 = v2;
  [v3 indexingContacts:v4];
}

- (void)_performIndexingWithForcedReindexing:(uint64_t)reindexing
{
  if (reindexing)
  {
    if (a2)
    {
      *(reindexing + 8) = 1;
      v3 = objc_alloc_init(CNIndexClientState);
      v4 = *(reindexing + 48);
      *(reindexing + 48) = v3;
    }

    else
    {
      [(CNIndexRequestHandler *)reindexing fetchAndCheckLastClientState];
    }

    fetchChangeHistoryEnumerator = [(CNIndexRequestHandler *)reindexing fetchChangeHistoryEnumerator];
    if (*(reindexing + 8) != 1 || ([(CNIndexRequestHandler *)reindexing prepareForFullSync:fetchChangeHistoryEnumerator]& 1) != 0)
    {
      v5 = *(reindexing + 48);
      v6 = *(reindexing + 32);
      [v6 willStartIndexingWithClientState:v5];

      if (*(reindexing + 8) == 1)
      {
        [(CNIndexRequestHandler *)reindexing fullSyncContacts];
      }

      else
      {
        [(CNIndexRequestHandler *)reindexing deltaSyncContacts:fetchChangeHistoryEnumerator];
      }
    }

    else
    {
      [*(reindexing + 32) deferringReindexAsFailedToPrepareForReindexing];
    }
  }
}

- (void)reindexAllSearchableItems
{
  OUTLINED_FUNCTION_4();
  v5 = 3221225472;
  v6 = __50__CNIndexRequestHandler_reindexAllSearchableItems__block_invoke;
  v7 = &unk_1E7411EE8;
  v8 = v2;
  [v3 reindexingAllSearchableItems:v4];
}

- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (self)
  {
    logger = self->_logger;
  }

  else
  {
    logger = 0;
  }

  OUTLINED_FUNCTION_2();
  v8[1] = 3221225472;
  v8[2] = __63__CNIndexRequestHandler_reindexSearchableItemsWithIdentifiers___block_invoke;
  v8[3] = &unk_1E7411F10;
  v9 = v6;
  selfCopy = self;
  v7 = v6;
  [(CNSpotlightIndexingLogger *)logger reindexingSearchableItemsWithIdentifiers:v8];
}

- (id)searchableItemsForContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v23[1] = *MEMORY[0x1E69E9840];
  if (identifiers)
  {
    v4 = a2;
    v5 = objc_alloc(OUTLINED_FUNCTION_9());
    v6 = +[CNContact descriptorForRequiredKeysForSearchableItem];
    v23[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v8 = [v5 initWithKeysToFetch:v7];

    v9 = [CNContact predicateForContactsWithIdentifiers:v2];
    [v8 setPredicate:v9];

    [v8 setUnifyResults:1];
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v2];

    v12 = *(identifiersCopy + 2);
    v22 = 0;
    OUTLINED_FUNCTION_2();
    v18[1] = 3221225472;
    v18[2] = __62__CNIndexRequestHandler_searchableItemsForContactIdentifiers___block_invoke;
    v18[3] = &unk_1E7411FA8;
    v13 = v10;
    v19 = v13;
    v14 = v11;
    v20 = v14;
    v21 = identifiersCopy;
    v15 = v12;
    [v15 enumerateContactsWithFetchRequest:v8 error:&v22 usingBlock:v18];
    v16 = v22;

    if ([v14 count])
    {
      [*(identifiersCopy + 4) failedToFetchSearchableForContactIdentifiers:v14 error:v16];
    }

    identifiersCopy = v13;
  }

  return identifiersCopy;
}

- (BOOL)indexSearchableItems:(id *)items
{
  v3 = a2;
  if (items)
  {
    v4 = [(CNIndexRequestHandler *)items _futureForIndexSearchableItems:v3];
    OUTLINED_FUNCTION_1_1();
    v15 = 3221225472;
    v16 = __46__CNIndexRequestHandler_indexSearchableItems___block_invoke;
    v17 = &unk_1E74120E8;
    itemsCopy = items;
    v5 = v3;
    v19 = v5;
    v6 = [v4 recover:v14];

    v7 = [OUTLINED_FUNCTION_8_0() result:?];
    v8 = v13;
    v9 = v7 != 0;

    if (!v7)
    {
      v10 = items[4];
      v11 = [v5 valueForKey:@"uniqueIdentifier"];
      [v10 failedToJournalSearchableItemsForIndexingWithSpotlight:v8 identifiers:v11 willRetry:0];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)fetchAndCheckLastClientState
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if ([(CNIndexRequestHandler *)result fetchLastClientState])
  {
    if ([*(v1 + 48) isFullSyncDone])
    {
      if ([*(v1 + 48) indexVersion] == 5)
      {
        goto LABEL_9;
      }

      v2 = *(v1 + 32);
      v3 = *(v1 + 48);
      v4 = v2;
      [v2 willReindexAsIndexVersionChangedFrom:objc_msgSend(OUTLINED_FUNCTION_9() to:{"indexVersion"), 5}];
    }

    else
    {
      [*(v1 + 32) willResumeReindexingAsNotFinished];
    }
  }

  else
  {
    [*(v1 + 32) willReindexAsFailedToFetchClientState];
  }

  *(v1 + 8) = 1;
LABEL_9:
  result = [*(v1 + 48) indexVersion];
  if (result <= 4)
  {
    v5 = *(v1 + 16);

    return [v5 unregisterChangeHistoryClientIdentifier:@"com.apple.contacts.corespotlight" error:0];
  }

  return result;
}

- (id)fetchChangeHistoryEnumerator
{
  if (self)
  {
    v5 = 0;
    v2 = [(CNIndexRequestHandler *)self fetchChangeHistoryEnumeratorWithError:?];
    v3 = v5;
    if (!v2 && [(CNIndexRequestHandler *)self isChangeHistoryTruncatedForError:v3])
    {
      [*(self + 32) willReindexAsChangeHistoryIsTruncated];
      *(self + 8) = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)prepareForFullSync:(uint64_t)sync
{
  syncCopy = sync;
  if (sync)
  {
    v3 = *(sync + 48);
    v4 = a2;
    [v3 setIndexVersion:5];
    [*(syncCopy + 48) setIsFullSyncDone:0];
    currentHistoryToken = [v4 currentHistoryToken];

    if (currentHistoryToken)
    {
      currentHistoryToken2 = currentHistoryToken;
    }

    else
    {
      currentHistoryToken2 = [*(syncCopy + 16) currentHistoryToken];
    }

    v7 = currentHistoryToken2;

    v21 = 0;
    v8 = [[CNChangeHistoryAnchor alloc] initWithHistoryToken:v7 error:&v21];
    v9 = v21;
    if (v9)
    {
      goto LABEL_6;
    }

    v10 = *(syncCopy + 48);
    if ([v10 fullSyncOffset] <= 0)
    {
    }

    else
    {
      snapshotAnchor = [*(syncCopy + 48) snapshotAnchor];
      v12 = [snapshotAnchor compare:v8];

      if (v12)
      {
        v13 = *(syncCopy + 32);
        v14 = *(syncCopy + 48);
        v15 = v13;
        snapshotAnchor2 = [v14 snapshotAnchor];
        [v15 willReindexAsSnapshotAnchorChangedFrom:snapshotAnchor2 to:v8];

        [*(syncCopy + 48) setFullSyncOffset:0];
      }
    }

    [*(syncCopy + 48) setSnapshotAnchor:v8];
    if ([*(syncCopy + 48) fullSyncOffset])
    {
      v17 = *(syncCopy + 32);
      v18 = *(syncCopy + 48);
      v19 = v17;
      [v19 willResumeIndexingAfterOffset:{objc_msgSend(v18, "fullSyncOffset")}];
    }

    else if (![(CNIndexRequestHandler *)syncCopy deleteAllSearchableItems])
    {
LABEL_6:
      syncCopy = 0;
LABEL_14:

      return syncCopy;
    }

    syncCopy = 1;
    goto LABEL_14;
  }

  return syncCopy;
}

- (id)fetchChangeHistoryEnumeratorWithError:(uint64_t)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v4 = objc_alloc_init(CNChangeHistoryFetchRequest);
    snapshotAnchor = [*(error + 48) snapshotAnchor];
    historyToken = [snapshotAnchor historyToken];
    [(CNChangeHistoryFetchRequest *)v4 setStartingToken:historyToken];

    v7 = +[CNContact descriptorForRequiredKeysForSearchableItem];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(CNChangeHistoryFetchRequest *)v4 setAdditionalContactKeyDescriptors:v8];

    [(CNChangeHistoryFetchRequest *)v4 setShouldUnifyResults:1];
    [(CNChangeHistoryFetchRequest *)v4 setShouldDeferFullSync:1];
    v9 = [*(error + 16) enumeratorForChangeHistoryFetchRequest:v4 error:a2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)isChangeHistoryTruncatedForError:(uint64_t)error
{
  v3 = a2;
  v4 = v3;
  if (!error)
  {
    goto LABEL_3;
  }

  domain = [v3 domain];

  if (domain != @"CNErrorDomain")
  {
    goto LABEL_3;
  }

  code = [v4 code];
  v6 = 1;
  if ((code - 603) >= 2 && code != 1006)
  {
    [*(error + 32) unexpectedChangeHistoryError:v4];
LABEL_3:
    v6 = 0;
  }

  return v6;
}

- (BOOL)fetchLastClientState
{
  if (!self)
  {
    return 0;
  }

  _futureForFetchLastClientState = [(CNIndexRequestHandler *)self _futureForFetchLastClientState];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v17 = __45__CNIndexRequestHandler_fetchLastClientState__block_invoke;
  v18 = &unk_1E7412098;
  selfCopy = self;
  v4 = [v3 recover:v16];

  v5 = *MEMORY[0x1E6996590];
  v15 = 0;
  v6 = [v4 result:&v15];
  v7 = v15;
  v8 = (*(v5 + 16))(v5, v6);

  v9 = v8 != 0;
  if (v8)
  {
    v10 = *(self + 32);
    v11 = [CNIndexClientState clientStateWithData:v8 logger:v10];
    v12 = *(self + 48);
    *(self + 48) = v11;
  }

  else
  {
    [*(self + 32) failedToFetchClientStateFromSpotlight:v7 willRetry:0];
    v13 = objc_alloc_init(CNIndexClientState);
    v10 = *(self + 48);
    *(self + 48) = v13;
  }

  return v9;
}

- (BOOL)deleteAllSearchableItems
{
  if (!self)
  {
    return 0;
  }

  _futureForDeleteAllSearchableItems = [(CNIndexRequestHandler *)self _futureForDeleteAllSearchableItems];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v11 = __49__CNIndexRequestHandler_deleteAllSearchableItems__block_invoke;
  v12 = &unk_1E7412098;
  selfCopy = self;
  v4 = [v3 recover:v10];

  v9 = 0;
  v5 = [v4 result:&v9];
  v6 = v9;
  v7 = v5 != 0;

  if (!v5)
  {
    [self[4] failedToDeleteAllSearchableItemsWithSpotlight:v6 willRetry:0];
  }

  return v7;
}

void __41__CNIndexRequestHandler_fullSyncContacts__block_invoke(void *a1, void *a2)
{
  v14 = a2;
  v3 = a1[4];
  if (v3)
  {
    v5 = *(v3 + 48);
  }

  else
  {
    v5 = 0;
  }

  v4 = *(*(a1[5] + 8) + 24);
  if (v4 < [v5 fullSyncOffset])
  {
    goto LABEL_13;
  }

  v6 = [v14 searchableItemForIndexing];
  if (!v6)
  {
    v10 = a1[4];
    if (v10)
    {
      v10 = v10[4];
    }

    v11 = v10;
    v12 = [v14 identifier];
    [v11 failedToCreateSearchableItemForContactIdentifier:v12];

    goto LABEL_12;
  }

  v7 = [OUTLINED_FUNCTION_3_0(a1[6]) count];
  v8 = a1[4];
  if (v8)
  {
    v9 = *(v8 + 40);
  }

  else
  {
    v9 = 0;
  }

  if (v7 != v9)
  {
LABEL_8:
    [OUTLINED_FUNCTION_3_0(a1[6]) addObject:v6];
LABEL_12:

LABEL_13:
    ++*(*(a1[5] + 8) + 24);
    goto LABEL_14;
  }

  if (([(CNIndexRequestHandler *)v8 batchIndexUpdatingItems:*(*(a1[5] + 8) + 24) fullSyncOffset:0 fullSyncDone:?]& 1) != 0)
  {
    v13 = [OUTLINED_FUNCTION_3_0(a1[6]) count];
    OUTLINED_FUNCTION_5(v13, a1[8]);
    [OUTLINED_FUNCTION_3_0(a1[6]) removeAllObjects];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_11_0(a1[7]);

LABEL_14:
}

- (uint64_t)batchIndexUpdatingItems:(uint64_t)items fullSyncOffset:(uint64_t)offset fullSyncDone:
{
  if (result)
  {
    OUTLINED_FUNCTION_6();
    v9 = v8;
    v10 = a2;
    [v9 willBatchIndexForFullSyncWithCount:objc_msgSend(v10 lastOffset:"count") doneFullSync:{items, offset}];

    v11 = [MEMORY[0x1E696AD98] numberWithInteger:items];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:offset];
    v13 = [(CNIndexRequestHandler *)v4 _batchIndexUpdatingItems:v10 deletingItemsWithIdentifiers:0 fullSyncOffset:v11 fullSyncDone:v12 snapshotAnchor:0];

    return v13;
  }

  return result;
}

- (uint64_t)batchIndexUpdatingItems:(void *)items deletingItemsWithIdentifiers:(void *)identifiers snapshotAnchor:
{
  if (result)
  {
    OUTLINED_FUNCTION_6();
    v9 = v8;
    identifiersCopy = identifiers;
    itemsCopy = items;
    v12 = a2;
    [v9 willBatchIndexForDeltaSyncWithUpdateCount:objc_msgSend(v12 deleteCount:{"count"), objc_msgSend(itemsCopy, "count")}];

    v13 = [(CNIndexRequestHandler *)v4 _batchIndexUpdatingItems:v12 deletingItemsWithIdentifiers:itemsCopy fullSyncOffset:0 fullSyncDone:0 snapshotAnchor:identifiersCopy];
    return v13;
  }

  return result;
}

- (uint64_t)_batchIndexUpdatingItems:(void *)items deletingItemsWithIdentifiers:(void *)identifiers fullSyncOffset:(void *)offset fullSyncDone:(void *)done snapshotAnchor:
{
  v11 = a2;
  itemsCopy = items;
  identifiersCopy = identifiers;
  offsetCopy = offset;
  doneCopy = done;
  if (self)
  {
    if ([(CNIndexRequestHandler *)self beginIndexBatch])
    {
      if ([v11 count] && !-[CNIndexRequestHandler indexSearchableItems:](self, v11) || objc_msgSend(itemsCopy, "count") && !-[CNIndexRequestHandler deleteSearchableItemsWithIdentifiers:](self, itemsCopy))
      {
        [(CNIndexRequestHandler *)self endIndexBatchWithClientState];
      }

      else
      {
        if (identifiersCopy)
        {
          [*(self + 48) setFullSyncOffset:{objc_msgSend(identifiersCopy, "integerValue")}];
        }

        if (offsetCopy && [offsetCopy BOOLValue])
        {
          *(self + 8) = 0;
          [*(self + 48) setIsFullSyncDone:1];
        }

        if (doneCopy)
        {
          [*(self + 48) setSnapshotAnchor:doneCopy];
        }

        if ([(CNIndexRequestHandler *)self endIndexBatchWithClientState])
        {
          v17 = [v11 _cn_map:&__block_literal_global];
          [*(self + 32) finishedBatchIndexWithUpdateIdentifiers:v17 deleteIdentifiers:itemsCopy];

          self = 1;
          goto LABEL_4;
        }
      }
    }

    self = 0;
  }

LABEL_4:

  return self;
}

- (BOOL)deleteSearchableItemsWithIdentifiers:(id *)identifiers
{
  v3 = a2;
  if (identifiers)
  {
    v4 = [(CNIndexRequestHandler *)identifiers _futureForDeleteSearchableItemsWithIdentifiers:v3];
    OUTLINED_FUNCTION_1_1();
    v13 = 3221225472;
    v14 = __62__CNIndexRequestHandler_deleteSearchableItemsWithIdentifiers___block_invoke;
    v15 = &unk_1E74120E8;
    identifiersCopy = identifiers;
    v5 = v3;
    v17 = v5;
    v6 = [v4 recover:v12];

    v7 = [OUTLINED_FUNCTION_8_0() result:?];
    v8 = v11;
    v9 = v7 != 0;

    if (!v7)
    {
      [identifiers[4] failedToJournalItemIdentifiersForDeletionWithSpotlight:v8 identifiers:v5 willRetry:0];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)endIndexBatchWithClientState
{
  if (!self)
  {
    return 0;
  }

  v2 = self[6];
  data = [v2 data];

  v4 = [(CNIndexRequestHandler *)self _futureForEndIndexBatchWithClientState:data];
  OUTLINED_FUNCTION_1_1();
  v13 = 3221225472;
  v14 = __53__CNIndexRequestHandler_endIndexBatchWithClientState__block_invoke;
  v15 = &unk_1E74120E8;
  selfCopy = self;
  v5 = data;
  v17 = v5;
  v6 = [v4 recover:v12];

  v7 = [OUTLINED_FUNCTION_8_0() result:?];
  v8 = v11;
  v9 = v7 != 0;

  if (!v7)
  {
    [self[4] failedToEndIndexBatchWithSpotlight:v8 willRetry:0];
  }

  return v9;
}

- (id)fetchSearchableItemsIndexedByContactIdentifierWithError:(uint64_t)error
{
  v16[3] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v3 = *MEMORY[0x1E696A388];
    v4 = getMDItemUniqueIdentifier();
    v16[0] = v4;
    v5 = getMDItemIndexOID();
    v16[1] = v5;
    v6 = getMDItemDisplayName();
    v16[2] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v8 = [CNCoreSpotlightSearch executeQuery:@"kMDItemRole ==*" protectionClass:v3 bundleID:@"com.apple.MobileAddressBook" fetchAttributes:v7 error:a2];

    [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v8, "count")}];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_12();
    v13 = __81__CNIndexRequestHandler_fetchSearchableItemsIndexedByContactIdentifierWithError___block_invoke;
    v14 = &unk_1E7411FD0;
    v10 = v9;
    v15 = v10;
    [v8 _cn_each:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)verifyIndexLoggingSummary:(BOOL)summary error:(id *)error
{
  summaryCopy = summary;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  if (self)
  {
    logger = self->_logger;
  }

  else
  {
    logger = 0;
  }

  v8 = logger;
  OUTLINED_FUNCTION_2();
  v15[1] = 3221225472;
  v15[2] = __57__CNIndexRequestHandler_verifyIndexLoggingSummary_error___block_invoke;
  v15[3] = &unk_1E7412070;
  v15[4] = self;
  v15[5] = &v17;
  v15[6] = &v23;
  v16 = !summaryCopy;
  [v9 verifyingIndex:v15];

  if (summaryCopy)
  {
    if (self)
    {
      v10 = self->_logger;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    [(CNSpotlightIndexingLogger *)v11 verifiedIndexWithSummmary:v24[5]];
  }

  if (error)
  {
    v12 = v18[5];
    if (v12)
    {
      *error = [v12 copy];
    }
  }

  v13 = v24[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v13;
}

void __57__CNIndexRequestHandler_verifyIndexLoggingSummary_error___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  v67 = *(v4 + 40);
  v5 = [(CNIndexRequestHandler *)v3 fetchSearchableItemsIndexedByContactIdentifierWithError:?];
  objc_storeStrong((v4 + 40), v67);
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithObject:@"identifier"];
    if (*(a1 + 56) == 1)
    {
      [CNContactFormatter descriptorForRequiredKeysForStyle:0];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_9() addObject:v1];
    }

    v7 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v6];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 16);
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*(a1 + 40) + 8);
    v66 = *(v12 + 40);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __57__CNIndexRequestHandler_verifyIndexLoggingSummary_error___block_invoke_2;
    v62[3] = &unk_1E7411FA8;
    v13 = v5;
    v63 = v13;
    v14 = v8;
    v64 = v14;
    v15 = v9;
    v65 = v15;
    v16 = v11;
    v17 = [v16 enumerateContactsWithFetchRequest:v7 error:&v66 usingBlock:v62];
    objc_storeStrong((v12 + 40), v66);

    if ((v17 & 1) == 0)
    {
      v18 = OUTLINED_FUNCTION_3_0(*(a1 + 48));
      [v18 appendFormat:@"Verification skipped, contacts error: %@", *(*(v19 + 8) + 40)];
LABEL_9:

      goto LABEL_10;
    }

    v44 = v7;
    Client = [(CNIndexRequestHandler *)*(a1 + 32) fetchLastClientState];
    v21 = [(CNIndexRequestHandler *)*(a1 + 32) fetchChangeHistoryEnumeratorWithError:?];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v22 = [v21 value];
    v23 = [v22 countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (v23)
    {
      v24 = v23;
      v43 = v21;
      v25 = 0;
      v26 = *v59;
      do
      {
        v27 = v24;
        do
        {
          if (*v59 != v26)
          {
            objc_enumerationMutation(v22);
          }

          --v27;
        }

        while (v27);
        v25 += v24;
        v24 = [v22 countByEnumeratingWithState:&v58 objects:v68 count:16];
      }

      while (v24);

      [OUTLINED_FUNCTION_3_0(*(a1 + 48)) appendFormat:@"Verification skipped, have pending change history to index, total = %ld.\n", v25];
    }

    else
    {

      if (![v15 count])
      {
        OUTLINED_FUNCTION_7();
        [*(v33 + 40) appendFormat:@"All contacts indexed, total = %ld\n", objc_msgSend(v14, "count")];
LABEL_27:

        goto LABEL_9;
      }

      v43 = v21;
      v28 = *(*(a1 + 40) + 8);
      obj = *(v28 + 40);
      CNSetError(&obj, 1004, 0);
      objc_storeStrong((v28 + 40), obj);
      v29 = objc_alloc_init(CNContactFormatter);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __57__CNIndexRequestHandler_verifyIndexLoggingSummary_error___block_invoke_3;
      aBlock[3] = &unk_1E7411FF8;
      v42 = v29;
      v56 = v42;
      v30 = _Block_copy(aBlock);
      v31 = OUTLINED_FUNCTION_3_0(*(a1 + 48));
      if (Client)
      {
        data = *(a1 + 32);
        if (data)
        {
          data = data[1].data;
        }
      }

      else
      {
        data = @"<no state>";
      }

      [v31 appendFormat:@"Client index state:\n%@\n", data];
      OUTLINED_FUNCTION_7();
      [*(v34 + 40) appendFormat:@"%ld not indexed:\n", objc_msgSend(v15, "count")];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __57__CNIndexRequestHandler_verifyIndexLoggingSummary_error___block_invoke_4;
      v51[3] = &unk_1E7412020;
      v35 = v30;
      v36 = *(a1 + 48);
      v52 = v35;
      v53 = v36;
      v54 = *(a1 + 56);
      [v15 _cn_each:v51];
      OUTLINED_FUNCTION_7();
      [*(v37 + 40) appendFormat:@"%ld indexed:\n", objc_msgSend(v14, "count")];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __57__CNIndexRequestHandler_verifyIndexLoggingSummary_error___block_invoke_5;
      v47[3] = &unk_1E7412020;
      v38 = *(a1 + 48);
      v48 = v35;
      v49 = v38;
      v50 = *(a1 + 56);
      v39 = v35;
      [v14 _cn_each:v47];
      OUTLINED_FUNCTION_7();
      [*(v40 + 40) appendFormat:@"%ld unknown in index:\n", objc_msgSend(v13, "count")];
      v41 = [v13 allValues];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __57__CNIndexRequestHandler_verifyIndexLoggingSummary_error___block_invoke_6;
      v45[3] = &unk_1E7412048;
      v46 = *(a1 + 56);
      v45[4] = *(a1 + 48);
      [v41 _cn_each:v45];
    }

    v21 = v43;
    v7 = v44;
    goto LABEL_27;
  }

  [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"Verification skipped, spotlight error: %@", *(*(*(a1 + 40) + 8) + 40)];
LABEL_10:
}

- (void)_futureForFetchLastClientState
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69967D0]);
    v3 = selfCopy[3];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_12();
    v8 = __55__CNIndexRequestHandler__futureForFetchLastClientState__block_invoke;
    v9 = &unk_1E74120C0;
    v10 = v4;
    v5 = v4;
    [v3 fetchLastClientStateWithCompletionHandler:v7];
    selfCopy = [v5 future];
  }

  return selfCopy;
}

void *__45__CNIndexRequestHandler_fetchLastClientState__block_invoke()
{
  OUTLINED_FUNCTION_6();
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  [v3 failedToFetchClientStateFromSpotlight:v1 willRetry:1];
  v4 = *(v0 + 32);

  return [(CNIndexRequestHandler *)v4 _futureForFetchLastClientState];
}

id *__53__CNIndexRequestHandler_endIndexBatchWithClientState__block_invoke()
{
  OUTLINED_FUNCTION_6();
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  [v3 failedToEndIndexBatchWithSpotlight:v1 willRetry:1];
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);

  return [(CNIndexRequestHandler *)v4 _futureForEndIndexBatchWithClientState:v5];
}

- (id)_futureForIndexSearchableItems:(id *)items
{
  itemsCopy = items;
  if (items)
  {
    v5 = a2;
    v6 = objc_alloc_init(OUTLINED_FUNCTION_9());
    v7 = itemsCopy[3];
    [v6 errorOnlyCompletionHandlerAdapter];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_10() indexSearchableItems:? completionHandler:?];

    itemsCopy = [v6 future];
  }

  return itemsCopy;
}

id *__46__CNIndexRequestHandler_indexSearchableItems___block_invoke(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_6();
  if (v4)
  {
    v4 = v4[4];
  }

  v5 = *(v2 + 40);
  v6 = v4;
  v7 = a2;
  v8 = [v5 valueForKey:@"uniqueIdentifier"];
  [v6 failedToJournalSearchableItemsForIndexingWithSpotlight:v7 identifiers:v8 willRetry:1];

  v9 = *(v2 + 32);
  v10 = *(v2 + 40);

  return [(CNIndexRequestHandler *)v9 _futureForIndexSearchableItems:v10];
}

- (id)_futureForDeleteSearchableItemsWithIdentifiers:(id *)identifiers
{
  identifiersCopy = identifiers;
  if (identifiers)
  {
    v5 = a2;
    v6 = objc_alloc_init(OUTLINED_FUNCTION_9());
    v7 = identifiersCopy[3];
    [v6 errorOnlyCompletionHandlerAdapter];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_10() deleteSearchableItemsWithIdentifiers:? completionHandler:?];

    identifiersCopy = [v6 future];
  }

  return identifiersCopy;
}

id *__62__CNIndexRequestHandler_deleteSearchableItemsWithIdentifiers___block_invoke()
{
  OUTLINED_FUNCTION_6();
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  [v3 failedToJournalItemIdentifiersForDeletionWithSpotlight:v1 identifiers:*(v0 + 40) willRetry:1];
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);

  return [(CNIndexRequestHandler *)v4 _futureForDeleteSearchableItemsWithIdentifiers:v5];
}

- (id)_futureForDeleteAllSearchableItems
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69967D0]);
    v3 = selfCopy[3];
    errorOnlyCompletionHandlerAdapter = [v2 errorOnlyCompletionHandlerAdapter];
    [v3 deleteAllSearchableItemsWithCompletionHandler:errorOnlyCompletionHandlerAdapter];

    selfCopy = [v2 future];
  }

  return selfCopy;
}

id *__49__CNIndexRequestHandler_deleteAllSearchableItems__block_invoke()
{
  OUTLINED_FUNCTION_6();
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  [v3 failedToDeleteAllSearchableItemsWithSpotlight:v1 willRetry:1];
  v4 = *(v0 + 32);

  return [(CNIndexRequestHandler *)v4 _futureForDeleteAllSearchableItems];
}

void __43__CNIndexRequestHandler_deltaSyncContacts___block_invoke_cold_1(void *a1, void *a2, void *a3)
{
  v5 = [OUTLINED_FUNCTION_3_0(a1[5]) count];
  v6 = [OUTLINED_FUNCTION_3_0(a1[6]) count] + v5;
  v7 = a1[4];
  if (v7)
  {
    v8 = *(v7 + 40);
  }

  else
  {
    v8 = 0;
  }

  if (v6 != v8)
  {
    goto LABEL_4;
  }

  if ([(CNIndexRequestHandler *)v7 batchIndexUpdatingItems:*(*(a1[6] + 8) + 40) deletingItemsWithIdentifiers:0 snapshotAnchor:?])
  {
    v9 = [OUTLINED_FUNCTION_3_0(a1[5]) count];
    OUTLINED_FUNCTION_5(v9, a1[8]);
    v10 = [OUTLINED_FUNCTION_3_0(a1[6]) count];
    OUTLINED_FUNCTION_5(v10, a1[9]);
    [OUTLINED_FUNCTION_3_0(a1[5]) removeAllObjects];
    [OUTLINED_FUNCTION_3_0(a1[6]) removeAllObjects];
LABEL_4:
    [OUTLINED_FUNCTION_3_0(a1[5]) _cn_addNonNilObject:?];
    [OUTLINED_FUNCTION_3_0(a1[6]) _cn_addNonNilObject:a3];
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_11_0(a1[7]);
LABEL_5:
}

void __43__CNIndexRequestHandler_deltaSyncContacts___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[4];
  }

  v4 = v3;
  v5 = [a2 identifier];
  [v4 failedToCreateSearchableItemForContactIdentifier:v5];
}

uint64_t __43__CNIndexRequestHandler_deltaSyncContacts___block_invoke_cold_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  return [v3 failedToFetchContactForContactIdentifier:a2];
}

void __62__CNIndexRequestHandler_searchableItemsForContactIdentifiers___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    v5 = v5[4];
  }

  v7 = v5;
  v6 = [a2 identifier];
  *a3 = v6;
  [v7 failedToCreateSearchableItemForContactIdentifier:v6];
}

@end