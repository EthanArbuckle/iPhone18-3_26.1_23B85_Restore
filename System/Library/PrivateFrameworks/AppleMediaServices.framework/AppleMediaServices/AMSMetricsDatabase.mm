@interface AMSMetricsDatabase
+ (id)sharedDatabaseWithContainerId:(id)id;
- (AMSMetricsDatabase)initWithContainerId:(id)id;
- (BOOL)cleanupInvalidIdentifiersWithError:(id *)error;
- (BOOL)clearIdentifierSyncStateWithError:(id *)error;
- (BOOL)connection:(id)connection needsResetForCorruptionError:(id)error error:(id *)a5;
- (BOOL)dropAllEventsWithLockKey:(id)key error:(id *)error;
- (BOOL)dropEvents:(id)events error:(id *)error;
- (BOOL)enumerateUnsyncedIdentifierStoresUsingBlock:(id)block error:(id *)error;
- (BOOL)enumerateUnsyncedIdentifiersUsingBlock:(id)block error:(id *)error;
- (BOOL)insertEvents:(id)events error:(id *)error;
- (BOOL)permanentlyRemoveIdentifierForKey:(id)key error:(id *)error;
- (BOOL)removeCrossDeviceIdentifiersWithError:(id *)error;
- (BOOL)removeIdentifiersForAccount:(id)account error:(id *)error;
- (BOOL)removeIdentifiersForStore:(id)store error:(id *)error;
- (BOOL)unlockAllEventsWithKey:(id)key error:(id *)error;
- (BOOL)unlockEvents:(id)events error:(id *)error;
- (id)_cachePath;
- (id)_lockedById;
- (id)identifierForKey:(id)key updateMaybe:(id)maybe error:(id *)error;
- (id)identifierStoreForKey:(id)key updateMaybe:(id)maybe error:(id *)error;
- (id)lockAllEventsWithError:(id *)error;
- (int64_t)countAllEventsWithLockKey:(id)key error:(id *)error;
- (void)_performTransaction:(id)transaction;
- (void)close;
- (void)dealloc;
- (void)enumerateEventsWithTopic:(id)topic lockKey:(id)key objectBlock:(id)block;
@end

@implementation AMSMetricsDatabase

- (id)_cachePath
{
  v3 = [AMSDatabaseHelper databaseFolderNameForType:0];
  v4 = [v3 stringByAppendingPathComponent:self->_containerId];

  return v4;
}

- (void)dealloc
{
  [(AMSMetricsDatabase *)self close];
  [(AMSMetricsDatabase *)self setConnection:0];
  v3.receiver = self;
  v3.super_class = AMSMetricsDatabase;
  [(AMSMetricsDatabase *)&v3 dealloc];
}

- (void)close
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__AMSMetricsDatabase_close__block_invoke;
  v3[3] = &unk_1E73B3680;
  v3[4] = self;
  v2 = AMSMetricsDatabaseBlockWithKeepAlive(@"AMSMetricsDatabase-close", v3);
  v2[2]();
}

- (id)_lockedById
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (AMSMetricsDatabase)initWithContainerId:(id)id
{
  v54 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v44.receiver = self;
  v44.super_class = AMSMetricsDatabase;
  v6 = [(AMSMetricsDatabase *)&v44 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containerId, id);
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__41;
    v42 = __Block_byref_object_dispose__41;
    v43 = 0;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __42__AMSMetricsDatabase_initWithContainerId___block_invoke;
    v35[3] = &unk_1E73B3EA8;
    v37 = &v38;
    v8 = v7;
    v36 = v8;
    v9 = AMSMetricsDatabaseBlockWithKeepAlive(@"AMSMetricsDatabase-init-createDirectory", v35);
    v9[2]();

    if (v39[5])
    {
      v10 = dispatch_queue_create("com.apple.AMSMetricsDatabase.internal", 0);
      v11 = v8[3];
      v8[3] = v10;

      v12 = [AMSSQLiteConnectionOptions alloc];
      v13 = [(AMSSQLiteConnectionOptions *)v12 initWithDatabasePath:v39[5]];
      [(AMSSQLiteConnectionOptions *)v13 setCheckpointingOnCloseDisabled:1];
      v14 = [[AMSSQLiteConnection alloc] initWithOptions:v13];
      [(AMSSQLiteConnection *)v14 setDelegate:v8];
      objc_storeStrong(v8 + 2, v14);
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v34 = 0;
      *&v49 = 0;
      *(&v49 + 1) = &v49;
      v50 = 0x3032000000;
      v51 = __Block_byref_object_copy__41;
      v52 = __Block_byref_object_dispose__41;
      v53 = 0;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __42__AMSMetricsDatabase_initWithContainerId___block_invoke_9;
      v27[3] = &unk_1E73B5DD8;
      v29 = &v31;
      v15 = v14;
      v28 = v15;
      v30 = &v49;
      v16 = AMSMetricsDatabaseBlockWithKeepAlive(@"AMSMetricsDatabase-init-updateSchema", v27);
      v16[2]();

      v17 = *(v32 + 24);
      if ((v17 & 1) == 0)
      {
        v18 = +[AMSLogConfig sharedMetricsConfig];
        if (!v18)
        {
          v18 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v18 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          v21 = AMSLogableError(*(*(&v49 + 1) + 40));
          *buf = 138543618;
          v46 = v20;
          v47 = 2114;
          v48 = v21;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Fatal Error: Failed to create the database schema: %{public}@", buf, 0x16u);
        }
      }

      _Block_object_dispose(&v49, 8);
      _Block_object_dispose(&v31, 8);

      _Block_object_dispose(&v38, 8);
      if (v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v23 = +[AMSLogConfig sharedMetricsConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v23 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        LODWORD(v49) = 138543362;
        *(&v49 + 4) = v25;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Fatal Error: Failed to fetch dbPath", &v49, 0xCu);
      }

      _Block_object_dispose(&v38, 8);
    }

    v22 = 0;
    goto LABEL_17;
  }

LABEL_10:
  v22 = v7;
LABEL_17:

  return v22;
}

void __42__AMSMetricsDatabase_initWithContainerId___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachePath];
  v2 = [AMSDatabaseHelper databasePathForCachePath:v5 type:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __42__AMSMetricsDatabase_initWithContainerId___block_invoke_9(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = 0;
  v4 = [AMSMetricsDatabaseSchema createOrUpdateSchemaUsingConnection:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

+ (id)sharedDatabaseWithContainerId:(id)id
{
  idCopy = id;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__41;
  v23 = __Block_byref_object_dispose__41;
  v24 = 0;
  if (_MergedGlobals_132 != -1)
  {
    dispatch_once(&_MergedGlobals_132, &__block_literal_global_92);
  }

  v4 = qword_1ED6E2F08;
  if (qword_1ED6E2F10 != -1)
  {
    dispatch_once(&qword_1ED6E2F10, &__block_literal_global_15_0);
  }

  v5 = qword_1ED6E2F18;
  if (qword_1ED6E2F20 != -1)
  {
    dispatch_once(&qword_1ED6E2F20, &__block_literal_global_20_1);
  }

  v6 = qword_1ED6E2F28;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AMSMetricsDatabase_sharedDatabaseWithContainerId___block_invoke_4;
  block[3] = &unk_1E73B9480;
  v14 = v5;
  v15 = idCopy;
  v17 = v4;
  v18 = &v19;
  v16 = v6;
  v7 = v4;
  v8 = v6;
  v9 = idCopy;
  v10 = v5;
  dispatch_sync(v7, block);
  v11 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v11;
}

void __52__AMSMetricsDatabase_sharedDatabaseWithContainerId___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.AMSMetricsDatabase", v2);
  v1 = qword_1ED6E2F08;
  qword_1ED6E2F08 = v0;
}

uint64_t __52__AMSMetricsDatabase_sharedDatabaseWithContainerId___block_invoke_2()
{
  qword_1ED6E2F18 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __52__AMSMetricsDatabase_sharedDatabaseWithContainerId___block_invoke_3()
{
  qword_1ED6E2F28 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];

  return MEMORY[0x1EEE66BB8]();
}

void __52__AMSMetricsDatabase_sharedDatabaseWithContainerId___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  if (!v2)
  {
    v2 = [[AMSMetricsDatabase alloc] initWithContainerId:*(a1 + 40)];
    [*(a1 + 32) setObject:v2 forKey:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v2);
  v3 = [*(a1 + 48) objectForKey:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    dispatch_block_cancel(v3);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AMSMetricsDatabase_sharedDatabaseWithContainerId___block_invoke_5;
  block[3] = &unk_1E73B3680;
  v17 = v2;
  v5 = v2;
  v6 = dispatch_block_create(0, block);

  v7 = *(a1 + 48);
  v8 = _Block_copy(v6);
  [v7 setObject:v8 forKey:*(a1 + 40)];

  v9 = *(a1 + 56);
  v10 = v6;
  v11 = v9;
  v12 = AMSLogKey();
  v13 = dispatch_time(0, 30000000000);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __AMSDispatchAfter_block_invoke_3;
  v18[3] = &unk_1E73B36D0;
  v19 = v12;
  v20 = v10;
  v14 = v12;
  v15 = v10;
  dispatch_after(v13, v11, v18);
}

void __27__AMSMetricsDatabase_close__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) connection];
  v8 = 0;
  v2 = [v1 closeWithError:&v8];
  v3 = v8;

  if ((v2 & 1) == 0)
  {
    v4 = +[AMSLogConfig sharedMetricsConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      *buf = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      v7 = v6;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to close the database connection: %{public}@", buf, 0x16u);
    }
  }
}

- (int64_t)countAllEventsWithLockKey:(id)key error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__41;
  v27 = __Block_byref_object_dispose__41;
  v28 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __54__AMSMetricsDatabase_countAllEventsWithLockKey_error___block_invoke;
  v18 = &unk_1E73B94F8;
  v7 = keyCopy;
  v19 = v7;
  selfCopy = self;
  v21 = &v23;
  v22 = &v29;
  [(AMSMetricsDatabase *)self _performTransaction:&v15];
  v8 = v24[5];
  if (error)
  {
    *error = v8;
  }

  else if (v8)
  {
    v9 = [AMSLogConfig sharedMetricsConfig:v15];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = AMSLogableError(v24[5]);
      *buf = 138543618;
      v34 = v11;
      v35 = 2114;
      v36 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to count events. Error = %{public}@", buf, 0x16u);
    }
  }

  v13 = v30[3];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v13;
}

uint64_t __54__AMSMetricsDatabase_countAllEventsWithLockKey_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v2 appendString:@"SELECT COUNT(*) FROM events"];
  if (*(a1 + 32))
  {
    [v2 appendString:@" locked_by = ? AND locked_time > ?"];
  }

  [v2 appendString:@";"];
  v3 = [*(a1 + 40) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__AMSMetricsDatabase_countAllEventsWithLockKey_error___block_invoke_2;
  v7[3] = &unk_1E73B94D0;
  v9 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v8 = v4;
  v10 = v5;
  [v3 executeQuery:v2 withResults:v7];

  return 1;
}

void __54__AMSMetricsDatabase_countAllEventsWithLockKey_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      [v5 bindString:v7 atPosition:1];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v9 = v8 + -600.0;
      *&v9 = v9;
      [v5 bindFloat:2 atPosition:v9];
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__AMSMetricsDatabase_countAllEventsWithLockKey_error___block_invoke_3;
    v10[3] = &unk_1E73B94A8;
    v11 = *(a1 + 40);
    [v5 enumerateRowsUsingBlock:v10];
  }
}

void __54__AMSMetricsDatabase_countAllEventsWithLockKey_error___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 int64ForColumnIndex:0];
  }
}

- (BOOL)dropAllEventsWithLockKey:(id)key error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__41;
  v22 = __Block_byref_object_dispose__41;
  v23 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__AMSMetricsDatabase_dropAllEventsWithLockKey_error___block_invoke;
  v14[3] = &unk_1E73B9548;
  v7 = keyCopy;
  v15 = v7;
  selfCopy = self;
  v17 = &v18;
  [(AMSMetricsDatabase *)self _performTransaction:v14];
  v8 = v19[5];
  if (v8)
  {
    v9 = +[AMSLogConfig sharedMetricsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = AMSLogableError(v19[5]);
      *buf = 138543618;
      v25 = v11;
      v26 = 2114;
      v27 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to drop events. Error = %{public}@", buf, 0x16u);
    }

    if (error)
    {
      *error = v19[5];
    }
  }

  _Block_object_dispose(&v18, 8);
  return v8 == 0;
}

uint64_t __53__AMSMetricsDatabase_dropAllEventsWithLockKey_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v2 appendString:@"DELETE FROM events"];
  if (*(a1 + 32))
  {
    [v2 appendString:@" WHERE locked_by = ?"];
  }

  [v2 appendString:@";"];
  v3 = [*(a1 + 40) connection];
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__AMSMetricsDatabase_dropAllEventsWithLockKey_error___block_invoke_2;
  v7[3] = &unk_1E73B9520;
  v8 = *(a1 + 32);
  v5 = [v3 executeStatement:v2 error:&obj bindings:v7];
  objc_storeStrong((v4 + 40), obj);

  return v5;
}

uint64_t __53__AMSMetricsDatabase_dropAllEventsWithLockKey_error___block_invoke_2(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return [a2 bindString:v2 atPosition:1];
  }

  return result;
}

- (BOOL)dropEvents:(id)events error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__41;
  v35 = __Block_byref_object_dispose__41;
  v36 = 0;
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = eventsCopy;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v8)
  {
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        databasePID = [v11 databasePID];
        v13 = databasePID == 0;

        if (!v13)
        {
          if ([v6 length])
          {
            [v6 appendString:{@", "}];
          }

          databasePID2 = [v11 databasePID];
          [v6 appendFormat:@"%@", databasePID2];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v8);
  }

  if ([v6 length])
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __39__AMSMetricsDatabase_dropEvents_error___block_invoke;
    v23[3] = &unk_1E73B9548;
    v24 = v6;
    selfCopy = self;
    v26 = &v31;
    [(AMSMetricsDatabase *)self _performTransaction:v23];
    v15 = v32[5];
    v16 = v15 == 0;
    if (v15)
    {
      v17 = +[AMSLogConfig sharedMetricsConfig];
      if (!v17)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v17 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = AMSLogableError(v32[5]);
        *buf = 138543618;
        v38 = v19;
        v39 = 2114;
        v40 = v20;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to drop events. Error = %{public}@", buf, 0x16u);
      }

      if (error)
      {
        *error = v32[5];
      }
    }
  }

  else
  {
    v16 = 1;
  }

  _Block_object_dispose(&v31, 8);
  return v16;
}

uint64_t __39__AMSMetricsDatabase_dropEvents_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM events WHERE pid in (%@)", *(a1 + 32)];;
  v3 = [*(a1 + 40) connection];
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v3 executeStatement:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  return v5;
}

- (void)enumerateEventsWithTopic:(id)topic lockKey:(id)key objectBlock:(id)block
{
  topicCopy = topic;
  keyCopy = key;
  blockCopy = block;
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_iTunesAccounts = [ams_sharedAccountStore ams_iTunesAccounts];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__AMSMetricsDatabase_enumerateEventsWithTopic_lockKey_objectBlock___block_invoke;
  v17[3] = &unk_1E73B95C0;
  v18 = topicCopy;
  v19 = keyCopy;
  v21 = ams_iTunesAccounts;
  v22 = blockCopy;
  selfCopy = self;
  v13 = ams_iTunesAccounts;
  v14 = blockCopy;
  v15 = keyCopy;
  v16 = topicCopy;
  [(AMSMetricsDatabase *)self _performTransaction:v17];
}

uint64_t __67__AMSMetricsDatabase_enumerateEventsWithTopic_lockKey_objectBlock___block_invoke(id *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v2 appendString:{@"SELECT pid, eventBody, batchId, account FROM events"}];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = v3;
  if (a1[4])
  {
    if ([v3 length])
    {
      [v4 appendString:@" AND"];
    }

    [v4 appendString:@" report_url = ?"];
  }

  if (a1[5])
  {
    if ([v4 length])
    {
      [v4 appendString:@" AND"];
    }

    [v4 appendString:@" locked_by = ? AND locked_time > ?"];
  }

  if ([v4 length])
  {
    [v2 appendFormat:@" WHERE%@", v4];
  }

  [v2 appendString:{@" ORDER BY report_url ASC, batchId ASC, timestampInserted ASC;"}];
  v5 = [a1[6] connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__AMSMetricsDatabase_enumerateEventsWithTopic_lockKey_objectBlock___block_invoke_2;
  v13[3] = &unk_1E73B9598;
  v12 = a1[6];
  v16 = a1[8];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v12;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  [v5 executeQuery:v2 withResults:v13];

  return 1;
}

void __67__AMSMetricsDatabase_enumerateEventsWithTopic_lockKey_objectBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
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
      v10 = AMSLogableError(v6);
      *buf = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query events. Error = %{public}@", buf, 0x16u);
    }

    buf[0] = 0;
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      [v5 bindString:v11 atPosition:1];
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = *(a1 + 48);
    if (v13)
    {
      [v5 bindString:v13 atPosition:v12];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v15 = v14 + -600.0;
      *&v15 = v15;
      [v5 bindFloat:(v12 + 1) atPosition:v15];
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__AMSMetricsDatabase_enumerateEventsWithTopic_lockKey_objectBlock___block_invoke_74;
    v16[3] = &unk_1E73B9570;
    v16[4] = *(a1 + 32);
    v18 = *(a1 + 64);
    v17 = *(a1 + 56);
    [v5 enumerateRowsUsingBlock:v16];
  }
}

void __67__AMSMetricsDatabase_enumerateEventsWithTopic_lockKey_objectBlock___block_invoke_74(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = +[AMSLogConfig sharedMetricsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = AMSLogableError(v8);
      *buf = 138543618;
      v44 = v11;
      v45 = 2114;
      v46 = v12;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to enumerate events. Error = %{public}@", buf, 0x16u);
    }

    *a4 = 1;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v13 = [v7 int64ForColumnIndex:0];
    v14 = [v7 stringForColumnIndex:1];
    v15 = [v7 stringForColumnIndex:2];
    v16 = [v7 stringForColumnIndex:3];
    if ([v14 length])
    {
      v39 = v15;
      v17 = [v14 dataUsingEncoding:4];
      v42 = 0;
      v18 = [AMSData objectWithData:v17 encoding:3 error:&v42];
      v19 = v42;
      if (!v19)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = v17;
          v38 = v18;
          if (objc_opt_respondsToSelector())
          {
            v20 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v16, "longLongValue")}];
            v21 = *(a1 + 40);
            v40[0] = MEMORY[0x1E69E9820];
            v40[1] = 3221225472;
            v40[2] = __67__AMSMetricsDatabase_enumerateEventsWithTopic_lockKey_objectBlock___block_invoke_80;
            v40[3] = &unk_1E73B2FB0;
            v41 = v20;
            v22 = v20;
            v23 = [v21 ams_firstObjectPassingTest:v40];

            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          v25 = v13;
          v26 = v24;
          if (!v24 && v16)
          {
            v27 = +[AMSLogConfig sharedMetricsConfig];
            if (!v27)
            {
              v27 = +[AMSLogConfig sharedConfig];
            }

            v36 = v27;
            v28 = [v27 OSLogObject];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v34 = objc_opt_class();
              v35 = AMSHashIfNeeded(v16);
              v29 = [v38 objectForKeyedSubscript:@"topic"];
              *buf = 138543874;
              v44 = v34;
              v45 = 2114;
              v46 = v35;
              v47 = 2114;
              v48 = v29;
              v30 = v29;
              _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@: Unable to locate account for dsid: %{public}@ topic: %{public}@", buf, 0x20u);
            }
          }

          v31 = [AMSMetricsEvent alloc];
          v32 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
          v18 = v38;
          v33 = [(AMSMetricsEvent *)v31 initWithDatabaseEventBody:v38 account:v26 databasePID:v32];

          (*(*(a1 + 48) + 16))();
          v19 = 0;
          v17 = v37;
        }
      }

      v15 = v39;
    }
  }
}

uint64_t __67__AMSMetricsDatabase_enumerateEventsWithTopic_lockKey_objectBlock___block_invoke_80(uint64_t a1, void *a2)
{
  v3 = [a2 ams_DSID];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

- (BOOL)insertEvents:(id)events error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__41;
  v21 = __Block_byref_object_dispose__41;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __41__AMSMetricsDatabase_insertEvents_error___block_invoke;
  v14[3] = &unk_1E73B9610;
  v14[4] = self;
  v16 = &v17;
  v7 = eventsCopy;
  v15 = v7;
  [(AMSMetricsDatabase *)self _performTransaction:v14];
  v8 = v18[5];
  if (v8)
  {
    v9 = +[AMSLogConfig sharedMetricsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = AMSLogableError(v18[5]);
      *buf = 138543618;
      v24 = v11;
      v25 = 2114;
      v26 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to insert events. Error = %{public}@", buf, 0x16u);
    }

    if (error)
    {
      *error = v18[5];
    }
  }

  _Block_object_dispose(&v17, 8);
  return v8 == 0;
}

uint64_t __41__AMSMetricsDatabase_insertEvents_error___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v2 = [*(a1 + 32) connection];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 prepareStatement:@"INSERT OR REPLACE INTO events (report_url error:{eventBody, batchId, account, timestampInserted) VALUES (?, ?, ?, ?, ?)", &obj}];;
  objc_storeStrong((v3 + 40), obj);

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = 0;
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __41__AMSMetricsDatabase_insertEvents_error___block_invoke_2;
    v20[3] = &unk_1E73B95E8;
    v6 = *(a1 + 40);
    v20[4] = *(a1 + 32);
    v22 = &v25;
    v7 = v4;
    v8 = *(a1 + 48);
    v21 = v7;
    v23 = v8;
    [v6 enumerateKeysAndObjectsUsingBlock:v20];
    v9 = [*(a1 + 32) connection];
    v19 = 0;
    [v9 finalizePreparedStatement:v7 error:&v19];
    v10 = v19;

    if (v10)
    {
      v11 = +[AMSLogConfig sharedMetricsConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = AMSLogableError(*(*(*(a1 + 48) + 8) + 40));
        *buf = 138543618;
        v30 = v13;
        v31 = 2114;
        v32 = v14;
        _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to finalize statement. Error = %{public}@", buf, 0x16u);
      }
    }

    if (v26[3])
    {
      v5 = 1;
    }

    else if (*(*(*(a1 + 48) + 8) + 40))
    {
      v5 = 0;
    }

    else
    {
      v15 = +[AMSLogConfig sharedMetricsConfig];
      if (!v15)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      v16 = [v15 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        *buf = 138543362;
        v30 = v17;
        _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Inserting events failed without an error", buf, 0xCu);
      }

      v5 = *(v26 + 24);
    }
  }

  _Block_object_dispose(&v25, 8);
  return v5 & 1;
}

void __41__AMSMetricsDatabase_insertEvents_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v30 = a2;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = a3;
  v5 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    v29 = v33;
    do
    {
      v8 = 0;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        v10 = [v9 topic];
        v11 = [v10 length];

        if (!v11)
        {
          v14 = +[AMSLogConfig sharedMetricsConfig];
          if (!v14)
          {
            v14 = +[AMSLogConfig sharedConfig];
          }

          v13 = [v14 OSLogObject];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v21 = objc_opt_class();
            *buf = 138543362;
            v43 = v21;
            v22 = v21;
            _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@: No topic found on event", buf, 0xCu);
          }

          goto LABEL_17;
        }

        v12 = [v9 databaseEventBody];
        v37 = 0;
        v13 = [AMSData dataWithObject:v12 encoding:3 error:&v37];
        v14 = v37;

        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v13 encoding:4];
        v16 = v15;
        if (v14 || ![v15 length])
        {
          v17 = +[AMSLogConfig sharedMetricsConfig];
          if (!v17)
          {
            v17 = +[AMSLogConfig sharedConfig];
          }

          v18 = [v17 OSLogObject];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = objc_opt_class();
            *buf = 138543618;
            v43 = v19;
            v44 = 2114;
            v45 = v14;
            v20 = v19;
            _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Failed to serialize event fields to JSON. Error: %{public}@", buf, 0x16u);
          }

LABEL_17:
          goto LABEL_18;
        }

        v23 = [*(a1 + 32) connection];
        v24 = *(a1 + 40);
        v25 = *(*(a1 + 56) + 8);
        v36 = *(v25 + 40);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v33[0] = __41__AMSMetricsDatabase_insertEvents_error___block_invoke_86;
        v33[1] = &unk_1E73B6078;
        v33[2] = v9;
        v26 = v16;
        v34 = v26;
        v35 = v30;
        LOBYTE(v24) = [v23 executePreparedStatement:v24 error:&v36 bindings:v32];
        objc_storeStrong((v25 + 40), v36);
        *(*(*(a1 + 48) + 8) + 24) = v24;

        if (*(*(*(a1 + 48) + 8) + 24) != 1)
        {

          goto LABEL_27;
        }

        v27 = *(*(*(a1 + 56) + 8) + 40);

        if (v27)
        {
          goto LABEL_27;
        }

LABEL_18:
        ++v8;
      }

      while (v6 != v8);
      v28 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      v6 = v28;
    }

    while (v28);
  }

LABEL_27:
}

void __41__AMSMetricsDatabase_insertEvents_error___block_invoke_86(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  v4 = [v3 topic];
  [v8 bindString:v4 atPosition:1];

  [v8 bindString:*(a1 + 40) atPosition:2];
  [v8 bindString:*(a1 + 48) atPosition:3];
  v5 = [*(a1 + 32) account];
  v6 = [v5 ams_DSID];
  v7 = [v6 stringValue];
  [v8 bindNullableString:v7 atPosition:4];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v8 bindDouble:5 atPosition:?];
}

- (id)lockAllEventsWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  _lockedById = [(AMSMetricsDatabase *)self _lockedById];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__41;
  v21 = __Block_byref_object_dispose__41;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__AMSMetricsDatabase_lockAllEventsWithError___block_invoke;
  v14[3] = &unk_1E73B9610;
  v14[4] = self;
  v16 = &v17;
  v6 = _lockedById;
  v15 = v6;
  [(AMSMetricsDatabase *)self _performTransaction:v14];
  v7 = v18[5];
  if (v7)
  {
    if (error)
    {
      *error = v7;
    }

    v8 = +[AMSLogConfig sharedMetricsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogableError(v18[5]);
      *buf = 138543618;
      v24 = v10;
      v25 = 2114;
      v26 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to lock events. Error = %{public}@", buf, 0x16u);
    }

    v12 = 0;
  }

  else
  {
    v12 = v6;
  }

  _Block_object_dispose(&v17, 8);

  return v12;
}

uint64_t __45__AMSMetricsDatabase_lockAllEventsWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AMSMetricsDatabase_lockAllEventsWithError___block_invoke_2;
  v6[3] = &unk_1E73B9520;
  v7 = *(a1 + 40);
  v4 = [v2 executeStatement:@"UPDATE events SET locked_by = ? error:locked_time = ? WHERE locked_by IS NULL OR locked_by = '' OR locked_time <= ?;" bindings:{&obj, v6}];
  objc_storeStrong((v3 + 40), obj);

  return v4;
}

void __45__AMSMetricsDatabase_lockAllEventsWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v6 = a2;
  [v6 bindString:v2 atPosition:1];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  *&v3 = v3;
  [v6 bindFloat:2 atPosition:v3];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4 + -600.0;
  *&v5 = v5;
  [v6 bindFloat:3 atPosition:v5];
}

- (BOOL)unlockAllEventsWithKey:(id)key error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__41;
  v22 = __Block_byref_object_dispose__41;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__AMSMetricsDatabase_unlockAllEventsWithKey_error___block_invoke;
  v15[3] = &unk_1E73B9610;
  v15[4] = self;
  v17 = &v18;
  v7 = keyCopy;
  v16 = v7;
  [(AMSMetricsDatabase *)self _performTransaction:v15];
  v8 = v19[5];
  if (v8)
  {
    if (error)
    {
      v9 = v8;
      *error = v8;
    }

    v10 = +[AMSLogConfig sharedMetricsConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogableError(v19[5]);
      *buf = 138543618;
      v25 = v12;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to lock events. Error = %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v18, 8);
  return v8 == 0;
}

uint64_t __51__AMSMetricsDatabase_unlockAllEventsWithKey_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__AMSMetricsDatabase_unlockAllEventsWithKey_error___block_invoke_2;
  v6[3] = &unk_1E73B9520;
  v7 = *(a1 + 40);
  v4 = [v2 executeStatement:@"UPDATE events SET locked_by = NULL error:locked_time = 0 WHERE locked_by = ? OR locked_time <= ?;" bindings:{&obj, v6}];
  objc_storeStrong((v3 + 40), obj);

  return v4;
}

void __51__AMSMetricsDatabase_unlockAllEventsWithKey_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = a2;
  [v5 bindString:v2 atPosition:1];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3 + -600.0;
  *&v4 = v4;
  [v5 bindFloat:2 atPosition:v4];
}

- (BOOL)unlockEvents:(id)events error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__41;
  v35 = __Block_byref_object_dispose__41;
  v36 = 0;
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = eventsCopy;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v8)
  {
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        databasePID = [v11 databasePID];
        v13 = databasePID == 0;

        if (!v13)
        {
          if ([v6 length])
          {
            [v6 appendString:{@", "}];
          }

          databasePID2 = [v11 databasePID];
          [v6 appendFormat:@"%@", databasePID2];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v8);
  }

  if ([v6 length])
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __41__AMSMetricsDatabase_unlockEvents_error___block_invoke;
    v23[3] = &unk_1E73B9548;
    v24 = v6;
    selfCopy = self;
    v26 = &v31;
    [(AMSMetricsDatabase *)self _performTransaction:v23];
    v15 = v32[5];
    v16 = v15 == 0;
    if (v15)
    {
      if (error)
      {
        *error = v15;
      }

      v17 = +[AMSLogConfig sharedMetricsConfig];
      if (!v17)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v17 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = AMSLogableError(v32[5]);
        *buf = 138543618;
        v38 = v19;
        v39 = 2114;
        v40 = v20;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to drop events. Error = %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v16 = 1;
  }

  _Block_object_dispose(&v31, 8);
  return v16;
}

uint64_t __41__AMSMetricsDatabase_unlockEvents_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE events SET locked_by = NULL, locked_time = 0 WHERE pid in (%@)", *(a1 + 32)];;
  v3 = [*(a1 + 40) connection];
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v3 executeStatement:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  return v5;
}

- (BOOL)cleanupInvalidIdentifiersWithError:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__41;
  v12 = __Block_byref_object_dispose__41;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__AMSMetricsDatabase_cleanupInvalidIdentifiersWithError___block_invoke;
  v7[3] = &unk_1E73B9638;
  v7[4] = self;
  v7[5] = &v8;
  [(AMSMetricsDatabase *)self _performTransaction:v7];
  v4 = v9[5];
  if (error && v4)
  {
    v4 = v4;
    *error = v4;
  }

  v5 = v4 == 0;
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __57__AMSMetricsDatabase_cleanupInvalidIdentifiersWithError___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = [*(a1 + 32) connection];
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__AMSMetricsDatabase_cleanupInvalidIdentifiersWithError___block_invoke_2;
  v18[3] = &__block_descriptor_40_e28_v16__0___AMSSQLiteBinding__8l;
  v18[4] = v3;
  [v4 executeStatement:@"DELETE FROM identifiers WHERE cross_device=0 AND ((expires>0 AND expires<?) OR store_uuid NOT IN (SELECT store_uuid FROM identifier_stores WHERE deleted=0));" error:&obj bindings:v18];
  objc_storeStrong((v5 + 40), obj);

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = +[AMSLogConfig sharedMetricsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v8 = objc_opt_class();
    v9 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138543618;
    v21 = v8;
    v22 = 2114;
    v23 = v9;
    v10 = "%{public}@: Failed to delete identifiers. %{public}@";
LABEL_11:
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
LABEL_12:

    return 0;
  }

  v11 = [*(a1 + 32) connection];
  v12 = *(*(a1 + 40) + 8);
  v17 = *(v12 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__AMSMetricsDatabase_cleanupInvalidIdentifiersWithError___block_invoke_103;
  v16[3] = &__block_descriptor_40_e28_v16__0___AMSSQLiteBinding__8l;
  v16[4] = v3;
  [v11 executeStatement:@"UPDATE identifiers SET modified=? error:deleted=1 WHERE deleted=0 AND ((expires>0 AND expires<?) OR store_uuid NOT IN (SELECT store_uuid FROM identifier_stores WHERE deleted=0));" bindings:{&v17, v16}];
  objc_storeStrong((v12 + 40), v17);

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = +[AMSLogConfig sharedMetricsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v13 = objc_opt_class();
    v14 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138543618;
    v21 = v13;
    v22 = 2114;
    v23 = v14;
    v10 = "%{public}@: Failed to update identifiers. %{public}@";
    goto LABEL_11;
  }

  return 1;
}

void __57__AMSMetricsDatabase_cleanupInvalidIdentifiersWithError___block_invoke_103(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindDouble:1 atPosition:v3];
  [v4 bindDouble:2 atPosition:*(a1 + 32)];
}

- (BOOL)removeIdentifiersForAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__41;
  v18 = __Block_byref_object_dispose__41;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__AMSMetricsDatabase_removeIdentifiersForAccount_error___block_invoke;
  v11[3] = &unk_1E73B9610;
  v11[4] = self;
  v13 = &v14;
  v7 = accountCopy;
  v12 = v7;
  [(AMSMetricsDatabase *)self _performTransaction:v11];
  v8 = v15[5];
  if (error && v8)
  {
    v8 = v8;
    *error = v8;
  }

  v9 = v8 == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

BOOL __56__AMSMetricsDatabase_removeIdentifiersForAccount_error___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = [*(a1 + 32) connection];
  v5 = *(*(a1 + 48) + 8);
  v38 = *(v5 + 40);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __56__AMSMetricsDatabase_removeIdentifiersForAccount_error___block_invoke_2;
  v36[3] = &unk_1E73B9520;
  v37 = *(a1 + 40);
  [v4 executeStatement:@"DELETE FROM identifiers WHERE cross_device=0 AND store_uuid in (SELECT store_uuid FROM identifier_stores WHERE account=?);" error:&v38 bindings:v36];
  objc_storeStrong((v5 + 40), v38);

  if (*(*(*(a1 + 48) + 8) + 40))
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
      v9 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v40 = v8;
      v41 = 2114;
      v42 = v9;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete identifiers. %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v11 = [*(a1 + 32) connection];
    v12 = *(*(a1 + 48) + 8);
    obj = *(v12 + 40);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __56__AMSMetricsDatabase_removeIdentifiersForAccount_error___block_invoke_110;
    v32[3] = &unk_1E73B9660;
    v34 = v3;
    v33 = *(a1 + 40);
    [v11 executeStatement:@"UPDATE identifiers SET modified=? error:deleted=1 WHERE deleted=0 AND store_uuid in (SELECT store_uuid FROM identifier_stores WHERE account=?);" bindings:{&obj, v32}];
    objc_storeStrong((v12 + 40), obj);

    if (*(*(*(a1 + 48) + 8) + 40))
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
        v16 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138543618;
        v40 = v15;
        v41 = 2114;
        v42 = v16;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update identifiers. %{public}@", buf, 0x16u);
      }

      v10 = 0;
    }

    else
    {
      v17 = [*(a1 + 32) connection];
      v18 = *(*(a1 + 48) + 8);
      v31 = *(v18 + 40);
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __56__AMSMetricsDatabase_removeIdentifiersForAccount_error___block_invoke_114;
      v28 = &unk_1E73B9660;
      v30 = v3;
      v29 = *(a1 + 40);
      [v17 executeStatement:@"UPDATE identifier_stores SET modified=? error:deleted=1 WHERE deleted=0 AND account=?;" bindings:{&v31, &v25}];
      objc_storeStrong((v18 + 40), v31);

      v19 = *(*(*(a1 + 48) + 8) + 40);
      v10 = v19 == 0;
      if (v19)
      {
        v20 = [AMSLogConfig sharedMetricsConfig:v25];
        if (!v20)
        {
          v20 = +[AMSLogConfig sharedConfig];
        }

        v21 = [v20 OSLogObject];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = objc_opt_class();
          v23 = *(*(*(a1 + 48) + 8) + 40);
          *buf = 138543618;
          v40 = v22;
          v41 = 2114;
          v42 = v23;
          _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update identifier_stores. %{public}@", buf, 0x16u);
        }
      }

      v13 = v29;
    }

    v6 = v33;
  }

  return v10;
}

void __56__AMSMetricsDatabase_removeIdentifiersForAccount_error___block_invoke_110(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindDouble:1 atPosition:v3];
  [v4 bindString:*(a1 + 32) atPosition:2];
}

void __56__AMSMetricsDatabase_removeIdentifiersForAccount_error___block_invoke_114(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindDouble:1 atPosition:v3];
  [v4 bindString:*(a1 + 32) atPosition:2];
}

- (BOOL)removeIdentifiersForStore:(id)store error:(id *)error
{
  storeCopy = store;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__41;
  v18 = __Block_byref_object_dispose__41;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__AMSMetricsDatabase_removeIdentifiersForStore_error___block_invoke;
  v11[3] = &unk_1E73B9610;
  v11[4] = self;
  v13 = &v14;
  v7 = storeCopy;
  v12 = v7;
  [(AMSMetricsDatabase *)self _performTransaction:v11];
  v8 = v15[5];
  if (error && v8)
  {
    v8 = v8;
    *error = v8;
  }

  v9 = v8 == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

BOOL __54__AMSMetricsDatabase_removeIdentifiersForStore_error___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = [*(a1 + 32) connection];
  v5 = *(*(a1 + 48) + 8);
  v38 = *(v5 + 40);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __54__AMSMetricsDatabase_removeIdentifiersForStore_error___block_invoke_2;
  v36[3] = &unk_1E73B9520;
  v37 = *(a1 + 40);
  [v4 executeStatement:@"DELETE FROM identifiers WHERE cross_device=0 AND store_uuid in (SELECT store_uuid FROM identifier_stores WHERE store_key=?);" error:&v38 bindings:v36];
  objc_storeStrong((v5 + 40), v38);

  if (*(*(*(a1 + 48) + 8) + 40))
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
      v9 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v40 = v8;
      v41 = 2114;
      v42 = v9;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete identifiers. %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v11 = [*(a1 + 32) connection];
    v12 = *(*(a1 + 48) + 8);
    obj = *(v12 + 40);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __54__AMSMetricsDatabase_removeIdentifiersForStore_error___block_invoke_121;
    v32[3] = &unk_1E73B9660;
    v34 = v3;
    v33 = *(a1 + 40);
    [v11 executeStatement:@"UPDATE identifiers SET modified=? error:deleted=1 WHERE deleted=0 AND store_uuid in (SELECT store_uuid FROM identifier_stores WHERE store_key=?);" bindings:{&obj, v32}];
    objc_storeStrong((v12 + 40), obj);

    if (*(*(*(a1 + 48) + 8) + 40))
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
        v16 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138543618;
        v40 = v15;
        v41 = 2114;
        v42 = v16;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update identifiers. %{public}@", buf, 0x16u);
      }

      v10 = 0;
    }

    else
    {
      v17 = [*(a1 + 32) connection];
      v18 = *(*(a1 + 48) + 8);
      v31 = *(v18 + 40);
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __54__AMSMetricsDatabase_removeIdentifiersForStore_error___block_invoke_125;
      v28 = &unk_1E73B9660;
      v30 = v3;
      v29 = *(a1 + 40);
      [v17 executeStatement:@"UPDATE identifier_stores SET modified=? error:deleted=1 WHERE deleted=0 AND store_key=?;" bindings:{&v31, &v25}];
      objc_storeStrong((v18 + 40), v31);

      v19 = *(*(*(a1 + 48) + 8) + 40);
      v10 = v19 == 0;
      if (v19)
      {
        v20 = [AMSLogConfig sharedMetricsConfig:v25];
        if (!v20)
        {
          v20 = +[AMSLogConfig sharedConfig];
        }

        v21 = [v20 OSLogObject];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = objc_opt_class();
          v23 = *(*(*(a1 + 48) + 8) + 40);
          *buf = 138543618;
          v40 = v22;
          v41 = 2114;
          v42 = v23;
          _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update identifier_stores. %{public}@", buf, 0x16u);
        }
      }

      v13 = v29;
    }

    v6 = v33;
  }

  return v10;
}

void __54__AMSMetricsDatabase_removeIdentifiersForStore_error___block_invoke_121(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindDouble:1 atPosition:v3];
  [v4 bindString:*(a1 + 32) atPosition:2];
}

void __54__AMSMetricsDatabase_removeIdentifiersForStore_error___block_invoke_125(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindDouble:1 atPosition:v3];
  [v4 bindString:*(a1 + 32) atPosition:2];
}

- (id)identifierStoreForKey:(id)key updateMaybe:(id)maybe error:(id *)error
{
  keyCopy = key;
  maybeCopy = maybe;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__41;
  v39 = __Block_byref_object_dispose__41;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__41;
  v33 = __Block_byref_object_dispose__41;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  do
  {
    v9 = v30[5];
    v30[5] = 0;

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__AMSMetricsDatabase_identifierStoreForKey_updateMaybe_error___block_invoke;
    v16[3] = &unk_1E73B9700;
    v16[4] = self;
    v19 = &v35;
    v10 = keyCopy;
    v17 = v10;
    v20 = &v29;
    v21 = v23;
    v11 = maybeCopy;
    v18 = v11;
    v22 = &v25;
    [(AMSMetricsDatabase *)self _performTransaction:v16];
  }

  while ((v26[3] & 1) == 0);
  v12 = v36[5];
  if (v12)
  {
    v13 = 0;
    if (error)
    {
      *error = v12;
    }
  }

  else
  {
    v13 = v30[5];
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);

  return v13;
}

BOOL __62__AMSMetricsDatabase_identifierStoreForKey_updateMaybe_error___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v2 = [*(a1 + 32) connection];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __62__AMSMetricsDatabase_identifierStoreForKey_updateMaybe_error___block_invoke_2;
  v29[3] = &unk_1E73B96B0;
  v25 = *(a1 + 32);
  *(&v3 + 1) = *(&v25 + 1);
  *&v3 = *(a1 + 56);
  v24 = v3;
  v4 = *(&v25 + 1);
  *&v5 = v24;
  *(&v5 + 1) = *(a1 + 64);
  v30 = v25;
  v31 = v5;
  v32 = &v33;
  [v2 executeQuery:@"SELECT store_key withResults:{store_uuid, account, interval, cross_device, started, last_sync, modified, deleted FROM identifier_stores WHERE store_key=?;", v29}];

  if (*(*(*(a1 + 56) + 8) + 40) || (v6 = a1 + 72, (*(*(*(a1 + 72) + 8) + 24) & 1) != 0) || (v7 = *(a1 + 48), v8 = *(*(a1 + 64) + 8), obj = *(v8 + 40), v9 = (*(v7 + 16))(), objc_storeStrong((v8 + 40), obj), (v9 & 1) == 0))
  {
    v6 = a1 + 80;
  }

  else
  {
    v10 = v34[3];
    v11 = [*(a1 + 32) connection];
    v12 = v11;
    v13 = *(*(a1 + 56) + 8);
    v16 = *(v13 + 40);
    v15 = (v13 + 40);
    v14 = v16;
    if (v10 <= 0.0)
    {
      v17 = @"INSERT OR IGNORE INTO identifier_stores (store_uuid, account, interval, cross_device, started, last_sync, modified, store_key) VALUES (?,?,?,?,?,?,?,?);";
    }

    else
    {
      v17 = @"UPDATE identifier_stores SET store_uuid=?, account=?, interval=?, cross_device=?, started=?, last_sync=?, modified=?, deleted=0 WHERE store_key=? AND modified=?;";
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __62__AMSMetricsDatabase_identifierStoreForKey_updateMaybe_error___block_invoke_137;
    v26[3] = &unk_1E73B96D8;
    v26[4] = *(a1 + 64);
    v26[5] = &v33;
    v27 = v14;
    [v11 executeStatement:v17 error:&v27 bindings:{v26, v24}];
    objc_storeStrong(v15, v27);

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v18 = +[AMSLogConfig sharedMetricsConfig];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138543618;
        v38 = v20;
        v39 = 2114;
        v40 = v21;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update or insert identifier_stores. %{public}@", buf, 0x16u);
      }
    }
  }

  *(*(*v6 + 8) + 24) = 1;
  v22 = *(*(*(a1 + 56) + 8) + 40) == 0;

  _Block_object_dispose(&v33, 8);
  return v22;
}

void __62__AMSMetricsDatabase_identifierStoreForKey_updateMaybe_error___block_invoke_2(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
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
      *buf = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query identifier_stores. %{public}@", buf, 0x16u);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a3);
  }

  else
  {
    [v5 bindString:a1[5] atPosition:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__AMSMetricsDatabase_identifierStoreForKey_updateMaybe_error___block_invoke_129;
    v9[3] = &unk_1E73B9688;
    v9[4] = a1[4];
    v10 = *(a1 + 3);
    v11 = a1[8];
    [v5 enumerateRowsUsingBlock:v9];
  }
}

void __62__AMSMetricsDatabase_identifierStoreForKey_updateMaybe_error___block_invoke_129(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = +[AMSLogConfig sharedMetricsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v23 = 138543618;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = v8;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to enumerate identifier_stores. %{public}@", &v23, 0x16u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    v11 = objc_opt_new();
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = [v7 stringForColumnIndex:0];
    [*(*(a1[6] + 8) + 40) setStoreKey:v14];

    v15 = [v7 stringForColumnIndex:1];
    [*(*(a1[6] + 8) + 40) setStoreUUID:v15];

    v16 = [v7 stringForColumnIndex:2];
    [*(*(a1[6] + 8) + 40) setAccount:v16];

    [v7 doubleForColumnIndex:3];
    [*(*(a1[6] + 8) + 40) setResetInterval:?];
    [*(*(a1[6] + 8) + 40) setCrossDeviceSync:{objc_msgSend(v7, "intForColumnIndex:", 4) != 0}];
    [v7 doubleForColumnIndex:5];
    if (v17 <= 0.0)
    {
      v18 = 0;
    }

    else
    {
      v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    }

    [*(*(a1[6] + 8) + 40) setStarted:v18];

    [v7 doubleForColumnIndex:6];
    if (v19 <= 0.0)
    {
      v20 = 0;
    }

    else
    {
      v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    }

    [*(*(a1[6] + 8) + 40) setLastSync:v20];

    [v7 doubleForColumnIndex:7];
    *(*(a1[7] + 8) + 24) = v21;
    v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*(*(a1[7] + 8) + 24)];
    [*(*(a1[6] + 8) + 40) setModified:v22];

    [*(*(a1[6] + 8) + 40) setDeleted:{objc_msgSend(v7, "intForColumnIndex:", 8) != 0}];
  }

  *a4 = 1;
}

void __62__AMSMetricsDatabase_identifierStoreForKey_updateMaybe_error___block_invoke_137(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(*(*(a1 + 32) + 8) + 40) storeUUID];
  [v9 bindString:v3 atPosition:1];

  v4 = [*(*(*(a1 + 32) + 8) + 40) account];
  [v9 bindString:v4 atPosition:2];

  [*(*(*(a1 + 32) + 8) + 40) resetInterval];
  [v9 bindDouble:3 atPosition:?];
  [v9 bindInt:objc_msgSend(*(*(*(a1 + 32) + 8) + 40) atPosition:{"crossDeviceSync"), 4}];
  v5 = [*(*(*(a1 + 32) + 8) + 40) started];
  [v5 timeIntervalSinceReferenceDate];
  [v9 bindDouble:5 atPosition:?];

  v6 = [*(*(*(a1 + 32) + 8) + 40) lastSync];
  [v6 timeIntervalSinceReferenceDate];
  [v9 bindDouble:6 atPosition:?];

  v7 = [*(*(*(a1 + 32) + 8) + 40) modified];
  [v7 timeIntervalSinceReferenceDate];
  [v9 bindDouble:7 atPosition:?];

  v8 = [*(*(*(a1 + 32) + 8) + 40) storeKey];
  [v9 bindString:v8 atPosition:8];

  if (*(*(*(a1 + 40) + 8) + 24) > 0.0)
  {
    [v9 bindDouble:9 atPosition:?];
  }
}

- (id)identifierForKey:(id)key updateMaybe:(id)maybe error:(id *)error
{
  keyCopy = key;
  maybeCopy = maybe;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__41;
  v39 = __Block_byref_object_dispose__41;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__41;
  v33 = __Block_byref_object_dispose__41;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  do
  {
    v9 = v30[5];
    v30[5] = 0;

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__AMSMetricsDatabase_identifierForKey_updateMaybe_error___block_invoke;
    v16[3] = &unk_1E73B9700;
    v16[4] = self;
    v19 = &v35;
    v10 = keyCopy;
    v17 = v10;
    v20 = &v29;
    v21 = v23;
    v11 = maybeCopy;
    v18 = v11;
    v22 = &v25;
    [(AMSMetricsDatabase *)self _performTransaction:v16];
  }

  while ((v26[3] & 1) == 0);
  v12 = v36[5];
  if (v12)
  {
    v13 = 0;
    if (error)
    {
      *error = v12;
    }
  }

  else
  {
    v13 = v30[5];
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);

  return v13;
}

BOOL __57__AMSMetricsDatabase_identifierForKey_updateMaybe_error___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v2 = [*(a1 + 32) connection];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __57__AMSMetricsDatabase_identifierForKey_updateMaybe_error___block_invoke_2;
  v29[3] = &unk_1E73B96B0;
  v25 = *(a1 + 32);
  *(&v3 + 1) = *(&v25 + 1);
  *&v3 = *(a1 + 56);
  v24 = v3;
  v4 = *(&v25 + 1);
  *&v5 = v24;
  *(&v5 + 1) = *(a1 + 64);
  v30 = v25;
  v31 = v5;
  v32 = &v33;
  [v2 executeQuery:@"SELECT identifier_key withResults:{store_uuid, name, value, cross_device, expires, last_sync, modified, deleted, server_provided_at, change_counter, change_cause, previous_value FROM identifiers WHERE identifier_key=?;", v29}];

  if (*(*(*(a1 + 56) + 8) + 40) || (v6 = a1 + 72, (*(*(*(a1 + 72) + 8) + 24) & 1) != 0) || (v7 = *(a1 + 48), v8 = *(*(a1 + 64) + 8), obj = *(v8 + 40), v9 = (*(v7 + 16))(), objc_storeStrong((v8 + 40), obj), (v9 & 1) == 0))
  {
    v6 = a1 + 80;
  }

  else
  {
    v10 = v34[3];
    v11 = [*(a1 + 32) connection];
    v12 = v11;
    v13 = *(*(a1 + 56) + 8);
    v16 = *(v13 + 40);
    v15 = (v13 + 40);
    v14 = v16;
    if (v10 <= 0.0)
    {
      v17 = @"INSERT OR IGNORE INTO identifiers (store_uuid, name, value, cross_device, expires, last_sync, modified, server_provided_at, change_counter, change_cause, previous_value, identifier_key) VALUES (?,?,?,?,?,?,?,?,?,?,?,?);";
    }

    else
    {
      v17 = @"UPDATE identifiers SET store_uuid=?, name=?, value=?, cross_device=?, expires=?, last_sync=?, modified=?, deleted=0, server_provided_at=?, change_counter=?, change_cause=?, previous_value=? WHERE identifier_key=? AND modified=?;";
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __57__AMSMetricsDatabase_identifierForKey_updateMaybe_error___block_invoke_149;
    v26[3] = &unk_1E73B96D8;
    v26[4] = *(a1 + 64);
    v26[5] = &v33;
    v27 = v14;
    [v11 executeStatement:v17 error:&v27 bindings:{v26, v24}];
    objc_storeStrong(v15, v27);

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v18 = +[AMSLogConfig sharedMetricsConfig];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138543618;
        v38 = v20;
        v39 = 2114;
        v40 = v21;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update or insert identifiers. %{public}@", buf, 0x16u);
      }
    }
  }

  *(*(*v6 + 8) + 24) = 1;
  v22 = *(*(*(a1 + 56) + 8) + 40) == 0;

  _Block_object_dispose(&v33, 8);
  return v22;
}

void __57__AMSMetricsDatabase_identifierForKey_updateMaybe_error___block_invoke_2(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
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
      *buf = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query identifiers. %{public}@", buf, 0x16u);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a3);
  }

  else
  {
    [v5 bindString:a1[5] atPosition:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__AMSMetricsDatabase_identifierForKey_updateMaybe_error___block_invoke_141;
    v9[3] = &unk_1E73B9688;
    v9[4] = a1[4];
    v10 = *(a1 + 3);
    v11 = a1[8];
    [v5 enumerateRowsUsingBlock:v9];
  }
}

void __57__AMSMetricsDatabase_identifierForKey_updateMaybe_error___block_invoke_141(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = +[AMSLogConfig sharedMetricsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v29 = 138543618;
      v30 = objc_opt_class();
      v31 = 2114;
      v32 = v8;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to enumerate identifiers. %{public}@", &v29, 0x16u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    v11 = objc_opt_new();
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = [v7 stringForColumnIndex:0];
    [*(*(a1[6] + 8) + 40) setIdKey:v14];

    v15 = [v7 stringForColumnIndex:1];
    [*(*(a1[6] + 8) + 40) setStoreUUID:v15];

    v16 = [v7 stringForColumnIndex:2];
    [*(*(a1[6] + 8) + 40) setName:v16];

    v17 = [v7 stringForColumnIndex:3];
    [*(*(a1[6] + 8) + 40) setValue:v17];

    [*(*(a1[6] + 8) + 40) setCrossDeviceSync:{objc_msgSend(v7, "intForColumnIndex:", 4) != 0}];
    [v7 doubleForColumnIndex:5];
    if (v18 <= 0.0)
    {
      v19 = 0;
    }

    else
    {
      v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    }

    [*(*(a1[6] + 8) + 40) setExpires:v19];

    [v7 doubleForColumnIndex:6];
    if (v20 <= 0.0)
    {
      v21 = 0;
    }

    else
    {
      v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    }

    [*(*(a1[6] + 8) + 40) setLastSync:v21];

    [v7 doubleForColumnIndex:7];
    *(*(a1[7] + 8) + 24) = v22;
    v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*(*(a1[7] + 8) + 24)];
    [*(*(a1[6] + 8) + 40) setModified:v23];

    [*(*(a1[6] + 8) + 40) setDeleted:{objc_msgSend(v7, "intForColumnIndex:", 8) != 0}];
    [v7 doubleForColumnIndex:9];
    if (v24 <= 0.0)
    {
      v25 = 0;
    }

    else
    {
      v25 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    }

    [*(*(a1[6] + 8) + 40) setServerProvidedAt:v25];

    v26 = [v7 numberForColumnIndex:10];
    [*(*(a1[6] + 8) + 40) setChangeCounter:v26];

    v27 = [v7 numberForColumnIndex:11];
    [*(*(a1[6] + 8) + 40) setChangeCause:v27];

    v28 = [v7 stringForColumnIndex:12];
    [*(*(a1[6] + 8) + 40) setPreviousValue:v28];
  }

  *a4 = 1;
}

void __57__AMSMetricsDatabase_identifierForKey_updateMaybe_error___block_invoke_149(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [*(*(*(a1 + 32) + 8) + 40) storeUUID];
  [v16 bindString:v3 atPosition:1];

  v4 = [*(*(*(a1 + 32) + 8) + 40) name];
  [v16 bindString:v4 atPosition:2];

  v5 = [*(*(*(a1 + 32) + 8) + 40) value];
  [v16 bindString:v5 atPosition:3];

  [v16 bindInt:objc_msgSend(*(*(*(a1 + 32) + 8) + 40) atPosition:{"crossDeviceSync"), 4}];
  v6 = [*(*(*(a1 + 32) + 8) + 40) expires];
  [v6 timeIntervalSinceReferenceDate];
  [v16 bindDouble:5 atPosition:?];

  v7 = [*(*(*(a1 + 32) + 8) + 40) lastSync];
  [v7 timeIntervalSinceReferenceDate];
  [v16 bindDouble:6 atPosition:?];

  v8 = [*(*(*(a1 + 32) + 8) + 40) modified];
  [v8 timeIntervalSinceReferenceDate];
  [v16 bindDouble:7 atPosition:?];

  v9 = [*(*(*(a1 + 32) + 8) + 40) serverProvidedAt];
  [v9 timeIntervalSinceReferenceDate];
  [v16 bindDouble:8 atPosition:?];

  v10 = [*(*(*(a1 + 32) + 8) + 40) changeCounter];

  if (v10)
  {
    v11 = [*(*(*(a1 + 32) + 8) + 40) changeCounter];
    [v16 bindNumber:v11 atPosition:9];
  }

  else
  {
    [v16 bindNullAtPosition:9];
  }

  v12 = [*(*(*(a1 + 32) + 8) + 40) changeCause];

  if (v12)
  {
    v13 = [*(*(*(a1 + 32) + 8) + 40) changeCause];
    [v16 bindNumber:v13 atPosition:10];
  }

  else
  {
    [v16 bindNullAtPosition:10];
  }

  v14 = [*(*(*(a1 + 32) + 8) + 40) previousValue];
  [v16 bindNullableString:v14 atPosition:11];

  v15 = [*(*(*(a1 + 32) + 8) + 40) idKey];
  [v16 bindString:v15 atPosition:12];

  if (*(*(*(a1 + 40) + 8) + 24) > 0.0)
  {
    [v16 bindDouble:13 atPosition:?];
  }
}

- (BOOL)clearIdentifierSyncStateWithError:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__41;
  v12 = __Block_byref_object_dispose__41;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AMSMetricsDatabase_clearIdentifierSyncStateWithError___block_invoke;
  v7[3] = &unk_1E73B9638;
  v7[4] = self;
  v7[5] = &v8;
  [(AMSMetricsDatabase *)self _performTransaction:v7];
  v4 = v9[5];
  if (error && v4)
  {
    v4 = v4;
    *error = v4;
  }

  v5 = v4 == 0;
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __56__AMSMetricsDatabase_clearIdentifierSyncStateWithError___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) connection];
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  [v2 executeStatement:@"UPDATE identifiers SET last_sync=0 WHERE cross_device=1;" error:&obj];
  objc_storeStrong((v3 + 40), obj);

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = +[AMSLogConfig sharedMetricsConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v6 = objc_opt_class();
    v7 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    v8 = "%{public}@: Failed to clear identifiers last sync. %{public}@";
    goto LABEL_11;
  }

  v9 = [*(a1 + 32) connection];
  v10 = *(*(a1 + 40) + 8);
  v14 = *(v10 + 40);
  [v9 executeStatement:@"UPDATE identifier_stores SET last_sync=0 WHERE cross_device=1;" error:&v14];
  objc_storeStrong((v10 + 40), v14);

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    return 1;
  }

  v4 = +[AMSLogConfig sharedMetricsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138543618;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v8 = "%{public}@: Failed to clear identifier_stores last sync. %{public}@";
LABEL_11:
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, v8, buf, 0x16u);
  }

LABEL_12:

  return 0;
}

- (BOOL)enumerateUnsyncedIdentifierStoresUsingBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__41;
  v18 = __Block_byref_object_dispose__41;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__AMSMetricsDatabase_enumerateUnsyncedIdentifierStoresUsingBlock_error___block_invoke;
  v11[3] = &unk_1E73B9778;
  v11[4] = self;
  v13 = &v14;
  v7 = blockCopy;
  v12 = v7;
  [(AMSMetricsDatabase *)self _performTransaction:v11];
  v8 = v15[5];
  if (error && v8)
  {
    v8 = v8;
    *error = v8;
  }

  v9 = v8 == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

BOOL __72__AMSMetricsDatabase_enumerateUnsyncedIdentifierStoresUsingBlock_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__AMSMetricsDatabase_enumerateUnsyncedIdentifierStoresUsingBlock_error___block_invoke_2;
  v7[3] = &unk_1E73B9750;
  v7[4] = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = v6;
  v8 = v6;
  [v2 executeQuery:@"SELECT store_key withResults:{store_uuid, account, interval, started, last_sync, modified, deleted FROM identifier_stores WHERE cross_device=1 AND last_sync<modified;", v7}];

  v4 = *(*(*(a1 + 48) + 8) + 40) == 0;
  return v4;
}

void __72__AMSMetricsDatabase_enumerateUnsyncedIdentifierStoresUsingBlock_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
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
      *buf = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query identifier_stores. %{public}@", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__AMSMetricsDatabase_enumerateUnsyncedIdentifierStoresUsingBlock_error___block_invoke_159;
    v11[3] = &unk_1E73B9728;
    v11[4] = *(a1 + 32);
    v10 = *(a1 + 40);
    v9 = v10;
    v12 = v10;
    [a2 enumerateRowsUsingBlock:v11];
  }
}

void __72__AMSMetricsDatabase_enumerateUnsyncedIdentifierStoresUsingBlock_error___block_invoke_159(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = +[AMSLogConfig sharedMetricsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543618;
      v22 = objc_opt_class();
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to enumerate identifier_stores. %{public}@", &v21, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    *a4 = 1;
  }

  else
  {
    v11 = objc_opt_new();
    v12 = [v7 stringForColumnIndex:0];
    [v11 setStoreKey:v12];

    v13 = [v7 stringForColumnIndex:1];
    [v11 setStoreUUID:v13];

    v14 = [v7 stringForColumnIndex:2];
    [v11 setAccount:v14];

    [v7 doubleForColumnIndex:3];
    [v11 setResetInterval:?];
    [v7 doubleForColumnIndex:4];
    if (v15 <= 0.0)
    {
      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    }

    [v11 setStarted:v16];

    [v7 doubleForColumnIndex:5];
    if (v17 <= 0.0)
    {
      v18 = 0;
    }

    else
    {
      v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    }

    [v11 setLastSync:v18];

    [v7 doubleForColumnIndex:6];
    if (v19 <= 0.0)
    {
      v20 = 0;
    }

    else
    {
      v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    }

    [v11 setModified:v20];

    [v11 setDeleted:{objc_msgSend(v7, "intForColumnIndex:", 7) != 0}];
    *a4 = (*(*(a1 + 40) + 16))() ^ 1;
  }
}

- (BOOL)enumerateUnsyncedIdentifiersUsingBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__41;
  v18 = __Block_byref_object_dispose__41;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__AMSMetricsDatabase_enumerateUnsyncedIdentifiersUsingBlock_error___block_invoke;
  v11[3] = &unk_1E73B9778;
  v11[4] = self;
  v13 = &v14;
  v7 = blockCopy;
  v12 = v7;
  [(AMSMetricsDatabase *)self _performTransaction:v11];
  v8 = v15[5];
  if (error && v8)
  {
    v8 = v8;
    *error = v8;
  }

  v9 = v8 == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

BOOL __67__AMSMetricsDatabase_enumerateUnsyncedIdentifiersUsingBlock_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__AMSMetricsDatabase_enumerateUnsyncedIdentifiersUsingBlock_error___block_invoke_2;
  v7[3] = &unk_1E73B9750;
  v7[4] = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = v6;
  v8 = v6;
  [v2 executeQuery:@"SELECT identifier_key withResults:{store_uuid, name, value, cross_device, expires, last_sync, modified, deleted, server_provided_at, change_counter, change_cause, previous_value FROM identifiers WHERE cross_device=1 AND last_sync<modified AND (expires=0 OR expires>?);", v7}];

  v4 = *(*(*(a1 + 48) + 8) + 40) == 0;
  return v4;
}

void __67__AMSMetricsDatabase_enumerateUnsyncedIdentifiersUsingBlock_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
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
      *buf = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query identifiers. %{public}@", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [v5 bindDouble:1 atPosition:?];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__AMSMetricsDatabase_enumerateUnsyncedIdentifiersUsingBlock_error___block_invoke_163;
    v11[3] = &unk_1E73B9728;
    v11[4] = *(a1 + 32);
    v10 = *(a1 + 40);
    v9 = v10;
    v12 = v10;
    [v5 enumerateRowsUsingBlock:v11];
  }
}

void __67__AMSMetricsDatabase_enumerateUnsyncedIdentifiersUsingBlock_error___block_invoke_163(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = +[AMSLogConfig sharedMetricsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v27 = 138543618;
      v28 = objc_opt_class();
      v29 = 2114;
      v30 = v8;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to enumerate identifiers. %{public}@", &v27, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    *a4 = 1;
  }

  else
  {
    v11 = objc_opt_new();
    v12 = [v7 stringForColumnIndex:0];
    [v11 setIdKey:v12];

    v13 = [v7 stringForColumnIndex:1];
    [v11 setStoreUUID:v13];

    v14 = [v7 stringForColumnIndex:2];
    [v11 setName:v14];

    v15 = [v7 stringForColumnIndex:3];
    [v11 setValue:v15];

    [v11 setCrossDeviceSync:{objc_msgSend(v7, "intForColumnIndex:", 4) != 0}];
    [v7 doubleForColumnIndex:5];
    if (v16 <= 0.0)
    {
      v17 = 0;
    }

    else
    {
      v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    }

    [v11 setExpires:v17];

    [v7 doubleForColumnIndex:6];
    if (v18 <= 0.0)
    {
      v19 = 0;
    }

    else
    {
      v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    }

    [v11 setLastSync:v19];

    [v7 doubleForColumnIndex:7];
    if (v20 <= 0.0)
    {
      v21 = 0;
    }

    else
    {
      v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    }

    [v11 setModified:v21];

    [v11 setDeleted:{objc_msgSend(v7, "intForColumnIndex:", 8) != 0}];
    [v7 doubleForColumnIndex:9];
    if (v22 <= 0.0)
    {
      v23 = 0;
    }

    else
    {
      v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    }

    [v11 setServerProvidedAt:v23];

    v24 = [v7 numberForColumnIndex:10];
    [v11 setChangeCounter:v24];

    v25 = [v7 numberForColumnIndex:11];
    [v11 setChangeCause:v25];

    v26 = [v7 stringForColumnIndex:12];
    [v11 setPreviousValue:v26];

    *a4 = (*(*(a1 + 40) + 16))() ^ 1;
  }
}

- (BOOL)permanentlyRemoveIdentifierForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__41;
  v18 = __Block_byref_object_dispose__41;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__AMSMetricsDatabase_permanentlyRemoveIdentifierForKey_error___block_invoke;
  v11[3] = &unk_1E73B9610;
  v11[4] = self;
  v13 = &v14;
  v7 = keyCopy;
  v12 = v7;
  [(AMSMetricsDatabase *)self _performTransaction:v11];
  v8 = v15[5];
  if (error && v8)
  {
    v8 = v8;
    *error = v8;
  }

  v9 = v8 == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

BOOL __62__AMSMetricsDatabase_permanentlyRemoveIdentifierForKey_error___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) connection];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __62__AMSMetricsDatabase_permanentlyRemoveIdentifierForKey_error___block_invoke_2;
  v23[3] = &unk_1E73B9520;
  v24 = *(a1 + 40);
  [v2 executeStatement:@"DELETE FROM identifier_stores WHERE store_key=?" error:&obj bindings:v23];
  objc_storeStrong((v3 + 40), obj);

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v4 = +[AMSLogConfig sharedMetricsConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v27 = v6;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete identifier_stores. %{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 32) connection];
    v10 = *(*(a1 + 48) + 8);
    v22 = *(v10 + 40);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __62__AMSMetricsDatabase_permanentlyRemoveIdentifierForKey_error___block_invoke_170;
    v20 = &unk_1E73B9520;
    v21 = *(a1 + 40);
    [v9 executeStatement:@"DELETE FROM identifiers WHERE identifier_key=?" error:&v22 bindings:&v17];
    objc_storeStrong((v10 + 40), v22);

    v11 = *(*(*(a1 + 48) + 8) + 40);
    v8 = v11 == 0;
    if (v11)
    {
      v12 = [AMSLogConfig sharedMetricsConfig:v17];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138543618;
        v27 = v14;
        v28 = 2114;
        v29 = v15;
        _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete identifiers. %{public}@", buf, 0x16u);
      }
    }

    v4 = v21;
  }

  return v8;
}

- (BOOL)removeCrossDeviceIdentifiersWithError:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__41;
  v12 = __Block_byref_object_dispose__41;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AMSMetricsDatabase_removeCrossDeviceIdentifiersWithError___block_invoke;
  v7[3] = &unk_1E73B9638;
  v7[4] = self;
  v7[5] = &v8;
  [(AMSMetricsDatabase *)self _performTransaction:v7];
  v4 = v9[5];
  if (error && v4)
  {
    v4 = v4;
    *error = v4;
  }

  v5 = v4 == 0;
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __60__AMSMetricsDatabase_removeCrossDeviceIdentifiersWithError___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) connection];
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  [v2 executeStatement:@"DELETE FROM identifiers WHERE cross_device=1 OR store_uuid IN (SELECT store_uuid FROM identifier_stores WHERE cross_device=1);" error:&obj];
  objc_storeStrong((v3 + 40), obj);

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = +[AMSLogConfig sharedMetricsConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v6 = objc_opt_class();
    v7 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    v8 = "%{public}@: Failed to delete identifiers. %{public}@";
    goto LABEL_11;
  }

  v9 = [*(a1 + 32) connection];
  v10 = *(*(a1 + 40) + 8);
  v14 = *(v10 + 40);
  [v9 executeStatement:@"DELETE FROM identifier_stores WHERE cross_device=1;" error:&v14];
  objc_storeStrong((v10 + 40), v14);

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    return 1;
  }

  v4 = +[AMSLogConfig sharedMetricsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138543618;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v8 = "%{public}@: Failed to delete identifier_stores. %{public}@";
LABEL_11:
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, v8, buf, 0x16u);
  }

LABEL_12:

  return 0;
}

- (BOOL)connection:(id)connection needsResetForCorruptionError:(id)error error:(id *)a5
{
  connectionCopy = connection;
  errorCopy = error;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__41;
  v30 = __Block_byref_object_dispose__41;
  v31 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __68__AMSMetricsDatabase_connection_needsResetForCorruptionError_error___block_invoke;
  v20[3] = &unk_1E73B97A0;
  v20[4] = self;
  v11 = errorCopy;
  v21 = v11;
  v25 = a2;
  v12 = connectionCopy;
  v22 = v12;
  v23 = &v26;
  v24 = &v32;
  v13 = AMSMetricsDatabaseBlockWithKeepAlive(@"AMSMetricsDatabase-truncateAfterCorruption", v20);
  v13[2](v13, v14, v15, v16, v17);

  if (a5)
  {
    *a5 = v27[5];
  }

  v18 = *(v33 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v18;
}

void __68__AMSMetricsDatabase_connection_needsResetForCorruptionError_error___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedMetricsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = [*(a1 + 32) containerId];
    v1 = AMSLogableError(*(a1 + 40));
    *buf = 138543874;
    v57 = v5;
    v58 = 2112;
    v59 = v6;
    v60 = 2114;
    v61 = v1;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: About to truncate or delete the metrics database %@{public} due to corruption: %{public}@", buf, 0x20u);
  }

  v7 = [*(a1 + 32) containerId];
  v8 = [v7 isEqualToString:@"com.apple.AppleMediaServices.meta"];

  if (v8)
  {
    v9 = +[AMSUnitTests isRunningUnitTests];
    v10 = +[AMSLogConfig sharedMetricsConfig];
    v11 = v10;
    if (v9)
    {
      if (!v10)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = AMSLogKey();
        v14 = MEMORY[0x1E696AEC0];
        v15 = objc_opt_class();
        if (v13)
        {
          v16 = AMSLogKey();
          v1 = NSStringFromSelector(*(a1 + 72));
          [v14 stringWithFormat:@"%@: [%@] %@ ", v15, v16, v1];
        }

        else
        {
          v16 = NSStringFromSelector(*(a1 + 72));
          [v14 stringWithFormat:@"%@: %@ ", v15, v16];
        }
        v17 = ;
        *buf = 138543362;
        v57 = v17;
        _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@About to truncate or delete the AMS metrics identifier store database due to corruption.", buf, 0xCu);
        if (v13)
        {

          v17 = v1;
        }
      }

      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      v18 = +[AMSLogConfig sharedMetricsConfig];
      [v11 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v18 userInfo:0];
    }

    else
    {
      if (!v10)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      v18 = [v11 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v19 = AMSLogKey();
        v20 = MEMORY[0x1E696AEC0];
        v21 = objc_opt_class();
        if (v19)
        {
          v22 = AMSLogKey();
          v1 = NSStringFromSelector(*(a1 + 72));
          [v20 stringWithFormat:@"%@: [%@] %@ ", v21, v22, v1];
        }

        else
        {
          v22 = NSStringFromSelector(*(a1 + 72));
          [v20 stringWithFormat:@"%@: %@ ", v21, v22];
        }
        v23 = ;
        *buf = 138543362;
        v57 = v23;
        _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_FAULT, "%{public}@About to truncate or delete the AMS metrics identifier store database due to corruption.", buf, 0xCu);
        if (v19)
        {

          v23 = v1;
        }
      }
    }

    if (os_variant_has_internal_content())
    {
      v24 = +[AMSDefaults ttrMetricsidentfiersDatabaseDeletionPromptCount];
      v25 = [v24 unsignedIntegerValue];

      if (v25 <= 2)
      {
        v26 = MEMORY[0x1E696AEC0];
        v27 = NSStringFromSelector(*(a1 + 72));
        v28 = +[AMSProcessInfo currentProcess];
        v29 = [v28 executableName];
        v30 = [*(a1 + 32) containerId];
        v31 = [v26 stringWithFormat:@"%@ in %@: %@ container is corrupt", v27, v29, v30];
        [AMSTapToRadar openWithRadarTitle:v31 radarDescription:@"The SQLite database backing AMS metrics identifier store appears to be corrupt and will be deleted. This might cause unexpected rotations of KIDs on this device." promptTitle:@"AMS Metrics Identifier Store Database Corrupt" promptDescription:@"Please file a Radar." classification:5 component:2 reproducibility:4 keywordIds:0];

        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25 + 1];
        [AMSDefaults setTtrMetricsidentfiersDatabaseDeletionPromptCount:v32];
      }
    }

    AMSMetricsIdentifierStoreDeleteCloudKitStorage();
  }

  v33 = *(a1 + 48);
  v55 = 0;
  v34 = [v33 truncateWithError:&v55];
  v35 = v55;
  if (v34)
  {
    goto LABEL_33;
  }

  v36 = *(a1 + 48);
  v54 = 0;
  [v36 closeWithError:&v54];
  v37 = v54;
  v38 = [*(a1 + 32) _cachePath];
  v53 = 0;
  v39 = [AMSDatabaseHelper removeDatabaseForCachePath:v38 error:&v53];
  v40 = v53;

  if (v39)
  {

LABEL_33:
    v41 = *(a1 + 48);
    v42 = *(*(a1 + 56) + 8);
    obj = 0;
    v43 = [AMSMetricsDatabaseSchema createOrUpdateSchemaUsingConnection:v41 error:&obj];
    objc_storeStrong((v42 + 40), obj);
    *(*(*(a1 + 64) + 8) + 24) = v43;
    goto LABEL_35;
  }

  v44 = AMSErrorBySettingUnderlyingError(v35, *(a1 + 40));
  v45 = AMSErrorBySettingUnderlyingError(v40, v44);
  v46 = *(*(a1 + 56) + 8);
  v47 = *(v46 + 40);
  *(v46 + 40) = v45;

LABEL_35:
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v48 = +[AMSLogConfig sharedMetricsConfig];
    if (!v48)
    {
      v48 = +[AMSLogConfig sharedConfig];
    }

    v49 = [v48 OSLogObject];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = objc_opt_class();
      v51 = AMSLogableError(*(*(*(a1 + 56) + 8) + 40));
      *buf = 138543618;
      v57 = v50;
      v58 = 2114;
      v59 = v51;
      _os_log_impl(&dword_192869000, v49, OS_LOG_TYPE_ERROR, "%{public}@: Failed to reset metrics database after corruption. This is bad! Error = %{public}@", buf, 0x16u);
    }
  }
}

- (void)_performTransaction:(id)transaction
{
  transactionCopy = transaction;
  internalQueue = [(AMSMetricsDatabase *)self internalQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__AMSMetricsDatabase__performTransaction___block_invoke;
  v8[3] = &unk_1E73B36D0;
  v8[4] = self;
  v9 = transactionCopy;
  v6 = transactionCopy;
  v7 = AMSMetricsDatabaseBlockWithKeepAlive(@"AMSMetricsDatabase-transaction", v8);
  dispatch_sync(internalQueue, v7);
}

void __42__AMSMetricsDatabase__performTransaction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AMSMetricsDatabase__performTransaction___block_invoke_2;
  v5[3] = &unk_1E73B97C8;
  v6 = *(a1 + 40);
  [v2 performTransaction:v5];

  v3 = [*(a1 + 32) connection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__AMSMetricsDatabase__performTransaction___block_invoke_3;
  v4[3] = &unk_1E73B97F0;
  v4[4] = *(a1 + 32);
  [v3 performTransaction:v4];
}

uint64_t __42__AMSMetricsDatabase__performTransaction___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) connection];
  v10 = 0;
  v2 = [v1 executeStatement:@"PRAGMA incremental_vacuum(100);" error:&v10];
  v3 = v10;

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = +[AMSLogConfig sharedMetricsConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogableError(v3);
      *buf = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Incremental vacuum failed. Error = %{public}@", buf, 0x16u);
    }
  }

  return v2;
}

@end