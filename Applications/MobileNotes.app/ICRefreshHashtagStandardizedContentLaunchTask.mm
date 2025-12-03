@interface ICRefreshHashtagStandardizedContentLaunchTask
- (void)runOneTimeLaunchTask;
@end

@implementation ICRefreshHashtagStandardizedContentLaunchTask

- (void)runOneTimeLaunchTask
{
  workerContext = [(ICWorkerContextLaunchTask *)self workerContext];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007031C;
  v4[3] = &unk_100645E30;
  v4[4] = self;
  [workerContext performBlockAndWait:v4];
}

@end