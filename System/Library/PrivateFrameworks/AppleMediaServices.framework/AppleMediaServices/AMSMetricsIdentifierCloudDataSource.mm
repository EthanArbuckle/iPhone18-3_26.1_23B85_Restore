@interface AMSMetricsIdentifierCloudDataSource
+ (id)_saveCloudObject:(id)object intoDatabase:(id)database isServerRecord:(BOOL)record;
+ (id)_saveIdInfo:(id)info intoDatabase:(id)database isServerRecord:(BOOL)record;
+ (id)_saveStoreInfo:(id)info intoDatabase:(id)database isServerRecord:(BOOL)record;
+ (void)clearSyncState;
+ (void)removeAllRecords;
- (AMSMetricsIdentifierCloudDataSourceDelegate)delegate;
- (id)_createRecordForIdentifier:(id)identifier;
- (id)_createRecordForIdentifierStore:(id)store;
- (id)_parseRecord:(id)record error:(id *)error;
- (void)fetchModifiedRecordsWithCompletion:(id)completion;
- (void)removeRecordWithIdentifier:(id)identifier;
- (void)saveRecord:(id)record isServerRecord:(BOOL)serverRecord;
@end

@implementation AMSMetricsIdentifierCloudDataSource

+ (void)clearSyncState
{
  _sharedQueue = [self _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AMSMetricsIdentifierCloudDataSource_clearSyncState__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_sync(_sharedQueue, block);
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

- (void)fetchModifiedRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  _sharedQueue = [objc_opt_class() _sharedQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__AMSMetricsIdentifierCloudDataSource_fetchModifiedRecordsWithCompletion___block_invoke;
  v7[3] = &unk_1E73B36D0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(_sharedQueue, v7);
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
  _sharedQueue = [objc_opt_class() _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AMSMetricsIdentifierCloudDataSource_removeAllRecords__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_sync(_sharedQueue, block);
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

- (void)removeRecordWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _sharedQueue = [objc_opt_class() _sharedQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__AMSMetricsIdentifierCloudDataSource_removeRecordWithIdentifier___block_invoke;
  v7[3] = &unk_1E73B3DE0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(_sharedQueue, v7);
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

- (void)saveRecord:(id)record isServerRecord:(BOOL)serverRecord
{
  recordCopy = record;
  _sharedQueue = [objc_opt_class() _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AMSMetricsIdentifierCloudDataSource_saveRecord_isServerRecord___block_invoke;
  block[3] = &unk_1E73B9C20;
  block[4] = self;
  v10 = recordCopy;
  serverRecordCopy = serverRecord;
  v8 = recordCopy;
  dispatch_async(_sharedQueue, block);
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

+ (id)_saveCloudObject:(id)object intoDatabase:(id)database isServerRecord:(BOOL)record
{
  recordCopy = record;
  objectCopy = object;
  databaseCopy = database;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [self _saveStoreInfo:objectCopy intoDatabase:databaseCopy isServerRecord:recordCopy];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [self _saveIdInfo:objectCopy intoDatabase:databaseCopy isServerRecord:recordCopy];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

+ (id)_saveStoreInfo:(id)info intoDatabase:(id)database isServerRecord:(BOOL)record
{
  recordCopy = record;
  v32 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  databaseCopy = database;
  v9 = +[AMSLogConfig sharedMetricsConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v13 = [MEMORY[0x1E696AD98] numberWithBool:recordCopy];
    *buf = 138544130;
    v25 = v11;
    v26 = 2114;
    v27 = v12;
    v28 = 2114;
    v29 = infoCopy;
    v30 = 2114;
    v31 = v13;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Maybe saving Store Info %{public}@. from cloudkit server %{public}@", buf, 0x2Au);
  }

  storeKey = [infoCopy storeKey];
  v20 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __82__AMSMetricsIdentifierCloudDataSource__saveStoreInfo_intoDatabase_isServerRecord___block_invoke;
  v21[3] = &unk_1E73B9C48;
  v22 = infoCopy;
  v23 = recordCopy;
  v15 = infoCopy;
  v16 = [databaseCopy identifierStoreForKey:storeKey updateMaybe:v21 error:&v20];
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

+ (id)_saveIdInfo:(id)info intoDatabase:(id)database isServerRecord:(BOOL)record
{
  recordCopy = record;
  v32 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  databaseCopy = database;
  v9 = +[AMSLogConfig sharedMetricsConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v13 = [MEMORY[0x1E696AD98] numberWithBool:recordCopy];
    *buf = 138544130;
    v25 = v11;
    v26 = 2114;
    v27 = v12;
    v28 = 2114;
    v29 = infoCopy;
    v30 = 2114;
    v31 = v13;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Maybe saving Id Info %{public}@. from cloudkit server %{public}@", buf, 0x2Au);
  }

  idKey = [infoCopy idKey];
  v20 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __79__AMSMetricsIdentifierCloudDataSource__saveIdInfo_intoDatabase_isServerRecord___block_invoke;
  v21[3] = &unk_1E73B9C48;
  v22 = infoCopy;
  v23 = recordCopy;
  v15 = infoCopy;
  v16 = [databaseCopy identifierForKey:idKey updateMaybe:v21 error:&v20];
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

- (id)_createRecordForIdentifierStore:(id)store
{
  storeCopy = store;
  delegate = [(AMSMetricsIdentifierCloudDataSource *)self delegate];
  storeKey = [storeCopy storeKey];
  delegate2 = [(AMSMetricsIdentifierCloudDataSource *)self delegate];
  identifierStoreRecordType = [delegate2 identifierStoreRecordType];
  v9 = [delegate createRecordForKey:storeKey recordType:identifierStoreRecordType];

  if (v9)
  {
    v10 = v9;
    account = [storeCopy account];
    [v10 setField:account forKey:@"account"];

    v12 = MEMORY[0x1E696AD98];
    [storeCopy resetInterval];
    v13 = [v12 numberWithDouble:?];
    [v10 setField:v13 forKey:@"resetInterval"];

    modified = [storeCopy modified];
    [v10 setField:modified forKey:@"modified"];

    started = [storeCopy started];
    [v10 setField:started forKey:@"started"];

    storeUUID = [storeCopy storeUUID];
    [v10 setField:storeUUID forKey:@"storeUUID"];
  }

  return v9;
}

- (id)_createRecordForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(AMSMetricsIdentifierCloudDataSource *)self delegate];
  idKey = [identifierCopy idKey];
  delegate2 = [(AMSMetricsIdentifierCloudDataSource *)self delegate];
  identifierRecordType = [delegate2 identifierRecordType];
  v9 = [delegate createRecordForKey:idKey recordType:identifierRecordType];

  if (v9)
  {
    v10 = v9;
    expires = [identifierCopy expires];
    [v10 setField:expires forKey:@"expires"];

    modified = [identifierCopy modified];
    [v10 setField:modified forKey:@"modified"];

    name = [identifierCopy name];
    [v10 setField:name forKey:@"name"];

    storeUUID = [identifierCopy storeUUID];
    [v10 setField:storeUUID forKey:@"storeUUID"];

    value = [identifierCopy value];
    [v10 setField:value forKey:@"value"];

    serverProvidedAt = [identifierCopy serverProvidedAt];
    [v10 setField:serverProvidedAt forKey:@"serverProvidedAt"];
  }

  return v9;
}

- (id)_parseRecord:(id)record error:(id *)error
{
  recordCopy = record;
  type = [recordCopy type];
  delegate = [(AMSMetricsIdentifierCloudDataSource *)self delegate];
  identifier = [recordCopy identifier];
  v10 = [delegate keyForRecordIdentifier:identifier];

  delegate2 = [(AMSMetricsIdentifierCloudDataSource *)self delegate];
  identifierStoreRecordType = [delegate2 identifierStoreRecordType];
  v13 = [type isEqualToString:identifierStoreRecordType];

  if (v13)
  {
    v14 = objc_opt_new();
    [v14 setStoreKey:v10];
    [v14 setCrossDeviceSync:1];
    v15 = [recordCopy fieldForKey:@"account"];
    [v14 setAccount:v15];

    v16 = [recordCopy fieldForKey:@"resetInterval"];
    [v16 doubleValue];
    [v14 setResetInterval:?];

    v17 = [recordCopy fieldForKey:@"started"];
    [v14 setStarted:v17];

    v18 = [recordCopy fieldForKey:@"storeUUID"];
    [v14 setStoreUUID:v18];

    v19 = [recordCopy fieldForKey:@"modified"];
    [v14 setModified:v19];

    v20 = [MEMORY[0x1E695DF00] now];
    [v14 setLastSync:v20];

    storeKey = [v14 storeKey];
    if (!storeKey)
    {
      goto LABEL_20;
    }

    v22 = storeKey;
    storeUUID = [v14 storeUUID];
    if (!storeUUID)
    {
      goto LABEL_19;
    }

    v24 = storeUUID;
    account = [v14 account];
    if (account)
    {
      v26 = account;
      modified = [v14 modified];

      if (!modified)
      {
LABEL_20:
        if (*error)
        {
          AMSError(0, @"Invalid record data", @"Record data is not valid.", 0);
          *error = v45 = 0;
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

  delegate3 = [(AMSMetricsIdentifierCloudDataSource *)self delegate];
  identifierRecordType = [delegate3 identifierRecordType];
  v30 = [type isEqualToString:identifierRecordType];

  if (v30)
  {
    v14 = objc_opt_new();
    [v14 setIdKey:v10];
    [v14 setCrossDeviceSync:1];
    v31 = [recordCopy fieldForKey:@"expires"];
    [v14 setExpires:v31];

    v32 = [recordCopy fieldForKey:@"name"];
    [v14 setName:v32];

    v33 = [recordCopy fieldForKey:@"storeUUID"];
    [v14 setStoreUUID:v33];

    v34 = [recordCopy fieldForKey:@"value"];
    [v14 setValue:v34];

    v35 = [recordCopy fieldForKey:@"modified"];
    [v14 setModified:v35];

    v36 = [MEMORY[0x1E695DF00] now];
    [v14 setLastSync:v36];

    v37 = [recordCopy fieldForKey:@"serverProvidedAt"];
    [v14 setServerProvidedAt:v37];

    idKey = [v14 idKey];
    if (!idKey)
    {
      goto LABEL_20;
    }

    v22 = idKey;
    storeUUID2 = [v14 storeUUID];
    if (!storeUUID2)
    {
      goto LABEL_19;
    }

    v24 = storeUUID2;
    name = [v14 name];
    if (name)
    {
      v41 = name;
      modified2 = [v14 modified];
      if (modified2)
      {
        v43 = modified2;
        value = [v14 value];

        if (!value)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }
    }

    goto LABEL_18;
  }

  if (*error)
  {
    AMSError(0, @"Unknown record type", @"Record type is unrecognized.", 0);
    *error = v45 = 0;
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