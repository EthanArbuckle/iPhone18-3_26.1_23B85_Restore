@interface SSRemoteAlertMonitor
- (SSRemoteAlertMonitor)initWithBundleID:(id)a3 dismissHandler:(id)a4;
- (void)_handleLayoutUpdate:(id)a3;
- (void)_startObserving;
- (void)_stopObserving;
- (void)dealloc;
@end

@implementation SSRemoteAlertMonitor

- (SSRemoteAlertMonitor)initWithBundleID:(id)a3 dismissHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 length])
    {
      v8 = v6;
    }

    else
    {
      v11 = +[NSBundle mainBundle];
      v8 = [v11 bundleIdentifier];

      v12 = sub_10000C1BC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10000F558(v8, v12);
      }
    }

    v17.receiver = self;
    v17.super_class = SSRemoteAlertMonitor;
    v13 = [(SSRemoteAlertMonitor *)&v17 init];
    if (v13)
    {
      v14 = objc_retainBlock(v7);
      dismissHandler = v13->_dismissHandler;
      v13->_dismissHandler = v14;

      v13->_displayState = 0;
      objc_storeStrong(&v13->_bundleID, v8);
      [(SSRemoteAlertMonitor *)v13 _startObserving];
    }

    self = v13;
    v6 = v8;
    v10 = self;
  }

  else
  {
    v9 = sub_10000C1BC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000F5E4(v9);
    }

    v10 = 0;
  }

  return v10;
}

- (void)dealloc
{
  [(SSRemoteAlertMonitor *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = SSRemoteAlertMonitor;
  [(SSRemoteAlertMonitor *)&v3 dealloc];
}

- (void)_startObserving
{
  if (!self->_monitor)
  {
    v3 = sub_10000C1BC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      bundleID = self->_bundleID;
      *buf = 138412546;
      v11 = bundleID;
      v12 = 2080;
      v13 = "[SSRemoteAlertMonitor _startObserving]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "start fbs monitor for %@ @%s", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v5 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000BC14;
    v8[3] = &unk_10001C940;
    objc_copyWeak(&v9, buf);
    [v5 setTransitionHandler:v8];
    v6 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v5];
    monitor = self->_monitor;
    self->_monitor = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

- (void)_stopObserving
{
  v3 = sub_10000C1BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SSRemoteAlertMonitor _stopObserving]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stop fbs monitor @%s", &v5, 0xCu);
  }

  [(FBSDisplayLayoutMonitor *)self->_monitor invalidate];
  monitor = self->_monitor;
  self->_monitor = 0;
}

- (void)_handleLayoutUpdate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 elements];
    v7 = [v6 count];

    if (v7)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v8 = [v5 elements];
      v9 = [v8 countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (v9)
      {
        v11 = v9;
        v12 = *v33;
        *&v10 = 138412802;
        v31 = v10;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v32 + 1) + 8 * i);
            v15 = [v14 isUIApplicationElement];
            v16 = sub_10000C1BC();
            v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
            if (v15)
            {
              if (v17)
              {
                v18 = [v14 bundleIdentifier];
                v19 = [v14 level];
                *buf = v31;
                v37 = v18;
                v38 = 2048;
                v39 = v19;
                v40 = 2080;
                v41 = "[SSRemoteAlertMonitor _handleLayoutUpdate:]";
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ lvl:%ld @%s", buf, 0x20u);
              }

              bundleID = self->_bundleID;
              v21 = [v14 bundleIdentifier];
              LOBYTE(bundleID) = [(NSString *)bundleID isEqualToString:v21];

              if (bundleID)
              {
                v29 = &__kCFBooleanTrue;
LABEL_27:
                isUIApplication = self->_isUIApplication;
                self->_isUIApplication = v29;

                self->_displayState = 1;
                goto LABEL_28;
              }
            }

            else
            {
              if (v17)
              {
                v22 = [v14 identifier];
                v23 = [v14 level];
                *buf = v31;
                v37 = v22;
                v38 = 2048;
                v39 = v23;
                v40 = 2080;
                v41 = "[SSRemoteAlertMonitor _handleLayoutUpdate:]";
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ lvl:%ld @%s", buf, 0x20u);
              }

              v24 = self->_bundleID;
              v25 = [v14 identifier];
              LOBYTE(v24) = [(NSString *)v24 isEqualToString:v25];

              if (v24)
              {
                v29 = &__kCFBooleanFalse;
                goto LABEL_27;
              }
            }
          }

          v11 = [v8 countByEnumeratingWithState:&v32 objects:v42 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      if (self->_displayState == 1)
      {
        v26 = sub_10000C1BC();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = self->_bundleID;
          *buf = 138412546;
          v37 = v27;
          v38 = 2080;
          v39 = "[SSRemoteAlertMonitor _handleLayoutUpdate:]";
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@ is dismissed @%s", buf, 0x16u);
        }

        (*(self->_dismissHandler + 2))();
        if (![(NSNumber *)self->_isUIApplication BOOLValue])
        {
          [(SSRemoteAlertMonitor *)self _stopObserving];
        }
      }
    }

    else
    {
      v28 = sub_10000C1BC();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v37 = "[SSRemoteAlertMonitor _handleLayoutUpdate:]";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "no elements @%s", buf, 0xCu);
      }
    }
  }

LABEL_28:
}

@end