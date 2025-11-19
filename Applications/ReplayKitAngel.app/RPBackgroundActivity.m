@interface RPBackgroundActivity
- (RPBackgroundActivity)initWithBackgroundActivityIdentifier:(id)a3;
- (void)activateWithUserInteractionHandler:(id)a3;
- (void)deactivate;
- (void)dealloc;
- (void)publishNewDataWithUserInteractionHandler:(id)a3;
- (void)updateTimerString:(id)a3;
@end

@implementation RPBackgroundActivity

- (RPBackgroundActivity)initWithBackgroundActivityIdentifier:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v15 = "[RPBackgroundActivity initWithBackgroundActivityIdentifier:]";
    v16 = 1024;
    v17 = 28;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Initializing with identifier: %@", buf, 0x1Cu);
  }

  if (!v4 || ![(__CFString *)v4 length])
  {
    if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100043174();
    }

    v4 = @"com.apple.systemstatus.background-activity.replaykit.callrecording.recording";
  }

  v13.receiver = self;
  v13.super_class = RPBackgroundActivity;
  v5 = [(RPBackgroundActivity *)&v13 init];
  if (v5)
  {
    v6 = [(__CFString *)v4 copy];
    backgroundActivityIdentifier = v5->_backgroundActivityIdentifier;
    v5->_backgroundActivityIdentifier = v6;

    v5->_backgroundActivityActive = 0;
    currentTimerString = v5->_currentTimerString;
    v5->_currentTimerString = 0;

    v9 = dispatch_queue_create("com.apple.replaykit.backgroundactivity", 0);
    synchronizationQueue = v5->_synchronizationQueue;
    v5->_synchronizationQueue = v9;

    v11 = objc_alloc_init(STBackgroundActivitiesStatusDomainPublisher);
    [(RPBackgroundActivity *)v5 setPublisher:v11];
  }

  return v5;
}

- (void)dealloc
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[RPBackgroundActivity dealloc]";
    v8 = 1024;
    v9 = 50;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Deallocating RPBackgroundActivity", buf, 0x12u);
  }

  [(RPBackgroundActivity *)self deactivate];
  v3 = [(RPBackgroundActivity *)self publisher];

  if (v3)
  {
    v4 = [(RPBackgroundActivity *)self publisher];
    [v4 invalidate];

    [(RPBackgroundActivity *)self setPublisher:0];
  }

  [(RPBackgroundActivity *)self setCurrentAttribution:0];
  [(RPBackgroundActivity *)self setCurrentTimerString:0];
  v5.receiver = self;
  v5.super_class = RPBackgroundActivity;
  [(RPBackgroundActivity *)&v5 dealloc];
}

- (void)activateWithUserInteractionHandler:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v8 = "[RPBackgroundActivity activateWithUserInteractionHandler:]";
    v9 = 1024;
    v10 = 63;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Activating background activity", buf, 0x12u);
  }

  synchronizationQueue = self->_synchronizationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026D0;
  block[3] = &unk_10005D098;
  block[4] = self;
  dispatch_sync(synchronizationQueue, block);
  [(RPBackgroundActivity *)self publishNewDataWithUserInteractionHandler:v4];
}

- (void)deactivate
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[RPBackgroundActivity deactivate]";
    *&buf[12] = 1024;
    *&buf[14] = 77;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Deactivating background activity", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v6 = 0;
  synchronizationQueue = self->_synchronizationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002924;
  v4[3] = &unk_10005D0C0;
  v4[4] = self;
  v4[5] = buf;
  dispatch_sync(synchronizationQueue, v4);
  if (*(*&buf[8] + 24) == 1)
  {
    [(RPBackgroundActivity *)self publishNewDataWithUserInteractionHandler:0];
  }

  _Block_object_dispose(buf, 8);
}

- (void)updateTimerString:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[RPBackgroundActivity updateTimerString:]";
    *&buf[12] = 1024;
    *&buf[14] = 95;
    *&buf[18] = 2112;
    *&buf[20] = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d timer=%@", buf, 0x1Cu);
  }

  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 0;
    synchronizationQueue = self->_synchronizationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002D14;
    block[3] = &unk_10005D0E8;
    v11 = buf;
    block[4] = self;
    v10 = v4;
    dispatch_sync(synchronizationQueue, block);
    if (*(*&buf[8] + 24))
    {
      if (self->_publisher)
      {
        objc_initWeak(location, self);
        publisher = self->_publisher;
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_100002D7C;
        v7[3] = &unk_10005D110;
        objc_copyWeak(&v8, location);
        [(STBackgroundActivitiesStatusDomainPublisher *)publisher updateVolatileData:v7 completion:0];
        objc_destroyWeak(&v8);
        objc_destroyWeak(location);
      }

      else if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000431F4();
      }
    }

    else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136446466;
      *&location[4] = "[RPBackgroundActivity updateTimerString:]";
      v13 = 1024;
      v14 = 109;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Background activity not active, storing timer string for later use", location, 0x12u);
    }

    _Block_object_dispose(buf, 8);
  }

  else if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100043274();
  }
}

- (void)publishNewDataWithUserInteractionHandler:(id)a3
{
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  synchronizationQueue = self->_synchronizationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003424;
  block[3] = &unk_10005D138;
  block[4] = self;
  block[5] = &v23;
  dispatch_sync(synchronizationQueue, block);
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v24 + 24);
    *buf = 136446722;
    v28 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]";
    v29 = 1024;
    v30 = 148;
    v31 = 1024;
    LODWORD(v32) = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Publishing new data with active state: %d", buf, 0x18u);
  }

  v7 = [(RPBackgroundActivity *)self publisher];
  v8 = v7 == 0;

  if (!v8)
  {
    v9 = self->_currentAttribution;
    if (*(v24 + 24) == 1)
    {
      BSAuditTokenForCurrentProcess();
      v10 = [STActivityAttribution attributionWithAuditToken:buf];
      if (v10)
      {
        v11 = [[STBackgroundActivitiesStatusDomainBackgroundActivityAttribution alloc] initWithBackgroundActivityIdentifier:self->_backgroundActivityIdentifier activityAttribution:v10];
        if (v11)
        {
          if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v28 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]";
            v29 = 1024;
            v30 = 174;
            v31 = 2112;
            v32 = v11;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Created new background activity attribution=%@", buf, 0x1Cu);
          }

          goto LABEL_16;
        }

        if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000432F4();
        }
      }

      else if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100043374();
      }

      v14 = 0;
      goto LABEL_24;
    }

    v11 = 0;
LABEL_16:
    objc_initWeak(buf, self);
    publisher = self->_publisher;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100003438;
    v19[3] = &unk_10005D160;
    v20 = v9;
    v13 = v11;
    v21 = v13;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000035EC;
    v15[3] = &unk_10005D1D8;
    objc_copyWeak(&v18, buf);
    v14 = v13;
    v16 = v14;
    v17 = v4;
    [(STBackgroundActivitiesStatusDomainPublisher *)publisher updateVolatileData:v19 completion:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
LABEL_24:

    goto LABEL_25;
  }

  if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000433F4();
  }

LABEL_25:
  _Block_object_dispose(&v23, 8);
}

@end