@interface ODRBaseListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ODRBaseListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  odrEntitlementName = [(ODRBaseListener *)self odrEntitlementName];
  odrServiceName = [(ODRBaseListener *)self odrServiceName];
  if (MKBDeviceUnlockedSinceBoot() != 1)
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = odrServiceName;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Connection to %@ interface failed: device has not been unlocked since boot", &v15, 0xCu);
    }

    goto LABEL_12;
  }

  v8 = [connectionCopy valueForEntitlement:odrEntitlementName];
  bOOLValue = [v8 BOOLValue];

  v10 = ASDLogHandleForCategory();
  v11 = v10;
  if (!bOOLValue)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = odrServiceName;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Connection to %@ interface failed: client is not suitably entitled", &v15, 0xCu);
    }

LABEL_12:
    [connectionCopy invalidate];
    v12 = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = odrServiceName;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Connection to %@ interface permitted with suitable entitlements", &v15, 0xCu);
  }

  [(ODRBaseListener *)self configureClientWithConnection:connectionCopy];
  v12 = 1;
LABEL_13:

  return v12;
}

@end