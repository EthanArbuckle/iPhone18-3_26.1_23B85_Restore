@interface SQLiteDatabase
- (BOOL)connectionNeedsResetForCorruption:(id)corruption;
- (BOOL)connectionNeedsResetForReopen:(id)reopen;
- (BOOL)tableExists:(id)exists;
- (SQLiteDatabase)initWithConnection:(id)connection;
- (SQLiteDatabase)initWithConnectionOptions:(id)options;
- (void)_modifyUsingTransactionClass:(Class)class withBlock:(id)block;
- (void)_performMigrationIfNeededForStore:(id)store;
- (void)_readUsingSession:(id)session withBlock:(id)block;
- (void)_reentrantSafePerformBlock:(id)block;
- (void)modifyStore:(id)store usingTransaction:(id)transaction;
- (void)modifyStore:(id)store usingTransactionClass:(Class)class withBlock:(id)block;
- (void)readStore:(id)store usingSession:(id)session;
- (void)verifyDatabaseIntegrity;
@end

@implementation SQLiteDatabase

- (SQLiteDatabase)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = SQLiteDatabase;
  v6 = [(SQLiteDatabase *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.storekit.SQLiteDatabase", v7);
    v9 = *(v6 + 2);
    *(v6 + 2) = v8;

    dispatch_queue_set_specific(*(v6 + 2), "_SQLiteDispatchQueueTag", v6, 0);
    v10 = [NSHashTable hashTableWithOptions:258];
    v11 = *(v6 + 3);
    *(v6 + 3) = v10;

    objc_storeStrong(v6 + 1, connection);
    [*(v6 + 1) setDelegate:v6];
  }

  return v6;
}

- (SQLiteDatabase)initWithConnectionOptions:(id)options
{
  optionsCopy = options;
  v5 = [[SQLiteConnection alloc] initWithOptions:optionsCopy];

  [(SQLiteConnection *)v5 open];
  v6 = [(SQLiteDatabase *)self initWithConnection:v5];

  return v6;
}

- (void)modifyStore:(id)store usingTransaction:(id)transaction
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004978C;
  v7[3] = &unk_10037FDC8;
  selfCopy = self;
  storeCopy = store;
  transactionCopy = transaction;
  v5 = transactionCopy;
  v6 = storeCopy;
  [(SQLiteDatabase *)selfCopy _reentrantSafePerformBlock:v7];
}

- (void)modifyStore:(id)store usingTransactionClass:(Class)class withBlock:(id)block
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000498C4;
  v9[3] = &unk_100381D18;
  selfCopy = self;
  storeCopy = store;
  blockCopy = block;
  classCopy = class;
  v7 = blockCopy;
  v8 = storeCopy;
  [(SQLiteDatabase *)selfCopy _reentrantSafePerformBlock:v9];
}

- (void)readStore:(id)store usingSession:(id)session
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000499C8;
  v7[3] = &unk_10037FDC8;
  selfCopy = self;
  storeCopy = store;
  sessionCopy = session;
  v5 = sessionCopy;
  v6 = storeCopy;
  [(SQLiteDatabase *)selfCopy _reentrantSafePerformBlock:v7];
}

- (BOOL)connectionNeedsResetForReopen:(id)reopen
{
  reopenCopy = reopen;
  dispatch_assert_queue_V2(self->_transactionQueue);
  if (qword_1003D41E0 != -1)
  {
    sub_1002CD710();
  }

  v5 = qword_1003D41C8;
  if (os_log_type_enabled(qword_1003D41C8, OS_LOG_TYPE_ERROR))
  {
    sub_1002CD724(v5, reopenCopy);
  }

  NSResetHashTable(self->_migratedStores);

  return 1;
}

- (BOOL)connectionNeedsResetForCorruption:(id)corruption
{
  corruptionCopy = corruption;
  dispatch_assert_queue_V2(self->_transactionQueue);
  options = [corruptionCopy options];
  databasePath = [options databasePath];

  options2 = [corruptionCopy options];
  encryptionKeyId = [options2 encryptionKeyId];
  if (encryptionKeyId)
  {
  }

  else
  {
    v9 = sub_100019CF8(databasePath);

    if (v9)
    {
      if (qword_1003D41E0 != -1)
      {
        dispatch_once(&qword_1003D41E0, &stru_100381D88);
      }

      v10 = qword_1003D41C8;
      if (os_log_type_enabled(qword_1003D41C8, OS_LOG_TYPE_ERROR))
      {
        v12 = 138543362;
        v13 = databasePath;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Exiting after truncating corrupt database at: %{public}@", &v12, 0xCu);
      }

      goto LABEL_7;
    }
  }

  if (qword_1003D41E0 != -1)
  {
    dispatch_once(&qword_1003D41E0, &stru_100381D88);
  }

  v11 = qword_1003D41C8;
  if (os_log_type_enabled(qword_1003D41C8, OS_LOG_TYPE_ERROR))
  {
    v12 = 138543362;
    v13 = databasePath;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Exiting after deleting corrupt database at: %{public}@", &v12, 0xCu);
  }

  sub_1000198F8(databasePath);
LABEL_7:
  exit(0);
}

- (BOOL)tableExists:(id)exists
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100049D4C;
  v6[3] = &unk_1003807C8;
  v9 = &v10;
  selfCopy = self;
  existsCopy = exists;
  v8 = existsCopy;
  [(SQLiteDatabase *)selfCopy _reentrantSafePerformBlock:v6];
  v4 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (void)verifyDatabaseIntegrity
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100049DF0;
  v2[3] = &unk_100380818;
  v2[4] = self;
  [(SQLiteDatabase *)self _reentrantSafePerformBlock:v2];
}

- (void)_modifyUsingTransactionClass:(Class)class withBlock:(id)block
{
  blockCopy = block;
  dispatch_assert_queue_V2(self->_transactionQueue);
  v7 = [[class alloc] initWithConnection:self->_connection];
  connection = self->_connection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004A00C;
  v11[3] = &unk_100381D40;
  v12 = v7;
  v13 = blockCopy;
  v9 = v7;
  v10 = blockCopy;
  [(SQLiteConnection *)connection performTransaction:v11];
}

- (void)_performMigrationIfNeededForStore:(id)store
{
  storeCopy = store;
  migratedStores = self->_migratedStores;
  v6 = objc_opt_class();
  if (!NSHashGet(migratedStores, v6))
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 1;
    storeDescriptor = [objc_opt_class() storeDescriptor];
    v8 = [SQLiteDatabaseStoreSchema alloc];
    connection = self->_connection;
    schemaName = [storeDescriptor schemaName];
    v11 = [(SQLiteDatabaseStoreSchema *)v8 initWithConnection:connection schemaName:schemaName];

    v12 = self->_connection;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10004A264;
    v18[3] = &unk_100381D68;
    v21 = &v22;
    v19 = storeCopy;
    v13 = v11;
    v20 = v13;
    [(SQLiteConnection *)v12 performTransaction:v18];
    if (*(v23 + 24) == 1)
    {
      v14 = self->_migratedStores;
      v15 = objc_opt_class();
      NSHashInsert(v14, v15);
    }

    else
    {
      if (qword_1003D41E0 != -1)
      {
        sub_1002CD7E4();
      }

      v16 = qword_1003D41C8;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        schemaName2 = [storeDescriptor schemaName];
        sub_1002CD80C(schemaName2, buf, [(SQLiteDatabaseStoreSchema *)v13 currentSchemaVersion], v16);
      }
    }

    _Block_object_dispose(&v22, 8);
  }
}

- (void)_readUsingSession:(id)session withBlock:(id)block
{
  sessionCopy = session;
  blockCopy = block;
  dispatch_assert_queue_V2(self->_transactionQueue);
  connection = self->_connection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004A378;
  v11[3] = &unk_100381D40;
  v12 = sessionCopy;
  v13 = blockCopy;
  v9 = sessionCopy;
  v10 = blockCopy;
  [(SQLiteConnection *)connection performTransaction:v11];
}

- (void)_reentrantSafePerformBlock:(id)block
{
  specific = dispatch_get_specific("_SQLiteDispatchQueueTag");
  transactionQueue = self->_transactionQueue;
  block = block;
  if (specific == self)
  {
    dispatch_assert_queue_V2(transactionQueue);
    block[2]();
  }

  else
  {
    dispatch_assert_queue_not_V2(transactionQueue);
    dispatch_sync(self->_transactionQueue, block);
  }
}

@end