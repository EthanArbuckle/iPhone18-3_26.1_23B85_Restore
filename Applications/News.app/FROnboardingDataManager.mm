@interface FROnboardingDataManager
- (FROnboardingDataManager)initWithFeldsparContext:(id)a3;
- (void)beginFetchingUserType;
- (void)beginLoadingFeed;
- (void)completeOnboarding;
- (void)suspendLoadingFeed;
@end

@implementation FROnboardingDataManager

- (FROnboardingDataManager)initWithFeldsparContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FROnboardingDataManager;
  v6 = [(FROnboardingDataManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feldsparContext, a3);
  }

  return v7;
}

- (void)suspendLoadingFeed
{
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FROnboardingDataManager: suspendLoadingFeed", v3, 2u);
  }
}

- (void)beginFetchingUserType
{
  v3 = objc_alloc_init(FRUserOnboardingOperation);
  v4 = [(FROnboardingDataManager *)self feldsparContext];
  v5 = [v4 cloudContext];
  [(FRUserOnboardingOperation *)v3 setCloudContext:v5];

  v6 = [(FROnboardingDataManager *)self feldsparContext];
  v7 = [v6 analyticsController];
  [(FRUserOnboardingOperation *)v3 setAnalyticsController:v7];

  v8 = [(FROnboardingDataManager *)self feldsparContext];
  v9 = [v8 presubscribeService];
  [(FRUserOnboardingOperation *)v3 setPresubscribeService:v9];

  [(FRUserOnboardingOperation *)v3 setQualityOfService:25];
  [(FRUserOnboardingOperation *)v3 setRelativePriority:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100056950;
  v11[3] = &unk_1000C5AA0;
  v11[4] = self;
  [(FRUserOnboardingOperation *)v3 setUserOnboardingCompletionHandler:v11];
  v10 = +[NSOperationQueue fc_sharedConcurrentQueue];
  [v10 addOperation:v3];
}

- (void)beginLoadingFeed
{
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FROnboardingDataManager: beginLoadingFeed", buf, 2u);
  }

  FCPerformBlockOnMainThread();
}

- (void)completeOnboarding
{
  v3 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FROnboardingDataManager: completedOnboarding", v7, 2u);
  }

  v4 = [(FROnboardingDataManager *)self feldsparContext];
  v5 = [v4 cloudContext];
  v6 = [v5 userInfo];
  [v6 updateOnboardingVersion];
}

@end