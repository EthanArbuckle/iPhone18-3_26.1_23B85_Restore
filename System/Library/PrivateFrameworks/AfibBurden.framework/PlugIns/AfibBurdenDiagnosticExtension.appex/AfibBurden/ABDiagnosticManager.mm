@interface ABDiagnosticManager
- (ABDiagnosticManager)initWithDiagnosticName:(id)name loggingDirectoryPath:(id)path;
- (void)performDiagnosticsAndWriteToFile;
@end

@implementation ABDiagnosticManager

- (ABDiagnosticManager)initWithDiagnosticName:(id)name loggingDirectoryPath:(id)path
{
  nameCopy = name;
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = ABDiagnosticManager;
  v9 = [(ABDiagnosticManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_diagnosticName, name);
    objc_storeStrong(&v10->_loggingDirectoryPath, path);
  }

  return v10;
}

- (void)performDiagnosticsAndWriteToFile
{
  v3 = +[NSFileManager defaultManager];
  loggingDirectoryPath = self->_loggingDirectoryPath;
  v27 = NSFileProtectionKey;
  v28 = NSFileProtectionCompleteUnlessOpen;
  v5 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v18 = 0;
  v6 = [v3 createDirectoryAtPath:loggingDirectoryPath withIntermediateDirectories:1 attributes:v5 error:&v18];
  v7 = v18;

  if (v6)
  {
    extractDiagnosticContent = [(ABDiagnosticManager *)self extractDiagnosticContent];
    v9 = ab_get_framework_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (extractDiagnosticContent)
    {
      if (v10)
      {
        *buf = 138543362;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Writing to file", buf, 0xCu);
      }

      v9 = [NSString stringWithFormat:@"%@/%@.txt", self->_loggingDirectoryPath, self->_diagnosticName];
      v17 = 0;
      [extractDiagnosticContent writeToFile:v9 atomically:1 encoding:4 error:&v17];
      v11 = v17;
      v12 = ab_get_framework_log();
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          diagnosticName = self->_diagnosticName;
          *buf = 138544130;
          selfCopy4 = self;
          v21 = 2114;
          v22 = diagnosticName;
          v23 = 2112;
          v24 = v9;
          v25 = 2114;
          v26 = v11;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@]: Error while writing to file (%@): %{public}@", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_diagnosticName;
        *buf = 138543874;
        selfCopy4 = self;
        v21 = 2114;
        v22 = v16;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@]: Wrote diagnostics to file %@", buf, 0x20u);
      }
    }

    else if (v10)
    {
      v15 = self->_diagnosticName;
      *buf = 138543618;
      selfCopy4 = self;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@]: No diagnostic content", buf, 0x16u);
    }
  }

  else
  {
    extractDiagnosticContent = ab_get_framework_log();
    if (os_log_type_enabled(extractDiagnosticContent, OS_LOG_TYPE_ERROR))
    {
      sub_100002C24(self, v7, extractDiagnosticContent);
    }
  }
}

@end