@interface RequestStore
- (RequestStore)initWithFileName:(id)name;
- (id)_filePath;
- (id)_pathWithFileName:(id)name;
- (id)_retrieveFile;
- (id)items;
- (void)_deleteFile;
- (void)_storeFileWithItems:(id)items;
- (void)clearCache;
- (void)storeItems:(id)items;
@end

@implementation RequestStore

- (RequestStore)initWithFileName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = RequestStore;
  v6 = [(RequestStore *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileName, name);
    v8 = dispatch_queue_create("com.apple.AskPermission.RequestStore", 0);
    fileAccessQueue = v7->_fileAccessQueue;
    v7->_fileAccessQueue = v8;
  }

  return v7;
}

- (void)clearCache
{
  v3 = +[APLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v5 = v9;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Clearing cache", buf, 0xCu);
  }

  fileAccessQueue = [(RequestStore *)self fileAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022DC8;
  block[3] = &unk_100054C30;
  block[4] = self;
  dispatch_async(fileAccessQueue, block);
}

- (id)items
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100022FD8;
  v15 = sub_100022FE8;
  v16 = 0;
  fileAccessQueue = [(RequestStore *)self fileAccessQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100022FF0;
  v10[3] = &unk_100054D48;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(fileAccessQueue, v10);

  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [v12[5] count];
    *buf = 138543618;
    v18 = v6;
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching items. Count: %lu", buf, 0x16u);
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)storeItems:(id)items
{
  itemsCopy = items;
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v7 = v13;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Storing items to disk.", buf, 0xCu);
  }

  fileAccessQueue = [(RequestStore *)self fileAccessQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000231B8;
  v10[3] = &unk_100054D70;
  v10[4] = self;
  v11 = itemsCopy;
  v9 = itemsCopy;
  dispatch_async(fileAccessQueue, v10);
}

- (void)_deleteFile
{
  fileAccessQueue = [(RequestStore *)self fileAccessQueue];
  dispatch_assert_queue_V2(fileAccessQueue);

  fileName = [(RequestStore *)self fileName];
  v5 = [(RequestStore *)self _pathWithFileName:fileName];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    _filePath = [(RequestStore *)self _filePath];
    v20 = 0;
    [v6 removeItemAtPath:_filePath error:&v20];
    v8 = v20;

    v9 = +[APLogConfig sharedDaemonConfig];
    oSLogObject2 = v9;
    if (v8)
    {
      if (!v9)
      {
        oSLogObject2 = +[APLogConfig sharedConfig];
      }

      oSLogObject = [oSLogObject2 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v12 = objc_opt_class();
      *buf = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v8;
      v13 = v12;
      v14 = "%{public}@: Error deleting file. Error: %{public}@";
      v15 = oSLogObject;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 22;
    }

    else
    {
      if (!v9)
      {
        oSLogObject2 = +[APLogConfig sharedConfig];
      }

      oSLogObject = [oSLogObject2 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v19 = objc_opt_class();
      *buf = 138543362;
      v22 = v19;
      v13 = v19;
      v14 = "%{public}@: Deleted file succesfully";
      v15 = oSLogObject;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 12;
    }

    _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, v17);

LABEL_16:
    goto LABEL_17;
  }

  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  oSLogObject2 = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v22 = objc_opt_class();
    v18 = v22;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get file path. File already deleted.", buf, 0xCu);
  }

LABEL_17:
}

- (id)_filePath
{
  fileName = [(RequestStore *)self fileName];
  v4 = [(RequestStore *)self _pathWithFileName:fileName];

  return v4;
}

- (id)_pathWithFileName:(id)name
{
  nameCopy = name;
  v4 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  firstObject = [v4 firstObject];

  v6 = [firstObject stringByAppendingPathComponent:@"AskPermission"];
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    goto LABEL_12;
  }

  v9 = +[APLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = objc_opt_class();
    v11 = v22;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Directory path doesn't exist", buf, 0xCu);
  }

  v12 = +[NSFileManager defaultManager];
  v20 = 0;
  [v12 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v20];
  v13 = v20;

  if (!v13)
  {
LABEL_12:
    v18 = [v6 stringByAppendingPathComponent:nameCopy];
  }

  else
  {
    v14 = +[APLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      *buf = 138543618;
      v22 = v16;
      v23 = 2114;
      v24 = v13;
      v17 = v16;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create directory path. Error: %{public}@", buf, 0x16u);
    }

    v18 = 0;
  }

  return v18;
}

- (void)_storeFileWithItems:(id)items
{
  itemsCopy = items;
  fileAccessQueue = [(RequestStore *)self fileAccessQueue];
  dispatch_assert_queue_V2(fileAccessQueue);

  _filePath = [(RequestStore *)self _filePath];

  if (_filePath)
  {
    v26 = 0;
    oSLogObject2 = [NSJSONSerialization dataWithJSONObject:itemsCopy options:0 error:&v26];
    v8 = v26;
    if (!oSLogObject2)
    {
      v13 = +[APLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[APLogConfig sharedConfig];
      }

      oSLogObject = [v13 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        *buf = 138543618;
        v28 = v22;
        v29 = 2114;
        v30 = v8;
        v23 = v22;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Error serializing items. Error: %{public}@", buf, 0x16u);
      }

      goto LABEL_22;
    }

    _filePath2 = [(RequestStore *)self _filePath];
    v25 = v8;
    v10 = [oSLogObject2 writeToFile:_filePath2 options:1 error:&v25];
    v11 = v25;

    v12 = +[APLogConfig sharedDaemonConfig];
    v13 = v12;
    if (v10)
    {
      if (!v12)
      {
        v13 = +[APLogConfig sharedConfig];
      }

      oSLogObject = [v13 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v15 = objc_opt_class();
      *buf = 138543362;
      v28 = v15;
      v16 = v15;
      v17 = "%{public}@: Stored file succesfully";
      v18 = oSLogObject;
      v19 = OS_LOG_TYPE_DEFAULT;
      v20 = 12;
    }

    else
    {
      if (!v12)
      {
        v13 = +[APLogConfig sharedConfig];
      }

      oSLogObject = [v13 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v24 = objc_opt_class();
      *buf = 138543618;
      v28 = v24;
      v29 = 2114;
      v30 = v11;
      v16 = v24;
      v17 = "%{public}@: Error storing file. Error: %{public}@";
      v18 = oSLogObject;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 22;
    }

    _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, v20);

LABEL_21:
    v8 = v11;
LABEL_22:

    goto LABEL_23;
  }

  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  oSLogObject2 = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v28 = objc_opt_class();
    v21 = v28;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get file path", buf, 0xCu);
  }

LABEL_23:
}

- (id)_retrieveFile
{
  fileAccessQueue = [(RequestStore *)self fileAccessQueue];
  dispatch_assert_queue_V2(fileAccessQueue);

  _filePath = [(RequestStore *)self _filePath];

  if (_filePath)
  {
    v5 = [NSData alloc];
    _filePath2 = [(RequestStore *)self _filePath];
    v26 = 0;
    oSLogObject4 = [v5 initWithContentsOfFile:_filePath2 options:0 error:&v26];
    v8 = v26;

    v9 = +[APLogConfig sharedDaemonConfig];
    v10 = v9;
    if (oSLogObject4)
    {
      if (!v9)
      {
        v10 = +[APLogConfig sharedConfig];
      }

      oSLogObject = [v10 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        *buf = 138543362;
        v28 = v12;
        v13 = v12;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrieved file succesfully", buf, 0xCu);
      }

      v25 = v8;
      v10 = [NSJSONSerialization JSONObjectWithData:oSLogObject4 options:0 error:&v25];
      v14 = v25;

      if (v14)
      {
        v15 = +[APLogConfig sharedDaemonConfig];
        if (!v15)
        {
          v15 = +[APLogConfig sharedConfig];
        }

        oSLogObject2 = [v15 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v17 = objc_opt_class();
          *buf = 138543362;
          v28 = v17;
          v18 = v17;
          _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Error decoding file", buf, 0xCu);
        }

        v19 = 0;
        v8 = v14;
      }

      else
      {
        v10 = v10;
        v8 = 0;
        v19 = v10;
      }
    }

    else
    {
      if (!v9)
      {
        v10 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [v10 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        *buf = 138543618;
        v28 = v22;
        v29 = 2114;
        v30 = v8;
        v23 = v22;
        _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: Error retrieving file. Error: %{public}@", buf, 0x16u);
      }

      v19 = 0;
    }
  }

  else
  {
    v8 = +[APLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    oSLogObject4 = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = objc_opt_class();
      v20 = v28;
      _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get file path", buf, 0xCu);
    }

    v19 = 0;
  }

  return v19;
}

@end