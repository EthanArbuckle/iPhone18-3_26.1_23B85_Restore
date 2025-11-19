@interface HomeAppRemovalService
- (id)_appSupportDirectoryURL;
- (id)_deleteAllUserDefaults;
- (void)removeAppWithReply:(id)a3;
@end

@implementation HomeAppRemovalService

- (void)removeAppWithReply:(id)a3
{
  v4 = a3;
  v5 = os_log_appremoval();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = @"com.apple.Home";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing User Defaults for %@", buf, 0xCu);
  }

  v6 = [(HomeAppRemovalService *)self _deleteAllUserDefaults];
  if (v6)
  {
    v7 = v6;
    v8 = os_log_appremoval();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = @"com.apple.Home";
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error removing user defaults %@: %@", buf, 0x16u);
    }

    v4[2](v4, v7);
  }

  else
  {
    v9 = [(HomeAppRemovalService *)self _appSupportDirectoryURL];
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = os_log_appremoval();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing App Support Directory @ %@", buf, 0xCu);
    }

    v11 = +[NSFileManager defaultManager];
    v13 = 0;
    [v11 removeItemAtURL:v9 error:&v13];
    v7 = v13;

    if (v7)
    {
      v12 = os_log_appremoval();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v15 = v9;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error removing App Support Directory '%@': %@", buf, 0x16u);
      }

      v4[2](v4, v7);
    }

    else
    {
LABEL_14:
      v4[2](v4, 0);
      v7 = 0;
    }
  }
}

- (id)_deleteAllUserDefaults
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Home"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 dictionaryRepresentation];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = os_log_appremoval();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing User Default key %@", buf, 0xCu);
        }

        [v2 removeObjectForKey:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v6);
  }

  if ([v2 synchronize])
  {
    v11 = 0;
  }

  else
  {
    v18[0] = NSLocalizedDescriptionKey;
    v18[1] = @"BundleId";
    v19[0] = @"Unable to synchronize NSUserDefaults for AppRemoval.";
    v19[1] = @"com.apple.Home";
    v12 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v11 = [NSError errorWithDomain:@"com.apple.Home.appremoval.errorDomain" code:-1 userInfo:v12];
  }

  return v11;
}

- (id)_appSupportDirectoryURL
{
  v2 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v3 = [v2 firstObject];
  v4 = [v3 stringByAppendingPathComponent:@"com.apple.Home"];
  v5 = [NSURL fileURLWithPath:v4 isDirectory:1];
  v6 = 0;
  if ([v5 checkResourceIsReachableAndReturnError:0])
  {
    v6 = v5;
  }

  return v6;
}

@end