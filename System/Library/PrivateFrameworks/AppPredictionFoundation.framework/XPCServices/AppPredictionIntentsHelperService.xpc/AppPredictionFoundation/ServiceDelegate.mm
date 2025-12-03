@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (ServiceDelegate)init
{
  v7.receiver = self;
  v7.super_class = ServiceDelegate;
  v2 = [(ServiceDelegate *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.AppPredictionIntentsHelperService", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AppPredictionIntentsHelperServiceProtocol];
  [connectionCopy setExportedInterface:v6];

  v7 = objc_opt_new();
  [connectionCopy setExportedObject:v7];
  [connectionCopy _setQueue:self->_queue];
  [connectionCopy resume];

  return 1;
}

@end