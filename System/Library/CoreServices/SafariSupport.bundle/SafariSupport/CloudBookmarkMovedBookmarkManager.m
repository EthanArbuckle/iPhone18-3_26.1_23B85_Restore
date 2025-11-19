@interface CloudBookmarkMovedBookmarkManager
- (BOOL)_insertBookmarkWithRecordName:(id)a3 intoExistingFolderWithRecordName:(id)a4;
- (BOOL)_localDatabaseContainsItemWithRecordName:(id)a3 getParentRecordName:(id *)a4;
- (CloudBookmarkMovedBookmarkManager)initWithDatabase:(void *)a3 databaseAccessor:(id)a4;
- (id)_bookmarksByVerifyingAndReparentingUnrootedBookmarksRememberOriginalParents:(BOOL)a3 getLastValidPositionInRootFolder:(id *)a4;
- (id)_lastValidPositionInRootFolder;
- (id)_recordNameOfAncestorToReparentForRecordName:(id)a3 verifiedRecordNames:(id)a4;
- (id)_recordNameOfAncestorToReparentInLoop:(id)a3;
- (id)_sortedRecordNamesWithChildIDs:(id)a3 getLastPosition:(id *)a4;
- (id)bookmarksByVerifyingAndReparentingUnrootedBookmarksGetLastValidPositionInRootFolder:(id *)a3;
- (void)_createBuiltInFolderWithRecordNameIfNeeded:(id)a3;
- (void)_deleteTemporaryParentFolder;
- (void)_insertBookmark:(id)a3 intoFolderWithRecordName:(id)a4;
- (void)_recursivelyUpdateChildrenOrderWithParentServerID:(id)a3 depth:(int)a4;
- (void)_reorderChildrenOfFolderWithServerSyncId:(id)a3;
- (void)_reorderChildrenOfTopBookmarkFolderGetLastPosition:(id *)a3;
- (void)_reparentBuiltInFolderIfNeeded;
- (void)addMovedBookmark:(id)a3;
- (void)dealloc;
- (void)didDeleteBookmarkWithRecordName:(id)a3;
- (void)didLocallyMoveBookmarkWithRecordName:(id)a3;
- (void)moveBookmarksIntoPlace;
- (void)removeLocalItemsForDeletedRecordNames;
- (void)reorderAllBookmarksUsingSyncPosition;
- (void)verifyAndReparentUnrootedBookmarksRememberingOriginalParents;
@end

@implementation CloudBookmarkMovedBookmarkManager

- (CloudBookmarkMovedBookmarkManager)initWithDatabase:(void *)a3 databaseAccessor:(id)a4
{
  v7 = a4;
  v23.receiver = self;
  v23.super_class = CloudBookmarkMovedBookmarkManager;
  v8 = [(CloudBookmarkMovedBookmarkManager *)&v23 init];
  if (v8)
  {
    v8->_databaseRef = CFRetain(a3);
    objc_storeStrong(&v8->_databaseAccessor, a4);
    v9 = +[NSMutableDictionary dictionary];
    childRecordNamesToParentRecordNames = v8->_childRecordNamesToParentRecordNames;
    v8->_childRecordNamesToParentRecordNames = v9;

    v11 = +[NSMutableSet set];
    movedBookmarkRecordNames = v8->_movedBookmarkRecordNames;
    v8->_movedBookmarkRecordNames = v11;

    v13 = +[NSMutableSet set];
    deletedBookmarkRecordNames = v8->_deletedBookmarkRecordNames;
    v8->_deletedBookmarkRecordNames = v13;

    v15 = +[NSMutableSet set];
    parentRecordNamesWithMovedChildren = v8->_parentRecordNamesWithMovedChildren;
    v8->_parentRecordNamesWithMovedChildren = v15;

    v17 = +[NSMutableSet set];
    misplacedBuiltInFolderRecordNames = v8->_misplacedBuiltInFolderRecordNames;
    v8->_misplacedBuiltInFolderRecordNames = v17;

    v19 = +[NSMutableSet set];
    reorderedBySyncPositionBookmarkFolderServerIDs = v8->_reorderedBySyncPositionBookmarkFolderServerIDs;
    v8->_reorderedBySyncPositionBookmarkFolderServerIDs = v19;

    v21 = v8;
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
  v4.super_class = CloudBookmarkMovedBookmarkManager;
  [(CloudBookmarkMovedBookmarkManager *)&v4 dealloc];
}

- (void)addMovedBookmark:(id)a3
{
  v4 = a3;
  v5 = [v4 recordName];
  v6 = [v4 parentRecordName];
  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Moving record %{public}@ into parent record %{public}@", &v9, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003DFA0();
    }

    v6 = WBSCloudBookmarkListRecordNameNullParentFolder;
  }

  [(CloudBookmarkMovedBookmarkManager *)self _insertBookmark:v4 intoFolderWithRecordName:v6];
  [(NSMutableSet *)self->_deletedBookmarkRecordNames removeObject:v5];
}

- (void)didLocallyMoveBookmarkWithRecordName:(id)a3
{
  v4 = a3;
  v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Marking record name %{public}@ as moved locally", &v6, 0xCu);
  }

  [(NSMutableSet *)self->_movedBookmarkRecordNames addObject:v4];
  [(NSMutableSet *)self->_deletedBookmarkRecordNames removeObject:v4];
}

- (void)didDeleteBookmarkWithRecordName:(id)a3
{
  v4 = a3;
  v5 = [CKRecord safari_folderTypeForRecordName:v4];
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003E008();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Marking record name %{public}@ as deleted", &v8, 0xCu);
    }

    [(NSMutableSet *)self->_movedBookmarkRecordNames removeObject:v4];
    [(NSMutableDictionary *)self->_childRecordNamesToParentRecordNames removeObjectForKey:v4];
    [(NSMutableSet *)self->_deletedBookmarkRecordNames addObject:v4];
  }
}

- (void)_insertBookmark:(id)a3 intoFolderWithRecordName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordName];
  v9 = WBSCloudBookmarkListRecordNameTopBookmark;
  if ([v7 isEqualToString:WBSCloudBookmarkListRecordNameTopBookmark])
  {
    if (-[WBSBookmarkDBAccess addItem:underFolderWithServerId:database:](self->_databaseAccessor, "addItem:underFolderWithServerId:database:", [v6 item], 0, self->_databaseRef))
    {
      goto LABEL_12;
    }

    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ([CKRecord safari_folderTypeForRecordName:v8])
  {
    if (([v7 isEqualToString:v9] & 1) == 0)
    {
      [(NSMutableSet *)self->_misplacedBuiltInFolderRecordNames addObject:v8];
      v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10003E070();
      }
    }

    if (-[WBSBookmarkDBAccess addItem:underFolderWithServerId:database:](self->_databaseAccessor, "addItem:underFolderWithServerId:database:", [v6 item], 0, self->_databaseRef))
    {
      goto LABEL_12;
    }

    v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_10003E0D8();
LABEL_12:
    self->_topBookmarkFolderRequiresReordering = 1;
    goto LABEL_13;
  }

  if ([CKRecord safari_folderTypeForRecordName:v7])
  {
    [(NSMutableSet *)self->_parentRecordNamesWithMovedChildren addObject:v7];
    [(CloudBookmarkMovedBookmarkManager *)self _createBuiltInFolderWithRecordNameIfNeeded:v7];
    if ((-[WBSBookmarkDBAccess addItem:underFolderWithServerId:database:](self->_databaseAccessor, "addItem:underFolderWithServerId:database:", [v6 item], v7, self->_databaseRef) & 1) == 0)
    {
      v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10003E140();
      }
    }
  }

  else
  {
    [(NSMutableSet *)self->_movedBookmarkRecordNames addObject:v8];
    v14 = [v6 item];
    if ([(WBSBookmarkDBAccess *)self->_databaseAccessor addItem:v14 underFolderWithServerId:v7 database:self->_databaseRef])
    {
      [(NSMutableSet *)self->_parentRecordNamesWithMovedChildren addObject:v7];
      [(NSMutableDictionary *)self->_childRecordNamesToParentRecordNames setObject:v7 forKeyedSubscript:v8];
    }

    else
    {
      v15 = WBSCloudBookmarkListRecordNameTemporaryParentFolder;
      if (!self->_hasTemporaryParentFolder)
      {
        [(CloudBookmarkMovedBookmarkManager *)self _createBuiltInFolderWithRecordNameIfNeeded:WBSCloudBookmarkListRecordNameTemporaryParentFolder];
        self->_hasTemporaryParentFolder = 1;
      }

      [(NSMutableDictionary *)self->_childRecordNamesToParentRecordNames setObject:v7 forKeyedSubscript:v8];
      if (([(WBSBookmarkDBAccess *)self->_databaseAccessor addItem:v14 underFolderWithServerId:v15 database:self->_databaseRef]& 1) == 0)
      {
        v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10003E1A8();
        }
      }
    }
  }

LABEL_13:
}

- (BOOL)_insertBookmarkWithRecordName:(id)a3 intoExistingFolderWithRecordName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithServerId:v6 database:self->_databaseRef];
  if (v8)
  {
    v9 = v8;
    v10 = [(WBSBookmarkDBAccess *)self->_databaseAccessor addItem:v8 underFolderWithServerId:v7 database:self->_databaseRef];
    CFRelease(v9);
  }

  else
  {
    v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003E210();
    }

    v12 = +[NSNotificationCenter defaultCenter];
    v15 = @"bugIDs";
    v16 = &off_10013C908;
    v10 = 1;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v12 postNotificationName:@"cloudBookmarkDidDetectBug" object:self userInfo:v13];
  }

  return v10;
}

- (void)_createBuiltInFolderWithRecordNameIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithServerId:v4 database:self->_databaseRef];
  if (v5)
  {
    CFRelease(v5);
  }

  else
  {
    v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Creating built-in folder with record name: %{public}@", &v8, 0xCu);
    }

    v7 = [(WBSBookmarkDBAccess *)self->_databaseAccessor createFolderWithType:[CKRecord database:"safari_folderTypeForRecordName:" safari_folderTypeForRecordName:v4], self->_databaseRef];
    [(WBSBookmarkDBAccess *)self->_databaseAccessor setServerId:v4 item:v7];
    [(WBSBookmarkDBAccess *)self->_databaseAccessor addItem:v7 underFolderWithServerId:0 database:self->_databaseRef];
    CFRelease(v7);
    self->_topBookmarkFolderRequiresReordering = 1;
  }
}

- (void)_deleteTemporaryParentFolder
{
  if (self->_hasTemporaryParentFolder)
  {
    v3 = WBSCloudBookmarkListRecordNameTemporaryParentFolder;
    v4 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdsInFolderWithServerId:WBSCloudBookmarkListRecordNameTemporaryParentFolder database:self->_databaseRef];
    v5 = [v4 mutableCopy];

    [v5 minusSet:self->_deletedBookmarkRecordNames];
    if ([v5 count])
    {
      v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10003E278(v6, v5);
      }
    }

    [(WBSBookmarkDBAccess *)self->_databaseAccessor removeItemWithServerId:v3 database:self->_databaseRef];
    self->_hasTemporaryParentFolder = 0;
  }
}

- (void)_reparentBuiltInFolderIfNeeded
{
  if ([(CloudBookmarkMovedBookmarkManager *)self hasUnverifiedMovedBookmarks])
  {
    if (qword_100153ED0 != -1)
    {
      sub_10003E358();
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = qword_100153EC8;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithServerId:v8 database:self->_databaseRef, v12];
          if (v9)
          {
            v10 = v9;
            v11 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyParentServerIdWithItem:v9];
            if (v11)
            {
              [(WBSBookmarkDBAccess *)self->_databaseAccessor addItem:v10 underFolderWithServerId:0 database:self->_databaseRef];
              [(NSMutableSet *)self->_misplacedBuiltInFolderRecordNames addObject:v8];
              self->_topBookmarkFolderRequiresReordering = 1;
            }

            CFRelease(v10);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }
}

- (id)_bookmarksByVerifyingAndReparentingUnrootedBookmarksRememberOriginalParents:(BOOL)a3 getLastValidPositionInRootFolder:(id *)a4
{
  v5 = a3;
  v7 = objc_autoreleasePoolPush();
  [(CloudBookmarkMovedBookmarkManager *)self _reparentBuiltInFolderIfNeeded];
  [(CloudBookmarkMovedBookmarkManager *)self _reorderChildrenOfTopBookmarkFolderGetLastPosition:a4];
  objc_autoreleasePoolPop(v7);
  if ([(CloudBookmarkMovedBookmarkManager *)self hasUnverifiedMovedBookmarks])
  {
    v31 = +[NSMutableSet set];
    v8 = +[NSMutableSet set];
    if (v5)
    {
      obj = [(NSMutableSet *)self->_movedBookmarkRecordNames mutableCopy];
      v27 = [(NSMutableSet *)self->_misplacedBuiltInFolderRecordNames mutableCopy];
      v28 = [(NSMutableDictionary *)self->_childRecordNamesToParentRecordNames mutableCopy];
    }

    else
    {
      v28 = 0;
      v27 = 0;
      obj = 0;
    }

    [v31 unionSet:self->_misplacedBuiltInFolderRecordNames];
    [v8 unionSet:self->_misplacedBuiltInFolderRecordNames];
    [(NSMutableSet *)self->_misplacedBuiltInFolderRecordNames removeAllObjects];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    p_movedBookmarkRecordNames = &self->_movedBookmarkRecordNames;
    v10 = self->_movedBookmarkRecordNames;
    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v35 objects:v41 count:16];
    v29 = v5;
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      do
      {
        v14 = 0;
        do
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v35 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          v17 = [(CloudBookmarkMovedBookmarkManager *)self _recordNameOfAncestorToReparentForRecordName:v15 verifiedRecordNames:v8];
          if (v17)
          {
            if (v5)
            {
              [obj addObject:v17];
              v34 = 0;
              [(CloudBookmarkMovedBookmarkManager *)self _localDatabaseContainsItemWithRecordName:v17 getParentRecordName:&v34];
              v18 = v34;
              if ([v18 length])
              {
                [v28 setObject:v18 forKeyedSubscript:v17];
              }

              else
              {
                v19 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v40 = v17;
                  _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Record with name %{public}@ does not have a parent even though it was checked right before", buf, 0xCu);
                }
              }

              v5 = v29;
            }

            [(NSMutableDictionary *)self->_childRecordNamesToParentRecordNames removeObjectForKey:v17];
            if (![(CloudBookmarkMovedBookmarkManager *)self _insertBookmarkWithRecordName:v17 intoExistingFolderWithRecordName:0])
            {
              v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v40 = v17;
                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to insert %{public}@ into the root folder and for some reason the parent folder does not exist or creates a cycle!", buf, 0xCu);
              }
            }

            [v31 addObject:v17];
          }

          objc_autoreleasePoolPop(v16);
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v12);
    }

    [(NSMutableSet *)*p_movedBookmarkRecordNames removeAllObjects];
    v21 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Did finish checking hierarchy consistency, will move remaining records into their final location", buf, 2u);
    }

    childRecordNamesToParentRecordNames = self->_childRecordNamesToParentRecordNames;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10003CAB4;
    v32[3] = &unk_100132FB0;
    v32[4] = self;
    v23 = v31;
    v33 = v23;
    [(NSMutableDictionary *)childRecordNamesToParentRecordNames enumerateKeysAndObjectsUsingBlock:v32];
    [(NSMutableDictionary *)self->_childRecordNamesToParentRecordNames removeAllObjects];
    [(CloudBookmarkMovedBookmarkManager *)self _deleteTemporaryParentFolder];
    if (v29)
    {
      objc_storeStrong(p_movedBookmarkRecordNames, obj);
      objc_storeStrong(&self->_misplacedBuiltInFolderRecordNames, v27);
      objc_storeStrong(&self->_childRecordNamesToParentRecordNames, v28);
    }

    v24 = v33;
    v9 = v23;
  }

  else
  {
    v9 = +[NSSet set];
  }

  return v9;
}

- (id)bookmarksByVerifyingAndReparentingUnrootedBookmarksGetLastValidPositionInRootFolder:(id *)a3
{
  v8 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [(CloudBookmarkMovedBookmarkManager *)self _bookmarksByVerifyingAndReparentingUnrootedBookmarksRememberOriginalParents:0 getLastValidPositionInRootFolder:&v8];
  objc_autoreleasePoolPop(v5);
  *a3 = v8;

  return v6;
}

- (void)verifyAndReparentUnrootedBookmarksRememberingOriginalParents
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(CloudBookmarkMovedBookmarkManager *)self _bookmarksByVerifyingAndReparentingUnrootedBookmarksRememberOriginalParents:1 getLastValidPositionInRootFolder:0];

  objc_autoreleasePoolPop(v3);
}

- (id)_recordNameOfAncestorToReparentForRecordName:(id)a3 verifiedRecordNames:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 containsObject:v6];
  v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (v10)
    {
      *buf = 138543362;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Checking parent chain of record with name %{public}@", buf, 0xCu);
    }

    v12 = [v7 copy];
    v13 = v6;
    v14 = +[NSMutableOrderedSet orderedSet];
    [v14 addObject:v13];
    [v7 addObject:v13];
    v30 = 0;
    v15 = [(CloudBookmarkMovedBookmarkManager *)self _localDatabaseContainsItemWithRecordName:v13 getParentRecordName:&v30];
    v16 = v30;
    v17 = v16;
    if (v15)
    {
      if (!v16)
      {
        v11 = 0;
        goto LABEL_21;
      }

      v18 = WBSCloudBookmarkListRecordNameNullParentFolder;
      while (1)
      {
        if ([v17 isEqualToString:v18])
        {
          goto LABEL_32;
        }

        if ([(NSMutableSet *)self->_deletedBookmarkRecordNames containsObject:v17])
        {
          v27 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v32 = v17;
            v33 = 2114;
            v34 = v13;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Parent %{public}@ was deleted, reparenting %{public}@", buf, 0x16u);
          }

LABEL_32:
          v13 = v13;
          v11 = v13;
          goto LABEL_20;
        }

        if ([v12 containsObject:v17])
        {
          goto LABEL_19;
        }

        v19 = [v14 indexOfObject:v17];
        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v29 = 0;
        v20 = [(CloudBookmarkMovedBookmarkManager *)self _localDatabaseContainsItemWithRecordName:v17 getParentRecordName:&v29];
        v21 = v29;
        if ((v20 & 1) == 0)
        {
          v28 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v32 = v17;
            v33 = 2114;
            v34 = v13;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Parent %{public}@ is not in the database, reparenting %{public}@", buf, 0x16u);
          }

          v13 = v13;

          v11 = v13;
          goto LABEL_20;
        }

        v22 = v17;

        [v14 addObject:v22];
        [v7 addObject:v22];

        v13 = v22;
        v17 = v21;
        if (!v21)
        {
          v11 = 0;
          v13 = v22;
          goto LABEL_20;
        }
      }

      v25 = v19;
      if (v19)
      {
        [v14 removeObjectsInRange:{0, v19}];
      }

      v11 = [(CloudBookmarkMovedBookmarkManager *)self _recordNameOfAncestorToReparentInLoop:v14, v25];
      v26 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v32 = v11;
        v33 = 2114;
        v34 = v14;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Loop detected, reparenting %{public}@ in list %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v23 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10003E43C();
      }

LABEL_19:
      v11 = 0;
    }

LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  if (v10)
  {
    *buf = 138543362;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Already verified parent chain fo record with name %{public}@", buf, 0xCu);
  }

  v11 = 0;
LABEL_22:

  return v11;
}

- (id)_recordNameOfAncestorToReparentInLoop:(id)a3
{
  v3 = [a3 array];
  v4 = [v3 safari_minimumUsingComparator:&stru_100132FF0];

  return v4;
}

- (BOOL)_localDatabaseContainsItemWithRecordName:(id)a3 getParentRecordName:(id *)a4
{
  v6 = a3;
  *a4 = 0;
  v7 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithServerId:v6 database:self->_databaseRef];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_childRecordNamesToParentRecordNames objectForKeyedSubscript:v6];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      *a4 = v9;
    }

    else
    {
      v11 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyParentServerIdWithItem:v7];
      *a4 = v11;
    }

    CFRelease(v7);
  }

  return v7 != 0;
}

- (void)reorderAllBookmarksUsingSyncPosition
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning reorder of all bookmarks in local storage based on CloudKit sync data", v5, 2u);
  }

  self->_topBookmarkFolderRequiresReordering = 1;
  v4 = objc_autoreleasePoolPush();
  [(CloudBookmarkMovedBookmarkManager *)self _reorderChildrenOfTopBookmarkFolderGetLastPosition:0];
  objc_autoreleasePoolPop(v4);
  [(CloudBookmarkMovedBookmarkManager *)self _recursivelyUpdateChildrenOrderWithParentServerID:0 depth:0];
  [(NSMutableSet *)self->_reorderedBySyncPositionBookmarkFolderServerIDs removeAllObjects];
}

- (void)_recursivelyUpdateChildrenOrderWithParentServerID:(id)a3 depth:(int)a4
{
  v6 = a3;
  if ([(NSMutableSet *)self->_reorderedBySyncPositionBookmarkFolderServerIDs containsObject:v6])
  {
    v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10003E518(v6, &self->_reorderedBySyncPositionBookmarkFolderServerIDs, v7);
    }
  }

  else if (a4 < 401)
  {
    if (v6)
    {
      v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v32 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Reordering children of %{public}@", buf, 0xCu);
      }

      [(NSMutableSet *)self->_reorderedBySyncPositionBookmarkFolderServerIDs addObject:v6];
      v10 = objc_autoreleasePoolPush();
      [(CloudBookmarkMovedBookmarkManager *)self _reorderChildrenOfFolderWithServerSyncId:v6];
      objc_autoreleasePoolPop(v10);
    }

    v11 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdsInFolderWithServerId:v6 database:self->_databaseRef];
    v12 = [v11 count];
    v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        v15 = v13;
        v16 = [v11 count];
        *buf = 134218242;
        v32 = v16;
        v33 = 2114;
        v34 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Recursing to update order for %lu children of %{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      *buf = 138543362;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No children of bookmark %{public}@ to recurse on", buf, 0xCu);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = v11;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v18)
    {
      v20 = v18;
      v21 = *v27;
      *&v19 = 138543362;
      v25 = v19;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v26 + 1) + 8 * i);
          if ([v6 isEqualToString:{v23, v25, v26}])
          {
            v24 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
            {
              *buf = v25;
              v32 = v6;
              _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "Child bookmark ID unexpectedly equal to parent server ID %{public}@", buf, 0xCu);
            }
          }

          else
          {
            [(CloudBookmarkMovedBookmarkManager *)self _recursivelyUpdateChildrenOrderWithParentServerID:v23 depth:(a4 + 1)];
          }
        }

        v20 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10003E4A4();
    }
  }
}

- (void)moveBookmarksIntoPlace
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Fixing order in local storage based on CloudKit positions", buf, 2u);
  }

  v4 = objc_autoreleasePoolPush();
  [(CloudBookmarkMovedBookmarkManager *)self _reorderChildrenOfTopBookmarkFolderGetLastPosition:0];
  objc_autoreleasePoolPop(v4);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_parentRecordNamesWithMovedChildren;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        [(CloudBookmarkMovedBookmarkManager *)self _reorderChildrenOfFolderWithServerSyncId:v10, v12];
        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_parentRecordNamesWithMovedChildren removeAllObjects];
}

- (id)_sortedRecordNamesWithChildIDs:(id)a3 getLastPosition:(id *)a4
{
  v5 = a3;
  context = objc_autoreleasePoolPush();
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [(CloudBookmarkMovedBookmarkManager *)self _positionOfBookmarkWithRecordNameForFolderSorting:v13];
        if (v14)
        {
          v15 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v27 = v13;
            v28 = 2112;
            v29 = v14;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Record name %@, position: %@", buf, 0x16u);
          }

          v16 = [v7 indexOfObject:v14 inSortedRange:0 options:objc_msgSend(v7 usingComparator:{"count"), 1024, &stru_100133030}];
          [v6 insertObject:v13 atIndex:v16];
          [v7 insertObject:v14 atIndex:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v10);
  }

  if (a4)
  {
    v17 = [v7 lastObject];
    v18 = *a4;
    *a4 = v17;
  }

  objc_autoreleasePoolPop(context);

  return v6;
}

- (void)_reorderChildrenOfTopBookmarkFolderGetLastPosition:(id *)a3
{
  if (self->_topBookmarkFolderRequiresReordering)
  {
    v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reordering children of root folder", buf, 2u);
    }

    v6 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdsInFolderWithServerId:0 database:self->_databaseRef];
    v7 = [v6 mutableCopy];

    v8 = WBSCloudBookmarkListRecordNameFavoritesBar;
    [v7 removeObject:WBSCloudBookmarkListRecordNameFavoritesBar];
    v9 = WBSCloudBookmarkListRecordNameBookmarksMenu;
    [v7 removeObject:WBSCloudBookmarkListRecordNameBookmarksMenu];
    v10 = WBSCloudBookmarkListRecordNameReadingList;
    [v7 removeObject:WBSCloudBookmarkListRecordNameReadingList];
    v11 = WBSCloudBookmarkListRecordNameTemporaryParentFolder;
    [v7 removeObject:WBSCloudBookmarkListRecordNameTemporaryParentFolder];
    v12 = [(CloudBookmarkMovedBookmarkManager *)self _sortedRecordNamesWithChildIDs:v7 getLastPosition:a3];
    [v12 insertObject:v8 atIndex:0];
    [v12 insertObject:v9 atIndex:1];
    [v12 insertObject:v10 atIndex:2];
    if (self->_hasTemporaryParentFolder)
    {
      [v12 addObject:v11];
    }

    [(WBSBookmarkDBAccess *)self->_databaseAccessor setChildrenOrder:v12 forFolderWithServerId:0 database:self->_databaseRef];
    v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Did finish reordering children of root folder", v16, 2u);
    }

    self->_topBookmarkFolderRequiresReordering = 0;
  }

  else if (a3)
  {
    v14 = [(CloudBookmarkMovedBookmarkManager *)self _lastValidPositionInRootFolder];
    v15 = *a3;
    *a3 = v14;
  }
}

- (id)_lastValidPositionInRootFolder
{
  v3 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyLastServerIdInFolderWithServerId:0 database:self->_databaseRef];
  if (v3 && ![CKRecord safari_folderTypeForRecordName:v3])
  {
    v4 = [CloudBookmark positionForItemWithRecordName:v3 inDatabase:self->_databaseRef databaseAccessor:self->_databaseAccessor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_reorderChildrenOfFolderWithServerSyncId:(id)a3
{
  v4 = a3;
  v5 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdsInFolderWithServerId:v4 database:self->_databaseRef];
  v6 = [v5 count];
  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Reordering children of record with Server Sync ID: %{public}@", &v11, 0xCu);
    }

    v9 = [(CloudBookmarkMovedBookmarkManager *)self _sortedRecordNamesWithChildIDs:v5 getLastPosition:0];
    [(WBSBookmarkDBAccess *)self->_databaseAccessor setChildrenOrder:v9 forFolderWithServerId:v4 database:self->_databaseRef];
    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Did finish reordering children of record with Server Sync ID: %{public}@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10003E5CC();
  }
}

- (void)removeLocalItemsForDeletedRecordNames
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    deletedBookmarkRecordNames = self->_deletedBookmarkRecordNames;
    v5 = v3;
    *buf = 134217984;
    v17 = [(NSMutableSet *)deletedBookmarkRecordNames count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Removing %lu local items that were deleted on the server", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_deletedBookmarkRecordNames;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(WBSBookmarkDBAccess *)self->_databaseAccessor removeItemWithServerId:*(*(&v11 + 1) + 8 * v10) database:self->_databaseRef, v11];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(NSMutableSet *)self->_deletedBookmarkRecordNames removeAllObjects];
}

@end