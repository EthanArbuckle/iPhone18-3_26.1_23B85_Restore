@interface ICUpdateAccountReferenceInAttachmentsAndMediaLaunchTask
- (void)runOneTimeLaunchTask;
@end

@implementation ICUpdateAccountReferenceInAttachmentsAndMediaLaunchTask

- (void)runOneTimeLaunchTask
{
  v3 = [(ICWorkerContextLaunchTask *)self workerContext];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A0AD4;
  v4[3] = &unk_100645E30;
  v4[4] = self;
  [v3 performBlockAndWait:v4];
}

@end