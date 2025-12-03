@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HeuristicInterpreterProtocol];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
  [v5 setClasses:v8 forSelector:"actionsAndExpirersForHeuristicsExcept:bundlePath:now:dataSourcesEndpoint:reply:" argumentIndex:0 ofReply:1];

  [connectionCopy setExportedInterface:v5];
  v9 = objc_opt_new();
  [connectionCopy setExportedObject:v9];
  [connectionCopy resume];

  return 1;
}

@end