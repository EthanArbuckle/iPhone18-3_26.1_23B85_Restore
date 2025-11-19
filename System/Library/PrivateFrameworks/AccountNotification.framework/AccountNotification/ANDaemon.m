@interface ANDaemon
+ (id)_nameForProcessWithPID:(int)a3;
+ (id)sharedInstance;
- (ANDaemon)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)dealloc;
- (void)start;
@end

@implementation ANDaemon

+ (id)sharedInstance
{
  if (qword_100011440 != -1)
  {
    sub_10000585C();
  }

  v3 = qword_100011438;

  return v3;
}

- (ANDaemon)init
{
  v6.receiver = self;
  v6.super_class = ANDaemon;
  v2 = [(ANDaemon *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ANNotificationController);
    notificationController = v2->_notificationController;
    v2->_notificationController = v3;
  }

  return v2;
}

- (void)dealloc
{
  listener = self->_listener;
  if (listener)
  {
    [(NSXPCListener *)listener invalidate];
    [(NSXPCListener *)self->_listener setDelegate:0];
    v4 = self->_listener;
    self->_listener = 0;
  }

  v5.receiver = self;
  v5.super_class = ANDaemon;
  [(ANDaemon *)&v5 dealloc];
}

- (void)start
{
  v3 = [NSXPCListener alloc];
  v4 = [v3 initWithMachServiceName:ANDaemonMachServiceName];
  listener = self->_listener;
  self->_listener = v4;

  [(NSXPCListener *)self->_listener setDelegate:self];
  v6 = self->_listener;

  [(NSXPCListener *)v6 resume];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = +[ANDaemon _nameForProcessWithPID:](ANDaemon, "_nameForProcessWithPID:", [v5 processIdentifier]);
  v7 = [v5 valueForEntitlement:ANAccountNotificationClientEntitlement];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = _ANLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100005870();
    }

    goto LABEL_10;
  }

  v8 = [v7 BOOLValue];
  v9 = _ANLogSystem();
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000058F4();
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "[ANDaemon listener:shouldAcceptNewConnection:]";
    v24 = 1024;
    v25 = 82;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s (%d) New incoming connection from %@.", buf, 0x1Cu);
  }

  v11 = +[ANDaemonInterface XPCInterface];
  [v5 setExportedInterface:v11];

  [v5 setExportedObject:self->_notificationController];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100003FB8;
  v20[3] = &unk_10000C398;
  v12 = v6;
  v21 = v12;
  [v5 setInterruptionHandler:v20];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100004004;
  v18 = &unk_10000C398;
  v19 = v12;
  [v5 setInvalidationHandler:&v15];
  [v5 resume];

  v13 = 1;
  v10 = v21;
LABEL_11:

  return v13;
}

+ (id)_nameForProcessWithPID:(int)a3
{
  v5 = 648;
  dword_1000112F4 = a3;
  byte_10001153B = 0;
  if (sysctl(dword_1000112E8, 4u, &unk_100011448, &v5, 0, 0))
  {
    v3 = @"?";
  }

  else if (byte_10001153B)
  {
    v3 = [NSString stringWithUTF8String:&byte_10001153B];
  }

  else
  {
    v3 = @"exited?";
  }

  return v3;
}

@end