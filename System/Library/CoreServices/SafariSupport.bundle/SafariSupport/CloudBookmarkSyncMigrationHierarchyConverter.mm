@interface CloudBookmarkSyncMigrationHierarchyConverter
- (BOOL)convertRecordsForMigration;
- (CloudBookmarkSyncMigrationHierarchyConverter)initWithDatabase:(void *)a3 databaseAccessor:(id)a4;
- (id)_cloudKitRecordNameForBookmarkDAVServerSyncId:(id)a3;
- (void)_convertItem:(void *)a3;
- (void)dealloc;
@end

@implementation CloudBookmarkSyncMigrationHierarchyConverter

- (CloudBookmarkSyncMigrationHierarchyConverter)initWithDatabase:(void *)a3 databaseAccessor:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CloudBookmarkSyncMigrationHierarchyConverter;
  v8 = [(CloudBookmarkSyncMigrationHierarchyConverter *)&v11 init];
  if (v8)
  {
    v8->_databaseRef = CFRetain(a3);
    objc_storeStrong(&v8->_databaseAccessor, a4);
    v9 = v8;
  }

  return v8;
}

- (void)dealloc
{
  databaseRef = self->_databaseRef;
  if (databaseRef)
  {
    CFRelease(databaseRef);
  }

  v4.receiver = self;
  v4.super_class = CloudBookmarkSyncMigrationHierarchyConverter;
  [(CloudBookmarkSyncMigrationHierarchyConverter *)&v4 dealloc];
}

- (BOOL)convertRecordsForMigration
{
  v3 = objc_autoreleasePoolPush();
  v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Prepare records for migration", &v19, 2u);
  }

  v5 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyLocalIDsInFolderWithLocalID:0 database:[(CloudBookmarkSyncMigrationHierarchyConverter *)self databaseRef]];
  v6 = [v5 allObjects];
  v7 = [v6 mutableCopy];

  v8 = 0;
  while ([v7 count])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v7 objectAtIndexedSubscript:0];
    [v7 removeObjectAtIndex:0];
    v11 = [(CloudBookmarkSyncMigrationHierarchyConverter *)self databaseAccessor];
    v12 = [v11 copyItemWithLocalID:v10 database:{-[CloudBookmarkSyncMigrationHierarchyConverter databaseRef](self, "databaseRef")}];

    if ([(WBSBookmarkDBAccess *)self->_databaseAccessor itemTypeWithItem:v12]== 1)
    {
      v13 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyLocalIDsInFolderWithLocalID:v10 database:[(CloudBookmarkSyncMigrationHierarchyConverter *)self databaseRef]];
      v14 = [v13 allObjects];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = &__NSArray0__struct;
      }

      [v7 addObjectsFromArray:v16];
    }

    [(CloudBookmarkSyncMigrationHierarchyConverter *)self _convertItem:v12];
    CFRelease(v12);
    ++v8;

    objc_autoreleasePoolPop(v9);
  }

  v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Number of records prepared for migration: %ld", &v19, 0xCu);
  }

  [(WBSBookmarkDBAccess *)self->_databaseAccessor saveDatabase:[(CloudBookmarkSyncMigrationHierarchyConverter *)self databaseRef]];

  objc_autoreleasePoolPop(v3);
  return v8 != 0;
}

- (void)_convertItem:(void *)a3
{
  [(WBSBookmarkDBAccess *)self->_databaseAccessor setSyncKey:0 item:a3];
  [(WBSBookmarkDBAccess *)self->_databaseAccessor setSyncData:0 item:a3];
  if ([(WBSBookmarkDBAccess *)self->_databaseAccessor itemTypeWithItem:a3]!= 1 || ([CKRecord safari_recordNameForFolderType:[(WBSBookmarkDBAccess *)self->_databaseAccessor folderTypeWithFolder:a3]], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdWithItem:a3];
    if ([CKRecord safari_folderTypeForRecordName:v6])
    {
      v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        databaseAccessor = self->_databaseAccessor;
        v14 = v8;
        v15 = 134218242;
        v16 = [(WBSBookmarkDBAccess *)databaseAccessor itemTypeWithItem:a3];
        v17 = 2114;
        v18 = v6;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Record of type %ld has built-in record name %{public}@ despite not being a built-in folder, generating a new record name", &v15, 0x16u);
      }

      v6 = 0;
    }

    if ([v6 length])
    {
      v9 = [(CloudBookmarkSyncMigrationHierarchyConverter *)self _cloudKitRecordNameForBookmarkDAVServerSyncId:v6];
      if ([v9 length])
      {
        [(WBSBookmarkDBAccess *)self->_databaseAccessor setServerId:v9 item:a3];
        v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v15 = 138543362;
          v16 = v9;
          v11 = "Convert Bookmark DAV record with recordName %{public}@ for migration";
LABEL_17:
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, &v15, 0xCu);
        }
      }

      else
      {
        v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v15 = 138543362;
          v16 = v9;
          v11 = "Already converted record with recordName %{public}@ for migration";
          goto LABEL_17;
        }
      }
    }

    else
    {
      v12 = +[NSUUID UUID];
      v9 = [v12 UUIDString];

      [(WBSBookmarkDBAccess *)self->_databaseAccessor setServerId:v9 item:a3];
      v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v15 = 138543362;
        v16 = v9;
        v11 = "Convert new local record with created recordName %{public}@ for migration";
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

  v6 = v5;
  [(WBSBookmarkDBAccess *)self->_databaseAccessor setServerId:v5 item:a3];
  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Convert built-in record with recordName %{public}@ for migration", &v15, 0xCu);
  }

LABEL_19:
}

- (id)_cloudKitRecordNameForBookmarkDAVServerSyncId:(id)a3
{
  v3 = [NSURL URLWithString:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 scheme];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [v4 URLByDeletingPathExtension];
      v8 = [v7 lastPathComponent];

      if ([v8 length])
      {
        v6 = [@"DAV-" stringByAppendingString:v8];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end