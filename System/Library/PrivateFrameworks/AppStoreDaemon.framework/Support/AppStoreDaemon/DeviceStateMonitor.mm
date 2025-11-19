@interface DeviceStateMonitor
- (DeviceStateMonitor)init;
- (void)_handleSetupAssistantNotification:(id)a3;
- (void)dealloc;
- (void)environment:(id)a3 stateDidChangeFromOldState:(id)a4;
@end

@implementation DeviceStateMonitor

- (DeviceStateMonitor)init
{
  v18.receiver = self;
  v18.super_class = DeviceStateMonitor;
  v2 = [(DeviceStateMonitor *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_get_global_queue(17, 0);
    v5 = dispatch_queue_create_with_target_V2("com.apple.appstored.DeviceStateMonitor", v3, v4);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v7 = sem_open("appstored.run-once", 0);
    v8 = v7;
    if (v7 != -1)
    {
      sem_close(v7);
    }

    v9 = ASDLogHandleForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8 == -1)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Device] First boot. Clearing once per boot items", buf, 2u);
      }

      sub_1003D51F0(AppDefaultsManager, 0);
      v11 = sem_open("appstored.run-once", 512, 256, 0);
      if (v11 != -1)
      {
        sem_close(v11);
LABEL_14:
        v12 = v2->_dispatchQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10023CA14;
        block[3] = &unk_10051AF98;
        v17 = v2;
        dispatch_sync(v12, block);

        return v2;
      }

      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = __error();
        v15 = strerror(*v14);
        *buf = 136315394;
        v20 = v15;
        v21 = 2080;
        v22 = "appstored.run-once";
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[Device] Failed to create first-run semaphore: %s sem: %s", buf, 0x16u);
      }
    }

    else if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Device] Starting", buf, 2u);
    }

    goto LABEL_14;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[LAEnvironment currentUser];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DeviceStateMonitor;
  [(DeviceStateMonitor *)&v4 dealloc];
}

- (void)environment:(id)a3 stateDidChangeFromOldState:(id)a4
{
  v5 = [a3 state];
  v6 = [v5 biometry];
  v7 = [v6 isLockedOut];

  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10023CF04;
  v9[3] = &unk_10051C8F8;
  v9[4] = self;
  v10 = v7;
  dispatch_async(dispatchQueue, v9);
}

- (void)_handleSetupAssistantNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023DB18;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

@end