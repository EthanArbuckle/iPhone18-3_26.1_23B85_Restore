@interface MobileMailAppRemovalService
- (id)_disableMailAccounts;
- (id)_recordMailAppUninstalled;
- (id)_removeContentsOfDirectory:(id)a3;
- (id)_removeNanoMailDirectory;
- (void)removeAppWithReply:(id)a3;
@end

@implementation MobileMailAppRemovalService

- (id)_disableMailAccounts
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Will disable mail accounts", buf, 2u);
  }

  v2 = objc_alloc_init(ACAccountStore);
  v17 = kAccountDataclassMail;
  v16 = [v2 accountIdentifiersEnabledForDataclass:?];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = [v16 count];
    *buf = 134217984;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Found %lu account identifiers", buf, 0xCu);
  }

  v18 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v16;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = [v2 accountWithIdentifier:v7];
        v9 = [v8 parentAccount];

        v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
        if (v9)
        {
          if (v10)
          {
            *buf = 138412290;
            v29 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Skipping child account: %@", buf, 0xCu);
          }
        }

        else
        {
          if (v10)
          {
            *buf = 138412290;
            v29 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Disabling %@", buf, 0xCu);
          }

          v11 = +[EFPromise promise];
          v12 = [v11 future];
          [v18 addObject:v12];

          [v8 setEnabled:0 forDataclass:v17];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100001378;
          v20[3] = &unk_100004180;
          v13 = v11;
          v21 = v13;
          v22 = v7;
          [v2 saveAccount:v8 withCompletionHandler:v20];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  v14 = [EFFuture combine:v18];

  return v14;
}

- (id)_removeContentsOfDirectory:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Will remove %@", buf, 0xCu);
  }

  v4 = +[NSFileManager defaultManager];
  v21 = +[EFPromise promise];
  context = objc_autoreleasePoolPush();
  v27 = 0;
  v20 = [v4 contentsOfDirectoryAtPath:v3 error:&v27];
  v5 = v27;
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = [v6 ef_publicDescription];
      sub_100001DB4(v7, buf);
    }

    [v21 finishWithError:v6];
    goto LABEL_26;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v20;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (!v9)
  {

    goto LABEL_23;
  }

  v6 = 0;
  v10 = *v24;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = [v3 stringByAppendingPathComponent:*(*(&v23 + 1) + 8 * i)];
      v22 = 0;
      [v4 removeItemAtPath:v12 error:&v22];
      v13 = v22;
      if ([v13 code] != 4)
      {
        if (!v13)
        {
          goto LABEL_16;
        }

        v14 = v13;

        v6 = v14;
      }

LABEL_16:
    }

    v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  }

  while (v9);

  if (v6)
  {
    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v16 = [v6 ef_publicDescription];
      sub_100001DB4(v16, buf);
    }

    [v21 finishWithError:v6];
    goto LABEL_26;
  }

LABEL_23:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Finished removal of directory", buf, 2u);
  }

  v6 = 0;
  [v21 finishWithResult:v3];
LABEL_26:

  objc_autoreleasePoolPop(context);
  v17 = [v21 future];

  return v17;
}

- (id)_removeNanoMailDirectory
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Will remove NanoMail directory", buf, 2u);
  }

  v8 = 0;
  v2 = [NNMKSyncProvider prepareForSystemAppDeletion:&v8];
  v3 = v8;
  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "NanoMail remove success", buf, 2u);
    }

    v4 = [EFFuture futureWithResult:@"NNMKSyncProvider"];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 ef_publicDescription];
      sub_100001E10(v5, buf);
    }

    v4 = [EFFuture futureWithError:v3];
  }

  v6 = v4;

  return v6;
}

- (id)_recordMailAppUninstalled
{
  [EMDaemonInterface setCachedMailAppIsInstalled:0];

  return [EFFuture futureWithResult:@"_recordMailAppUninstalled"];
}

- (void)removeAppWithReply:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "removeAppWithReply called", buf, 2u);
  }

  v5 = SFTerminateProcessNamed();
  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100001E6C(v5);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Terminated maild", buf, 2u);
  }

  v6 = [(MobileMailAppRemovalService *)self _disableMailAccounts];
  v23[0] = v6;
  v7 = MFMailDirectory();
  v8 = [(MobileMailAppRemovalService *)self _removeContentsOfDirectory:v7];
  v23[1] = v8;
  v9 = [(MobileMailAppRemovalService *)self _removeNanoMailDirectory];
  v23[2] = v9;
  v10 = [(MobileMailAppRemovalService *)self _recordMailAppUninstalled];
  v23[3] = v10;
  v11 = [NSArray arrayWithObjects:v23 count:4];

  v12 = [EFFuture sequence:v11];
  v20 = 0;
  v13 = [v12 result:&v20];
  v14 = v20;
  if ([v13 count] && (+[NSNull null](NSNull, "null"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v13, "containsObject:", v15), v15, (v16 & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Joined future success: %@", buf, 0xCu);
    }

    v18 = 0;
  }

  else
  {
    v17 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v18 = v14;
    if (v17)
    {
      v19 = [v14 ef_publicDescription];
      sub_100001EEC(v19, v13, buf);
      v18 = v14;
    }
  }

  (v4)[2](v4, v18);
}

@end