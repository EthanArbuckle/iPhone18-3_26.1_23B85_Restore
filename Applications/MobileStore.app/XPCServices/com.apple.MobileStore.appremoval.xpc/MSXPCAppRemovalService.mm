@interface MSXPCAppRemovalService
- (id)_deleteAllUserDefaults;
- (void)removeAppWithReply:(id)a3;
@end

@implementation MSXPCAppRemovalService

- (void)removeAppWithReply:(id)a3
{
  v4 = a3;
  v5 = OS_LOG_XPCAPPREMOVAL();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100001060(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = [(MSXPCAppRemovalService *)self _deleteAllUserDefaults];
  v14 = OS_LOG_XPCAPPREMOVAL();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (v13)
  {
    if (v15)
    {
      sub_1000010D8(v13, v14, v17, v18, v19, v20, v21, v22);
    }
  }

  else if (v15)
  {
    sub_100001144(v14, v16, v17, v18, v19, v20, v21, v22);
  }

  v4[2](v4, v13);
}

- (id)_deleteAllUserDefaults
{
  v2 = +[NSUserDefaults standardUserDefaults];
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
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = OS_LOG_XPCAPPREMOVAL();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = v9;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Removing user default key: %@", buf, 0xCu);
        }

        [v2 removeObjectForKey:v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
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
    v18 = NSLocalizedDescriptionKey;
    v19 = @"Unable to synchronize NSUserDefaults for AppRemoval.";
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v11 = [NSError errorWithDomain:@"com.apple.MobileStore.appremoval.errorDomain" code:-1 userInfo:v12];
  }

  return v11;
}

@end