@interface SOAppSSOListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SOAppSSOListener)init;
@end

@implementation SOAppSSOListener

- (SOAppSSOListener)init
{
  v3.receiver = self;
  v3.super_class = SOAppSSOListener;
  return [(SODaemonListener *)&v3 initWithMachServiceName:@"com.apple.AppSSO.service-xpc"];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_100015D80 != -1)
  {
    sub_100008208();
  }

  v7 = qword_100015D88;
  if (os_log_type_enabled(qword_100015D88, OS_LOG_TYPE_DEBUG))
  {
    sub_10000821C(v5, v6, v7);
  }

  v8 = [[SODaemon alloc] initWithXPCConnection:v6];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v9 = qword_100015D90;
  v23 = qword_100015D90;
  if (!qword_100015D90)
  {
    location[0] = _NSConcreteStackBlock;
    location[1] = 3221225472;
    location[2] = sub_1000013D4;
    location[3] = &unk_100010390;
    location[4] = &v20;
    sub_1000013D4(location);
    v9 = v21[3];
  }

  v10 = v9;
  _Block_object_dispose(&v20, 8);
  v11 = [v9 interfaceWithInternalProtocol:&OBJC_PROTOCOL___SOServiceProtocol];
  [v6 setExportedInterface:v11];

  [v6 setExportedObject:v8];
  [v6 resume];
  objc_initWeak(location, v8);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100001350;
  v17 = &unk_100010328;
  objc_copyWeak(&v18, location);
  [(SODaemon *)v8 setInvalidationHandler:&v14];
  v12 = [(SODaemon *)v8 invalidationHandler:v14];
  [v6 setInvalidationHandler:v12];

  objc_destroyWeak(&v18);
  objc_destroyWeak(location);

  return 1;
}

@end