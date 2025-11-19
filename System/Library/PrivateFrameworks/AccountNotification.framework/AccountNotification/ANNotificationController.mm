@interface ANNotificationController
- (ANNotificationController)init;
- (id)_clientSideNotifierWithMachServiceName:(id)a3;
- (void)notificationProvider:(id)a3 didActivateNotification:(id)a4;
- (void)notificationProvider:(id)a3 didDismissNotification:(id)a4;
- (void)removeNotificationWithID:(id)a3 completion:(id)a4;
- (void)removeNotificationsWithEventID:(id)a3 completion:(id)a4;
@end

@implementation ANNotificationController

- (ANNotificationController)init
{
  v6.receiver = self;
  v6.super_class = ANNotificationController;
  v2 = [(ANNotificationController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ANNotificationProvider);
    notificationProvider = v2->_notificationProvider;
    v2->_notificationProvider = v3;

    [(ANNotificationProvider *)v2->_notificationProvider setDelegate:v2];
  }

  return v2;
}

- (void)removeNotificationWithID:(id)a3 completion:(id)a4
{
  notificationProvider = self->_notificationProvider;
  v6 = a4;
  [(ANNotificationProvider *)notificationProvider removeNotificationWithIdentifier:a3];
  v6[2](v6, 1, 0);
}

- (void)removeNotificationsWithEventID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  notificationProvider = self->_notificationProvider;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000044C4;
  v11[3] = &unk_10000C4D0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(ANNotificationProvider *)notificationProvider deliveredNotifications:v11];
}

- (void)notificationProvider:(id)a3 didActivateNotification:(id)a4
{
  v5 = a4;
  v6 = _ANLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "[ANNotificationController notificationProvider:didActivateNotification:]";
    v14 = 1024;
    v15 = 76;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) Activated notification: %@", buf, 0x1Cu);
  }

  v7 = dispatch_get_global_queue(25, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004814;
  v9[3] = &unk_10000C4F8;
  v10 = v5;
  v11 = self;
  v8 = v5;
  dispatch_async(v7, v9);
}

- (void)notificationProvider:(id)a3 didDismissNotification:(id)a4
{
  v5 = a4;
  v6 = _ANLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "[ANNotificationController notificationProvider:didDismissNotification:]";
    v14 = 1024;
    v15 = 91;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) Dismissed notification: %@", buf, 0x1Cu);
  }

  v7 = dispatch_get_global_queue(25, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004AEC;
  v9[3] = &unk_10000C4F8;
  v10 = v5;
  v11 = self;
  v8 = v5;
  dispatch_async(v7, v9);
}

- (id)_clientSideNotifierWithMachServiceName:(id)a3
{
  v3 = a3;
  v4 = _ANLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[ANNotificationController _clientSideNotifierWithMachServiceName:]";
    v20 = 1024;
    v21 = 110;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s (%d) Creating XPC connection to %@...", buf, 0x1Cu);
  }

  v5 = [[NSXPCConnection alloc] initWithMachServiceName:v3 options:0];
  v6 = +[ANClientCallbackInterface XPCInterface];
  [v5 setRemoteObjectInterface:v6];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100004E7C;
  v16[3] = &unk_10000C398;
  v7 = v3;
  v17 = v7;
  [v5 setInterruptionHandler:v16];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100004EC8;
  v14 = &unk_10000C398;
  v15 = v7;
  v8 = v7;
  [v5 setInvalidationHandler:&v11];
  [v5 resume];
  v9 = [v5 remoteObjectProxyWithErrorHandler:&stru_10000C538];

  return v9;
}

@end