@interface RemoteUIListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RemoteUIListener)initWithMachServiceName:(id)name;
- (id)_workQueue;
- (id)anonymousListenerWithIdentifier:(id)identifier;
@end

@implementation RemoteUIListener

- (RemoteUIListener)initWithMachServiceName:(id)name
{
  v13.receiver = self;
  v13.super_class = RemoteUIListener;
  v3 = [(ListenerWithDelegate *)&v13 initWithMachServiceName:name];
  v4 = v3;
  if (v3)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100005A6C;
    v11[3] = &unk_100054F28;
    v5 = v3;
    v12 = v5;
    v6 = sub_100005A6C(v11);
    remoteUIHost = v5->_remoteUIHost;
    v5->_remoteUIHost = v6;

    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    vendedListeners = v5->_vendedListeners;
    v5->_vendedListeners = v8;
  }

  return v4;
}

- (id)anonymousListenerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[NSXPCListener anonymousListener];
  [v5 setDelegate:self];
  _workQueue = [(RemoteUIListener *)self _workQueue];
  [v5 _setQueue:_workQueue];

  [v5 resume];
  [(NSMapTable *)self->_vendedListeners setObject:identifierCopy forKey:v5];
  v7 = LALogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "RemoteUIListener vended listener:%{public}@ for identifier: %{public}@", &v9, 0x16u);
  }

  return v5;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = LALogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v19 = connectionCopy;
    v20 = 1024;
    v21 = [connectionCopy hash];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "RemoteUIListener has accepted a new connection %{public}@ hash:%x", buf, 0x12u);
  }

  v9 = [LAInternalProtocols interfaceWithInternalProtocol:&OBJC_PROTOCOL___LACRemoteUIHost];
  [connectionCopy setExportedInterface:v9];

  [connectionCopy setExportedObject:self->_remoteUIHost];
  _workQueue = [(RemoteUIListener *)self _workQueue];
  [connectionCopy _setQueue:_workQueue];

  [connectionCopy resume];
  objc_initWeak(buf, connectionCopy);
  objc_initWeak(&location, listenerCopy);
  objc_initWeak(&from, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005E70;
  v12[3] = &unk_100054F70;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  objc_copyWeak(&v15, buf);
  [connectionCopy setInvalidationHandler:v12];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  return 1;
}

- (id)_workQueue
{
  v2 = +[DaemonUtils sharedInstance];
  serverQueue = [v2 serverQueue];

  return serverQueue;
}

@end