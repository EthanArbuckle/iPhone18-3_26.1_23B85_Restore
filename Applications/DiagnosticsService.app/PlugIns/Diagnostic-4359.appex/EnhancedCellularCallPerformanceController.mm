@interface EnhancedCellularCallPerformanceController
- (id)_extractFilePaths:(id)paths;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
@end

@implementation EnhancedCellularCallPerformanceController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  CFPreferencesAppSynchronize(@"com.apple.Diagnostics");
  keyExistsAndHasValidFormat = 0;
  [(EnhancedCellularCallPerformanceController *)self setCopyForSyncing:CFPreferencesGetAppBooleanValue(@"Diagnostic-4359.CopyForSyncing", @"com.apple.Diagnostics", &keyExistsAndHasValidFormat) != 0];
  if (!keyExistsAndHasValidFormat)
  {
    [(EnhancedCellularCallPerformanceController *)self setCopyForSyncing:0];
  }

  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    copyForSyncing = [(EnhancedCellularCallPerformanceController *)self copyForSyncing];
    *buf = 67109376;
    v9 = copyForSyncing;
    v10 = 1024;
    v11 = keyExistsAndHasValidFormat;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Copying for syncing: %d, exists: %d", buf, 0xEu);
  }
}

- (void)start
{
  result = [(EnhancedCellularCallPerformanceController *)self result];
  [result setStatusCode:&off_100004240];

  WISServerConsolidateDeviceDiagnostics();
}

- (id)_extractFilePaths:(id)paths
{
  pathsCopy = paths;
  v22 = +[NSMutableArray array];
  v5 = [pathsCopy objectForKeyedSubscript:kWisDiagnosticsFileArray];
  if (!v5)
  {
    result = [(EnhancedCellularCallPerformanceController *)self result];
    [result setStatusCode:&off_100004288];

    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100001B7C();
    }

    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    result2 = [(EnhancedCellularCallPerformanceController *)self result];
    [result2 setStatusCode:&off_1000042A0];

    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100001AFC();
    }

    goto LABEL_24;
  }

  if (![v5 count])
  {
    result3 = [(EnhancedCellularCallPerformanceController *)self result];
    [result3 setStatusCode:&off_1000042B8];

    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100001B3C();
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
    v21 = pathsCopy;
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
          result4 = [(EnhancedCellularCallPerformanceController *)self result];
          [result4 setStatusCode:&off_1000042D0];

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
      pathsCopy = v21;
      goto LABEL_26;
    }

    v6 = v22;
    v22 = 0;
    v5 = v20;
    pathsCopy = v21;
  }

LABEL_25:

LABEL_26:

  return v22;
}

@end