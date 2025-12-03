@interface CLMapHelperServiceDelegate
- (BOOL)clientConnection:(id)connection hasEntitlement:(id)entitlement;
- (BOOL)isExecutableAllowed:(id)allowed;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)executablePathOfConnection:(id)connection;
@end

@implementation CLMapHelperServiceDelegate

- (BOOL)clientConnection:(id)connection hasEntitlement:(id)entitlement
{
  v5 = [connection valueForEntitlement:entitlement];
  *&self->hasEntitlementForRoadData = 0;
  p_hasEntitlementForRoadData = &self->hasEntitlementForRoadData;
  objc_opt_class();
  v7 = 0;
  if (objc_opt_isKindOfClass())
  {
    v21 = v5;
    v8 = v5;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v27) = [v8 count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLTSP,MapHelperService,entitlementCheck,arrayEntries,%d", buf, 8u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v7 = 0;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [@"road-tiles" isEqualToString:v14];
            v16 = p_hasEntitlementForRoadData;
            if ((v15 & 1) != 0 || (v17 = [@"building-tiles" isEqualToString:v14], v16 = p_hasEntitlementForRoadData + 1, v17))
            {
              v7 = 1;
              *v16 = 1;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v18 = *p_hasEntitlementForRoadData;
              v19 = p_hasEntitlementForRoadData[1];
              *buf = 138413058;
              v27 = v14;
              v28 = 1024;
              v29 = v7 & 1;
              v30 = 1024;
              v31 = v18;
              v32 = 1024;
              v33 = v19;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLTSP,MapHelperService,entitlementCheck,entry,%@,returnValue,%d,road,%d,building,%d", buf, 0x1Eu);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v34 count:16];
      }

      while (v11);
    }

    else
    {
      v7 = 0;
    }

    v5 = v21;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v27) = v7 & 1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLTSP,MapHelperService,returnValue,%d", buf, 8u);
  }

  return v7 & 1;
}

- (id)executablePathOfConnection:(id)connection
{
  connectionCopy = connection;
  bzero(buffer, 0x1000uLL);
  memset(&v6, 0, sizeof(v6));
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  if (proc_pidpath_audittoken(&v6, buffer, 0x1000u) < 1)
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
  v5 = [NSSet setWithObjects:@"routined", @"locationd", @"CLLogger", @"wedge", 0];
  v6 = [(CLMapHelperServiceDelegate *)self executablePathOfConnection:allowedCopy];

  lastPathComponent = [v6 lastPathComponent];

  LOBYTE(v6) = [v5 containsObject:lastPathComponent];
  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  if (![(CLMapHelperServiceDelegate *)self clientConnection:connectionCopy hasEntitlement:@"com.apple.private.corelocation.map-helper-service"])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLTSP,MapHelperService,Application does not have correct entitlement", &v12, 2u);
    }

    goto LABEL_8;
  }

  if (![(CLMapHelperServiceDelegate *)self isExecutableAllowed:connectionCopy])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(CLMapHelperServiceDelegate *)self executablePathOfConnection:connectionCopy];
      lastPathComponent = [v9 lastPathComponent];
      v12 = 138412290;
      v13 = lastPathComponent;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLTSP,MapHelperService,Application not allowed to establish connection,%@", &v12, 0xCu);
    }

LABEL_8:
    [connectionCopy invalidate];
    v8 = 0;
    goto LABEL_9;
  }

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CLMapHelperServiceProtocol];
  [connectionCopy setExportedInterface:v6];

  v7 = objc_opt_new();
  [v7 setEntitlementsForRoad:self->hasEntitlementForRoadData];
  [v7 setEntitlementsForBuilding:self->hasEntitlementForBuildingData];
  [connectionCopy setExportedObject:v7];
  [connectionCopy resume];

  v8 = 1;
LABEL_9:

  return v8;
}

@end