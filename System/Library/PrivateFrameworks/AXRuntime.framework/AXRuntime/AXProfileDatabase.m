@interface AXProfileDatabase
+ (id)sharedDatabase;
- (AXProfileDatabase)init;
- (id)debugStatistics;
- (id)transactionSummary;
@end

@implementation AXProfileDatabase

+ (id)sharedDatabase
{
  if (sharedDatabase_onceToken != -1)
  {
    +[AXProfileDatabase sharedDatabase];
  }

  v3 = sharedDatabase___sharedDatabase;

  return v3;
}

uint64_t __35__AXProfileDatabase_sharedDatabase__block_invoke()
{
  sharedDatabase___sharedDatabase = objc_alloc_init(AXProfileDatabase);

  return MEMORY[0x1EEE66BB8]();
}

- (AXProfileDatabase)init
{
  v7.receiver = self;
  v7.super_class = AXProfileDatabase;
  v2 = [(AXProfileDatabase *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    entries = v2->_entries;
    v2->_entries = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _gatherTransactionSummary, @"AXGatherTransactionSummary", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (id)transactionSummary
{
  v27 = *MEMORY[0x1E69E9840];
  v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:{@"app, attributeName, pid, uid, type, attribute, size, hash, duration\n"}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_entries;
  v20 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v20)
  {
    v18 = *v23;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v22 + 1) + 8 * i);
        v5 = [v4 appName];
        v6 = [v4 attribute];
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v6];
        v21 = [v4 pid];
        [v4 uid];
        v9 = v8;
        v10 = [v4 uid];
        v11 = [v4 type];
        v12 = [v4 attribute];
        v13 = [v4 valueSize];
        v14 = [v4 valueHash];
        [v4 duration];
        [v19 appendFormat:@"%@, %@, %d, %llu.%llu, %lu, %ld, %lu, %lu, %f\n", v5, v7, v21, v9, v10, v11, v12, v13, v14, v15];
      }

      v20 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v20);
  }

  return v19;
}

- (id)debugStatistics
{
  v53 = *MEMORY[0x1E69E9840];
  v37 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F3E63FB0];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = self->_entries;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v5)
  {
    v6 = v5;
    v35 = *v47;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v47 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v46 + 1) + 8 * i);
        v9 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v8, "attribute")}];
        v10 = [v3 objectForKeyedSubscript:v9];
        if (!v10)
        {
          v10 = objc_opt_new();
          [v3 setObject:v10 forKeyedSubscript:v9];
        }

        v11 = [v4 objectForKeyedSubscript:v9];
        if (!v11)
        {
          v11 = objc_opt_new();
          [v4 setObject:v11 forKeyedSubscript:v9];
        }

        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "unsignedIntegerValue") + 1}];
        [v3 setObject:v12 forKeyedSubscript:v9];

        v13 = MEMORY[0x1E696AD98];
        [v11 doubleValue];
        v15 = v14;
        [v8 duration];
        v17 = [v13 numberWithDouble:v15 + v16];
        [v4 setObject:v17 forKeyedSubscript:v9];
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v6);
  }

  v36 = [v4 keysSortedByValueUsingSelector:sel_compare_];
  v18 = [v3 keysSortedByValueUsingSelector:sel_compare_];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v19 = [v18 reverseObjectEnumerator];
  v20 = [v19 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v42 + 1) + 8 * j);
        v25 = [v3 objectForKeyedSubscript:v24];
        [v37 appendFormat:@"%@ = %@\n", v24, v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v21);
  }

  [v37 appendString:@"\n"];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = [v36 reverseObjectEnumerator];
  v27 = [v26 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v39;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v38 + 1) + 8 * k);
        v32 = [v4 objectForKeyedSubscript:v31];
        [v37 appendFormat:@"%@ = %@\n", v31, v32];
      }

      v28 = [v26 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v28);
  }

  return v37;
}

@end