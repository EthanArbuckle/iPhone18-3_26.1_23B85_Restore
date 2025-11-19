@interface XPCAppRemovalService
- (id)_deleteAllUserDefaults;
- (void)removeAppWithReply:(id)a3;
@end

@implementation XPCAppRemovalService

- (void)removeAppWithReply:(id)a3
{
  v4 = a3;
  v5 = sub_100000D2C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100001318();
  }

  v6 = [(XPCAppRemovalService *)self _deleteAllUserDefaults];
  v7 = sub_100000D2C();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      sub_10000139C();
    }

    v4[2](v4, v6);
  }

  else
  {
    if (v8)
    {
      sub_100001410();
    }

    v9 = +[RCSSavedRecordingService sharedService];
    if (v9)
    {
      goto LABEL_10;
    }

    v14[0] = NSLocalizedDescriptionKey;
    v14[1] = @"BundleId";
    v15[0] = @"Unable to connect to RCSSavedRecordingService.  Aborting.";
    v15[1] = RCVoiceMemosBundleID;
    v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v6 = [NSError errorWithDomain:@"com.apple.VoiceMemos.appremoval.errorDomain" code:-1 userInfo:v10];

    if (!v6)
    {
LABEL_10:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100001034;
      v12[3] = &unk_100004160;
      v13 = v4;
      [v9 removeAllUserDataWithCompletion:v12];

      v6 = 0;
    }

    else
    {
      v11 = sub_100000D2C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10000139C();
      }

      v4[2](v4, v6);
    }
  }
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
        v10 = sub_100000D2C();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = v9;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Removing User Default key %@", buf, 0xCu);
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
    v18[0] = NSLocalizedDescriptionKey;
    v18[1] = @"BundleId";
    v19[0] = @"Unable to synchronize NSUserDefaults for AppRemoval.";
    v19[1] = RCVoiceMemosBundleID;
    v12 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v11 = [NSError errorWithDomain:@"com.apple.VoiceMemos.appremoval.errorDomain" code:-1 userInfo:v12];
  }

  return v11;
}

@end