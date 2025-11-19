@interface CloudKitSQLiteStore
+ (id)databaseURLForFilename:(id)a3;
- (CloudKitSQLiteStore)initWithDatabaseURL:(id)a3 databaseQueueLabel:(const char *)a4;
- (id)_metadataDataValueForKey:(id)a3;
- (int)_migrateToCurrentSchemaVersionIfNeeded;
- (int)_setMetadataDataValue:(id)a3 forKey:(id)a4;
- (int)_setMetadataInt64Value:(int64_t)a3 forKey:(id)a4;
- (int64_t)_metadataInt64ValueForKey:(id)a3;
- (void)_closeDatabase;
- (void)_deleteDatabaseFileAtURL:(id)a3 reopenDatabase:(BOOL)a4;
- (void)_openDatabase:(id)a3 deleteDatabaseFileOnError:(BOOL)a4;
- (void)_vacuum;
- (void)closeDatabaseWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)deleteDatabaseWithCompletionHandler:(id)a3;
- (void)getServerChangeTokenDataWithCompletionHandler:(id)a3;
- (void)openDatabaseIfNecessary;
- (void)setServerChangeTokenData:(id)a3 completionHandler:(id)a4;
@end

@implementation CloudKitSQLiteStore

- (void)openDatabaseIfNecessary
{
  databaseQueue = self->__databaseQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001AD0;
  block[3] = &unk_100135578;
  block[4] = self;
  dispatch_async(databaseQueue, block);
}

- (int)_migrateToCurrentSchemaVersionIfNeeded
{
  v3 = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100002034(v3, @"PRAGMA user_version");

  v5 = [v4 nextObject];
  v6 = [v5 intAtIndex:0];

  v7 = [v4 statement];
  [v7 invalidate];

  v8 = [(CloudKitSQLiteStore *)self _currentSchemaVersion];
  if (v6 != v8)
  {
    if ((!v6 || [(CloudKitSQLiteStore *)self _resetDatabaseSchema]== 101) && [(CloudKitSQLiteStore *)self _createFreshDatabaseSchema]== 101)
    {
      [(CloudKitSQLiteStore *)self _setDatabaseSchemaVersion:v8];
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)_closeDatabase
{
  [(CloudKitSQLiteStore *)self _databaseWillBeClosed];
  [(WBSSQLiteDatabase *)self->__database close];
  database = self->__database;
  self->__database = 0;
}

- (CloudKitSQLiteStore)initWithDatabaseURL:(id)a3 databaseQueueLabel:(const char *)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = CloudKitSQLiteStore;
  v8 = [(CloudKitSQLiteStore *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_databaseURL, a3);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_UTILITY, 0);
    v12 = dispatch_queue_create(a4, v11);
    databaseQueue = v9->__databaseQueue;
    v9->__databaseQueue = v12;

    v14 = v9;
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CloudKitSQLiteStore;
  [(CloudKitSQLiteStore *)&v2 dealloc];
}

+ (id)databaseURLForFilename:(id)a3
{
  v3 = a3;
  v4 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Safari/"];
  v5 = [v4 stringByAppendingPathComponent:v3];

  v6 = [NSURL fileURLWithPath:v5 isDirectory:0];

  return v6;
}

- (void)closeDatabaseWithCompletionHandler:(id)a3
{
  v4 = a3;
  databaseQueue = self->__databaseQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100091470;
  v7[3] = &unk_100135470;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

- (void)deleteDatabaseWithCompletionHandler:(id)a3
{
  v4 = a3;
  databaseQueue = self->__databaseQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100091558;
  v7[3] = &unk_100135470;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

- (void)getServerChangeTokenDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  databaseQueue = self->__databaseQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009163C;
  v7[3] = &unk_100135470;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

- (void)setServerChangeTokenData:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->__databaseQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000917C4;
  block[3] = &unk_100135498;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(databaseQueue, block);
}

- (void)_openDatabase:(id)a3 deleteDatabaseFileOnError:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[WBSSQLiteDatabase alloc] initWithURL:v6 queue:self->__databaseQueue];
  database = self->__database;
  self->__database = v7;

  [(WBSSQLiteDatabase *)self->__database setDelegate:self];
  v9 = self->__database;
  v23 = 0;
  v10 = [(WBSSQLiteDatabase *)v9 openWithAccessType:3 error:&v23];
  v11 = v23;
  v12 = v11;
  if (v10)
  {

    v22 = 0;
    v13 = [v6 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v22];
    v14 = v22;
    if ((v13 & 1) == 0)
    {
      [(CloudKitSQLiteStore *)self _failedToExcludeDatabaseFromBackupWithError:v14];
    }

    v15 = self->__database;
    v21 = 0;
    v16 = [(WBSSQLiteDatabase *)v15 enableWAL:&v21];
    v12 = v21;
    if ((v16 & 1) == 0 && ([(CloudKitSQLiteStore *)self _failedToEnableWALWithError:v12], v4) || (v18 = sub_100001E04(self->__database, 0, @"PRAGMA foreign_keys = ON"), v18 != 101) && ([(CloudKitSQLiteStore *)self _failedToEnableForeignKeysWithError:v18], v4))
    {
LABEL_13:
      [(CloudKitSQLiteStore *)self _deleteDatabaseFileAtURL:v6 reopenDatabase:1];
      goto LABEL_15;
    }

    v19 = [(CloudKitSQLiteStore *)self _migrateToCurrentSchemaVersionIfNeeded];
    if (v19 != [(CloudKitSQLiteStore *)self _currentSchemaVersion])
    {
      [(CloudKitSQLiteStore *)self _databaseAtURL:v6 hasIncorrectSchemaVersion:v19];
      if (!v4)
      {
        [(WBSSQLiteDatabase *)self->__database close];
        v20 = self->__database;
        self->__database = 0;

        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else
  {
    [(CloudKitSQLiteStore *)self _databaseAtURL:v6 failedToOpenWithError:v11];
    v17 = self->__database;
    self->__database = 0;

    if (v4)
    {
      [(CloudKitSQLiteStore *)self _deleteDatabaseFileAtURL:v6 reopenDatabase:1];
    }
  }

LABEL_15:
}

- (void)_deleteDatabaseFileAtURL:(id)a3 reopenDatabase:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(CloudKitSQLiteStore *)self _isDatabaseOpen])
  {
    [(CloudKitSQLiteStore *)self _closeDatabase];
  }

  [(CloudKitSQLiteStore *)self _databaseWillBeDeleted];
  v7 = +[WBSSQLiteDatabase inMemoryDatabaseURL];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

LABEL_8:
    [(CloudKitSQLiteStore *)self _databaseWillBeRecreated];
    [(CloudKitSQLiteStore *)self _openDatabase:v6 deleteDatabaseFileOnError:0];
    goto LABEL_10;
  }

  v9 = +[NSFileManager defaultManager];
  v16 = 0;
  v10 = [v9 safari_removeFileAtURL:v6 error:&v16];
  v11 = v16;
  if ((v10 & 1) == 0)
  {
    [(CloudKitSQLiteStore *)self _databaseAtURL:v6 failedToDeleteWithError:v11];

    goto LABEL_10;
  }

  v12 = [v6 URLByDeletingPathExtension];
  v13 = [v12 URLByAppendingPathExtension:@"db-lock"];
  [v9 safari_removeFileAtURL:v13 error:0];

  v14 = [v12 URLByAppendingPathExtension:@"db-shm"];
  [v9 safari_removeFileAtURL:v14 error:0];

  v15 = [v12 URLByAppendingPathExtension:@"db-wal"];
  [v9 safari_removeFileAtURL:v15 error:0];

  if (v10 & v4)
  {
    goto LABEL_8;
  }

LABEL_10:
}

- (int64_t)_metadataInt64ValueForKey:(id)a3
{
  v8 = a3;
  v4 = sub_10008A264(self->__database, @"SELECT value FROM metadata WHERE key = ?", &v8);
  v5 = [v4 nextObject];
  v6 = [v5 int64AtIndex:0];

  return v6;
}

- (int)_setMetadataInt64Value:(int64_t)a3 forKey:(id)a4
{
  v8 = a3;
  v7 = a4;
  v5 = sub_1000921B0(self->__database, 0, @"UPDATE metadata SET value = ? WHERE key = ?", &v8, &v7);
  if (v5 == 101)
  {
    if ([(WBSSQLiteDatabase *)self->__database changedRowCount])
    {
      LODWORD(v5) = 101;
    }

    else
    {
      v5 = sub_100092364(self->__database, 0, @"INSERT INTO metadata (key, value) VALUES (?, ?)", &v7, &v8);
      if (v5 != 101)
      {
        [(CloudKitSQLiteStore *)self _failedToInsertMetadataValueWithKey:v7 error:v5];
      }
    }
  }

  else
  {
    [(CloudKitSQLiteStore *)self _failedToUpdateMetadataValueWithKey:v7 error:v5];
  }

  return v5;
}

- (id)_metadataDataValueForKey:(id)a3
{
  v8 = a3;
  v4 = sub_10008A264(self->__database, @"SELECT value FROM metadata WHERE key = ?", &v8);
  v5 = [v4 nextObject];
  v6 = [v5 dataAtIndex:0];

  return v6;
}

- (int)_setMetadataDataValue:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v9 = a4;
  database = self->__database;
  if (v10)
  {
    v7 = sub_100092648(database, 0, @"UPDATE metadata SET value = ? WHERE key = ?", &v10, &v9);
    if (v7 == 101)
    {
      if ([(WBSSQLiteDatabase *)self->__database changedRowCount])
      {
        LODWORD(v7) = 101;
      }

      else
      {
        v7 = sub_1000927FC(self->__database, 0, @"INSERT INTO metadata (key, value) VALUES (?, ?)", &v9, &v10);
        if (v7 != 101)
        {
          [(CloudKitSQLiteStore *)self _failedToInsertMetadataValueWithKey:v9 error:v7];
        }
      }
    }

    else
    {
      [(CloudKitSQLiteStore *)self _failedToUpdateMetadataValueWithKey:v9 error:v7];
    }
  }

  else
  {
    v7 = sub_100092518(database, 0, @"DELETE FROM metadata WHERE key = ?", &v9);
    if (v7 != 101)
    {
      [(CloudKitSQLiteStore *)self _failedToDeleteMetadataValueWithKey:v9 error:v7];
    }
  }

  return v7;
}

- (void)_vacuum
{
  v3 = sub_100001E04(self->__database, 0, @"VACUUM");
  if (v3 != 101)
  {

    [(CloudKitSQLiteStore *)self _vacuumFailedWithError:v3];
  }
}

@end