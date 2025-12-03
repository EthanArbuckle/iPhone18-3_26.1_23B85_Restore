@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LocationUIProtocol];
  [connectionCopy setExportedInterface:v5];

  v6 = [[CLLocationButtonMechanism alloc] initWithConnection:connectionCopy];
  if (v6)
  {
    [connectionCopy setExportedObject:v6];
    [connectionCopy resume];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error: #locationUI unable to start the service. Exported Object is nil", v8, 2u);
  }

  return v6 != 0;
}

@end