@interface FRPresubscribeService
- (BOOL)_hasUserBeenPresubscribed;
- (FRPresubscribeService)init;
- (FRPresubscribeService)initWithAppConfigurationManager:(id)a3 tagController:(id)a4 subscriptionController:(id)a5 purchaseController:(id)a6 notificationManager:(id)a7;
- (void)_setHasUserBeenPresubscribed:(BOOL)a3;
- (void)_subscribeToFeedIDs:(id)a3 preSubscribedNotificationsChannelIDs:(id)a4 withCompletion:(id)a5;
- (void)presubscribeToChannelsIfNeededWithCompletion:(id)a3;
- (void)subscriptionControllerDidResetToEmpty:(id)a3;
@end

@implementation FRPresubscribeService

- (FRPresubscribeService)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRPresubscribeService init]";
    v8 = 2080;
    v9 = "FRPresubscribeService.m";
    v10 = 1024;
    v11 = 31;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRPresubscribeService init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRPresubscribeService)initWithAppConfigurationManager:(id)a3 tagController:(id)a4 subscriptionController:(id)a5 purchaseController:(id)a6 notificationManager:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = FRPresubscribeService;
  v17 = [(FRPresubscribeService *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_appConfigurationManager, a3);
    objc_storeStrong(&v18->_tagController, a4);
    objc_storeStrong(&v18->_subscriptionController, a5);
    objc_storeStrong(&v18->_purchaseController, a6);
    objc_storeStrong(&v18->_notificationManager, a7);
    [(FCSubscriptionController *)v18->_subscriptionController addObserver:v18];
  }

  return v18;
}

- (void)presubscribeToChannelsIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = FRPresubscribeServiceLog;
  if (os_log_type_enabled(FRPresubscribeServiceLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Presubscribing to channels, if needed", buf, 2u);
  }

  if ([(FRPresubscribeService *)self _hasUserBeenPresubscribed])
  {
    v6 = FRPresubscribeServiceLog;
    if (os_log_type_enabled(FRPresubscribeServiceLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not presubscribing because the user's already been presubscribed", buf, 2u);
    }

    if (v4)
    {
      v4[2](v4, 0);
    }
  }

  else
  {
    v7 = [(FRPresubscribeService *)self appConfigurationManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004C084;
    v8[3] = &unk_1000C2630;
    v8[4] = self;
    v9 = v4;
    [v7 fetchAppConfigurationIfNeededWithCompletionQueue:&_dispatch_main_q completion:v8];
  }
}

- (void)subscriptionControllerDidResetToEmpty:(id)a3
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:0 forKey:@"has_user_been_presubscribed"];

  [(FRPresubscribeService *)self presubscribeToChannelsIfNeededWithCompletion:0];
}

- (void)_subscribeToFeedIDs:(id)a3 preSubscribedNotificationsChannelIDs:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FRPresubscribeService *)self tagController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004C560;
  v15[3] = &unk_1000C50B0;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 fetchTagsForTagIDs:v14 qualityOfService:25 callbackQueue:&_dispatch_main_q completionHandler:v15];
}

- (BOOL)_hasUserBeenPresubscribed
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"has_user_been_presubscribed"];

  return v3;
}

- (void)_setHasUserBeenPresubscribed:(BOOL)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:v3 forKey:@"has_user_been_presubscribed"];
}

@end