@interface SQLiteDatabase
- (BOOL)connectionNeedsResetForCorruption:(id)a3;
- (BOOL)connectionNeedsResetForReopen:(id)a3;
- (BOOL)tableExists:(id)a3;
- (SQLiteDatabase)initWithConnection:(id)a3;
- (SQLiteDatabase)initWithConnectionOptions:(id)a3;
- (void)_modifyUsingTransactionClass:(Class)a3 withBlock:(id)a4;
- (void)_performMigrationIfNeededForStore:(id)a3;
- (void)_readUsingSession:(id)a3 withBlock:(id)a4;
- (void)_reentrantSafePerformBlock:(id)a3;
- (void)modifyStore:(id)a3 usingTransaction:(id)a4;
- (void)modifyStore:(id)a3 usingTransactionClass:(Class)a4 withBlock:(id)a5;
- (void)readStore:(id)a3 usingSession:(id)a4;
- (void)verifyDatabaseIntegrity;
@end

@implementation SQLiteDatabase

- (SQLiteDatabase)initWithConnection:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(v6 + 1, a3);
    [*(v6 + 1) setDelegate:v6];
  }

  return v6;
}

- (SQLiteDatabase)initWithConnectionOptions:(id)a3
{
  v4 = a3;
  v5 = [[SQLiteConnection alloc] initWithOptions:v4];

  [(SQLiteConnection *)v5 open];
  v6 = [(SQLiteDatabase *)self initWithConnection:v5];

  return v6;
}

- (void)modifyStore:(id)a3 usingTransaction:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BCCC;
  v7[3] = &unk_100278540;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(SQLiteDatabase *)v8 _reentrantSafePerformBlock:v7];
}

- (void)modifyStore:(id)a3 usingTransactionClass:(Class)a4 withBlock:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000BE04;
  v9[3] = &unk_100278568;
  v10 = self;
  v11 = a3;
  v12 = a5;
  v13 = a4;
  v7 = v12;
  v8 = v11;
  [(SQLiteDatabase *)v10 _reentrantSafePerformBlock:v9];
}

- (void)readStore:(id)a3 usingSession:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BF08;
  v7[3] = &unk_100278540;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(SQLiteDatabase *)v8 _reentrantSafePerformBlock:v7];
}

- (BOOL)connectionNeedsResetForReopen:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_transactionQueue);
  if (qword_1002BD408 != -1)
  {
    sub_1001F5520();
  }

  v5 = qword_1002BD3F0;
  if (os_log_type_enabled(qword_1002BD3F0, OS_LOG_TYPE_ERROR))
  {
    sub_1001F5534(v5, v4);
  }

  NSResetHashTable(self->_migratedStores);

  return 1;
}

- (BOOL)connectionNeedsResetForCorruption:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_transactionQueue);
  v5 = [v4 options];
  v6 = [v5 databasePath];

  v7 = [v4 options];
  v8 = [v7 encryptionKeyId];
  if (v8)
  {
  }

  else
  {
    v9 = sub_10001440C(v6);

    if (v9)
    {
      if (qword_1002BD408 != -1)
      {
        dispatch_once(&qword_1002BD408, &stru_100278628);
      }

      v10 = qword_1002BD3F0;
      if (os_log_type_enabled(qword_1002BD3F0, OS_LOG_TYPE_ERROR))
      {
        v12 = 138543362;
        v13 = v6;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Exiting after truncating corrupt database at: %{public}@", &v12, 0xCu);
      }

      goto LABEL_7;
    }
  }

  if (qword_1002BD408 != -1)
  {
    dispatch_once(&qword_1002BD408, &stru_100278628);
  }

  v11 = qword_1002BD3F0;
  if (os_log_type_enabled(qword_1002BD3F0, OS_LOG_TYPE_ERROR))
  {
    v12 = 138543362;
    v13 = v6;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Exiting after deleting corrupt database at: %{public}@", &v12, 0xCu);
  }

  sub_10001400C(v6);
LABEL_7:
  exit(0);
}

- (BOOL)tableExists:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000C28C;
  v6[3] = &unk_100278590;
  v9 = &v10;
  v7 = self;
  v3 = a3;
  v8 = v3;
  [(SQLiteDatabase *)v7 _reentrantSafePerformBlock:v6];
  v4 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (void)verifyDatabaseIntegrity
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000C330;
  v2[3] = &unk_1002785B8;
  v2[4] = self;
  [(SQLiteDatabase *)self _reentrantSafePerformBlock:v2];
}

- (void)_modifyUsingTransactionClass:(Class)a3 withBlock:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_transactionQueue);
  v7 = [[a3 alloc] initWithConnection:self->_connection];
  connection = self->_connection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C54C;
  v11[3] = &unk_1002785E0;
  v12 = v7;
  v13 = v6;
  v9 = v7;
  v10 = v6;
  [(SQLiteConnection *)connection performTransaction:v11];
}

- (void)_performMigrationIfNeededForStore:(id)a3
{
  v4 = a3;
  migratedStores = self->_migratedStores;
  v6 = objc_opt_class();
  if (!NSHashGet(migratedStores, v6))
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 1;
    v7 = [objc_opt_class() storeDescriptor];
    v8 = [SQLiteDatabaseStoreSchema alloc];
    connection = self->_connection;
    v10 = [v7 schemaName];
    v11 = [(SQLiteDatabaseStoreSchema *)v8 initWithConnection:connection schemaName:v10];

    v12 = self->_connection;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000C7A4;
    v18[3] = &unk_100278608;
    v21 = &v22;
    v19 = v4;
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
      if (qword_1002BD408 != -1)
      {
        sub_1001F55F4();
      }

      v16 = qword_1002BD3F0;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v17 = [v7 schemaName];
        sub_1001F561C(v17, buf, [(SQLiteDatabaseStoreSchema *)v13 currentSchemaVersion], v16);
      }
    }

    _Block_object_dispose(&v22, 8);
  }
}

- (void)_readUsingSession:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_transactionQueue);
  connection = self->_connection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C8B8;
  v11[3] = &unk_1002785E0;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [(SQLiteConnection *)connection performTransaction:v11];
}

- (void)_reentrantSafePerformBlock:(id)a3
{
  specific = dispatch_get_specific("_SQLiteDispatchQueueTag");
  transactionQueue = self->_transactionQueue;
  block = a3;
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