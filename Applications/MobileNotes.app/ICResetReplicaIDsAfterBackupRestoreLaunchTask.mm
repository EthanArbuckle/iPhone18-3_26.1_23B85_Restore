@interface ICResetReplicaIDsAfterBackupRestoreLaunchTask
- (void)runOneTimePerBackupRestoreLaunchTask;
@end

@implementation ICResetReplicaIDsAfterBackupRestoreLaunchTask

- (void)runOneTimePerBackupRestoreLaunchTask
{
  v2 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DC418(v2);
  }

  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 workerManagedObjectContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A5DA4;
  v6[3] = &unk_100645E30;
  v7 = v4;
  v5 = v4;
  [v5 performBlockAndWait:v6];
}

@end