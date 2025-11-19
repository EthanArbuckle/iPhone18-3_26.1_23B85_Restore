@interface DaemonStartupTask
- (id)perform;
@end

@implementation DaemonStartupTask

- (id)perform
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012554;
  v4[3] = &unk_100054C08;
  v4[4] = self;
  v2 = [(DaemonStartupTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

@end