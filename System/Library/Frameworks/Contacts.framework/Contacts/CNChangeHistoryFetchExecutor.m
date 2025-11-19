@interface CNChangeHistoryFetchExecutor
+ (id)os_log;
- (BOOL)validateFetchRequest;
- (CNChangeHistoryFetchExecutor)initWithRequest:(id)a3 store:(id)a4;
- (id)contactLinkingEventsForContacts:(id)a3 withFactory:(id)a4;
- (id)countOfDeltaSync;
- (id)deltaSync;
- (id)description;
- (id)fetchCount:(id *)a3;
- (id)fetchEvents:(id *)a3;
- (id)fullSync;
- (id)keysToFetch;
- (id)run:(id *)a3;
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

- (CNChangeHistoryFetchExecutor)initWithRequest:(id)a3 store:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNChangeHistoryFetchExecutor;
  v9 = [(CNChangeHistoryFetchExecutor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_store, a4);
    v11 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNChangeHistoryFetchExecutor *)self request];
  v5 = [v3 appendName:@"request" object:v4];

  v6 = [(CNChangeHistoryFetchExecutor *)self store];
  v7 = [v3 appendName:@"store" object:v6];

  v8 = [v3 build];

  return v8;
}

- (id)run:(id *)a3
{
  if (!-[CNChangeHistoryFetchExecutor validateFetchRequest](self, "validateFetchRequest") || (-[CNChangeHistoryFetchExecutor request](self, "request"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 resultType], v5, v6 == 2))
  {
    v8 = [CNErrorFactory errorWithCode:605];
    if (a3)
    {
      v8 = v8;
      *a3 = v8;
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = [(CNChangeHistoryFetchExecutor *)self fetchEvents:a3];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = [(CNChangeHistoryFetchExecutor *)self fetchCount:a3];
LABEL_10:

  return v7;
}

- (id)fetchEvents:(id *)a3
{
  v5 = [(CNChangeHistoryFetchExecutor *)self request];
  v6 = [v5 startingToken];

  v7 = [CNContactStore isAccessLimitedForEntityType:0];
  if (v7)
  {
LABEL_4:

    v11 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  if (v6)
  {
    v8 = +[CNChangeHistoryAnchor limitedAccessHistoryAnchor];
    v9 = [v8 historyToken];
    v10 = [v9 isEqualToData:v6];

    if ((v10 & 1) == 0)
    {
      v12 = [(CNChangeHistoryFetchExecutor *)self deltaSync];
      v11 = v12;
      if (v12 && ([v12 isFailure] & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v11 = 0;
LABEL_8:
  v13 = [(CNChangeHistoryFetchExecutor *)self request];
  v14 = [v13 shouldDeferFullSync];

  if ((v14 & 1) == 0)
  {
    v15 = [(CNChangeHistoryFetchExecutor *)self fullSync];

    v11 = v15;
  }

LABEL_10:
  if ([v11 isSuccess])
  {
    v16 = [v11 value];
    v17 = [v16 events];

    if (v7)
    {
      v18 = +[CNChangeHistoryAnchor limitedAccessHistoryAnchor];
      [v18 historyToken];
    }

    else
    {
      v18 = [v11 value];
      [v18 token];
    }
    v19 = ;

    v21 = [[CNFetchResult alloc] initWithValue:v17 currentHistoryToken:v19];
LABEL_21:

    v22 = v21;
    goto LABEL_22;
  }

  v17 = [v11 error];
  v19 = v17;
  if (!v17)
  {
    v19 = [CNErrorFactory errorWithCode:603];
  }

  if (a3)
  {
    v20 = v19;
    *a3 = v19;
  }

  v21 = 0;
  v22 = 0;
  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_22:

  return v22;
}

- (id)fetchCount:(id *)a3
{
  if ([CNContactStore isAccessLimitedForEntityType:0])
  {
    v5 = [CNErrorFactory errorWithCode:603];
    v6 = v5;
    if (a3)
    {
      v7 = v5;
      v8 = 0;
      *a3 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v6 = [(CNChangeHistoryFetchExecutor *)self countOfDeltaSync];
    if ([v6 isSuccess])
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = [v6 value];
      v11 = [v9 numberWithInteger:{objc_msgSend(v10, "count")}];

      v12 = [v6 value];
      v13 = [v12 token];

      v8 = [[CNFetchResult alloc] initWithValue:v11 currentHistoryToken:v13];
    }

    else
    {
      v14 = [v6 error];
      v11 = v14;
      if (a3)
      {
        v15 = v14;
        v8 = 0;
        *a3 = v11;
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
  v3 = [(CNChangeHistoryFetchExecutor *)self request];
  if ([v3 shouldUnifyResults])
  {
    v4 = [(CNChangeHistoryFetchExecutor *)self request];
    v5 = [v4 includeLinkingChanges] ^ 1;
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
  v3 = [(CNChangeHistoryFetchExecutor *)self keysToFetch];
  v4 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v3];
  v5 = [(CNChangeHistoryFetchExecutor *)self request];
  -[CNContactFetchRequest setUnifyResults:](v4, "setUnifyResults:", [v5 shouldUnifyResults]);

  v6 = [(CNChangeHistoryFetchExecutor *)self request];
  -[CNContactFetchRequest setMutableObjects:](v4, "setMutableObjects:", [v6 mutableObjects]);

  v7 = [(CNChangeHistoryFetchExecutor *)self store];
  v35 = 0;
  v8 = [v7 enumeratorForContactFetchRequest:v4 error:&v35];
  v29 = v35;

  v9 = [v8 value];
  v10 = [v9 allObjects];

  if (v10)
  {
    v11 = [(CNChangeHistoryFetchExecutor *)self store];
    v34 = 0;
    v12 = [v11 groupsMatchingPredicate:0 error:&v34];
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
      v25 = [v10 _cn_map:v32];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __40__CNChangeHistoryFetchExecutor_fullSync__block_invoke_2;
      v30[3] = &unk_1E7413A38;
      v31 = v14;
      v26 = v14;
      v24 = [v12 _cn_map:v30];
      v15 = [(CNChangeHistoryFetchExecutor *)self contactLinkingEventsForContacts:v10 withFactory:v26];
      v16 = [(CNChangeHistoryEventFactory *)v26 dropEverythingEvent];
      v36[0] = v16;
      v36[1] = v25;
      v36[2] = v15;
      v36[3] = v24;
      v17 = v15;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
      v18 = v27 = v3;
      v19 = [v18 _cn_flatten];

      v20 = [v8 currentHistoryToken];
      v21 = -[_CNChangeHistoryFetchExecutionResponse initWithEvents:count:token:]([_CNChangeHistoryFetchExecutionResponse alloc], "initWithEvents:count:token:", v19, [v19 count], v20);
      v22 = [MEMORY[0x1E6996810] successWithValue:v21];

      v3 = v27;
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
  v3 = [(CNChangeHistoryFetchExecutor *)self store];
  v4 = [(CNChangeHistoryFetchExecutor *)self request];
  v22 = 0;
  v5 = [v3 changeHistoryWithFetchRequest:v4 error:&v22];
  v6 = v22;

  if (v5)
  {
    v7 = [CNChangeHistoryLegacyResultConverter alloc];
    v8 = [(CNChangeHistoryFetchExecutor *)self store];
    v9 = [(CNChangeHistoryFetchExecutor *)self request];
    v10 = [v9 additionalContactKeyDescriptors];
    v11 = [(CNChangeHistoryLegacyResultConverter *)v7 initWithContactStore:v8 additionalContactKeyDescriptors:v10];

    v12 = [(CNChangeHistoryLegacyResultConverter *)v11 eventsFromResult:v5];
    if ([v12 isSuccess])
    {
      v13 = [v5 latestChangeAnchor];
      v14 = [v13 historyToken];

      v15 = [_CNChangeHistoryFetchExecutionResponse alloc];
      v16 = [v12 value];
      v17 = [v12 value];
      v18 = -[_CNChangeHistoryFetchExecutionResponse initWithEvents:count:token:](v15, "initWithEvents:count:token:", v16, [v17 count], v14);

      v19 = [MEMORY[0x1E6996810] successWithValue:v18];
    }

    else
    {
      v20 = MEMORY[0x1E6996810];
      v14 = [v12 error];
      v19 = [v20 failureWithError:v14];
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
  v3 = [(CNChangeHistoryFetchExecutor *)self store];
  v4 = [(CNChangeHistoryFetchExecutor *)self request];
  v13 = 0;
  v5 = [v3 changeHistoryWithFetchRequest:v4 error:&v13];
  v6 = v13;

  if (v5)
  {
    v7 = [v5 changesCount];
    v8 = [v5 latestChangeAnchor];
    v9 = [v8 historyToken];

    v10 = [[_CNChangeHistoryFetchExecutionResponse alloc] initWithEvents:0 count:v7 token:v9];
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
  v5 = [v4 allObjects];
  v6 = [v3 arrayWithArray:v5];

  v7 = [(CNChangeHistoryFetchExecutor *)self request];
  v8 = [v7 additionalContactKeyDescriptors];

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [v6 addObjectsFromArray:v8];
  }

  v9 = [(CNChangeHistoryFetchExecutor *)self request];
  v10 = [v9 includeLinkingChanges];

  if (v10)
  {
    v14[0] = @"linkIdentifier";
    v14[1] = @"preferredForName";
    v14[2] = @"preferredForImage";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
    [v6 addObjectsFromArray:v11];
  }

  v12 = [v6 _cn_flatten];

  return v12;
}

- (id)contactLinkingEventsForContacts:(id)a3 withFactory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNChangeHistoryFetchExecutor *)self request];
  if ([v8 includeLinkingChanges])
  {
    v9 = [v6 count];

    if (v9 >= 2)
    {
      v10 = [MEMORY[0x1E695DF70] array];
      v11 = [v6 _cn_filter:&__block_literal_global_24];
      v12 = [v11 _cn_groupBy:&__block_literal_global_27];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __76__CNChangeHistoryFetchExecutor_contactLinkingEventsForContacts_withFactory___block_invoke_3;
      v17[3] = &unk_1E7413A88;
      v13 = v10;
      v18 = v13;
      v19 = v7;
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