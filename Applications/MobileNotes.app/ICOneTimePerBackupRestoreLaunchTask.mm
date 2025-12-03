@interface ICOneTimePerBackupRestoreLaunchTask
- (id)completionFileName;
- (id)taskIdentifier;
- (void)runLaunchTask;
@end

@implementation ICOneTimePerBackupRestoreLaunchTask

- (void)runLaunchTask
{
  completionFileName = [(ICOneTimePerBackupRestoreLaunchTask *)self completionFileName];
  v4 = +[ICPaths applicationDocumentsURL];
  v5 = [v4 URLByAppendingPathComponent:completionFileName isDirectory:0];

  v6 = +[NSFileManager defaultManager];
  path = [v5 path];
  v8 = [v6 fileExistsAtPath:path];

  v9 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    path2 = [v5 path];
    v17 = path2;
    v18 = @"NO";
    *buf = 138412802;
    v21 = completionFileName;
    v22 = 2112;
    if (v8)
    {
      v18 = @"YES";
    }

    v23 = path2;
    v24 = 2112;
    v25 = v18;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Running %@ if necessary. Checking file at URL %@, File Exist ? %@", buf, 0x20u);
  }

  v10 = os_log_create("com.apple.notes", "LaunchTask");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v11)
    {
      sub_1004DA83C(completionFileName, v10);
    }
  }

  else
  {
    if (v11)
    {
      sub_1004DA73C(completionFileName, v10);
    }

    [(ICOneTimePerBackupRestoreLaunchTask *)self runOneTimePerBackupRestoreLaunchTask];
    v12 = +[NSFileManager defaultManager];
    path3 = [v5 path];
    v14 = +[NSData data];
    [v12 createFileAtPath:path3 contents:v14 attributes:0];

    v19 = 0;
    LOBYTE(v12) = [v5 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v19];
    v10 = v19;
    if ((v12 & 1) == 0)
    {
      v15 = os_log_create("com.apple.notes", "LaunchTask");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1004DA7B4(v5, v10, v15);
      }
    }
  }
}

- (id)completionFileName
{
  taskIdentifier = [(ICOneTimePerBackupRestoreLaunchTask *)self taskIdentifier];
  v3 = [NSString stringWithFormat:@"completionOfPerBackupRestoreLaunchTask_%@", taskIdentifier];

  return v3;
}

- (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end