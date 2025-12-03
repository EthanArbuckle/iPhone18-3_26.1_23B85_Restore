@interface CloudBookmarkPendingReferenceManager
- (BOOL)shouldApplyReference:(id)reference withGeneration:(id)generation toAttribute:(id)attribute inRecordWithName:(id)name;
- (CloudBookmarkPendingReferenceManager)initWithDatabase:(void *)database databaseAccessor:(id)accessor;
- (void)applyAllPendingReferencesWithUpdater:(id)updater;
- (void)dealloc;
@end

@implementation CloudBookmarkPendingReferenceManager

- (CloudBookmarkPendingReferenceManager)initWithDatabase:(void *)database databaseAccessor:(id)accessor
{
  accessorCopy = accessor;
  v13.receiver = self;
  v13.super_class = CloudBookmarkPendingReferenceManager;
  v8 = [(CloudBookmarkPendingReferenceManager *)&v13 init];
  if (v8)
  {
    v8->_databaseRef = CFRetain(database);
    objc_storeStrong(&v8->_databaseAccessor, accessor);
    v9 = +[NSMutableDictionary dictionary];
    pendingReferences = v8->_pendingReferences;
    v8->_pendingReferences = v9;

    v11 = v8;
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
  v4.super_class = CloudBookmarkPendingReferenceManager;
  [(CloudBookmarkPendingReferenceManager *)&v4 dealloc];
}

- (BOOL)shouldApplyReference:(id)reference withGeneration:(id)generation toAttribute:(id)attribute inRecordWithName:(id)name
{
  referenceCopy = reference;
  generationCopy = generation;
  attributeCopy = attribute;
  nameCopy = name;
  recordID = [referenceCopy recordID];
  recordName = [recordID recordName];

  if ([recordName length])
  {
    v16 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithServerId:recordName database:self->_databaseRef];
    v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v16)
    {
      if (v18)
      {
        *buf = 138544130;
        v32 = recordName;
        v33 = 2114;
        v34 = generationCopy;
        v35 = 2114;
        v36 = attributeCopy;
        v37 = 2114;
        v38 = nameCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Did find referenced record: %{public}@ generation: %{public}@ for attribute: %{public}@ in record: %{public}@", buf, 0x2Au);
      }

      CFRelease(v16);
      v19 = 1;
    }

    else
    {
      if (v18)
      {
        *buf = 138544130;
        v32 = recordName;
        v33 = 2114;
        v34 = generationCopy;
        v35 = 2114;
        v36 = attributeCopy;
        v37 = 2114;
        v38 = nameCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Could not find referenced record: %{public}@ generation: %{public}@ for attribute: %{public}@ in record: %{public}@", buf, 0x2Au);
      }

      v21 = [(NSMutableDictionary *)self->_pendingReferences objectForKeyedSubscript:nameCopy];
      if (!v21)
      {
        v21 = +[NSMutableDictionary dictionary];
        [(NSMutableDictionary *)self->_pendingReferences setObject:v21 forKeyedSubscript:nameCopy];
      }

      v22 = [v21 objectForKeyedSubscript:attributeCopy];
      if (v22)
      {
        v23 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v26 = v23;
          first = [v22 first];
          recordID2 = [first recordID];
          recordName2 = [recordID2 recordName];
          second = [v22 second];
          *buf = 138544642;
          v32 = recordName2;
          v33 = 2114;
          v34 = second;
          v35 = 2114;
          v36 = recordName;
          v37 = 2114;
          v38 = generationCopy;
          v39 = 2114;
          v40 = attributeCopy;
          v41 = 2114;
          v42 = nameCopy;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Overriding previous referenced record : %{public}@ generation: %{public}@ with referenced record: %{public}@ generation: %{public}@ for attribute: %{public}@ in record: %{public}@", buf, 0x3Eu);
        }
      }

      v24 = [[WBSPair alloc] initWithFirst:referenceCopy second:generationCopy];
      [v21 setObject:v24 forKeyedSubscript:attributeCopy];

      v19 = 0;
    }
  }

  else
  {
    v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v19 = 1;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      v32 = generationCopy;
      v33 = 2114;
      v34 = attributeCopy;
      v35 = 2114;
      v36 = nameCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Clearing referenced record with generation: %{public}@ for attribute: %{public}@ in record: %{public}@", buf, 0x20u);
    }
  }

  return v19;
}

- (void)applyAllPendingReferencesWithUpdater:(id)updater
{
  updaterCopy = updater;
  pendingReferences = self->_pendingReferences;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A594C;
  v7[3] = &unk_100135A68;
  v7[4] = self;
  v8 = updaterCopy;
  v6 = updaterCopy;
  [(NSMutableDictionary *)pendingReferences enumerateKeysAndObjectsUsingBlock:v7];
}

@end