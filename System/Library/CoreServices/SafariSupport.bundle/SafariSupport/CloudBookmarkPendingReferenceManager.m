@interface CloudBookmarkPendingReferenceManager
- (BOOL)shouldApplyReference:(id)a3 withGeneration:(id)a4 toAttribute:(id)a5 inRecordWithName:(id)a6;
- (CloudBookmarkPendingReferenceManager)initWithDatabase:(void *)a3 databaseAccessor:(id)a4;
- (void)applyAllPendingReferencesWithUpdater:(id)a3;
- (void)dealloc;
@end

@implementation CloudBookmarkPendingReferenceManager

- (CloudBookmarkPendingReferenceManager)initWithDatabase:(void *)a3 databaseAccessor:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CloudBookmarkPendingReferenceManager;
  v8 = [(CloudBookmarkPendingReferenceManager *)&v13 init];
  if (v8)
  {
    v8->_databaseRef = CFRetain(a3);
    objc_storeStrong(&v8->_databaseAccessor, a4);
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

- (BOOL)shouldApplyReference:(id)a3 withGeneration:(id)a4 toAttribute:(id)a5 inRecordWithName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 recordID];
  v15 = [v14 recordName];

  if ([v15 length])
  {
    v16 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithServerId:v15 database:self->_databaseRef];
    v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v16)
    {
      if (v18)
      {
        *buf = 138544130;
        v32 = v15;
        v33 = 2114;
        v34 = v11;
        v35 = 2114;
        v36 = v12;
        v37 = 2114;
        v38 = v13;
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
        v32 = v15;
        v33 = 2114;
        v34 = v11;
        v35 = 2114;
        v36 = v12;
        v37 = 2114;
        v38 = v13;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Could not find referenced record: %{public}@ generation: %{public}@ for attribute: %{public}@ in record: %{public}@", buf, 0x2Au);
      }

      v21 = [(NSMutableDictionary *)self->_pendingReferences objectForKeyedSubscript:v13];
      if (!v21)
      {
        v21 = +[NSMutableDictionary dictionary];
        [(NSMutableDictionary *)self->_pendingReferences setObject:v21 forKeyedSubscript:v13];
      }

      v22 = [v21 objectForKeyedSubscript:v12];
      if (v22)
      {
        v23 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v26 = v23;
          v30 = [v22 first];
          v29 = [v30 recordID];
          v27 = [v29 recordName];
          v28 = [v22 second];
          *buf = 138544642;
          v32 = v27;
          v33 = 2114;
          v34 = v28;
          v35 = 2114;
          v36 = v15;
          v37 = 2114;
          v38 = v11;
          v39 = 2114;
          v40 = v12;
          v41 = 2114;
          v42 = v13;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Overriding previous referenced record : %{public}@ generation: %{public}@ with referenced record: %{public}@ generation: %{public}@ for attribute: %{public}@ in record: %{public}@", buf, 0x3Eu);
        }
      }

      v24 = [[WBSPair alloc] initWithFirst:v10 second:v11];
      [v21 setObject:v24 forKeyedSubscript:v12];

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
      v32 = v11;
      v33 = 2114;
      v34 = v12;
      v35 = 2114;
      v36 = v13;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Clearing referenced record with generation: %{public}@ for attribute: %{public}@ in record: %{public}@", buf, 0x20u);
    }
  }

  return v19;
}

- (void)applyAllPendingReferencesWithUpdater:(id)a3
{
  v4 = a3;
  pendingReferences = self->_pendingReferences;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A594C;
  v7[3] = &unk_100135A68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)pendingReferences enumerateKeysAndObjectsUsingBlock:v7];
}

@end