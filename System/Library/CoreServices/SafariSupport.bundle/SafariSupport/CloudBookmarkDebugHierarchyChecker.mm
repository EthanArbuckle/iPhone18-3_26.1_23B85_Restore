@interface CloudBookmarkDebugHierarchyChecker
- (BOOL)_verifyHierarchyIntegrityInDatabase:(void *)a3;
- (BOOL)_verifySyncDataForItem:(void *)a3 recordName:(id)a4 expectingSyncData:(BOOL)a5 expectingCloudKitData:(BOOL)a6;
- (BOOL)performHierarchyCheck;
- (CloudBookmarkDebugHierarchyChecker)initWithDatabaseAccessor:(id)a3;
- (int64_t)_serverSyncIDTypeForServerSyncID:(id)a3;
@end

@implementation CloudBookmarkDebugHierarchyChecker

- (CloudBookmarkDebugHierarchyChecker)initWithDatabaseAccessor:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CloudBookmarkDebugHierarchyChecker;
  v6 = [(CloudBookmarkDebugHierarchyChecker *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databaseAccessor, a3);
    v8 = v7;
  }

  return v7;
}

- (BOOL)performHierarchyCheck
{
  v3 = [(WBSBookmarkDBAccess *)self->_databaseAccessor createDatabaseWithoutLock];
  [(WBSBookmarkDBAccess *)self->_databaseAccessor openDatabase:v3];
  v4 = [(CloudBookmarkDebugHierarchyChecker *)self _verifyHierarchyIntegrityInDatabase:v3];
  if (v4)
  {
    [(WBSBookmarkDBAccess *)self->_databaseAccessor saveBackupOfDatabase:v3 withName:@"Bookmarks-Backup-for-31802262"];
  }

  [(WBSBookmarkDBAccess *)self->_databaseAccessor closeDatabase:v3 shouldSave:0];
  CFRelease(v3);
  return v4;
}

- (int64_t)_serverSyncIDTypeForServerSyncID:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    if ([v3 hasPrefix:@"http"])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_verifyHierarchyIntegrityInDatabase:(void *)a3
{
  v4 = self;
  v5 = [(WBSBookmarkDBAccess *)self->_databaseAccessor localCloudKitMigrationState:?];
  v37 = v5 - 1;
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218752;
    v52 = v5;
    v53 = 1024;
    *v54 = v5 == 0;
    *&v54[4] = 1024;
    *&v54[6] = v37 < 2;
    LOWORD(v55) = 1024;
    *(&v55 + 2) = v5 == 3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Migration state: %ld, expect DAV IDs: %d, expect CloudKit IDs for all records: %d, expect parsable sync data: %d", buf, 0x1Eu);
  }

  v7 = [(WBSBookmarkDBAccess *)v4->_databaseAccessor copyLocalIDsInFolderWithLocalID:0 database:a3];
  v8 = [v7 allObjects];
  v9 = [v8 mutableCopy];

  v10 = [v9 firstObject];
  if (v10)
  {
    v12 = v10;
    v13 = 1;
    *&v11 = 138543362;
    v36 = v11;
    p_isa = &v4->super.isa;
    while (1)
    {
      [v9 removeObjectAtIndex:{0, v36}];
      v14 = [(WBSBookmarkDBAccess *)v4->_databaseAccessor copyItemWithLocalID:v12 database:a3];
      v15 = objc_alloc_init(WBSScopeExitHandler);
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10002D0A4;
      v50[3] = &unk_1001321B8;
      v50[4] = v14;
      v40 = v15;
      [v15 setHandler:v50];
      v41 = [(WBSBookmarkDBAccess *)v4->_databaseAccessor copyServerIdWithItem:v14];
      v16 = [(WBSBookmarkDBAccess *)v4->_databaseAccessor itemTypeWithItem:v14];
      databaseAccessor = v4->_databaseAccessor;
      if (v16 == 1)
      {
        v39 = [(WBSBookmarkDBAccess *)databaseAccessor folderTypeWithFolder:v14];
        v18 = [(WBSBookmarkDBAccess *)v4->_databaseAccessor copyLocalIDsInFolderWithLocalID:v12 database:a3];
        [v18 allObjects];
        v19 = v5;
        v21 = v20 = a3;
        [v9 addObjectsFromArray:v21];

        a3 = v20;
        v5 = v19;
      }

      else
      {
        v39 = [(WBSBookmarkDBAccess *)databaseAccessor bookmarkTypeWithBookmark:v14];
      }

      v22 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138544130;
        v52 = v12;
        v53 = 2114;
        *v54 = v41;
        *&v54[8] = 2048;
        v55 = v16;
        v56 = 2048;
        v57 = v39;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Checking record with local ID: %{public}@, server ID: %{public}@, item type: %ld, subtype: %ld", buf, 0x2Au);
      }

      v4 = p_isa;
      v23 = v41;
      v24 = [p_isa _serverSyncIDTypeForServerSyncID:v41];
      if (v24 == 2)
      {
        break;
      }

      if (v24 != 1)
      {
        if (!v24 && v37 <= 1)
        {
          v25 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10002D4C8(&v48, v49);
          }

LABEL_19:
          v13 = 0;
LABEL_33:
          v32 = [p_isa[1] copySyncKeyWithItem:v14];

          if (v32)
          {
            v33 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_10002D4F4(&v42, v43);
            }

            v13 = 0;
          }

          goto LABEL_37;
        }

        goto LABEL_32;
      }

      if (v5)
      {
        v26 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_10002D49C(&v46, v47);
        }

        goto LABEL_19;
      }

LABEL_37:
      v13 &= [p_isa _verifySyncDataForItem:v14 recordName:v23 expectingSyncData:v37 > 1 expectingCloudKitData:v5 == 3];

      v34 = [v9 firstObject];

      v12 = v34;
      if (!v34)
      {
        goto LABEL_40;
      }
    }

    if (!v5)
    {
      v27 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10002D470(&v44, v45);
      }

      v13 = 0;
      v23 = v41;
    }

    if (v16 == 1 && [CKRecord safari_folderTypeForRecordName:v23]!= v39)
    {
      v28 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
      if (v39)
      {
        if (v29)
        {
          v30 = v28;
          v31 = [CKRecord safari_recordNameForFolderType:v39];
          *buf = 134218498;
          v52 = v39;
          v53 = 2114;
          *v54 = v41;
          *&v54[8] = 2114;
          v55 = v31;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Built-in folder with type %ld, has invalid record name: %{public}@, expecting: %{public}@", buf, 0x20u);

          v23 = v41;
        }
      }

      else if (v29)
      {
        *buf = v36;
        v52 = v23;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Regular folder has built-in record name: %{public}@, shouldn't!", buf, 0xCu);
      }

      v13 = 0;
    }

LABEL_32:
    if (v5)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  LOBYTE(v13) = 1;
LABEL_40:

  return v13;
}

- (BOOL)_verifySyncDataForItem:(void *)a3 recordName:(id)a4 expectingSyncData:(BOOL)a5 expectingCloudKitData:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copySyncDataWithItem:a3];
  v12 = v11;
  if (v11 && !a5)
  {
    v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10002D520();
    }

LABEL_5:
    v14 = 0;
    goto LABEL_51;
  }

  if ([v11 length])
  {
    if (!v6)
    {
      v14 = 1;
      goto LABEL_51;
    }

    v15 = [WBBookmarkSyncData syncDataWithContentsOfData:v12];
    if (!v15)
    {
      v26 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10002D83C();
      }

      v14 = 0;
      goto LABEL_50;
    }

    v16 = [(WBSBookmarkDBAccess *)self->_databaseAccessor itemTypeWithItem:a3];
    v17 = [v15 record];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 safari_recordName];
      v20 = [v19 isEqualToString:v10];

      if ((v20 & 1) == 0)
      {
        v21 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10002D554(v21, v18, v10);
        }
      }

      if (v16 == 1)
      {
        v27 = [v18 recordType];
        v28 = [v27 isEqualToString:@"BookmarkList"];

        if ((v28 & 1) == 0)
        {
          v29 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10002D610(v29, v18);
          }
        }
      }

      else if (!v16)
      {
        v22 = [v18 recordType];
        v23 = [v22 isEqualToString:@"BookmarkLeaf"];

        if ((v23 & 1) == 0)
        {
          v24 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10002D6A4(v24, v18);
          }
        }
      }

      v30 = [v18 recordChangeTag];
      v31 = [v30 length];

      if (!v31)
      {
        v32 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10002D738();
        }
      }

      v33 = [v15 position];
      if (v33)
      {
      }

      else if (![CKRecord safari_folderTypeForRecordName:v10])
      {
        v34 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_10002D76C();
        }
      }
    }

    v14 = [v15 hasGenerationForKey:@"ParentAndPosition"];
    if ((v14 & 1) == 0 && (v35 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(), os_log_type_enabled(v35, OS_LOG_TYPE_ERROR)))
    {
      sub_10002D7A0();
      if (v16)
      {
LABEL_40:
        if (v16 != 1 || ([v15 hasGenerationForKey:@"TitleAndIdentityHash"] & 1) != 0)
        {
          goto LABEL_49;
        }

        v36 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_10002D808();
        }

        goto LABEL_48;
      }
    }

    else if (v16)
    {
      goto LABEL_40;
    }

    if ([v15 hasGenerationForKey:@"TitleURLAndIdentityHash"])
    {
LABEL_49:

LABEL_50:
      goto LABEL_51;
    }

    v37 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_10002D7D4();
    }

LABEL_48:
    v14 = 0;
    goto LABEL_49;
  }

  v14 = 1;
  if ([v10 length] && v6)
  {
    v25 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10002D870();
    }

    goto LABEL_5;
  }

LABEL_51:

  return v14;
}

@end