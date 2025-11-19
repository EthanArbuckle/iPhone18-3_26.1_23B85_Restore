@interface ManagedApplicationTask
- (void)mainWithCompletionHandler:(id)a3;
@end

@implementation ManagedApplicationTask

- (void)mainWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[BagService appstoredService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002C7BA8;
  v7[3] = &unk_10051F508;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 upToDateBagWithCompletionHandler:v7];
}

@end