@interface CloudBookmarkSyncMigrationPositionGenerator
- (CloudBookmarkSyncMigrationPositionGenerator)initWithDatabase:(void *)database databaseAccessor:(id)accessor;
- (id)_childRecordNamesInParentServerSyncId:(id)id;
- (id)_existingPositionForRecordWithName:(id)name getIsFolder:(BOOL *)folder;
- (id)_generatePositionsForChildRecordNames:(id)names withStartingPosition:(id)position;
- (id)_recordNamesToGeneratePositionsForInRecordNames:(id)names inParentRecordName:(id)name getFolderRecordNames:(id *)recordNames getLastValidPosition:(id *)position;
- (id)recordNameEnumerator;
- (void)_generateRecordPositions;
- (void)dealloc;
- (void)setRootRecordName:(id)name;
@end

@implementation CloudBookmarkSyncMigrationPositionGenerator

- (CloudBookmarkSyncMigrationPositionGenerator)initWithDatabase:(void *)database databaseAccessor:(id)accessor
{
  accessorCopy = accessor;
  v11.receiver = self;
  v11.super_class = CloudBookmarkSyncMigrationPositionGenerator;
  v8 = [(CloudBookmarkSyncMigrationPositionGenerator *)&v11 init];
  if (v8)
  {
    v8->_databaseRef = CFRetain(database);
    objc_storeStrong(&v8->_databaseAccessor, accessor);
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
  v4.super_class = CloudBookmarkSyncMigrationPositionGenerator;
  [(CloudBookmarkSyncMigrationPositionGenerator *)&v4 dealloc];
}

- (void)setRootRecordName:(id)name
{
  nameCopy = name;
  v6 = nameCopy;
  if (self->_rootRecordName != nameCopy)
  {
    v12 = nameCopy;
    v7 = [(NSString *)nameCopy isEqualToString:?];
    v6 = v12;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_rootRecordName, name);
      recordNamesToChildRecordNames = self->_recordNamesToChildRecordNames;
      self->_recordNamesToChildRecordNames = 0;

      recordNamesToChildFolderRecordNames = self->_recordNamesToChildFolderRecordNames;
      self->_recordNamesToChildFolderRecordNames = 0;

      recordNamesToPositions = self->_recordNamesToPositions;
      self->_recordNamesToPositions = 0;

      v11 = [(NSString *)self->_rootRecordName length];
      v6 = v12;
      if (v11)
      {
        [(CloudBookmarkSyncMigrationPositionGenerator *)self _generateRecordPositions];
        v6 = v12;
      }
    }
  }
}

- (void)_generateRecordPositions
{
  v24 = objc_autoreleasePoolPush();
  v27 = +[NSMutableDictionary dictionary];
  v26 = +[NSMutableDictionary dictionary];
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSMutableArray arrayWithObject:self->_rootRecordName];
  firstObject = [v4 firstObject];
  if (firstObject)
  {
    v6 = firstObject;
    v25 = WBSCloudBookmarkListRecordNameTopBookmark;
    do
    {
      context = objc_autoreleasePoolPush();
      [v4 removeObjectAtIndex:0];
      if ([v6 isEqualToString:v25])
      {
        v7 = 0;
      }

      else
      {
        v7 = v6;
      }

      v8 = v7;
      v9 = [(CloudBookmarkSyncMigrationPositionGenerator *)self _childRecordNamesInParentServerSyncId:v8];
      v29 = 0;
      v30 = 0;
      v10 = [(CloudBookmarkSyncMigrationPositionGenerator *)self _recordNamesToGeneratePositionsForInRecordNames:v9 inParentRecordName:v6 getFolderRecordNames:&v30 getLastValidPosition:&v29];
      v11 = v30;
      v12 = v29;
      v13 = v3;
      v14 = [v9 copy];
      [v27 setObject:v14 forKeyedSubscript:v6];

      v15 = [v11 copy];
      [v26 setObject:v15 forKeyedSubscript:v6];

      v3 = v13;
      v16 = [(CloudBookmarkSyncMigrationPositionGenerator *)self _generatePositionsForChildRecordNames:v10 withStartingPosition:v12];
      [v13 addEntriesFromDictionary:v16];

      [v4 addObjectsFromArray:v11];
      objc_autoreleasePoolPop(context);
      firstObject2 = [v4 firstObject];

      v6 = firstObject2;
    }

    while (firstObject2);
  }

  v18 = [v27 copy];
  recordNamesToChildRecordNames = self->_recordNamesToChildRecordNames;
  self->_recordNamesToChildRecordNames = v18;

  v20 = [v26 copy];
  recordNamesToChildFolderRecordNames = self->_recordNamesToChildFolderRecordNames;
  self->_recordNamesToChildFolderRecordNames = v20;

  v22 = [v3 copy];
  recordNamesToPositions = self->_recordNamesToPositions;
  self->_recordNamesToPositions = v22;

  objc_autoreleasePoolPop(v24);
}

- (id)_childRecordNamesInParentServerSyncId:(id)id
{
  idCopy = id;
  v5 = +[NSMutableArray array];
  v6 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyFirstServerIdInFolderWithServerId:idCopy database:self->_databaseRef];
  if (v6)
  {
    v7 = v6;
    do
    {
      [v5 addObject:v7];
      v8 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdInFolderAfterServerId:v7 database:self->_databaseRef];

      v7 = v8;
    }

    while (v8);
  }

  return v5;
}

- (id)_generatePositionsForChildRecordNames:(id)names withStartingPosition:(id)position
{
  namesCopy = names;
  positionCopy = position;
  if ([namesCopy count])
  {
    v8 = sub_1000328C4(self->_databaseAccessor);
    v9 = [WBBookmarkDatabaseSyncData databaseSyncDataInDatabase:self->_databaseRef databaseAccessor:self->_databaseAccessor];
    v10 = +[NSMutableDictionary dictionary];
    v19 = positionCopy;
    v11 = positionCopy;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = namesCopy;
    obj = namesCopy;
    v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        v16 = v11;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v22 + 1) + 8 * v15);
          v11 = +[WBSCRDTPosition positionBetweenPosition:andPosition:withDeviceIdentifier:changeID:](WBSCRDTPosition, "positionBetweenPosition:andPosition:withDeviceIdentifier:changeID:", v16, 0, v8, [v9 nextChangeID]);

          [v10 setObject:v11 forKeyedSubscript:v17];
          v15 = v15 + 1;
          v16 = v11;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    [v9 writeToDatabase:self->_databaseRef databaseAccessor:self->_databaseAccessor];
    positionCopy = v19;
    namesCopy = v20;
  }

  else
  {
    v10 = &__NSDictionary0__struct;
  }

  return v10;
}

- (id)_recordNamesToGeneratePositionsForInRecordNames:(id)names inParentRecordName:(id)name getFolderRecordNames:(id *)recordNames getLastValidPosition:(id *)position
{
  recordNamesCopy = recordNames;
  namesCopy = names;
  nameCopy = name;
  v32 = +[NSMutableArray array];
  v8 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = namesCopy;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v10)
  {
    v11 = v10;
    v31 = 0;
    v12 = 0;
    v13 = *v36;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        if ([CKRecord safari_folderTypeForRecordName:v15, recordNamesCopy])
        {
          [v8 addObject:v15];
        }

        else
        {
          v34 = 0;
          v16 = [(CloudBookmarkSyncMigrationPositionGenerator *)self _existingPositionForRecordWithName:v15 getIsFolder:&v34];
          if (v34 == 1)
          {
            [v8 addObject:v15];
          }

          if (v16)
          {
            if (v12)
            {
              if ([v12 compare:v16] == -1)
              {
                v19 = v16;

                v20 = v15;
                v31 = v20;
                v12 = v19;
              }

              else
              {
                v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138544386;
                  v40 = v15;
                  v41 = 2114;
                  v42 = v16;
                  v43 = 2114;
                  v44 = v31;
                  v45 = 2114;
                  v46 = v12;
                  v47 = 2114;
                  v48 = nameCopy;
                  _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Found record %{public}@ with position %{public}@ after record %{public}@ with position %{public}@, folder %{public}@ should have been sorted before!", buf, 0x34u);
                }
              }

              if ([v32 count])
              {
                v21 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  v22 = v21;
                  v23 = [v32 count];
                  *buf = 138543618;
                  v40 = v15;
                  v41 = 2048;
                  v42 = v23;
                  _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Found record with name %{public}@ after %ld records which do not have a position defined yet", buf, 0x16u);
                }
              }
            }

            else
            {
              v12 = v16;
            }
          }

          else
          {
            v18 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543618;
              v40 = v15;
              v41 = 2114;
              v42 = nameCopy;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Record %{public}@ has no position and needs saving in folder %{public}@", buf, 0x16u);
            }

            [v32 addObject:v15];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v49 count:16];
    }

    while (v11);
  }

  else
  {
    v31 = 0;
    v12 = 0;
  }

  v24 = v8;
  *recordNamesCopy = v8;
  v25 = v12;
  *position = v12;
  v26 = v32;

  return v32;
}

- (id)_existingPositionForRecordWithName:(id)name getIsFolder:(BOOL *)folder
{
  v6 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithServerId:name database:self->_databaseRef];
  if (v6)
  {
    v7 = v6;
    if (folder)
    {
      *folder = [(WBSBookmarkDBAccess *)self->_databaseAccessor itemTypeWithItem:v6]== 1;
    }

    v8 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copySyncDataWithItem:v7];
    v9 = [WBBookmarkSyncData positionFromContentsOfData:v8];

    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)recordNameEnumerator
{
  v2 = [[_CloudBookmarkSyncMigrationPositionGeneratorEnumerator alloc] initWithParentPositionGenerator:self];

  return v2;
}

@end