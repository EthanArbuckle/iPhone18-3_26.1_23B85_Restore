@interface AKAuthorizationConnectionManager
+ (id)sharedManager;
- (AKAuthorizationConnectionManager)init;
- (id)_connectionWithProtocol:(id)protocol forBundleID:(id)d;
- (id)remoteObjectProxyWithProtocol:(id)protocol forBundleID:(id)d;
- (id)remoteObjectProxyWithProtocol:(id)protocol forBundleID:(id)d errorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithProtocol:(id)protocol forBundleID:(id)d errorHandler:(id)handler;
- (void)_removeConnectionWithProtocol:(id)protocol forBundleID:(id)d;
- (void)_setConnection:(id)connection forBundleID:(id)d;
- (void)addConnection:(id)connection forBundleID:(id)d;
- (void)addConnectionForClient:(id)client;
@end

@implementation AKAuthorizationConnectionManager

- (AKAuthorizationConnectionManager)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AKAuthorizationConnectionManager;
  v8 = [(AKAuthorizationConnectionManager *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v2 = +[NSMutableDictionary dictionary];
    connectionsByBundleID = v8->_connectionsByBundleID;
    v8->_connectionsByBundleID = v2;
    _objc_release(connectionsByBundleID);
  }

  v5 = _objc_retain(v8);
  objc_storeStrong(&v8, 0);
  return v5;
}

+ (id)sharedManager
{
  selfCopy = self;
  v10 = a2;
  obj = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10013A6CC;
  v8 = &unk_100322AA0;
  selfCopy2 = self;
  v13 = &unk_100374830;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374828;

  return v2;
}

- (void)addConnectionForClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  xpcConnection = [location[0] xpcConnection];
  _objc_release(xpcConnection);
  if (xpcConnection)
  {
    v3 = selfCopy;
    xpcConnection2 = [location[0] xpcConnection];
    bundleID = [location[0] bundleID];
    [(AKAuthorizationConnectionManager *)v3 _setConnection:xpcConnection2 forBundleID:?];
    _objc_release(bundleID);
    _objc_release(xpcConnection2);
  }

  objc_storeStrong(location, 0);
}

- (void)addConnection:(id)connection forBundleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
  v5 = 0;
  objc_storeStrong(&v5, d);
  [(AKAuthorizationConnectionManager *)selfCopy _setConnection:location[0] forBundleID:v5];
  [location[0] resume];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)remoteObjectProxyWithProtocol:(id)protocol forBundleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, protocol);
  v8 = 0;
  objc_storeStrong(&v8, d);
  v7 = [(AKAuthorizationConnectionManager *)selfCopy _connectionWithProtocol:location[0] forBundleID:v8];
  remoteObjectProxy = [v7 remoteObjectProxy];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return remoteObjectProxy;
}

- (id)remoteObjectProxyWithProtocol:(id)protocol forBundleID:(id)d errorHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, protocol);
  v11 = 0;
  objc_storeStrong(&v11, d);
  v10 = 0;
  objc_storeStrong(&v10, handler);
  v9 = [(AKAuthorizationConnectionManager *)selfCopy _connectionWithProtocol:location[0] forBundleID:v11];
  v8 = [v9 remoteObjectProxyWithErrorHandler:v10];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)synchronousRemoteObjectProxyWithProtocol:(id)protocol forBundleID:(id)d errorHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, protocol);
  v11 = 0;
  objc_storeStrong(&v11, d);
  v10 = 0;
  objc_storeStrong(&v10, handler);
  v9 = [(AKAuthorizationConnectionManager *)selfCopy _connectionWithProtocol:location[0] forBundleID:v11];
  v8 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v10];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (void)_setConnection:(id)connection forBundleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
  v27 = 0;
  objc_storeStrong(&v27, d);
  remoteObjectInterface = [location[0] remoteObjectInterface];
  protocol = [remoteObjectInterface protocol];
  _objc_release(remoteObjectInterface);
  objc_initWeak(&v25, selfCopy);
  v5 = location[0];
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_10013AEE8;
  v21 = &unk_100324540;
  objc_copyWeak(&v24, &v25);
  v22 = _objc_retain(protocol);
  v23 = _objc_retain(v27);
  [v5 setInvalidationHandler:&v17];
  p_lock = &selfCopy->_lock;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10013AFB4;
  v12 = &unk_100320000;
  v13 = _objc_retain(selfCopy);
  v14 = _objc_retain(v27);
  v15 = _objc_retain(protocol);
  v16 = _objc_retain(location[0]);
  sub_10013AF50(p_lock, &v8);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v25);
  objc_storeStrong(&protocol, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)_removeConnectionWithProtocol:(id)protocol forBundleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, protocol);
  v14 = 0;
  objc_storeStrong(&v14, d);
  p_lock = &selfCopy->_lock;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10013B23C;
  v10 = &unk_10031F050;
  v11 = _objc_retain(selfCopy);
  v12 = _objc_retain(v14);
  v13 = _objc_retain(location[0]);
  sub_10013AF50(p_lock, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (id)_connectionWithProtocol:(id)protocol forBundleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, protocol);
  v16 = 0;
  objc_storeStrong(&v16, d);
  p_lock = &selfCopy->_lock;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10013B558;
  v12 = &unk_100324568;
  v13 = _objc_retain(selfCopy);
  v14 = _objc_retain(v16);
  v15 = _objc_retain(location[0]);
  v6 = sub_10013B4A8(p_lock, &v8);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end