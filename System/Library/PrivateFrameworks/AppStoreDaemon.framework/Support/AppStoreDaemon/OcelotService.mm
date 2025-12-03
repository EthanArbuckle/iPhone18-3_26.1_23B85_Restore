@interface OcelotService
- (void)flushMetricsWithCompletionBlock:(id)block;
- (void)getAppPayoutEventsWithCompletionBlock:(id)block;
- (void)getAppSummaryEventsWithCompletionBlock:(id)block;
- (void)recordLaunchForBundleID:(id)d additionalMetrics:(id)metrics replyHandler:(id)handler;
- (void)recordLaunchesWithCompletionBlock:(id)block;
- (void)recordMetricsWithCompletionBlock:(id)block;
- (void)reportAppEvent:(id)event completionBlock:(id)block;
- (void)resetMetricsWithCompletionBlock:(id)block;
- (void)resetPayoutWithCompletionBlock:(id)block;
- (void)sbsyncIfSubscribedWithAccount:(id)account completionBlock:(id)block;
- (void)sbsyncWithCompletionBlock:(id)block;
- (void)sbsyncWithDuration:(id)duration completionBlock:(id)block;
- (void)sendPayoutMetricsWithCompletionBlock:(id)block;
- (void)sendSummaryMetricsWithCompletionBlock:(id)block;
- (void)showUpsellForItemID:(id)d completionBlock:(id)block;
- (void)subscriptionDetailsWithCompletionBlock:(id)block;
- (void)subscriptionStateWithCompletionBlock:(id)block;
- (void)topAppsForAccount:(id)account completionBlock:(id)block;
@end

@implementation OcelotService

- (void)flushMetricsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = sub_1002338F0(self);
    v10 = 138412546;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] flushMetricsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_100355E58();
  sub_100356338(v9, @"User Request", blockCopy);
}

- (void)getAppPayoutEventsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = sub_1002338F0(self);
    v10 = 138412546;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] getAppPayoutEventsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_100355E58();
  sub_100356614(v9, blockCopy);
}

- (void)getAppSummaryEventsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = sub_1002338F0(self);
    v10 = 138412546;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] getAppSummaryEventsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_100355E58();
  sub_100356DDC(v9, blockCopy);
}

- (void)recordLaunchForBundleID:(id)d additionalMetrics:(id)metrics replyHandler:(id)handler
{
  handlerCopy = handler;
  metricsCopy = metrics;
  dCopy = d;
  v11 = sub_1002338F0(self);
  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = objc_opt_class();
    v17 = 2114;
    v18 = v11;
    v13 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] recordLaunch for client: %{public}@", &v15, 0x16u);
  }

  v14 = sub_100355E58();
  sub_100358C08(v14, dCopy, v11, metricsCopy, handlerCopy);
}

- (void)recordLaunchesWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = sub_1002338F0(self);
    v10 = 138412546;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] recordLaunchesWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_100355E58();
  sub_1003588AC(v9, blockCopy);
}

- (void)recordMetricsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = sub_1002338F0(self);
    v10 = 138412546;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] recordMetricsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_100355E58();
  sub_100359424(v9, blockCopy);
}

- (void)reportAppEvent:(id)event completionBlock:(id)block
{
  blockCopy = block;
  eventCopy = event;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = sub_1002338F0(self);
    v13 = 138412546;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] reportAppEvent for client: %{public}@", &v13, 0x16u);
  }

  v12 = sub_100355E58();
  sub_1003585D4(v12, eventCopy, blockCopy);
}

- (void)resetMetricsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = sub_1002338F0(self);
    v10 = 138412546;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] resetMetricsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_100355E58();
  sub_10035963C(v9, blockCopy);
}

- (void)resetPayoutWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = sub_1002338F0(self);
    v10 = 138412546;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] recordLaunchesWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_100355E58();
  sub_100359BEC(v9, blockCopy);
}

- (void)sendPayoutMetricsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = sub_1002338F0(self);
    v10 = 138412546;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] sendPayoutMetricsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_100355E58();
  sub_10035AFF4(v9, blockCopy);
}

- (void)sendSummaryMetricsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = sub_1002338F0(self);
    v10 = 138412546;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] sendSummaryMetricsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_100355E58();
  sub_10035B23C(v9, blockCopy);
}

- (void)sbsyncIfSubscribedWithAccount:(id)account completionBlock:(id)block
{
  blockCopy = block;
  accountCopy = account;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = sub_1002338F0(self);
    v13 = 138412546;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@]: sbsyncIfSubscribedWithAccount:completionBlock for client: %{public}@", &v13, 0x16u);
  }

  v12 = sub_100355E58();
  sub_100359E70(v12, accountCopy, blockCopy);
}

- (void)sbsyncWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = sub_1002338F0(self);
    v10 = 138412546;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] sbsyncWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_100355E58();
  sub_10035A248(v9, @"Manual", 0, blockCopy);
}

- (void)sbsyncWithDuration:(id)duration completionBlock:(id)block
{
  blockCopy = block;
  durationCopy = duration;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = sub_1002338F0(self);
    v13 = 138412546;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] sbsyncWithDuration:completionBlock for client: %{public}@", &v13, 0x16u);
  }

  v12 = sub_100355E58();
  sub_10035A248(v12, @"Manual", durationCopy, blockCopy);
}

- (void)showUpsellForItemID:(id)d completionBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v8 = objc_alloc_init(_TtC9appstored6LogKey);
  v9 = sub_1002338F0(self);
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543874;
    v14 = v8;
    v15 = 2114;
    v16 = dCopy;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] showUpsellForItemID: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_100355E58();
  sub_10035CBE0(v11, dCopy, &__NSDictionary0__struct, v8);

  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] showUpsellForItemID complete for client: %{public}@", &v13, 0x16u);
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, 1, 0);
  }
}

- (void)subscriptionDetailsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = sub_100003B90();
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = sub_1002338F0(self);
    *buf = 138412546;
    v35 = v7;
    v36 = 2114;
    v37 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] subscriptionDetailsWithCompletionBlock for client: %{public}@", buf, 0x16u);
  }

  v10 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v10 ams_activeiTunesAccount];

  ams_DSID = [ams_activeiTunesAccount ams_DSID];
  v31 = 0;
  v13 = sub_1002A1944(SbsyncTask, ams_DSID, &v31);
  v14 = v31;

  if (ams_activeiTunesAccount)
  {
    username = [ams_activeiTunesAccount username];
    ams_DSID2 = [ams_activeiTunesAccount ams_DSID];
    v17 = [NSString stringWithFormat:@"%@/%@", username, ams_DSID2];
  }

  else
  {
    v17 = @"N/A";
  }

  v18 = sub_100355E58();
  v19 = sub_100355F34(v18);

  v20 = [NSMutableDictionary alloc];
  v21 = &__kCFBooleanFalse;
  if (v13)
  {
    v21 = &__kCFBooleanTrue;
  }

  v32[0] = @"isSubscriptionBagSubscribed";
  v32[1] = @"subscribedAccount";
  v33[0] = v21;
  v33[1] = v17;
  v32[2] = @"arcadeAppCount";
  v22 = [NSNumber numberWithInteger:v19];
  v33[2] = v22;
  v23 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:3];
  v24 = [v20 initWithDictionary:v23];

  v25 = +[SubscriptionEntitlementsCoordinator sharedInstance];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1002AE66C;
  v28[3] = &unk_1005209C0;
  v29 = v24;
  v30 = blockCopy;
  v26 = v24;
  v27 = blockCopy;
  sub_1002F4DEC(v25, 1uLL, v5, 0, 0, 0, v28);
}

- (void)subscriptionStateWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = sub_1002338F0(self);
    *buf = 138412546;
    v16 = v6;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] subscriptionStateWithCompletionBlock for client: %{public}@", buf, 0x16u);
  }

  v9 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v9 ams_activeiTunesAccount];

  ams_DSID = [ams_activeiTunesAccount ams_DSID];
  v14 = 0;
  v12 = sub_1002A1944(SbsyncTask, ams_DSID, &v14);
  v13 = v14;

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v12, v13);
  }
}

- (void)topAppsForAccount:(id)account completionBlock:(id)block
{
  blockCopy = block;
  accountCopy = account;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_1002338F0(self);
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "topAppForAccount for client: %{public}@", &v11, 0xCu);
  }

  v10 = sub_100355E58();
  sub_10035D818(v10, accountCopy, blockCopy);
}

@end