@interface AMSMetricsIdentifierCloudDataSource
+ (id)_saveCloudObject:(id)a3 intoDatabase:(id)a4 isServerRecord:(BOOL)a5;
+ (id)_saveIdInfo:(id)a3 intoDatabase:(id)a4 isServerRecord:(BOOL)a5;
+ (id)_saveStoreInfo:(id)a3 intoDatabase:(id)a4 isServerRecord:(BOOL)a5;
+ (void)clearSyncState;
+ (void)removeAllRecords;
- (AMSMetricsIdentifierCloudDataSourceDelegate)delegate;
- (id)_createRecordForIdentifier:(id)a3;
- (id)_createRecordForIdentifierStore:(id)a3;
- (id)_parseRecord:(id)a3 error:(id *)a4;
- (void)fetchModifiedRecordsWithCompletion:(id)a3;
- (void)removeRecordWithIdentifier:(id)a3;
- (void)saveRecord:(id)a3 isServerRecord:(BOOL)a4;
@end

@implementation AMSMetricsIdentifierCloudDataSource

+ (void)clearSyncState
{
  v3 = [a1 _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AMSMetricsIdentifierCloudDataSource_clearSyncState__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v3, block);
}

void __53__AMSMetricsIdentifierCloudDataSource_clearSyncState__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) _database];
  v2 = +[AMSLogConfig sharedMetricsConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    *buf = 138543618;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Clearing identifier sync state", buf, 0x16u);
  }

  v11 = 0;
  [v1 clearIdentifierSyncStateWithError:&v11];
  v6 = v11;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedMetricsConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      *buf = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to clear identifier sync state. %{public}@", buf, 0x20u);
    }
  }
}

- (void)fetchModifiedRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _sharedQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__AMSMetricsIdentifierCloudDataSource_fetchModifiedRecordsWithCompletion___block_invoke;
  v7[3] = &unk_1E73B36D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __74__AMSMetricsIdentifierCloudDataSource_fetchModifiedRecordsWithCompletion___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() _database];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DF70] array];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __74__AMSMetricsIdentifierCloudDataSource_fetchModifiedRecordsWithCompletion___block_invoke_2;
  v23[3] = &unk_1E73B9BD0;
  v23[4] = *(a1 + 32);
  v5 = v4;
  v24 = v5;
  v6 = v3;
  v25 = v6;
  v22 = 0;
  [v2 enumerateUnsyncedIdentifierStoresUsingBlock:v23 error:&v22];
  v7 = v22;
  if (v7)
  {
    v8 = v7;
    v9 = +[AMSLogConfig sharedMetricsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543874;
      v27 = v11;
      v28 = 2114;
      v29 = v12;
      v30 = 2114;
      v31 = v8;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to enumerate unsynced identifier domains. %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __74__AMSMetricsIdentifierCloudDataSource_fetchModifiedRecordsWithCompletion___block_invoke_4;
    v19[3] = &unk_1E73B9BF8;
    v19[4] = *(a1 + 32);
    v20 = v5;
    v21 = v6;
    v18 = 0;
    [v2 enumerateUnsyncedIdentifiersUsingBlock:v19 error:&v18];
    v8 = v18;
    if (v8)
    {
      v13 = +[AMSLogConfig sharedMetricsConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = AMSLogKey();
        *buf = 138543874;
        v27 = v15;
        v28 = 2114;
        v29 = v16;
        v30 = 2114;
        v31 = v8;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to enumerate unsynced identifiers. %{public}@", buf, 0x20u);
      }

      v17 = *(*(a1 + 40) + 16);
    }

    else
    {
      v17 = *(*(a1 + 40) + 16);
    }

    v17();
  }
}

uint64_t __74__AMSMetricsIdentifierCloudDataSource_fetchModifiedRecordsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deleted];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 delegate];
    v7 = [v3 storeKey];
    v8 = [v6 recordIdentifierForKey:v7];

    if (v8)
    {
      v9 = 40;
LABEL_6:
      [*(a1 + v9) addObject:v8];
    }
  }

  else
  {
    v8 = [v5 _createRecordForIdentifierStore:v3];
    if (v8)
    {
      v9 = 48;
      goto LABEL_6;
    }
  }

  return 1;
}

uint64_t __74__AMSMetricsIdentifierCloudDataSource_fetchModifiedRecordsWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deleted];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 delegate];
    v7 = [v3 idKey];
    v8 = [v6 recordIdentifierForKey:v7];

    if (v8)
    {
      v9 = 40;
LABEL_6:
      [*(a1 + v9) addObject:v8];
    }
  }

  else
  {
    v8 = [v5 _createRecordForIdentifier:v3];
    if (v8)
    {
      v9 = 48;
      goto LABEL_6;
    }
  }

  return 1;
}

+ (void)removeAllRecords
{
  v3 = [objc_opt_class() _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AMSMetricsIdentifierCloudDataSource_removeAllRecords__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v3, block);
}

void __55__AMSMetricsIdentifierCloudDataSource_removeAllRecords__block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() _database];
  v1 = +[AMSLogConfig sharedMetricsConfig];
  if (!v1)
  {
    v1 = +[AMSLogConfig sharedConfig];
  }

  v2 = [v1 OSLogObject];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = AMSLogKey();
    *buf = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_192869000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Permanently removing cross-device identifiers", buf, 0x16u);
  }

  v10 = 0;
  [v0 removeCrossDeviceIdentifiersWithError:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedMetricsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      *buf = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to permanently remove cross-device identifiers. %{public}@", buf, 0x20u);
    }
  }
}

- (void)removeRecordWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _sharedQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__AMSMetricsIdentifierCloudDataSource_removeRecordWithIdentifier___block_invoke;
  v7[3] = &unk_1E73B3DE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __66__AMSMetricsIdentifierCloudDataSource_removeRecordWithIdentifier___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() _database];
  v3 = [*(a1 + 32) delegate];
  v4 = [v3 keyForRecordIdentifier:*(a1 + 40)];

  if (v4)
  {
    v5 = +[AMSLogConfig sharedMetricsConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      *buf = 138543874;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Permanently removing identifier for key %{public}@", buf, 0x20u);
    }

    v14 = 0;
    [v2 permanentlyRemoveIdentifierForKey:v4 error:&v14];
    v9 = v14;
    if (v9)
    {
      v10 = +[AMSLogConfig sharedMetricsConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = AMSLogKey();
        *buf = 138544130;
        v16 = v12;
        v17 = 2114;
        v18 = v13;
        v19 = 2114;
        v20 = v4;
        v21 = 2114;
        v22 = v9;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to permanently remove identifier for key %{public}@. %{public}@", buf, 0x2Au);
      }
    }
  }
}

- (void)saveRecord:(id)a3 isServerRecord:(BOOL)a4
{
  v6 = a3;
  v7 = [objc_opt_class() _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AMSMetricsIdentifierCloudDataSource_saveRecord_isServerRecord___block_invoke;
  block[3] = &unk_1E73B9C20;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

void __65__AMSMetricsIdentifierCloudDataSource_saveRecord_isServerRecord___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() _database];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13 = 0;
  v5 = [v3 _parseRecord:v4 error:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = [objc_opt_class() _saveCloudObject:v5 intoDatabase:v2 isServerRecord:*(a1 + 48)];

    v6 = v7;
  }

  if (v6)
  {
    v8 = +[AMSLogConfig sharedMetricsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = *(a1 + 40);
      *buf = 138544130;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to add record %{public}@. %{public}@", buf, 0x2Au);
    }
  }
}

+ (id)_saveCloudObject:(id)a3 intoDatabase:(id)a4 isServerRecord:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [a1 _saveStoreInfo:v8 intoDatabase:v9 isServerRecord:v5];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [a1 _saveIdInfo:v8 intoDatabase:v9 isServerRecord:v5];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

+ (id)_saveStoreInfo:(id)a3 intoDatabase:(id)a4 isServerRecord:(BOOL)a5
{
  v5 = a5;
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[AMSLogConfig sharedMetricsConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    *buf = 138544130;
    v25 = v11;
    v26 = 2114;
    v27 = v12;
    v28 = 2114;
    v29 = v7;
    v30 = 2114;
    v31 = v13;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Maybe saving Store Info %{public}@. from cloudkit server %{public}@", buf, 0x2Au);
  }

  v14 = [v7 storeKey];
  v20 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __82__AMSMetricsIdentifierCloudDataSource__saveStoreInfo_intoDatabase_isServerRecord___block_invoke;
  v21[3] = &unk_1E73B9C48;
  v22 = v7;
  v23 = v5;
  v15 = v7;
  v16 = [v8 identifierStoreForKey:v14 updateMaybe:v21 error:&v20];
  v17 = v20;
  v18 = v20;

  return v17;
}

uint64_t __82__AMSMetricsIdentifierCloudDataSource__saveStoreInfo_intoDatabase_isServerRecord___block_invoke(uint64_t a1, id *a2)
{
  v4 = *a2;
  v5 = [v4 modified];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [*(a1 + 32) modified];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  if (v7 <= v10 || *(a1 + 40) == 1 && ([v4 deleted] & 1) == 0)
  {
    *a2 = *(a1 + 32);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_saveIdInfo:(id)a3 intoDatabase:(id)a4 isServerRecord:(BOOL)a5
{
  v5 = a5;
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[AMSLogConfig sharedMetricsConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    *buf = 138544130;
    v25 = v11;
    v26 = 2114;
    v27 = v12;
    v28 = 2114;
    v29 = v7;
    v30 = 2114;
    v31 = v13;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Maybe saving Id Info %{public}@. from cloudkit server %{public}@", buf, 0x2Au);
  }

  v14 = [v7 idKey];
  v20 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __79__AMSMetricsIdentifierCloudDataSource__saveIdInfo_intoDatabase_isServerRecord___block_invoke;
  v21[3] = &unk_1E73B9C48;
  v22 = v7;
  v23 = v5;
  v15 = v7;
  v16 = [v8 identifierForKey:v14 updateMaybe:v21 error:&v20];
  v17 = v20;
  v18 = v20;

  return v17;
}

BOOL __79__AMSMetricsIdentifierCloudDataSource__saveIdInfo_intoDatabase_isServerRecord___block_invoke(uint64_t a1, id *a2)
{
  v5 = *a2;
  v6 = [AMSMetricsIdentifierCore _shouldReplaceInfo:v5 withInfo:*(a1 + 32) isServerRecord:*(a1 + 40)];
  if (v6)
  {
    v7 = [v5 value];
    if (v7 || ([*(a1 + 32) value], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [v5 value];
      v9 = [*(a1 + 32) value];
      v10 = [v8 isEqualToString:v9];

      if (v7)
      {

        if ((v10 & 1) == 0)
        {
LABEL_6:
          v11 = MEMORY[0x1E696AD98];
          v12 = [v5 changeCounter];
          v13 = [v11 numberWithLongLong:{objc_msgSend(v12, "longLongValue") + 1}];
          [*(a1 + 32) setChangeCounter:v13];

          v14 = [v5 value];
          if (v14)
          {
            v15 = &unk_1F0779838;
          }

          else
          {
            v15 = &unk_1F0779820;
          }

          [*(a1 + 32) setChangeCause:v15];

          v16 = [v5 value];
          [*(a1 + 32) setPreviousValue:v16];
        }
      }

      else
      {

        if ((v10 & 1) == 0)
        {
          goto LABEL_6;
        }
      }
    }

    *a2 = *(a1 + 32);
  }

  return v6;
}

- (id)_createRecordForIdentifierStore:(id)a3
{
  v4 = a3;
  v5 = [(AMSMetricsIdentifierCloudDataSource *)self delegate];
  v6 = [v4 storeKey];
  v7 = [(AMSMetricsIdentifierCloudDataSource *)self delegate];
  v8 = [v7 identifierStoreRecordType];
  v9 = [v5 createRecordForKey:v6 recordType:v8];

  if (v9)
  {
    v10 = v9;
    v11 = [v4 account];
    [v10 setField:v11 forKey:@"account"];

    v12 = MEMORY[0x1E696AD98];
    [v4 resetInterval];
    v13 = [v12 numberWithDouble:?];
    [v10 setField:v13 forKey:@"resetInterval"];

    v14 = [v4 modified];
    [v10 setField:v14 forKey:@"modified"];

    v15 = [v4 started];
    [v10 setField:v15 forKey:@"started"];

    v16 = [v4 storeUUID];
    [v10 setField:v16 forKey:@"storeUUID"];
  }

  return v9;
}

- (id)_createRecordForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AMSMetricsIdentifierCloudDataSource *)self delegate];
  v6 = [v4 idKey];
  v7 = [(AMSMetricsIdentifierCloudDataSource *)self delegate];
  v8 = [v7 identifierRecordType];
  v9 = [v5 createRecordForKey:v6 recordType:v8];

  if (v9)
  {
    v10 = v9;
    v11 = [v4 expires];
    [v10 setField:v11 forKey:@"expires"];

    v12 = [v4 modified];
    [v10 setField:v12 forKey:@"modified"];

    v13 = [v4 name];
    [v10 setField:v13 forKey:@"name"];

    v14 = [v4 storeUUID];
    [v10 setField:v14 forKey:@"storeUUID"];

    v15 = [v4 value];
    [v10 setField:v15 forKey:@"value"];

    v16 = [v4 serverProvidedAt];
    [v10 setField:v16 forKey:@"serverProvidedAt"];
  }

  return v9;
}

- (id)_parseRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 type];
  v8 = [(AMSMetricsIdentifierCloudDataSource *)self delegate];
  v9 = [v6 identifier];
  v10 = [v8 keyForRecordIdentifier:v9];

  v11 = [(AMSMetricsIdentifierCloudDataSource *)self delegate];
  v12 = [v11 identifierStoreRecordType];
  v13 = [v7 isEqualToString:v12];

  if (v13)
  {
    v14 = objc_opt_new();
    [v14 setStoreKey:v10];
    [v14 setCrossDeviceSync:1];
    v15 = [v6 fieldForKey:@"account"];
    [v14 setAccount:v15];

    v16 = [v6 fieldForKey:@"resetInterval"];
    [v16 doubleValue];
    [v14 setResetInterval:?];

    v17 = [v6 fieldForKey:@"started"];
    [v14 setStarted:v17];

    v18 = [v6 fieldForKey:@"storeUUID"];
    [v14 setStoreUUID:v18];

    v19 = [v6 fieldForKey:@"modified"];
    [v14 setModified:v19];

    v20 = [MEMORY[0x1E695DF00] now];
    [v14 setLastSync:v20];

    v21 = [v14 storeKey];
    if (!v21)
    {
      goto LABEL_20;
    }

    v22 = v21;
    v23 = [v14 storeUUID];
    if (!v23)
    {
      goto LABEL_19;
    }

    v24 = v23;
    v25 = [v14 account];
    if (v25)
    {
      v26 = v25;
      v27 = [v14 modified];

      if (!v27)
      {
LABEL_20:
        if (*a4)
        {
          AMSError(0, @"Invalid record data", @"Record data is not valid.", 0);
          *a4 = v45 = 0;
        }

        else
        {
          v45 = 0;
        }

        goto LABEL_23;
      }

LABEL_13:
      v45 = v14;
LABEL_23:

      goto LABEL_24;
    }

LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v28 = [(AMSMetricsIdentifierCloudDataSource *)self delegate];
  v29 = [v28 identifierRecordType];
  v30 = [v7 isEqualToString:v29];

  if (v30)
  {
    v14 = objc_opt_new();
    [v14 setIdKey:v10];
    [v14 setCrossDeviceSync:1];
    v31 = [v6 fieldForKey:@"expires"];
    [v14 setExpires:v31];

    v32 = [v6 fieldForKey:@"name"];
    [v14 setName:v32];

    v33 = [v6 fieldForKey:@"storeUUID"];
    [v14 setStoreUUID:v33];

    v34 = [v6 fieldForKey:@"value"];
    [v14 setValue:v34];

    v35 = [v6 fieldForKey:@"modified"];
    [v14 setModified:v35];

    v36 = [MEMORY[0x1E695DF00] now];
    [v14 setLastSync:v36];

    v37 = [v6 fieldForKey:@"serverProvidedAt"];
    [v14 setServerProvidedAt:v37];

    v38 = [v14 idKey];
    if (!v38)
    {
      goto LABEL_20;
    }

    v22 = v38;
    v39 = [v14 storeUUID];
    if (!v39)
    {
      goto LABEL_19;
    }

    v24 = v39;
    v40 = [v14 name];
    if (v40)
    {
      v41 = v40;
      v42 = [v14 modified];
      if (v42)
      {
        v43 = v42;
        v44 = [v14 value];

        if (!v44)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }
    }

    goto LABEL_18;
  }

  if (*a4)
  {
    AMSError(0, @"Unknown record type", @"Record type is unrecognized.", 0);
    *a4 = v45 = 0;
  }

  else
  {
    v45 = 0;
  }

LABEL_24:

  return v45;
}

- (AMSMetricsIdentifierCloudDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end