@interface ICRegenerateGalleryAttachmentNoteTitlesLaunchTask
- (void)runOneTimeLaunchTask;
@end

@implementation ICRegenerateGalleryAttachmentNoteTitlesLaunchTask

- (void)runOneTimeLaunchTask
{
  v3 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0BD4(v3);
  }

  [(ICWorkerContextLaunchTask *)self workerContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001281B8;
  v7 = v6[3] = &unk_100645E30;
  v4 = v7;
  [v4 performBlockAndWait:v6];
  v5 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0C18(v5);
  }
}

@end