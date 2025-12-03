@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  memset(&v14, 0, sizeof(v14));
  _xpcConnection = [connectionCopy _xpcConnection];
  xpc_connection_get_audit_token();

  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___OSLogServiceProtocol];
  [connectionCopy setExportedInterface:v8];

  v9 = objc_opt_new();
  memset(&atoken, 0, sizeof(atoken));
  [v9 setCallingProcessIdentifier:audit_token_to_pid(&atoken)];
  atoken = v14;
  [v9 setCallingProcessIdentifierVersion:audit_token_to_pidversion(&atoken)];
  [connectionCopy setExportedObject:v9];
  objc_initWeak(&atoken, v9);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001C60;
  v11[3] = &unk_100004378;
  objc_copyWeak(&v12, &atoken);
  [connectionCopy setInvalidationHandler:v11];
  [connectionCopy resume];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&atoken);

  return 1;
}

@end