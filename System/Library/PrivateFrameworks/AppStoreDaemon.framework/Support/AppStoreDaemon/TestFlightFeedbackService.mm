@interface TestFlightFeedbackService
- (void)getDisplayNamesForBundleID:(id)d withCompletionHandler:(id)handler;
- (void)getDisplayNamesForBundleURL:(id)l withCompletionHandler:(id)handler;
- (void)getEmailAddressForBundleID:(id)d withCompletionHandler:(id)handler;
- (void)getEmailAddressForBundleURL:(id)l withCompletionHandler:(id)handler;
- (void)getFeedbackMetadataForBundleID:(id)d withCompletionHandler:(id)handler;
- (void)getFeedbackMetadataForBundleURL:(id)l withCompletionHandler:(id)handler;
- (void)getLaunchInfoForBundleID:(id)d withCompletionHandler:(id)handler;
- (void)getLaunchInfoForBundleURL:(id)l withCompletionHandler:(id)handler;
- (void)getLaunchInfoForVersion:(id)version withCompletionHandler:(id)handler;
- (void)isFeedbackEnabledForBundleID:(id)d withCompletionHandler:(id)handler;
- (void)isFeedbackEnabledForBundleURL:(id)l withCompletionHandler:(id)handler;
- (void)isLaunchScreenEnabledForBundleID:(id)d withCompletionHandler:(id)handler;
- (void)isLaunchScreenEnabledForBundleURL:(id)l withCompletionHandler:(id)handler;
- (void)setFeedbackEnabled:(BOOL)enabled forVersion:(id)version withCompletionHandler:(id)handler;
- (void)setLaunchInfo:(id)info withCompletionHandler:(id)handler;
- (void)setLaunchScreenEnabled:(BOOL)enabled forVersion:(id)version withCompletionHandler:(id)handler;
- (void)submitFeedback:(id)feedback bundleURL:(id)l withCompletionHandler:(id)handler;
- (void)submitFeedback:(id)feedback withCompletionHandler:(id)handler;
- (void)updateTestNotes:(id)notes forVersion:(id)version withCompletionHandler:(id)handler;
@end

@implementation TestFlightFeedbackService

- (void)getDisplayNamesForBundleID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v7 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = dCopy;
    v17 = 2114;
    v18 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getDisplayNamesForBundleID: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_1002406D8(v11, dCopy, v7);
  handlerCopy[2](handlerCopy, v12);
}

- (void)getDisplayNamesForBundleURL:(id)l withCompletionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v7 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = lCopy;
    v17 = 2114;
    v18 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getDisplayNamesForBundleURL: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_100240B70(v11, lCopy, v7);
  handlerCopy[2](handlerCopy, v12);
}

- (void)getEmailAddressForBundleID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v7 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = dCopy;
    v17 = 2114;
    v18 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getEmailAddressForBundleID: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_100240EAC(v11, dCopy, v7);
  handlerCopy[2](handlerCopy, v12);
}

- (void)getEmailAddressForBundleURL:(id)l withCompletionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v7 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = lCopy;
    v17 = 2114;
    v18 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getEmailAddressForBundleURL: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_1002411B0(v11, lCopy, v7);
  handlerCopy[2](handlerCopy, v12);
}

- (void)getFeedbackMetadataForBundleID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v7 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = dCopy;
    v16 = 2114;
    v17 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getFeedbackMetadataForBundleID: %{public}@ for client: %{public}@", &v12, 0x20u);
  }

  v11 = sub_1002404C0();
  sub_1002414B4(v11, dCopy, v7, handlerCopy);
}

- (void)getFeedbackMetadataForBundleURL:(id)l withCompletionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v7 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = lCopy;
    v16 = 2114;
    v17 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getFeedbackMetadataForBundleURL: %{public}@ for client: %{public}@", &v12, 0x20u);
  }

  v11 = sub_1002404C0();
  sub_100241884(v11, lCopy, v7, handlerCopy);
}

- (void)getLaunchInfoForBundleID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v7 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = dCopy;
    v16 = 2114;
    v17 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getLaunchInfoForBundleID: %{public}@ for client: %{public}@", &v12, 0x20u);
  }

  v11 = sub_1002404C0();
  sub_100241C54(v11, dCopy, v7, handlerCopy);
}

- (void)getLaunchInfoForBundleURL:(id)l withCompletionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v7 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = lCopy;
    v16 = 2114;
    v17 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getLaunchInfoForBundleURL: %{public}@ for client: %{public}@", &v12, 0x20u);
  }

  v11 = sub_1002404C0();
  sub_1002420A4(v11, lCopy, v7, handlerCopy);
}

- (void)getLaunchInfoForVersion:(id)version withCompletionHandler:(id)handler
{
  versionCopy = version;
  handlerCopy = handler;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v7 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = versionCopy;
    v16 = 2114;
    v17 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ getLaunchInfoForVersion: %{public}@ for client: %{public}@", &v12, 0x20u);
  }

  v11 = sub_1002404C0();
  sub_1002424F4(v11, versionCopy, v7, handlerCopy);
}

- (void)isFeedbackEnabledForBundleID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v7 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = dCopy;
    v17 = 2114;
    v18 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ isFeedbackEnabledForBundleID: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_1002427A4(v11, dCopy, v7);
  handlerCopy[2](handlerCopy, v12);
}

- (void)isFeedbackEnabledForBundleURL:(id)l withCompletionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v7 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = lCopy;
    v17 = 2114;
    v18 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ isFeedbackEnabledForBundleURL: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_100242AC4(v11, lCopy, v7);
  handlerCopy[2](handlerCopy, v12);
}

- (void)isLaunchScreenEnabledForBundleID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v7 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = dCopy;
    v17 = 2114;
    v18 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ isLaunchScreenEnabledForBundleID: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_100242CE4(v11, dCopy, v7);
  handlerCopy[2](handlerCopy, v12);
}

- (void)isLaunchScreenEnabledForBundleURL:(id)l withCompletionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v7 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = lCopy;
    v17 = 2114;
    v18 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ isLaunchScreenEnabledForBundleURL: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v11 = sub_1002404C0();
  v12 = sub_100242F8C(v11, lCopy, v7);
  handlerCopy[2](handlerCopy, v12);
}

- (void)setFeedbackEnabled:(BOOL)enabled forVersion:(id)version withCompletionHandler:(id)handler
{
  versionCopy = version;
  handlerCopy = handler;
  v9 = sub_100003B90();
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v9 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = versionCopy;
    v18 = 2114;
    v19 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ setFeedbackEnabled:forVersion: %{public}@ for client: %{public}@", &v14, 0x20u);
  }

  v13 = sub_1002404C0();
  sub_100243D30(v13, enabled, versionCopy, v9, handlerCopy);
}

- (void)setLaunchInfo:(id)info withCompletionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    version = [infoCopy version];
    processInfo = [v7 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = version;
    v17 = 2114;
    v18 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ setLaunchInfo: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v12 = sub_1002404C0();
  sub_10024412C(v12, infoCopy, v7, handlerCopy);
}

- (void)setLaunchScreenEnabled:(BOOL)enabled forVersion:(id)version withCompletionHandler:(id)handler
{
  versionCopy = version;
  handlerCopy = handler;
  v9 = sub_100003B90();
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v9 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = versionCopy;
    v18 = 2114;
    v19 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ setLaunchScreenEnabled:forVersion: %{public}@ for client: %{public}@", &v14, 0x20u);
  }

  v13 = sub_1002404C0();
  sub_100244530(v13, enabled, versionCopy, v9, handlerCopy);
}

- (void)submitFeedback:(id)feedback withCompletionHandler:(id)handler
{
  feedbackCopy = feedback;
  handlerCopy = handler;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [feedbackCopy bundleID];
    processInfo = [v7 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = bundleID;
    v17 = 2114;
    v18 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ submitFeedback: %{public}@ for client: %{public}@", &v13, 0x20u);
  }

  v12 = sub_1002404C0();
  sub_10024492C(v12, feedbackCopy, v7, handlerCopy);
}

- (void)submitFeedback:(id)feedback bundleURL:(id)l withCompletionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  feedbackCopy = feedback;
  v10 = sub_100003B90();
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v10 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v15 = 138543874;
    v16 = v10;
    v17 = 2114;
    v18 = lCopy;
    v19 = 2114;
    v20 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ submitFeedback:bundleURL %{public}@ for client: %{public}@", &v15, 0x20u);
  }

  v14 = sub_1002404C0();
  sub_100245288(v14, feedbackCopy, lCopy, v10, handlerCopy);
}

- (void)updateTestNotes:(id)notes forVersion:(id)version withCompletionHandler:(id)handler
{
  versionCopy = version;
  handlerCopy = handler;
  notesCopy = notes;
  v10 = sub_100003B90();
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v10 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v15 = 138543874;
    v16 = v10;
    v17 = 2114;
    v18 = versionCopy;
    v19 = 2114;
    v20 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ updateTestNotes:forVersion: %{public}@ for client: %{public}@", &v15, 0x20u);
  }

  v14 = sub_1002404C0();
  sub_1002453AC(v14, notesCopy, versionCopy, v10, handlerCopy);
}

@end