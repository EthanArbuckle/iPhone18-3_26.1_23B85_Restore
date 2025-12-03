@interface CloudKitSQLiteStore
+ (id)databaseURLForFilename:(id)filename;
- (CloudKitSQLiteStore)initWithDatabaseURL:(id)l databaseQueueLabel:(const char *)label;
- (id)_metadataDataValueForKey:(id)key;
- (int)_migrateToCurrentSchemaVersionIfNeeded;
- (int)_setMetadataDataValue:(id)value forKey:(id)key;
- (int)_setMetadataInt64Value:(int64_t)value forKey:(id)key;
- (int64_t)_metadataInt64ValueForKey:(id)key;
- (void)_closeDatabase;
- (void)_deleteDatabaseFileAtURL:(id)l reopenDatabase:(BOOL)database;
- (void)_openDatabase:(id)database deleteDatabaseFileOnError:(BOOL)error;
- (void)_vacuum;
- (void)closeDatabaseWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)deleteDatabaseWithCompletionHandler:(id)handler;
- (void)getServerChangeTokenDataWithCompletionHandler:(id)handler;
- (void)openDatabaseIfNecessary;
- (void)setServerChangeTokenData:(id)data completionHandler:(id)handler;
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
  _database = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100002034(_database, @"PRAGMA user_version");

  nextObject = [v4 nextObject];
  v6 = [nextObject intAtIndex:0];

  statement = [v4 statement];
  [statement invalidate];

  _currentSchemaVersion = [(CloudKitSQLiteStore *)self _currentSchemaVersion];
  if (v6 != _currentSchemaVersion)
  {
    if ((!v6 || [(CloudKitSQLiteStore *)self _resetDatabaseSchema]== 101) && [(CloudKitSQLiteStore *)self _createFreshDatabaseSchema]== 101)
    {
      [(CloudKitSQLiteStore *)self _setDatabaseSchemaVersion:_currentSchemaVersion];
      v6 = _currentSchemaVersion;
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

- (CloudKitSQLiteStore)initWithDatabaseURL:(id)l databaseQueueLabel:(const char *)label
{
  lCopy = l;
  v16.receiver = self;
  v16.super_class = CloudKitSQLiteStore;
  v8 = [(CloudKitSQLiteStore *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_databaseURL, l);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_UTILITY, 0);
    v12 = dispatch_queue_create(label, v11);
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

+ (id)databaseURLForFilename:(id)filename
{
  filenameCopy = filename;
  v4 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Safari/"];
  v5 = [v4 stringByAppendingPathComponent:filenameCopy];

  v6 = [NSURL fileURLWithPath:v5 isDirectory:0];

  return v6;
}

- (void)closeDatabaseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = self->__databaseQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100091470;
  v7[3] = &unk_100135470;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(databaseQueue, v7);
}

- (void)deleteDatabaseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = self->__databaseQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100091558;
  v7[3] = &unk_100135470;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(databaseQueue, v7);
}

- (void)getServerChangeTokenDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = self->__databaseQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009163C;
  v7[3] = &unk_100135470;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(databaseQueue, v7);
}

- (void)setServerChangeTokenData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  databaseQueue = self->__databaseQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000917C4;
  block[3] = &unk_100135498;
  v12 = dataCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = dataCopy;
  v10 = handlerCopy;
  dispatch_async(databaseQueue, block);
}

- (void)_openDatabase:(id)database deleteDatabaseFileOnError:(BOOL)error
{
  errorCopy = error;
  databaseCopy = database;
  v7 = [[WBSSQLiteDatabase alloc] initWithURL:databaseCopy queue:self->__databaseQueue];
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
    v13 = [databaseCopy setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v22];
    v14 = v22;
    if ((v13 & 1) == 0)
    {
      [(CloudKitSQLiteStore *)self _failedToExcludeDatabaseFromBackupWithError:v14];
    }

    v15 = self->__database;
    v21 = 0;
    v16 = [(WBSSQLiteDatabase *)v15 enableWAL:&v21];
    v12 = v21;
    if ((v16 & 1) == 0 && ([(CloudKitSQLiteStore *)self _failedToEnableWALWithError:v12], errorCopy) || (v18 = sub_100001E04(self->__database, 0, @"PRAGMA foreign_keys = ON"), v18 != 101) && ([(CloudKitSQLiteStore *)self _failedToEnableForeignKeysWithError:v18], errorCopy))
    {
LABEL_13:
      [(CloudKitSQLiteStore *)self _deleteDatabaseFileAtURL:databaseCopy reopenDatabase:1];
      goto LABEL_15;
    }

    _migrateToCurrentSchemaVersionIfNeeded = [(CloudKitSQLiteStore *)self _migrateToCurrentSchemaVersionIfNeeded];
    if (_migrateToCurrentSchemaVersionIfNeeded != [(CloudKitSQLiteStore *)self _currentSchemaVersion])
    {
      [(CloudKitSQLiteStore *)self _databaseAtURL:databaseCopy hasIncorrectSchemaVersion:_migrateToCurrentSchemaVersionIfNeeded];
      if (!errorCopy)
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
    [(CloudKitSQLiteStore *)self _databaseAtURL:databaseCopy failedToOpenWithError:v11];
    v17 = self->__database;
    self->__database = 0;

    if (errorCopy)
    {
      [(CloudKitSQLiteStore *)self _deleteDatabaseFileAtURL:databaseCopy reopenDatabase:1];
    }
  }

LABEL_15:
}

- (void)_deleteDatabaseFileAtURL:(id)l reopenDatabase:(BOOL)database
{
  databaseCopy = database;
  lCopy = l;
  if ([(CloudKitSQLiteStore *)self _isDatabaseOpen])
  {
    [(CloudKitSQLiteStore *)self _closeDatabase];
  }

  [(CloudKitSQLiteStore *)self _databaseWillBeDeleted];
  v7 = +[WBSSQLiteDatabase inMemoryDatabaseURL];
  v8 = [lCopy isEqual:v7];

  if (v8)
  {
    if (!databaseCopy)
    {
      goto LABEL_10;
    }

LABEL_8:
    [(CloudKitSQLiteStore *)self _databaseWillBeRecreated];
    [(CloudKitSQLiteStore *)self _openDatabase:lCopy deleteDatabaseFileOnError:0];
    goto LABEL_10;
  }

  v9 = +[NSFileManager defaultManager];
  v16 = 0;
  v10 = [v9 safari_removeFileAtURL:lCopy error:&v16];
  v11 = v16;
  if ((v10 & 1) == 0)
  {
    [(CloudKitSQLiteStore *)self _databaseAtURL:lCopy failedToDeleteWithError:v11];

    goto LABEL_10;
  }

  uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
  v13 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"db-lock"];
  [v9 safari_removeFileAtURL:v13 error:0];

  v14 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"db-shm"];
  [v9 safari_removeFileAtURL:v14 error:0];

  v15 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"db-wal"];
  [v9 safari_removeFileAtURL:v15 error:0];

  if (v10 & databaseCopy)
  {
    goto LABEL_8;
  }

LABEL_10:
}

- (int64_t)_metadataInt64ValueForKey:(id)key
{
  keyCopy = key;
  v4 = sub_10008A264(self->__database, @"SELECT value FROM metadata WHERE key = ?", &keyCopy);
  nextObject = [v4 nextObject];
  v6 = [nextObject int64AtIndex:0];

  return v6;
}

- (int)_setMetadataInt64Value:(int64_t)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v5 = sub_1000921B0(self->__database, 0, @"UPDATE metadata SET value = ? WHERE key = ?", &valueCopy, &keyCopy);
  if (v5 == 101)
  {
    if ([(WBSSQLiteDatabase *)self->__database changedRowCount])
    {
      LODWORD(v5) = 101;
    }

    else
    {
      v5 = sub_100092364(self->__database, 0, @"INSERT INTO metadata (key, value) VALUES (?, ?)", &keyCopy, &valueCopy);
      if (v5 != 101)
      {
        [(CloudKitSQLiteStore *)self _failedToInsertMetadataValueWithKey:keyCopy error:v5];
      }
    }
  }

  else
  {
    [(CloudKitSQLiteStore *)self _failedToUpdateMetadataValueWithKey:keyCopy error:v5];
  }

  return v5;
}

- (id)_metadataDataValueForKey:(id)key
{
  keyCopy = key;
  v4 = sub_10008A264(self->__database, @"SELECT value FROM metadata WHERE key = ?", &keyCopy);
  nextObject = [v4 nextObject];
  v6 = [nextObject dataAtIndex:0];

  return v6;
}

- (int)_setMetadataDataValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  database = self->__database;
  if (valueCopy)
  {
    v7 = sub_100092648(database, 0, @"UPDATE metadata SET value = ? WHERE key = ?", &valueCopy, &keyCopy);
    if (v7 == 101)
    {
      if ([(WBSSQLiteDatabase *)self->__database changedRowCount])
      {
        LODWORD(v7) = 101;
      }

      else
      {
        v7 = sub_1000927FC(self->__database, 0, @"INSERT INTO metadata (key, value) VALUES (?, ?)", &keyCopy, &valueCopy);
        if (v7 != 101)
        {
          [(CloudKitSQLiteStore *)self _failedToInsertMetadataValueWithKey:keyCopy error:v7];
        }
      }
    }

    else
    {
      [(CloudKitSQLiteStore *)self _failedToUpdateMetadataValueWithKey:keyCopy error:v7];
    }
  }

  else
  {
    v7 = sub_100092518(database, 0, @"DELETE FROM metadata WHERE key = ?", &keyCopy);
    if (v7 != 101)
    {
      [(CloudKitSQLiteStore *)self _failedToDeleteMetadataValueWithKey:keyCopy error:v7];
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