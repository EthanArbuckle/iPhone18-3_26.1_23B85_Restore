@interface CacheDeleteCoordinator
- (CacheDeleteCoordinator)init;
- (void)applicationDatabaseResyncedForDeviceWithPairingID:(id)d;
- (void)applicationsInstalled:(id)installed onDeviceWithPairingID:(id)d;
- (void)applicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d;
- (void)applicationsUpdated:(id)updated onDeviceWithPairingID:(id)d;
- (void)dealloc;
@end

@implementation CacheDeleteCoordinator

- (CacheDeleteCoordinator)init
{
  v21.receiver = self;
  v21.super_class = CacheDeleteCoordinator;
  v2 = [(CacheDeleteCoordinator *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    attr = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

    v4 = dispatch_queue_create("com.apple.appstored.CacheDeleteCoordinator.run", attr);
    runQueue = v2->_runQueue;
    v2->_runQueue = v4;

    v6 = objc_opt_new();
    appPurgeCoordinator = v2->_appPurgeCoordinator;
    v2->_appPurgeCoordinator = v6;

    objc_initWeak(&location, v2);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100298BB0;
    v28[3] = &unk_100520360;
    objc_copyWeak(&v29, &location);
    v8 = objc_retainBlock(v28);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100298F40;
    v26[3] = &unk_100520360;
    objc_copyWeak(&v27, &location);
    v9 = objc_retainBlock(v26);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10029982C;
    v24[3] = &unk_10051F888;
    objc_copyWeak(&v25, &location);
    v10 = objc_retainBlock(v24);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1002999D0;
    v22[3] = &unk_100520360;
    objc_copyWeak(&v23, &location);
    v11 = objc_retainBlock(v22);
    v12 = CacheDeleteRegisterInfoCallbacks();
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138543874;
      v32 = v14;
      v33 = 2114;
      v34 = @"com.apple.appstored.CacheDelete";
      v35 = 1024;
      v36 = v12;
      v15 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registered cache delete callbacks for clientID: %{public}@ with osResult: %d", buf, 0x1Cu);
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
    v16 = sub_100394290();
    sub_1003948DC(v16, v2);

    v17 = objc_alloc_init(PartialDownloadPurgeCoordinator);
    partialDownloadPurgeCoordinator = v2->_partialDownloadPurgeCoordinator;
    v2->_partialDownloadPurgeCoordinator = v17;
  }

  return v2;
}

- (void)dealloc
{
  scheduledTimer = self->_scheduledTimer;
  if (scheduledTimer)
  {
    dispatch_source_cancel(scheduledTimer);
  }

  v4 = sub_100394290();
  sub_100394B18(v4, self);

  v5.receiver = self;
  v5.super_class = CacheDeleteCoordinator;
  [(CacheDeleteCoordinator *)&v5 dealloc];
}

- (void)applicationDatabaseResyncedForDeviceWithPairingID:(id)d
{
  dCopy = d;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = dCopy;
    v6 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating purgeable storage after database rsynced for device: %{public}@", &v7, 0x16u);
  }

  if (self)
  {
    sub_100299D0C(self, 1, 0, 10.0);
  }
}

- (void)applicationsUpdated:(id)updated onDeviceWithPairingID:(id)d
{
  dCopy = d;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = dCopy;
    v7 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating purgeable storage after applications updated for device: %{public}@", &v8, 0x16u);
  }

  if (self)
  {
    sub_100299D0C(self, 1, 0, 10.0);
  }
}

- (void)applicationsInstalled:(id)installed onDeviceWithPairingID:(id)d
{
  dCopy = d;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = dCopy;
    v7 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating purgeable storage after applications installed for device: %{public}@", &v8, 0x16u);
  }

  if (self)
  {
    sub_100299D0C(self, 1, 0, 10.0);
  }
}

- (void)applicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d
{
  dCopy = d;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = dCopy;
    v7 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating purgeable storage after applications uninstalled for device: %{public}@", &v8, 0x16u);
  }

  if (self)
  {
    sub_100299D0C(self, 1, 0, 10.0);
  }
}

@end