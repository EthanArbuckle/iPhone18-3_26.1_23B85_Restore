@interface ICUpdateUserSpecificRecordReferenceActionsLaunchTask
- (void)runLaunchTask;
@end

@implementation ICUpdateUserSpecificRecordReferenceActionsLaunchTask

- (void)runLaunchTask
{
  v3 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E1804(v3);
  }

  [(ICWorkerContextLaunchTask *)self workerContext];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013E2A4;
  v6 = v5[3] = &unk_100645E30;
  v4 = v6;
  [v4 performBlockAndWait:v5];
}

@end