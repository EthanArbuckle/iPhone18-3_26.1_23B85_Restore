@interface ICOneTimePerOSUpgradeLaunchTask
- (NSString)currentOSVersion;
- (NSString)lastRunOSVersion;
- (id)taskIdentifier;
- (id)taskKey;
- (void)runLaunchTask;
@end

@implementation ICOneTimePerOSUpgradeLaunchTask

- (void)runLaunchTask
{
  lastRunOSVersion = [(ICOneTimePerOSUpgradeLaunchTask *)self lastRunOSVersion];
  taskKey = [(ICOneTimePerOSUpgradeLaunchTask *)self taskKey];
  v5 = [NSString stringWithFormat:@"%@_AttemptCounter", taskKey];
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 integerForKey:v5];

  currentOSVersion = [(ICOneTimePerOSUpgradeLaunchTask *)self currentOSVersion];
  if ([currentOSVersion isEqualToString:lastRunOSVersion])
  {
    v9 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v19 = objc_opt_class();
      v20 = 2112;
      v21 = lastRunOSVersion;
      v22 = 2112;
      v23 = currentOSVersion;
      v24 = 2112;
      v25 = taskKey;
      v10 = "Already ran one time per upgrade launch task %@ (last=%@ current=%@, taskKey=%@)";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, buf, 0x2Au);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v11 = +[ICCloudConfiguration sharedConfiguration];
  launchTaskMaxRetries = [v11 launchTaskMaxRetries];

  if (v7 >= launchTaskMaxRetries)
  {
    v9 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218754;
      v19 = v7;
      v20 = 2048;
      v21 = launchTaskMaxRetries;
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = objc_opt_class();
      v10 = "Reached maximum attempts (%lu/%lu/%@) to run one time per upgrade launch task (%@)";
      goto LABEL_13;
    }

LABEL_16:

    goto LABEL_17;
  }

  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = v7 + 1;
  [v13 setInteger:v14 forKey:v5];

  v15 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219010;
    v19 = v14;
    v20 = 2048;
    v21 = launchTaskMaxRetries;
    v22 = 2112;
    v23 = objc_opt_class();
    v24 = 2112;
    v25 = lastRunOSVersion;
    v26 = 2112;
    v27 = currentOSVersion;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Attempt %lu/%lu to run one time per upgrade launch task (%@) (last=%@ current=%@)", buf, 0x34u);
  }

  runOneTimePerUpgradeLaunchTask = [(ICOneTimePerOSUpgradeLaunchTask *)self runOneTimePerUpgradeLaunchTask];
  v17 = os_log_create("com.apple.notes", "LaunchTask");
  v9 = v17;
  if (!runOneTimePerUpgradeLaunchTask)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1004DFFE4(self, v9);
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0070(self, v9);
  }

  v9 = +[NSUserDefaults standardUserDefaults];
  [v9 setObject:currentOSVersion forKey:taskKey];
LABEL_17:
}

- (NSString)lastRunOSVersion
{
  taskKey = [(ICOneTimePerOSUpgradeLaunchTask *)self taskKey];
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 stringForKey:taskKey];

  return v4;
}

- (NSString)currentOSVersion
{
  v6 = 0uLL;
  v2 = +[NSProcessInfo processInfo];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  else
  {
    v6 = 0uLL;
  }

  v4 = [NSString stringWithFormat:@"%ld-%ld-%ld", v6, 0];

  return v4;
}

- (id)taskKey
{
  taskIdentifier = [(ICOneTimePerOSUpgradeLaunchTask *)self taskIdentifier];
  v3 = [NSString stringWithFormat:@"OSVersionStringOfLastRun_%@", taskIdentifier];

  return v3;
}

- (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end