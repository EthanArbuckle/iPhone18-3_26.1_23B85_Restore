@interface CloudBookmarkExpiredChangeTokenHandler
- (BOOL)itemWithServerIDIsFolder:(id)a3;
- (CloudBookmarkExpiredChangeTokenHandler)initWithDatabaseAccessor:(id)a3 database:(void *)a4;
- (NSSet)namesOfLocalRecordsToDelete;
- (id)serverIDsInFolderWithServerID:(id)a3;
- (void)collectAllRecordNames;
- (void)dealloc;
@end

@implementation CloudBookmarkExpiredChangeTokenHandler

- (CloudBookmarkExpiredChangeTokenHandler)initWithDatabaseAccessor:(id)a3 database:(void *)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CloudBookmarkExpiredChangeTokenHandler;
  v8 = [(CloudBookmarkExpiredChangeTokenHandler *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_databaseAccessor, a3);
    v9->_databaseRef = CFRetain(a4);
    v10 = v9;
  }

  return v9;
}

- (void)dealloc
{
  databaseRef = self->_databaseRef;
  if (databaseRef)
  {
    CFRelease(databaseRef);
  }

  v4.receiver = self;
  v4.super_class = CloudBookmarkExpiredChangeTokenHandler;
  [(CloudBookmarkExpiredChangeTokenHandler *)&v4 dealloc];
}

- (id)serverIDsInFolderWithServerID:(id)a3
{
  v3 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdsInFolderWithServerId:a3 database:self->_databaseRef];

  return v3;
}

- (BOOL)itemWithServerIDIsFolder:(id)a3
{
  v4 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithServerId:a3 database:self->_databaseRef];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [(WBSBookmarkDBAccess *)self->_databaseAccessor itemTypeWithItem:v4]== 1;
  CFRelease(v5);
  return v6;
}

- (void)collectAllRecordNames
{
  v3 = +[NSMutableSet set];
  namesOfLocalRecordsToDelete = self->_namesOfLocalRecordsToDelete;
  self->_namesOfLocalRecordsToDelete = v3;

  v5 = WBSCloudBookmarkListRecordNameTopBookmark;
  v6 = +[NSMutableOrderedSet orderedSet];
  while (1)
  {
    v7 = [(CloudBookmarkExpiredChangeTokenHandler *)self serverIDsInFolderWithServerID:v5];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          [(NSMutableSet *)self->_namesOfLocalRecordsToDelete addObject:v13];
          if ([(CloudBookmarkExpiredChangeTokenHandler *)self itemWithServerIDIsFolder:v13])
          {
            [v6 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v14 = [v6 firstObject];

    if (!v14)
    {
      break;
    }

    [v6 removeObjectAtIndex:0];

    v5 = v14;
  }
}

- (NSSet)namesOfLocalRecordsToDelete
{
  v2 = [(NSMutableSet *)self->_namesOfLocalRecordsToDelete copy];

  return v2;
}

@end