@interface CloudBookmarkChangeProcessor
- (CloudBookmarkChangeProcessor)initWithDatabase:(void *)database databaseAccessor:(id)accessor updater:(id)updater;
- (CloudBookmarkUpdater)updater;
- (id)_createServerSyncIDForItem:(void *)item;
- (void)dealloc;
- (void)processChanges;
@end

@implementation CloudBookmarkChangeProcessor

- (CloudBookmarkChangeProcessor)initWithDatabase:(void *)database databaseAccessor:(id)accessor updater:(id)updater
{
  accessorCopy = accessor;
  updaterCopy = updater;
  v19.receiver = self;
  v19.super_class = CloudBookmarkChangeProcessor;
  v11 = [(CloudBookmarkChangeProcessor *)&v19 init];
  if (v11)
  {
    v11->_databaseRef = CFRetain(database);
    objc_storeStrong(&v11->_databaseAccessor, accessor);
    objc_storeWeak(&v11->_updater, updaterCopy);
    changes = v11->_changes;
    v11->_changes = &__NSArray0__struct;

    v13 = +[NSSet set];
    movedRecordNames = v11->_movedRecordNames;
    v11->_movedRecordNames = v13;

    v15 = +[NSSet set];
    deletedRecordNames = v11->_deletedRecordNames;
    v11->_deletedRecordNames = v15;

    v17 = v11;
  }

  return v11;
}

- (void)dealloc
{
  databaseRef = self->_databaseRef;
  if (databaseRef)
  {
    CFRelease(databaseRef);
  }

  v4.receiver = self;
  v4.super_class = CloudBookmarkChangeProcessor;
  [(CloudBookmarkChangeProcessor *)&v4 dealloc];
}

- (void)processChanges
{
  v60 = 0;
  v3 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyChangesWithDatabase:self->_databaseRef changeToken:&v60];
  v4 = [v3 copy];

  v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10008CDC4(v5, v4, self);
  }

  +[NSMutableDictionary dictionary];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_10008CB6C;
  v49 = v58[3] = &unk_1001354E8;
  v59 = v49;
  v52 = objc_retainBlock(v58);
  v50 = +[NSMutableSet set];
  v51 = +[NSMutableSet set];
  v53 = +[NSMutableSet set];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v55;
    *&v8 = 138543618;
    v48 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v54 + 1) + 8 * i);
        v13 = [(WBSBookmarkDBAccess *)self->_databaseAccessor changeTypeForChange:v12, v48];
        switch(v13)
        {
          case 2u:
            v16 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdWithChange:v12];
            if (![v16 length])
            {
              goto LABEL_42;
            }

            if ([CKRecord safari_folderTypeForRecordName:v16])
            {
              v25 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v62 = v16;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Attempted to delete built-in record with name: %{public}@, ignoring.", buf, 0xCu);
              }

              databaseAccessor = self->_databaseAccessor;
              v27 = +[NSData data];
              [(WBSBookmarkDBAccess *)databaseAccessor setDeletedBookmarkSyncData:v27 change:v12];

              goto LABEL_42;
            }

            v32 = [(NSSet *)v53 containsObject:v16];
            v33 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
            v34 = v33;
            if (v32)
            {
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v62 = v16;
                _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Adding change of type delete for record that has already been processed: %{public}@", buf, 0xCu);
              }
            }

            else
            {
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v62 = v16;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Processing change of type delete for record: %{public}@", buf, 0xCu);
              }

              [(NSSet *)v53 addObject:v16];
            }

            [(NSSet *)v51 addObject:v16];
            goto LABEL_53;
          case 1u:
            if ([(WBSBookmarkDBAccess *)self->_databaseAccessor changeIsMoveChange:v12])
            {
              v21 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyChangedItemWithChange:v12];
              if (!v21)
              {
                v35 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
                if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  continue;
                }

                *buf = 138543362;
                v62 = v12;
                v29 = v35;
                v30 = "Move change %{public}@ was provided without a corresponding changed item.";
                goto LABEL_38;
              }

              v15 = v21;
              v16 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdWithItem:v21];
              if (![v16 length])
              {
                v36 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  *buf = v48;
                  v62 = v15;
                  v63 = 2114;
                  v64 = v12;
                  _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Moved item %{public}@ for change %{public}@ did not have a record ID.", buf, 0x16u);
                }

                CFRelease(v15);
LABEL_42:

                continue;
              }

              v22 = [(NSSet *)v53 containsObject:v16];
              v23 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
              v24 = v23;
              if (v22)
              {
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v62 = v16;
                  _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Adding change of type modify for record that has already been processed: %{public}@", buf, 0xCu);
                }
              }

              else
              {
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  *buf = 138543362;
                  v62 = v16;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Processing change of type modify for record: %{public}@", buf, 0xCu);
                }

                [(NSSet *)v53 addObject:v16];
              }

              v31 = v50;
LABEL_51:
              [(NSSet *)v31 addObject:v16];
              goto LABEL_52;
            }

            break;
          case 0u:
            v14 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyChangedItemWithChange:v12];
            if (!v14)
            {
              v28 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
              if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                continue;
              }

              *buf = 138543362;
              v62 = v12;
              v29 = v28;
              v30 = "Add change %{public}@ was provided without a corresponding changed item.";
LABEL_38:
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);
              continue;
            }

            v15 = v14;
            v16 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdWithItem:v14];
            if (![v16 length])
            {
              v17 = [(CloudBookmarkChangeProcessor *)self _createServerSyncIDForItem:v15];

              [(WBSBookmarkDBAccess *)self->_databaseAccessor setServerId:v17 item:v15];
              v16 = v17;
            }

            v18 = [(NSSet *)v53 containsObject:v16];
            v19 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
            v20 = v19;
            if (!v18)
            {
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v62 = v16;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Processing change of type add for record: %{public}@", buf, 0xCu);
              }

              v31 = v53;
              goto LABEL_51;
            }

            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v62 = v16;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Adding change of type add for record that has already been processed: %{public}@", buf, 0xCu);
            }

LABEL_52:
            v37 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyParentServerIdWithItem:v15];
            (v52[2])(v52, v16, v37);

            CFRelease(v15);
LABEL_53:

            break;
        }

        v38 = self->_databaseAccessor;
        WeakRetained = objc_loadWeakRetained(&self->_updater);
        [CloudBookmark updateSyncDataGenerationsWithChange:v12 databaseAccessor:v38 updater:WeakRetained];
      }

      v9 = [v6 countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v9);
  }

  if (v6)
  {
    v40 = v6;
  }

  else
  {
    v40 = &__NSArray0__struct;
  }

  objc_storeStrong(&self->_changes, v40);
  changeToken = self->_changeToken;
  self->_changeToken = v60;

  movedRecordNames = self->_movedRecordNames;
  self->_movedRecordNames = v50;
  v43 = v50;

  deletedRecordNames = self->_deletedRecordNames;
  self->_deletedRecordNames = v51;
  v45 = v51;

  parentRecordNamesToMovedChildRecordNames = self->_parentRecordNamesToMovedChildRecordNames;
  self->_parentRecordNamesToMovedChildRecordNames = v49;
  v47 = v49;

  [(WBSBookmarkDBAccess *)self->_databaseAccessor saveDatabase:self->_databaseRef];
}

- (id)_createServerSyncIDForItem:(void *)item
{
  if ([(WBSBookmarkDBAccess *)self->_databaseAccessor itemTypeWithItem:?]!= 1)
  {
    goto LABEL_6;
  }

  v5 = [(WBSBookmarkDBAccess *)self->_databaseAccessor folderTypeWithFolder:item];
  if (v5 == 3)
  {
    v6 = &WBSCloudBookmarkListRecordNameReadingList;
    goto LABEL_9;
  }

  if (v5 == 2)
  {
    v6 = &WBSCloudBookmarkListRecordNameBookmarksMenu;
    goto LABEL_9;
  }

  if (v5 != 1)
  {
LABEL_6:
    v7 = +[NSUUID UUID];
    uUIDString = [v7 UUIDString];

    goto LABEL_10;
  }

  v6 = &WBSCloudBookmarkListRecordNameFavoritesBar;
LABEL_9:
  uUIDString = *v6;
LABEL_10:

  return uUIDString;
}

- (CloudBookmarkUpdater)updater
{
  WeakRetained = objc_loadWeakRetained(&self->_updater);

  return WeakRetained;
}

@end