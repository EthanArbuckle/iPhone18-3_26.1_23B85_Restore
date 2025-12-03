@interface GKDaemonInvoker
+ (void)invokeWithData:(id)data completionHandler:(id)handler;
@end

@implementation GKDaemonInvoker

+ (void)invokeWithData:(id)data completionHandler:(id)handler
{
  v6 = [objc_msgSend(off_278236530 "proxyForLocalPlayer")];

  [v6 gameServicesRemoteCall:data completionHandler:handler];
}

@end