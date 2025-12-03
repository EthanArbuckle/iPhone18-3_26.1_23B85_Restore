@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = +[_ANEStrings storageMaintainerAccessEntitlement];
  v7 = [connectionCopy valueForEntitlement:v6];
  v8 = v7;
  if (v7 && ([v7 BOOLValue] & 1) != 0)
  {
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____ANEStorageMaintainerProtocol];
    [connectionCopy setExportedInterface:v9];

    v10 = objc_opt_new();
    [connectionCopy setExportedObject:v10];
    [connectionCopy resume];

    v11 = 1;
  }

  else
  {
    v12 = +[_ANELog maintenance];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = 138412802;
      v16 = v14;
      v17 = 1024;
      processIdentifier = [connectionCopy processIdentifier];
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@: client(%d) : missing entitlement(%@)", &v15, 0x1Cu);
    }

    [connectionCopy invalidate];
    v11 = 0;
  }

  return v11;
}

@end