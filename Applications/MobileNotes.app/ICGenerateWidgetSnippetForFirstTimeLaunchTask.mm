@interface ICGenerateWidgetSnippetForFirstTimeLaunchTask
- (void)runOneTimeLaunchTask;
@end

@implementation ICGenerateWidgetSnippetForFirstTimeLaunchTask

- (void)runOneTimeLaunchTask
{
  workerContext = [(ICWorkerContextLaunchTask *)self workerContext];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001247BC;
  v4[3] = &unk_100645E30;
  v4[4] = self;
  [workerContext performBlockAndWait:v4];
}

@end