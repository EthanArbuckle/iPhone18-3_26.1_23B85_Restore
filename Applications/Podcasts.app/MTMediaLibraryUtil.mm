@interface MTMediaLibraryUtil
+ (BOOL)isDeletingPersistentId:(unint64_t)a3;
+ (id)pendingDeletionPersistentIds;
+ (void)deleteMediaItems:(id)a3 completion:(id)a4;
+ (void)didDeletePersistentId:(unint64_t)a3;
+ (void)updateMediaLibraryItem:(unint64_t)a3 playhead:(double)a4 playState:(int64_t)a5 playCount:(int64_t)a6;
+ (void)willDeletePersistentId:(unint64_t)a3;
@end

@implementation MTMediaLibraryUtil

+ (void)updateMediaLibraryItem:(unint64_t)a3 playhead:(double)a4 playState:(int64_t)a5 playCount:(int64_t)a6
{
  if (a3)
  {
    v10 = +[MTMediaLibraryTransactionManager sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000C71D4;
    v11[3] = &unk_1004DB580;
    v11[4] = a3;
    *&v11[5] = a4;
    v11[6] = a5;
    v11[7] = a6;
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

+ (BOOL)isDeletingPersistentId:(unint64_t)a3
{
  v5 = [a1 pendingDeletionPersistentIds];
  objc_sync_enter(v5);
  v6 = [a1 pendingDeletionPersistentIds];
  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = _MTLogCategoryDownload();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "isDeletingPersistentId %llu", &v11, 0xCu);
    }
  }

  objc_sync_exit(v5);

  return v8;
}

+ (void)willDeletePersistentId:(unint64_t)a3
{
  v5 = [a1 pendingDeletionPersistentIds];
  objc_sync_enter(v5);
  v6 = [a1 pendingDeletionPersistentIds];
  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  [v6 addObject:v7];

  v8 = _MTLogCategoryDownload();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "willDeletePersistentId %llu", &v9, 0xCu);
  }

  objc_sync_exit(v5);
}

+ (void)didDeletePersistentId:(unint64_t)a3
{
  v5 = [a1 pendingDeletionPersistentIds];
  objc_sync_enter(v5);
  v6 = [a1 pendingDeletionPersistentIds];
  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  [v6 removeObject:v7];

  v8 = _MTLogCategoryDownload();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "didDeletePersistentId %llu", &v9, 0xCu);
  }

  objc_sync_exit(v5);
}

+ (void)deleteMediaItems:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _MTLogCategoryMediaLibrary();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v25 = [v5 count];
    v26 = 2114;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deleting %lu pids %{public}@ from MediaLibrary", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
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
  v18 = v6;
  v14 = v6;
  v15 = v8;
  [v13 requestMediaLibraryReadTransaction:v16];
}

@end