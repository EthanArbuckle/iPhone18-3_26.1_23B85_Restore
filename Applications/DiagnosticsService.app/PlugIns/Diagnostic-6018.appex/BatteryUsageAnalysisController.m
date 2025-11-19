@interface BatteryUsageAnalysisController
- (BOOL)createWorkingDirectories;
- (id)archiveLogFile:(id)a3;
- (id)collectLogFile;
- (id)writeCurrentPowerLog;
- (void)enumerateArchivedPowerLogsWithBlock:(id)a3;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)teardown;
@end

@implementation BatteryUsageAnalysisController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v5 = NSTemporaryDirectory();
  v6 = [v5 stringByAppendingString:@"com.apple.DiagnosticsService.Diagnostic-3743"];
  [(BatteryUsageAnalysisController *)self setWorkingDirectory:v6];

  v8 = [(BatteryUsageAnalysisController *)self workingDirectory];
  v7 = [v8 stringByAppendingString:@"/archives/"];
  [(BatteryUsageAnalysisController *)self setArchivesDirectory:v7];
}

- (void)start
{
  if (([(BatteryUsageAnalysisController *)self isCancelled]& 1) == 0 && [(BatteryUsageAnalysisController *)self createWorkingDirectories])
  {
    v3 = [(BatteryUsageAnalysisController *)self collectLogFile];
    if (([(BatteryUsageAnalysisController *)self isCancelled]& 1) == 0 && v3)
    {
      v7 = v3;
      v4 = [NSArray arrayWithObjects:&v7 count:1];
      v5 = [(BatteryUsageAnalysisController *)self result];
      [v5 setFiles:v4];

      v6 = [(BatteryUsageAnalysisController *)self result];
      [v6 setStatusCode:&off_100004338];
    }
  }

  [(BatteryUsageAnalysisController *)self setFinished:1];
}

- (void)teardown
{
  v4 = +[NSFileManager defaultManager];
  v3 = [(BatteryUsageAnalysisController *)self workingDirectory];
  [v4 removeItemAtPath:v3 error:0];
}

- (id)collectLogFile
{
  v30 = 0;
  v31[0] = &v30;
  v31[1] = 0x3032000000;
  v31[2] = sub_100001438;
  v31[3] = sub_100001448;
  v32 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v3 = +[DSMutableArchive archive];
  [v3 setFormat:2];
  v4 = [(BatteryUsageAnalysisController *)self writeCurrentPowerLog];
  if (v4 && ![(BatteryUsageAnalysisController *)self isCancelled])
  {
    v5 = v27;
    if (v27[3])
    {
      v9 = (v31[0] + 40);
      v25 = *(v31[0] + 40);
      v10 = [v3 addURL:v4 prefix:@"PLArchive" error:&v25];
      objc_storeStrong(v9, v25);
      v5 = v27;
      if ((v10 & 1) == 0)
      {
        *(v27 + 24) = 0;
        v11 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000020A0(v31);
        }

        v12 = [DASharedTestStatusHelper statusCodeForArchiveError:*(v31[0] + 40)];
        v13 = [(BatteryUsageAnalysisController *)self result];
        [v13 setStatusCode:v12];

        v5 = v27;
      }
    }
  }

  else
  {
    v5 = v27;
    *(v27 + 24) = 0;
  }

  if (*(v5 + 24) == 1 && ([(BatteryUsageAnalysisController *)self isCancelled]& 1) == 0)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100001450;
    v21[3] = &unk_100004180;
    v21[4] = self;
    v22 = v3;
    v23 = &v30;
    v24 = &v26;
    [(BatteryUsageAnalysisController *)self enumerateArchivedPowerLogsWithBlock:v21];
  }

  if (*(v27 + 24) != 1 || ([(BatteryUsageAnalysisController *)self isCancelled]& 1) != 0)
  {
LABEL_20:
    v8 = 0;
    if (!v4)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v6 = DKTemporaryDirectoryURL();
  v7 = (v31[0] + 40);
  obj = *(v31[0] + 40);
  v8 = [v3 archiveAsTempFileWithTemplate:@"com.apple.behaviorscan.XXXXXXXX" directory:v6 suffix:0 error:&obj];
  objc_storeStrong(v7, obj);

  if (!v8)
  {
    *(v27 + 24) = 0;
    v14 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000211C(v31);
    }

    v15 = [DASharedTestStatusHelper statusCodeForArchiveError:*(v31[0] + 40)];
    v16 = [(BatteryUsageAnalysisController *)self result];
    [v16 setStatusCode:v15];

    goto LABEL_20;
  }

  if (v4)
  {
LABEL_21:
    v17 = +[NSFileManager defaultManager];
    v18 = [v4 path];
    [v17 removeItemAtPath:v18 error:0];
  }

LABEL_22:

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v8;
}

- (id)writeCurrentPowerLog
{
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];
  v5 = [NSString stringWithFormat:@"ID_%@.PLSQL", v4];

  v6 = [(BatteryUsageAnalysisController *)self workingDirectory];
  v7 = [v6 stringByAppendingPathComponent:v5];

  v22 = @"path";
  v23 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v9 = PLQueryRegistered();
  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = @"SafeLogFile";
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Powerlog] PLQueryRegistered[%@], input = %@, output = %@", buf, 0x20u);
  }

  v11 = [v9 objectForKeyedSubscript:@"path"];
  if (v11)
  {
    v12 = [(BatteryUsageAnalysisController *)self archiveLogFile:v11];
    v13 = +[NSFileManager defaultManager];
    [v13 removeItemAtPath:v11 error:0];
  }

  else
  {
    v14 = [(BatteryUsageAnalysisController *)self result];
    [v14 setStatusCode:&off_100004350];

    v13 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100002218();
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)createWorkingDirectories
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(BatteryUsageAnalysisController *)self workingDirectory];
  [v3 removeItemAtPath:v4 error:0];

  v5 = +[NSFileManager defaultManager];
  v6 = [(BatteryUsageAnalysisController *)self archivesDirectory];
  v7 = [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

  if ((v7 & 1) == 0)
  {
    v8 = [(BatteryUsageAnalysisController *)self result];
    [v8 setStatusCode:&off_100004368];

    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100002258();
    }
  }

  return v7;
}

- (void)enumerateArchivedPowerLogsWithBlock:(id)a3
{
  v4 = a3;
  v31 = @"folder";
  v5 = [(BatteryUsageAnalysisController *)self archivesDirectory];
  v32 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];

  v7 = PLQueryRegistered();
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v26 = @"Archives";
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Powerlog] PLQueryRegistered[%@], input = %@, output = %@", buf, 0x20u);
  }

  v9 = [(BatteryUsageAnalysisController *)self archivesDirectory];
  v10 = [v7 objectForKeyedSubscript:@"folder"];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    v24 = v6;
    v12 = +[NSFileManager defaultManager];
    v13 = [(BatteryUsageAnalysisController *)self archivesDirectory];
    v14 = [v12 enumeratorAtPath:v13];

    v15 = [v14 nextObject];
    if (v15)
    {
      v16 = v15;
      do
      {
        v17 = [(BatteryUsageAnalysisController *)self archivesDirectory];
        v18 = [NSString stringWithFormat:@"%@/%@", v17, v16];

        buf[0] = 0;
        v19 = +[NSFileManager defaultManager];
        v20 = [v19 fileExistsAtPath:v18 isDirectory:buf];

        if (v20 && (buf[0] & 1) == 0 && [v16 hasSuffix:@".PLSQL.gz"])
        {
          v21 = [NSURL fileURLWithPath:v18];
          v4[2](v4, v21);
        }

        v22 = [v14 nextObject];

        v16 = v22;
      }

      while (v22);
    }

    v23 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[Powerlog] Gathering archived powerlogs completed successfully", buf, 2u);
    }

    v6 = v24;
  }

  else
  {
    v14 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100002298();
    }
  }
}

- (id)archiveLogFile:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByAppendingString:@".gz"];
  v6 = 6;
  v7 = "[Archive] Attempting to open file for reading.";
  v8 = "[ERROR] Cannot open read file [%@] for reading: (%d) %s";
  while (1)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }

    v10 = fopen([v4 UTF8String], "r");
    [NSThread sleepForTimeInterval:5.0];
    if (v10)
    {
      break;
    }

    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v7;
      v13 = v5;
      v14 = self;
      v15 = v8;
      v16 = *__error();
      v17 = __error();
      v18 = strerror(*v17);
      *buf = 138412802;
      v31 = v4;
      v32 = 1024;
      v33 = v16;
      v8 = v15;
      self = v14;
      v5 = v13;
      v7 = v12;
      v34 = 2080;
      v35 = v18;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v8, buf, 0x1Cu);
    }

    if (--v6 <= 1)
    {
      v25 = [(BatteryUsageAnalysisController *)self result];
      [v25 setStatusCode:&off_1000043B0];

LABEL_18:
      v28 = 0;
      goto LABEL_19;
    }
  }

  v19 = fopen([v5 UTF8String], "w");
  if (!v19)
  {
    v26 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10000234C();
    }

    v27 = [(BatteryUsageAnalysisController *)self result];
    [v27 setStatusCode:&off_100004398];

    goto LABEL_17;
  }

  v20 = v19;
  v21 = CPFileCompressionZDeflate();
  v22 = DiagnosticLogHandleForCategory();
  v23 = v22;
  if (v21)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000022D8();
    }

    v24 = [(BatteryUsageAnalysisController *)self result];
    [v24 setStatusCode:&off_100004380];

    fclose(v20);
LABEL_17:
    fclose(v10);
    goto LABEL_18;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v4;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[Archive] Archive created successfully for file: %@", buf, 0xCu);
  }

  fclose(v20);
  fclose(v10);
  v28 = [NSURL fileURLWithPath:v5];
LABEL_19:

  return v28;
}

@end