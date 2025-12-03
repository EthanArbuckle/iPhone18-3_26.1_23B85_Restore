@interface GNSSLocationServiceDelegate
- (BOOL)clientConnection:(id)connection hasEntitlement:(id)entitlement;
- (BOOL)isExecutableAllowed:(id)allowed;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)executablePathOfConnection:(id)connection;
@end

@implementation GNSSLocationServiceDelegate

- (BOOL)clientConnection:(id)connection hasEntitlement:(id)entitlement
{
  v5 = [connection valueForEntitlement:entitlement];
  self->hasEntitlementToRunRaven = v5 != 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    hasEntitlementToRunRaven = self->hasEntitlementToRunRaven;
    v9[0] = 67109120;
    v9[1] = hasEntitlementToRunRaven;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,returnValue,%d", v9, 8u);
  }

  v7 = self->hasEntitlementToRunRaven;

  return v7;
}

- (id)executablePathOfConnection:(id)connection
{
  connectionCopy = connection;
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath([connectionCopy processIdentifier], buffer, 0x1000u) < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [NSString stringWithUTF8String:buffer];
  }

  return v4;
}

- (BOOL)isExecutableAllowed:(id)allowed
{
  allowedCopy = allowed;
  v5 = [NSSet setWithObjects:@"locationd", 0];
  v6 = [(GNSSLocationServiceDelegate *)self executablePathOfConnection:allowedCopy];
  lastPathComponent = [v6 lastPathComponent];

  LOBYTE(v6) = [v5 containsObject:lastPathComponent];
  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  if (![(GNSSLocationServiceDelegate *)self clientConnection:connectionCopy hasEntitlement:@"com.apple.private.corelocation.GNSSLocationService"])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,Application does not have correct entitlement", &v12, 2u);
    }

    goto LABEL_8;
  }

  if (![(GNSSLocationServiceDelegate *)self isExecutableAllowed:connectionCopy])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(GNSSLocationServiceDelegate *)self executablePathOfConnection:connectionCopy];
      lastPathComponent = [v9 lastPathComponent];
      v12 = 138412290;
      v13 = lastPathComponent;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,Application not allowed to establish connection,%@", &v12, 0xCu);
    }

LABEL_8:
    [connectionCopy invalidate];
    v8 = 0;
    goto LABEL_9;
  }

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GNSSLocationServiceProtocol];
  [connectionCopy setExportedInterface:v6];

  v7 = objc_opt_new();
  [v7 setEntitlementsForRaven:self->hasEntitlementToRunRaven];
  [connectionCopy setExportedObject:v7];
  [connectionCopy resume];

  v8 = 1;
LABEL_9:

  return v8;
}

@end