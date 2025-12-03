@interface AUHostingServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation AUHostingServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AUHostingService_AUXPC_Protocol];
  v6 = [v5 classesForSelector:"loadAudioUnitInRemoteHost:config:reply:" argumentIndex:1 ofReply:0];
  v7 = [v6 mutableCopy];

  [v7 addObject:objc_opt_class()];
  [v5 setClasses:v7 forSelector:"loadAudioUnitInRemoteHost:config:reply:" argumentIndex:1 ofReply:0];
  v8 = ConfigureAUAudioUnitXPCInterface();

  [connectionCopy setExportedInterface:v5];
  v9 = [[AUHostingService alloc] initWithConnection:connectionCopy];
  [connectionCopy setExportedObject:v9];

  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AUAudioUnitHostProtocol];
  SetAllowedClassesForAUAudioUnitHostXPCInterface();
  [connectionCopy setRemoteObjectInterface:v10];

  [connectionCopy resume];
  return 1;
}

@end