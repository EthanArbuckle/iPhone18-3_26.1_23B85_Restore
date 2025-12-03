@interface AXAssetsXPCServer
- (AXAssetsXPCServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_xpcQueue_acceptNewConnection:(id)connection;
- (void)startServer;
- (void)updateAssetForAssetType:(id)type;
@end

@implementation AXAssetsXPCServer

- (AXAssetsXPCServer)init
{
  v10.receiver = self;
  v10.super_class = AXAssetsXPCServer;
  v2 = [(AXAssetsXPCServer *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v5 = dispatch_queue_create("com.apple.accessibility.axassetsd.xpc", v4);
    xpcQueue = v2->_xpcQueue;
    v2->_xpcQueue = v5;

    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.accessibility.axassetsd.service"];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v7;

    [(NSXPCListener *)v2->_xpcListener _setQueue:v2->_xpcQueue];
    [(NSXPCListener *)v2->_xpcListener setDelegate:v2];
  }

  return v2;
}

- (void)startServer
{
  v3 = AXLogAssetDaemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Will begin listening for client connections", v4, 2u);
  }

  [(NSXPCListener *)self->_xpcListener resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.accessibility.axassets"];
  v7 = [v6 isEqual:&__kCFBooleanTrue];

  if (v7)
  {
    goto LABEL_2;
  }

  v9 = [NSSet setWithArray:&off_1000193C8];
  v10 = [connectionCopy valueForEntitlement:@"application-identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    lowercaseString = [v10 lowercaseString];
    v12 = [v9 containsObject:lowercaseString];

    if (v12)
    {

LABEL_2:
      [(AXAssetsXPCServer *)self _xpcQueue_acceptNewConnection:connectionCopy];
      [connectionCopy resume];
      v8 = 1;
      goto LABEL_9;
    }
  }

  v13 = AXLogAssetDaemon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10000DC44(connectionCopy, v10, v13);
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (void)_xpcQueue_acceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = AXLogAssetDaemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accepting new system connection from PID %d", &buf, 8u);
  }

  [connectionCopy _setQueue:self->_xpcQueue];
  v6 = _AXCreateAXAssetsServiceInterface();
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy setRemoteObjectInterface:0];
  objc_initWeak(&buf, connectionCopy);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005344;
  v9[3] = &unk_100018788;
  objc_copyWeak(&v10, &buf);
  [connectionCopy setInterruptionHandler:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005404;
  v7[3] = &unk_100018788;
  objc_copyWeak(&v8, &buf);
  [connectionCopy setInvalidationHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&buf);
}

- (void)updateAssetForAssetType:(id)type
{
  typeCopy = type;
  updateAssetForAssetTypeHandler = [(AXAssetsXPCServer *)self updateAssetForAssetTypeHandler];

  if (updateAssetForAssetTypeHandler)
  {
    updateAssetForAssetTypeHandler2 = [(AXAssetsXPCServer *)self updateAssetForAssetTypeHandler];
    (updateAssetForAssetTypeHandler2)[2](updateAssetForAssetTypeHandler2, typeCopy);
  }
}

@end