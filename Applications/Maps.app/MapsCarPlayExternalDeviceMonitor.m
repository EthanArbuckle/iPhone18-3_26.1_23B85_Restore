@interface MapsCarPlayExternalDeviceMonitor
+ (id)sharedInstance;
- (AVExternalDevice)carPlayExternalDevice;
- (MapsCarPlayExternalDeviceMonitor)init;
- (void)_populateExternalDevice;
- (void)dealloc;
@end

@implementation MapsCarPlayExternalDeviceMonitor

+ (id)sharedInstance
{
  if (qword_10195F620 != -1)
  {
    dispatch_once(&qword_10195F620, &stru_101658BE0);
  }

  v3 = qword_10195F628;

  return v3;
}

- (MapsCarPlayExternalDeviceMonitor)init
{
  v17.receiver = self;
  v17.super_class = MapsCarPlayExternalDeviceMonitor;
  v2 = [(MapsCarPlayExternalDeviceMonitor *)&v17 init];
  if (v2)
  {
    v3 = sub_10000649C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing", buf, 2u);
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("MapsCarPlayExternalDeviceMonitor.queue", v4);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    objc_initWeak(buf, v2);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100EE1F78;
    v14[3] = &unk_101658C08;
    objc_copyWeak(&v15, buf);
    v7 = objc_retainBlock(v14);
    if (notify_register_dispatch("com.apple.coremedia.active-endpoint-changed", v2 + 6, *(v2 + 1), v7))
    {
      v8 = sub_10000649C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to register for CarPlay external devices", v13, 2u);
      }
    }

    v9 = *(v2 + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006534;
    block[3] = &unk_101661B18;
    v12 = v2;
    dispatch_async(v9, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (void)_populateExternalDevice
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_externalDevice;
  v4 = sub_10000649C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetching currentCarPlayExternalDevice", buf, 2u);
  }

  v5 = +[AVExternalDevice currentCarPlayExternalDevice];
  externalDevice = self->_externalDevice;
  self->_externalDevice = v5;

  v7 = sub_10000649C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_externalDevice;
    *buf = 138543362;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got currentCarPlayExternalDevice: %{public}@", buf, 0xCu);
  }

  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100EE1E6C;
    block[3] = &unk_101661B18;
    v10 = v3;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (AVExternalDevice)carPlayExternalDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100EE1F14;
  v10 = sub_100EE1F24;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007033C;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)dealloc
{
  notify_cancel(self->_token);
  v3.receiver = self;
  v3.super_class = MapsCarPlayExternalDeviceMonitor;
  [(MapsCarPlayExternalDeviceMonitor *)&v3 dealloc];
}

@end