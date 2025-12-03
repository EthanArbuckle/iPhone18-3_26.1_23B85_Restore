@interface CNContactFetchExecutor
+ (id)os_log;
- (CNContactFetchExecutor)initWithRequest:(id)request store:(id)store;
- (id)description;
- (id)run:(id *)run;
@end

@implementation CNContactFetchExecutor

+ (id)os_log
{
  if (os_log_cn_once_token_0_2 != -1)
  {
    +[CNContactFetchExecutor os_log];
  }

  v3 = os_log_cn_once_object_0_2;

  return v3;
}

uint64_t __32__CNContactFetchExecutor_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "fetching");
  v1 = os_log_cn_once_object_0_2;
  os_log_cn_once_object_0_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNContactFetchExecutor)initWithRequest:(id)request store:(id)store
{
  requestCopy = request;
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = CNContactFetchExecutor;
  v9 = [(CNContactFetchExecutor *)&v13 init];
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
  request = [(CNContactFetchExecutor *)self request];
  v5 = [v3 appendName:@"request" object:request];

  store = [(CNContactFetchExecutor *)self store];
  v7 = [v3 appendName:@"store" object:store];

  build = [v3 build];

  return build;
}

- (id)run:(id *)run
{
  request = [(CNContactFetchExecutor *)self request];
  shouldFailIfAccountNotYetSynced = [request shouldFailIfAccountNotYetSynced];

  if (shouldFailIfAccountNotYetSynced && (-[CNContactFetchExecutor store](self, "store"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasAccountFirstSyncCompleted], v7, (v8 & 1) == 0))
  {
    v35 = [CNErrorFactory errorWithCode:1007];
    if (run)
    {
      v35 = v35;
      *run = v35;
    }

    v33 = 0;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    store = [(CNContactFetchExecutor *)self store];
    request2 = [(CNContactFetchExecutor *)self request];
    v44 = 0;
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __30__CNContactFetchExecutor_run___block_invoke;
    v41 = &unk_1E7412CB8;
    v13 = array;
    v42 = v13;
    v14 = dictionary;
    v43 = v14;
    v15 = [store enumerateContactsAndMatchInfoWithFetchRequest:request2 error:&v44 usingBlock:&v38];
    v16 = v44;

    if (v15)
    {
      v17 = v13;
      request3 = [(CNContactFetchExecutor *)self request];
      predicate = [request3 predicate];
      v20 = predicate;
      if (predicate)
      {
        v21 = predicate;
      }

      v22 = [v20 cn_resultTransformWithMatchInfos:v14];
      v23 = v22;
      if (v22)
      {
        v24 = (*(v22 + 16))(v22, v17);

        v17 = v24;
      }

      data = [MEMORY[0x1E695DEF0] data];
      store2 = [(CNContactFetchExecutor *)self store];
      currentHistoryAnchor = [store2 currentHistoryAnchor];

      v28 = +[CNContactsLoggerProvider defaultProvider];
      apiTriageLogger = [v28 apiTriageLogger];
      request4 = [(CNContactFetchExecutor *)self request];
      [apiTriageLogger request:request4 willReturnAnchor:currentHistoryAnchor];

      if ([currentHistoryAnchor isSuccess])
      {
        value = [currentHistoryAnchor value];
        historyToken = [value historyToken];

        data = historyToken;
      }

      v16 = v37;
      v33 = [[CNFetchResult alloc] initWithValue:v17 currentHistoryToken:data];
    }

    else if (run)
    {
      v34 = v16;
      v33 = 0;
      *run = v16;
    }

    else
    {
      v33 = 0;
    }
  }

  return v33;
}

void __30__CNContactFetchExecutor_run___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  [*(a1 + 32) addObject:v8];
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [v8 identifier];
    [v6 setObject:v5 forKey:v7];
  }
}

@end