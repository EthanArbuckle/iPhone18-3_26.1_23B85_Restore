@interface MainServiceListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation MainServiceListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = LALogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v16 = v6;
    v17 = 1024;
    v18 = [v6 hash];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "MainServiceListener has accepted a new connection: %{public}@ hash:%x", buf, 0x12u);
  }

  v8 = +[Daemon sharedInstance];
  v9 = [LAInternalProtocols interfaceWithInternalProtocol:&OBJC_PROTOCOL___LADaemonXPC];
  [v6 setExportedInterface:v9];

  [v6 setExportedObject:v8];
  v10 = +[DaemonUtils sharedInstance];
  v11 = [v10 serverQueue];
  [v6 _setQueue:v11];

  [v6 resume];
  objc_initWeak(buf, v6);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000058A8;
  v13[3] = &unk_100054C68;
  objc_copyWeak(&v14, buf);
  [v6 setInvalidationHandler:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  return 1;
}

@end