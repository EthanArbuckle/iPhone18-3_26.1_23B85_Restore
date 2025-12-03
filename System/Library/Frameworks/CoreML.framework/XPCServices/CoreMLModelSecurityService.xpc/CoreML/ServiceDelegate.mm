@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreMLModelSecurityProtocol];
  [connectionCopy setExportedInterface:v5];

  v6 = objc_opt_new();
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.CoreMLModelSecurity.%lu", [connectionCopy hash]);
  [v7 UTF8String];
  v8 = os_transaction_create();
  [v6 setTxn:v8];

  [connectionCopy setExportedObject:v6];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreMLModelSecurityServiceToClientProtocol];
  [connectionCopy setRemoteObjectInterface:v9];

  v10 = [connectionCopy synchronousRemoteObjectProxyWithErrorHandler:&stru_100010308];
  [v6 setClientProxy:v10];
  [connectionCopy resume];

  return 1;
}

@end