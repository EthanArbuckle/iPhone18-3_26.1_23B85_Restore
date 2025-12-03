@interface LogArchiveAggregator
+ (void)_addAWDLogFilesToArchive:(id *)archive;
+ (void)_addCrashLogFilesToArchive:(id *)archive;
+ (void)_addEnhancedLoggingStateFilesToArchive:(id *)archive;
+ (void)_addFiles:(id)files archive:(id *)archive lastPathComponent:(id)component;
+ (void)_addLaunchdLogFilesToArchive:(id *)archive;
+ (void)_addMobileGeneralLogFilesToArchive:(id *)archive;
+ (void)_addPowerLogFilesToArchive:(id *)archive;
+ (void)_addRootGeneralLogFilesToArchive:(id *)archive;
+ (void)addLogTypes:(unint64_t)types archive:(id *)archive prefix:(id)prefix;
@end

@implementation LogArchiveAggregator

+ (void)addLogTypes:(unint64_t)types archive:(id *)archive prefix:(id)prefix
{
  typesCopy = types;
  prefixCopy = prefix;
  v9 = prefixCopy;
  if (prefixCopy)
  {
    v8 = prefixCopy;
  }

  else
  {
    v8 = &stru_1000042B8;
  }

  objc_storeStrong(&qword_100008300, v8);
  if ((typesCopy & 2) != 0)
  {
    [LogArchiveAggregator _addRootGeneralLogFilesToArchive:archive];
    if ((typesCopy & 4) == 0)
    {
LABEL_6:
      if ((typesCopy & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((typesCopy & 4) == 0)
  {
    goto LABEL_6;
  }

  [LogArchiveAggregator _addMobileGeneralLogFilesToArchive:archive];
  if ((typesCopy & 8) == 0)
  {
LABEL_7:
    if ((typesCopy & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  [LogArchiveAggregator _addAWDLogFilesToArchive:archive];
  if ((typesCopy & 0x10) == 0)
  {
LABEL_8:
    if ((typesCopy & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  [LogArchiveAggregator _addCrashLogFilesToArchive:archive];
  if ((typesCopy & 0x20) == 0)
  {
LABEL_9:
    if ((typesCopy & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  [LogArchiveAggregator _addLaunchdLogFilesToArchive:archive];
  if ((typesCopy & 0x40) == 0)
  {
LABEL_10:
    if ((typesCopy & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_20:
  [LogArchiveAggregator _addPowerLogFilesToArchive:archive];
  if (typesCopy < 0)
  {
LABEL_11:
    [LogArchiveAggregator _addEnhancedLoggingStateFilesToArchive:archive];
  }

LABEL_12:
}

+ (void)_addRootGeneralLogFilesToArchive:(id *)archive
{
  v9 = +[NSMutableArray array];
  v4 = +[NSFileManager defaultManager];
  v5 = [NSURL fileURLWithPath:@"/private/var/logs/AppleSupport"];
  v6 = [NSPredicate predicateWithFormat:@"lastPathComponent BEGINSWITH 'general' AND lastPathComponent ENDSWITH '.log'"];
  v7 = [v4 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:&__NSArray0__struct options:1 error:0];
  v8 = [v7 filteredArrayUsingPredicate:v6];
  [v9 addObjectsFromArray:v8];

  [LogArchiveAggregator _addFiles:v9 archive:archive lastPathComponent:@"root"];
}

+ (void)_addMobileGeneralLogFilesToArchive:(id *)archive
{
  v9 = +[NSMutableArray array];
  v4 = +[NSFileManager defaultManager];
  v5 = [NSURL fileURLWithPath:@"/private/var/mobile/Library/Logs/AppleSupport"];
  v6 = [NSPredicate predicateWithFormat:@"lastPathComponent BEGINSWITH 'general' AND lastPathComponent ENDSWITH '.log'"];
  v7 = [v4 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:&__NSArray0__struct options:1 error:0];
  v8 = [v7 filteredArrayUsingPredicate:v6];
  [v9 addObjectsFromArray:v8];

  [LogArchiveAggregator _addFiles:v9 archive:archive lastPathComponent:@"mobile"];
}

+ (void)_addAWDLogFilesToArchive:(id *)archive
{
  v4 = [NSURL fileURLWithPath:@"/private/var/wireless/awdd"];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [LogArchiveAggregator _addFiles:v5 archive:archive lastPathComponent:@"AWD"];
}

+ (void)_addCrashLogFilesToArchive:(id *)archive
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

  [LogArchiveAggregator _addFiles:v17 archive:archive lastPathComponent:0];
}

+ (void)_addLaunchdLogFilesToArchive:(id *)archive
{
  v6 = +[NSFileManager defaultManager];
  v4 = [NSURL fileURLWithPath:@"/private/var/log/com.apple.xpc.launchd"];
  v5 = [v6 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:&__NSArray0__struct options:1 error:0];
  [LogArchiveAggregator _addFiles:v5 archive:archive lastPathComponent:@"launchd"];
}

+ (void)_addPowerLogFilesToArchive:(id *)archive
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
    [LogArchiveAggregator _addFiles:v9 archive:archive lastPathComponent:@"powerlog"];
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

+ (void)_addEnhancedLoggingStateFilesToArchive:(id *)archive
{
  v4 = +[ELSManager sharedManager];
  snapshot = [v4 snapshot];
  jSONObject = [snapshot JSONObject];

  if (jSONObject)
  {
    v7 = NSTemporaryDirectory();
    v8 = [NSURL fileURLWithPath:v7];
    v9 = [v8 URLByAppendingPathComponent:@"enhanced-logging-state.json"];

    v10 = +[NSFileManager defaultManager];
    path = [v9 path];
    v12 = [v10 fileExistsAtPath:path];

    if (v12)
    {
      v13 = +[NSFileManager defaultManager];
      path2 = [v9 path];
      v32 = 0;
      [v13 removeItemAtPath:path2 error:&v32];
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
    [jSONObject writeToURL:v9 options:1 error:&v31];
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
      [LogArchiveAggregator _addFiles:v24 archive:archive lastPathComponent:0];
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

+ (void)_addFiles:(id)files archive:(id *)archive lastPathComponent:(id)component
{
  filesCopy = files;
  componentCopy = component;
  v9 = componentCopy;
  v10 = &stru_1000042B8;
  if (componentCopy)
  {
    v10 = componentCopy;
  }

  v11 = v10;
  v12 = [qword_100008300 stringByAppendingPathComponent:v11];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = filesCopy;
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

        [*archive addURL:*(*(&v18 + 1) + 8 * v17) prefix:v12 error:{0, v18}];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

@end