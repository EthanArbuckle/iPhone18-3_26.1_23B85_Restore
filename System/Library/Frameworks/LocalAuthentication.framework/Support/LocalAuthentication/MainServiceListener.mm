@interface MainServiceListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation MainServiceListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = LALogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v16 = connectionCopy;
    v17 = 1024;
    v18 = [connectionCopy hash];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "MainServiceListener has accepted a new connection: %{public}@ hash:%x", buf, 0x12u);
  }

  v8 = +[Daemon sharedInstance];
  v9 = [LAInternalProtocols interfaceWithInternalProtocol:&OBJC_PROTOCOL___LADaemonXPC];
  [connectionCopy setExportedInterface:v9];

  [connectionCopy setExportedObject:v8];
  v10 = +[DaemonUtils sharedInstance];
  serverQueue = [v10 serverQueue];
  [connectionCopy _setQueue:serverQueue];

  [connectionCopy resume];
  objc_initWeak(buf, connectionCopy);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000058A8;
  v13[3] = &unk_100054C68;
  objc_copyWeak(&v14, buf);
  [connectionCopy setInvalidationHandler:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  return 1;
}

@end