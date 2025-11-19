uint64_t start()
{
  context = objc_autoreleasePoolPush();
  v0 = _ACLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v33 = getuid();
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Starting accountsd... (uid: %u)", buf, 8u);
  }

  v1 = setiopolicy_np(9, 0, 1);
  if (v1)
  {
    v2 = v1;
    v3 = _ACLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100000E64(v2, v3);
    }
  }

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 URLsForDirectory:5 inDomains:1];
  v6 = [v5 firstObject];

  v7 = [v6 URLByAppendingPathComponent:@"Accounts" isDirectory:1];
  v8 = [v7 URLByAppendingPathComponent:@"Accounts3.sqlite" isDirectory:0];

  v9 = [v8 URLByDeletingLastPathComponent];
  v31 = 0;
  v10 = +[NSFileManager defaultManager];
  v11 = [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v31];

  v12 = v31;
  if ((v11 & 1) == 0)
  {
    v13 = _ACLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100000EDC(v9, v12, v13);
    }

    v14 = +[ACDEventLedger sharedLedger];
    v15 = [NSString stringWithFormat:@"ACDServerCreateDirectory('%@') failed: %@", v9, v12];
    [v14 recordEvent:v15];
  }

  v16 = [[ACDDatabase alloc] initWithDatabaseURL:v8];
  v17 = [[ACDDatabaseBackupActivity alloc] initWithDatabase:v16];
  v29 = v12;
  v18 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.accountsd.accountmanager"];
  v19 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.accountsd.oauthsigner"];
  v20 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.accountsd.oopa"];
  v21 = [[ACDServer alloc] initWithAccountStoreListener:v18 oauthSignerListener:v19 authenticationDialogListener:v20];
  v22 = qword_1000080C0;
  qword_1000080C0 = v21;

  v23 = [ACDAccountNotifier alloc];
  v24 = [[ACDLazyArray alloc] initWithInitializer:&stru_100004148];
  v25 = [v23 initWithNotificationEntries:v24];
  [qword_1000080C0 setAccountNotifier:v25];

  v26 = objc_alloc_init(ACDClientProvider);
  [qword_1000080C0 setClientProvider:v26];

  [qword_1000080C0 setDatabase:v16];
  [qword_1000080C0 setDatabaseBackupActivity:v17];
  [v17 registerActivityIfNeeded];
  [qword_1000080C0 start];

  objc_autoreleasePoolPop(context);
  v27 = +[NSRunLoop mainRunLoop];
  [v27 run];

  return 0;
}

void sub_100000E64(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error setting io policy: %d", v2, 8u);
}

void sub_100000EDC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error creating database directory at %@: %@", &v3, 0x16u);
}