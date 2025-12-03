@interface ICDeleteOrphanedHTMLNotesLaunchTask
- (void)runOneTimeLaunchTask;
@end

@implementation ICDeleteOrphanedHTMLNotesLaunchTask

- (void)runOneTimeLaunchTask
{
  initWithPrivateQueue = [[NoteContext alloc] initWithPrivateQueue];
  managedObjectContext = [initWithPrivateQueue managedObjectContext];
  +[NSFileManager defaultManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100083484;
  v6[3] = &unk_100645BA0;
  v8 = v7 = managedObjectContext;
  v4 = v8;
  v5 = managedObjectContext;
  [v5 performBlockAndWait:v6];
}

@end