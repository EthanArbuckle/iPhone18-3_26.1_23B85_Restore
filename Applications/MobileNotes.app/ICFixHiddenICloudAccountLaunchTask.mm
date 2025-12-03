@interface ICFixHiddenICloudAccountLaunchTask
- (void)runLaunchTask;
@end

@implementation ICFixHiddenICloudAccountLaunchTask

- (void)runLaunchTask
{
  v3 = +[ICAccountUtilities sharedInstance];
  allICloudACAccounts = [v3 allICloudACAccounts];

  workerContext = [(ICWorkerContextLaunchTask *)self workerContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100107F70;
  v7[3] = &unk_100645BA0;
  v8 = allICloudACAccounts;
  selfCopy = self;
  v6 = allICloudACAccounts;
  [workerContext performBlockAndWait:v7];
}

@end