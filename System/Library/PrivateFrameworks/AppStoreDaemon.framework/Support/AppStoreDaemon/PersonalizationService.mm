@interface PersonalizationService
- (void)flushMetricsWithCompletionBlock:(id)block;
- (void)getAppEventsWithCompletionBlock:(id)block;
- (void)getClusterMappingsWithCompletionBlock:(id)block;
- (void)getGroupingToken:(id)token;
- (void)recordLaunchesWithCompletionBlock:(id)block;
- (void)recordMetricsWithCompletionBlock:(id)block;
- (void)reloadClusterMappingsWithCompletionBlock:(id)block;
- (void)reportAppEvent:(id)event completionBlock:(id)block;
- (void)resetActorIDWithCompletionBlock:(id)block;
- (void)resetMetricsWithCompletionBlock:(id)block;
- (void)sendMetricsWithCompletionBlock:(id)block;
- (void)setClusterMapping:(id)mapping completionBlock:(id)block;
- (void)setClusterMappings:(id)mappings completionBlock:(id)block;
- (void)tasteProfileFeatureEnabledWithCompletionBlock:(id)block;
@end

@implementation PersonalizationService

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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: flushMetricsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_1002EDEC8();
  sub_1002EE080(v9, @"User request", blockCopy);
}

- (void)getGroupingToken:(id)token
{
  tokenCopy = token;
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: getGroupingToken for client: %{public}@", &v10, 0x16u);
  }

  if (tokenCopy)
  {
    v9 = ASDErrorWithDescription();
    tokenCopy[2](tokenCopy, 0, v9);
  }
}

- (void)getClusterMappingsWithCompletionBlock:(id)block
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: getClusterMappingsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  if (blockCopy)
  {
    v9 = ASDErrorWithDescription();
    blockCopy[2](blockCopy, 0, v9);
  }
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: getPersonalizationEventsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_1002EDEC8();
  sub_1002EE160(v9, blockCopy);
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: recordMetricsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_1002EDEC8();
  sub_1002EE998(v9, blockCopy);
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: recordLaunchesWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_1002EDEC8();
  sub_1002EE484(v9, blockCopy);
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: reportAppEvent for client: %{public}@", &v11, 0x16u);
  }

  if (blockCopy)
  {
    v10 = ASDErrorWithDescription();
    blockCopy[2](blockCopy, 0, v10);
  }
}

- (void)reloadClusterMappingsWithCompletionBlock:(id)block
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: reloadClusterMappingsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  if (blockCopy)
  {
    v9 = ASDErrorWithDescription();
    blockCopy[2](blockCopy, 0, v9);
  }
}

- (void)resetActorIDWithCompletionBlock:(id)block
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: resetActorIDWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_1002EDEC8();
  sub_1002EED00(v9, blockCopy);
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

  v9 = sub_1002EDEC8();
  sub_1002EEE9C(v9, blockCopy);
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: sendMetricsWithCompletionBlock for client: %{public}@", &v10, 0x16u);
  }

  v9 = sub_1002EDEC8();
  sub_1002EF0F0(v9, blockCopy);
}

- (void)setClusterMapping:(id)mapping completionBlock:(id)block
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: setClusterMapping for client: %{public}@", &v11, 0x16u);
  }

  if (blockCopy)
  {
    v10 = ASDErrorWithDescription();
    blockCopy[2](blockCopy, 0, v10);
  }
}

- (void)setClusterMappings:(id)mappings completionBlock:(id)block
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: setClusterMapping for client: %{public}@", &v11, 0x16u);
  }

  if (blockCopy)
  {
    v10 = ASDErrorWithDescription();
    blockCopy[2](blockCopy, 0, v10);
  }
}

- (void)tasteProfileFeatureEnabledWithCompletionBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    v4 = sub_1003D4840();
    (*(block + 2))(blockCopy, v4, 0);
  }
}

@end