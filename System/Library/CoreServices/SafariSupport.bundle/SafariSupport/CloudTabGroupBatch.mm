@interface CloudTabGroupBatch
- (CloudTabGroupBatch)init;
- (NSSet)deletedRecordIDsInPrivateDatabase;
- (NSSet)deletedRecordIDsInSharedDatabase;
- (NSSet)deletedRecordZoneIDsInPrivateDatabase;
- (NSSet)updatedRecordsInPrivateDatabase;
- (NSSet)updatedRecordsInSharedDatabase;
- (unint64_t)_sizeOfRecordUpdateBatch:(id)batch;
- (void)_filterUpdatedRecordsIfNeeded;
- (void)addItem:(id)item;
@end

@implementation CloudTabGroupBatch

- (CloudTabGroupBatch)init
{
  v21.receiver = self;
  v21.super_class = CloudTabGroupBatch;
  v2 = [(CloudTabGroupBatch *)&v21 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    items = v2->_items;
    v2->_items = v3;

    v5 = +[NSMutableSet set];
    deletedRecordZoneIDsInPrivateDatabase = v2->_deletedRecordZoneIDsInPrivateDatabase;
    v2->_deletedRecordZoneIDsInPrivateDatabase = v5;

    v7 = *&kCFTypeSetCallBacks.release;
    *&v20.version = *&kCFTypeSetCallBacks.version;
    *&v20.release = v7;
    v20.equal = sub_1000A5E20;
    v20.hash = sub_1000A5E90;
    v8 = CFSetCreateMutable(kCFAllocatorDefault, 0, &v20);
    updatedRecordsInPrivateDatabase = v2->_updatedRecordsInPrivateDatabase;
    v2->_updatedRecordsInPrivateDatabase = v8;

    v10 = +[NSMutableSet set];
    deletedRecordIDsInPrivateDatabase = v2->_deletedRecordIDsInPrivateDatabase;
    v2->_deletedRecordIDsInPrivateDatabase = v10;

    v12 = +[NSMutableSet set];
    deletedRecordZoneIDsInSharedDatabase = v2->_deletedRecordZoneIDsInSharedDatabase;
    v2->_deletedRecordZoneIDsInSharedDatabase = v12;

    v14 = CFSetCreateMutable(kCFAllocatorDefault, 0, &v20);
    updatedRecordsInSharedDatabase = v2->_updatedRecordsInSharedDatabase;
    v2->_updatedRecordsInSharedDatabase = v14;

    v16 = +[NSMutableSet set];
    deletedRecordIDsInSharedDatabase = v2->_deletedRecordIDsInSharedDatabase;
    v2->_deletedRecordIDsInSharedDatabase = v16;

    v18 = v2;
  }

  return v2;
}

- (unint64_t)_sizeOfRecordUpdateBatch:(id)batch
{
  batchCopy = batch;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [batchCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(batchCopy);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) size];
      }

      v5 = [batchCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSSet)deletedRecordZoneIDsInPrivateDatabase
{
  v2 = [(NSMutableSet *)self->_deletedRecordZoneIDsInPrivateDatabase copy];

  return v2;
}

- (NSSet)updatedRecordsInPrivateDatabase
{
  v3 = [(NSMutableSet *)self->_deletedRecordZoneIDsInPrivateDatabase count];
  updatedRecordsInPrivateDatabase = self->_updatedRecordsInPrivateDatabase;
  if (v3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A61D4;
    v7[3] = &unk_100135A90;
    v7[4] = self;
    v5 = [(NSMutableSet *)updatedRecordsInPrivateDatabase objectsPassingTest:v7];
  }

  else
  {
    v5 = [(NSMutableSet *)updatedRecordsInPrivateDatabase copy];
  }

  return v5;
}

- (NSSet)deletedRecordIDsInPrivateDatabase
{
  v3 = [(NSMutableSet *)self->_deletedRecordZoneIDsInPrivateDatabase count];
  deletedRecordIDsInPrivateDatabase = self->_deletedRecordIDsInPrivateDatabase;
  if (v3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A62E0;
    v7[3] = &unk_100135AB8;
    v7[4] = self;
    v5 = [(NSMutableSet *)deletedRecordIDsInPrivateDatabase objectsPassingTest:v7];
  }

  else
  {
    v5 = [(NSMutableSet *)deletedRecordIDsInPrivateDatabase copy];
  }

  return v5;
}

- (NSSet)updatedRecordsInSharedDatabase
{
  v3 = [(NSMutableSet *)self->_deletedRecordZoneIDsInSharedDatabase count];
  updatedRecordsInSharedDatabase = self->_updatedRecordsInSharedDatabase;
  if (v3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A63D4;
    v7[3] = &unk_100135A90;
    v7[4] = self;
    v5 = [(NSMutableSet *)updatedRecordsInSharedDatabase objectsPassingTest:v7];
  }

  else
  {
    v5 = [(NSMutableSet *)updatedRecordsInSharedDatabase copy];
  }

  return v5;
}

- (NSSet)deletedRecordIDsInSharedDatabase
{
  v3 = [(NSMutableSet *)self->_deletedRecordZoneIDsInSharedDatabase count];
  deletedRecordIDsInSharedDatabase = self->_deletedRecordIDsInSharedDatabase;
  if (v3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A6518;
    v7[3] = &unk_100135AB8;
    v7[4] = self;
    v5 = [(NSMutableSet *)deletedRecordIDsInSharedDatabase objectsPassingTest:v7];
  }

  else
  {
    v5 = [(NSMutableSet *)deletedRecordIDsInSharedDatabase copy];
  }

  return v5;
}

- (void)addItem:(id)item
{
  itemCopy = item;
  [(NSMutableSet *)self->_items addObject:itemCopy];
  deletedRecordZoneIDsInPrivateDatabase = self->_deletedRecordZoneIDsInPrivateDatabase;
  deletedRecordZoneIDs = [itemCopy deletedRecordZoneIDs];
  [(NSMutableSet *)deletedRecordZoneIDsInPrivateDatabase unionSet:deletedRecordZoneIDs];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  updatedRecords = [itemCopy updatedRecords];
  v8 = [updatedRecords countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(updatedRecords);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if ([v12 safari_isInPrivateDatabase])
        {
          v13 = 24;
        }

        else
        {
          v13 = 48;
        }

        [*(&self->super.isa + v13) safari_setObject:v12];
      }

      v9 = [updatedRecords countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = itemCopy;
  obj = [itemCopy deletedRecordIDs];
  v14 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v25 + 1) + 8 * j);
        zoneID = [v18 zoneID];
        if ([zoneID safari_isInPrivateDatabase])
        {
          p_deletedRecordIDsInPrivateDatabase = &self->_deletedRecordIDsInPrivateDatabase;
        }

        else
        {
          [(NSMutableSet *)self->_deletedRecordIDsInSharedDatabase addObject:v18];
          recordName = [v18 recordName];
          v22 = [recordName isEqual:CKRecordNameZoneWideShare];

          p_deletedRecordIDsInPrivateDatabase = &self->_deletedRecordZoneIDsInSharedDatabase;
          v18 = zoneID;
          if (!v22)
          {
            goto LABEL_20;
          }
        }

        [(NSMutableSet *)*p_deletedRecordIDsInPrivateDatabase addObject:v18];
LABEL_20:
      }

      v15 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }

  [(CloudTabGroupBatch *)self _filterUpdatedRecordsIfNeeded];
}

- (void)_filterUpdatedRecordsIfNeeded
{
  v3 = objc_alloc_init(NSMutableArray);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = self->_updatedRecordsInPrivateDatabase;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        deletedRecordIDsInPrivateDatabase = self->_deletedRecordIDsInPrivateDatabase;
        recordID = [v9 recordID];
        LODWORD(deletedRecordIDsInPrivateDatabase) = [(NSMutableSet *)deletedRecordIDsInPrivateDatabase containsObject:recordID];

        if (deletedRecordIDsInPrivateDatabase)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v6);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_updatedRecordsInSharedDatabase;
  v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * j);
        deletedRecordIDsInSharedDatabase = self->_deletedRecordIDsInSharedDatabase;
        recordID2 = [v17 recordID];
        LODWORD(deletedRecordIDsInSharedDatabase) = [(NSMutableSet *)deletedRecordIDsInSharedDatabase containsObject:recordID2];

        if (deletedRecordIDsInSharedDatabase)
        {
          [v3 addObject:v17];
        }
      }

      v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v14);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = v3;
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (k = 0; k != v22; k = k + 1)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v26 + 1) + 8 * k);
        [(NSMutableSet *)self->_updatedRecordsInPrivateDatabase removeObject:v25, v26];
        [(NSMutableSet *)self->_updatedRecordsInSharedDatabase removeObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v22);
  }
}

@end