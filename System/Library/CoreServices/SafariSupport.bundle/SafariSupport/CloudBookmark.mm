@interface CloudBookmark
+ (id)_decodedSyncDataInData:(id)a3;
+ (id)cloudBookmarkForReparentedItemWithRecordName:(id)a3 inDatabase:(void *)a4 databaseAccessor:(id)a5 updater:(id)a6;
+ (id)cloudBookmarkToMigrateItemWithRecordName:(id)a3 inDatabase:(void *)a4 databaseAccessor:(id)a5 updater:(id)a6;
+ (id)cloudBookmarkWithAddedRecord:(id)a3 configuration:(id)a4 inDatabase:(void *)a5 databaseAccessor:(id)a6 updater:(id)a7;
+ (id)cloudBookmarkWithChange:(void *)a3 databaseAccessor:(id)a4 updater:(id)a5;
+ (id)cloudBookmarkWithRecordName:(id)a3 inDatabase:(void *)a4 databaseAccessor:(id)a5 updater:(id)a6;
+ (id)positionForItemWithRecordName:(id)a3 inDatabase:(void *)a4 databaseAccessor:(id)a5;
+ (void)applyPendingReferences:(id)a3 toItemWithRecordName:(id)a4 inDatabase:(void *)a5 databaseAccessor:(id)a6 updater:(id)a7;
+ (void)updateSyncDataGenerationsWithChange:(void *)a3 databaseAccessor:(id)a4 updater:(id)a5;
- (BOOL)_canApplyValue:(id)a3 withGeneration:(id)a4 toAttribute:(id)a5 updater:(id)a6;
- (BOOL)_updateRecordWithChange:(void *)a3 updater:(id)a4;
- (BOOL)_updateRecordWithMissingAttributesWithUpdater:(id)a3;
- (BOOL)isDuplicateOfBookmark:(id)a3;
- (id)_createParentFolderReferenceWithRecordName:(id)a3 updater:(id)a4;
- (id)_createRecordIDWithName:(id)a3 updater:(id)a4;
- (id)_createRecordWithRecordName:(id)a3 updater:(id)a4;
- (id)_generateIdentityHashUsingUpdater:(id)a3;
- (id)_initWithAddedRecord:(id)a3 configuration:(id)a4 forItem:(void *)a5 databaseAccessor:(id)a6 updater:(id)a7;
- (id)_initWithChange:(void *)a3 databaseAccessor:(id)a4 updater:(id)a5;
- (id)_initWithConfiguration:(id)a3 deleteChange:(void *)a4 databaseAccessor:(id)a5 updater:(id)a6;
- (id)_initWithItem:(void *)a3 configuration:(id)a4 databaseAccessor:(id)a5;
- (id)_initWithItem:(void *)a3 configuration:(id)a4 syncData:(id)a5 databaseAccessor:(id)a6;
- (id)_initWithItemToMigrate:(void *)a3 configuration:(id)a4 databaseAccessor:(id)a5 updater:(id)a6;
- (id)_initWithReparentedItem:(void *)a3 configuration:(id)a4 databaseAccessor:(id)a5 updater:(id)a6;
- (id)_modifiedOrLocalIdentityHashWithUpdater:(id)a3;
- (id)_modifiedOrLocalParentReferenceWithUpdater:(id)a3;
- (id)_transformedModifiedOrLocalValueForKey:(id)a3 isEncrypted:(BOOL *)a4;
- (id)modifiedOrLocalValueForKey:(id)a3;
- (unint64_t)_resultByMergingMinimumAPIVersionWithRecord:(id)a3;
- (unint64_t)_resultByMergingParentAndPositionWithRecord:(id)a3 usingUpdater:(id)a4;
- (unint64_t)_resultByMergingStateWithRecord:(id)a3 shouldContinueMerge:(BOOL *)a4;
- (unint64_t)duplicateHash;
- (unint64_t)resultFromMergingRecord:(id)a3 usingUpdater:(id)a4 isLocalUpdateOnly:(BOOL)a5;
- (void)_applyPendingReferences:(id)a3;
- (void)_loadAttributesForKnownKeysIntoEmptyItemUsingRemoteRecord:(id)a3 updater:(id)a4;
- (void)_updateGenerationsForAttributeKeys:(id)a3 withDeviceIdentifier:(id)a4;
- (void)_updateGenerationsForChange:(void *)a3 withDeviceIdentifier:(id)a4;
- (void)_updateRecordParentAndPositionWithUpdater:(id)a3;
- (void)_updateRecordWithModifiedAttributes:(id)a3 updater:(id)a4;
- (void)dealloc;
- (void)saveAssetsIfNeededWithUpdater:(id)a3;
- (void)updateLocalItemWithUpdater:(id)a3;
@end

@implementation CloudBookmark

+ (id)positionForItemWithRecordName:(id)a3 inDatabase:(void *)a4 databaseAccessor:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  if ([v7 isEqualToString:WBSCloudBookmarkListRecordNameTopBookmark])
  {
    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10002284C();
    }
  }

  else
  {
    v11 = [v8 copyItemWithServerId:v7 database:a4];
    if (v11)
    {
      v12 = v11;
      v13 = [v8 copySyncDataWithItem:v11];
      v14 = [WBBookmarkSyncData positionFromContentsOfData:v13];

      CFRelease(v12);
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:
  objc_autoreleasePoolPop(v9);

  return v14;
}

+ (id)cloudBookmarkWithRecordName:(id)a3 inDatabase:(void *)a4 databaseAccessor:(id)a5 updater:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v11 copyItemWithServerId:v10 database:a4];
  if (v13)
  {
    v14 = v13;
    v15 = objc_alloc_init(WBSScopeExitHandler);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10001C5BC;
    v40[3] = &unk_1001321B8;
    v40[4] = v14;
    [v15 setHandler:v40];
    v16 = [v11 copySyncDataWithItem:v14];
    v17 = [WBBookmarkSyncData syncDataWithContentsOfData:v16];

    if (v17)
    {
      v18 = [v12 itemConfigurations];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10001C5C4;
      v37[3] = &unk_1001321E0;
      v39 = v14;
      v19 = v11;
      v38 = v19;
      v20 = [v18 safari_firstObjectPassingTest:v37];

      v21 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      v22 = v21;
      if (v20)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v36 = a1;
          v24 = [v19 copyServerIdWithItem:v14];
          *buf = 138543362;
          v42 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Creating CloudBookmark to update locally with record name: %{public}@", buf, 0xCu);

          a1 = v36;
        }

        v25 = [[a1 alloc] _initWithItem:v14 configuration:v20 syncData:v17 databaseAccessor:v19];
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100022888(v22, v28, v29, v30, v31, v32, v33, v34);
        }

        v25 = 0;
      }
    }

    else
    {
      v27 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v42 = v10;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Item with record name does not have sync data: %{public}@", buf, 0xCu);
      }

      v25 = 0;
    }
  }

  else
  {
    v26 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v42 = v10;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Unknown item with record name: %{public}@", buf, 0xCu);
    }

    v25 = 0;
  }

  return v25;
}

+ (id)cloudBookmarkForReparentedItemWithRecordName:(id)a3 inDatabase:(void *)a4 databaseAccessor:(id)a5 updater:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v11 copyItemWithServerId:v10 database:a4];
  if (v13)
  {
    v14 = v13;
    v15 = objc_alloc_init(WBSScopeExitHandler);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10001C7E0;
    v26[3] = &unk_1001321B8;
    v26[4] = v14;
    [v15 setHandler:v26];
    v16 = [v12 itemConfigurations];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10001C7E8;
    v23[3] = &unk_1001321E0;
    v25 = v14;
    v17 = v11;
    v24 = v17;
    v18 = [v16 safari_firstObjectPassingTest:v23];

    if (v18)
    {
      v19 = [[a1 alloc] _initWithReparentedItem:v14 configuration:v18 databaseAccessor:v17 updater:v12];
    }

    else
    {
      v21 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100022900();
      }

      v19 = 0;
    }
  }

  else
  {
    v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10002299C();
    }

    v19 = 0;
  }

  return v19;
}

+ (id)cloudBookmarkToMigrateItemWithRecordName:(id)a3 inDatabase:(void *)a4 databaseAccessor:(id)a5 updater:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v11 copyItemWithServerId:v10 database:a4];
  if (v13)
  {
    v14 = v13;
    v15 = objc_alloc_init(WBSScopeExitHandler);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10001CA04;
    v26[3] = &unk_1001321B8;
    v26[4] = v14;
    [v15 setHandler:v26];
    v16 = [v12 itemConfigurations];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10001CA0C;
    v23[3] = &unk_1001321E0;
    v25 = v14;
    v17 = v11;
    v24 = v17;
    v18 = [v16 safari_firstObjectPassingTest:v23];

    if (v18)
    {
      v19 = [[a1 alloc] _initWithItemToMigrate:v14 configuration:v18 databaseAccessor:v17 updater:v12];
    }

    else
    {
      v21 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100022A04();
      }

      v19 = 0;
    }
  }

  else
  {
    v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100022AA8();
    }

    v19 = 0;
  }

  return v19;
}

+ (void)updateSyncDataGenerationsWithChange:(void *)a3 databaseAccessor:(id)a4 updater:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 changeTypeForChange:a3];
  v11 = [v9 deviceIdentifier];
  if (v10 == 2)
  {
    v12 = [v8 copyServerIdWithChange:a3];
    if ([v12 length])
    {
      v13 = [v8 copyDeletedBookmarkSyncDataWithChange:a3];
      v14 = [WBBookmarkSyncData syncDataWithContentsOfData:v13];

      if (v14)
      {
        v15 = [v14 record];

        if (v15)
        {
          [v14 clearAllGenerationsExceptState];
          [v14 incrementGenerationForKey:@"Deleted" withDeviceIdentifier:v11];
          v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v16;
            v18 = [v14 generationForKey:@"Deleted"];
            *buf = 138543618;
            v39 = v12;
            v40 = 2114;
            v41 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Updating state generation of deleted record with name: %{public}@, generation: %{public}@", buf, 0x16u);
          }

          v19 = [v14 encodedBookmarkSyncData];
          [v8 setDeletedBookmarkSyncData:v19 change:a3];
        }

        else
        {
          v30 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_100022D1C();
          }
        }
      }

      else
      {
        v28 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100022D88();
        }
      }
    }

    else
    {
      v27 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100022DF4();
      }
    }
  }

  else if (v10 >= 2)
  {
    v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100022CA4();
    }
  }

  else
  {
    v21 = [v9 itemConfigurations];
    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_10001CDD4;
    v35 = &unk_1001321E0;
    v37 = a3;
    v22 = v8;
    v36 = v22;
    v23 = [v21 safari_firstObjectPassingTest:&v32];

    if (v23)
    {
      v24 = [v22 copyChangedItemWithChange:{a3, v32, v33, v34, v35}];
      if (v24)
      {
        v25 = v24;
        v26 = [[a1 alloc] _initWithItem:v24 configuration:v23 databaseAccessor:v22];
        [v26 _updateGenerationsForChange:a3 withDeviceIdentifier:v11];
        [v26 updateLocalItemWithUpdater:v9];
        CFRelease(v25);
      }

      else
      {
        v31 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_100022B10(v31, a3, v22);
        }
      }
    }

    else
    {
      v29 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_100022BE0();
      }
    }
  }
}

+ (id)cloudBookmarkWithChange:(void *)a3 databaseAccessor:(id)a4 updater:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] _initWithChange:a3 databaseAccessor:v9 updater:v8];

  return v10;
}

+ (id)cloudBookmarkWithAddedRecord:(id)a3 configuration:(id)a4 inDatabase:(void *)a5 databaseAccessor:(id)a6 updater:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [v12 safari_recordName];
  v17 = [v14 copyItemWithServerId:v16 database:a5];
  v18 = v17;
  if (v17)
  {
    CFAutorelease(v17);
  }

  v19 = [v13 itemType];
  if (v19 == 1)
  {
    v30 = [v13 itemSubtype];
    if (v18)
    {
      if ([v14 itemTypeWithItem:v18] != 1)
      {
        v31 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_100022EC4();
        }

        v32 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          sub_100022F4C();
        }
      }

      if ([v14 folderTypeWithFolder:v18] == v30)
      {
        goto LABEL_34;
      }

      v33 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v42 = v33;
        v43 = sub_10001D49C(v30);
        v44 = 138543874;
        v45 = v43;
        v46 = 2048;
        v47 = v18;
        v48 = 2048;
        v49 = [v14 bookmarkTypeWithBookmark:v18];
        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Expecting %{public}@ folder type for local folder item %p, but got %ld", &v44, 0x20u);
      }

      v34 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_34;
      }

      v26 = v34;
      v27 = sub_10001D49C(v30);
      v35 = [v14 bookmarkTypeWithBookmark:v18];
      v44 = 138543875;
      v45 = v27;
      v46 = 2113;
      v47 = v18;
      v48 = 2048;
      v49 = v35;
      v29 = "Expecting %{public}@ folder type for local folder item %{private}@, but got %ld";
LABEL_27:
      _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, v29, &v44, 0x20u);

LABEL_34:
      v37 = [[a1 alloc] _initWithAddedRecord:v12 configuration:v13 forItem:v18 databaseAccessor:v14 updater:v15];
      goto LABEL_35;
    }

    v38 = [v14 createFolderWithType:v30 database:a5];
LABEL_33:
    v18 = CFAutorelease(v38);
    goto LABEL_34;
  }

  if (!v19)
  {
    v20 = [v13 itemSubtype];
    if (v18)
    {
      if ([v14 itemTypeWithItem:v18])
      {
        v21 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100022FD4();
        }

        v22 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_10002305C();
        }
      }

      v23 = [v14 bookmarkTypeWithBookmark:v18];
      if (v23 == [v13 itemSubtype])
      {
        goto LABEL_34;
      }

      v24 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v40 = v24;
        v41 = sub_10001D42C(v20);
        v44 = 138543874;
        v45 = v41;
        v46 = 2048;
        v47 = v18;
        v48 = 2048;
        v49 = [v14 bookmarkTypeWithBookmark:v18];
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Expecting %{public}@ type for local bookmark item %p, but got %ld", &v44, 0x20u);
      }

      v25 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_34;
      }

      v26 = v25;
      v27 = sub_10001D42C(v20);
      v28 = [v14 bookmarkTypeWithBookmark:v18];
      v44 = 138543875;
      v45 = v27;
      v46 = 2113;
      v47 = v18;
      v48 = 2048;
      v49 = v28;
      v29 = "Expecting %{public}@ type for local bookmark item %{private}@, but got %ld";
      goto LABEL_27;
    }

    v38 = [v14 createBookmarkWithType:v20 database:a5];
    goto LABEL_33;
  }

  v36 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    sub_1000230E4(v36);
  }

  v37 = 0;
LABEL_35:

  return v37;
}

+ (void)applyPendingReferences:(id)a3 toItemWithRecordName:(id)a4 inDatabase:(void *)a5 databaseAccessor:(id)a6 updater:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  if ([v13 isEqualToString:WBSCloudBookmarkListRecordNameTopBookmark])
  {
    v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100023264();
    }
  }

  else
  {
    v18 = [v14 copyItemWithServerId:v13 database:a5];
    if (v18)
    {
      v19 = v18;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10001D770;
      v30[3] = &unk_1001321B8;
      v30[4] = v18;
      v26 = objc_alloc_init(WBSScopeExitHandler);
      [v26 setHandler:v30];
      v20 = [v15 itemConfigurations];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10001D778;
      v27[3] = &unk_1001321E0;
      v29 = v19;
      v21 = v14;
      v28 = v21;
      v22 = [v20 safari_firstObjectPassingTest:v27];

      if (v22)
      {
        v23 = [[a1 alloc] _initWithItem:v19 configuration:v22 databaseAccessor:v21];
        [v23 _applyPendingReferences:v12];
        [v23 updateLocalItemWithUpdater:v15];
      }

      else
      {
        v25 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10002318C();
        }
      }
    }

    else
    {
      v24 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000231F8();
      }
    }
  }

  objc_autoreleasePoolPop(v16);
}

- (id)_initWithItem:(void *)a3 configuration:(id)a4 databaseAccessor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_class();
  v11 = [v8 copySyncDataWithItem:a3];
  v12 = [v10 _decodedSyncDataInData:v11];
  v13 = [(CloudBookmark *)self _initWithItem:a3 configuration:v9 syncData:v12 databaseAccessor:v8];

  return v13;
}

- (id)_initWithReparentedItem:(void *)a3 configuration:(id)a4 databaseAccessor:(id)a5 updater:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = objc_opt_class();
  v14 = [v11 copySyncDataWithItem:a3];
  v15 = [v13 _decodedSyncDataInData:v14];
  v16 = [(CloudBookmark *)self _initWithItem:a3 configuration:v12 syncData:v15 databaseAccessor:v11];

  if (!v16)
  {
LABEL_8:
    v23 = 0;
    goto LABEL_9;
  }

  v17 = v16[5];
  v18 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v19 = v18;
  if (!v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000232A0(v16);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v16[8];
    v25 = 138543362;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Reparenting record with record name: %{public}@", &v25, 0xCu);
  }

  v21 = v16[1];
  v22 = [v10 deviceIdentifier];
  [v21 incrementGenerationForKey:@"ParentAndPosition" withDeviceIdentifier:v22];

  [v16 _updateRecordParentAndPositionWithUpdater:v10];
  v23 = v16;
LABEL_9:

  return v23;
}

- (id)_initWithChange:(void *)a3 databaseAccessor:(id)a4 updater:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v9 itemConfigurations];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10001DD94;
  v34[3] = &unk_1001321E0;
  v36 = a3;
  v11 = v8;
  v35 = v11;
  v12 = [v10 safari_firstObjectPassingTest:v34];

  if (v12)
  {
    v13 = [v11 changeTypeForChange:a3];
    if (v13 == 2)
    {
      v14 = [v11 copyServerIdWithChange:a3];
      if ([v14 length])
      {
        v15 = [(CloudBookmark *)self _initWithConfiguration:v12 deleteChange:a3 databaseAccessor:v11 updater:v9];
        self = v15;
LABEL_25:
        v28 = v15;
        goto LABEL_26;
      }

      v27 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100023384(v27);
      }

      goto LABEL_15;
    }

    v17 = v13;
    v18 = [v11 copyChangedItemWithChange:a3];
    if (v18)
    {
      v19 = v18;
      v14 = objc_alloc_init(WBSScopeExitHandler);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10001DDA0;
      v33[3] = &unk_1001321B8;
      v33[4] = v19;
      [v14 setHandler:v33];
      v20 = objc_opt_class();
      v21 = [v11 copySyncDataWithItem:v19];
      v22 = [v20 _decodedSyncDataInData:v21];
      self = [(CloudBookmark *)self _initWithItem:v19 configuration:v12 syncData:v22 databaseAccessor:v11];

      if (self)
      {
        if (!self->_record)
        {
          v23 = [(CloudBookmark *)self _createRecordWithRecordName:self->_recordName updater:v9];
          record = self->_record;
          self->_record = v23;

          [(WBBookmarkSyncData *)self->_syncData setRecord:self->_record];
          v25 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
          v26 = v25;
          if (v17 == 1)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_10002331C(&self->_recordName);
            }
          }

          else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            recordName = self->_recordName;
            *buf = 138543362;
            v38 = recordName;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Assigning new record with record name %{public}@ to locally added item", buf, 0xCu);
          }
        }

        if ([(CloudBookmark *)self _updateRecordWithChange:a3 updater:v9])
        {
          v31 = self;
        }

        else
        {
          v31 = 0;
        }

        v15 = v31;
        goto LABEL_25;
      }

LABEL_15:
      v28 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v29 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100022B10(v29, a3, v11);
    }
  }

  else
  {
    v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100023410();
    }
  }

  v28 = 0;
LABEL_27:

  return v28;
}

- (id)_initWithConfiguration:(id)a3 deleteChange:(void *)a4 databaseAccessor:(id)a5 updater:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [v10 copyServerIdWithChange:a4];
  p_recordName = &self->_recordName;
  recordName = self->_recordName;
  self->_recordName = v11;

  if (![(NSString *)self->_recordName length])
  {
    v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10002357C();
    }

    goto LABEL_7;
  }

  if (![CKRecord safari_folderTypeForRecordName:*p_recordName])
  {
    v18 = [v10 copyDeletedBookmarkSyncDataWithChange:a4];
    v19 = [WBBookmarkSyncData syncDataWithContentsOfData:v18];

    v20 = [v19 record];

    if (!v20)
    {
      v27 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100023514(&self->_recordName);
      }

      v17 = 0;
      goto LABEL_21;
    }

    v21 = [v19 record];
    v22 = [v21 safari_recordName];

    if ([v22 isEqualToString:*p_recordName])
    {
      v23 = [(CloudBookmark *)self _initWithItem:0 configuration:v9 syncData:v19 databaseAccessor:v10];
      self = v23;
      if (v23)
      {
        [(CloudBookmark *)v23 setState:1];
        [(CKRecord *)self->_record safari_setState:1];
        v24 = [(WBBookmarkSyncData *)self->_syncData generationForKey:@"Deleted"];
        [(CKRecord *)self->_record safari_setGeneration:v24 forKey:@"Deleted"];
        v25 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = self->_recordName;
          v30 = 138543618;
          v31 = v26;
          v32 = 2114;
          v33 = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Preparing record with name %{public}@ to mark as deleted on the server with generation: %{public}@", &v30, 0x16u);
        }

        self = self;

        v17 = self;
        goto LABEL_20;
      }
    }

    else
    {
      v28 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000234AC(&self->_recordName);
      }
    }

    v17 = 0;
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *p_recordName;
    v30 = 138543362;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ignoring Delete Change object for built-in record with name: %{public}@.", &v30, 0xCu);
  }

LABEL_7:
  v17 = 0;
LABEL_22:

  return v17;
}

- (id)_initWithItem:(void *)a3 configuration:(id)a4 syncData:(id)a5 databaseAccessor:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v32.receiver = self;
  v32.super_class = CloudBookmark;
  v14 = [(CloudBookmark *)&v32 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_11;
  }

  objc_storeStrong(&v14->_configuration, a4);
  objc_storeStrong(&v15->_databaseAccessor, a6);
  if (a3)
  {
    v16 = [v13 copyServerIdWithItem:a3];
    recordName = v15->_recordName;
    v15->_recordName = v16;

    if ([(NSString *)v15->_recordName length])
    {
      v18 = CFRetain(a3);
      v15->_item = v18;
      v19 = [v13 copyParentServerIdWithItem:v18];
      v20 = [v19 copy];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = WBSCloudBookmarkListRecordNameTopBookmark;
      }

      objc_storeStrong(&v15->_parentRecordName, v22);

      goto LABEL_8;
    }

    v30 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1000235E4();
    }

LABEL_11:
    v29 = 0;
    goto LABEL_12;
  }

LABEL_8:
  objc_storeStrong(&v15->_syncData, a5);
  v23 = [v12 record];
  record = v15->_record;
  v15->_record = v23;

  v25 = +[NSMutableDictionary dictionary];
  remotelyModifiedAttributes = v15->_remotelyModifiedAttributes;
  v15->_remotelyModifiedAttributes = v25;

  v27 = +[NSMutableDictionary dictionary];
  remotelyModifiedAssetAttributes = v15->_remotelyModifiedAssetAttributes;
  v15->_remotelyModifiedAssetAttributes = v27;

  v29 = v15;
LABEL_12:

  return v29;
}

- (id)_initWithAddedRecord:(id)a3 configuration:(id)a4 forItem:(void *)a5 databaseAccessor:(id)a6 updater:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v62.receiver = self;
  v62.super_class = CloudBookmark;
  v17 = [(CloudBookmark *)&v62 init];
  v18 = v17;
  if (!v17)
  {
LABEL_8:
    v47 = 0;
    goto LABEL_21;
  }

  objc_storeStrong(&v17->_configuration, a4);
  objc_storeStrong(&v18->_databaseAccessor, a6);
  objc_storeStrong(&v18->_record, a3);
  v19 = [(CKRecord *)v18->_record safari_recordName];
  v20 = [v19 copy];
  recordName = v18->_recordName;
  v18->_recordName = v20;

  if (![(NSString *)v18->_recordName length])
  {
    v46 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_10002365C(&v18->_record);
    }

    goto LABEL_8;
  }

  v18->_item = CFRetain(a5);
  [(WBSBookmarkDBAccess *)v18->_databaseAccessor setServerId:v18->_recordName item:a5];
  v22 = +[NSMutableDictionary dictionary];
  remotelyModifiedAttributes = v18->_remotelyModifiedAttributes;
  v18->_remotelyModifiedAttributes = v22;

  v24 = +[NSMutableDictionary dictionary];
  remotelyModifiedAssetAttributes = v18->_remotelyModifiedAssetAttributes;
  v18->_remotelyModifiedAssetAttributes = v24;

  v26 = objc_alloc_init(WBBookmarkSyncData);
  syncData = v18->_syncData;
  v18->_syncData = v26;

  [(WBBookmarkSyncData *)v18->_syncData setRecord:v18->_record];
  v28 = [(CKRecord *)v18->_record safari_generationForKey:@"ParentAndPosition"];
  if ([v28 isValid])
  {
    v29 = [(CKRecord *)v18->_record objectForKeyedSubscript:@"ParentFolder"];
    v30 = [v29 recordID];
    v31 = [v30 recordName];
    v32 = [v31 copy];
    parentRecordName = v18->_parentRecordName;
    v18->_parentRecordName = v32;

    record = v18->_record;
    v35 = [v14 valueTransformerForAttributeKey:@"Position"];
    v36 = [(CKRecord *)record safari_positionDictionaryRepresentationUsingValueTransformer:v35];
    [(WBBookmarkSyncData *)v18->_syncData setPositionDictionaryRepresentation:v36];

    [(WBBookmarkSyncData *)v18->_syncData setGeneration:v28 forKey:@"ParentAndPosition"];
    v37 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      log = v37;
      v38 = objc_opt_class();
      v39 = v14;
      v40 = v15;
      v41 = v28;
      v42 = v13;
      v44 = v18->_recordName;
      v43 = v18->_parentRecordName;
      v45 = [(CloudBookmark *)v18 position];
      *buf = 138544130;
      v64 = v38;
      v65 = 2114;
      v66 = v44;
      v67 = 2114;
      v68 = v43;
      v13 = v42;
      v28 = v41;
      v15 = v40;
      v14 = v39;
      v69 = 2114;
      v70 = v45;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Creating %{public}@ record with name %{public}@ to add locally with parent: %{public}@ and position: %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v48 = [(WBSBookmarkDBAccess *)v18->_databaseAccessor copyParentServerIdWithItem:v18->_item];
    v49 = [v48 copy];
    v50 = v49;
    if (v49)
    {
      v51 = v49;
    }

    else
    {
      v51 = WBSCloudBookmarkListRecordNameTopBookmark;
    }

    objc_storeStrong(&v18->_parentRecordName, v51);

    v52 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = v52;
      v54 = objc_opt_class();
      v55 = v18->_recordName;
      v56 = v18->_parentRecordName;
      *buf = 138543874;
      v64 = v54;
      v65 = 2114;
      v66 = v55;
      v67 = 2114;
      v68 = v56;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Creating %{public}@ record with name %{public}@ to add locally with parent: %{public}@", buf, 0x20u);
    }

    v57 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      sub_100023620();
    }
  }

  v58 = [(CKRecord *)v18->_record safari_generationForKey:@"Deleted"];
  if ([v58 isValid])
  {
    [(WBBookmarkSyncData *)v18->_syncData setState:[(CKRecord *)v18->_record safari_state]];
    [(WBBookmarkSyncData *)v18->_syncData setGeneration:v58 forKey:@"Deleted"];
  }

  v59 = [(CKRecord *)v18->_record safari_generationForKey:@"MinimumAPIVersion"];
  if ([v59 isValid])
  {
    [(WBBookmarkSyncData *)v18->_syncData setMinimumAPIVersion:[(CKRecord *)v18->_record safari_minimumAPIVersion]];
    [(WBBookmarkSyncData *)v18->_syncData setGeneration:v59 forKey:@"MinimumAPIVersion"];
  }

  [(CloudBookmark *)v18 _loadAttributesForKnownKeysIntoEmptyItemUsingRemoteRecord:v18->_record updater:v16];
  [(CloudBookmark *)v18 updateLocalItemWithUpdater:v16];
  v47 = v18;

LABEL_21:
  return v47;
}

- (id)_initWithItemToMigrate:(void *)a3 configuration:(id)a4 databaseAccessor:(id)a5 updater:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v56.receiver = self;
  v56.super_class = CloudBookmark;
  v14 = [(CloudBookmark *)&v56 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_configuration, a4);
    objc_storeStrong(&v15->_databaseAccessor, a5);
    v16 = [(WBSBookmarkDBAccess *)v15->_databaseAccessor copyServerIdWithItem:a3];
    recordName = v15->_recordName;
    v15->_recordName = v16;

    if ([(NSString *)v15->_recordName length])
    {
      v18 = CFRetain(a3);
      v15->_item = v18;
      v19 = [(WBSBookmarkDBAccess *)v15->_databaseAccessor copyParentServerIdWithItem:v18];
      v20 = [v19 copy];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = WBSCloudBookmarkListRecordNameTopBookmark;
      }

      objc_storeStrong(&v15->_parentRecordName, v22);

      v23 = +[NSMutableDictionary dictionary];
      remotelyModifiedAttributes = v15->_remotelyModifiedAttributes;
      v15->_remotelyModifiedAttributes = v23;

      v25 = +[NSMutableDictionary dictionary];
      remotelyModifiedAssetAttributes = v15->_remotelyModifiedAssetAttributes;
      v15->_remotelyModifiedAssetAttributes = v25;

      v27 = [(WBSBookmarkDBAccess *)v15->_databaseAccessor copySyncDataWithItem:a3];
      v28 = [WBBookmarkSyncData syncDataWithContentsOfData:v27];
      syncData = v15->_syncData;
      v15->_syncData = v28;

      v30 = [(WBBookmarkSyncData *)v15->_syncData record];
      record = v15->_record;
      v15->_record = v30;

      v32 = v15->_record;
      v33 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      if (!v32)
      {
        if (v34)
        {
          v44 = v33;
          v45 = objc_opt_class();
          v46 = v15->_recordName;
          *buf = 138543618;
          v58 = v45;
          v59 = 2114;
          v60 = v46;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Creating %{public}@ to migrate record unknown to the server with name: %{public}@", buf, 0x16u);
        }

        v47 = [(CloudBookmark *)v15 _createRecordWithRecordName:v15->_recordName updater:v13];
        v48 = v15->_record;
        v15->_record = v47;

        v49 = objc_alloc_init(WBBookmarkSyncData);
        v50 = v15->_syncData;
        v15->_syncData = v49;

        [(WBBookmarkSyncData *)v15->_syncData setRecord:v15->_record];
        v38 = [v12 copyAttributesWithItem:a3];
        v51 = [v13 deviceIdentifier];
        [(WBBookmarkSyncData *)v15->_syncData incrementGenerationForKey:@"ParentAndPosition" withDeviceIdentifier:v51];
        v52 = [v38 allKeys];
        [(CloudBookmark *)v15 _updateGenerationsForAttributeKeys:v52 withDeviceIdentifier:v51];

        [(CloudBookmark *)v15 _updateRecordParentAndPositionWithUpdater:v13];
        [(CloudBookmark *)v15 _updateRecordWithModifiedAttributes:v38 updater:v13];
        v43 = v15;

        goto LABEL_24;
      }

      if (v34)
      {
        v35 = v33;
        v36 = objc_opt_class();
        v37 = v15->_recordName;
        *buf = 138543618;
        v58 = v36;
        v59 = 2114;
        v60 = v37;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Creating %{public}@ to complement saved record with name: %{public}@", buf, 0x16u);
      }

      v38 = [v13 deviceIdentifier];
      v39 = [(CloudBookmark *)v15 _updateRecordWithMissingAttributesWithUpdater:v13];
      v40 = [(WBBookmarkSyncData *)v15->_syncData position];
      if (v40)
      {
      }

      else if (![CKRecord safari_folderTypeForRecordName:v15->_recordName])
      {
        v55 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          sub_1000236C4(&v15->_recordName);
        }

        [(WBBookmarkSyncData *)v15->_syncData incrementGenerationForKey:@"ParentAndPosition" withDeviceIdentifier:v38];
        [(CloudBookmark *)v15 _updateRecordParentAndPositionWithUpdater:v13];
        v53 = v15;
        goto LABEL_23;
      }

      if (v39)
      {
        v53 = v15;
      }

      else
      {
        v53 = 0;
      }

LABEL_23:
      v43 = v53;
LABEL_24:

      goto LABEL_25;
    }

    v41 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_10002372C();
    }

    v42 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      sub_100023794();
    }
  }

  v43 = 0;
LABEL_25:

  return v43;
}

- (void)dealloc
{
  item = self->_item;
  if (item)
  {
    CFRelease(item);
  }

  v4.receiver = self;
  v4.super_class = CloudBookmark;
  [(CloudBookmark *)&v4 dealloc];
}

- (BOOL)_updateRecordWithChange:(void *)a3 updater:(id)a4
{
  v6 = a4;
  if ([(WBSBookmarkDBAccess *)self->_databaseAccessor changeTypeForChange:a3])
  {
    v7 = [(WBSBookmarkDBAccess *)self->_databaseAccessor changeIsMoveChange:a3];
  }

  else
  {
    v7 = 1;
  }

  v8 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyModifiedAttributesWithChange:a3];
  v9 = WBBookmarkSyncModifiedAttributesForKeys() | v7 & 1;
  v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = objc_opt_class();
    recordName = self->_recordName;
    v14 = sub_10001CE58(a3, self->_databaseAccessor);
    v15 = WBDescriptionForBookmarkSyncModifiedAttributes();
    v22 = 138544130;
    v23 = v12;
    v24 = 2114;
    v25 = recordName;
    v26 = 2114;
    v27 = v14;
    v28 = 2114;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Preparing %{public}@ record with name: %{public}@ for change of type %{public}@ to save to the server with updated keys: <%{public}@>", &v22, 0x2Au);
  }

  v16 = [(WBBookmarkSyncData *)self->_syncData modifiedAttributeMask];
  if (v9 != v16)
  {
    v17 = v16 ^ v9;
    v18 = (v16 ^ v9) & v9;
    if ((v17 & v16) != 0 && (v19 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(), os_log_type_enabled(v19, OS_LOG_TYPE_ERROR)))
    {
      sub_100023804(v19);
      if (!v18)
      {
        goto LABEL_12;
      }
    }

    else if (!v18)
    {
      goto LABEL_12;
    }

    v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10002389C(v20);
    }
  }

LABEL_12:
  if (v7)
  {
    [(CloudBookmark *)self _updateRecordParentAndPositionWithUpdater:v6];
  }

  if ([v8 count])
  {
    [(CloudBookmark *)self _updateRecordWithModifiedAttributes:v8 updater:v6];
    v7 = 1;
  }

  return v7 & 1;
}

- (id)_createRecordIDWithName:(id)a3 updater:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [CKRecordID alloc];
  v8 = [v5 bookmarksRecordZoneID];

  v9 = [v7 initWithRecordName:v6 zoneID:v8];

  return v9;
}

- (id)_createRecordWithRecordName:(id)a3 updater:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CKRecord alloc];
  v9 = [(CloudBookmarkItemConfiguration *)self->_configuration recordType];
  v10 = [(CloudBookmark *)self _createRecordIDWithName:v7 updater:v6];

  v11 = [v8 initWithRecordType:v9 recordID:v10];

  return v11;
}

- (id)_createParentFolderReferenceWithRecordName:(id)a3 updater:(id)a4
{
  v5 = a4;
  v6 = [CKReference alloc];
  v7 = [(CloudBookmark *)self _createRecordIDWithName:self->_parentRecordName updater:v5];

  v8 = [v6 initWithRecordID:v7 action:0];

  return v8;
}

- (unint64_t)duplicateHash
{
  v3 = [(CloudBookmark *)self parentRecordName];
  v4 = [v3 hash];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CloudBookmarkItemConfiguration *)self->_configuration identityHashKeys];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        v10 = [(CloudBookmark *)self modifiedOrLocalValueForKey:*(*(&v12 + 1) + 8 * v9)];
        v4 ^= [v10 hash];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)isDuplicateOfBookmark:(id)a3
{
  v4 = a3;
  configuration = self->_configuration;
  v6 = [v4 configuration];
  LODWORD(configuration) = [(CloudBookmarkItemConfiguration *)configuration isEqual:v6];

  if (configuration && (-[CloudBookmark parentRecordName](self, "parentRecordName"), v7 = objc_claimAutoreleasedReturnValue(), [v4 parentRecordName], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [(CloudBookmarkItemConfiguration *)self->_configuration identityHashKeys];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [(CloudBookmark *)self modifiedOrLocalValueForKey:v15];
          v17 = [v4 modifiedOrLocalValueForKey:v15];
          v18 = [v16 isEqual:v17];

          if (!v18)
          {
            v19 = 0;
            goto LABEL_14;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v19 = 1;
LABEL_14:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)modifiedOrLocalValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(CKRecord *)self->_record changedKeys];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:v4];
    v8 = [v7 attributeRequiresEncryption];
    record = self->_record;
    if (v8)
    {
      v10 = [(CKRecord *)record safari_encryptedValues];
      v11 = [v10 objectForKeyedSubscript:v4];
      v12 = [v7 reverseTransformedValue:v11];
    }

    else
    {
      v10 = [(CKRecord *)record objectForKeyedSubscript:v4];
      v12 = [v7 reverseTransformedValue:v10];
    }
  }

  else
  {
    item = self->_item;
    v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (item)
    {
      if (v15)
      {
        sub_100023934(self);
      }

      v12 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyValueForKey:v4 item:self->_item];
    }

    else
    {
      if (v15)
      {
        sub_10002399C(self);
      }

      v12 = 0;
    }
  }

  return v12;
}

- (id)_transformedModifiedOrLocalValueForKey:(id)a3 isEncrypted:(BOOL *)a4
{
  v6 = a3;
  v7 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:v6];
  *a4 = [v7 attributeRequiresEncryption];
  v8 = [(CKRecord *)self->_record changedKeys];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    record = self->_record;
    if (*a4)
    {
      v11 = [(CKRecord *)record safari_encryptedValues];
      v12 = [v11 objectForKeyedSubscript:v6];
LABEL_8:
      v16 = v12;

      goto LABEL_13;
    }

    v16 = [(CKRecord *)record objectForKeyedSubscript:v6];
  }

  else
  {
    item = self->_item;
    v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (item)
    {
      if (v15)
      {
        sub_100023A04(self);
      }

      v11 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyValueForKey:v6 item:self->_item];
      v12 = [v7 transformedValue:v11];
      goto LABEL_8;
    }

    if (v15)
    {
      sub_100023A6C(self);
    }

    v16 = 0;
  }

LABEL_13:

  return v16;
}

- (id)_modifiedOrLocalParentReferenceWithUpdater:(id)a3
{
  v4 = a3;
  v5 = [(CKRecord *)self->_record changedKeys];
  v6 = [v5 containsObject:@"Position"];

  if (v6)
  {
    v7 = [(CKRecord *)self->_record objectForKeyedSubscript:@"ParentFolder"];
LABEL_7:
    v11 = v7;
    goto LABEL_8;
  }

  item = self->_item;
  v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (item)
  {
    if (v10)
    {
      sub_100023AD4(self);
    }

    v7 = [(CloudBookmark *)self _createParentFolderReferenceWithRecordName:self->_parentRecordName updater:v4];
    goto LABEL_7;
  }

  if (v10)
  {
    sub_100023B3C(self);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (id)_modifiedOrLocalIdentityHashWithUpdater:(id)a3
{
  v4 = a3;
  v5 = [(CKRecord *)self->_record changedKeys];
  v6 = [v5 containsObject:@"IdentityHash"];

  if (v6)
  {
    v7 = [(CKRecord *)self->_record objectForKeyedSubscript:@"IdentityHash"];
LABEL_7:
    v11 = v7;
    goto LABEL_8;
  }

  item = self->_item;
  v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (item)
  {
    if (v10)
    {
      sub_100023BA4(self);
    }

    v7 = [(CloudBookmark *)self _generateIdentityHashUsingUpdater:v4];
    goto LABEL_7;
  }

  if (v10)
  {
    sub_100023C0C(self);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (id)_generateIdentityHashUsingUpdater:(id)a3
{
  v16 = a3;
  v4 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(CloudBookmarkItemConfiguration *)self->_configuration identityHashKeys];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(CloudBookmark *)self modifiedOrLocalValueForKey:v10];
        v12 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForIdentityHashKey:v10];
        if ([v12 isEmptyValue:v11])
        {
          [v4 addObject:&stru_100137BA8];
        }

        else
        {
          v13 = [v12 transformedValue:v11];
          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v16 generateIdentityHashWithComponents:v4];

  return v14;
}

+ (id)_decodedSyncDataInData:(id)a3
{
  v3 = [WBBookmarkSyncData syncDataWithContentsOfData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(WBBookmarkSyncData);
  }

  v6 = v5;

  return v6;
}

- (void)updateLocalItemWithUpdater:(id)a3
{
  v4 = a3;
  if (self->_item)
  {
    v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      recordName = self->_recordName;
      v7 = 138543362;
      v8 = recordName;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Saving record with name %{public}@ locally", &v7, 0xCu);
    }

    [(WBSBookmarkDBAccess *)self->_databaseAccessor setSyncData:[(WBBookmarkSyncData *)self->_syncData encodedBookmarkSyncData] item:self->_item];
    if ([(NSMutableDictionary *)self->_remotelyModifiedAttributes count])
    {
      [(WBSBookmarkDBAccess *)self->_databaseAccessor setModifiedAttributes:self->_remotelyModifiedAttributes item:self->_item];
    }

    [(NSMutableDictionary *)self->_remotelyModifiedAttributes removeAllObjects];
    if (![(CloudBookmarkItemConfiguration *)self->_configuration itemType]&& [(CloudBookmarkItemConfiguration *)self->_configuration itemSubtype]== 1)
    {
      [v4 readingListBookmarkDidUpdate];
    }
  }
}

- (void)saveAssetsIfNeededWithUpdater:(id)a3
{
  v4 = a3;
  remotelyModifiedAssetAttributes = self->_remotelyModifiedAssetAttributes;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001FB54;
  v7[3] = &unk_100132230;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)remotelyModifiedAssetAttributes enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)_loadAttributesForKnownKeysIntoEmptyItemUsingRemoteRecord:(id)a3 updater:(id)a4
{
  v26 = a3;
  v28 = a4;
  v6 = [(CloudBookmarkItemConfiguration *)self->_configuration knownKeys];
  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [v6 allObjects];
    v10 = [v9 componentsJoinedByString:{@", "}];
    recordName = self->_recordName;
    *buf = 138543618;
    v36 = v10;
    v37 = 2114;
    v38 = recordName;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Loading known keys <%{public}@> from remote record with name: %{public}@", buf, 0x16u);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  v13 = v26;
  if (v12)
  {
    v14 = v12;
    v15 = *v31;
    v27 = *v31;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = [(CloudBookmarkItemConfiguration *)self->_configuration generationKeyForKey:v17, v26];
        v19 = [v13 safari_generationForKey:v18];
        if ([v19 isValid])
        {
          v20 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:v17];
          if ([v20 attributeRequiresEncryption])
          {
            v21 = [v13 safari_encryptedValues];
            v22 = [v21 objectForKeyedSubscript:v17];

            v15 = v27;
          }

          else
          {
            v22 = [v13 objectForKeyedSubscript:v17];
          }

          if ([(CloudBookmark *)self _canApplyValue:v22 withGeneration:v19 toAttribute:v17 updater:v28])
          {
            v23 = [objc_opt_class() transformedValueClass];
            v24 = [v23 isEqual:objc_opt_class()];
            v25 = [v20 reverseTransformedValueOrNull:v22];
            if (v24)
            {
              [(NSMutableDictionary *)self->_remotelyModifiedAssetAttributes setObject:v25 forKeyedSubscript:v17];
            }

            else
            {
              [(NSMutableDictionary *)self->_remotelyModifiedAttributes setObject:v25 forKeyedSubscript:v17];

              [(WBBookmarkSyncData *)self->_syncData setGeneration:v19 forKey:v18];
            }

            v13 = v26;
            v15 = v27;
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }
}

- (void)_updateGenerationsForChange:(void *)a3 withDeviceIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(WBSBookmarkDBAccess *)self->_databaseAccessor changeTypeForChange:a3];
  v8 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyModifiedAttributesWithChange:a3];
  v9 = [v8 allKeys];

  v10 = WBBookmarkSyncModifiedAttributesForKeys();
  v11 = [(WBBookmarkSyncData *)self->_syncData modifiedAttributeMask];
  if (!v7 || [(WBSBookmarkDBAccess *)self->_databaseAccessor changeIsMoveChange:a3])
  {
    v10 |= 1uLL;
    [(WBBookmarkSyncData *)self->_syncData incrementGenerationForKey:@"ParentAndPosition" withDeviceIdentifier:v6];
  }

  v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    databaseAccessor = self->_databaseAccessor;
    recordName = self->_recordName;
    v15 = v12;
    v16 = sub_10001CE58(a3, databaseAccessor);
    v17 = WBDescriptionForBookmarkSyncModifiedAttributes();
    v19 = 138543874;
    v20 = recordName;
    v21 = 2114;
    v22 = v16;
    v23 = 2114;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Update generations of record %{public}@ with change of type %{public}@, updated keys <%{public}@>", &v19, 0x20u);
  }

  if ((v11 & ~v10) != 0)
  {
    v18 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100023D0C(v18);
    }
  }

  [(WBBookmarkSyncData *)self->_syncData setModifiedAttributeMask:v10 | v11];
  [(CloudBookmark *)self _updateGenerationsForAttributeKeys:v9 withDeviceIdentifier:v6];
}

- (void)_updateGenerationsForAttributeKeys:(id)a3 withDeviceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(CloudBookmarkItemConfiguration *)self->_configuration generationKeyForKey:*(*(&v15 + 1) + 8 * v13), v15];
        if (([v8 containsObject:v14] & 1) == 0)
        {
          [v8 addObject:v14];
          [(WBBookmarkSyncData *)self->_syncData incrementGenerationForKey:v14 withDeviceIdentifier:v7];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)_updateRecordParentAndPositionWithUpdater:(id)a3
{
  parentRecordName = self->_parentRecordName;
  v5 = a3;
  v6 = [(CloudBookmark *)self _createParentFolderReferenceWithRecordName:parentRecordName updater:v5];
  [(CKRecord *)self->_record setObject:v6 forKeyedSubscript:@"ParentFolder"];

  p_recordName = &self->_recordName;
  v8 = [v5 positionForCloudBookmarkWithRecordName:self->_recordName];

  [(WBBookmarkSyncData *)self->_syncData setPosition:v8];
  v9 = [(WBBookmarkSyncData *)self->_syncData positionDictionaryRepresentation];
  record = self->_record;
  v11 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:@"Position"];
  [(CKRecord *)record safari_setPositionDictionaryRepresentation:v9 usingValueTransformer:v11];

  v12 = [(WBBookmarkSyncData *)self->_syncData generationForKey:@"ParentAndPosition"];
  [(CKRecord *)self->_record safari_setGeneration:v12 forKey:@"ParentAndPosition"];
  v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    recordName = self->_recordName;
    v15 = self->_parentRecordName;
    v17 = 138544130;
    v18 = recordName;
    v19 = 2114;
    v20 = v15;
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Record name: %{public}@, setting parent: %{public}@, generation: %{public}@, position: %{public}@", &v17, 0x2Au);
  }

  if (!v8 && ![CKRecord safari_folderTypeForRecordName:*p_recordName])
  {
    v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100023DA4(p_recordName);
    }
  }
}

- (void)_updateRecordWithModifiedAttributes:(id)a3 updater:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v6 allKeys];
    v11 = [v10 componentsJoinedByString:{@", "}];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Updating locally modified attributes <%{public}@>", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x2020000000;
  v22 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000207C0;
  v19[3] = &unk_100132258;
  v19[4] = self;
  v19[5] = &buf;
  [v6 enumerateKeysAndObjectsUsingBlock:v19];
  v12 = [(WBBookmarkSyncData *)self->_syncData minimumAPIVersion];
  v13 = [(CloudBookmark *)self _computeMinimumSyncAPIVersion];
  if (v13 != v12)
  {
    [(CKRecord *)self->_record safari_setMinimumAPIVersion:v13];
    record = self->_record;
    v15 = [(WBBookmarkSyncData *)self->_syncData generationForKey:@"MinimumAPIVersion"];
    v16 = [v7 deviceIdentifier];
    v17 = [v15 incrementedGenerationWithDeviceIdentifier:v16];
    [(CKRecord *)record safari_setGeneration:v17 forKey:@"MinimumAPIVersion"];
  }

  if (*(*(&buf + 1) + 24) == 1)
  {
    v18 = [(CloudBookmark *)self _generateIdentityHashUsingUpdater:v7];
    [(CKRecord *)self->_record setObject:v18 forKeyedSubscript:@"IdentityHash"];
  }

  _Block_object_dispose(&buf, 8);
}

- (BOOL)_updateRecordWithMissingAttributesWithUpdater:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceIdentifier];
  v6 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyAttributesWithItem:self->_item];
  v7 = +[NSMutableSet set];
  v8 = [(CloudBookmarkItemConfiguration *)self->_configuration canSaveIdentityHashAttributesInDictionary:v6];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100020B54;
  v30[3] = &unk_100132280;
  v30[4] = self;
  v30[5] = &v31;
  v9 = objc_retainBlock(v30);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100020C44;
  v19 = &unk_1001322A8;
  v20 = self;
  v10 = v7;
  v21 = v10;
  v11 = v9;
  v25 = v8;
  v23 = v11;
  v24 = &v26;
  v12 = v5;
  v22 = v12;
  [v6 enumerateKeysAndObjectsUsingBlock:&v16];
  if (*(v27 + 24) == 1)
  {
    v13 = [(CloudBookmark *)self _modifiedOrLocalIdentityHashWithUpdater:v4, v16, v17, v18, v19, v20, v21];
    [(CKRecord *)self->_record setObject:v13 forKeyedSubscript:@"IdentityHash"];
  }

  v14 = *(v32 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v31, 8);

  return v14;
}

- (BOOL)_canApplyValue:(id)a3 withGeneration:(id)a4 toAttribute:(id)a5 updater:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 shouldApplyReference:v10 withGeneration:v11 toAttribute:v12 inRecordWithName:self->_recordName];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (void)_applyPendingReferences:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100020EEC;
  v3[3] = &unk_1001322D0;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
}

- (unint64_t)resultFromMergingRecord:(id)a3 usingUpdater:(id)a4 isLocalUpdateOnly:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v9 = a3;
  v53 = a4;
  v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    recordName = self->_recordName;
    *buf = 138543362;
    v70 = recordName;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Will merge local and remote records. Record name: %{public}@", buf, 0xCu);
  }

  v12 = [(CloudBookmark *)self _resultByMergingMinimumAPIVersionWithRecord:v9];
  if (v12 != 8)
  {
    v68 = 0;
    v12 |= [(CloudBookmark *)self _resultByMergingStateWithRecord:v9 shouldContinueMerge:&v68];
    if (v68)
    {
      v13 = [(CloudBookmark *)self _resultByMergingParentAndPositionWithRecord:v9 usingUpdater:v53];
      if (v5)
      {
        v58 = [(WBBookmarkSyncData *)self->_syncData modifiedAttributeMask];
        if (v58)
        {
          if (v13)
          {
            v48 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              sub_100023EB0();
            }
          }

          else
          {
            v58 &= ~1uLL;
          }
        }
      }

      else
      {
        v58 = 0;
      }

      v54 = v5;
      v18 = v13 | v12;
      v19 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100023EEC();
      }

      v50 = +[NSMutableDictionary dictionary];
      v52 = +[NSMutableDictionary dictionary];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v20 = [(CloudBookmarkItemConfiguration *)self->_configuration knownKeys];
      v60 = [v20 countByEnumeratingWithState:&v64 objects:v75 count:16];
      if (v60)
      {
        v56 = v18;
        v49 = v7;
        v55 = 0;
        v59 = *v65;
        v51 = v9;
        obj = v20;
        do
        {
          for (i = 0; i != v60; i = i + 1)
          {
            if (*v65 != v59)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v64 + 1) + 8 * i);
            if (v5)
            {
              v23 = *(*(&v64 + 1) + 8 * i);
              v24 = WBBookmarkSyncModifiedAttributesForKey();
            }

            else
            {
              v24 = 0;
            }

            v25 = [(CloudBookmarkItemConfiguration *)self->_configuration generationKeyForKey:v22];
            v26 = [(WBBookmarkSyncData *)self->_syncData generationForKey:v25];
            v27 = [v9 safari_generationForKey:v25];
            v28 = [v26 compare:v27];
            if (v28 == -1)
            {
              v34 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                *buf = 138543874;
                v70 = v22;
                v71 = 2114;
                v72 = v26;
                v73 = 2114;
                v74 = v27;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Copy remote value into local record for key: %{public}@ with local generation: %{public}@, remote generation: %{public}@", buf, 0x20u);
              }

              v35 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:v22];
              if ([v35 attributeRequiresEncryption])
              {
                v36 = [v9 safari_encryptedValues];
                v37 = [v36 objectForKeyedSubscript:v22];
              }

              else
              {
                v37 = [v9 objectForKeyedSubscript:v22];
              }

              if ([(CloudBookmark *)self _canApplyValue:v37 withGeneration:v27 toAttribute:v22 updater:v53])
              {
                v58 &= ~v24;
                v38 = [objc_opt_class() transformedValueClass];
                LODWORD(v38) = [v38 isEqual:objc_opt_class()];
                v39 = [v35 reverseTransformedValueOrNull:v37];
                if (v38)
                {
                  [(NSMutableDictionary *)self->_remotelyModifiedAssetAttributes setObject:v39 forKeyedSubscript:v22];
                }

                else
                {
                  [(NSMutableDictionary *)self->_remotelyModifiedAttributes setObject:v39 forKeyedSubscript:v22];

                  [v50 setObject:v27 forKeyedSubscript:v25];
                }
              }

              v5 = v54;

              v9 = v51;
            }

            else if (v28 == 1)
            {
              v30 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                *buf = 138543874;
                v70 = v22;
                v71 = 2114;
                v72 = v26;
                v73 = 2114;
                v74 = v27;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Copy local value into remote record for key: %{public}@ with local generation: %{public}@, remote generation: %{public}@", buf, 0x20u);
              }

              if ((v24 & v58) != 0)
              {
                v31 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v70 = v22;
                  _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Attribute %{public}@ was updated locally but was not saved to the server", buf, 0xCu);
                }
              }

              buf[0] = 0;
              v32 = [(CloudBookmark *)self _transformedModifiedOrLocalValueForKey:v22 isEncrypted:buf];
              if (buf[0] == 1)
              {
                v33 = [v9 safari_encryptedValues];
                [v33 setObject:v32 forKeyedSubscript:v22];

                v5 = v54;
              }

              else
              {
                [v9 setObject:v32 forKeyedSubscript:v22];
              }

              [v52 setObject:v26 forKeyedSubscript:v25];
              v56 |= 1uLL;
              v55 |= [(CloudBookmarkItemConfiguration *)self->_configuration isIdentityHashKey:v22];
            }

            else if (!v28)
            {
              v29 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v70 = v22;
                v71 = 2112;
                v72 = v26;
                v73 = 2112;
                v74 = v27;
                _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "No merging needed for key: %@ with local generation: %@, remote generation: %@", buf, 0x20u);
              }

              if ((v24 & v58) != 0)
              {
                if ([v27 isValid])
                {
                  v58 &= ~v24;
                }

                else
                {
                  v40 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v70 = v22;
                    _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Attribute <%{public}@> expected to be saved to the server has an empty generation", buf, 0xCu);
                  }
                }
              }
            }
          }

          v60 = [obj countByEnumeratingWithState:&v64 objects:v75 count:16];
        }

        while (v60);

        if ((v55 & 1) == 0)
        {
          v7 = v49;
          v18 = v56;
          goto LABEL_60;
        }

        v41 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        v7 = v49;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Update IdentityHash on remote record.", buf, 2u);
        }

        v20 = [(CloudBookmark *)self _modifiedOrLocalIdentityHashWithUpdater:v53];
        [v9 setObject:v20 forKeyedSubscript:@"IdentityHash"];
        v18 = v56;
      }

LABEL_60:
      v42 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        sub_100023F28();
      }

      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_100021A00;
      v63[3] = &unk_1001322F8;
      v63[4] = self;
      [v50 enumerateKeysAndObjectsUsingBlock:v63];
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_100021A10;
      v61[3] = &unk_1001322F8;
      v62 = v9;
      [v52 enumerateKeysAndObjectsUsingBlock:v61];
      if (v54)
      {
        [(WBBookmarkSyncData *)self->_syncData setModifiedAttributeMask:v58];
      }

      objc_storeStrong(&self->_record, v7);
      [(WBBookmarkSyncData *)self->_syncData setRecord:self->_record];
      v12 = v18 | 2;
      v43 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = self->_recordName;
        v45 = v43;
        v46 = sub_10001C04C(v12);
        *buf = 138543618;
        v70 = v44;
        v71 = 2114;
        v72 = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Did finish merging local and remote records with record name: %{public}@. Result: %{public}@", buf, 0x16u);
      }

      goto LABEL_67;
    }

    v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_recordName;
      v16 = v14;
      v17 = sub_10001C04C(v12);
      *buf = 138543618;
      v70 = v15;
      v71 = 2114;
      v72 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Did finish merging local and remote records with record name: %{public}@ due to state changes. Result: %{public}@", buf, 0x16u);
    }

    objc_storeStrong(&self->_record, v7);
    [(WBBookmarkSyncData *)self->_syncData setRecord:self->_record];
  }

LABEL_67:

  return v12;
}

- (unint64_t)_resultByMergingParentAndPositionWithRecord:(id)a3 usingUpdater:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(WBBookmarkSyncData *)self->_syncData generationForKey:@"ParentAndPosition"];
  v10 = [v7 safari_generationForKey:@"ParentAndPosition"];
  v11 = [v9 compare:v10];
  if (v11 == -1)
  {
    v18 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      recordName = self->_recordName;
      v28 = 138543874;
      v29 = recordName;
      v30 = 2114;
      v31 = v9;
      v32 = 2114;
      v33 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Merging parent and position into local record for record Name: %{public}@, local generation: %{public}@, remote generation: %{public}@", &v28, 0x20u);
    }

    v20 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:@"Position"];
    v21 = [v7 safari_positionDictionaryRepresentationUsingValueTransformer:v20];
    [(WBBookmarkSyncData *)self->_syncData setPositionDictionaryRepresentation:v21];

    [(WBBookmarkSyncData *)self->_syncData setGeneration:v10 forKey:@"ParentAndPosition"];
    v22 = [v7 objectForKeyedSubscript:@"ParentFolder"];
    v23 = [v22 recordID];
    v24 = [v23 recordName];
    v25 = [v24 copy];
    parentRecordName = self->_parentRecordName;
    self->_parentRecordName = v25;

    v4 = 6;
  }

  else if (v11 == 1)
  {
    v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = self->_recordName;
      v28 = 138543874;
      v29 = v14;
      v30 = 2114;
      v31 = v9;
      v32 = 2114;
      v33 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Merging parent and position into remote record for record Name: %{public}@, local generation: %{public}@, remote generation: %{public}@", &v28, 0x20u);
    }

    v15 = [(CloudBookmark *)self _modifiedOrLocalParentReferenceWithUpdater:v8];
    v16 = [(WBBookmarkSyncData *)self->_syncData positionDictionaryRepresentation];
    v17 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:@"Position"];
    [v7 safari_setPositionDictionaryRepresentation:v16 usingValueTransformer:v17];

    [v7 setObject:v15 forKeyedSubscript:@"ParentFolder"];
    [v7 safari_setGeneration:v9 forKey:@"ParentAndPosition"];

    v4 = 1;
  }

  else if (!v11)
  {
    v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100023F64(self);
    }

    v4 = 0;
  }

  return v4;
}

- (unint64_t)_resultByMergingMinimumAPIVersionWithRecord:(id)a3
{
  v5 = a3;
  v6 = [v5 safari_minimumAPIVersion];
  if (v6 <= 4)
  {
    v9 = [(WBBookmarkSyncData *)self->_syncData minimumAPIVersion];
    v10 = [(WBBookmarkSyncData *)self->_syncData generationForKey:@"MinimumAPIVersion"];
    v11 = [v5 safari_generationForKey:@"MinimumAPIVersion"];
    v12 = [v10 compare:v11];
    if (v12 == -1)
    {
      v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        recordName = self->_recordName;
        v19 = 138543874;
        v20 = recordName;
        v21 = 2114;
        v22 = v10;
        v23 = 2114;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Merging minimum API version into local record for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@", &v19, 0x20u);
      }

      [(WBBookmarkSyncData *)self->_syncData setMinimumAPIVersion:v6];
      [(WBBookmarkSyncData *)self->_syncData setGeneration:v11 forKey:@"MinimumAPIVersion"];
      v3 = 2;
    }

    else if (v12 == 1)
    {
      v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = self->_recordName;
        v19 = 138543874;
        v20 = v15;
        v21 = 2114;
        v22 = v10;
        v23 = 2114;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Merging minimum API version into remote record for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@", &v19, 0x20u);
      }

      [v5 safari_setMinimumAPIVersion:v9];
      [v5 safari_setGeneration:v10 forKey:@"MinimumAPIVersion"];
      v3 = 1;
    }

    else if (!v12)
    {
      v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (v9 == v6)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_100024034(self);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100023FCC(self);
      }

      v3 = 0;
    }
  }

  else
  {
    v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_recordName;
      v19 = 138543874;
      v20 = v8;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = 4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Did finish merging local and remote records with record name: %{public}@. Local record will be deleted because its minimum API version %zd is higher than the API version %zd supported by this client.", &v19, 0x20u);
    }

    v3 = 8;
  }

  return v3;
}

- (unint64_t)_resultByMergingStateWithRecord:(id)a3 shouldContinueMerge:(BOOL *)a4
{
  v6 = a3;
  v7 = [(WBBookmarkSyncData *)self->_syncData generationForKey:@"Deleted"];
  v8 = [v6 safari_generationForKey:@"Deleted"];
  v9 = [v7 compare:v8];
  v10 = [(CloudBookmark *)self state];
  if (v10 == [v6 safari_state])
  {
    goto LABEL_2;
  }

  if (v9 == -1)
  {
LABEL_11:
    if (v10 == 1)
    {
      item = self->_item;
      v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
      if (item)
      {
        if (v18)
        {
          recordName = self->_recordName;
          *v36 = 138543874;
          *&v36[4] = recordName;
          *&v36[12] = 2114;
          *&v36[14] = v7;
          *&v36[22] = 2114;
          v37 = v8;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Server previously told us the record was deleted, now it is undeleted. Mark the record %{public}@ as moved and continue merging: local generation: %{public}@, remote generation: %{public}@", v36, 0x20u);
        }

        *a4 = 1;
        [(CloudBookmark *)self setState:0];
        [(WBBookmarkSyncData *)self->_syncData setGeneration:v8 forKey:@"Deleted"];
        self = 4;
      }

      else
      {
        if (v18)
        {
          v32 = self->_recordName;
          *v36 = 138543874;
          *&v36[4] = v32;
          *&v36[12] = 2114;
          *&v36[14] = v7;
          *&v36[22] = 2114;
          v37 = v8;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Local record needs to be undeleted for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@", v36, 0x20u);
        }

        *a4 = 0;
        self = 16;
      }
    }

    else
    {
      v26 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = self->_recordName;
        *v36 = 138543874;
        *&v36[4] = v27;
        *&v36[12] = 2114;
        *&v36[14] = v7;
        *&v36[22] = 2114;
        v37 = v8;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Local record needs to be deleted for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@", v36, 0x20u);
      }

      *a4 = 1;
      [(CloudBookmark *)self setState:1];
      [(WBBookmarkSyncData *)self->_syncData setGeneration:v8 forKey:@"Deleted"];
      self = 8;
    }

    goto LABEL_45;
  }

  if (v9 == 1)
  {
    v21 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v10 == 1)
    {
      if (v22)
      {
        v23 = self->_recordName;
        *v36 = 138543874;
        *&v36[4] = v23;
        *&v36[12] = 2114;
        *&v36[14] = v7;
        *&v36[22] = 2114;
        v37 = v8;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Remote record needs to be deleted for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@", v36, 0x20u);
      }

      *a4 = 0;
      self = 1;
      v24 = v6;
      v25 = 1;
    }

    else
    {
      if (v22)
      {
        v31 = self->_recordName;
        *v36 = 138543874;
        *&v36[4] = v31;
        *&v36[12] = 2114;
        *&v36[14] = v7;
        *&v36[22] = 2114;
        v37 = v8;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Remote record needs to be undeleted for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@", v36, 0x20u);
      }

      self = 1;
      *a4 = 1;
      v24 = v6;
      v25 = 0;
    }

    [v24 safari_setState:v25];
    [v6 safari_setGeneration:v7 forKey:@"Deleted"];
    goto LABEL_45;
  }

  if (!v9)
  {
    v15 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v35 = v15;
      *v36 = 134218754;
      *&v36[4] = [(CloudBookmark *)self state];
      *&v36[12] = 2114;
      *&v36[14] = v7;
      *&v36[22] = 2048;
      v37 = [v6 safari_state];
      v38 = 2114;
      v39 = v8;
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Local and remote state generations are equal even though their states are different. Local Deleted: %ld, generation: %{public}@, Remote Deleted %ld, generation: %{public}@", v36, 0x2Au);
    }

    goto LABEL_11;
  }

LABEL_2:
  if (v10 == 1)
  {
    *a4 = 0;
    v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v12 = v11;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = self->_recordName;
        *v36 = 138543874;
        *&v36[4] = v13;
        *&v36[12] = 2114;
        *&v36[14] = v7;
        *&v36[22] = 2114;
        v37 = v8;
        v14 = "Both local and remote records are deleted but remote record state generation needs to be updated for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v14, v36, 0x20u);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v34 = self->_recordName;
      *v36 = 138543874;
      *&v36[4] = v34;
      *&v36[12] = 2114;
      *&v36[14] = v7;
      *&v36[22] = 2114;
      v37 = v8;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Both remote and local records are deleted and remote generation does not need to be updated for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@", v36, 0x20u);
    }

    goto LABEL_23;
  }

  *a4 = 1;
  if (v9 == -1)
  {
    v29 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = self->_recordName;
      *v36 = 138543874;
      *&v36[4] = v30;
      *&v36[12] = 2114;
      *&v36[14] = v7;
      *&v36[22] = 2114;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Updating local state generation for record Name: %{public}@, local state generation: %{public}@, remote state generation: %{public}@", v36, 0x20u);
    }

    [(WBBookmarkSyncData *)self->_syncData setGeneration:v8 forKey:@"Deleted"];
    self = 2;
  }

  else
  {
    if (v9 == 1)
    {
      v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v28 = self->_recordName;
        *v36 = 138543874;
        *&v36[4] = v28;
        *&v36[12] = 2114;
        *&v36[14] = v7;
        *&v36[22] = 2114;
        v37 = v8;
        v14 = "Updating remote state generation for record Name: %{public}@, local state generation: %{public}@, remote state generation: %{public}@";
        goto LABEL_33;
      }

LABEL_34:
      [v6 safari_setGeneration:v7 forKey:{@"Deleted", *v36, *&v36[16], v37}];
      self = 1;
      goto LABEL_45;
    }

    if (!v9)
    {
      v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_10002409C();
      }

LABEL_23:
      self = 0;
    }
  }

LABEL_45:

  return self;
}

@end