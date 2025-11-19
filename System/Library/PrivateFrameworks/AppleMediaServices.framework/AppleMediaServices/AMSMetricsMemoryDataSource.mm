@interface AMSMetricsMemoryDataSource
+ (id)batchesFromEvents:(id)a3;
- (AMSMetricsMemoryDataSource)initWithEvents:(id)a3;
- (BOOL)removeEvents:(id)a3 error:(id *)a4;
- (void)enumerateSortedEventsForTopic:(id)a3 block:(id)a4;
@end

@implementation AMSMetricsMemoryDataSource

- (AMSMetricsMemoryDataSource)initWithEvents:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AMSMetricsMemoryDataSource;
  v5 = [(AMSMetricsMemoryDataSource *)&v10 init];
  if (v5)
  {
    v6 = [AMSMetricsMemoryDataSource batchesFromEvents:v4];
    v7 = [v6 mutableCopy];
    batches = v5->_batches;
    v5->_batches = v7;
  }

  return v5;
}

+ (id)batchesFromEvents:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v3;
  v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v34)
  {
    v4 = @"0";
    v33 = *v40;
    do
    {
      v5 = 0;
      do
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v5;
        v6 = *(*(&v39 + 1) + 8 * v5);
        v7 = [v6 topic];
        v8 = v7;
        if (v7)
        {
          v9 = v7;
        }

        else
        {
          v9 = &stru_1F071BA78;
        }

        v10 = v9;

        v11 = [v6 isAnonymous];
        v12 = @"1";
        if (!v11)
        {
          v12 = @"0";
        }

        v13 = v12;
        v14 = [v6 account];
        v15 = [v14 ams_DSID];
        v38 = v13;
        if ([v15 integerValue] >= 1)
        {
          v16 = [v6 account];
          v17 = [v16 ams_DSID];
          v4 = [v17 stringValue];
        }

        v18 = [v6 canaryIdentifier];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = &stru_1F071BA78;
        }

        v37 = v20;

        v21 = &stru_1F071BA78;
        if ([v6 isAnonymous])
        {
          v22 = [v6 clientIdentifier];
          if (v22)
          {
            v21 = [v6 clientIdentifier];
          }

          else
          {
            v21 = &stru_1F071BA78;
          }
        }

        v23 = [v6 underlyingDictionary];
        v24 = [v23 objectForKeyedSubscript:@"userId"];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = &stru_1F071BA78;
        }

        v27 = v26;

        v43[0] = v10;
        v43[1] = v38;
        v43[2] = v4;
        v43[3] = v37;
        v43[4] = v21;
        v43[5] = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:6];
        v29 = [v28 componentsJoinedByString:@"."];
        v30 = [v35 objectForKeyedSubscript:v29];
        if (!v30)
        {
          v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v35 setObject:v30 forKeyedSubscript:v29];
        }

        [v30 addObject:v6];

        v5 = v36 + 1;
        v4 = @"0";
      }

      while (v34 != v36 + 1);
      v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v34);
  }

  return v35;
}

- (void)enumerateSortedEventsForTopic:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSMetricsMemoryDataSource *)self batches];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__AMSMetricsMemoryDataSource_enumerateSortedEventsForTopic_block___block_invoke;
  v11[3] = &unk_1E73BA170;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
}

void __66__AMSMetricsMemoryDataSource_enumerateSortedEventsForTopic_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 32);
        if (v11)
        {
          v12 = [*(*(&v14 + 1) + 8 * i) topic];
          v13 = [v11 isEqualToString:v12];

          if (!v13)
          {
            continue;
          }
        }

        (*(*(a1 + 40) + 16))();
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (BOOL)removeEvents:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(AMSMetricsMemoryDataSource *)self batches];
  v25 = [v6 allKeys];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v24 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v7;
        v8 = *(*(&v32 + 1) + 8 * v7);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v9 = v25;
        v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v29;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v28 + 1) + 8 * i);
              v15 = [(AMSMetricsMemoryDataSource *)self batches];
              v16 = [v15 objectForKeyedSubscript:v14];
              v17 = [v16 indexOfObject:v8];

              if (v17 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v18 = [(AMSMetricsMemoryDataSource *)self batches];
                v19 = [v18 objectForKeyedSubscript:v14];
                v20 = [v19 mutableCopy];

                [v20 removeObjectAtIndex:v17];
                v21 = [(AMSMetricsMemoryDataSource *)self batches];
                [v21 setObject:v20 forKeyedSubscript:v14];

                goto LABEL_16;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        v7 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v26);
  }

  return 1;
}

@end