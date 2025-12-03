@interface ACXDeviceConnectionServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ACXDeviceConnectionServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[ACXDeviceConnectionProtocolInterface interface];
  [connectionCopy setExportedInterface:v5];

  v6 = objc_opt_new();
  [connectionCopy setExportedObject:v6];
  v7 = +[ACXDeviceConnectionDelegateProtocolInterface interface];
  [connectionCopy setRemoteObjectInterface:v7];

  [v6 setXpcConnection:connectionCopy];
  [connectionCopy setInterruptionHandler:&stru_10008E100];
  [connectionCopy setInvalidationHandler:&stru_10008E120];
  [connectionCopy resume];

  return 1;
}

@end