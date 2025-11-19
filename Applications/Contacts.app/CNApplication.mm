@interface CNApplication
+ (void)prewarmResourcesForLaunch;
- (BOOL)openURL:(id)a3;
- (CNApplication)init;
- (void)checkInLaunchTasks:(unint64_t)a3;
@end

@implementation CNApplication

+ (void)prewarmResourcesForLaunch
{
  kdebug_trace();
  v2 = +[ContactsSplitViewController prewarmContactStoreDataSourceBlock];
  v3 = +[ContactsSplitViewController resourcesPrewarmingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000016E4;
  block[3] = &unk_100020608;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

- (CNApplication)init
{
  v6.receiver = self;
  v6.super_class = CNApplication;
  v2 = [(CNApplication *)&v6 init];
  if (v2)
  {
    v3 = +[CNUIContactsEnvironment currentEnvironment];
    [v3 setLaunchCheckinRegistrar:v2];
    v4 = v2;
  }

  return v2;
}

- (BOOL)openURL:(id)a3
{
  v4 = a3;
  v5 = [v4 scheme];
  v6 = [v5 isEqualToString:@"tel"];

  if (v6)
  {
    v7 = +[LSApplicationWorkspace defaultWorkspace];
    v8 = [v7 openSensitiveURL:v4 withOptions:0];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CNApplication;
    v8 = [(CNApplication *)&v10 openURL:v4];
  }

  return v8;
}

- (void)checkInLaunchTasks:(unint64_t)a3
{
  atomic_fetch_or(&self->_launchTaskCompletionMask, a3);
  if ([(CNApplication *)self areAllLaunchTasksComplete]&& (atomic_exchange(&self->_extendedLaunchFinished, 1u) & 1) == 0)
  {
    v4 = [(CNApplication *)self _launchTestName];
    [(CNApplication *)self finishedTest:v4 extraResults:0];
  }
}

@end