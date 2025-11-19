@interface SHConnectionListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SHConnectionListener)initWithServiceProvider:(id)a3 listener:(id)a4;
- (void)listen;
- (void)stopListening;
@end

@implementation SHConnectionListener

- (SHConnectionListener)initWithServiceProvider:(id)a3 listener:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SHConnectionListener;
  v9 = [(SHConnectionListener *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceProvider, a3);
    objc_storeStrong(&v10->_listener, a4);
    [(NSXPCListener *)v10->_listener setDelegate:v10];
    v11 = +[NSMutableArray array];
    connectionHandles = v10->_connectionHandles;
    v10->_connectionHandles = v11;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)listen
{
  v2 = [(SHConnectionListener *)self listener];
  [v2 resume];
}

- (void)stopListening
{
  v2 = [(SHConnectionListener *)self listener];
  [v2 invalidate];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[SHClientCredentials alloc] initWithConnection:v7];
  v9 = [(SHClientCredentials *)v8 attribution];
  v10 = [v9 containingAppBundleIdentifier];

  if (v10)
  {
    v11 = [(SHConnectionListener *)self serviceProvider];
    v12 = [v11 handleForConnection:v7 withClientCredentials:v8];

    os_unfair_lock_lock(&self->_lock);
    v13 = [(SHConnectionListener *)self connectionHandles];
    [v13 addObject:v12];

    os_unfair_lock_unlock(&self->_lock);
    objc_initWeak(location, self);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100004208;
    v31[3] = &unk_10007CDF0;
    objc_copyWeak(&v33, location);
    v14 = v12;
    v32 = v14;
    v15 = objc_retainBlock(v31);
    LODWORD(v13) = [v7 processIdentifier];
    v16 = [(SHClientCredentials *)v8 attribution];
    v17 = [v16 bundleIdentifier];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000439C;
    v27[3] = &unk_10007CE18;
    v27[4] = self;
    v18 = v17;
    v28 = v18;
    v30 = v13;
    v19 = v15;
    v29 = v19;
    [v7 setInterruptionHandler:v27];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100004470;
    v23[3] = &unk_10007CE18;
    v23[4] = self;
    v20 = v18;
    v24 = v20;
    v26 = v13;
    v21 = v19;
    v25 = v21;
    [v7 setInvalidationHandler:v23];
    [v7 resume];

    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  else
  {
    v14 = sh_log_object();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Rejecting connection due to nil bundle identifier", location, 2u);
    }
  }

  return v10 != 0;
}

@end