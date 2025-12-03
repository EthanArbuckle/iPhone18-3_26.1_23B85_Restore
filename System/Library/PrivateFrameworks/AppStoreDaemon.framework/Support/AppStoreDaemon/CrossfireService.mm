@interface CrossfireService
- (void)flushMetricsWithCompletionBlock:(id)block;
- (void)getAppEventsWithCompletionBlock:(id)block;
- (void)recordLaunchesWithCompletionBlock:(id)block;
- (void)recordMetricsWithCompletionBlock:(id)block;
- (void)reportAppEvent:(id)event completionBlock:(id)block;
- (void)resetMetricsWithCompletionBlock:(id)block;
- (void)sendMetricsWithCompletionBlock:(id)block;
@end

@implementation CrossfireService

- (void)flushMetricsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = sub_1002338F0(self);
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] flushMetricsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_1001F26CC();
  sub_1001F27A8(v9, @"User Request", blockCopy);
}

- (void)getAppEventsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = sub_1002338F0(self);
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] getAppEventsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_1001F26CC();
  sub_1001F2A74(v9, blockCopy);
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
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] recordLaunchesWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_1001F26CC();
  sub_1001F2D28(v9, blockCopy);
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
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] recordMetricsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_1001F26CC();
  sub_1001F2FC4(v9, blockCopy);
}

- (void)reportAppEvent:(id)event completionBlock:(id)block
{
  blockCopy = block;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = sub_1002338F0(self);
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] reportAppEvent for client: %{public}@", &v11, 0x16u);
  }

  if (blockCopy)
  {
    v10 = ASDErrorWithDescription();
    blockCopy[2](blockCopy, 0, v10);
  }
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
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] resetMetricsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_1001F26CC();
  sub_1001F3218(v9, blockCopy);
}

- (void)sendMetricsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = sub_1002338F0(self);
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sendMetricsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_1001F26CC();
  sub_1001F35DC(v9, blockCopy);
}

@end