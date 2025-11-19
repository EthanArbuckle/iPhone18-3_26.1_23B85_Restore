@interface WiFiPerformanceController
- (id)_extractFilePaths:(id)a3;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
@end

@implementation WiFiPerformanceController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  CFPreferencesAppSynchronize(@"com.apple.Diagnostics");
  keyExistsAndHasValidFormat = 0;
  [(WiFiPerformanceController *)self setCopyForSyncing:CFPreferencesGetAppBooleanValue(@"Diagnostic-4351.CopyForSyncing", @"com.apple.Diagnostics", &keyExistsAndHasValidFormat) != 0];
  if (!keyExistsAndHasValidFormat)
  {
    [(WiFiPerformanceController *)self setCopyForSyncing:0];
  }

  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(WiFiPerformanceController *)self copyForSyncing];
    *buf = 67109376;
    v9 = v6;
    v10 = 1024;
    v11 = keyExistsAndHasValidFormat;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Copying for syncing: %d, exists: %d", buf, 0xEu);
  }
}

- (void)start
{
  v2 = [(WiFiPerformanceController *)self result];
  [v2 setStatusCode:&off_100004240];

  AWDServerConsolidateDeviceDiagnostics();
}

- (id)_extractFilePaths:(id)a3
{
  v4 = a3;
  v22 = +[NSMutableArray array];
  v5 = [v4 objectForKeyedSubscript:kAwdDiagnosticsFileArray];
  if (!v5)
  {
    v15 = [(WiFiPerformanceController *)self result];
    [v15 setStatusCode:&off_100004288];

    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100001B14();
    }

    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [(WiFiPerformanceController *)self result];
    [v17 setStatusCode:&off_1000042A0];

    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100001A94();
    }

    goto LABEL_24;
  }

  if (![v5 count])
  {
    v18 = [(WiFiPerformanceController *)self result];
    [v18 setStatusCode:&off_1000042B8];

    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100001AD4();
    }

LABEL_24:

    v6 = v22;
    v22 = 0;
    goto LABEL_25;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v20 = v5;
    v21 = v4;
    v9 = *v24;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [NSURL fileURLWithPath:v12];
          [v22 addObject:v13];
        }

        else
        {
          v14 = [(WiFiPerformanceController *)self result];
          [v14 setStatusCode:&off_1000042D0];

          v13 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v28 = v12;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "ERROR item in array is not an NSString: %@", buf, 0xCu);
          }

          v10 = 0;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v8);

    if (v10)
    {
      v5 = v20;
      v4 = v21;
      goto LABEL_26;
    }

    v6 = v22;
    v22 = 0;
    v5 = v20;
    v4 = v21;
  }

LABEL_25:

LABEL_26:

  return v22;
}

@end