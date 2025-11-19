@interface _NSPersistentHistoryTransaction
- (_NSPersistentHistoryTransaction)initWithCoder:(id)a3;
- (_NSPersistentHistoryTransaction)initWithDictionary:(id)a3 andObjectID:(id)a4;
- (id)initialQueryGenerationToken;
- (id)objectIDNotification;
- (id)postQueryGenerationToken;
- (id)token;
- (void)_setChanges:(void *)result;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _NSPersistentHistoryTransaction

- (id)token
{
  v3 = [_NSPersistentHistoryToken alloc];
  v4 = -[_NSPersistentHistoryToken initWithTransactionNumber:andStoreID:](v3, "initWithTransactionNumber:andStoreID:", [MEMORY[0x1E696AD98] numberWithLongLong:self->_rowIdentifier], self->_storeID);

  return v4;
}

- (void)dealloc
{
  self->_changes = 0;

  self->_contextName = 0;
  self->_author = 0;

  self->_bundleID = 0;
  self->_processID = 0;

  self->_queryGeneration = 0;
  self->_storeID = 0;

  self->_backingObjectID = 0;
  self->_coordinator = 0;
  v3.receiver = self;
  v3.super_class = _NSPersistentHistoryTransaction;
  [(_NSPersistentHistoryTransaction *)&v3 dealloc];
}

- (_NSPersistentHistoryTransaction)initWithDictionary:(id)a3 andObjectID:(id)a4
{
  v7 = [a4 _referenceData64];
  v8 = [a3 objectForKey:@"AUTHORTS"];
  if (!v8)
  {
    v8 = [a3 objectForKey:@"AUTHOR"];
  }

  v9 = [a3 objectForKey:@"BUNDLEIDTS"];
  if (!v9)
  {
    v9 = [a3 objectForKey:@"BUNDLEID"];
  }

  v10 = [a3 objectForKey:@"CONTEXTNAMETS"];
  if (!v10)
  {
    v10 = [a3 objectForKey:@"CONTEXTNAME"];
  }

  v11 = [a3 objectForKey:@"PROCESSIDTS"];
  if (!v11)
  {
    v11 = [a3 objectForKey:@"PROCESSID"];
  }

  v12 = [a3 objectForKey:@"QUERYGEN"];
  [objc_msgSend(a3 objectForKey:{@"TIMESTAMP", "doubleValue"}];
  v14 = v13;
  v20.receiver = self;
  v20.super_class = _NSPersistentHistoryTransaction;
  v15 = [(_NSPersistentHistoryTransaction *)&v20 init];
  if (v15)
  {
    v16 = [a4 persistentStore];
    v17 = v16;
    if (v16)
    {
      v18 = atomic_load(v16 + 1);
      if ([v18 _isDeallocating])
      {
        v16 = 0;
      }

      else
      {
        v16 = v18;
      }
    }

    v15->_coordinator = v16;
    v15->_storeID = [objc_msgSend(v17 "identifier")];
    v15->_rowIdentifier = v7;
    v15->_timestamp = v14;
    v15->_bundleID = v9;
    v15->_processID = v11;
    v15->_contextName = v10;
    v15->_author = v8;
    v15->_queryGeneration = v12;
    v15->_backingObjectID = a4;
  }

  return v15;
}

- (_NSPersistentHistoryTransaction)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = _NSPersistentHistoryTransaction;
  v4 = [(_NSPersistentHistoryTransaction *)&v18 init];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v4->_storeID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSPersistentHistoryTransactionStoreID"];
    v4->_rowIdentifier = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NSPersistentHistoryTransactionRowID", "longLongValue"}];
    [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NSPersistentHistoryTransactionTimestamp", "doubleValue"}];
    v4->_timestamp = v6;
    v4->_changes = [a3 decodeObjectOfClasses:+[_PFRoutines historyChangesArrayClassesForSecureCoding]() forKey:@"NSPersistentHistoryTransactionChangeSet"];
    v4->_bundleID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSPersistentHistoryTransactionBundleID"];
    v4->_processID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSPersistentHistoryTransactionProcessID"];
    v4->_contextName = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSPersistentHistoryTransactionContextName"];
    v4->_author = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSPersistentHistoryTransactionAuthor"];
    v4->_queryGeneration = [a3 decodeObjectOfClasses:+[_PFRoutines historyQueryGenDataClassesForSecureCoding]() forKey:@"NSPersistentHistoryTransactionQueryGen"];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    changes = v4->_changes;
    v8 = [(NSArray *)changes countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(changes);
          }

          [*(*(&v14 + 1) + 8 * i) _setTransaction:v4];
        }

        v9 = [(NSArray *)changes countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }

    objc_autoreleasePoolPop(v5);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  [a3 encodeObject:self->_storeID forKey:@"NSPersistentHistoryTransactionStoreID"];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", self->_rowIdentifier), @"NSPersistentHistoryTransactionRowID"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", self->_timestamp), @"NSPersistentHistoryTransactionTimestamp"}];
  [a3 encodeObject:self->_changes forKey:@"NSPersistentHistoryTransactionChangeSet"];
  [a3 encodeObject:self->_bundleID forKey:@"NSPersistentHistoryTransactionBundleID"];
  [a3 encodeObject:self->_processID forKey:@"NSPersistentHistoryTransactionProcessID"];
  [a3 encodeObject:self->_contextName forKey:@"NSPersistentHistoryTransactionContextName"];
  [a3 encodeObject:self->_author forKey:@"NSPersistentHistoryTransactionAuthor"];
  [a3 encodeObject:self->_queryGeneration forKey:@"NSPersistentHistoryTransactionQueryGen"];

  objc_autoreleasePoolPop(v5);
}

- (void)_setChanges:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[3];
    if (v4 != a2)
    {

      result = a2;
      v3[3] = result;
    }
  }

  return result;
}

- (id)initialQueryGenerationToken
{
  if (!self->_queryGeneration)
  {
    return 0;
  }

  v3 = [(NSManagedObjectID *)self->_backingObjectID persistentStore];
  queryGeneration = self->_queryGeneration;
  if ([(NSData *)queryGeneration isNSData])
  {
    queryGeneration = [[_PFSQLiteSnapshotWrapper alloc] initWithData:?];
  }

  if (v3)
  {
    v5 = [_NSQueryGenerationToken alloc];
    if (v5)
    {
      v5 = [(_NSQueryGenerationToken *)v5 initWithValue:v3 store:0 freeValueOnDealloc:?];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)postQueryGenerationToken
{
  if (self)
  {
    v3 = [(NSManagedObjectID *)self->_backingObjectID persistentStore];
    if (v3)
    {
      if ((BYTE1(v3[1]._modelMap) & 0x40) != 0)
      {
        return 0;
      }
    }
  }

  v4 = [NSPersistentHistoryChangeRequest fetchHistoryAfterTransaction:self];
  [(NSPersistentHistoryChangeRequest *)v4 setResultType:3];
  [(NSPersistentHistoryChangeRequest *)v4 setFetchLimit:1];
  v5 = [(NSPersistentStoreCoordinator *)self->_coordinator executeRequest:v4 withContext:0 error:0];
  if (![objc_msgSend(v5 "result")])
  {
    return 0;
  }

  v6 = [objc_msgSend(v5 "result")];

  return [v6 initialQueryGenerationToken];
}

- (id)objectIDNotification
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (!self)
  {
    v17 = 0;
    goto LABEL_22;
  }

  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [MEMORY[0x1E695DFA8] set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  changes = self->_changes;
  v8 = [(NSArray *)changes countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = *v22;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v22 != v10)
      {
        objc_enumerationMutation(changes);
      }

      v12 = *(*(&v21 + 1) + 8 * i);
      v13 = [v12 changedObjectID];
      v14 = [v12 changeType];
      v15 = v4;
      if (!v14)
      {
        goto LABEL_12;
      }

      if (v14 == 2)
      {
        v15 = v6;
LABEL_12:
        [v15 addObject:v13];
        continue;
      }

      v15 = v5;
      if (v14 == 1)
      {
        goto LABEL_12;
      }
    }

    v9 = [(NSArray *)changes countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v9);
LABEL_15:
  v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  if ([v4 count])
  {
    [v16 setValue:v4 forKey:@"inserted_objectIDs"];
  }

  if ([v5 count])
  {
    [v16 setValue:v5 forKey:@"updated_objectIDs"];
  }

  if ([v6 count])
  {
    [v16 setValue:v6 forKey:@"deleted_objectIDs"];
  }

  v17 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v16];
LABEL_22:
  v18 = [objc_alloc(MEMORY[0x1E696AD80]) initWithName:@"NSManagedObjectContextDidSaveObjectIDsNotification" object:0 userInfo:v17];
  objc_autoreleasePoolPop(v3);
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

@end