@interface GKDaemonInvoker
+ (void)invokeWithData:(id)a3 completionHandler:(id)a4;
@end

@implementation GKDaemonInvoker

+ (void)invokeWithData:(id)a3 completionHandler:(id)a4
{
  v6 = [objc_msgSend(off_278236530 "proxyForLocalPlayer")];

  [v6 gameServicesRemoteCall:a3 completionHandler:a4];
}

@end