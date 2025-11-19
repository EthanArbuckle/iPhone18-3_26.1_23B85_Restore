@interface ICDeleteOrphanedHTMLNotesLaunchTask
- (void)runOneTimeLaunchTask;
@end

@implementation ICDeleteOrphanedHTMLNotesLaunchTask

- (void)runOneTimeLaunchTask
{
  v2 = [[NoteContext alloc] initWithPrivateQueue];
  v3 = [v2 managedObjectContext];
  +[NSFileManager defaultManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100083484;
  v6[3] = &unk_100645BA0;
  v8 = v7 = v3;
  v4 = v8;
  v5 = v3;
  [v5 performBlockAndWait:v6];
}

@end