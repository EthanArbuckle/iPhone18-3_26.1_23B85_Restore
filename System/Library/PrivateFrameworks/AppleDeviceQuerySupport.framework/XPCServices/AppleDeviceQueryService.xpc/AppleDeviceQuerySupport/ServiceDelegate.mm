@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ZhuGeServiceProtocol];
  [connectionCopy setExportedInterface:v5];

  v6 = +[(ZhuGeSingletonService *)ZhuGeService];
  [connectionCopy setExportedObject:v6];

  if (isZhuGeInRestoreOS())
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ZhuGeRestoreLogProtocol];
    [connectionCopy setRemoteObjectInterface:v7];
  }

  [connectionCopy activate];
  v8 = +[(ZhuGeSingletonService *)ZhuGeLockerService];
  [v8 setXpcConnection:connectionCopy];

  v12 = 0;
  v9 = [ZhuGeSupportAssistant getSharedInstanceByName:@"OBJC_CLASS_$_ZhuGeLockerArmory" withError:&v12];
  v10 = v9;
  if (v9)
  {
    [v9 setXpcConnection:connectionCopy];
  }

  return 1;
}

@end