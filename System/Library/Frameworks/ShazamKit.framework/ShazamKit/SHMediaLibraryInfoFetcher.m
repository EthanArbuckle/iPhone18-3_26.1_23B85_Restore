@interface SHMediaLibraryInfoFetcher
+ (int64_t)libraryStatusForAccountStatus:(int64_t)a3;
- (NSString)currentUserID;
- (void)clearCachedSyncStatus;
- (void)fetchAccountTokensWithAccountInfo:(id)a3 completion:(id)a4;
- (void)fetchLibraryInfoWithCompletionHandler:(id)a3;
- (void)setCurrentUserID:(id)a3;
@end

@implementation SHMediaLibraryInfoFetcher

- (void)fetchLibraryInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[SHCloudContainer sharedContainer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003C45C;
  v7[3] = &unk_10007DE38;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 accountInfoWithCompletionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)fetchAccountTokensWithAccountInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 accountStatus] == 1)
  {
    objc_initWeak(&location, self);
    v8 = +[SHCloudContainer sharedContainer];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003C7BC;
    v11[3] = &unk_10007DE60;
    objc_copyWeak(&v13, &location);
    v12 = v7;
    [v8 fetchUserRecordIDWithCompletionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = +[NSFileManager defaultManager];
    v10 = [v9 ubiquityIdentityToken];

    if (!v10)
    {
      [(SHMediaLibraryInfoFetcher *)self setCurrentUserID:0];
    }

    v7[2](v7);
  }
}

- (NSString)currentUserID
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"SHLibraryAvailabilityListenerUserID"];

  return v3;
}

- (void)setCurrentUserID:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaLibraryInfoFetcher *)self currentUserID];
  if (v4 | v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    v6 = sh_log_object();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "iCloud account has changed, updating current user account id", buf, 2u);
    }

    v7 = +[NSUserDefaults standardUserDefaults];
    [v7 setObject:v4 forKey:@"SHLibraryAvailabilityListenerUserID"];

    if (v5)
    {
      v8 = sh_log_object();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Clear all local data and cache sync status", v11, 2u);
      }

      v9 = [[SHMediaLibraryDataStore alloc] initWithStoreType:1];
      [(SHMediaLibraryDataStore *)v9 deleteAllItems];
      [(SHMediaLibraryInfoFetcher *)self clearCachedSyncStatus];
    }

    v10 = +[NSDistributedNotificationCenter defaultCenter];
    [v10 postNotificationName:SHMediaLibraryAccountChangeNotification object:0 userInfo:0 deliverImmediately:1];
  }
}

- (void)clearCachedSyncStatus
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 firstObject];

  v4 = [v3 stringByAppendingPathComponent:@"com.apple.shazamlibrary.cloud"];
  v31 = 0;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v31];

  if (v6 && v31 == 1)
  {
    v7 = +[NSFileManager defaultManager];
    v30 = 0;
    v8 = [v7 contentsOfDirectoryAtPath:v4 error:&v30];
    v23 = v30;

    if (v8)
    {
      v22 = v4;
      v9 = +[SHCloudContainer sharedContainer];
      v10 = [v9 containerIdentifier];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v21 = v8;
      obj = v8;
      v11 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v27;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v27 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v26 + 1) + 8 * i);
            v16 = [SHLCloudLibraryCache alloc];
            v17 = +[NSUUID UUID];
            v18 = [(SHLCloudLibraryCache *)v16 initWithCallingProcessIdentifier:v15 containerIdentifier:v10 transactionIdentifier:v17];

            v25 = 0;
            LOBYTE(v17) = [(SHLCloudLibraryCache *)v18 resetWithError:&v25];
            v19 = v25;
            if ((v17 & 1) == 0)
            {
              v20 = sh_log_object();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v33 = v10;
                v34 = 2112;
                v35 = v15;
                v36 = 2112;
                v37 = v23;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to reset cache (%@) for %@, error: %@", buf, 0x20u);
              }
            }
          }

          v12 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
        }

        while (v12);
      }

      v4 = v22;
      v8 = v21;
    }

    else
    {
      v10 = sh_log_object();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v23;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "No cached sync status to reset %@", buf, 0xCu);
      }
    }
  }
}

+ (int64_t)libraryStatusForAccountStatus:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_10005D0F8[a3];
  }
}

@end