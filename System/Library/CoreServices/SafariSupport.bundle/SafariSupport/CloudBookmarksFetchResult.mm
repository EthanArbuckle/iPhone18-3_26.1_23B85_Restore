@interface CloudBookmarksFetchResult
- (CloudBookmarksFetchResult)init;
- (NSArray)allRecordIDs;
- (NSArray)bookmarkLeafRecords;
- (NSArray)bookmarkListRecords;
- (NSArray)deletedRecordIDs;
- (void)addRecord:(id)a3;
@end

@implementation CloudBookmarksFetchResult

- (CloudBookmarksFetchResult)init
{
  v11.receiver = self;
  v11.super_class = CloudBookmarksFetchResult;
  v2 = [(CloudBookmarksFetchResult *)&v11 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    mutableBookmarkListRecords = v2->_mutableBookmarkListRecords;
    v2->_mutableBookmarkListRecords = v3;

    v5 = +[NSMutableArray array];
    mutableBookmarkLeafRecords = v2->_mutableBookmarkLeafRecords;
    v2->_mutableBookmarkLeafRecords = v5;

    v7 = +[NSMutableArray array];
    mutableDeletedBookmarkRecords = v2->_mutableDeletedBookmarkRecords;
    v2->_mutableDeletedBookmarkRecords = v7;

    v9 = v2;
  }

  return v2;
}

- (NSArray)bookmarkListRecords
{
  v2 = [(NSMutableArray *)self->_mutableBookmarkListRecords copy];

  return v2;
}

- (NSArray)bookmarkLeafRecords
{
  v2 = [(NSMutableArray *)self->_mutableBookmarkLeafRecords copy];

  return v2;
}

- (NSArray)deletedRecordIDs
{
  v2 = [(NSMutableArray *)self->_mutableDeletedBookmarkRecords copy];

  return v2;
}

- (NSArray)allRecordIDs
{
  v3 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_mutableBookmarkListRecords;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v21 + 1) + 8 * i) recordID];
        [v3 addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_mutableBookmarkLeafRecords;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * j) recordID];
        [v3 addObject:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  return v3;
}

- (void)addRecord:(id)a3
{
  v5 = a3;
  itemConfigurations = self->_itemConfigurations;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004891C;
  v15[3] = &unk_100133188;
  v7 = v5;
  v16 = v7;
  v8 = [(NSArray *)itemConfigurations safari_firstObjectPassingTest:v15];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 itemType];
    if (!v10)
    {
      mutableBookmarkLeafRecords = self->_mutableBookmarkLeafRecords;
      goto LABEL_13;
    }

    if (v10 == 1)
    {
      v11 = [v7 safari_recordName];
      v12 = [v11 isEqualToString:WBSCloudBookmarkListRecordNameTopBookmark];

      if (v12)
      {
        p_topBookmarkRecord = &self->_topBookmarkRecord;
LABEL_11:
        objc_storeStrong(p_topBookmarkRecord, a3);
        goto LABEL_14;
      }

      mutableBookmarkLeafRecords = self->_mutableBookmarkListRecords;
LABEL_13:
      [(NSMutableArray *)mutableBookmarkLeafRecords addObject:v7];
    }
  }

  else
  {
    if ([v7 safari_isMigrationStateRecord])
    {
      p_topBookmarkRecord = &self->_migrationRecord;
      goto LABEL_11;
    }

    if ([v7 safari_isEncryptionInfoRecord])
    {
      p_topBookmarkRecord = &self->_encryptionRecord;
      goto LABEL_11;
    }
  }

LABEL_14:
}

@end