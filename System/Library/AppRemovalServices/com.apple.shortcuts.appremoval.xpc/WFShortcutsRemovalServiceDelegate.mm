@interface WFShortcutsRemovalServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation WFShortcutsRemovalServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LSAppRemovalServiceProtocol];
  [connectionCopy setExportedInterface:v7];

  objc_initWeak(&location, connectionCopy);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100000F2C;
  v12[3] = &unk_100004118;
  objc_copyWeak(&v13, &location);
  [connectionCopy setInterruptionHandler:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100000FF0;
  v10[3] = &unk_100004118;
  objc_copyWeak(&v11, &location);
  [connectionCopy setInvalidationHandler:v10];
  v8 = objc_opt_new();
  [connectionCopy setExportedObject:v8];
  [connectionCopy resume];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return 1;
}

@end