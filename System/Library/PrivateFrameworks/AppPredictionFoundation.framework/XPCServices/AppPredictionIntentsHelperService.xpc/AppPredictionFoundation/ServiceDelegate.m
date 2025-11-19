@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AppPredictionIntentsHelperServiceProtocol];
  [v5 setExportedInterface:v6];

  v7 = objc_opt_new();
  [v5 setExportedObject:v7];
  [v5 _setQueue:self->_queue];
  [v5 resume];

  return 1;
}

@end