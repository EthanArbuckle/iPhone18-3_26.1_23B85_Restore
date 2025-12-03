@interface FRPresubscribeService
- (BOOL)_hasUserBeenPresubscribed;
- (FRPresubscribeService)init;
- (FRPresubscribeService)initWithAppConfigurationManager:(id)manager tagController:(id)controller subscriptionController:(id)subscriptionController purchaseController:(id)purchaseController notificationManager:(id)notificationManager;
- (void)_setHasUserBeenPresubscribed:(BOOL)presubscribed;
- (void)_subscribeToFeedIDs:(id)ds preSubscribedNotificationsChannelIDs:(id)iDs withCompletion:(id)completion;
- (void)presubscribeToChannelsIfNeededWithCompletion:(id)completion;
- (void)subscriptionControllerDidResetToEmpty:(id)empty;
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

- (FRPresubscribeService)initWithAppConfigurationManager:(id)manager tagController:(id)controller subscriptionController:(id)subscriptionController purchaseController:(id)purchaseController notificationManager:(id)notificationManager
{
  managerCopy = manager;
  controllerCopy = controller;
  subscriptionControllerCopy = subscriptionController;
  purchaseControllerCopy = purchaseController;
  notificationManagerCopy = notificationManager;
  v21.receiver = self;
  v21.super_class = FRPresubscribeService;
  v17 = [(FRPresubscribeService *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_appConfigurationManager, manager);
    objc_storeStrong(&v18->_tagController, controller);
    objc_storeStrong(&v18->_subscriptionController, subscriptionController);
    objc_storeStrong(&v18->_purchaseController, purchaseController);
    objc_storeStrong(&v18->_notificationManager, notificationManager);
    [(FCSubscriptionController *)v18->_subscriptionController addObserver:v18];
  }

  return v18;
}

- (void)presubscribeToChannelsIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
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

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    appConfigurationManager = [(FRPresubscribeService *)self appConfigurationManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004C084;
    v8[3] = &unk_1000C2630;
    v8[4] = self;
    v9 = completionCopy;
    [appConfigurationManager fetchAppConfigurationIfNeededWithCompletionQueue:&_dispatch_main_q completion:v8];
  }
}

- (void)subscriptionControllerDidResetToEmpty:(id)empty
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:0 forKey:@"has_user_been_presubscribed"];

  [(FRPresubscribeService *)self presubscribeToChannelsIfNeededWithCompletion:0];
}

- (void)_subscribeToFeedIDs:(id)ds preSubscribedNotificationsChannelIDs:(id)iDs withCompletion:(id)completion
{
  dsCopy = ds;
  iDsCopy = iDs;
  completionCopy = completion;
  tagController = [(FRPresubscribeService *)self tagController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004C560;
  v15[3] = &unk_1000C50B0;
  v16 = dsCopy;
  v17 = iDsCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = iDsCopy;
  v14 = dsCopy;
  [tagController fetchTagsForTagIDs:v14 qualityOfService:25 callbackQueue:&_dispatch_main_q completionHandler:v15];
}

- (BOOL)_hasUserBeenPresubscribed
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"has_user_been_presubscribed"];

  return v3;
}

- (void)_setHasUserBeenPresubscribed:(BOOL)presubscribed
{
  presubscribedCopy = presubscribed;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:presubscribedCopy forKey:@"has_user_been_presubscribed"];
}

@end