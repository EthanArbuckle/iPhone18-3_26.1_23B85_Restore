@interface ICImportAndDeleteCallRecordingsLaunchTask
- (void)runLaunchTask;
@end

@implementation ICImportAndDeleteCallRecordingsLaunchTask

- (void)runLaunchTask
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001572B0;
  v6[3] = &unk_100645BA0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 performBlock:v6];
}

@end