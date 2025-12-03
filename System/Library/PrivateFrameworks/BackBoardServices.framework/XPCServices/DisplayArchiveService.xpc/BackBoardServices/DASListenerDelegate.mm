@interface DASListenerDelegate
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation DASListenerDelegate

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  remoteProcess = [connectionCopy remoteProcess];
  if ([remoteProcess hasEntitlement:@"com.apple.backboard.display.archive"])
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DASClientToServiceProtocol];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v8, v9, objc_opt_class(), 0];
    [v7 setClasses:v10 forSelector:"nameAndDumpAllWithCompletion:" argumentIndex:0 ofReply:1];

    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v11, v12, objc_opt_class(), 0];
    [v7 setClasses:v13 forSelector:"dumpAllWithCompletion:" argumentIndex:0 ofReply:1];

    v14 = [connectionCopy extractNSXPCConnectionWithConfigurator:&stru_100010358];

    [v14 setExportedInterface:v7];
    v15 = objc_opt_new();
    [v14 setExportedObject:v15];

    v16 = BSDispatchQueueCreateWithFixedPriority();
    [v14 _setQueue:v16];

    [v14 activate];
  }

  else
  {
    v17 = sub_100005B8C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = remoteProcess;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "rejecting unauthorized access from %@", buf, 0xCu);
    }

    [connectionCopy invalidate];
  }
}

@end