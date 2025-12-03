@interface FROnboardingDataManager
- (FROnboardingDataManager)initWithFeldsparContext:(id)context;
- (void)beginFetchingUserType;
- (void)beginLoadingFeed;
- (void)completeOnboarding;
- (void)suspendLoadingFeed;
@end

@implementation FROnboardingDataManager

- (FROnboardingDataManager)initWithFeldsparContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = FROnboardingDataManager;
  v6 = [(FROnboardingDataManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feldsparContext, context);
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
  feldsparContext = [(FROnboardingDataManager *)self feldsparContext];
  cloudContext = [feldsparContext cloudContext];
  [(FRUserOnboardingOperation *)v3 setCloudContext:cloudContext];

  feldsparContext2 = [(FROnboardingDataManager *)self feldsparContext];
  analyticsController = [feldsparContext2 analyticsController];
  [(FRUserOnboardingOperation *)v3 setAnalyticsController:analyticsController];

  feldsparContext3 = [(FROnboardingDataManager *)self feldsparContext];
  presubscribeService = [feldsparContext3 presubscribeService];
  [(FRUserOnboardingOperation *)v3 setPresubscribeService:presubscribeService];

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

  feldsparContext = [(FROnboardingDataManager *)self feldsparContext];
  cloudContext = [feldsparContext cloudContext];
  userInfo = [cloudContext userInfo];
  [userInfo updateOnboardingVersion];
}

@end