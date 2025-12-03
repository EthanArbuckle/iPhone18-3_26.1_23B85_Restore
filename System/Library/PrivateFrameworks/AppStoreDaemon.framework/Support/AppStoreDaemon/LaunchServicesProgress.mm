@interface LaunchServicesProgress
- (void)_handleCancelInstallMessage:(id)message fromDevice:(id)device;
- (void)cancelApp:(id)app onPairedDevice:(id)device withCompletionHandler:(id)handler;
- (void)cancelApp:(id)app withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)pauseApp:(id)app withCompletionHandler:(id)handler;
- (void)resumeApp:(id)app withCompletionHandler:(id)handler;
@end

@implementation LaunchServicesProgress

- (void)dealloc
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = LaunchServicesProgress;
  [(LaunchServicesProgress *)&v4 dealloc];
}

- (void)cancelApp:(id)app onPairedDevice:(id)device withCompletionHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  deviceCopy = device;
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = appCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Canceling remote job for %{public}@", buf, 0xCu);
  }

  v12 = sub_1002B0154();
  v13 = sub_1002B08FC(v12, deviceCopy);

  if (v13 && (v13[18] & 1) != 0)
  {
    v14 = objc_alloc_init(XDCCancelInstallRequest);
    bundleID = [appCopy bundleID];
    sub_10029B38C(v14, bundleID);

    v16 = sub_1002EB36C();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001E3F20;
    v21[3] = &unk_10051C2A0;
    v22 = appCopy;
    selfCopy = self;
    v24 = handlerCopy;
    sub_1002EB9D4(v16, v14, 0, v13, v21);

LABEL_10:
    goto LABEL_11;
  }

  v17 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v26 = appCopy;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unable to cancel remote job for %{public}@, not a supported device", buf, 0xCu);
  }

  if (handlerCopy)
  {
    v18 = dispatch_get_global_queue(21, 0);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001E41C4;
    v19[3] = &unk_10051BD28;
    v20 = handlerCopy;
    dispatch_async(v18, v19);

    v14 = v20;
    goto LABEL_10;
  }

LABEL_11:
}

- (void)cancelApp:(id)app withCompletionHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = appCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Canceling local job for %{public}@", buf, 0xCu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001E4434;
  v22[3] = &unk_10051C2F0;
  v22[4] = self;
  v9 = appCopy;
  v23 = v9;
  v10 = objc_retainBlock(v22);
  v11 = +[_TtC9appstored13RestoreKeeper shared];
  bundleID = [v9 bundleID];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001E48B0;
  v17[3] = &unk_10051C318;
  v18 = v11;
  v19 = v9;
  v20 = handlerCopy;
  v21 = v10;
  v13 = v10;
  v14 = handlerCopy;
  v15 = v9;
  v16 = v11;
  [v16 installForBundleID:bundleID completionHandler:v17];
}

- (void)pauseApp:(id)app withCompletionHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = appCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Pausing local job for %{public}@", buf, 0xCu);
  }

  v9 = +[BagService appstoredService];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001E4BCC;
  v12[3] = &unk_10051C340;
  v12[4] = self;
  v13 = appCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = appCopy;
  [v9 bagWithCompletionHandler:v12];
}

- (void)resumeApp:(id)app withCompletionHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = appCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resuming local job for %{public}@", buf, 0xCu);
  }

  v9 = +[BagService appstoredService];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001E4E94;
  v12[3] = &unk_10051C340;
  v12[4] = self;
  v13 = appCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = appCopy;
  [v9 bagWithCompletionHandler:v12];
}

- (void)_handleCancelInstallMessage:(id)message fromDevice:(id)device
{
  messageCopy = message;
  deviceCopy = device;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Handling cancel install app message", buf, 2u);
  }

  v10 = [XDCCancelInstallRequest alloc];
  if (messageCopy)
  {
    Property = objc_getProperty(messageCopy, v9, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v12 = Property;
  v13 = [(XDCCancelInstallRequest *)v10 initWithData:v12];

  v14 = sub_1003649C8();
  if (v13)
  {
    bundleID = v13->_bundleID;
  }

  else
  {
    bundleID = 0;
  }

  v16 = bundleID;
  sub_100365318(v14, v16);

  v17 = [ASDApp alloc];
  if (v13)
  {
    v18 = v13->_bundleID;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [v17 initWithBundleID:v19];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001E5564;
  v24[3] = &unk_10051C3B8;
  v25 = messageCopy;
  v26 = v13;
  v27 = deviceCopy;
  v21 = deviceCopy;
  v22 = v13;
  v23 = messageCopy;
  [(LaunchServicesProgress *)self cancelApp:v20 withCompletionHandler:v24];
}

@end