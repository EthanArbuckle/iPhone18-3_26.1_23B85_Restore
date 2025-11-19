@interface ICFixMissingPaperBundlesLaunchTask
- (BOOL)paperBundleIsEmpty:(id)a3;
- (void)runLaunchTask;
@end

@implementation ICFixMissingPaperBundlesLaunchTask

- (void)runLaunchTask
{
  [(ICWorkerContextLaunchTask *)self workerContext];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100109B1C;
  v5 = v4[3] = &unk_100645BA0;
  v6 = self;
  v3 = v5;
  [v3 performBlockAndWait:v4];
}

- (BOOL)paperBundleIsEmpty:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:1 error:0];

  LOBYTE(v4) = [v5 count] == 0;
  return v4;
}

@end