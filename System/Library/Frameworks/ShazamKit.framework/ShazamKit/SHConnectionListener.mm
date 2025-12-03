@interface SHConnectionListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SHConnectionListener)initWithServiceProvider:(id)provider listener:(id)listener;
- (void)listen;
- (void)stopListening;
@end

@implementation SHConnectionListener

- (SHConnectionListener)initWithServiceProvider:(id)provider listener:(id)listener
{
  providerCopy = provider;
  listenerCopy = listener;
  v14.receiver = self;
  v14.super_class = SHConnectionListener;
  v9 = [(SHConnectionListener *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceProvider, provider);
    objc_storeStrong(&v10->_listener, listener);
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
  listener = [(SHConnectionListener *)self listener];
  [listener resume];
}

- (void)stopListening
{
  listener = [(SHConnectionListener *)self listener];
  [listener invalidate];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [[SHClientCredentials alloc] initWithConnection:connectionCopy];
  attribution = [(SHClientCredentials *)v8 attribution];
  containingAppBundleIdentifier = [attribution containingAppBundleIdentifier];

  if (containingAppBundleIdentifier)
  {
    serviceProvider = [(SHConnectionListener *)self serviceProvider];
    v12 = [serviceProvider handleForConnection:connectionCopy withClientCredentials:v8];

    os_unfair_lock_lock(&self->_lock);
    connectionHandles = [(SHConnectionListener *)self connectionHandles];
    [connectionHandles addObject:v12];

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
    LODWORD(connectionHandles) = [connectionCopy processIdentifier];
    attribution2 = [(SHClientCredentials *)v8 attribution];
    bundleIdentifier = [attribution2 bundleIdentifier];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000439C;
    v27[3] = &unk_10007CE18;
    v27[4] = self;
    v18 = bundleIdentifier;
    v28 = v18;
    v30 = connectionHandles;
    v19 = v15;
    v29 = v19;
    [connectionCopy setInterruptionHandler:v27];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100004470;
    v23[3] = &unk_10007CE18;
    v23[4] = self;
    v20 = v18;
    v24 = v20;
    v26 = connectionHandles;
    v21 = v19;
    v25 = v21;
    [connectionCopy setInvalidationHandler:v23];
    [connectionCopy resume];

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

  return containingAppBundleIdentifier != 0;
}

@end