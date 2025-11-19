@interface PersonalizationService
- (void)flushMetricsWithCompletionBlock:(id)a3;
- (void)getAppEventsWithCompletionBlock:(id)a3;
- (void)getClusterMappingsWithCompletionBlock:(id)a3;
- (void)getGroupingToken:(id)a3;
- (void)recordLaunchesWithCompletionBlock:(id)a3;
- (void)recordMetricsWithCompletionBlock:(id)a3;
- (void)reloadClusterMappingsWithCompletionBlock:(id)a3;
- (void)reportAppEvent:(id)a3 completionBlock:(id)a4;
- (void)resetActorIDWithCompletionBlock:(id)a3;
- (void)resetMetricsWithCompletionBlock:(id)a3;
- (void)sendMetricsWithCompletionBlock:(id)a3;
- (void)setClusterMapping:(id)a3 completionBlock:(id)a4;
- (void)setClusterMappings:(id)a3 completionBlock:(id)a4;
- (void)tasteProfileFeatureEnabledWithCompletionBlock:(id)a3;
@end

@implementation PersonalizationService

- (void)flushMetricsWithCompletionBlock:(id)a3
{
  v4 = a3;
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
  sub_1002EE080(v9, @"User request", v4);
}

- (void)getGroupingToken:(id)a3
{
  v4 = a3;
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

  if (v4)
  {
    v9 = ASDErrorWithDescription();
    v4[2](v4, 0, v9);
  }
}

- (void)getClusterMappingsWithCompletionBlock:(id)a3
{
  v4 = a3;
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

  if (v4)
  {
    v9 = ASDErrorWithDescription();
    v4[2](v4, 0, v9);
  }
}

- (void)getAppEventsWithCompletionBlock:(id)a3
{
  v4 = a3;
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
  sub_1002EE160(v9, v4);
}

- (void)recordMetricsWithCompletionBlock:(id)a3
{
  v4 = a3;
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
  sub_1002EE998(v9, v4);
}

- (void)recordLaunchesWithCompletionBlock:(id)a3
{
  v4 = a3;
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
  sub_1002EE484(v9, v4);
}

- (void)reportAppEvent:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
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

  if (v5)
  {
    v10 = ASDErrorWithDescription();
    v5[2](v5, 0, v10);
  }
}

- (void)reloadClusterMappingsWithCompletionBlock:(id)a3
{
  v4 = a3;
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

  if (v4)
  {
    v9 = ASDErrorWithDescription();
    v4[2](v4, 0, v9);
  }
}

- (void)resetActorIDWithCompletionBlock:(id)a3
{
  v4 = a3;
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
  sub_1002EED00(v9, v4);
}

- (void)resetMetricsWithCompletionBlock:(id)a3
{
  v4 = a3;
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
  sub_1002EEE9C(v9, v4);
}

- (void)sendMetricsWithCompletionBlock:(id)a3
{
  v4 = a3;
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
  sub_1002EF0F0(v9, v4);
}

- (void)setClusterMapping:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
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

  if (v5)
  {
    v10 = ASDErrorWithDescription();
    v5[2](v5, 0, v10);
  }
}

- (void)setClusterMappings:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
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

  if (v5)
  {
    v10 = ASDErrorWithDescription();
    v5[2](v5, 0, v10);
  }
}

- (void)tasteProfileFeatureEnabledWithCompletionBlock:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v4 = sub_1003D4840();
    (*(a3 + 2))(v5, v4, 0);
  }
}

@end