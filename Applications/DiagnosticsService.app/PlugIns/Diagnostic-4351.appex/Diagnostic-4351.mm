id archiveFiles(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = +[DSMutableArchive archive];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    while (2)
    {
      v13 = 0;
      v14 = v7;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v25 + 1) + 8 * v13);
        v24 = v14;
        v16 = [v8 addURL:v15 error:&v24];
        v7 = v24;

        if ((v16 & 1) == 0)
        {
          v21 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_100001848(v7, v21);
          }

          v20 = v9;
          goto LABEL_15;
        }

        v13 = v13 + 1;
        v14 = v7;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = v7;

  v18 = DKTemporaryDirectoryURL();
  v23 = v7;
  v19 = [v8 archiveAsTempFileWithTemplate:v6 directory:v18 suffix:@".tar.gz" error:&v23];
  v7 = v23;

  if (!v19)
  {
    v20 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000018C0(v7, v20);
    }

LABEL_15:

    v19 = 0;
  }

  return v19;
}

void sub_1000010C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    if (v6)
    {
      v7 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AWD result: %@", buf, 0xCu);
      }

      v8 = [*(a1 + 32) _extractFilePaths:v6];
      v9 = v8;
      if (!v8)
      {
        v11 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v10 = archiveFiles(v8, @"com.apple.Diagnostics.4351.XXXXXXXX", 0);
      v11 = v10;
      if (!v10)
      {
        goto LABEL_24;
      }

      v29 = v10;
      v12 = [NSArray arrayWithObjects:&v29 count:1];
      v13 = [*(a1 + 32) result];
      [v13 setFiles:v12];

      v14 = [*(a1 + 32) result];
      [v14 setStatusCode:&off_100004270];

      if (![*(a1 + 32) copyForSyncing])
      {
        goto LABEL_24;
      }

      v15 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Copying archive for syncing.", buf, 2u);
      }

      v16 = +[NSFileManager defaultManager];
      v28 = 0;
      v17 = [v16 createDirectoryAtPath:@"/private/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs" withIntermediateDirectories:1 attributes:0 error:&v28];
      v18 = v28;

      if (v17)
      {
        v19 = [v11 lastPathComponent];
        v20 = [@"/private/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs" stringByAppendingPathComponent:v19];
        v21 = [NSURL fileURLWithPath:v20];

        v22 = +[NSFileManager defaultManager];
        v27 = v18;
        v23 = [v22 copyItemAtURL:v11 toURL:v21 error:&v27];
        v24 = v27;

        if ((v23 & 1) == 0)
        {
          v25 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_1000019AC();
          }
        }
      }

      else
      {
        v21 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100001938();
        }

        v24 = v18;
      }
    }

    else
    {
      v26 = [*(a1 + 32) result];
      [v26 setStatusCode:&off_100004258];

      v24 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100001A20();
      }

      v11 = 0;
      v9 = 0;
    }

    goto LABEL_24;
  }

LABEL_25:
  [*(a1 + 32) setFinished:1];
}

void sub_100001848(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ERROR finding log(s): %@", &v2, 0xCu);
}

void sub_1000018C0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ERROR archiving logs: %@", &v2, 0xCu);
}