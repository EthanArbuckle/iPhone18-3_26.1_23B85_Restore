@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LocationUIProtocol];
  [v4 setExportedInterface:v5];

  v6 = [[CLLocationButtonMechanism alloc] initWithConnection:v4];
  if (v6)
  {
    [v4 setExportedObject:v6];
    [v4 resume];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error: #locationUI unable to start the service. Exported Object is nil", v8, 2u);
  }

  return v6 != 0;
}

@end