@interface ICFixMissingMediaLaunchTask
- (void)runLaunchTask;
@end

@implementation ICFixMissingMediaLaunchTask

- (void)runLaunchTask
{
  [(ICWorkerContextLaunchTask *)self workerContext];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100106328;
  v4 = v3[3] = &unk_100645E30;
  v2 = v4;
  [v2 performBlockAndWait:v3];
}

@end