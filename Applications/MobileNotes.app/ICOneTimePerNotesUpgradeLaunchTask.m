@interface ICOneTimePerNotesUpgradeLaunchTask
- (ICOneTimePerNotesUpgradeLaunchTask)init;
- (NSString)lastRunNotesVersionKey;
- (NSString)taskIdentifier;
- (int64_t)lastRunNotesVersion;
- (void)runLaunchTask;
- (void)setLastRunNotesVersion:(int64_t)a3;
@end

@implementation ICOneTimePerNotesUpgradeLaunchTask

- (ICOneTimePerNotesUpgradeLaunchTask)init
{
  v4.receiver = self;
  v4.super_class = ICOneTimePerNotesUpgradeLaunchTask;
  v2 = [(ICOneTimePerNotesUpgradeLaunchTask *)&v4 init];
  if (v2)
  {
    v2->_currentNotesVersion = +[ICCloudSyncingObject currentNotesVersion];
  }

  return v2;
}

- (NSString)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)lastRunNotesVersionKey
{
  v2 = [(ICOneTimePerNotesUpgradeLaunchTask *)self taskIdentifier];
  v3 = [NSString stringWithFormat:@"NotesVersionOfLastRun_%@", v2];

  return v3;
}

- (int64_t)lastRunNotesVersion
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [(ICOneTimePerNotesUpgradeLaunchTask *)self lastRunNotesVersionKey];
  v5 = [v3 integerForKey:v4];

  return v5;
}

- (void)setLastRunNotesVersion:(int64_t)a3
{
  v6 = +[NSUserDefaults standardUserDefaults];
  v5 = [(ICOneTimePerNotesUpgradeLaunchTask *)self lastRunNotesVersionKey];
  [v6 setInteger:a3 forKey:v5];
}

- (void)runLaunchTask
{
  v3 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ICOneTimePerNotesUpgradeLaunchTask *)self taskIdentifier];
    v5 = [NSNumber numberWithLongLong:[(ICOneTimePerNotesUpgradeLaunchTask *)self lastRunNotesVersion]];
    v6 = [NSNumber numberWithLongLong:[(ICOneTimePerNotesUpgradeLaunchTask *)self currentNotesVersion]];
    *buf = 138413314;
    v18 = v4;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v23 = 2080;
    v22 = v6;
    v24 = "[ICOneTimePerNotesUpgradeLaunchTask runLaunchTask]";
    v25 = 1024;
    v26 = 49;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Running launch tasks for Notes versions… {taskIdentifier: %@, lastRunNotesVersion: %@, currentNotesVersion: %@}%s:%d", buf, 0x30u);
  }

  if ([(ICOneTimePerNotesUpgradeLaunchTask *)self lastRunNotesVersion]<= 7)
  {
    v7 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D9F30(self);
    }

    [(ICOneTimePerNotesUpgradeLaunchTask *)self setLastRunNotesVersion:8];
  }

  v8 = [(ICOneTimePerNotesUpgradeLaunchTask *)self lastRunNotesVersion];
  v9 = [(ICOneTimePerNotesUpgradeLaunchTask *)self currentNotesVersion];
  v10 = [(ICOneTimePerNotesUpgradeLaunchTask *)self lastRunNotesVersion];
  v11 = [(ICOneTimePerNotesUpgradeLaunchTask *)self currentNotesVersion];
  if (v8 >= v9)
  {
    if (v10 == v11)
    {
      v15 = os_log_create("com.apple.notes", "LaunchTask");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_1004DA050(self);
      }
    }

    else
    {
      v16 = [(ICOneTimePerNotesUpgradeLaunchTask *)self lastRunNotesVersion];
      if (v16 <= [(ICOneTimePerNotesUpgradeLaunchTask *)self currentNotesVersion])
      {
        return;
      }

      v15 = os_log_create("com.apple.notes", "LaunchTask");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1004D9FB8(self, v15);
      }
    }
  }

  else if (v10 < v11)
  {
    do
    {
      ++v10;
      v12 = os_log_create("com.apple.notes", "LaunchTask");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [(ICOneTimePerNotesUpgradeLaunchTask *)self taskIdentifier];
        v14 = [NSNumber numberWithInteger:v10];
        *buf = 138412546;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Running launch task for Notes version… {taskIdentifier: %@, notesVersion: %@}", buf, 0x16u);
      }

      [(ICOneTimePerNotesUpgradeLaunchTask *)self runTaskForNotesVersion:v10];
      [(ICOneTimePerNotesUpgradeLaunchTask *)self setLastRunNotesVersion:v10];
    }

    while (v10 < [(ICOneTimePerNotesUpgradeLaunchTask *)self currentNotesVersion]);
  }
}

@end