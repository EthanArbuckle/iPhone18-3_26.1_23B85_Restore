@interface LogArchiveAggregator
+ (void)_addAWDLogFilesToArchive:(id *)a3;
+ (void)_addCrashLogFilesToArchive:(id *)a3;
+ (void)_addEnhancedLoggingStateFilesToArchive:(id *)a3;
+ (void)_addFiles:(id)a3 archive:(id *)a4 lastPathComponent:(id)a5;
+ (void)_addLaunchdLogFilesToArchive:(id *)a3;
+ (void)_addMobileGeneralLogFilesToArchive:(id *)a3;
+ (void)_addPowerLogFilesToArchive:(id *)a3;
+ (void)_addRootGeneralLogFilesToArchive:(id *)a3;
+ (void)addLogTypes:(unint64_t)a3 archive:(id *)a4 prefix:(id)a5;
@end

@implementation LogArchiveAggregator

+ (void)addLogTypes:(unint64_t)a3 archive:(id *)a4 prefix:(id)a5
{
  v6 = a3;
  v7 = a5;
  v9 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1000042B8;
  }

  objc_storeStrong(&qword_100008300, v8);
  if ((v6 & 2) != 0)
  {
    [LogArchiveAggregator _addRootGeneralLogFilesToArchive:a4];
    if ((v6 & 4) == 0)
    {
LABEL_6:
      if ((v6 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_6;
  }

  [LogArchiveAggregator _addMobileGeneralLogFilesToArchive:a4];
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  [LogArchiveAggregator _addAWDLogFilesToArchive:a4];
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  [LogArchiveAggregator _addCrashLogFilesToArchive:a4];
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  [LogArchiveAggregator _addLaunchdLogFilesToArchive:a4];
  if ((v6 & 0x40) == 0)
  {
LABEL_10:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_20:
  [LogArchiveAggregator _addPowerLogFilesToArchive:a4];
  if (v6 < 0)
  {
LABEL_11:
    [LogArchiveAggregator _addEnhancedLoggingStateFilesToArchive:a4];
  }

LABEL_12:
}

+ (void)_addRootGeneralLogFilesToArchive:(id *)a3
{
  v9 = +[NSMutableArray array];
  v4 = +[NSFileManager defaultManager];
  v5 = [NSURL fileURLWithPath:@"/private/var/logs/AppleSupport"];
  v6 = [NSPredicate predicateWithFormat:@"lastPathComponent BEGINSWITH 'general' AND lastPathComponent ENDSWITH '.log'"];
  v7 = [v4 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:&__NSArray0__struct options:1 error:0];
  v8 = [v7 filteredArrayUsingPredicate:v6];
  [v9 addObjectsFromArray:v8];

  [LogArchiveAggregator _addFiles:v9 archive:a3 lastPathComponent:@"root"];
}

+ (void)_addMobileGeneralLogFilesToArchive:(id *)a3
{
  v9 = +[NSMutableArray array];
  v4 = +[NSFileManager defaultManager];
  v5 = [NSURL fileURLWithPath:@"/private/var/mobile/Library/Logs/AppleSupport"];
  v6 = [NSPredicate predicateWithFormat:@"lastPathComponent BEGINSWITH 'general' AND lastPathComponent ENDSWITH '.log'"];
  v7 = [v4 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:&__NSArray0__struct options:1 error:0];
  v8 = [v7 filteredArrayUsingPredicate:v6];
  [v9 addObjectsFromArray:v8];

  [LogArchiveAggregator _addFiles:v9 archive:a3 lastPathComponent:@"mobile"];
}

+ (void)_addAWDLogFilesToArchive:(id *)a3
{
  v4 = [NSURL fileURLWithPath:@"/private/var/wireless/awdd"];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [LogArchiveAggregator _addFiles:v5 archive:a3 lastPathComponent:@"AWD"];
}

+ (void)_addCrashLogFilesToArchive:(id *)a3
{
  v19 = +[NSFileManager defaultManager];
  v3 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = [&off_1000046B8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v20 = *v28;
    do
    {
      v4 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(&off_1000046B8);
        }

        v22 = v4;
        v5 = *(*(&v27 + 1) + 8 * v4);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v6 = [&off_1000046D0 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v24;
          do
          {
            v9 = 0;
            do
            {
              if (*v24 != v8)
              {
                objc_enumerationMutation(&off_1000046D0);
              }

              v10 = [*(*(&v23 + 1) + 8 * v9) stringByAppendingString:v5];
              v11 = [NSString stringWithFormat:@"lastPathComponent BEGINSWITH '%@'", v10];
              [v3 addObject:v11];

              v9 = v9 + 1;
            }

            while (v7 != v9);
            v7 = [&off_1000046D0 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v7);
        }

        v12 = [NSString stringWithFormat:@"lastPathComponent BEGINSWITH '%@'", v5];
        [v3 addObject:v12];

        v4 = v22 + 1;
      }

      while ((v22 + 1) != v21);
      v21 = [&off_1000046B8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  [v3 addObject:@"lastPathComponent BEGINSWITH 'JetsamEvent-'"];
  v13 = [v3 componentsJoinedByString:@" OR "];
  v14 = [NSURL fileURLWithPath:@"/private/var/mobile/Library/Logs/CrashReporter"];
  v15 = [v19 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:&__NSArray0__struct options:1 error:0];
  v16 = [NSPredicate predicateWithFormat:v13];
  v17 = [v15 filteredArrayUsingPredicate:v16];

  [LogArchiveAggregator _addFiles:v17 archive:a3 lastPathComponent:0];
}

+ (void)_addLaunchdLogFilesToArchive:(id *)a3
{
  v6 = +[NSFileManager defaultManager];
  v4 = [NSURL fileURLWithPath:@"/private/var/log/com.apple.xpc.launchd"];
  v5 = [v6 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:&__NSArray0__struct options:1 error:0];
  [LogArchiveAggregator _addFiles:v5 archive:a3 lastPathComponent:@"launchd"];
}

+ (void)_addPowerLogFilesToArchive:(id *)a3
{
  v16 = 0;
  v4 = container_system_group_path_for_identifier();
  if (v4)
  {
    v5 = v4;
    v6 = [NSString stringWithCString:v4 encoding:4];
    free(v5);
    if (!v6)
    {
      return;
    }

    v7 = [v6 stringByAppendingPathComponent:@"Library"];

    v8 = [NSURL fileURLWithPath:v7];
    v17 = v8;
    v9 = [NSArray arrayWithObjects:&v17 count:1];
    [LogArchiveAggregator _addFiles:v9 archive:a3 lastPathComponent:@"powerlog"];
  }

  else
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100001BC4(&v16, v7, v10, v11, v12, v13, v14, v15);
    }
  }
}

+ (void)_addEnhancedLoggingStateFilesToArchive:(id *)a3
{
  v4 = +[ELSManager sharedManager];
  v5 = [v4 snapshot];
  v6 = [v5 JSONObject];

  if (v6)
  {
    v7 = NSTemporaryDirectory();
    v8 = [NSURL fileURLWithPath:v7];
    v9 = [v8 URLByAppendingPathComponent:@"enhanced-logging-state.json"];

    v10 = +[NSFileManager defaultManager];
    v11 = [v9 path];
    v12 = [v10 fileExistsAtPath:v11];

    if (v12)
    {
      v13 = +[NSFileManager defaultManager];
      v14 = [v9 path];
      v32 = 0;
      [v13 removeItemAtPath:v14 error:&v32];
      v15 = v32;

      if (v15)
      {
        v16 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100001C34(v15, v16, v17, v18, v19, v20, v21, v22);
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v31 = v15;
    [v6 writeToURL:v9 options:1 error:&v31];
    v23 = v31;

    if (v23)
    {
      v24 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100001CA0(v23, v24, v25, v26, v27, v28, v29, v30);
      }
    }

    else
    {
      v33 = v9;
      v24 = [NSArray arrayWithObjects:&v33 count:1];
      [LogArchiveAggregator _addFiles:v24 archive:a3 lastPathComponent:0];
    }
  }

  else
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100001D0C(v9);
    }
  }
}

+ (void)_addFiles:(id)a3 archive:(id *)a4 lastPathComponent:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  v10 = &stru_1000042B8;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;
  v12 = [qword_100008300 stringByAppendingPathComponent:v11];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*a4 addURL:*(*(&v18 + 1) + 8 * v17) prefix:v12 error:{0, v18}];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

@end