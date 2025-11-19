@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ZhuGeServiceProtocol];
  [v4 setExportedInterface:v5];

  v6 = +[(ZhuGeSingletonService *)ZhuGeService];
  [v4 setExportedObject:v6];

  if (isZhuGeInRestoreOS())
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ZhuGeRestoreLogProtocol];
    [v4 setRemoteObjectInterface:v7];
  }

  [v4 activate];
  v8 = +[(ZhuGeSingletonService *)ZhuGeLockerService];
  [v8 setXpcConnection:v4];

  v12 = 0;
  v9 = [ZhuGeSupportAssistant getSharedInstanceByName:@"OBJC_CLASS_$_ZhuGeLockerArmory" withError:&v12];
  v10 = v9;
  if (v9)
  {
    [v9 setXpcConnection:v4];
  }

  return 1;
}

@end