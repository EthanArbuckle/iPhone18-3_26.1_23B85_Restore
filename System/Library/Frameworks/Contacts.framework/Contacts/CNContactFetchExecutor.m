@interface CNContactFetchExecutor
+ (id)os_log;
- (CNContactFetchExecutor)initWithRequest:(id)a3 store:(id)a4;
- (id)description;
- (id)run:(id *)a3;
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

- (CNContactFetchExecutor)initWithRequest:(id)a3 store:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNContactFetchExecutor;
  v9 = [(CNContactFetchExecutor *)&v13 init];
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
  v4 = [(CNContactFetchExecutor *)self request];
  v5 = [v3 appendName:@"request" object:v4];

  v6 = [(CNContactFetchExecutor *)self store];
  v7 = [v3 appendName:@"store" object:v6];

  v8 = [v3 build];

  return v8;
}

- (id)run:(id *)a3
{
  v5 = [(CNContactFetchExecutor *)self request];
  v6 = [v5 shouldFailIfAccountNotYetSynced];

  if (v6 && (-[CNContactFetchExecutor store](self, "store"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasAccountFirstSyncCompleted], v7, (v8 & 1) == 0))
  {
    v35 = [CNErrorFactory errorWithCode:1007];
    if (a3)
    {
      v35 = v35;
      *a3 = v35;
    }

    v33 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = [(CNContactFetchExecutor *)self store];
    v12 = [(CNContactFetchExecutor *)self request];
    v44 = 0;
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __30__CNContactFetchExecutor_run___block_invoke;
    v41 = &unk_1E7412CB8;
    v13 = v9;
    v42 = v13;
    v14 = v10;
    v43 = v14;
    v15 = [v11 enumerateContactsAndMatchInfoWithFetchRequest:v12 error:&v44 usingBlock:&v38];
    v16 = v44;

    if (v15)
    {
      v17 = v13;
      v18 = [(CNContactFetchExecutor *)self request];
      v19 = [v18 predicate];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      v22 = [v20 cn_resultTransformWithMatchInfos:v14];
      v23 = v22;
      if (v22)
      {
        v24 = (*(v22 + 16))(v22, v17);

        v17 = v24;
      }

      v25 = [MEMORY[0x1E695DEF0] data];
      v26 = [(CNContactFetchExecutor *)self store];
      v27 = [v26 currentHistoryAnchor];

      v28 = +[CNContactsLoggerProvider defaultProvider];
      v29 = [v28 apiTriageLogger];
      v30 = [(CNContactFetchExecutor *)self request];
      [v29 request:v30 willReturnAnchor:v27];

      if ([v27 isSuccess])
      {
        v31 = [v27 value];
        v32 = [v31 historyToken];

        v25 = v32;
      }

      v16 = v37;
      v33 = [[CNFetchResult alloc] initWithValue:v17 currentHistoryToken:v25];
    }

    else if (a3)
    {
      v34 = v16;
      v33 = 0;
      *a3 = v16;
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