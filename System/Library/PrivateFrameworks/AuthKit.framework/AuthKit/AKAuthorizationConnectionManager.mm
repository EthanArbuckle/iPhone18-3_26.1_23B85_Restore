@interface AKAuthorizationConnectionManager
+ (id)sharedManager;
- (AKAuthorizationConnectionManager)init;
- (id)_connectionWithProtocol:(id)a3 forBundleID:(id)a4;
- (id)remoteObjectProxyWithProtocol:(id)a3 forBundleID:(id)a4;
- (id)remoteObjectProxyWithProtocol:(id)a3 forBundleID:(id)a4 errorHandler:(id)a5;
- (id)synchronousRemoteObjectProxyWithProtocol:(id)a3 forBundleID:(id)a4 errorHandler:(id)a5;
- (void)_removeConnectionWithProtocol:(id)a3 forBundleID:(id)a4;
- (void)_setConnection:(id)a3 forBundleID:(id)a4;
- (void)addConnection:(id)a3 forBundleID:(id)a4;
- (void)addConnectionForClient:(id)a3;
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
  v11 = a1;
  v10 = a2;
  obj = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10013A6CC;
  v8 = &unk_100322AA0;
  v9 = a1;
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

- (void)addConnectionForClient:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [location[0] xpcConnection];
  _objc_release(v6);
  if (v6)
  {
    v3 = v8;
    v5 = [location[0] xpcConnection];
    v4 = [location[0] bundleID];
    [(AKAuthorizationConnectionManager *)v3 _setConnection:v5 forBundleID:?];
    _objc_release(v4);
    _objc_release(v5);
  }

  objc_storeStrong(location, 0);
}

- (void)addConnection:(id)a3 forBundleID:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(AKAuthorizationConnectionManager *)v7 _setConnection:location[0] forBundleID:v5];
  [location[0] resume];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)remoteObjectProxyWithProtocol:(id)a3 forBundleID:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = [(AKAuthorizationConnectionManager *)v10 _connectionWithProtocol:location[0] forBundleID:v8];
  v6 = [v7 remoteObjectProxy];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)remoteObjectProxyWithProtocol:(id)a3 forBundleID:(id)a4 errorHandler:(id)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = [(AKAuthorizationConnectionManager *)v13 _connectionWithProtocol:location[0] forBundleID:v11];
  v8 = [v9 remoteObjectProxyWithErrorHandler:v10];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)synchronousRemoteObjectProxyWithProtocol:(id)a3 forBundleID:(id)a4 errorHandler:(id)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = [(AKAuthorizationConnectionManager *)v13 _connectionWithProtocol:location[0] forBundleID:v11];
  v8 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v10];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (void)_setConnection:(id)a3 forBundleID:(id)a4
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v7 = [location[0] remoteObjectInterface];
  v26 = [v7 protocol];
  _objc_release(v7);
  objc_initWeak(&v25, v29);
  v5 = location[0];
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_10013AEE8;
  v21 = &unk_100324540;
  objc_copyWeak(&v24, &v25);
  v22 = _objc_retain(v26);
  v23 = _objc_retain(v27);
  [v5 setInvalidationHandler:&v17];
  p_lock = &v29->_lock;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10013AFB4;
  v12 = &unk_100320000;
  v13 = _objc_retain(v29);
  v14 = _objc_retain(v27);
  v15 = _objc_retain(v26);
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
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)_removeConnectionWithProtocol:(id)a3 forBundleID:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  p_lock = &v16->_lock;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10013B23C;
  v10 = &unk_10031F050;
  v11 = _objc_retain(v16);
  v12 = _objc_retain(v14);
  v13 = _objc_retain(location[0]);
  sub_10013AF50(p_lock, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (id)_connectionWithProtocol:(id)a3 forBundleID:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  p_lock = &v18->_lock;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10013B558;
  v12 = &unk_100324568;
  v13 = _objc_retain(v18);
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