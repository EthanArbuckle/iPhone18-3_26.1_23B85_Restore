@interface MTMediaLibraryUtil
+ (BOOL)isDeletingPersistentId:(unint64_t)id;
+ (id)pendingDeletionPersistentIds;
+ (void)deleteMediaItems:(id)items completion:(id)completion;
+ (void)didDeletePersistentId:(unint64_t)id;
+ (void)updateMediaLibraryItem:(unint64_t)item playhead:(double)playhead playState:(int64_t)state playCount:(int64_t)count;
+ (void)willDeletePersistentId:(unint64_t)id;
@end

@implementation MTMediaLibraryUtil

+ (void)updateMediaLibraryItem:(unint64_t)item playhead:(double)playhead playState:(int64_t)state playCount:(int64_t)count
{
  if (item)
  {
    v10 = +[MTMediaLibraryTransactionManager sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000C71D4;
    v11[3] = &unk_1004DB580;
    v11[4] = item;
    *&v11[5] = playhead;
    v11[6] = state;
    v11[7] = count;
    [v10 requestMediaLibraryReadTransaction:v11];
  }
}

+ (id)pendingDeletionPersistentIds
{
  if (qword_100583BE0 != -1)
  {
    sub_1003B2C24();
  }

  v3 = qword_100583BD8;

  return v3;
}

+ (BOOL)isDeletingPersistentId:(unint64_t)id
{
  pendingDeletionPersistentIds = [self pendingDeletionPersistentIds];
  objc_sync_enter(pendingDeletionPersistentIds);
  pendingDeletionPersistentIds2 = [self pendingDeletionPersistentIds];
  v7 = [NSNumber numberWithUnsignedLongLong:id];
  v8 = [pendingDeletionPersistentIds2 containsObject:v7];

  if (v8)
  {
    v9 = _MTLogCategoryDownload();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      idCopy = id;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "isDeletingPersistentId %llu", &v11, 0xCu);
    }
  }

  objc_sync_exit(pendingDeletionPersistentIds);

  return v8;
}

+ (void)willDeletePersistentId:(unint64_t)id
{
  pendingDeletionPersistentIds = [self pendingDeletionPersistentIds];
  objc_sync_enter(pendingDeletionPersistentIds);
  pendingDeletionPersistentIds2 = [self pendingDeletionPersistentIds];
  v7 = [NSNumber numberWithUnsignedLongLong:id];
  [pendingDeletionPersistentIds2 addObject:v7];

  v8 = _MTLogCategoryDownload();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    idCopy = id;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "willDeletePersistentId %llu", &v9, 0xCu);
  }

  objc_sync_exit(pendingDeletionPersistentIds);
}

+ (void)didDeletePersistentId:(unint64_t)id
{
  pendingDeletionPersistentIds = [self pendingDeletionPersistentIds];
  objc_sync_enter(pendingDeletionPersistentIds);
  pendingDeletionPersistentIds2 = [self pendingDeletionPersistentIds];
  v7 = [NSNumber numberWithUnsignedLongLong:id];
  [pendingDeletionPersistentIds2 removeObject:v7];

  v8 = _MTLogCategoryDownload();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    idCopy = id;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "didDeletePersistentId %llu", &v9, 0xCu);
  }

  objc_sync_exit(pendingDeletionPersistentIds);
}

+ (void)deleteMediaItems:(id)items completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  v7 = _MTLogCategoryMediaLibrary();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v25 = [itemsCopy count];
    v26 = 2114;
    v27 = itemsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deleting %lu pids %{public}@ from MediaLibrary", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        +[MTMediaLibraryUtil willDeletePersistentId:](MTMediaLibraryUtil, "willDeletePersistentId:", [*(*(&v19 + 1) + 8 * v12) unsignedLongLongValue]);
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v13 = +[MTMediaLibraryTransactionManager sharedInstance];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C7B5C;
  v16[3] = &unk_1004DB5F0;
  v17 = v8;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = v8;
  [v13 requestMediaLibraryReadTransaction:v16];
}

@end