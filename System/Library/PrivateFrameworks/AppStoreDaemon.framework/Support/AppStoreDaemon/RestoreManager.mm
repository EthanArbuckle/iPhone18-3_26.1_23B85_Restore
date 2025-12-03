@interface RestoreManager
- (RestoreManager)init;
- (void)_bootstrapWhenReadyWithInfo:(id)info;
- (void)_handleMonitorStateDidChangeNotification:(id)notification;
- (void)_restoreCellularAccessChangedNotification:(id)notification;
- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation RestoreManager

- (RestoreManager)init
{
  v21.receiver = self;
  v21.super_class = RestoreManager;
  v2 = [(RestoreManager *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.RestoreManager.dispatch", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(TaskQueue);
    restoreQueue = v2->_restoreQueue;
    v2->_restoreQueue = v6;

    v8 = v2->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100285998;
    block[3] = &unk_10051AF98;
    v9 = v2;
    v20 = v9;
    dispatch_async(v8, block);
    uTF8String = [kMBManagerRestoreStateChangedNotification UTF8String];
    v11 = v2->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10028621C;
    handler[3] = &unk_10051FB68;
    v12 = v9;
    v18 = v12;
    notify_register_dispatch(uTF8String, v9 + 10, v11, handler);
    v13 = v2->_dispatchQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1002863F8;
    v15[3] = &unk_10051AF98;
    v16 = v12;
    dispatch_async(v13, v15);
  }

  return v2;
}

- (void)_bootstrapWhenReadyWithInfo:(id)info
{
  selfa = info;
  v4 = sub_100006B78();
  v5 = sub_10028D40C(self);
  if (sub_10023D5E0(v4))
  {
    if (sub_10023CFD0(v4))
    {
      v6 = sub_100227468();
      v7 = v5 & [v6 isConnected];

      if (v7 == 1)
      {
        if (selfa && (selfa[8] & 1) != 0)
        {
          v8 = +[BagService appstoredService];
          lastBag = [v8 lastBag];
          v10 = [lastBag BOOLForKey:@"preflightAccountsOnStartup" defaultValue:1];

          if (v10)
          {
            v11 = sub_10028613C(self);
            if ((selfa[9] & 1) == 0)
            {
              v12 = v11;
              if (v11 >= 1)
              {
                v13 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  v59 = v12;
                  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Account preflight retry for %ld hard failure(s)", buf, 0xCu);
                }

                sub_10028BD74(self, 0);
              }
            }
          }

          else
          {
            v53 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Skipping account preflight retry due to bag override", buf, 2u);
            }
          }

          goto LABEL_43;
        }

        v43 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          if (selfa)
          {
            Property = objc_getProperty(selfa, v44, 24, 1);
          }

          else
          {
            Property = 0;
          }

          *buf = 138543362;
          v59 = Property;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Initializing now that there is network, setup complete, and data migration complete, bag loaded for accountID: %{public}@", buf, 0xCu);
        }

        v47 = selfa;
        if (selfa)
        {
          v48 = objc_getProperty(selfa, v46, 16, 1);
          v50 = objc_getProperty(selfa, v49, 24, 1);
          v47 = selfa[9];
        }

        else
        {
          v50 = 0;
          v48 = 0;
        }

        sub_100287244(self, v48, v50, v47 & 1);

        if (sub_100289018())
        {
          if (sub_10028A788(self) < 1 || sub_1003D6248())
          {
            v42 = ASDLogHandleForCategory();
            if (os_log_type_enabled(&v42->super, OS_LOG_TYPE_DEFAULT))
            {
              v51 = sub_10028A788(self);
              v52 = sub_1003D6248();
              *buf = 134218240;
              v59 = v51;
              v60 = 1024;
              *v61 = v52;
              _os_log_impl(&_mh_execute_header, &v42->super, OS_LOG_TYPE_DEFAULT, "App distributor is missing. %ld app(s) waiting hasPresentedDistributorRestoreDialog: %{BOOL}d", buf, 0x12u);
            }
          }

          else
          {
            sub_1003D642C(AppDefaultsManager, 1);
            v42 = objc_alloc_init(_TtC9appstored6LogKey);
            v54 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              v55 = sub_10028605C(self);
              *buf = 138412546;
              v59 = v42;
              v60 = 2048;
              *v61 = v55;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[%@] Will present dialog to get app distributor with %ld app(s) waiting", buf, 0x16u);
            }

            sub_100287A30(self, v42, 0);
          }

LABEL_42:

          goto LABEL_43;
        }

        goto LABEL_43;
      }
    }
  }

  sub_100232B90(self, selfa);
  v14 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (selfa)
    {
      v16 = objc_getProperty(selfa, v15, 16, 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = sub_10023D5E0(v4);
    v19 = sub_10023CFD0(v4);
    v20 = sub_100227468();

    *buf = 138544386;
    v59 = v16;
    v60 = 1024;
    *v61 = v18;
    *&v61[4] = 1024;
    *&v61[6] = v19;
    v62 = 1024;
    isConnected = [v20 isConnected];
    v64 = 1024;
    v65 = v5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not ready to bootstrap restore for reason: %{public}@. Setup complete: %d migrator complete: %d network available: %d bag loaded: %d", buf, 0x24u);
  }

  v21 = sub_100227468();
  if ([v21 isConnected])
  {

    goto LABEL_26;
  }

  if (self)
  {
    bootstrapNetworkMonitorAdded = self->_bootstrapNetworkMonitorAdded;

    if (bootstrapNetworkMonitorAdded)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v23 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    if (selfa)
    {
      v25 = objc_getProperty(selfa, v24, 16, 1);
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_10023D5E0(v4);
    v27 = sub_10023CFD0(v4);
    *buf = 138544130;
    v59 = v25;
    v60 = 1024;
    *v61 = v26;
    *&v61[4] = 1024;
    *&v61[6] = v27;
    v62 = 1024;
    isConnected = v5;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Creating network monitor to bootstrap restore for reason: %{public}@. Setup complete: %d migrator complete: %d bag loaded: %d", buf, 0x1Eu);
  }

  v28 = +[NSNotificationCenter defaultCenter];
  v29 = sub_100227468();
  [v28 addObserver:self selector:"_handleMonitorStateDidChangeNotification:" name:@"NetworkStateDidChangeNotification" object:v29];

  if (self)
  {
    self->_bootstrapNetworkMonitorAdded = 1;
  }

LABEL_26:
  if ((!sub_10023D5E0(v4) || (sub_10023CFD0(v4) & 1) == 0) && (!self || !self->_bootstrapDeviceMonitorAdded))
  {
    v30 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      if (selfa)
      {
        v32 = objc_getProperty(selfa, v31, 16, 1);
      }

      else
      {
        v32 = 0;
      }

      v33 = sub_10023D5E0(v4);
      v34 = sub_10023CFD0(v4);
      *buf = 138544130;
      v59 = v32;
      v60 = 1024;
      *v61 = v33;
      *&v61[4] = 1024;
      *&v61[6] = v34;
      v62 = 1024;
      isConnected = v5;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Creating device monitor to bootstrap restore for reason: %{public}@. Setup complete: %d migrator complete: %d bag loaded: %d", buf, 0x1Eu);
    }

    v35 = +[NSNotificationCenter defaultCenter];
    v36 = sub_100006B78();
    [v35 addObserver:self selector:"_handleMonitorStateDidChangeNotification:" name:@"DeviceStateDidChangeNotification" object:v36];

    if (self)
    {
      self->_bootstrapDeviceMonitorAdded = 1;
    }
  }

  if (!v5)
  {
    v37 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      if (selfa)
      {
        v39 = objc_getProperty(selfa, v38, 16, 1);
      }

      else
      {
        v39 = 0;
      }

      v40 = sub_10023D5E0(v4);
      v41 = sub_10023CFD0(v4);
      *buf = 138544130;
      v59 = v39;
      v60 = 1024;
      *v61 = v40;
      *&v61[4] = 1024;
      *&v61[6] = v41;
      v62 = 1024;
      isConnected = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Creating bag monitor to bootstrap restore for reason: %{public}@. Setup complete: %d migrator complete: %d bag loaded: %d", buf, 0x1Eu);
    }

    v42 = +[BagService appstoredService];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_10028DDE0;
    v57[3] = &unk_10051DFC8;
    v57[4] = self;
    [(LogKey *)v42 recentBagNoTimeoutWithCompletionHandler:v57];
    goto LABEL_42;
  }

LABEL_43:
}

- (void)_handleMonitorStateDidChangeNotification:(id)notification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100290AB8;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_restoreCellularAccessChangedNotification:(id)notification
{
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(RestoreManager) Received notification of restore cellular access change", buf, 2u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100292CA4;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting dialog task", buf, 0xCu);
  }

  v10 = [[AMSSystemAlertDialogTask alloc] initWithRequest:requestCopy];
  present = [v10 present];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100293054;
  v13[3] = &unk_10051E068;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [present addFinishBlock:v13];
}

@end