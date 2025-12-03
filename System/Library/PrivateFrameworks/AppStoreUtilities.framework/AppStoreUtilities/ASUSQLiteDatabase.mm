@interface ASUSQLiteDatabase
- (ASUSQLiteDatabase)initWithConnection:(id)connection;
- (ASUSQLiteDatabase)initWithConnectionOptions:(id)options;
- (BOOL)connectionNeedsResetForCorruption:(id)corruption;
- (BOOL)connectionNeedsResetForReopen:(id)reopen;
- (BOOL)tableExists:(id)exists;
- (dispatch_queue_t)_readUsingSession:(void *)session withBlock:;
- (uint64_t)_performMigrationIfNeededForStore:(char)store calledAfterTransaction:;
- (void)_modifyUsingTransactionClass:(void *)class withBlock:;
- (void)_reentrantSafePerformBlock:(NSObject *)block;
- (void)modifyStore:(id)store usingTransaction:(id)transaction;
- (void)modifyStore:(id)store usingTransaction:(id)transaction completion:(id)completion;
- (void)modifyStore:(id)store usingTransactionClass:(Class)class withBlock:(id)block;
- (void)modifyStore:(id)store usingTransactionClass:(Class)class withBlock:(id)block completion:(id)completion;
- (void)readStore:(id)store usingSession:(id)session;
- (void)readStore:(id)store usingSession:(id)session completion:(id)completion;
- (void)verifyDatabaseIntegrity;
@end

@implementation ASUSQLiteDatabase

- (ASUSQLiteDatabase)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = ASUSQLiteDatabase;
  v6 = [(ASUSQLiteDatabase *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.appstored.ASUSQLiteDatabase", v7);
    v9 = *(v6 + 2);
    *(v6 + 2) = v8;

    dispatch_queue_set_specific(*(v6 + 2), "_ASUSQLiteDispatchQueueTag", v6, 0);
    v10 = [MEMORY[0x277CCAA50] hashTableWithOptions:258];
    v11 = *(v6 + 3);
    *(v6 + 3) = v10;

    objc_storeStrong(v6 + 1, connection);
    [*(v6 + 1) setDelegate:v6];
  }

  return v6;
}

- (ASUSQLiteDatabase)initWithConnectionOptions:(id)options
{
  optionsCopy = options;
  v5 = [[ASUSQLiteConnection alloc] initWithOptions:optionsCopy];

  v6 = [(ASUSQLiteDatabase *)self initWithConnection:v5];
  return v6;
}

- (void)modifyStore:(id)store usingTransaction:(id)transaction
{
  storeCopy = store;
  transactionCopy = transaction;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__ASUSQLiteDatabase_modifyStore_usingTransaction___block_invoke;
  v10[3] = &unk_278C97B10;
  v10[4] = self;
  v11 = storeCopy;
  v12 = transactionCopy;
  v8 = transactionCopy;
  v9 = storeCopy;
  [(ASUSQLiteDatabase *)self _reentrantSafePerformBlock:v10];
}

void __50__ASUSQLiteDatabase_modifyStore_usingTransaction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [(ASUSQLiteDatabase *)v2 _performMigrationIfNeededForStore:0 calledAfterTransaction:?];
  }

  v3 = *(a1 + 40);
  v4 = [objc_opt_class() storeDescriptor];
  -[ASUSQLiteDatabase _modifyUsingTransactionClass:withBlock:](*(a1 + 32), [v4 transactionClass], *(a1 + 48));
}

- (void)_modifyUsingTransactionClass:(void *)class withBlock:
{
  classCopy = class;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    v6 = [[a2 alloc] initWithConnection:*(self + 8)];
    v7 = *(self + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__ASUSQLiteDatabase__modifyUsingTransactionClass_withBlock___block_invoke;
    v9[3] = &unk_278C97C50;
    v10 = v6;
    v11 = classCopy;
    v8 = v6;
    [v7 performTransaction:v9 error:0];
  }
}

- (void)_reentrantSafePerformBlock:(NSObject *)block
{
  block = a2;
  if (block)
  {
    specific = dispatch_get_specific("_ASUSQLiteDispatchQueueTag");
    v4 = block[2];
    if (specific == block)
    {
      dispatch_assert_queue_V2(v4);
      block[2]();
    }

    else
    {
      dispatch_assert_queue_not_V2(v4);
      dispatch_sync(block[2], block);
    }
  }
}

- (void)modifyStore:(id)store usingTransaction:(id)transaction completion:(id)completion
{
  storeCopy = store;
  transactionCopy = transaction;
  completionCopy = completion;
  transactionQueue = self->_transactionQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__ASUSQLiteDatabase_modifyStore_usingTransaction_completion___block_invoke;
  v15[3] = &unk_278C97B38;
  v15[4] = self;
  v16 = storeCopy;
  v17 = transactionCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = transactionCopy;
  v14 = storeCopy;
  dispatch_async(transactionQueue, v15);
}

void __61__ASUSQLiteDatabase_modifyStore_usingTransaction_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [(ASUSQLiteDatabase *)v2 _performMigrationIfNeededForStore:0 calledAfterTransaction:?];
  }

  v3 = *(a1 + 40);
  v5 = [objc_opt_class() storeDescriptor];
  -[ASUSQLiteDatabase _modifyUsingTransactionClass:withBlock:](*(a1 + 32), [v5 transactionClass], *(a1 + 48));
  v4 = dispatch_get_global_queue(21, 0);
  dispatch_async(v4, *(a1 + 56));
}

- (void)modifyStore:(id)store usingTransactionClass:(Class)class withBlock:(id)block
{
  storeCopy = store;
  blockCopy = block;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__ASUSQLiteDatabase_modifyStore_usingTransactionClass_withBlock___block_invoke;
  v12[3] = &unk_278C97B60;
  v12[4] = self;
  v13 = storeCopy;
  v14 = blockCopy;
  classCopy = class;
  v10 = blockCopy;
  v11 = storeCopy;
  [(ASUSQLiteDatabase *)self _reentrantSafePerformBlock:v12];
}

void __65__ASUSQLiteDatabase_modifyStore_usingTransactionClass_withBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [(ASUSQLiteDatabase *)v2 _performMigrationIfNeededForStore:0 calledAfterTransaction:?];
    v2 = *(a1 + 32);
  }

  v4 = *(a1 + 48);
  v3 = *(a1 + 56);

  [(ASUSQLiteDatabase *)v2 _modifyUsingTransactionClass:v3 withBlock:v4];
}

- (void)modifyStore:(id)store usingTransactionClass:(Class)class withBlock:(id)block completion:(id)completion
{
  storeCopy = store;
  blockCopy = block;
  completionCopy = completion;
  transactionQueue = self->_transactionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__ASUSQLiteDatabase_modifyStore_usingTransactionClass_withBlock_completion___block_invoke;
  block[3] = &unk_278C97B88;
  block[4] = self;
  v18 = storeCopy;
  v20 = completionCopy;
  classCopy = class;
  v19 = blockCopy;
  v14 = completionCopy;
  v15 = blockCopy;
  v16 = storeCopy;
  dispatch_async(transactionQueue, block);
}

void __76__ASUSQLiteDatabase_modifyStore_usingTransactionClass_withBlock_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [(ASUSQLiteDatabase *)v2 _performMigrationIfNeededForStore:0 calledAfterTransaction:?];
    v2 = *(a1 + 32);
  }

  [(ASUSQLiteDatabase *)v2 _modifyUsingTransactionClass:*(a1 + 48) withBlock:?];
  v3 = dispatch_get_global_queue(21, 0);
  dispatch_async(v3, *(a1 + 56));
}

- (void)readStore:(id)store usingSession:(id)session
{
  storeCopy = store;
  sessionCopy = session;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__ASUSQLiteDatabase_readStore_usingSession___block_invoke;
  v10[3] = &unk_278C97B10;
  v10[4] = self;
  v11 = storeCopy;
  v12 = sessionCopy;
  v8 = sessionCopy;
  v9 = storeCopy;
  [(ASUSQLiteDatabase *)self _reentrantSafePerformBlock:v10];
}

void __44__ASUSQLiteDatabase_readStore_usingSession___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [(ASUSQLiteDatabase *)v2 _performMigrationIfNeededForStore:0 calledAfterTransaction:?];
  }

  v3 = *(a1 + 40);
  v4 = [objc_opt_class() storeDescriptor];
  v5 = [objc_alloc(objc_msgSend(v4 "sessionClass"))];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__ASUSQLiteDatabase_readStore_usingSession___block_invoke_2;
  v8[3] = &unk_278C97BB0;
  v9 = *(a1 + 48);
  v7 = [(ASUSQLiteDatabase *)v6 _readUsingSession:v5 withBlock:v8];
}

- (dispatch_queue_t)_readUsingSession:(void *)session withBlock:
{
  v5 = a2;
  sessionCopy = session;
  if (self)
  {
    dispatch_assert_queue_V2(self[2]);
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v7 = self[1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__ASUSQLiteDatabase__readUsingSession_withBlock___block_invoke;
    v10[3] = &unk_278C97CC8;
    v13 = &v14;
    v12 = sessionCopy;
    v11 = v5;
    if ([v7 performTransaction:v10 error:0])
    {
      v8 = v15[5];
    }

    else
    {
      v8 = 0;
    }

    self = v8;

    _Block_object_dispose(&v14, 8);
  }

  return self;
}

- (void)readStore:(id)store usingSession:(id)session completion:(id)completion
{
  storeCopy = store;
  sessionCopy = session;
  completionCopy = completion;
  transactionQueue = self->_transactionQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__ASUSQLiteDatabase_readStore_usingSession_completion___block_invoke;
  v15[3] = &unk_278C97B38;
  v15[4] = self;
  v16 = storeCopy;
  v17 = sessionCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = sessionCopy;
  v14 = storeCopy;
  dispatch_async(transactionQueue, v15);
}

void __55__ASUSQLiteDatabase_readStore_usingSession_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [(ASUSQLiteDatabase *)v2 _performMigrationIfNeededForStore:0 calledAfterTransaction:?];
  }

  v3 = *(a1 + 40);
  v4 = [objc_opt_class() storeDescriptor];
  v5 = [objc_alloc(objc_msgSend(v4 "sessionClass"))];
  v6 = [(ASUSQLiteDatabase *)*(a1 + 32) _readUsingSession:v5 withBlock:*(a1 + 48)];
  v7 = dispatch_get_global_queue(21, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__ASUSQLiteDatabase_readStore_usingSession_completion___block_invoke_2;
  v10[3] = &unk_278C97BD8;
  v8 = *(a1 + 56);
  v11 = v6;
  v12 = v8;
  v9 = v6;
  dispatch_async(v7, v10);
}

- (BOOL)connectionNeedsResetForReopen:(id)reopen
{
  v12 = *MEMORY[0x277D85DE8];
  reopenCopy = reopen;
  dispatch_assert_queue_V2(self->_transactionQueue);
  v5 = ASULogHandleForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    options = [reopenCopy options];
    databasePath = [options databasePath];
    v10 = 138543362;
    v11 = databasePath;
    _os_log_error_impl(&dword_2400F8000, v5, OS_LOG_TYPE_ERROR, "Requiring all stores to migrate after truncating corrupt database at: %{public}@", &v10, 0xCu);
  }

  NSResetHashTable(self->_migratedStores);
  v6 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)connectionNeedsResetForCorruption:(id)corruption
{
  v18 = *MEMORY[0x277D85DE8];
  corruptionCopy = corruption;
  dispatch_assert_queue_V2(self->_transactionQueue);
  options = [corruptionCopy options];
  databasePath = [options databasePath];

  v7 = ASULogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v17 = databasePath;
    _os_log_error_impl(&dword_2400F8000, v7, OS_LOG_TYPE_ERROR, "Exiting after deleting corrupt database at: %{public}@", buf, 0xCu);
  }

  [corruptionCopy close];
  v15 = 0;
  ASUSQLiteDeleteDatabase(databasePath, &v15);
  v8 = v15;
  if (v8)
  {
    v9 = v8;
    v10 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v9;
      _os_log_error_impl(&dword_2400F8000, v10, OS_LOG_TYPE_ERROR, "Error when deleting corrupt database, renaming database instead: %{public}@", buf, 0xCu);
    }

    v14 = 0;
    ASUSQLiteTrashDatabaseName(databasePath, &v14);
    v11 = v14;
    if (v11)
    {
      v12 = v11;
      v13 = ASULogHandleForCategory(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v12;
        _os_log_error_impl(&dword_2400F8000, v13, OS_LOG_TYPE_ERROR, "Error when renaming database: %{public}@", buf, 0xCu);
      }
    }
  }

  exit(0);
}

- (BOOL)tableExists:(id)exists
{
  existsCopy = exists;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__ASUSQLiteDatabase_tableExists___block_invoke;
  v7[3] = &unk_278C97C00;
  v9 = &v10;
  v7[4] = self;
  v5 = existsCopy;
  v8 = v5;
  [(ASUSQLiteDatabase *)self _reentrantSafePerformBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __33__ASUSQLiteDatabase_tableExists___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) tableExists:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)verifyDatabaseIntegrity
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__ASUSQLiteDatabase_verifyDatabaseIntegrity__block_invoke;
  v2[3] = &unk_278C97C28;
  v2[4] = self;
  [(ASUSQLiteDatabase *)self _reentrantSafePerformBlock:v2];
}

void __44__ASUSQLiteDatabase_verifyDatabaseIntegrity__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) options];
  v3 = [v2 databasePath];

  LODWORD(v2) = [*(*(a1 + 32) + 8) tableExists:@"schema_version"];
  v4 = ASULogHandleForCategory(1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v5)
    {
      v8 = 138543362;
      v9 = v3;
      v6 = "Database opened at: %{public}@";
LABEL_6:
      _os_log_impl(&dword_2400F8000, v4, OS_LOG_TYPE_INFO, v6, &v8, 0xCu);
    }
  }

  else if (v5)
  {
    v8 = 138543362;
    v9 = v3;
    v6 = "Database created at: %{public}@";
    goto LABEL_6;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_performMigrationIfNeededForStore:(char)store calledAfterTransaction:
{
  v5 = a2;
  if (self)
  {
    if (NSHashGet(*(self + 24), v5))
    {
      v6 = 1;
    }

    else
    {
      storeDescriptor = [objc_opt_class() storeDescriptor];
      v8 = [ASUSQLiteDatabaseStoreSchema alloc];
      v9 = *(self + 8);
      schemaName = [storeDescriptor schemaName];
      tableNames = [storeDescriptor tableNames];
      v12 = [(ASUSQLiteDatabaseStoreSchema *)v8 initWithConnection:v9 schemaName:schemaName tableNames:tableNames];

      v13 = *(self + 8);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __78__ASUSQLiteDatabase__performMigrationIfNeededForStore_calledAfterTransaction___block_invoke;
      v17[3] = &unk_278C97CA0;
      v18 = v5;
      v19 = v12;
      storeCopy = store;
      selfCopy = self;
      v21 = storeDescriptor;
      v14 = storeDescriptor;
      v15 = v12;
      v6 = [v13 performTransaction:v17 error:0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __78__ASUSQLiteDatabase__performMigrationIfNeededForStore_calledAfterTransaction___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() createOrMigrateStoreUsingSchema:*(a1 + 40)];
  if (v3)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      v4 = *(a1 + 48);
      v5 = *(v4 + 8);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __78__ASUSQLiteDatabase__performMigrationIfNeededForStore_calledAfterTransaction___block_invoke_2;
      v11[3] = &unk_278C97C78;
      v11[4] = v4;
      v12 = *(a1 + 32);
      [v5 dispatchAfterTransaction:v11];
    }
  }

  else
  {
    v6 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v9 = [*(a1 + 56) schemaName];
      v10 = [*(a1 + 40) currentSchemaVersion];
      *buf = 138543618;
      v14 = v9;
      v15 = 2048;
      v16 = v10;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

void __78__ASUSQLiteDatabase__performMigrationIfNeededForStore_calledAfterTransaction___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __78__ASUSQLiteDatabase__performMigrationIfNeededForStore_calledAfterTransaction___block_invoke_3;
  v2[3] = &unk_278C97C78;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [(ASUSQLiteDatabase *)v1 _reentrantSafePerformBlock:v2];
}

void __78__ASUSQLiteDatabase__performMigrationIfNeededForStore_calledAfterTransaction___block_invoke_3(uint64_t a1)
{
  if ([(ASUSQLiteDatabase *)*(a1 + 32) _performMigrationIfNeededForStore:1 calledAfterTransaction:?])
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 24);

    NSHashInsert(v3, v2);
  }
}

uint64_t __49__ASUSQLiteDatabase__readUsingSession_withBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = (*(a1[5] + 16))();
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

@end