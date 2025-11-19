@interface AUHostingServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation AUHostingServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AUHostingService_AUXPC_Protocol];
  v6 = [v5 classesForSelector:"loadAudioUnitInRemoteHost:config:reply:" argumentIndex:1 ofReply:0];
  v7 = [v6 mutableCopy];

  [v7 addObject:objc_opt_class()];
  [v5 setClasses:v7 forSelector:"loadAudioUnitInRemoteHost:config:reply:" argumentIndex:1 ofReply:0];
  v8 = ConfigureAUAudioUnitXPCInterface();

  [v4 setExportedInterface:v5];
  v9 = [[AUHostingService alloc] initWithConnection:v4];
  [v4 setExportedObject:v9];

  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AUAudioUnitHostProtocol];
  SetAllowedClassesForAUAudioUnitHostXPCInterface();
  [v4 setRemoteObjectInterface:v10];

  [v4 resume];
  return 1;
}

@end