@interface XPCAppRemovalService
- (BOOL)removeDirectoryAtURL:(id)a3 error:(id *)a4;
- (BOOL)removeSharedCacheDirectory:(id *)a3;
- (BOOL)removeSharedDocumentsDirectory:(id *)a3;
- (BOOL)removeSharedImageStoreDirectory:(id *)a3;
- (BOOL)removeSharedLibraryDirectory:(id *)a3;
- (id)errorWithError:(id)a3 code:(int64_t)a4;
- (id)sharedCacheURL;
- (id)sharedDocumentsURL;
- (id)sharedLibraryURL;
- (void)removeAllMediaWithCompletion:(id)a3;
- (void)removeAppWithReply:(id)a3;
@end

@implementation XPCAppRemovalService

- (void)removeAppWithReply:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryAppRemoval();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing Podcasts app resources from the system.", buf, 2u);
  }

  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  *buf = 0;
  v32 = buf;
  v33 = 0x3032000000;
  v34 = sub_100002FD8;
  v35 = sub_100002FE8;
  v36 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100002FF0;
  v28[3] = &unk_10000C570;
  v30 = buf;
  v7 = v6;
  v29 = v7;
  [(XPCAppRemovalService *)self removeAllMediaWithCompletion:v28];
  [INInteraction deleteAllInteractionsWithCompletion:0];
  v8 = +[INRelevantShortcutStore defaultStore];
  [v8 setRelevantShortcuts:&__NSArray0__struct completionHandler:0];

  v9 = +[INUpcomingMediaManager sharedManager];
  v10 = +[NSOrderedSet orderedSet];
  [v9 setSuggestedMediaIntents:v10];

  v11 = _MTLogCategoryAppRemoval();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Remove Image storage.", v27, 2u);
  }

  v26 = 0;
  [(XPCAppRemovalService *)self removeSharedImageStoreDirectory:&v26];
  v12 = v26;
  v13 = _MTLogCategoryAppRemoval();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Remove shared cache.", v27, 2u);
  }

  v25 = v12;
  [(XPCAppRemovalService *)self removeSharedCacheDirectory:&v25];
  v14 = v25;

  v15 = _MTLogCategoryAppRemoval();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Remove shared documents.", v27, 2u);
  }

  v24 = v14;
  [(XPCAppRemovalService *)self removeSharedDocumentsDirectory:&v24];
  v16 = v24;

  v17 = _MTLogCategoryAppRemoval();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Remove shared library.", v27, 2u);
  }

  v23 = v16;
  [(XPCAppRemovalService *)self removeSharedLibraryDirectory:&v23];
  v18 = v23;

  v19 = _MTLogCategoryAppRemoval();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Removing all NanoPreferencesSync defaults.", v27, 2u);
  }

  v20 = [sub_100003050() sharedDefaults];
  [v20 clearPodcastsDefaults];

  v21 = [sub_100003050() sharedDefaults];
  [v21 clearAppActivityStatusDefaultsForBundleID:kMTApplicationBundleIdentifier];

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (!v18)
  {
    v18 = *(v32 + 5);
  }

  _Block_object_dispose(buf, 8);
  v22 = _MTLogCategoryAppRemoval();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Podcasts resources were removed from the system.", buf, 2u);
  }

  v4[2](v4, v18);
}

- (void)removeAllMediaWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _MTLogCategoryAppRemoval();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing all media...", buf, 2u);
  }

  v5 = +[MTMediaLibraryTransactionManager sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000327C;
  v7[3] = &unk_10000C5D8;
  v8 = v3;
  v6 = v3;
  [v5 requestMediaLibraryWriteTransaction:&stru_10000C5B0 completion:v7];
}

- (BOOL)removeSharedImageStoreDirectory:(id *)a3
{
  v5 = +[MTImageStoreConstants defaultImageStoreURL];
  v9 = 0;
  v6 = [(XPCAppRemovalService *)self removeDirectoryAtURL:v5 error:&v9];
  v7 = v9;

  if (a3 && !v6)
  {
    *a3 = [(XPCAppRemovalService *)self errorWithError:v7 code:8];
  }

  return v6;
}

- (BOOL)removeSharedDocumentsDirectory:(id *)a3
{
  v5 = [(XPCAppRemovalService *)self sharedDocumentsURL];
  v9 = 0;
  v6 = [(XPCAppRemovalService *)self removeDirectoryAtURL:v5 error:&v9];
  v7 = v9;

  if (a3 && !v6)
  {
    *a3 = [(XPCAppRemovalService *)self errorWithError:v7 code:4];
  }

  return v6;
}

- (BOOL)removeSharedCacheDirectory:(id *)a3
{
  v5 = [(XPCAppRemovalService *)self sharedCacheURL];
  v9 = 0;
  v6 = [(XPCAppRemovalService *)self removeDirectoryAtURL:v5 error:&v9];
  v7 = v9;

  if (a3 && !v6)
  {
    *a3 = [(XPCAppRemovalService *)self errorWithError:v7 code:5];
  }

  return v6;
}

- (BOOL)removeSharedLibraryDirectory:(id *)a3
{
  v5 = [(XPCAppRemovalService *)self sharedLibraryURL];
  v9 = 0;
  v6 = [(XPCAppRemovalService *)self removeDirectoryAtURL:v5 error:&v9];
  v7 = v9;

  if (a3 && !v6)
  {
    *a3 = [(XPCAppRemovalService *)self errorWithError:v7 code:7];
  }

  return v6;
}

- (BOOL)removeDirectoryAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    v11 = 0;
LABEL_6:
    v13 = _MTLogCategoryAppRemoval();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error removing directory: %{public}@ %{public}@", buf, 0x16u);
    }

    v12 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if ((v8 & 1) == 0)
  {
    v13 = _MTLogCategoryAppRemoval();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipping removal of directory that does not exist: %{public}@", buf, 0xCu);
    }

    v11 = 0;
    v12 = 1;
    goto LABEL_12;
  }

  v9 = +[NSFileManager defaultManager];
  v16 = 0;
  v10 = [v9 removeItemAtURL:v5 error:&v16];
  v11 = v16;

  if ((v10 & 1) == 0)
  {
    if (a4 && v11)
    {
      v15 = v11;
      *a4 = v11;
    }

    goto LABEL_6;
  }

  v12 = 1;
LABEL_13:

  return v12;
}

- (id)sharedDocumentsURL
{
  v2 = +[MTConstants sharedContainerURL];
  v3 = [v2 URLByAppendingPathComponent:kMTLibraryDocumentsPath isDirectory:1];

  return v3;
}

- (id)sharedCacheURL
{
  v2 = +[MTConstants sharedContainerURL];
  v3 = [v2 URLByAppendingPathComponent:kMTLibraryCachePath isDirectory:1];

  return v3;
}

- (id)sharedLibraryURL
{
  v2 = +[MTConstants sharedContainerURL];
  v3 = [v2 URLByAppendingPathComponent:kMTLibraryLibraryPath isDirectory:1];

  return v3;
}

- (id)errorWithError:(id)a3 code:(int64_t)a4
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [v5 userInfo];

  if (v7)
  {
    v8 = [v5 userInfo];
    [v6 addEntriesFromDictionary:v8];
  }

  v9 = [v5 domain];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [v5 domain];
    [v6 setObject:v11 forKeyedSubscript:@"originalDomain"];

    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 code]);
    [v6 setObject:v12 forKeyedSubscript:@"originalCode"];
  }

  v13 = [NSError errorWithDomain:@"com.apple.podcasts.appremoval" code:a4 userInfo:v6];

  return v13;
}

@end