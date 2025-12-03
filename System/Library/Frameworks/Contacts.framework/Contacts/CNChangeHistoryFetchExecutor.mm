@interface CNChangeHistoryFetchExecutor
+ (id)os_log;
- (BOOL)validateFetchRequest;
- (CNChangeHistoryFetchExecutor)initWithRequest:(id)request store:(id)store;
- (id)contactLinkingEventsForContacts:(id)contacts withFactory:(id)factory;
- (id)countOfDeltaSync;
- (id)deltaSync;
- (id)description;
- (id)fetchCount:(id *)count;
- (id)fetchEvents:(id *)events;
- (id)fullSync;
- (id)keysToFetch;
- (id)run:(id *)run;
@end

@implementation CNChangeHistoryFetchExecutor

+ (id)os_log
{
  if (os_log_cn_once_token_0_8 != -1)
  {
    +[CNChangeHistoryFetchExecutor os_log];
  }

  v3 = os_log_cn_once_object_0_8;

  return v3;
}

uint64_t __38__CNChangeHistoryFetchExecutor_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "fetching");
  v1 = os_log_cn_once_object_0_8;
  os_log_cn_once_object_0_8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNChangeHistoryFetchExecutor)initWithRequest:(id)request store:(id)store
{
  requestCopy = request;
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = CNChangeHistoryFetchExecutor;
  v9 = [(CNChangeHistoryFetchExecutor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_store, store);
    v11 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  request = [(CNChangeHistoryFetchExecutor *)self request];
  v5 = [v3 appendName:@"request" object:request];

  store = [(CNChangeHistoryFetchExecutor *)self store];
  v7 = [v3 appendName:@"store" object:store];

  build = [v3 build];

  return build;
}

- (id)run:(id *)run
{
  if (!-[CNChangeHistoryFetchExecutor validateFetchRequest](self, "validateFetchRequest") || (-[CNChangeHistoryFetchExecutor request](self, "request"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 resultType], v5, v6 == 2))
  {
    v8 = [CNErrorFactory errorWithCode:605];
    if (run)
    {
      v8 = v8;
      *run = v8;
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = [(CNChangeHistoryFetchExecutor *)self fetchEvents:run];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = [(CNChangeHistoryFetchExecutor *)self fetchCount:run];
LABEL_10:

  return v7;
}

- (id)fetchEvents:(id *)events
{
  request = [(CNChangeHistoryFetchExecutor *)self request];
  startingToken = [request startingToken];

  v7 = [CNContactStore isAccessLimitedForEntityType:0];
  if (v7)
  {
LABEL_4:

    v11 = 0;
    startingToken = 0;
    goto LABEL_8;
  }

  if (startingToken)
  {
    v8 = +[CNChangeHistoryAnchor limitedAccessHistoryAnchor];
    historyToken = [v8 historyToken];
    v10 = [historyToken isEqualToData:startingToken];

    if ((v10 & 1) == 0)
    {
      deltaSync = [(CNChangeHistoryFetchExecutor *)self deltaSync];
      v11 = deltaSync;
      if (deltaSync && ([deltaSync isFailure] & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v11 = 0;
LABEL_8:
  request2 = [(CNChangeHistoryFetchExecutor *)self request];
  shouldDeferFullSync = [request2 shouldDeferFullSync];

  if ((shouldDeferFullSync & 1) == 0)
  {
    fullSync = [(CNChangeHistoryFetchExecutor *)self fullSync];

    v11 = fullSync;
  }

LABEL_10:
  if ([v11 isSuccess])
  {
    value = [v11 value];
    events = [value events];

    if (v7)
    {
      value2 = +[CNChangeHistoryAnchor limitedAccessHistoryAnchor];
      [value2 historyToken];
    }

    else
    {
      value2 = [v11 value];
      [value2 token];
    }
    v19 = ;

    v21 = [[CNFetchResult alloc] initWithValue:events currentHistoryToken:v19];
LABEL_21:

    v22 = v21;
    goto LABEL_22;
  }

  events = [v11 error];
  v19 = events;
  if (!events)
  {
    v19 = [CNErrorFactory errorWithCode:603];
  }

  if (events)
  {
    v20 = v19;
    *events = v19;
  }

  v21 = 0;
  v22 = 0;
  if (!events)
  {
    goto LABEL_21;
  }

LABEL_22:

  return v22;
}

- (id)fetchCount:(id *)count
{
  if ([CNContactStore isAccessLimitedForEntityType:0])
  {
    v5 = [CNErrorFactory errorWithCode:603];
    countOfDeltaSync = v5;
    if (count)
    {
      v7 = v5;
      v8 = 0;
      *count = countOfDeltaSync;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    countOfDeltaSync = [(CNChangeHistoryFetchExecutor *)self countOfDeltaSync];
    if ([countOfDeltaSync isSuccess])
    {
      v9 = MEMORY[0x1E696AD98];
      value = [countOfDeltaSync value];
      v11 = [v9 numberWithInteger:{objc_msgSend(value, "count")}];

      value2 = [countOfDeltaSync value];
      token = [value2 token];

      v8 = [[CNFetchResult alloc] initWithValue:v11 currentHistoryToken:token];
    }

    else
    {
      error = [countOfDeltaSync error];
      v11 = error;
      if (count)
      {
        v15 = error;
        v8 = 0;
        *count = v11;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

- (BOOL)validateFetchRequest
{
  request = [(CNChangeHistoryFetchExecutor *)self request];
  if ([request shouldUnifyResults])
  {
    request2 = [(CNChangeHistoryFetchExecutor *)self request];
    v5 = [request2 includeLinkingChanges] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (id)fullSync
{
  v36[4] = *MEMORY[0x1E69E9840];
  keysToFetch = [(CNChangeHistoryFetchExecutor *)self keysToFetch];
  v4 = [[CNContactFetchRequest alloc] initWithKeysToFetch:keysToFetch];
  request = [(CNChangeHistoryFetchExecutor *)self request];
  -[CNContactFetchRequest setUnifyResults:](v4, "setUnifyResults:", [request shouldUnifyResults]);

  request2 = [(CNChangeHistoryFetchExecutor *)self request];
  -[CNContactFetchRequest setMutableObjects:](v4, "setMutableObjects:", [request2 mutableObjects]);

  store = [(CNChangeHistoryFetchExecutor *)self store];
  v35 = 0;
  v8 = [store enumeratorForContactFetchRequest:v4 error:&v35];
  v29 = v35;

  value = [v8 value];
  allObjects = [value allObjects];

  if (allObjects)
  {
    store2 = [(CNChangeHistoryFetchExecutor *)self store];
    v34 = 0;
    v12 = [store2 groupsMatchingPredicate:0 error:&v34];
    v28 = v34;

    if (v12)
    {
      v13 = objc_alloc_init(CNChangeHistoryEventFactory);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __40__CNChangeHistoryFetchExecutor_fullSync__block_invoke;
      v32[3] = &unk_1E7413A10;
      v14 = v13;
      v33 = v14;
      v25 = [allObjects _cn_map:v32];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __40__CNChangeHistoryFetchExecutor_fullSync__block_invoke_2;
      v30[3] = &unk_1E7413A38;
      v31 = v14;
      v26 = v14;
      v24 = [v12 _cn_map:v30];
      v15 = [(CNChangeHistoryFetchExecutor *)self contactLinkingEventsForContacts:allObjects withFactory:v26];
      dropEverythingEvent = [(CNChangeHistoryEventFactory *)v26 dropEverythingEvent];
      v36[0] = dropEverythingEvent;
      v36[1] = v25;
      v36[2] = v15;
      v36[3] = v24;
      v17 = v15;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
      v18 = v27 = keysToFetch;
      _cn_flatten = [v18 _cn_flatten];

      currentHistoryToken = [v8 currentHistoryToken];
      v21 = -[_CNChangeHistoryFetchExecutionResponse initWithEvents:count:token:]([_CNChangeHistoryFetchExecutionResponse alloc], "initWithEvents:count:token:", _cn_flatten, [_cn_flatten count], currentHistoryToken);
      v22 = [MEMORY[0x1E6996810] successWithValue:v21];

      keysToFetch = v27;
    }

    else
    {
      v22 = [MEMORY[0x1E6996810] failureWithError:v28];
    }
  }

  else
  {
    v22 = [MEMORY[0x1E6996810] failureWithError:v29];
  }

  return v22;
}

- (id)deltaSync
{
  store = [(CNChangeHistoryFetchExecutor *)self store];
  request = [(CNChangeHistoryFetchExecutor *)self request];
  v22 = 0;
  v5 = [store changeHistoryWithFetchRequest:request error:&v22];
  v6 = v22;

  if (v5)
  {
    v7 = [CNChangeHistoryLegacyResultConverter alloc];
    store2 = [(CNChangeHistoryFetchExecutor *)self store];
    request2 = [(CNChangeHistoryFetchExecutor *)self request];
    additionalContactKeyDescriptors = [request2 additionalContactKeyDescriptors];
    v11 = [(CNChangeHistoryLegacyResultConverter *)v7 initWithContactStore:store2 additionalContactKeyDescriptors:additionalContactKeyDescriptors];

    v12 = [(CNChangeHistoryLegacyResultConverter *)v11 eventsFromResult:v5];
    if ([v12 isSuccess])
    {
      latestChangeAnchor = [v5 latestChangeAnchor];
      historyToken = [latestChangeAnchor historyToken];

      v15 = [_CNChangeHistoryFetchExecutionResponse alloc];
      value = [v12 value];
      value2 = [v12 value];
      v18 = -[_CNChangeHistoryFetchExecutionResponse initWithEvents:count:token:](v15, "initWithEvents:count:token:", value, [value2 count], historyToken);

      v19 = [MEMORY[0x1E6996810] successWithValue:v18];
    }

    else
    {
      v20 = MEMORY[0x1E6996810];
      historyToken = [v12 error];
      v19 = [v20 failureWithError:historyToken];
    }
  }

  else
  {
    v19 = [MEMORY[0x1E6996810] failureWithError:v6];
  }

  return v19;
}

- (id)countOfDeltaSync
{
  store = [(CNChangeHistoryFetchExecutor *)self store];
  request = [(CNChangeHistoryFetchExecutor *)self request];
  v13 = 0;
  v5 = [store changeHistoryWithFetchRequest:request error:&v13];
  v6 = v13;

  if (v5)
  {
    changesCount = [v5 changesCount];
    latestChangeAnchor = [v5 latestChangeAnchor];
    historyToken = [latestChangeAnchor historyToken];

    v10 = [[_CNChangeHistoryFetchExecutionResponse alloc] initWithEvents:0 count:changesCount token:historyToken];
    v11 = [MEMORY[0x1E6996810] successWithValue:v10];
  }

  else
  {
    v11 = [MEMORY[0x1E6996810] failureWithError:v6];
  }

  return v11;
}

- (id)keysToFetch
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = +[CNContact alwaysFetchedKeys];
  allObjects = [v4 allObjects];
  v6 = [v3 arrayWithArray:allObjects];

  request = [(CNChangeHistoryFetchExecutor *)self request];
  additionalContactKeyDescriptors = [request additionalContactKeyDescriptors];

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [v6 addObjectsFromArray:additionalContactKeyDescriptors];
  }

  request2 = [(CNChangeHistoryFetchExecutor *)self request];
  includeLinkingChanges = [request2 includeLinkingChanges];

  if (includeLinkingChanges)
  {
    v14[0] = @"linkIdentifier";
    v14[1] = @"preferredForName";
    v14[2] = @"preferredForImage";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
    [v6 addObjectsFromArray:v11];
  }

  _cn_flatten = [v6 _cn_flatten];

  return _cn_flatten;
}

- (id)contactLinkingEventsForContacts:(id)contacts withFactory:(id)factory
{
  contactsCopy = contacts;
  factoryCopy = factory;
  request = [(CNChangeHistoryFetchExecutor *)self request];
  if ([request includeLinkingChanges])
  {
    v9 = [contactsCopy count];

    if (v9 >= 2)
    {
      array = [MEMORY[0x1E695DF70] array];
      v11 = [contactsCopy _cn_filter:&__block_literal_global_24];
      v12 = [v11 _cn_groupBy:&__block_literal_global_27];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __76__CNChangeHistoryFetchExecutor_contactLinkingEventsForContacts_withFactory___block_invoke_3;
      v17[3] = &unk_1E7413A88;
      v13 = array;
      v18 = v13;
      v19 = factoryCopy;
      [v12 _cn_each:v17];
      v14 = v19;
      v15 = v13;

      goto LABEL_6;
    }
  }

  else
  {
  }

  v15 = MEMORY[0x1E695E0F0];
LABEL_6:

  return v15;
}

uint64_t __76__CNChangeHistoryFetchExecutor_contactLinkingEventsForContacts_withFactory___block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E6996570];
  v3 = [a2 linkIdentifier];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

void __76__CNChangeHistoryFetchExecutor_contactLinkingEventsForContacts_withFactory___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count] >= 2)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 linkIdentifier];
    v9 = [CNContact contactWithIdentifierOnly:v8];

    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__13;
    v38 = __Block_byref_object_dispose__13;
    v39 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__13;
    v32 = __Block_byref_object_dispose__13;
    v33 = 0;
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __76__CNChangeHistoryFetchExecutor_contactLinkingEventsForContacts_withFactory___block_invoke_28;
    v21 = &unk_1E7413A60;
    v10 = v7;
    v22 = v10;
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v11 = v9;
    v25 = v11;
    v26 = &v34;
    v27 = &v28;
    [v6 _cn_each:&v18];
    v12 = v35[5];
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) preferredContactForNameEventWithPreferredContact:v12 unifiedContact:{0, v18, v19, v20, v21, v22, v23, v24}];
      [v13 addObject:v14];
    }

    v15 = v29[5];
    if (v15)
    {
      v16 = *(a1 + 32);
      v17 = [*(a1 + 40) preferredContactForImageEventWithPreferredContact:v15 unifiedContact:0];
      [v16 addObject:v17];
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);
  }
}

void __76__CNChangeHistoryFetchExecutor_contactLinkingEventsForContacts_withFactory___block_invoke_28(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) identifier];
  v4 = [v13 identifier];

  if (v3 != v4)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) linkContactsEventWithFromContact:*(a1 + 32) toContact:v13 unifiedContact:*(a1 + 56)];
    [v5 addObject:v6];
  }

  v7 = [v13 isPreferredForName];
  v8 = *(*(a1 + 64) + 8);
  v9 = v13;
  if ((v7 & 1) == 0)
  {
    v9 = *(v8 + 40);
  }

  objc_storeStrong((v8 + 40), v9);
  v10 = [v13 isPreferredForImage];
  v11 = *(*(a1 + 72) + 8);
  v12 = v13;
  if ((v10 & 1) == 0)
  {
    v12 = *(v11 + 40);
  }

  objc_storeStrong((v11 + 40), v12);
}

@end