@interface TestFlightFeedbackService
- (void)getDisplayNamesForBundleID:(id)a3 withCompletionHandler:(id)a4;
- (void)getDisplayNamesForBundleURL:(id)a3 withCompletionHandler:(id)a4;
- (void)getEmailAddressForBundleID:(id)a3 withCompletionHandler:(id)a4;
- (void)getEmailAddressForBundleURL:(id)a3 withCompletionHandler:(id)a4;
- (void)getFeedbackMetadataForBundleID:(id)a3 withCompletionHandler:(id)a4;
- (void)getFeedbackMetadataForBundleURL:(id)a3 withCompletionHandler:(id)a4;
- (void)getLaunchInfoForBundleID:(id)a3 withCompletionHandler:(id)a4;
- (void)getLaunchInfoForBundleURL:(id)a3 withCompletionHandler:(id)a4;
- (void)getLaunchInfoForVersion:(id)a3 withCompletionHandler:(id)a4;
- (void)isFeedbackEnabledForBundleID:(id)a3 withCompletionHandler:(id)a4;
- (void)isFeedbackEnabledForBundleURL:(id)a3 withCompletionHandler:(id)a4;
- (void)isLaunchScreenEnabledForBundleID:(id)a3 withCompletionHandler:(id)a4;
- (void)isLaunchScreenEnabledForBundleURL:(id)a3 withCompletionHandler:(id)a4;
- (void)setFeedbackEnabled:(BOOL)a3 forVersion:(id)a4 withCompletionHandler:(id)a5;
- (void)setLaunchInfo:(id)a3 withCompletionHandler:(id)a4;
- (void)setLaunchScreenEnabled:(BOOL)a3 forVersion:(id)a4 withCompletionHandler:(id)a5;
- (void)submitFeedback:(id)a3 bundleURL:(id)a4 withCompletionHandler:(id)a5;
- (void)submitFeedback:(id)a3 withCompletionHandler:(id)a4;
- (void)updateTestNotes:(id)a3 forVersion:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation TestFlightFeedbackService

- (void)getDisplayNamesForBundleID:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 processInfo];
    v10 = [v9 bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getDisplayNamesForBundleID: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_1002406D8(v11, v5, v7);
  v6[2](v6, v12);
}

- (void)getDisplayNamesForBundleURL:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 processInfo];
    v10 = [v9 bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getDisplayNamesForBundleURL: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_100240B70(v11, v5, v7);
  v6[2](v6, v12);
}

- (void)getEmailAddressForBundleID:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 processInfo];
    v10 = [v9 bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getEmailAddressForBundleID: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_100240EAC(v11, v5, v7);
  v6[2](v6, v12);
}

- (void)getEmailAddressForBundleURL:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 processInfo];
    v10 = [v9 bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getEmailAddressForBundleURL: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_1002411B0(v11, v5, v7);
  v6[2](v6, v12);
}

- (void)getFeedbackMetadataForBundleID:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 processInfo];
    v10 = [v9 bundleIdentifier];
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getFeedbackMetadataForBundleID: %{public}@ for client: %{public}@", &v12, 0x20u);
  }

  v11 = sub_1002404C0();
  sub_1002414B4(v11, v5, v7, v6);
}

- (void)getFeedbackMetadataForBundleURL:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 processInfo];
    v10 = [v9 bundleIdentifier];
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getFeedbackMetadataForBundleURL: %{public}@ for client: %{public}@", &v12, 0x20u);
  }

  v11 = sub_1002404C0();
  sub_100241884(v11, v5, v7, v6);
}

- (void)getLaunchInfoForBundleID:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 processInfo];
    v10 = [v9 bundleIdentifier];
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getLaunchInfoForBundleID: %{public}@ for client: %{public}@", &v12, 0x20u);
  }

  v11 = sub_1002404C0();
  sub_100241C54(v11, v5, v7, v6);
}

- (void)getLaunchInfoForBundleURL:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 processInfo];
    v10 = [v9 bundleIdentifier];
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getLaunchInfoForBundleURL: %{public}@ for client: %{public}@", &v12, 0x20u);
  }

  v11 = sub_1002404C0();
  sub_1002420A4(v11, v5, v7, v6);
}

- (void)getLaunchInfoForVersion:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 processInfo];
    v10 = [v9 bundleIdentifier];
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getLaunchInfoForVersion: %{public}@ for client: %{public}@", &v12, 0x20u);
  }

  v11 = sub_1002404C0();
  sub_1002424F4(v11, v5, v7, v6);
}

- (void)isFeedbackEnabledForBundleID:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 processInfo];
    v10 = [v9 bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ isFeedbackEnabledForBundleID: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_1002427A4(v11, v5, v7);
  v6[2](v6, v12);
}

- (void)isFeedbackEnabledForBundleURL:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 processInfo];
    v10 = [v9 bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ isFeedbackEnabledForBundleURL: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_100242AC4(v11, v5, v7);
  v6[2](v6, v12);
}

- (void)isLaunchScreenEnabledForBundleID:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 processInfo];
    v10 = [v9 bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ isLaunchScreenEnabledForBundleID: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_100242CE4(v11, v5, v7);
  v6[2](v6, v12);
}

- (void)isLaunchScreenEnabledForBundleURL:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 processInfo];
    v10 = [v9 bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ isLaunchScreenEnabledForBundleURL: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_100242F8C(v11, v5, v7);
  v6[2](v6, v12);
}

- (void)setFeedbackEnabled:(BOOL)a3 forVersion:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100003B90();
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 processInfo];
    v12 = [v11 bundleIdentifier];
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ setFeedbackEnabled:forVersion: %{public}@ for client: %{public}@", &v14, 0x20u);
  }

  v13 = sub_1002404C0();
  sub_100243D30(v13, a3, v7, v9, v8);
}

- (void)setLaunchInfo:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 version];
    v10 = [v7 processInfo];
    v11 = [v10 bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ setLaunchInfo: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v12 = sub_1002404C0();
  sub_10024412C(v12, v5, v7, v6);
}

- (void)setLaunchScreenEnabled:(BOOL)a3 forVersion:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100003B90();
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 processInfo];
    v12 = [v11 bundleIdentifier];
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ setLaunchScreenEnabled:forVersion: %{public}@ for client: %{public}@", &v14, 0x20u);
  }

  v13 = sub_1002404C0();
  sub_100244530(v13, a3, v7, v9, v8);
}

- (void)submitFeedback:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 bundleID];
    v10 = [v7 processInfo];
    v11 = [v10 bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ submitFeedback: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v12 = sub_1002404C0();
  sub_10024492C(v12, v5, v7, v6);
}

- (void)submitFeedback:(id)a3 bundleURL:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = sub_100003B90();
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 processInfo];
    v13 = [v12 bundleIdentifier];
    v15 = 138543874;
    v16 = v10;
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ submitFeedback:bundleURL %{public}@ for client: %{public}@", &v15, 0x20u);
  }

  v14 = sub_1002404C0();
  sub_100245288(v14, v9, v7, v10, v8);
}

- (void)updateTestNotes:(id)a3 forVersion:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = sub_100003B90();
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 processInfo];
    v13 = [v12 bundleIdentifier];
    v15 = 138543874;
    v16 = v10;
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ updateTestNotes:forVersion: %{public}@ for client: %{public}@", &v15, 0x20u);
  }

  v14 = sub_1002404C0();
  sub_1002453AC(v14, v9, v7, v10, v8);
}

@end